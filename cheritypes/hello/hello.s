	.text
	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	legacy
	.module	softfloat
	.file	"hello.c"
	.text
	.globl	main                    # -- Begin function main
	.p2align	3
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$c24,48,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -48
	csc	$c24, $zero, 32($c11)   # 16-byte Folded Spill
	csc	$c17, $zero, 16($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(main)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(main)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	cincoffset	$c2, $c24, 12
	csetbounds	$c2, $c2, 4
	addiu	$2, $zero, 0
	csw	$zero, $zero, 0($c2)
	clcbi	$c3, %captab20(.L.str)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csw	$2, $zero, 8($c24)      # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	daddiu	$1, $zero, 0
	csw	$2, $zero, 4($c24)      # 4-byte Folded Spill
	move	$2, $1
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 16($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 32($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 48
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello world"
	.size	.L.str, 12


	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git 917e42554ec984f5dbb5cea50e8b7f3918cc2838)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.text
