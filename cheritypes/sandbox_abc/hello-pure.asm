	.text
	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	legacy
	.module	softfloat
	.file	"hello.c"
	.text
	.globl	sandboxA_print          # -- Begin function sandboxA_print
	.p2align	3
	.type	sandboxA_print,@function
	.set	nomicromips
	.set	nomips16
	.ent	sandboxA_print
sandboxA_print:                         # @sandboxA_print
	.frame	$c24,32,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -32
	csc	$c24, $zero, 16($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(sandboxA_print)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(sandboxA_print)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	#APP
	.set	push
	.set	at
	.set	macro
	.set	reorder

	cwritehwr	$c26, $chwr_ddc


	.set	pop
	#NO_APP
	clcbi	$c2, %captab20(privateAp)($c1)
	clc	$c3, $zero, 0($c2)
	addiu	$1, $zero, 1000
	csw	$1, $zero, 0($c3)
	clcbi	$c1, %captab20(privateBp)($c1)
	clc	$c1, $zero, 0($c1)
	clw	$1, $zero, 0($c1)
	clc	$c1, $zero, 0($c2)
	csw	$1, $zero, 0($c1)
	daddiu	$2, $zero, 0
	csd	$2, $zero, 8($c24)      # 8-byte Folded Spill
	cld	$3, $zero, 8($c24)      # 8-byte Folded Reload
	cgetnull	$c3
	cincoffset	$c11, $c24, $zero
	clc	$c24, $zero, 16($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 32
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sandboxA_print
.Lfunc_end0:
	.size	sandboxA_print, .Lfunc_end0-sandboxA_print
                                        # -- End function
	.globl	sandboxA_subprint       # -- Begin function sandboxA_subprint
	.p2align	3
	.type	sandboxA_subprint,@function
	.set	nomicromips
	.set	nomips16
	.ent	sandboxA_subprint
sandboxA_subprint:                      # @sandboxA_subprint
	.frame	$c24,16,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -16
	csc	$c24, $zero, 0($c11)    # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(sandboxA_subprint)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(sandboxA_subprint)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	#APP
	.set	push
	.set	at
	.set	macro
	.set	reorder

	cwritehwr	$c26, $chwr_ddc


	.set	pop
	#NO_APP
	clcbi	$c2, %captab20(privateAp)($c1)
	clc	$c3, $zero, 0($c2)
	addiu	$1, $zero, 1111
	csw	$1, $zero, 0($c3)
	clcbi	$c1, %captab20(privateBp)($c1)
	clc	$c1, $zero, 0($c1)
	clw	$1, $zero, 0($c1)
	clc	$c1, $zero, 0($c2)
	csw	$1, $zero, 0($c1)
	cincoffset	$c11, $c24, $zero
	clc	$c24, $zero, 0($c11)    # 16-byte Folded Reload
	cincoffset	$c11, $c11, 16
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sandboxA_subprint
.Lfunc_end1:
	.size	sandboxA_subprint, .Lfunc_end1-sandboxA_subprint
                                        # -- End function
	.globl	sandboxB_print          # -- Begin function sandboxB_print
	.p2align	3
	.type	sandboxB_print,@function
	.set	nomicromips
	.set	nomips16
	.ent	sandboxB_print
sandboxB_print:                         # @sandboxB_print
	.frame	$c24,128,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -128
	csc	$c24, $zero, 112($c11)  # 16-byte Folded Spill
	csc	$c17, $zero, 96($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(sandboxB_print)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(sandboxB_print)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	clcbi	$c3, %captab20(.L.str)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 80($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 80($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateBp)($c1)
	clc	$c3, $zero, 0($c2)
	addiu	$3, $zero, 2000
	csw	$3, $zero, 0($c3)
	clcbi	$c3, %captab20(privateAp)($c1)
	clc	$c4, $zero, 0($c3)
	csw	$3, $zero, 0($c4)
	clcbi	$c4, %captab20(sharedp)($c1)
	clc	$c4, $zero, 0($c4)
	clw	$1, $zero, 0($c4)
	cmove	$c4, $c11
	csd	$1, $zero, 0($c4)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c4, $c4, 8
	ori	$1, $zero, 65495
	candperm	$c13, $c4, $1
	clcbi	$c4, %captab20(.L.str.1)($c1)
	csc	$c3, $zero, 64($c24)    # 16-byte Folded Spill
	cmove	$c3, $c4
	csw	$2, $zero, 60($c24)     # 4-byte Folded Spill
	csc	$c2, $zero, 32($c24)    # 16-byte Folded Spill
	csd	$1, $zero, 24($c24)     # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 64($c24)    # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clc	$c3, $zero, 80($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 24($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.2)($c3)
	csw	$2, $zero, 20($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clc	$c3, $zero, 80($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 24($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.3)($c3)
	csw	$2, $zero, 16($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 96($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 112($c11)  # 16-byte Folded Reload
	cincoffset	$c11, $c11, 128
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sandboxB_print
.Lfunc_end2:
	.size	sandboxB_print, .Lfunc_end2-sandboxB_print
                                        # -- End function
	.globl	sandboxB_subprint       # -- Begin function sandboxB_subprint
	.p2align	3
	.type	sandboxB_subprint,@function
	.set	nomicromips
	.set	nomips16
	.ent	sandboxB_subprint
sandboxB_subprint:                      # @sandboxB_subprint
	.frame	$c24,128,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -128
	csc	$c24, $zero, 112($c11)  # 16-byte Folded Spill
	csc	$c17, $zero, 96($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(sandboxB_subprint)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(sandboxB_subprint)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	clcbi	$c3, %captab20(.L.str)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 80($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 80($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateBp)($c1)
	clc	$c3, $zero, 0($c2)
	addiu	$3, $zero, 2000
	csw	$3, $zero, 0($c3)
	clcbi	$c3, %captab20(privateAp)($c1)
	clc	$c4, $zero, 0($c3)
	csw	$3, $zero, 0($c4)
	clcbi	$c4, %captab20(sharedp)($c1)
	clc	$c4, $zero, 0($c4)
	clw	$1, $zero, 0($c4)
	cmove	$c4, $c11
	csd	$1, $zero, 0($c4)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c4, $c4, 8
	ori	$1, $zero, 65495
	candperm	$c13, $c4, $1
	clcbi	$c4, %captab20(.L.str.1)($c1)
	csc	$c3, $zero, 64($c24)    # 16-byte Folded Spill
	cmove	$c3, $c4
	csw	$2, $zero, 60($c24)     # 4-byte Folded Spill
	csc	$c2, $zero, 32($c24)    # 16-byte Folded Spill
	csd	$1, $zero, 24($c24)     # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 64($c24)    # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clc	$c3, $zero, 80($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 24($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.2)($c3)
	csw	$2, $zero, 20($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clc	$c3, $zero, 80($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 24($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.3)($c3)
	csw	$2, $zero, 16($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 96($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 112($c11)  # 16-byte Folded Reload
	cincoffset	$c11, $c11, 128
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sandboxB_subprint
.Lfunc_end3:
	.size	sandboxB_subprint, .Lfunc_end3-sandboxB_subprint
                                        # -- End function
	.globl	cheritest_ccall_setup   # -- Begin function cheritest_ccall_setup
	.p2align	3
	.type	cheritest_ccall_setup,@function
	.set	nomicromips
	.set	nomips16
	.ent	cheritest_ccall_setup
cheritest_ccall_setup:                  # @cheritest_ccall_setup
	.frame	$c24,144,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -144
	csc	$c24, $zero, 128($c11)  # 16-byte Folded Spill
	csc	$c17, $zero, 112($c11)  # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(cheritest_ccall_setup)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(cheritest_ccall_setup)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	clcbi	$c3, %captab20(.L.str.4)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 96($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c3, %captab20(libcheri_sealing_root)($c1)
	clcbi	$c12, %capcall20(sysarch)($c1)
	daddiu	$4, $zero, 6
	cgetnull	$c13
	csw	$2, $zero, 92($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	bgez	$2, .LBB4_3
	nop
# %bb.1:                                # %entry
	b	.LBB4_2
	nop
.LBB4_2:                                # %if.then
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	csc	$cnull, $zero, 0($c2)
	b	.LBB4_3
	nop
.LBB4_3:                                # %if.end
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	clc	$c2, $zero, 0($c2)
	cgetperm	$1, $c2
	andi	$1, $1, 128
	beqz	$1, .LBB4_6
	nop
# %bb.4:                                # %if.end
	b	.LBB4_5
	nop
.LBB4_5:                                # %cond.true
	b	.LBB4_7
	nop
.LBB4_6:                                # %cond.false
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L__func__.cheritest_ccall_setup)($c1)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	clcbi	$c5, %captab20(.L.str.6)($c1)
	clcbi	$c12, %capcall20(__assert)($c1)
	daddiu	$4, $zero, 205
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
.LBB4_7:                                # %cond.end
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	clc	$c2, $zero, 0($c2)
	cgetperm	$1, $c2
	andi	$1, $1, 512
	beqz	$1, .LBB4_10
	nop
# %bb.8:                                # %cond.end
	b	.LBB4_9
	nop
.LBB4_9:                                # %cond.true5
	b	.LBB4_11
	nop
.LBB4_10:                               # %cond.false6
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L__func__.cheritest_ccall_setup)($c1)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	clcbi	$c5, %captab20(.L.str.7)($c1)
	clcbi	$c12, %capcall20(__assert)($c1)
	daddiu	$4, $zero, 206
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
.LBB4_11:                               # %cond.end7
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	clc	$c2, $zero, 0($c2)
	cgetlen	$1, $c2
	beqz	$1, .LBB4_14
	nop
# %bb.12:                               # %cond.end7
	b	.LBB4_13
	nop
.LBB4_13:                               # %cond.true9
	b	.LBB4_15
	nop
.LBB4_14:                               # %cond.false10
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L__func__.cheritest_ccall_setup)($c1)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	clcbi	$c5, %captab20(.L.str.8)($c1)
	clcbi	$c12, %capcall20(__assert)($c1)
	daddiu	$4, $zero, 207
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
.LBB4_15:                               # %cond.end11
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	clc	$c2, $zero, 0($c2)
	clcbi	$c3, %captab20(sandbox_A_sealcap)($c1)
	csc	$c2, $zero, 0($c3)
	clcbi	$c12, %capcall20(libcheri_type_alloc)($c1)
	cgetnull	$c13
	csc	$c3, $zero, 64($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 64($c24)    # 16-byte Folded Reload
	csc	$c3, $zero, 0($c1)
	clc	$c2, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(libcheri_type_alloc)($c2)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 64($c24)    # 16-byte Folded Reload
	csc	$c3, $zero, 0($c1)
	clc	$c2, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(libcheri_type_alloc)($c2)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_B_sealcap)($c1)
	csc	$c3, $zero, 0($c2)
	clcbi	$c12, %capcall20(libcheri_type_alloc)($c1)
	cgetnull	$c13
	csc	$c2, $zero, 48($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 48($c24)    # 16-byte Folded Reload
	csc	$c3, $zero, 0($c1)
	clc	$c2, $zero, 64($c24)    # 16-byte Folded Reload
	clc	$c3, $zero, 0($c2)
	cgetperm	$1, $c3
	andi	$1, $1, 512
	beqz	$1, .LBB4_18
	nop
# %bb.16:                               # %cond.end11
	b	.LBB4_17
	nop
.LBB4_17:                               # %cond.true18
	b	.LBB4_19
	nop
.LBB4_18:                               # %cond.false19
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L__func__.cheritest_ccall_setup)($c1)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	clcbi	$c5, %captab20(.L.str.9)($c1)
	clcbi	$c12, %capcall20(__assert)($c1)
	daddiu	$4, $zero, 218
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
.LBB4_19:                               # %cond.end20
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_B_sealcap)($c1)
	clc	$c2, $zero, 0($c2)
	cgetperm	$1, $c2
	andi	$1, $1, 512
	beqz	$1, .LBB4_22
	nop
# %bb.20:                               # %cond.end20
	b	.LBB4_21
	nop
.LBB4_21:                               # %cond.true23
	b	.LBB4_23
	nop
.LBB4_22:                               # %cond.false24
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L__func__.cheritest_ccall_setup)($c1)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	clcbi	$c5, %captab20(.L.str.10)($c1)
	clcbi	$c12, %capcall20(__assert)($c1)
	daddiu	$4, $zero, 219
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
.LBB4_23:                               # %cond.end25
	cgetpcc	$c1
	clc	$c2, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c3, %captab20(sandbox_A_codecap)($c2)
	csc	$c1, $zero, 0($c3)
	clc	$c1, $zero, 0($c3)
	clcbi	$c4, %captab20(sandboxA_print)($c2)
	cgetaddr	$1, $c4
	csetaddr	$c1, $c1, $1
	csc	$c1, $zero, 0($c3)
	clc	$c1, $zero, 0($c3)
	clcbi	$c4, %captab20(sandbox_A_sealcap)($c2)
	clc	$c5, $zero, 0($c4)
	cseal	$c1, $c1, $c5
	csc	$c1, $zero, 0($c3)
	clcbi	$c3, %captab20(privateA)($c2)
	clcbi	$c1, %captab20(privateB)($c2)
	clcbi	$c12, %capcall20(datacap_create)($c2)
	csc	$c4, $zero, 32($c24)    # 16-byte Folded Spill
	cmove	$c4, $c1
	cgetnull	$c13
	csc	$c1, $zero, 16($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateAp)($c1)
	csc	$c3, $zero, 0($c2)
	clcbi	$c12, %capcall20(datacap_create)($c1)
	clcbi	$c4, %captab20(privateDummy)($c1)
	clc	$c3, $zero, 16($c24)    # 16-byte Folded Reload
	cgetnull	$c13
	csc	$c2, $zero, 0($c24)     # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateBp)($c1)
	csc	$c3, $zero, 0($c2)
	clc	$c3, $zero, 0($c24)     # 16-byte Folded Reload
	clc	$c4, $zero, 0($c3)
	clcbi	$c5, %captab20(sandbox_A_datacap)($c1)
	csc	$c4, $zero, 0($c5)
	clc	$c4, $zero, 0($c2)
	clcbi	$c6, %captab20(sandbox_B_datacap)($c1)
	csc	$c4, $zero, 0($c6)
	clc	$c4, $zero, 0($c5)
	clc	$c7, $zero, 32($c24)    # 16-byte Folded Reload
	clc	$c8, $zero, 0($c7)
	cseal	$c4, $c4, $c8
	csc	$c4, $zero, 0($c5)
	clc	$c4, $zero, 0($c6)
	clcbi	$c5, %captab20(sandbox_B_sealcap)($c1)
	clc	$c8, $zero, 0($c5)
	cseal	$c4, $c4, $c8
	csc	$c4, $zero, 0($c6)
	clc	$c4, $zero, 0($c3)
	clc	$c8, $zero, 0($c7)
	cseal	$c4, $c4, $c8
	csc	$c4, $zero, 0($c3)
	clc	$c4, $zero, 0($c3)
	clc	$c8, $zero, 0($c7)
	cunseal	$c4, $c4, $c8
	csc	$c4, $zero, 0($c3)
	clc	$c4, $zero, 0($c2)
	clc	$c8, $zero, 0($c5)
	cseal	$c4, $c4, $c8
	csc	$c4, $zero, 0($c2)
	clc	$c4, $zero, 0($c2)
	clc	$c8, $zero, 0($c5)
	cunseal	$c4, $c4, $c8
	csc	$c4, $zero, 0($c2)
	clc	$c2, $zero, 0($c6)
	clc	$c4, $zero, 0($c5)
	cunseal	$c2, $c2, $c4
	csc	$c2, $zero, 0($c6)
	clcbi	$c3, %captab20(.L.str.11)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 112($c11)  # 16-byte Folded Reload
	clc	$c24, $zero, 128($c11)  # 16-byte Folded Reload
	cincoffset	$c11, $c11, 144
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	cheritest_ccall_setup
.Lfunc_end4:
	.size	cheritest_ccall_setup, .Lfunc_end4-cheritest_ccall_setup
                                        # -- End function
	.p2align	3               # -- Begin function datacap_create
	.type	datacap_create,@function
	.set	nomicromips
	.set	nomips16
	.ent	datacap_create
datacap_create:                         # @datacap_create
	.frame	$c24,112,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -112
	csc	$c24, $zero, 96($c11)   # 16-byte Folded Spill
	csc	$c17, $zero, 80($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(datacap_create)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(datacap_create)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	cincoffset	$c2, $c24, 64
	csetbounds	$c2, $c2, 16
	cincoffset	$c5, $c24, 48
	csetbounds	$c5, $c5, 16
	cincoffset	$c6, $c24, 32
	csetbounds	$c6, $c6, 16
	csc	$c3, $zero, 0($c2)
	csc	$c4, $zero, 0($c5)
	clcbi	$c3, %captab20(.L.str.16)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c2, $zero, 16($c24)    # 16-byte Folded Spill
	csc	$c6, $zero, 0($c24)     # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 16($c24)    # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	ori	$1, $zero, 33149
	candperm	$c2, $c2, $1
	clc	$c3, $zero, 0($c24)     # 16-byte Folded Reload
	csc	$c2, $zero, 0($c3)
	clc	$c3, $zero, 0($c3)
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 80($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 96($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 112
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	datacap_create
.Lfunc_end5:
	.size	datacap_create, .Lfunc_end5-datacap_create
                                        # -- End function
	.globl	test_sandboxA           # -- Begin function test_sandboxA
	.p2align	3
	.type	test_sandboxA,@function
	.set	nomicromips
	.set	nomips16
	.ent	test_sandboxA
test_sandboxA:                          # @test_sandboxA
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
	lui	$1, %hi(%neg(%captab_rel(test_sandboxA)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(test_sandboxA)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	clcbi	$c2, %captab20(sandbox_A_codecap)($c1)
	clc	$c2, $zero, 0($c2)
	clcbi	$c3, %captab20(sandbox_A_datacap)($c1)
	clc	$c3, $zero, 0($c3)
	clcbi	$c12, %capcall20(sandbox_invoke)($c1)
	daddiu	$1, $zero, 0
	csc	$c1, $zero, 0($c24)     # 16-byte Folded Spill
	cmove	$c1, $c2
	cmove	$c2, $c3
	cgetnull	$c13
	cgetnull	$c3
	cgetnull	$c4
	cgetnull	$c5
	cgetnull	$c6
	cgetnull	$c7
	cgetnull	$c8
	cgetnull	$c9
	cgetnull	$c10
	move	$4, $1
	move	$5, $1
	move	$6, $1
	move	$7, $1
	move	$8, $1
	move	$9, $1
	move	$10, $1
	move	$11, $1
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 0($c24)     # 16-byte Folded Reload
	clcbi	$c12, %capcall20(cheritest_success)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	test_sandboxA
.Lfunc_end6:
	.size	test_sandboxA, .Lfunc_end6-test_sandboxA
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	3
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
	.frame	$c24,96,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -96
	csc	$c24, $zero, 80($c11)   # 16-byte Folded Spill
	csc	$c17, $zero, 64($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(main)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(main)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	cincoffset	$c2, $c24, 60
	csetbounds	$c2, $c2, 4
	addiu	$2, $zero, 0
	csw	$zero, $zero, 0($c2)
	clcbi	$c3, %captab20(.L.str.12)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 32($c24)    # 16-byte Folded Spill
	csw	$2, $zero, 28($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateAp)($c1)
	clcbi	$c3, %captab20(privateA)($c1)
	csc	$c3, $zero, 0($c2)
	clcbi	$c2, %captab20(privateBp)($c1)
	clcbi	$c3, %captab20(privateB)($c1)
	csc	$c3, $zero, 0($c2)
	clcbi	$c2, %captab20(sharedp)($c1)
	clcbi	$c3, %captab20(shared)($c1)
	csc	$c3, $zero, 0($c2)
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.13)($c1)
	cgetnull	$c13
	csw	$2, $zero, 24($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(cheritest_ccall_setup)($c1)
	cgetnull	$c13
	csw	$2, $zero, 20($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.14)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(test_sandboxA)($c1)
	cgetnull	$c13
	csw	$2, $zero, 16($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.15)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	daddiu	$1, $zero, 0
	csw	$2, $zero, 12($c24)     # 4-byte Folded Spill
	move	$2, $1
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 64($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 80($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 96
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
                                        # -- End function
	.type	privateAp,@object       # @privateAp
	.comm	privateAp,16,16
	.type	privateBp,@object       # @privateBp
	.comm	privateBp,16,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"printing in sandbox B\n"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"shared data: %d\n"
	.size	.L.str.1, 17

	.type	sharedp,@object         # @sharedp
	.comm	sharedp,16,16
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"A private data: %d\n"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"B private data: %d\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"begin.\n"
	.size	.L.str.4, 8

	.type	libcheri_sealing_root,@object # @libcheri_sealing_root
	.local	libcheri_sealing_root
	.comm	libcheri_sealing_root,16,16
	.type	.L__func__.cheritest_ccall_setup,@object # @__func__.cheritest_ccall_setup
.L__func__.cheritest_ccall_setup:
	.asciz	"cheritest_ccall_setup"
	.size	.L__func__.cheritest_ccall_setup, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"hello.c"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL ) != 0"
	.size	.L.str.6, 63

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(cheri_getperm(libcheri_sealing_root) & CHERI_PERM_UNSEAL ) != 0"
	.size	.L.str.7, 65

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cheri_getlen(libcheri_sealing_root) != 0"
	.size	.L.str.8, 41

	.type	sandbox_A_sealcap,@object # @sandbox_A_sealcap
	.local	sandbox_A_sealcap
	.comm	sandbox_A_sealcap,16,16
	.type	sandbox_B_sealcap,@object # @sandbox_B_sealcap
	.local	sandbox_B_sealcap
	.comm	sandbox_B_sealcap,16,16
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(cheri_getperm(sandbox_A_sealcap) & CHERI_PERM_UNSEAL ) != 0"
	.size	.L.str.9, 61

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"(cheri_getperm(sandbox_B_sealcap) & CHERI_PERM_UNSEAL ) != 0"
	.size	.L.str.10, 61

	.type	sandbox_A_codecap,@object # @sandbox_A_codecap
	.local	sandbox_A_codecap
	.comm	sandbox_A_codecap,16,16
	.type	privateA,@object        # @privateA
	.local	privateA
	.comm	privateA,64,64
	.type	privateB,@object        # @privateB
	.local	privateB
	.comm	privateB,64,64
	.type	privateDummy,@object    # @privateDummy
	.local	privateDummy
	.comm	privateDummy,4,64
	.type	sandbox_A_datacap,@object # @sandbox_A_datacap
	.local	sandbox_A_datacap
	.comm	sandbox_A_datacap,16,16
	.type	sandbox_B_datacap,@object # @sandbox_B_datacap
	.local	sandbox_B_datacap
	.comm	sandbox_B_datacap,16,16
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"done."
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hello world\n"
	.size	.L.str.12, 13

	.type	shared,@object          # @shared
	.local	shared
	.comm	shared,64,64
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"cheritest setup\n"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"now start testing...\n"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"done test with sandboxA.\n"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\tpure cap...\n"
	.size	.L.str.16, 14


	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git e914474cc8618f40fc08dd4f9a57808efcf965a6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sandboxA_print
	.addrsig_sym printf
	.addrsig_sym cheritest_ccall_setup
	.addrsig_sym sysarch
	.addrsig_sym __assert
	.addrsig_sym libcheri_type_alloc
	.addrsig_sym datacap_create
	.addrsig_sym test_sandboxA
	.addrsig_sym sandbox_invoke
	.addrsig_sym cheritest_success
	.addrsig_sym privateAp
	.addrsig_sym privateBp
	.addrsig_sym sharedp
	.addrsig_sym libcheri_sealing_root
	.addrsig_sym sandbox_A_sealcap
	.addrsig_sym sandbox_B_sealcap
	.addrsig_sym sandbox_A_codecap
	.addrsig_sym privateA
	.addrsig_sym privateB
	.addrsig_sym privateDummy
	.addrsig_sym sandbox_A_datacap
	.addrsig_sym sandbox_B_datacap
	.addrsig_sym shared
	.text
