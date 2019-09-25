
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
#include <unistd.h>
#include <string.h>
#include <cheri/cheri.h>
#include <cheri/cheric.h>  // builtin wrappers
#include <cheri/libcheri_type.h>  // libcheri type alloc()
#include <cheri/libcheri_invoke.h>  // libcheri invoke prototype
#include "cheritest.h"

#include <machine/sysarch.h>

#define DEBUG 0

extern void    sandbox_creturn(void);
extern void    sandbox_creturn_end;
//extern void __attribute__ ((cheri_ccallee)) sandbox_invoke(void * __capability c1, void* __capability c2);
extern void __attribute__ ((cheri_ccall)) sandbox_invoke(void * __capability c1, void* __capability c2);
//extern void sandbox_invoke(void * __capability c1, void* __capability c2);


static void * __capability libcheri_sealing_root;

static void *__capability sandbox_A_sealcap;
static void *__capability sandbox_A_codecap;
static struct sandbox_data *__capability sandbox_A_datacap;

static void *__capability sandbox_B_sealcap;
static void *__capability sandbox_B_codecap;
static struct sandbox_data *__capability sandbox_B_datacap;

static void *__capability sandbox_shared_datacap;

struct sandbox_data{
  int data __attribute__ ((aligned(32)));
  char name[32] __attribute__ ((aligned(32)));
};

static struct sandbox_data shared __attribute__ ((aligned(64)));
static struct sandbox_data privateA __attribute__ ((aligned(64)));
static struct sandbox_data privateB __attribute__ ((aligned(64)));
static int privateDummy __attribute__ ((aligned(64)));

// bare capability without sealing/unsealing
struct sandbox_data * __capability sharedp;
struct sandbox_data * __capability privateAp;
struct sandbox_data * __capability privateBp;

void __attribute__((cheri_ccallee)) sandboxA_print(){
//void __attribute__((cheri_ccall)) sandboxA_print(){
//void sandboxA_print(){

#if DEBUG > 0

  char a[32] __attribute__((aligned(32))) = "hello from sandbox A";
  printf("%s\n", a);

  printf("\nthe PCC is:\n\t");
  CHERI_CAP_PRINT(cheri_getpcc());
  printf("\nthe IDC is:\n");
  CHERI_CAP_PRINT(cheri_getidc());
  printf("\nthe DDC is:\n");
  CHERI_CAP_PRINT(cheri_getdefault());

  printf("\nthe privateAp is:\n\t");
  CHERI_CAP_PRINT(privateAp);
  printf("\nthe sandbox_A_datacap is:\n\t");
  CHERI_CAP_PRINT(sandbox_A_datacap);

  sleep(1);

  //strcpy(sandbox_A_datacap->name, "my name is A"); // sandbox_A_datacap is sealed
  strcpy(privateAp->name, "my name is A");
  printf("A private name: %s\n", privateAp->name);

  sleep(1);

#endif // DEBUG > 0

  privateAp->data = 1000;

#if DEBUG > 0

  sleep(1);
  printf("\nthe privateBp is:\n\t");
  CHERI_CAP_PRINT(privateBp);
  printf("\nthe sandbox_B_datacapis:\n\t");
  CHERI_CAP_PRINT(sandbox_B_datacap);

  printf("going to overwrite private B data\n");
#endif // DEBUG > 0

  // read from sandbox B
  privateAp -> data = privateBp -> data;

  // write to sandbox B
  //sandbox_B_datacap -> data = 1000;
  //privateBp -> data = 5000;

#if DEBUG > 0
  printf("B private data: %d\n", sandbox_B_datacap->data);
  //printf("shared data: %d\n", sharedp->data);
#endif // DEBUG > 0

  //sandboxA_end:

}

void sandboxB_print(){

  printf("printing in sandbox B\n");
  privateBp->data = 2000;
  privateAp->data = 2000;
  printf("shared data: %d\n", sharedp->data);
  printf("A private data: %d\n", privateAp->data); 
  printf("B private data: %d\n", privateBp->data);
  //sandboxB_end:
}


