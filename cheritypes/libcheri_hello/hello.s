	.text
	.abicalls
	.section	.mdebug.abi64,"",@progbits
	.nan	legacy
	.module	softfloat
	.file	"hello.c"
	.text
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
	b	.LBB0_1
	nop
.LBB0_1:                                # %do.body
	b	.LBB0_2
	nop
.LBB0_2:                                # %do.body1
	b	.LBB0_3
	nop
.LBB0_3:                                # %do.end
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB0_11
	nop
# %bb.4:                                # %do.end
	b	.LBB0_5
	nop
.LBB0_5:                                # %land.lhs.true
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	bnez	$1, .LBB0_11
	nop
# %bb.6:                                # %land.lhs.true
	b	.LBB0_7
	nop
.LBB0_7:                                # %if.then
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
	daddiu	$1, $zero, 73
	csd	$1, $zero, 32($c5)
	clcbi	$c4, %captab20(.L.str.1)($c1)
	csc	$c4, $zero, 16($c5)
	csetbounds	$c4, $c5, 40
	ori	$1, $zero, 65495
	candperm	$c13, $c4, $1
	clcbi	$c4, %captab20(.L.str)($c1)
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
	bnez	$2, .LBB0_10
	nop
# %bb.8:                                # %if.then
	b	.LBB0_9
	nop
