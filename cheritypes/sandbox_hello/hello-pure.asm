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
	cincoffset	$c2, $c24, 32
	csetbounds	$c2, $c2, 32
	clcbi	$c3, %captab20(.L__const.sandboxA_print.a)($c1)
	clc	$c4, $zero, 0($c3)
	csc	$c4, $zero, 0($c2)
	clc	$c3, $zero, 16($c3)
	csc	$c3, $zero, 16($c2)
	cmove	$c3, $c11
	csc	$c2, $zero, 0($c3)
	csetbounds	$c2, $c3, 16
	ori	$1, $zero, 65495
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cjalr	$c12, $c17
	nop
	daddiu	$1, $zero, 0
	csw	$2, $zero, 28($c24)     # 4-byte Folded Spill
	move	$2, $1
	move	$3, $1
	cgetnull	$c3
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
	clcbi	$c3, %captab20(.L.str.1)($c1)
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
	clcbi	$c3, %captab20(.L.str.2)($c1)
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
	clcbi	$c3, %captab20(.L.str.3)($c1)
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
	clcbi	$c3, %captab20(.L.str.4)($c1)
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
	.frame	$c24,272,$c17
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	cincoffset	$c11, $c11, -272
	csc	$c24, $zero, 256($c11)  # 16-byte Folded Spill
	csc	$c17, $zero, 240($c11)  # 16-byte Folded Spill
	cincoffset	$c24, $c11, $zero
	lui	$1, %hi(%neg(%captab_rel(cheritest_ccall_setup)))
	daddiu	$1, $1, %lo(%neg(%captab_rel(cheritest_ccall_setup)))
	cincoffset	$c26, $c12, $1
	cmove	$c1, $c26
	clcbi	$c3, %captab20(.L.str.5)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 224($c24)   # 16-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(libcheri_sealing_root)($c1)
	clcbi	$c12, %capcall20(sysarch)($c1)
	daddiu	$4, $zero, 6
	cgetnull	$c13
	csw	$2, $zero, 220($c24)    # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	bgez	$2, .LBB2_3
	nop
# %bb.1:                                # %entry
	b	.LBB2_2
	nop
.LBB2_2:                                # %if.then
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	csc	$cnull, $zero, 0($c2)
	b	.LBB2_3
	nop
.LBB2_3:                                # %if.end
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	clc	$c2, $zero, 0($c2)
	cgetperm	$1, $c2
	andi	$1, $1, 128
	beqz	$1, .LBB2_6
	nop
# %bb.4:                                # %if.end
	b	.LBB2_5
	nop
.LBB2_5:                                # %cond.true
	b	.LBB2_7
	nop
.LBB2_6:                                # %cond.false
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L__func__.cheritest_ccall_setup)($c1)
	clcbi	$c4, %captab20(.L.str.6)($c1)
	clcbi	$c5, %captab20(.L.str.7)($c1)
	clcbi	$c12, %capcall20(__assert)($c1)
	daddiu	$4, $zero, 77
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
.LBB2_7:                                # %cond.end
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	clc	$c2, $zero, 0($c2)
	cgetlen	$1, $c2
	beqz	$1, .LBB2_10
	nop
# %bb.8:                                # %cond.end
	b	.LBB2_9
	nop
.LBB2_9:                                # %cond.true4
	b	.LBB2_11
	nop
.LBB2_10:                               # %cond.false5
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L__func__.cheritest_ccall_setup)($c1)
	clcbi	$c4, %captab20(.L.str.6)($c1)
	clcbi	$c5, %captab20(.L.str.8)($c1)
	clcbi	$c12, %capcall20(__assert)($c1)
	daddiu	$4, $zero, 78
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
.LBB2_11:                               # %cond.end6
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(libcheri_sealing_root)($c1)
	clc	$c2, $zero, 0($c2)
	clcbi	$c3, %captab20(sandbox_A_sealcap)($c1)
	csc	$c2, $zero, 0($c3)
	clcbi	$c3, %captab20(.L.str.9)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	b	.LBB2_12
	nop
