
#if !__has_feature(capabilities)
#error "This code requires a CHERI-aware compiler"
#endif


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


/*
 * One-type setup for ccall-related tests.
 */
void
cheritest_ccall_setup(void)
{

	printf("begin.\n");

  /** sandbox A **/

	if (sysarch(CHERI_GET_SEALCAP, &libcheri_sealing_root) < 0)
		libcheri_sealing_root = NULL;
	assert((cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL) != 0);
	assert(cheri_getlen(libcheri_sealing_root) != 0);

#ifdef __CHERI_PURE_CAPABILITY__
	sandbox_A_sealcap = libcheri_sealing_root;
#else

	sandbox_A_sealcap = libcheri_type_alloc();
	//sandbox_A_sealcap = libcheri_sealing_root;

#endif
	sandbox_A_codecap = cheri_getpcc();
	sandbox_A_codecap = cheri_setaddress(sandbox_A_codecap, (vaddr_t)&sandboxA_print);


    printf("\t code cap created as:\n");
	CHERI_CAP_PRINT(sandbox_A_codecap);

	sandbox_A_codecap = cheri_seal(sandbox_A_codecap, sandbox_A_sealcap);


    printf("\t code cap sealed as:\n");
	CHERI_CAP_PRINT(sandbox_A_codecap);


	sandbox_A_datacap = cheri_getdefault();
	sandbox_A_datacap = cheri_setaddress(sandbox_A_datacap, (vaddr_t)&privateA);

    printf("\t data cap created as:\n");
	CHERI_CAP_PRINT(sandbox_A_datacap);

	sandbox_A_datacap = cheri_seal(sandbox_A_datacap, sandbox_A_sealcap);

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

