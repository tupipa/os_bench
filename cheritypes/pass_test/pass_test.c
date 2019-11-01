



/**
 * A test example for privileged data pass
 * distinguish by name
 * distinguish by attribute
*/


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>


typedef struct pcb pcb_t;
typedef struct thread thread_t;

struct thread {
    int td_int; 
    struct pcb *td_pcb;
};

struct pcb {
    struct thread *pcb_td1;
    struct thread *pcb_td2;
    int pcb_int;
};

thread_t thread01 = {01, 0 };

pcb_t pcb01 = {0,0,0};


void init_struct(){

    pcb01.pcb_td1 = &thread01;

    pcb01.pcb_int = 1000;

    pcb01.pcb_td2 = (thread_t *) malloc(sizeof(thread_t));

    thread01.td_int = 100;
    thread01.td_pcb = &pcb01;

    pcb01.pcb_td2->td_int = 200;
    pcb01.pcb_td2->td_pcb = &pcb01;

}

void use_struct(){


    printf("the pcb 01 struct contains 2 thread structs: \n");
    printf("the first thread struct: \n");
    printf("\tthread addr: 0x%p \n", pcb01.pcb_td1 );
    printf("\ttd_int: %d \n", pcb01.pcb_td1 -> td_int);
    printf("\tpcb addr: 0x%p \n", pcb01.pcb_td1 -> td_pcb);

}

int main(void){

    printf("hello pass_test\n");

    init_struct();

    use_struct();
    
}

