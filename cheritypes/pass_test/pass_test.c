



/**
 * A test example for privileged data pass
 * distinguish by name
 * distinguish by attribute
*/


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define HAS_ATTR

#ifdef HAS_ATTR
#define PRIV_LEVEL(n) __attribute__((privilege_level(n)))
#define PRIV_FUNC __attribute__((privilege_function))
#define PRIV_DATA __attribute__((privilege_data))
//#define PRIV PRIV_LEVEL(0)
#define PRIV PRIV_FUNC
#define CHERI_CALLEE __attribute__((cheri_ccallee))

#else // no attributes are used
#define PRIV_LEVEL(n)
#define PRIV_FUNC
#define PRIV_DATA
#define PRIV PRIV_FUNC
#define CHERI_CALLEE

#endif

typedef struct pcb pcb_t;
typedef struct thread thread_t;

struct thread {
    int td_int; 
    struct pcb *td_pcb;
};

struct __attribute__((packed)) pcb {
    struct thread *pcb_td1;
    struct thread *pcb_td2;
    int pcb_int;
} __attribute__((aligned(2)));

__attribute__((privilege_level(0))) thread_t thread01 = {01, 0 };

PRIV_DATA pcb_t pcb01 = {0,0,0};

const pcb_t pcb03 = {&thread01,&thread01,111};


PRIV_FUNC CHERI_CALLEE void init_struct(PRIV_DATA pcb_t *pcb){

    pcb->pcb_td1 = &thread01;

    pcb->pcb_int = 1000;

    pcb->pcb_td2 = (thread_t *) malloc(sizeof(thread_t));

    thread01.td_int = 100;
    thread01.td_pcb = pcb;

    pcb->pcb_td2->td_int = 200;
    pcb->pcb_td2->td_pcb = pcb;

}

void use_struct ( const pcb_t * pcb ) {

    printf("the pcb struct contains 2 thread structs: \n");
    printf("the first thread struct: \n");
    printf("\tthread addr: 0x%p \n", pcb->pcb_td1 );
    printf("\ttd_int: %d \n", pcb->pcb_td1 -> td_int);
    printf("\tpcb addr: 0x%p \n", pcb->pcb_td1 -> td_pcb);

}

int main(void){

    PRIV_DATA pcb_t pcb00;

    init_struct(&pcb00);

    printf("hello pass_test\n");

    init_struct(&pcb01);

    use_struct(&pcb01);
    use_struct(&pcb03);

}