.LBB2_12:                               # %do.body
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_A_sealcap)($c1)
	clc	$c3, $zero, 0($c2)
	cgettag	$1, $c3
	cgetsealed	$2, $c3
	cgetperm	$3, $c3
	cgettype	$4, $c3
	cmove	$c3, $c11
	csd	$1, $zero, 0($c3)
	csd	$4, $zero, 24($c3)
	csd	$3, $zero, 16($c3)
	csd	$2, $zero, 8($c3)
	csetbounds	$c3, $c3, 32
	ori	$1, $zero, 65495
	candperm	$c13, $c3, $1
	clcbi	$c3, %captab20(.L.str.10)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	csc	$c2, $zero, 192($c24)   # 16-byte Folded Spill
	csd	$1, $zero, 184($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 192($c24)   # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	cgetbase	$1, $c2
	cgetlen	$3, $c2
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	csd	$3, $zero, 8($c2)
	clc	$c3, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 16
	cld	$1, $zero, 184($c24)    # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.11)($c3)
	csw	$2, $zero, 180($c24)    # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB2_13
	nop
.LBB2_13:                               # %do.end
	cgetpcc	$c1
	clc	$c2, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(sandbox_A_codecap)($c2)
	csc	$c1, $zero, 0($c3)
	clc	$c1, $zero, 0($c3)
	clcbi	$c4, %captab20(sandboxA_print)($c2)
	cgetaddr	$1, $c4
	csetaddr	$c1, $c1, $1
	csc	$c1, $zero, 0($c3)
	clcbi	$c3, %captab20(.L.str.12)($c2)
	clcbi	$c12, %capcall20(printf)($c2)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	b	.LBB2_14
	nop
.LBB2_14:                               # %do.body12
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_A_codecap)($c1)
	clc	$c3, $zero, 0($c2)
	cgettag	$1, $c3
	cgetsealed	$2, $c3
	cgetperm	$3, $c3
	cgettype	$4, $c3
	cmove	$c3, $c11
	csd	$1, $zero, 0($c3)
	csd	$4, $zero, 24($c3)
	csd	$3, $zero, 16($c3)
	csd	$2, $zero, 8($c3)
	csetbounds	$c3, $c3, 32
	ori	$1, $zero, 65495
	candperm	$c13, $c3, $1
	clcbi	$c3, %captab20(.L.str.10)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	csc	$c2, $zero, 160($c24)   # 16-byte Folded Spill
	csd	$1, $zero, 152($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 160($c24)   # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	cgetbase	$1, $c2
	cgetlen	$3, $c2
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	csd	$3, $zero, 8($c2)
	clc	$c3, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 16
	cld	$1, $zero, 152($c24)    # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.11)($c3)
	csw	$2, $zero, 148($c24)    # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB2_15
	nop
.LBB2_15:                               # %do.end17
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_A_codecap)($c1)
	clc	$c3, $zero, 0($c2)
	clcbi	$c4, %captab20(sandbox_A_sealcap)($c1)
	clc	$c4, $zero, 0($c4)
	cseal	$c3, $c3, $c4
	csc	$c3, $zero, 0($c2)
	clcbi	$c3, %captab20(.L.str.13)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	b	.LBB2_16
	nop
.LBB2_16:                               # %do.body19
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_A_codecap)($c1)
	clc	$c3, $zero, 0($c2)
	cgettag	$1, $c3
	cgetsealed	$2, $c3
	cgetperm	$3, $c3
	cgettype	$4, $c3
	cmove	$c3, $c11
	csd	$1, $zero, 0($c3)
	csd	$4, $zero, 24($c3)
	csd	$3, $zero, 16($c3)
	csd	$2, $zero, 8($c3)
	csetbounds	$c3, $c3, 32
	ori	$1, $zero, 65495
	candperm	$c13, $c3, $1
	clcbi	$c3, %captab20(.L.str.10)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	csc	$c2, $zero, 128($c24)   # 16-byte Folded Spill
	csd	$1, $zero, 120($c24)    # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 128($c24)   # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	cgetbase	$1, $c2
	cgetlen	$3, $c2
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	csd	$3, $zero, 8($c2)
	clc	$c3, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 16
	cld	$1, $zero, 120($c24)    # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.11)($c3)
	csw	$2, $zero, 116($c24)    # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB2_17
	nop