static void * __capability
datacap_create(void *sandbox_base, void *sandbox_end)
{
    void * __capability datacap;

    //printf("creating data cap...\n");

#ifdef __CHERI_PURE_CAPABILITY__
    printf("\tpure cap...\n");
    (void)sandbox_end;
    datacap = cheri_andperm(sandbox_base,
        CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
        CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
        CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL | CHERI_PERM_SYSCALL);
#else
    //printf("\thyb cap:\n");
    datacap = cheri_ptrperm(sandbox_base,
        (size_t)sandbox_end - (size_t)sandbox_base,
        CHERI_PERM_GLOBAL | CHERI_PERM_LOAD | CHERI_PERM_STORE |
        CHERI_PERM_LOAD_CAP | CHERI_PERM_STORE_CAP |
        CHERI_PERM_STORE_LOCAL_CAP | CHERI_PERM_CCALL | CHERI_PERM_SYSCALL |
            CHERI_PERM_SEAL | CHERI_PERM_UNSEAL );
#endif

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

//#ifdef __CHERI_PURE_CAPABILITY__
#if 1
    if (sysarch(CHERI_GET_SEALCAP, &libcheri_sealing_root) < 0)
        libcheri_sealing_root = NULL;
    assert((cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL ) != 0);
    assert((cheri_getperm(libcheri_sealing_root) & CHERI_PERM_UNSEAL ) != 0);
    assert(cheri_getlen(libcheri_sealing_root) != 0);

    sandbox_A_sealcap = libcheri_sealing_root;

#endif

#if 1

    sandbox_A_sealcap = libcheri_type_alloc();
    sandbox_A_sealcap = libcheri_type_alloc();
    sandbox_B_sealcap = libcheri_type_alloc();
    sandbox_B_sealcap = libcheri_type_alloc();

    assert((cheri_getperm(sandbox_A_sealcap) & CHERI_PERM_UNSEAL ) != 0);
    assert((cheri_getperm(sandbox_B_sealcap) & CHERI_PERM_UNSEAL ) != 0);

    //printf("\t A seal cap created as:\n\t");
    //CHERI_CAP_PRINT(sandbox_A_sealcap);
    //printf("\t B seal cap created as:\n\t");
    //CHERI_CAP_PRINT(sandbox_B_sealcap);

    // add perm unseal cap
    sandbox_A_sealcap = cheri_andperm(sandbox_A_sealcap, 
            cheri_getperm(sandbox_A_sealcap) | CHERI_PERM_SEAL | CHERI_PERM_UNSEAL); // do nothing, since andperm is to reduce perms.
    sandbox_B_sealcap = cheri_andperm(sandbox_B_sealcap,
            cheri_getperm(sandbox_B_sealcap) | CHERI_PERM_UNSEAL);

#endif
    //printf("\t A seal cap update with PERM_UNSEAL:\n\t");
    //CHERI_CAP_PRINT(sandbox_A_sealcap);
    //printf("\t B seal cap update with PERM_UNSEAL:\n\t");
    //CHERI_CAP_PRINT(sandbox_B_sealcap);

    sandbox_A_codecap = cheri_getpcc();
    sandbox_A_codecap = cheri_setaddress(sandbox_A_codecap, (vaddr_t)&sandboxA_print);
    //printf("\t code cap created as:\n\t");
    //CHERI_CAP_PRINT(sandbox_A_codecap);

    sandbox_A_codecap = cheri_seal(sandbox_A_codecap, sandbox_A_sealcap);
    //printf("\t code cap sealed as:\n\t");
    //CHERI_CAP_PRINT(sandbox_A_codecap);


#ifdef __CHERI_PURE_CAPABILITY__
    //    printf("\tcreating pure data cap...\n");
    //sandbox_A_datacap = cheri_getidc();
    privateAp = datacap_create(&privateA, &privateB);
    privateBp = datacap_create(&privateB, &privateDummy);
    sandbox_A_datacap = privateAp;
    sandbox_B_datacap = privateBp;

#else
    //printf("\tcreating hybrid data cap (DDC)...\n");
    //sandbox_A_datacap = cheri_getdefault();
    //sandbox_A_datacap = cheri_setaddress(sandbox_A_datacap, (vaddr_t)&privateA);
    //printf("\tcreating hybrid data cap...\n");
    privateAp = datacap_create(&privateA, &privateB);
    privateBp = datacap_create(&privateB, &privateDummy);
    sandbox_A_datacap = privateAp;
    sandbox_B_datacap = privateBp;

#endif // __CHERI_PURE_CAPABILITY__

    //printf("\t data cap created as:\n\t");
    //CHERI_CAP_PRINT(sandbox_A_datacap);

    sandbox_A_datacap = cheri_seal(sandbox_A_datacap, sandbox_A_sealcap);
    sandbox_B_datacap = cheri_seal(sandbox_B_datacap, sandbox_B_sealcap);

    //printf("\t data cap sealed as:\n");
    //CHERI_CAP_PRINT(sandbox_A_datacap);

#if 1 // TEST_TYPE_SET
    //LLM: still throw exception of permit unseal violation even if the 
    // PERMI_UNSEAL is set.
    privateAp = cheri_seal(privateAp, sandbox_A_sealcap);
    privateAp = cheri_unseal(privateAp, sandbox_A_sealcap);
    privateBp = cheri_seal(privateBp, sandbox_B_sealcap);
    privateBp = cheri_unseal(privateBp, sandbox_B_sealcap);
    sandbox_B_datacap = cheri_unseal(sandbox_B_datacap, sandbox_B_sealcap);
#endif 

    printf("done.");
}


void test_sandboxA( void )
{

//#ifdef __CHERI_PURE_CAPABILITY__

    sandbox_invoke(sandbox_A_codecap, sandbox_A_datacap);

#if 0
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

 // setup sandbox data
 privateAp = &privateA;
 privateBp = &privateB;
 sharedp = &shared;


 printf("cheritest setup\n");
 cheritest_ccall_setup();

#if 0
 printf("\nthe default DDC is:\n");
 CHERI_CAP_PRINT(cheri_getdefault());

 printf("\nthe default PCC is:\n");
 CHERI_CAP_PRINT(cheri_getpcc());

 printf("\nthe default IDC is:\n");
 CHERI_CAP_PRINT(cheri_getidc());
#endif

 printf("now start testing...\n");

 test_sandboxA();
 printf("done test with sandboxA.\n");

 return 0;

}

