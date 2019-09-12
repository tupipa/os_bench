
#if !__has_feature(capabilities)
#error "This code requires a CHERI-aware compiler"
#endif


#include <stdio.h>
#include <stdlib.h>
#include <cheri/cheri.h>
#include <cheri/cheric.h>  // builtin wrappers
#include <cheri/libcheri_type.h>  // libcheri type alloc()
#include "cheritest.h"

#include <machine/sysarch.h>

extern void	sandbox_creturn(void);
extern void	sandbox_creturn_end;
//extern void __attribute__ ((cheri_ccallee)) sandbox_invoke(void * __capability c1, void* __capability c2);
extern void __attribute__ ((cheri_ccall)) sandbox_invoke(void * __capability c1, void* __capability c2);
//extern void sandbox_invoke(void * __capability c1, void* __capability c2);


static void * __capability libcheri_sealing_root;

static void *__capability sandbox_creturn_sealcap;
static void *__capability sandbox_creturn_codecap;
static void *__capability sandbox_creturn_datacap;

static void *__capability sandbox_A_sealcap;
static void *__capability sandbox_A_codecap;
static void *__capability sandbox_A_datacap;

struct sandbox_data{
  int data __attribute__ ((aligned(16)));
  char name[32] __attribute__ ((aligned(16)));
};

struct sandbox_data shared;
struct sandbox_data privateA;
struct sandbox_data privateB;

struct sandbox_data *sharedp;
struct sandbox_data *privateAp;
struct sandbox_data *privateBp;

void __attribute__((cheri_ccallee)) sandboxA_print(){
  char a[32] __attribute__((aligned(16))) = "hello from sandbox A";
  printf("%s\n", a);
  //printf(("printing in sandbox A\n")__attribute__((aligned(16))));
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
codecap_create(void (*sandbox_base)(void), void *sandbox_end)
{
	void * __capability codecap;

        printf("creating code cap...\n");

#ifdef __CHERI_PURE_CAPABILITY__
	(void)sandbox_end;
	codecap = cheri_andperm(sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_EXECUTE | 
		CHERI_PERM_CCALL | CHERI_PERM_SYSCALL);
#else
	codecap = cheri_codeptrperm(sandbox_base,
	    (size_t)sandbox_end - (size_t)sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_EXECUTE | 
		CHERI_PERM_CCALL | CHERI_PERM_SYSCALL);
#endif

        printf("\tcode cap created.\n");

	return (codecap);
}


static void * __capability
datacap_create(void *sandbox_base, void *sandbox_end)
{
	void * __capability datacap;

        printf("creating data cap...\n");

#ifdef __CHERI_PURE_CAPABILITY__
	(void)sandbox_end;
	datacap = cheri_andperm(sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
	    CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
	    CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL | CHERI_PERM_SYSCALL);
#else
	datacap = cheri_ptrperm(sandbox_base,
	    (size_t)sandbox_end - (size_t)sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
	    CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
	    CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL | CHERI_PERM_SYSCALL);
#endif


        printf("\tdata cap created\n");

	return (datacap);
}


/*
 * One-type setup for ccall-related tests.
 */
void
cheritest_ccall_setup(void)
{

	printf("begin.\n");
	/*
	 * Create sealing, sealed code, and sealed data capabilities for each
	 * of the three classes used in these tests.
	 *//*
	sandbox_creturn_sealcap = libcheri_type_alloc();
	sandbox_creturn_codecap = cheri_seal(codecap_create(&sandbox_creturn,
	    &sandbox_creturn_end), sandbox_creturn_sealcap);
	sandbox_creturn_datacap = cheri_seal(datacap_create(&sandbox_creturn,
	    &sandbox_creturn_end), sandbox_creturn_sealcap);
	*/
  /** sandbox A **/
	//sandbox_A_sealcap = libcheri_type_alloc();
	if (sysarch(CHERI_GET_SEALCAP, &libcheri_sealing_root) < 0)
		libcheri_sealing_root = NULL;
	assert((cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL) != 0);
	assert(cheri_getlen(libcheri_sealing_root) != 0);
	sandbox_A_sealcap = libcheri_sealing_root;

	sandbox_A_codecap = cheri_seal(codecap_create(&sandboxA_print, &sandboxB_print), sandbox_A_sealcap);
        //cheri_seal(codecap_create(&sandboxA_print, &sandboxB_print), sandbox_A_sealcap);
	sandbox_A_datacap = cheri_seal(datacap_create(&privateA, &privateB), sandbox_A_sealcap);
	//sandbox_A_datacap = cheri_seal(cheri_getdefault(), sandbox_A_sealcap);
	//sandbox_A_datacap = cheri_seal(
	//  datacap_create(
	//	  (void *)cheri_getbase(cheri_getdefault()), 
	//	  (void *)(cheri_getbase(cheri_getdefault()) + cheri_getlen(cheri_getdefault()))
	//	  ), 
	//  sandbox_A_sealcap
	//);

  /**/

	printf("done.");
}


/*
 * CCall code that will immediately CReturn.
 */
void
test_nofault_ccall_creturn(const struct cheri_test *ctp __unused)
{
	struct cheri_object co;

	co.co_codecap = sandbox_creturn_codecap;
	co.co_datacap = sandbox_creturn_datacap;
	//(void)libcheri_invoke(co, 0,
	//    0, 0, 0, 0, 0, 0, 0, 0,
	//    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	sandbox_invoke(co.co_codecap, co.co_datacap);

	cheritest_success();
}

void test_sandboxA( void )
{
	sandbox_invoke(sandbox_A_codecap, sandbox_A_datacap);
	cheritest_success();
}



int main(void){

 printf("hello world\n");

 printf("cheritest setup\n");
 cheritest_ccall_setup();

 printf("now start testing...\n");

 //test_nofault_ccall_creturn(NULL);
 //printf("done no fault ccall creturn.\n");

 test_sandboxA();
 printf("done test with sandboxA.\n");

 //test_fault_creturn(NULL);

 printf("done test.\n");

 return 0;

}

