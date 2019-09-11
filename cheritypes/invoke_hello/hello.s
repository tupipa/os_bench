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
	lui	$1, %hi(%neg(%captab_rel(sandboxA_print)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(sandboxA_print)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	clcbi	$c3, %captab20(.L.str)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 48($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 48($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(sharedp)($c1)
	clc	$c2, $zero, 0($c2)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c2, $c2, 8
	ori	$1, $zero, 65495
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.1)($c1)
	csw	$2, $zero, 44($c24)     # 4-byte Folded Spill
	csd	$1, $zero, 32($c24)     # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 48($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateAp)($c1)
	clc	$c2, $zero, 0($c2)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 32($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.2)($c1)
	csw	$2, $zero, 28($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 48($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateBp)($c1)
	clc	$c2, $zero, 0($c2)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 32($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.3)($c1)
	csw	$2, $zero, 24($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 64($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 80($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 96
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sandboxA_print
.Lfunc_end0:
	.size	sandboxA_print, .Lfunc_end0-sandboxA_print
                                        # -- End function
	.globl	sandboxB_print          # -- Begin function sandboxB_print
	.p2align	3
	.type	sandboxB_print,@function
	.set	nomicromips
	.set	nomips16
	.ent	sandboxB_print
sandboxB_print:                         # @sandboxB_print
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
	lui	$1, %hi(%neg(%captab_rel(sandboxB_print)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(sandboxB_print)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	clcbi	$c3, %captab20(.L.str)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 48($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 48($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(sharedp)($c1)
	clc	$c2, $zero, 0($c2)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c2, $c2, 8
	ori	$1, $zero, 65495
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.1)($c1)
	csw	$2, $zero, 44($c24)     # 4-byte Folded Spill
	csd	$1, $zero, 32($c24)     # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 48($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateAp)($c1)
	clc	$c2, $zero, 0($c2)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 32($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.2)($c1)
	csw	$2, $zero, 28($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 48($c24)    # 16-byte Folded Reload
	clcbi	$c2, %captab20(privateBp)($c1)
	clc	$c2, $zero, 0($c2)
	clw	$1, $zero, 0($c2)
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	clcbi	$c12, %capcall20(printf)($c1)
	csetbounds	$c2, $c2, 8
	cld	$1, $zero, 32($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.3)($c1)
	csw	$2, $zero, 24($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 64($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 80($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 96
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	sandboxB_print
.Lfunc_end1:
	.size	sandboxB_print, .Lfunc_end1-sandboxB_print
                                        # -- End function
	.globl	cheritest_ccall_setup   # -- Begin function cheritest_ccall_setup
	.p2align	3
	.type	cheritest_ccall_setup,@function
	.set	nomicromips
	.set	nomips16
	.ent	cheritest_ccall_setup
cheritest_ccall_setup:                  # @cheritest_ccall_setup
	.frame	$c24,384,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -384
	csc	$c24, $zero, 368($c11)  # 16-byte Folded Spill
	csc	$c17, $zero, 352($c11)  # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(cheritest_ccall_setup)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(cheritest_ccall_setup)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	csc	$c1, $zero, 336($c24)   # 16-byte Folded Spill
	b	.LBB2_1
	nop
.LBB2_1:                                # %do.body
	b	.LBB2_2
	nop
.LBB2_2:                                # %do.body1
	b	.LBB2_3
	nop
.LBB2_3:                                # %do.end
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB2_11
	nop
# %bb.4:                                # %do.end
	b	.LBB2_5
	nop
.LBB2_5:                                # %land.lhs.true
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	bnez	$1, .LBB2_11
	nop
# %bb.6:                                # %land.lhs.true
	b	.LBB2_7
	nop
.LBB2_7:                                # %if.then
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(printed_total)($c1)
	cld	$1, $zero, 0($c2)
	clcbi	$c3, %captab20(print_buf)($c1)
	cincoffset	$c3, $c3, $1
	lui	$2, 64
	dsubu	$4, $2, $1
	clcbi	$c4, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c5, $c11
	csc	$c4, $zero, 0($c5)
	daddiu	$1, $zero, 99
	csd	$1, $zero, 32($c5)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	csc	$c4, $zero, 16($c5)
	csetbounds	$c4, $c5, 40
	ori	$1, $zero, 65495
	candperm	$c13, $c4, $1
	clcbi	$c4, %captab20(.L.str.4)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	csc	$c2, $zero, 320($c24)   # 16-byte Folded Spill
	csd	$2, $zero, 312($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	sll	$1, $2, 0
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	csd	$1, $zero, 0($c2)
	cld	$1, $zero, 0($c2)
	clc	$c2, $zero, 320($c24)   # 16-byte Folded Reload
	cld	$3, $zero, 0($c2)
	cld	$4, $zero, 312($c24)    # 8-byte Folded Reload
	dsubu	$3, $4, $3
	slt	$2, $1, $3
	bnez	$2, .LBB2_10
	nop
# %bb.8:                                # %if.then
	b	.LBB2_9
	nop
.LBB2_9:                                # %if.then5
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	addiu	$1, $zero, 1
	csw	$1, $zero, 0($c2)
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	cld	$2, $zero, 0($c2)
	daddiu	$3, $zero, 0
	dnegu	$4, $2
	clcbi	$c2, %captab20(print_buf)($c1)
	lui	$5, 64
	cincoffset	$c2, $c2, $5
	cincoffset	$c2, $c2, $4
	cincoffset	$c3, $c2, -7
	daddiu	$4, $2, 6
	clcbi	$c2, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c4, $c11
	csc	$c2, $zero, 0($c4)
	daddiu	$2, $zero, 99
	csd	$2, $zero, 32($c4)
	clcbi	$c2, %captab20(.L.str.5)($c1)
	csc	$c2, $zero, 16($c4)
	csetbounds	$c2, $c4, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c2, $2
	clcbi	$c4, %captab20(.L.str.6)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	csd	$3, $zero, 304($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB2_10
	nop
.LBB2_10:                               # %if.end
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	cld	$1, $zero, 0($c2)
	clcbi	$c2, %captab20(printed_total)($c1)
	cld	$2, $zero, 0($c2)
	daddu	$1, $2, $1
	csd	$1, $zero, 0($c2)
	b	.LBB2_17
	nop
.LBB2_11:                               # %if.else
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB2_16
	nop
# %bb.12:                               # %if.else
	b	.LBB2_13
	nop
.LBB2_13:                               # %land.lhs.true12
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	beqz	$1, .LBB2_16
	nop
# %bb.14:                               # %land.lhs.true12
	b	.LBB2_15
	nop
.LBB2_15:                               # %if.then14
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c3, $c11
	csc	$c2, $zero, 0($c3)
	daddiu	$1, $zero, 99
	csd	$1, $zero, 32($c3)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	csc	$c4, $zero, 16($c3)
	csetbounds	$c3, $c3, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c3, $2
	clcbi	$c3, %captab20(.L.str.4)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	daddiu	$4, $zero, 0
	csc	$c3, $zero, 288($c24)   # 16-byte Folded Spill
	cgetnull	$c3
	clc	$c5, $zero, 288($c24)   # 16-byte Folded Reload
	csc	$c4, $zero, 272($c24)   # 16-byte Folded Spill
	cmove	$c4, $c5
	csc	$c2, $zero, 256($c24)   # 16-byte Folded Spill
	csd	$1, $zero, 248($c24)    # 8-byte Folded Spill
	csd	$2, $zero, 240($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	sll	$1, $2, 0
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	csd	$1, $zero, 0($c2)
	cld	$1, $zero, 0($c2)
	cmove	$c3, $c11
	clc	$c4, $zero, 256($c24)   # 16-byte Folded Reload
	csc	$c4, $zero, 0($c3)
	cld	$3, $zero, 248($c24)    # 8-byte Folded Reload
	csd	$3, $zero, 32($c3)
	clc	$c5, $zero, 272($c24)   # 16-byte Folded Reload
	csc	$c5, $zero, 16($c3)
	clcbi	$c12, %capcall20(snprintf)($c1)
	dnegu	$4, $1
	clcbi	$c6, %captab20(print_buf)($c1)
	lui	$5, 64
	cincoffset	$c6, $c6, $5
	cincoffset	$c6, $c6, $4
	cincoffset	$c6, $c6, -7
	daddiu	$4, $1, 6
	csetbounds	$c3, $c3, 40
	cld	$1, $zero, 240($c24)    # 8-byte Folded Reload
	candperm	$c13, $c3, $1
	clcbi	$c4, %captab20(.L.str.7)($c1)
	cmove	$c3, $c6
	csc	$c2, $zero, 224($c24)   # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	cld	$1, $zero, 0($c1)
	clc	$c2, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(printed_total)($c2)
	cld	$3, $zero, 0($c3)
	daddu	$1, $3, $1
	csd	$1, $zero, 0($c3)
	b	.LBB2_16
	nop
.LBB2_16:                               # %if.end23
	b	.LBB2_17
	nop
.LBB2_17:                               # %if.end24
	b	.LBB2_18
	nop
.LBB2_18:                               # %do.body25
	b	.LBB2_19
	nop
.LBB2_19:                               # %do.end26
	b	.LBB2_20
	nop
.LBB2_20:                               # %do.end27
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c12, %capcall20(libcheri_type_alloc)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_creturn_sealcap)($c1)
	csc	$c3, $zero, 0($c2)
	clcbi	$c3, %captab20(sandbox_creturn)($c1)
	clcbi	$c4, %captab20(sandbox_creturn_end)($c1)
	clcbi	$c12, %capcall20(codecap_create)($c1)
	csc	$c3, $zero, 208($c24)   # 16-byte Folded Spill
	csc	$c4, $zero, 192($c24)   # 16-byte Folded Spill
	cgetnull	$c13
	csc	$c2, $zero, 176($c24)   # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 176($c24)   # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	cseal	$c2, $c3, $c2
	clc	$c3, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c4, %captab20(sandbox_creturn_codecap)($c3)
	csc	$c2, $zero, 0($c4)
	clcbi	$c12, %capcall20(datacap_create)($c3)
	clc	$c3, $zero, 208($c24)   # 16-byte Folded Reload
	clc	$c4, $zero, 192($c24)   # 16-byte Folded Reload
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 176($c24)   # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	cseal	$c2, $c3, $c2
	clc	$c3, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c4, %captab20(sandbox_creturn_datacap)($c3)
	csc	$c2, $zero, 0($c4)
	b	.LBB2_21
	nop
.LBB2_21:                               # %do.body31
	b	.LBB2_22
	nop
.LBB2_22:                               # %do.body32
	b	.LBB2_23
	nop
.LBB2_23:                               # %do.end33
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB2_31
	nop
# %bb.24:                               # %do.end33
	b	.LBB2_25
	nop
.LBB2_25:                               # %land.lhs.true36
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	bnez	$1, .LBB2_31
	nop
# %bb.26:                               # %land.lhs.true36
	b	.LBB2_27
	nop
.LBB2_27:                               # %if.then38
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(printed_total)($c1)
	cld	$1, $zero, 0($c2)
	clcbi	$c3, %captab20(print_buf)($c1)
	cincoffset	$c3, $c3, $1
	lui	$2, 64
	dsubu	$4, $2, $1
	clcbi	$c4, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c5, $c11
	csc	$c4, $zero, 0($c5)
	daddiu	$1, $zero, 113
	csd	$1, $zero, 32($c5)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	csc	$c4, $zero, 16($c5)
	csetbounds	$c4, $c5, 40
	ori	$1, $zero, 65495
	candperm	$c13, $c4, $1
	clcbi	$c4, %captab20(.L.str.8)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	csc	$c2, $zero, 160($c24)   # 16-byte Folded Spill
	csd	$2, $zero, 152($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	sll	$1, $2, 0
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	csd	$1, $zero, 0($c2)
	cld	$1, $zero, 0($c2)
	clc	$c2, $zero, 160($c24)   # 16-byte Folded Reload
	cld	$3, $zero, 0($c2)
	cld	$4, $zero, 152($c24)    # 8-byte Folded Reload
	dsubu	$3, $4, $3
	slt	$2, $1, $3
	bnez	$2, .LBB2_30
	nop
# %bb.28:                               # %if.then38
	b	.LBB2_29
	nop
.LBB2_29:                               # %if.then46
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	addiu	$1, $zero, 1
	csw	$1, $zero, 0($c2)
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	cld	$2, $zero, 0($c2)
	daddiu	$3, $zero, 0
	dnegu	$4, $2
	clcbi	$c2, %captab20(print_buf)($c1)
	lui	$5, 64
	cincoffset	$c2, $c2, $5
	cincoffset	$c2, $c2, $4
	cincoffset	$c3, $c2, -7
	daddiu	$4, $2, 6
	clcbi	$c2, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c4, $c11
	csc	$c2, $zero, 0($c4)
	daddiu	$2, $zero, 113
	csd	$2, $zero, 32($c4)
	clcbi	$c2, %captab20(.L.str.5)($c1)
	csc	$c2, $zero, 16($c4)
	csetbounds	$c2, $c4, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c2, $2
	clcbi	$c4, %captab20(.L.str.9)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	csd	$3, $zero, 144($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB2_30
	nop
.LBB2_30:                               # %if.end52
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	cld	$1, $zero, 0($c2)
	clcbi	$c2, %captab20(printed_total)($c1)
	cld	$2, $zero, 0($c2)
	daddu	$1, $2, $1
	csd	$1, $zero, 0($c2)
	b	.LBB2_37
	nop
.LBB2_31:                               # %if.else54
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB2_36
	nop
# %bb.32:                               # %if.else54
	b	.LBB2_33
	nop
.LBB2_33:                               # %land.lhs.true57
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	beqz	$1, .LBB2_36
	nop
# %bb.34:                               # %land.lhs.true57
	b	.LBB2_35
	nop
.LBB2_35:                               # %if.then59
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c3, $c11
	csc	$c2, $zero, 0($c3)
	daddiu	$1, $zero, 113
	csd	$1, $zero, 32($c3)
	clcbi	$c4, %captab20(.L.str.5)($c1)
	csc	$c4, $zero, 16($c3)
	csetbounds	$c3, $c3, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c3, $2
	clcbi	$c3, %captab20(.L.str.8)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	daddiu	$4, $zero, 0
	csc	$c3, $zero, 128($c24)   # 16-byte Folded Spill
	cgetnull	$c3
	clc	$c5, $zero, 128($c24)   # 16-byte Folded Reload
	csc	$c4, $zero, 112($c24)   # 16-byte Folded Spill
	cmove	$c4, $c5
	csc	$c2, $zero, 96($c24)    # 16-byte Folded Spill
	csd	$1, $zero, 88($c24)     # 8-byte Folded Spill
	csd	$2, $zero, 80($c24)     # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	sll	$1, $2, 0
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	csd	$1, $zero, 0($c2)
	cld	$1, $zero, 0($c2)
	cmove	$c3, $c11
	clc	$c4, $zero, 96($c24)    # 16-byte Folded Reload
	csc	$c4, $zero, 0($c3)
	cld	$3, $zero, 88($c24)     # 8-byte Folded Reload
	csd	$3, $zero, 32($c3)
	clc	$c5, $zero, 112($c24)   # 16-byte Folded Reload
	csc	$c5, $zero, 16($c3)
	clcbi	$c12, %capcall20(snprintf)($c1)
	dnegu	$4, $1
	clcbi	$c6, %captab20(print_buf)($c1)
	lui	$5, 64
	cincoffset	$c6, $c6, $5
	cincoffset	$c6, $c6, $4
	cincoffset	$c6, $c6, -7
	daddiu	$4, $1, 6
	csetbounds	$c3, $c3, 40
	cld	$1, $zero, 80($c24)     # 8-byte Folded Reload
	candperm	$c13, $c3, $1
	clcbi	$c4, %captab20(.L.str.10)($c1)
	cmove	$c3, $c6
	csc	$c2, $zero, 64($c24)    # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 64($c24)    # 16-byte Folded Reload
	cld	$1, $zero, 0($c1)
	clc	$c2, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(printed_total)($c2)
	cld	$3, $zero, 0($c3)
	daddu	$1, $3, $1
	csd	$1, $zero, 0($c3)
	b	.LBB2_36
	nop
.LBB2_36:                               # %if.end68
	b	.LBB2_37
	nop
.LBB2_37:                               # %if.end69
	b	.LBB2_38
	nop
.LBB2_38:                               # %do.body70
	b	.LBB2_39
	nop
.LBB2_39:                               # %do.end71
	b	.LBB2_40
	nop
.LBB2_40:                               # %do.end72
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 352($c11)  # 16-byte Folded Reload
	clc	$c24, $zero, 368($c11)  # 16-byte Folded Reload
	cincoffset	$c11, $c11, 384
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	cheritest_ccall_setup
.Lfunc_end2:
	.size	cheritest_ccall_setup, .Lfunc_end2-cheritest_ccall_setup
                                        # -- End function
	.p2align	3               # -- Begin function codecap_create
	.type	codecap_create,@function
	.set	nomicromips
	.set	nomips16
	.ent	codecap_create
codecap_create:                         # @codecap_create
	.frame	$c24,64,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -64
	csc	$c24, $zero, 48($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	cincoffset	$c1, $c24, 32
	csetbounds	$c1, $c1, 16
	cincoffset	$c2, $c24, 16
	csetbounds	$c2, $c2, 16
	csetbounds	$c5, $c24, 16
	csc	$c3, $zero, 0($c1)
	csc	$c4, $zero, 0($c2)
	clc	$c1, $zero, 0($c1)
	daddiu	$1, $zero, 7
	candperm	$c1, $c1, $1
	csc	$c1, $zero, 0($c5)
	clc	$c3, $zero, 0($c5)
	cincoffset	$c11, $c24, $zero
	clc	$c24, $zero, 48($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 64
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	codecap_create
.Lfunc_end3:
	.size	codecap_create, .Lfunc_end3-codecap_create
                                        # -- End function
	.p2align	3               # -- Begin function datacap_create
	.type	datacap_create,@function
	.set	nomicromips
	.set	nomips16
	.ent	datacap_create
datacap_create:                         # @datacap_create
	.frame	$c24,64,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -64
	csc	$c24, $zero, 48($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	cincoffset	$c1, $c24, 32
	csetbounds	$c1, $c1, 16
	cincoffset	$c2, $c24, 16
	csetbounds	$c2, $c2, 16
	csetbounds	$c5, $c24, 16
	csc	$c3, $zero, 0($c1)
	csc	$c4, $zero, 0($c2)
	clc	$c1, $zero, 0($c1)
	daddiu	$1, $zero, 125
	candperm	$c1, $c1, $1
	csc	$c1, $zero, 0($c5)
	clc	$c3, $zero, 0($c5)
	cincoffset	$c11, $c24, $zero
	clc	$c24, $zero, 48($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 64
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	datacap_create
.Lfunc_end4:
	.size	datacap_create, .Lfunc_end4-datacap_create
                                        # -- End function
	.globl	test_fault_creturn      # -- Begin function test_fault_creturn
	.p2align	3
	.type	test_fault_creturn,@function
	.set	nomicromips
	.set	nomips16
	.ent	test_fault_creturn
test_fault_creturn:                     # @test_fault_creturn
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
	csetbounds	$c1, $c24, 16
	csc	$c3, $zero, 0($c1)
	#APP
	.set	push
	.set	at
	.set	macro
	.set	reorder

	creturn

	.set	pop
	#NO_APP
	cincoffset	$c11, $c24, $zero
	clc	$c24, $zero, 16($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 32
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	test_fault_creturn
.Lfunc_end5:
	.size	test_fault_creturn, .Lfunc_end5-test_fault_creturn
                                        # -- End function
	.globl	test_nofault_ccall_creturn # -- Begin function test_nofault_ccall_creturn
	.p2align	3
	.type	test_nofault_ccall_creturn,@function
	.set	nomicromips
	.set	nomips16
	.ent	test_nofault_ccall_creturn
test_nofault_ccall_creturn:             # @test_nofault_ccall_creturn
	.frame	$c24,80,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -80
	csc	$c24, $zero, 64($c11)   # 16-byte Folded Spill
	csc	$c17, $zero, 48($c11)   # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(test_nofault_ccall_creturn)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(test_nofault_ccall_creturn)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	cincoffset	$c2, $c24, 32
	csetbounds	$c2, $c2, 16
	csetbounds	$c4, $c24, 32
	csc	$c3, $zero, 0($c2)
	clcbi	$c2, %captab20(sandbox_creturn_codecap)($c1)
	clc	$c2, $zero, 0($c2)
	csc	$c2, $zero, 0($c4)
	clcbi	$c2, %captab20(sandbox_creturn_datacap)($c1)
	clc	$c2, $zero, 0($c2)
	csc	$c2, $zero, 16($c4)
	clcbi	$c12, %capcall20(cheritest_success)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	test_nofault_ccall_creturn
.Lfunc_end6:
	.size	test_nofault_ccall_creturn, .Lfunc_end6-test_nofault_ccall_creturn
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
	clcbi	$c3, %captab20(.L.str.11)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 32($c24)    # 16-byte Folded Spill
	csw	$2, $zero, 28($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.12)($c1)
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
	clcbi	$c3, %captab20(.L.str.13)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(test_nofault_ccall_creturn)($c1)
	cgetnull	$c3
	cgetnull	$c13
	csw	$2, $zero, 16($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(test_fault_creturn)($c1)
	cgetnull	$c3
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.14)($c1)
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
	.type	print_size_tmp,@object  # @print_size_tmp
	.bss
	.globl	print_size_tmp
	.p2align	3
print_size_tmp:
	.8byte	0                       # 0x0
	.size	print_size_tmp, 8

	.type	printed_total,@object   # @printed_total
	.globl	printed_total
	.p2align	3
printed_total:
	.8byte	0                       # 0x0
	.size	printed_total, 8

	.type	print_buf_full,@object  # @print_buf_full
	.globl	print_buf_full
	.p2align	2
print_buf_full:
	.4byte	0                       # 0x0
	.size	print_buf_full, 4

	.type	swap_counted,@object    # @swap_counted
	.globl	swap_counted
	.p2align	2
swap_counted:
	.4byte	0                       # 0x0
	.size	swap_counted, 4

	.type	print_request,@object   # @print_request
	.globl	print_request
	.p2align	2
print_request:
	.4byte	0                       # 0x0
	.size	print_request, 4

	.type	track_detect,@object    # @track_detect
	.data
	.globl	track_detect
	.p2align	2
track_detect:
	.4byte	1                       # 0x1
	.size	track_detect, 4

	.type	track_name,@object      # @track_name
	.globl	track_name
track_name:
	.asciz	"cheriabitest"
	.size	track_name, 13

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"printing in sandbox A\n"
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

	.type	privateAp,@object       # @privateAp
	.comm	privateAp,16,16
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"B private data: %d\n"
	.size	.L.str.3, 20

	.type	privateBp,@object       # @privateBp
	.comm	privateBp,16,16
	.type	print_buf,@object       # @print_buf
	.comm	print_buf,4194304,8192
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"[%s in %s:%d]: begin."
	.size	.L.str.4, 22

	.type	.L__FUNCTION__.cheritest_ccall_setup,@object # @__FUNCTION__.cheritest_ccall_setup
.L__FUNCTION__.cheritest_ccall_setup:
	.asciz	"cheritest_ccall_setup"
	.size	.L__FUNCTION__.cheritest_ccall_setup, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"hello.c"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"[%s in %s:%d]: begin.OOB!!"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"[DBG][%s:%s:%d]: begin.OOB!!"
	.size	.L.str.7, 29

	.type	sandbox_creturn_sealcap,@object # @sandbox_creturn_sealcap
	.local	sandbox_creturn_sealcap
	.comm	sandbox_creturn_sealcap,16,16
	.type	sandbox_creturn_codecap,@object # @sandbox_creturn_codecap
	.local	sandbox_creturn_codecap
	.comm	sandbox_creturn_codecap,16,16
	.type	sandbox_creturn_datacap,@object # @sandbox_creturn_datacap
	.local	sandbox_creturn_datacap
	.comm	sandbox_creturn_datacap,16,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"[%s in %s:%d]: done."
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"[%s in %s:%d]: done.OOB!!"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"[DBG][%s:%s:%d]: done.OOB!!"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"hello world\n"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cheritest setup\n"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"now start testing...\n"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"done test.\n"
	.size	.L.str.14, 12

	.type	shared,@object          # @shared
	.comm	shared,24,4
	.type	privateA,@object        # @privateA
	.comm	privateA,24,4
	.type	privateB,@object        # @privateB
	.comm	privateB,24,4

	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git 917e42554ec984f5dbb5cea50e8b7f3918cc2838)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym cheritest_ccall_setup
	.addrsig_sym snprintf
	.addrsig_sym libcheri_type_alloc
	.addrsig_sym codecap_create
	.addrsig_sym sandbox_creturn
	.addrsig_sym datacap_create
	.addrsig_sym test_fault_creturn
	.addrsig_sym test_nofault_ccall_creturn
	.addrsig_sym cheritest_success
	.addrsig_sym print_size_tmp
	.addrsig_sym printed_total
	.addrsig_sym print_buf_full
	.addrsig_sym track_detect
	.addrsig_sym sharedp
	.addrsig_sym privateAp
	.addrsig_sym privateBp
	.addrsig_sym print_buf
	.addrsig_sym sandbox_creturn_sealcap
	.addrsig_sym sandbox_creturn_end
	.addrsig_sym sandbox_creturn_codecap
	.addrsig_sym sandbox_creturn_datacap
	.text
