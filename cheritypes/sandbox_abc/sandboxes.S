
/* reference file: lib/libcheri/mips/libcheri_invoke_cabi.S */

#if defined(CPU_CHERI128) || (defined(_MIPS_SZCAP) && (_MIPS_SZCAP == 128))
#define CHERICAP_SIZE   16
#define CHERICAP_SHIFT  4
#else
#define CHERICAP_SIZE   32
#define CHERICAP_SHIFT  5
#endif

#ifdef __CHERI_PURE_CAPABILITY__
#define _FRAME_STACK_REG        $c11
#define _FRAME_RETURN_REG       $c17
#else
#define _FRAME_STACK_REG        $sp
#define _FRAME_RETURN_REG       $ra
#endif

#define LIBCHERI_INVOKE_FRAME_SIZE (11*CHERICAP_SIZE + 96)

	/*
	 * baremetal code to invoke a sandbox, without compiler support
	 */
	.text
	.type sandbox_invoke,@function
	.global sandbox_invoke
	.ent sandbox_invoke
sandbox_invoke:
	.frame _FRAME_STACK_REG,LIBCHERI_INVOKE_FRAME_SIZE,_FRAME_RETURN_REG;

    /* LLM: no clear/restore the registers, 
	 * allows it behaves just like a hardware jump but additional hardware checks
     * on object types of code and data capabilities;
	 * ideally, all code should be called in this way with its data/code capability 
	 * specified.
	 */
	.set push;
	.set noreorder;
    cgetoffset $t9, $c1;
	ccall $c1, $c2, 1;
  	nop;
	.set pop;
	.end sandbox_invoke

	.global sandbox_invoke_end
sandbox_invoke_end:
	.size sandbox_invoke, sandbox_invoke_end - sandbox_invoke
	.size sandbox_invoke_end, 0

