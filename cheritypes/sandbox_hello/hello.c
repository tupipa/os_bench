
#if !__has_feature(capabilities)
#error "This code requires a CHERI-aware compiler"
#endif

/*

 reference file:

  /bin/cheritest/cheritest_sealcap.c
  /bin/cheritest/cheritest_ccall.c
  
*/

#include <stdio.h>
#include <stdlib.h>
#include <cheri/cheri.h>
#include <cheri/cheric.h>  // builtin wrappers
#include <cheri/libcheri_type.h>  // libcheri type alloc()
#include <cheri/libcheri_invoke.h>  // libcheri invoke prototype
#include "cheritest.h"

#include <machine/sysarch.h>

extern void	sandbox_creturn(void);
extern void	sandbox_creturn_end;
//extern void __attribute__ ((cheri_ccallee)) sandbox_invoke(void * __capability c1, void* __capability c2);
extern void __attribute__ ((cheri_ccall)) sandbox_invoke(void * __capability c1, void* __capability c2);
//extern void sandbox_invoke(void * __capability c1, void* __capability c2);


static void * __capability libcheri_sealing_root;

static void *__capability sandbox_A_sealcap;
static void *__capability sandbox_A_codecap;
static void *__capability sandbox_A_datacap;

struct sandbox_data{
  int data __attribute__ ((aligned(32)));
  char name[32] __attribute__ ((aligned(32)));
};

struct sandbox_data shared __attribute__ ((aligned(64)));
struct sandbox_data privateA __attribute__ ((aligned(64)));
struct sandbox_data privateB __attribute__ ((aligned(64)));

struct sandbox_data *sharedp;
struct sandbox_data *privateAp;
struct sandbox_data *privateBp;

void __attribute__((cheri_ccallee)) sandboxA_print(){
  //char a[32] __attribute__((aligned(32))) = "hello from sandbox A";
  //printf("%s\n", a);
  printf("printing in sandbox A\n");
  //printf("HELLO A A A A A A A A \nA \nA \nA \nA \nA \n");
  //printf("shared data: %d\n", sharedp->data);
  //printf("A private data: %d\n", privateAp->data); 
  //printf("B private data: %d\n", privateBp->data);
  //sandboxA_end:
}

void sandboxB_print(){
  printf("printing in sandbox B\n");
  printf("shared data: %d\n", sharedp->data);
  printf("A private data: %d\n", privateAp->data); 
  printf("B private data: %d\n", privateBp->data);
  //sandboxB_end:
}


static void * __capability
datacap_create(void *sandbox_base, void *sandbox_end)
{
	void * __capability datacap;

        printf("creating data cap...\n");

#ifdef __CHERI_PURE_CAPABILITY__
        printf("\tpure cap...\n");
	(void)sandbox_end;
	datacap = cheri_andperm(sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
	    CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
	    CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL | CHERI_PERM_SYSCALL);
#else
        printf("\thyb cap:\n");
	datacap = cheri_ptrperm(sandbox_base,
	    (size_t)sandbox_end - (size_t)sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
	    CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
	    CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL | CHERI_PERM_SYSCALL);
#endif


        printf("\tdata cap created as:\n");
	CHERI_CAP_PRINT(datacap);

	return (datacap);
}


/*
 * One-type setup for ccall-related tests.
 */
void
cheritest_ccall_setup(void)
{

	printf("begin.\n");

  /** sandbox A **/

#ifdef __CHERI_PURE_CAPABILITY__
	if (sysarch(CHERI_GET_SEALCAP, &libcheri_sealing_root) < 0)
		libcheri_sealing_root = NULL;
	assert((cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL) != 0);
	assert(cheri_getlen(libcheri_sealing_root) != 0);

	sandbox_A_sealcap = libcheri_sealing_root;

#else

	sandbox_A_sealcap = libcheri_type_alloc();
	//sandbox_A_sealcap = libcheri_sealing_root;

#endif
        printf("\t seal cap created as:\n");
	CHERI_CAP_PRINT(sandbox_A_sealcap);

	sandbox_A_codecap = cheri_getpcc();
	sandbox_A_codecap = cheri_setaddress(sandbox_A_codecap, (vaddr_t)&sandboxA_print);


    printf("\t code cap created as:\n");
	CHERI_CAP_PRINT(sandbox_A_codecap);

	sandbox_A_codecap = cheri_seal(sandbox_A_codecap, sandbox_A_sealcap);


    printf("\t code cap sealed as:\n");
	CHERI_CAP_PRINT(sandbox_A_codecap);


#ifdef __CHERI_PURE_CAPABILITY__
        printf("\tcreating pure data cap...\n");
	//sandbox_A_datacap = cheri_getidc();
	sandbox_A_datacap = datacap_create(&privateA, &privateB);

#else
        printf("\tcreating hybrid data cap (DDC)...\n");
	sandbox_A_datacap = cheri_getdefault();

#endif // __CHERI_PURE_CAPABILITY__

    //sandbox_A_datacap = cheri_setaddress(sandbox_A_datacap, (vaddr_t)&privateA);
    printf("\t data cap created as:\n");
	CHERI_CAP_PRINT(sandbox_A_datacap);

	sandbox_A_datacap = cheri_seal(sandbox_A_datacap, sandbox_A_sealcap);
	//sandbox_A_datacap = cheri_seal(cheri_getdefault(), sandbox_A_sealcap);

    printf("\t data cap sealed as:\n");
	CHERI_CAP_PRINT(sandbox_A_datacap);

  /**/

	printf("done.");
}


void test_sandboxA( void )
{

#ifdef __CHERI_PURE_CAPABILITY__

	sandbox_invoke(sandbox_A_codecap, sandbox_A_datacap);

#else
	struct cheri_object co;
	co.co_codecap = sandbox_A_codecap;
	co.co_datacap = sandbox_A_datacap;
	(void)libcheri_invoke(co, 0,
	    0, 0, 0, 0, 0, 0, 0, 0,
	    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
#endif
	cheritest_success();
}



int main(void){

 printf("hello world\n");

 printf("cheritest setup\n");
 cheritest_ccall_setup();

 printf("now start testing...\n");

 test_sandboxA();
 printf("done test with sandboxA.\n");

 return 0;

}

