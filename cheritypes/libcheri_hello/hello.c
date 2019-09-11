
#if !__has_feature(capabilities)
#error "This code requires a CHERI-aware compiler"
#endif


#include <stdio.h>
#include <stdlib.h>
#include <cheri/cheri.h>
#include "cheritest.h"


int main(void){

 printf("hello world");

 return 0;

}