.LBB0_9:                                # %if.then5
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
	daddiu	$2, $zero, 73
	csd	$2, $zero, 32($c4)
	clcbi	$c2, %captab20(.L.str.1)($c1)
	csc	$c2, $zero, 16($c4)
	csetbounds	$c2, $c4, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c2, $2
	clcbi	$c4, %captab20(.L.str.2)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	csd	$3, $zero, 304($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB0_10
	nop
.LBB0_10:                               # %if.end
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	cld	$1, $zero, 0($c2)
	clcbi	$c2, %captab20(printed_total)($c1)
	cld	$2, $zero, 0($c2)
	daddu	$1, $2, $1
	csd	$1, $zero, 0($c2)
	b	.LBB0_17
	nop
.LBB0_11:                               # %if.else
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB0_16
	nop
# %bb.12:                               # %if.else
	b	.LBB0_13
	nop
.LBB0_13:                               # %land.lhs.true12
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	beqz	$1, .LBB0_16
	nop
# %bb.14:                               # %land.lhs.true12
	b	.LBB0_15
	nop
.LBB0_15:                               # %if.then14
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c3, $c11
	csc	$c2, $zero, 0($c3)
	daddiu	$1, $zero, 73
	csd	$1, $zero, 32($c3)
	clcbi	$c4, %captab20(.L.str.1)($c1)
	csc	$c4, $zero, 16($c3)
	csetbounds	$c3, $c3, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c3, $2
	clcbi	$c3, %captab20(.L.str)($c1)
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
	clcbi	$c4, %captab20(.L.str.3)($c1)
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
	b	.LBB0_16
	nop
.LBB0_16:                               # %if.end23
	b	.LBB0_17
	nop
.LBB0_17:                               # %if.end24
	b	.LBB0_18
	nop
.LBB0_18:                               # %do.body25
	b	.LBB0_19
	nop
.LBB0_19:                               # %do.end26
	b	.LBB0_20
	nop
.LBB0_20:                               # %do.end27
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
	b	.LBB0_21
	nop
.LBB0_21:                               # %do.body31
	b	.LBB0_22
	nop
.LBB0_22:                               # %do.body32
	b	.LBB0_23
	nop
.LBB0_23:                               # %do.end33
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB0_31
	nop
# %bb.24:                               # %do.end33
	b	.LBB0_25
	nop
.LBB0_25:                               # %land.lhs.true36
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	bnez	$1, .LBB0_31
	nop
# %bb.26:                               # %land.lhs.true36
	b	.LBB0_27
	nop
.LBB0_27:                               # %if.then38
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
	daddiu	$1, $zero, 87
	csd	$1, $zero, 32($c5)
	clcbi	$c4, %captab20(.L.str.1)($c1)
	csc	$c4, $zero, 16($c5)
	csetbounds	$c4, $c5, 40
	ori	$1, $zero, 65495
	candperm	$c13, $c4, $1
	clcbi	$c4, %captab20(.L.str.4)($c1)
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
	bnez	$2, .LBB0_30
	nop
# %bb.28:                               # %if.then38
	b	.LBB0_29
	nop
.LBB0_29:                               # %if.then46
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
	daddiu	$2, $zero, 87
	csd	$2, $zero, 32($c4)
	clcbi	$c2, %captab20(.L.str.1)($c1)
	csc	$c2, $zero, 16($c4)
	csetbounds	$c2, $c4, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c2, $2
	clcbi	$c4, %captab20(.L.str.5)($c1)
	clcbi	$c12, %capcall20(snprintf)($c1)
	csd	$3, $zero, 144($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB0_30
	nop
.LBB0_30:                               # %if.end52
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_size_tmp)($c1)
	cld	$1, $zero, 0($c2)
	clcbi	$c2, %captab20(printed_total)($c1)
	cld	$2, $zero, 0($c2)
	daddu	$1, $2, $1
	csd	$1, $zero, 0($c2)
	b	.LBB0_37
	nop
.LBB0_31:                               # %if.else54
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(track_detect)($c1)
	clw	$1, $zero, 0($c2)
	blez	$1, .LBB0_36
	nop
# %bb.32:                               # %if.else54
	b	.LBB0_33
	nop
.LBB0_33:                               # %land.lhs.true57
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(print_buf_full)($c1)
	clw	$1, $zero, 0($c2)
	beqz	$1, .LBB0_36
	nop
# %bb.34:                               # %land.lhs.true57
	b	.LBB0_35
	nop
.LBB0_35:                               # %if.then59
	clc	$c1, $zero, 336($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(.L__FUNCTION__.cheritest_ccall_setup)($c1)
	cmove	$c3, $c11
	csc	$c2, $zero, 0($c3)
	daddiu	$1, $zero, 87
	csd	$1, $zero, 32($c3)
	clcbi	$c4, %captab20(.L.str.1)($c1)
	csc	$c4, $zero, 16($c3)
	csetbounds	$c3, $c3, 40
	ori	$2, $zero, 65495
	candperm	$c13, $c3, $2
	clcbi	$c3, %captab20(.L.str.4)($c1)
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
	clcbi	$c4, %captab20(.L.str.6)($c1)
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
	b	.LBB0_36
	nop
.LBB0_36:                               # %if.end68
	b	.LBB0_37
	nop
.LBB0_37:                               # %if.end69
	b	.LBB0_38
	nop
.LBB0_38:                               # %do.body70
	b	.LBB0_39
	nop
.LBB0_39:                               # %do.end71
	b	.LBB0_40
	nop
.LBB0_40:                               # %do.end72
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
.Lfunc_end0:
	.size	cheritest_ccall_setup, .Lfunc_end0-cheritest_ccall_setup
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
.Lfunc_end1:
	.size	codecap_create, .Lfunc_end1-codecap_create
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
.Lfunc_end2:
	.size	datacap_create, .Lfunc_end2-datacap_create
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
.Lfunc_end3:
	.size	test_fault_creturn, .Lfunc_end3-test_fault_creturn
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
.Lfunc_end4:
	.size	test_nofault_ccall_creturn, .Lfunc_end4-test_nofault_ccall_creturn
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	3
	.type	main,@function
	.set	nomicromips
	.set	nomips16
	.ent	main
main:                                   # @main
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
	lui	$1, %hi(%neg(%captab_rel(main)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(main)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	cincoffset	$c2, $c24, 44
	csetbounds	$c2, $c2, 4
	addiu	$2, $zero, 0
	csw	$zero, $zero, 0($c2)
	clcbi	$c3, %captab20(.L.str.7)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 16($c24)    # 16-byte Folded Spill
	csw	$2, $zero, 12($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 16($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.8)($c1)
	cgetnull	$c13
	csw	$2, $zero, 8($c24)      # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 16($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(test_nofault_ccall_creturn)($c1)
	cgetnull	$c3
	cgetnull	$c13
	csw	$2, $zero, 4($c24)      # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 16($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(test_fault_creturn)($c1)
	cgetnull	$c3
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 16($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.9)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	daddiu	$1, $zero, 0
	csw	$2, $zero, 0($c24)      # 4-byte Folded Spill
	move	$2, $1
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 48($c11)   # 16-byte Folded Reload
	clc	$c24, $zero, 64($c11)   # 16-byte Folded Reload
	cincoffset	$c11, $c11, 80
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	main
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
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

	.type	print_buf,@object       # @print_buf
	.comm	print_buf,4194304,8192
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[%s in %s:%d]: begin."
	.size	.L.str, 22

	.type	.L__FUNCTION__.cheritest_ccall_setup,@object # @__FUNCTION__.cheritest_ccall_setup
.L__FUNCTION__.cheritest_ccall_setup:
	.asciz	"cheritest_ccall_setup"
	.size	.L__FUNCTION__.cheritest_ccall_setup, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"hello.c"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"[%s in %s:%d]: begin.OOB!!"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"[DBG][%s:%s:%d]: begin.OOB!!"
	.size	.L.str.3, 29

	.type	sandbox_creturn_sealcap,@object # @sandbox_creturn_sealcap
	.local	sandbox_creturn_sealcap
	.comm	sandbox_creturn_sealcap,16,16
	.type	sandbox_creturn_codecap,@object # @sandbox_creturn_codecap
	.local	sandbox_creturn_codecap
	.comm	sandbox_creturn_codecap,16,16
	.type	sandbox_creturn_datacap,@object # @sandbox_creturn_datacap
	.local	sandbox_creturn_datacap
	.comm	sandbox_creturn_datacap,16,16
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"[%s in %s:%d]: done."
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"[%s in %s:%d]: done.OOB!!"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"[DBG][%s:%s:%d]: done.OOB!!"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"hello world\n"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"now start testing...\n"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"done test.\n"
	.size	.L.str.9, 12


	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git 917e42554ec984f5dbb5cea50e8b7f3918cc2838)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym snprintf
	.addrsig_sym libcheri_type_alloc
	.addrsig_sym codecap_create
	.addrsig_sym sandbox_creturn
	.addrsig_sym datacap_create
	.addrsig_sym test_fault_creturn
	.addrsig_sym test_nofault_ccall_creturn
	.addrsig_sym cheritest_success
	.addrsig_sym printf
	.addrsig_sym print_size_tmp
	.addrsig_sym printed_total
	.addrsig_sym print_buf_full
	.addrsig_sym track_detect
	.addrsig_sym print_buf
	.addrsig_sym sandbox_creturn_sealcap
	.addrsig_sym sandbox_creturn_end
	.addrsig_sym sandbox_creturn_codecap
	.addrsig_sym sandbox_creturn_datacap
	.text