.LBB2_17:                               # %do.end24
	creadhwr	$c1, $chwr_ddc
	clc	$c2, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(sandbox_A_datacap)($c2)
	csc	$c1, $zero, 0($c3)
	clcbi	$c3, %captab20(.L.str.14)($c2)
	clcbi	$c12, %capcall20(printf)($c2)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	b	.LBB2_18
	nop
.LBB2_18:                               # %do.body26
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_A_datacap)($c1)
	clc	$c3, $zero, 0($c2)
	cgettag	$1, $c3
	cgetsealed	$2, $c3
	cgetperm	$3, $c3
	cgettype	$4, $c3
	cmove	$c3, $c11
	csd	$1, $zero, 0($c3)
	csd	$4, $zero, 24($c3)
	csd	$3, $zero, 16($c3)
	csd	$2, $zero, 8($c3)
	csetbounds	$c3, $c3, 32
	ori	$1, $zero, 65495
	candperm	$c13, $c3, $1
	clcbi	$c3, %captab20(.L.str.10)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	csc	$c2, $zero, 96($c24)    # 16-byte Folded Spill
	csd	$1, $zero, 88($c24)     # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 96($c24)    # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	cgetbase	$1, $c2
	cgetlen	$3, $c2
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	csd	$3, $zero, 8($c2)
	clc	$c3, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 16
	cld	$1, $zero, 88($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.11)($c3)
	csw	$2, $zero, 84($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB2_19
	nop
.LBB2_19:                               # %do.end31
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_A_datacap)($c1)
	clc	$c3, $zero, 0($c2)
	clcbi	$c4, %captab20(sandbox_A_sealcap)($c1)
	clc	$c4, $zero, 0($c4)
	cseal	$c3, $c3, $c4
	csc	$c3, $zero, 0($c2)
	clcbi	$c3, %captab20(.L.str.15)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	b	.LBB2_20
	nop
