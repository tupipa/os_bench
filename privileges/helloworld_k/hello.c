/*
 * Kernel module hello world
 * cite: https://www.freebsd.org/doc/en_US.ISO8859-1/books/arch-handbook/driverbasics-kld.html
 */

#include <sys/types.h>
#include <sys/module.h>
#include <sys/systm.h>  /* uprintf */
#include <sys/errno.h>
#include <sys/param.h>  /* defines used in kernel.h */
#include <sys/kernel.h> /* types used in module initialization */


unsigned long read_cr3(void);

unsigned long read_cr3(void){

 unsigned long cr3;
 __asm__ volatile(
 "mov %%cr3, %%rax\n"
 "mov %%rax, %0\n"
 : "=m" (cr3)
 );

 printf ("%s: cr3 = %lx", __FUNCTION__, cr3);

 return cr3;

}
/*
 * Load handler that deals with the loading and unloading of a KLD.
 */

static int
hello_loader(struct module *m, int what, void *arg)
{
  int err = 0;

  switch (what) {
  case MOD_LOAD:                /* kldload */
    uprintf("Hello KLD loaded.\n");
    uprintf("\t Reading CR3: %lx.\n", read_cr3());
    break;
  case MOD_UNLOAD:
    uprintf("\t Reading CR3: %lx.\n", read_cr3());
    uprintf("Hello KLD unloaded.\n");
    break;
  default:
    err = EOPNOTSUPP;
    break;
  }
  return(err);
}

/* Declare this module to the rest of the kernel */

static moduledata_t hello_mod = {
  "hello",
  hello_loader,
  NULL
};

DECLARE_MODULE(helloworld, hello_mod, SI_SUB_KLD, SI_ORDER_ANY);
