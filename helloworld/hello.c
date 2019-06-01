#include "stdio.h"

#define ARCH_X86

#define ARCH_MIPS

unsigned long test_priv_x86(){

 unsigned long cr3;
 __asm__ volatile(
 "mov %%cr3, %%rax\n"
 "mov %%rax, %0\n"
 : "=m" (cr3)
 );

 printf ("%s: cr3 = %lx", __FUNCTION__, cr3);

 return cr3;

}

unsigned long test_priv_mips(){

 unsigned long cr3;

 printf("%s:todo\n", __FUNCTION__);

 return cr3;

}

int main () {

 printf("hello\n");

#ifdef ARCH_X86
 test_priv_x86();
#endif

#ifdef ARCH_MIPS
 test_priv_mips();
#endif

 return 0;

}