.LBB2_20:                               # %do.body33
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c2, %captab20(sandbox_A_datacap)($c1)
	clc	$c3, $zero, 0($c2)
	cgettag	$1, $c3
	cgetsealed	$2, $c3
	cgetperm	$3, $c3
	cgettype	$4, $c3
	cmove	$c3, $c11
	csd	$1, $zero, 0($c3)
	csd	$4, $zero, 24($c3)
	csd	$3, $zero, 16($c3)
	csd	$2, $zero, 8($c3)
	csetbounds	$c3, $c3, 32
	ori	$1, $zero, 65495
	candperm	$c13, $c3, $1
	clcbi	$c3, %captab20(.L.str.10)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	csc	$c2, $zero, 64($c24)    # 16-byte Folded Spill
	csd	$1, $zero, 56($c24)     # 8-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 64($c24)    # 16-byte Folded Reload
	clc	$c2, $zero, 0($c1)
	cgetbase	$1, $c2
	cgetlen	$3, $c2
	cmove	$c2, $c11
	csd	$1, $zero, 0($c2)
	csd	$3, $zero, 8($c2)
	clc	$c3, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c3)
	csetbounds	$c2, $c2, 16
	cld	$1, $zero, 56($c24)     # 8-byte Folded Reload
	candperm	$c13, $c2, $1
	clcbi	$c3, %captab20(.L.str.11)($c3)
	csw	$2, $zero, 52($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	b	.LBB2_21
	nop
.LBB2_21:                               # %do.end38
	clc	$c1, $zero, 224($c24)   # 16-byte Folded Reload
	clcbi	$c3, %captab20(.L.str.16)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	cjalr	$c12, $c17
	nop
	cincoffset	$c11, $c24, $zero
	clc	$c17, $zero, 240($c11)  # 16-byte Folded Reload
	clc	$c24, $zero, 256($c11)  # 16-byte Folded Reload
	cincoffset	$c11, $c11, 272
	cjr	$c17
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	cheritest_ccall_setup
.Lfunc_end2:
	.size	cheritest_ccall_setup, .Lfunc_end2-cheritest_ccall_setup
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
.Lfunc_end3:
	.size	test_sandboxA, .Lfunc_end3-test_sandboxA
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
	clcbi	$c3, %captab20(.L.str.17)($c1)
	clcbi	$c12, %capcall20(printf)($c1)
	cgetnull	$c13
	csc	$c1, $zero, 32($c24)    # 16-byte Folded Spill
	csw	$2, $zero, 28($c24)     # 4-byte Folded Spill
	cjalr	$c12, $c17
	nop
	clc	$c1, $zero, 32($c24)    # 16-byte Folded Reload
	clcbi	$c12, %capcall20(printf)($c1)
	clcbi	$c3, %captab20(.L.str.18)($c1)
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
	clcbi	$c3, %captab20(.L.str.19)($c1)
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
	clcbi	$c3, %captab20(.L.str.20)($c1)
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
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L__const.sandboxA_print.a,@object # @__const.sandboxA_print.a
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L__const.sandboxA_print.a:
	.asciz	"hello from sandbox A\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__const.sandboxA_print.a, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"printing in sandbox B\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"shared data: %d\n"
	.size	.L.str.2, 17

	.type	sharedp,@object         # @sharedp
	.comm	sharedp,16,16
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"A private data: %d\n"
	.size	.L.str.3, 20

	.type	privateAp,@object       # @privateAp
	.comm	privateAp,16,16
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"B private data: %d\n"
	.size	.L.str.4, 20

	.type	privateBp,@object       # @privateBp
	.comm	privateBp,16,16
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"begin.\n"
	.size	.L.str.5, 8

	.type	libcheri_sealing_root,@object # @libcheri_sealing_root
	.local	libcheri_sealing_root
	.comm	libcheri_sealing_root,16,16
	.type	.L__func__.cheritest_ccall_setup,@object # @__func__.cheritest_ccall_setup
.L__func__.cheritest_ccall_setup:
	.asciz	"cheritest_ccall_setup"
	.size	.L__func__.cheritest_ccall_setup, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"hello.c"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL) != 0"
	.size	.L.str.7, 62

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cheri_getlen(libcheri_sealing_root) != 0"
	.size	.L.str.8, 41

	.type	sandbox_A_sealcap,@object # @sandbox_A_sealcap
	.local	sandbox_A_sealcap
	.comm	sandbox_A_sealcap,16,16
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\t seal cap created as:\n"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tag %ju s %ju perms %08jx type %016jx\n"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\tbase %016jx length %016jx\n"
	.size	.L.str.11, 28

	.type	sandbox_A_codecap,@object # @sandbox_A_codecap
	.local	sandbox_A_codecap
	.comm	sandbox_A_codecap,16,16
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\t code cap created as:\n"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\t code cap sealed as:\n"
	.size	.L.str.13, 23

	.type	sandbox_A_datacap,@object # @sandbox_A_datacap
	.local	sandbox_A_datacap
	.comm	sandbox_A_datacap,16,16
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\t data cap created as:\n"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\t data cap sealed as:\n"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"done."
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"hello world\n"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"cheritest setup\n"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"now start testing...\n"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"done test with sandboxA.\n"
	.size	.L.str.20, 26

	.type	shared,@object          # @shared
	.comm	shared,48,16
	.type	privateA,@object        # @privateA
	.comm	privateA,48,16
	.type	privateB,@object        # @privateB
	.comm	privateB,48,16

	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git 917e42554ec984f5dbb5cea50e8b7f3918cc2838)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sandboxA_print
	.addrsig_sym printf
	.addrsig_sym cheritest_ccall_setup
	.addrsig_sym sysarch
	.addrsig_sym __assert
	.addrsig_sym test_sandboxA
	.addrsig_sym sandbox_invoke
	.addrsig_sym cheritest_success
	.addrsig_sym sharedp
	.addrsig_sym privateAp
	.addrsig_sym privateBp
	.addrsig_sym libcheri_sealing_root
	.addrsig_sym sandbox_A_sealcap
	.addrsig_sym sandbox_A_codecap
	.addrsig_sym sandbox_A_datacap
	.text
