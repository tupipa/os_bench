/* reference file bin/cheritest/cheritest_sandbox.S */


	.set noreorder	/* Preserve nops, allow instructions in b-d 
slots. */
	.set noat	/* Don't use $at automatically. */

/*
 * Landing code within a sandbox.  Various versions with varying levels 
of
 * technical and moral complexity.
 */

	/*
	 * Sandbox code that simply performs creturn immediately.
	 * Position-independent, no memory access.
	 */
	.text
	.type sandbox_creturn,@function
	.global sandbox_creturn
	.ent sandbox_creturn
sandbox_creturn:

	creturn
	.end sandbox_creturn

	.global sandbox_creturn_end
sandbox_creturn_end:
	.size sandbox_creturn, sandbox_creturn_end - sandbox_creturn
	.size sandbox_creturn_end, 0

	/*
	 * baremetal code to invoke a sandbox, without compiler support
	 */
	.text
	.type sandbox_invoke,@function
	.global sandbox_invoke
	.ent sandbox_invoke
sandbox_invoke:

	ccall $c12, $c13, 1
	.end sandbox_invoke

	.global sandbox_invoke_end
sandbox_invoke_end:
	.size sandbox_invoke, sandbox_invoke_end - sandbox_invoke
	.size sandbox_invoke_end, 0

