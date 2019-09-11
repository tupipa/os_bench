
#if !__has_feature(capabilities)
#error "This code requires a CHERI-aware compiler"
#endif


#include <stdio.h>
#include <stdlib.h>
#include <cheri/cheri.h>
#include <cheri/cheric.h>  // builtin wrappers
#include <cheri/libcheri_type.h>  // libcheri type alloc()
#include "cheritest.h"


/* LLM: variable definition for debugging */
TRACK_HELLO_VAR_DEFINITION

extern void	sandbox_creturn(void);
extern void	sandbox_creturn_end;
extern void __attribute__ ((cheri_ccall)) sandbox_invoke(void * __capability c1, void* __capability c2);


static void *__capability sandbox_creturn_sealcap;
static void *__capability sandbox_creturn_codecap;
static void *__capability sandbox_creturn_datacap;

struct sandbox_data{
  int data;
  char name[20];
};

struct sandbox_data shared;
struct sandbox_data privateA;
struct sandbox_data privateB;

struct sandbox_data *sharedp;
struct sandbox_data *privateAp;
struct sandbox_data *privateBp;

void sandboxA_print(){
  printf("printing in sandbox A\n");
  printf("shared data: %d\n", sharedp->data);
  printf("A private data: %d\n", privateAp->data); 
  printf("B private data: %d\n", privateBp->data);
}

void sandboxB_print(){
  printf("printing in sandbox A\n");
  printf("shared data: %d\n", sharedp->data);
  printf("A private data: %d\n", privateAp->data); 
  printf("B private data: %d\n", privateBp->data);
}

static void * __capability
codecap_create(void (*sandbox_base)(void), void *sandbox_end)
{
	void * __capability codecap;

#ifdef __CHERI_PURE_CAPABILITY__
	(void)sandbox_end;
	codecap = cheri_andperm(sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_EXECUTE | CHERI_PERM_CCALL);
#else
	codecap = cheri_codeptrperm(sandbox_base,
	    (size_t)sandbox_end - (size_t)sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_EXECUTE | CHERI_PERM_CCALL);
#endif
	return (codecap);
}


static void * __capability
datacap_create(void *sandbox_base, void *sandbox_end)
{
	void * __capability datacap;

#ifdef __CHERI_PURE_CAPABILITY__
	(void)sandbox_end;
	datacap = cheri_andperm(sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
	    CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
	    CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL);
#else
	datacap = cheri_ptrperm(sandbox_base,
	    (size_t)sandbox_end - (size_t)sandbox_base,
	    CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
	    CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
	    CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL);
#endif
	return (datacap);
}


/*
 * One-type setup for ccall-related tests.
 */
void
cheritest_ccall_setup(void)
{

	BUFFER_WRITE("begin.");
	/*
	 * Create sealing, sealed code, and sealed data capabilities for 
each
	 * of the three classes used in these tests.
	 */
	sandbox_creturn_sealcap = libcheri_type_alloc();
	sandbox_creturn_codecap = 
cheri_seal(codecap_create(&sandbox_creturn,
	    &sandbox_creturn_end), sandbox_creturn_sealcap);
	sandbox_creturn_datacap = 
cheri_seal(datacap_create(&sandbox_creturn,
	    &sandbox_creturn_end), sandbox_creturn_sealcap);

	BUFFER_WRITE("done.");
}



/*
 * Trigger a CReturn underflow by trying to return from an unsandboxed
 * context.
 */
void
test_fault_creturn(const struct cheri_test *ctp __unused)
{

	__asm__ __volatile__("creturn" : : : "memory");
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



int main(void){

 printf("hello world\n");

 printf("cheritest setup\n");
 cheritest_ccall_setup();

 printf("now start testing...\n");

 test_nofault_ccall_creturn(NULL);
 
 printf("done no fault ccall creturn.\n");

 //test_fault_creturn(NULL);

 printf("done test.\n");

 return 0;

}

