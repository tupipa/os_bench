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
	.frame	$fp,80,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -80
	sd	$ra, 72($sp)            # 8-byte Folded Spill
	sd	$fp, 64($sp)            # 8-byte Folded Spill
	sd	$gp, 56($sp)            # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(sandboxA_print)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(sandboxA_print)))
	ld	$2, %got_page(.L__const.sandboxA_print.a)($1)
	daddiu	$2, $2, %got_ofst(.L__const.sandboxA_print.a)
	clc	$c1, $2, 0($ddc)
	daddiu	$3, $fp, 16
	csc	$c1, $3, 0($ddc)
	daddiu	$4, $3, 16
	daddiu	$2, $2, 16
	clc	$c1, $2, 0($ddc)
	csc	$c1, $4, 0($ddc)
	ld	$2, %got_page(.L.str)($1)
	daddiu	$4, $2, %got_ofst(.L.str)
	ld	$25, %call16(printf)($1)
	move	$5, $3
	move	$gp, $1
	.reloc .Ltmp0, R_MIPS_JALR, printf
.Ltmp0:
	jalr	$25
	nop
	daddiu	$1, $zero, 0
	sw	$2, 12($fp)             # 4-byte Folded Spill
	move	$2, $1
	move	$3, $1
	cgetnull	$c3
	move	$sp, $fp
	ld	$gp, 56($sp)            # 8-byte Folded Reload
	ld	$fp, 64($sp)            # 8-byte Folded Reload
	ld	$ra, 72($sp)            # 8-byte Folded Reload
	daddiu	$sp, $sp, 80
	jr	$ra
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
	.frame	$fp,48,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -48
	sd	$ra, 40($sp)            # 8-byte Folded Spill
	sd	$fp, 32($sp)            # 8-byte Folded Spill
	sd	$gp, 24($sp)            # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(sandboxB_print)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(sandboxB_print)))
	ld	$2, %got_page(.L.str.1)($1)
	daddiu	$4, $2, %got_ofst(.L.str.1)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 16($fp)             # 8-byte Folded Spill
	.reloc .Ltmp1, R_MIPS_JALR, printf
.Ltmp1:
	jalr	$25
	nop
	ld	$1, 16($fp)             # 8-byte Folded Reload
	ld	$3, %got_disp(sharedp)($1)
	ld	$3, 0($3)
	lw	$5, 0($3)
	ld	$3, %got_page(.L.str.2)($1)
	daddiu	$4, $3, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 12($fp)             # 4-byte Folded Spill
	.reloc .Ltmp2, R_MIPS_JALR, printf
.Ltmp2:
	jalr	$25
	nop
	ld	$1, 16($fp)             # 8-byte Folded Reload
	ld	$3, %got_disp(privateAp)($1)
	ld	$3, 0($3)
	lw	$5, 0($3)
	ld	$3, %got_page(.L.str.3)($1)
	daddiu	$4, $3, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 8($fp)              # 4-byte Folded Spill
	.reloc .Ltmp3, R_MIPS_JALR, printf
.Ltmp3:
	jalr	$25
	nop
	ld	$1, 16($fp)             # 8-byte Folded Reload
	ld	$3, %got_disp(privateBp)($1)
	ld	$3, 0($3)
	lw	$5, 0($3)
	ld	$3, %got_page(.L.str.4)($1)
	daddiu	$4, $3, %got_ofst(.L.str.4)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 4($fp)              # 4-byte Folded Spill
	.reloc .Ltmp4, R_MIPS_JALR, printf
.Ltmp4:
	jalr	$25
	nop
	move	$sp, $fp
	ld	$gp, 24($sp)            # 8-byte Folded Reload
	ld	$fp, 32($sp)            # 8-byte Folded Reload
	ld	$ra, 40($sp)            # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
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
	.frame	$fp,112,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -112
	sd	$ra, 104($sp)           # 8-byte Folded Spill
	sd	$fp, 96($sp)            # 8-byte Folded Spill
	sd	$gp, 88($sp)            # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(cheritest_ccall_setup)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(cheritest_ccall_setup)))
	ld	$2, %got_page(.L.str.5)($1)
	daddiu	$4, $2, %got_ofst(.L.str.5)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 80($fp)             # 8-byte Folded Spill
	.reloc .Ltmp5, R_MIPS_JALR, printf
.Ltmp5:
	jalr	$25
	nop
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(libcheri_sealing_root)($1)
	daddiu	$5, $3, %got_ofst(libcheri_sealing_root)
	ld	$25, %call16(sysarch)($1)
	daddiu	$4, $zero, 6
	move	$gp, $1
	sw	$2, 76($fp)             # 4-byte Folded Spill
	.reloc .Ltmp6, R_MIPS_JALR, sysarch
.Ltmp6:
	jalr	$25
	nop
	bgez	$2, .LBB2_3
	nop
# %bb.1:                                # %entry
	b	.LBB2_2
	nop
.LBB2_2:                                # %if.then
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	csc	$cnull, $2, 0($ddc)
	b	.LBB2_3
	nop
.LBB2_3:                                # %if.end
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	clc	$c1, $2, 0($ddc)
	cgetperm	$2, $c1
	andi	$2, $2, 128
	beqz	$2, .LBB2_6
	nop
# %bb.4:                                # %if.end
	b	.LBB2_5
	nop
.LBB2_5:                                # %cond.true
	b	.LBB2_7
	nop
.LBB2_6:                                # %cond.false
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.6)($1)
	daddiu	$5, $2, %got_ofst(.L.str.6)
	ld	$2, %got_page(.L.str.7)($1)
	daddiu	$7, $2, %got_ofst(.L.str.7)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 76
	move	$gp, $1
	.reloc .Ltmp7, R_MIPS_JALR, __assert
.Ltmp7:
	jalr	$25
	nop
.LBB2_7:                                # %cond.end
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	clc	$c1, $2, 0($ddc)
	cgetlen	$2, $c1
	beqz	$2, .LBB2_10
	nop
# %bb.8:                                # %cond.end
	b	.LBB2_9
	nop
.LBB2_9:                                # %cond.true4
	b	.LBB2_11
	nop
.LBB2_10:                               # %cond.false5
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.6)($1)
	daddiu	$5, $2, %got_ofst(.L.str.6)
	ld	$2, %got_page(.L.str.8)($1)
	daddiu	$7, $2, %got_ofst(.L.str.8)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 77
	move	$gp, $1
	.reloc .Ltmp8, R_MIPS_JALR, __assert
.Ltmp8:
	jalr	$25
	nop
.LBB2_11:                               # %cond.end6
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	.reloc .Ltmp9, R_MIPS_JALR, libcheri_type_alloc
.Ltmp9:
	jalr	$25
	nop
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_sealcap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_sealcap)
	csc	$c3, $2, 0($ddc)
	cgetpcc	$c1
	ld	$2, %got_page(sandbox_A_codecap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_codecap)
	csc	$c1, $2, 0($ddc)
	clc	$c1, $2, 0($ddc)
	ld	$3, %got_disp(sandboxA_print)($1)
	csetaddr	$c1, $c1, $3
	csc	$c1, $2, 0($ddc)
	ld	$2, %got_page(.L.str.9)($1)
	daddiu	$4, $2, %got_ofst(.L.str.9)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp10, R_MIPS_JALR, printf
.Ltmp10:
	jalr	$25
	nop
	b	.LBB2_12
	nop
.LBB2_12:                               # %do.body
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_codecap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_codecap)
	clc	$c1, $2, 0($ddc)
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$3, %got_page(.L.str.10)($1)
	daddiu	$4, $3, %got_ofst(.L.str.10)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$2, 64($fp)             # 8-byte Folded Spill
	.reloc .Ltmp11, R_MIPS_JALR, printf
.Ltmp11:
	jalr	$25
	nop
	ld	$1, 64($fp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 80($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.11)($3)
	daddiu	$4, $4, %got_ofst(.L.str.11)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 60($fp)             # 4-byte Folded Spill
	.reloc .Ltmp12, R_MIPS_JALR, printf
.Ltmp12:
	jalr	$25
	nop
	b	.LBB2_13
	nop
.LBB2_13:                               # %do.end
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_codecap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_codecap)
	clc	$c1, $2, 0($ddc)
	ld	$3, %got_page(sandbox_A_sealcap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_A_sealcap)
	clc	$c2, $3, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $2, 0($ddc)
	ld	$2, %got_page(.L.str.12)($1)
	daddiu	$4, $2, %got_ofst(.L.str.12)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp13, R_MIPS_JALR, printf
.Ltmp13:
	jalr	$25
	nop
	b	.LBB2_14
	nop
.LBB2_14:                               # %do.body13
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_codecap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_codecap)
	clc	$c1, $2, 0($ddc)
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$3, %got_page(.L.str.10)($1)
	daddiu	$4, $3, %got_ofst(.L.str.10)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$2, 48($fp)             # 8-byte Folded Spill
	.reloc .Ltmp14, R_MIPS_JALR, printf
.Ltmp14:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 80($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.11)($3)
	daddiu	$4, $4, %got_ofst(.L.str.11)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 44($fp)             # 4-byte Folded Spill
	.reloc .Ltmp15, R_MIPS_JALR, printf
.Ltmp15:
	jalr	$25
	nop
	b	.LBB2_15
	nop
.LBB2_15:                               # %do.end18
	creadhwr	$c1, $chwr_ddc
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_datacap)
	csc	$c1, $2, 0($ddc)
	clc	$c1, $2, 0($ddc)
	ld	$3, %got_disp(privateA)($1)
	csetaddr	$c1, $c1, $3
	csc	$c1, $2, 0($ddc)
	ld	$2, %got_page(.L.str.13)($1)
	daddiu	$4, $2, %got_ofst(.L.str.13)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp16, R_MIPS_JALR, printf
.Ltmp16:
	jalr	$25
	nop
	b	.LBB2_16
	nop
.LBB2_16:                               # %do.body20
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_datacap)
	clc	$c1, $2, 0($ddc)
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$3, %got_page(.L.str.10)($1)
	daddiu	$4, $3, %got_ofst(.L.str.10)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$2, 32($fp)             # 8-byte Folded Spill
	.reloc .Ltmp17, R_MIPS_JALR, printf
.Ltmp17:
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 80($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.11)($3)
	daddiu	$4, $4, %got_ofst(.L.str.11)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 28($fp)             # 4-byte Folded Spill
	.reloc .Ltmp18, R_MIPS_JALR, printf
.Ltmp18:
	jalr	$25
	nop
	b	.LBB2_17
	nop
.LBB2_17:                               # %do.end25
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_datacap)
	clc	$c1, $2, 0($ddc)
	ld	$3, %got_page(sandbox_A_sealcap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_A_sealcap)
	clc	$c2, $3, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $2, 0($ddc)
	ld	$2, %got_page(.L.str.14)($1)
	daddiu	$4, $2, %got_ofst(.L.str.14)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp19, R_MIPS_JALR, printf
.Ltmp19:
	jalr	$25
	nop
	b	.LBB2_18
	nop
.LBB2_18:                               # %do.body27
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_datacap)
	clc	$c1, $2, 0($ddc)
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$3, %got_page(.L.str.10)($1)
	daddiu	$4, $3, %got_ofst(.L.str.10)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$2, 16($fp)             # 8-byte Folded Spill
	.reloc .Ltmp20, R_MIPS_JALR, printf
.Ltmp20:
	jalr	$25
	nop
	ld	$1, 16($fp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 80($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.11)($3)
	daddiu	$4, $4, %got_ofst(.L.str.11)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 12($fp)             # 4-byte Folded Spill
	.reloc .Ltmp21, R_MIPS_JALR, printf
.Ltmp21:
	jalr	$25
	nop
	b	.LBB2_19
	nop
.LBB2_19:                               # %do.end32
	ld	$1, 80($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.15)($1)
	daddiu	$4, $2, %got_ofst(.L.str.15)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp22, R_MIPS_JALR, printf
.Ltmp22:
	jalr	$25
	nop
	move	$sp, $fp
	ld	$gp, 88($sp)            # 8-byte Folded Reload
	ld	$fp, 96($sp)            # 8-byte Folded Reload
	ld	$ra, 104($sp)           # 8-byte Folded Reload
	daddiu	$sp, $sp, 112
	jr	$ra
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
	.frame	$fp,96,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -96
	sd	$ra, 88($sp)            # 8-byte Folded Spill
	sd	$fp, 80($sp)            # 8-byte Folded Spill
	sd	$gp, 72($sp)            # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(test_sandboxA)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(test_sandboxA)))
	ld	$2, %got_page(sandbox_A_codecap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_codecap)
	clc	$c1, $2, 0($ddc)
	daddiu	$2, $fp, 32
	csc	$c1, $2, 0($ddc)
	ld	$3, %got_page(sandbox_A_datacap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_A_datacap)
	clc	$c1, $3, 0($ddc)
	daddiu	$3, $2, 16
	csc	$c1, $3, 0($ddc)
	clc	$c1, $2, 0($ddc)
	clc	$c2, $3, 0($ddc)
	ld	$25, %call16(libcheri_invoke)($1)
	daddiu	$2, $zero, 0
	sd	$2, 24($fp)             # 8-byte Folded Spill
	ld	$4, 24($fp)             # 8-byte Folded Reload
	ld	$5, 24($fp)             # 8-byte Folded Reload
	ld	$6, 24($fp)             # 8-byte Folded Reload
	ld	$7, 24($fp)             # 8-byte Folded Reload
	ld	$8, 24($fp)             # 8-byte Folded Reload
	ld	$9, 24($fp)             # 8-byte Folded Reload
	ld	$10, 24($fp)            # 8-byte Folded Reload
	ld	$11, 24($fp)            # 8-byte Folded Reload
	cgetnull	$c3
	cgetnull	$c4
	cgetnull	$c5
	cgetnull	$c6
	cgetnull	$c7
	cgetnull	$c8
	cgetnull	$c9
	cgetnull	$c10
	move	$gp, $1
	sd	$1, 16($fp)             # 8-byte Folded Spill
	.reloc .Ltmp23, R_MIPS_JALR, libcheri_invoke
.Ltmp23:
	jalr	$25
	nop
	ld	$1, 16($fp)             # 8-byte Folded Reload
	ld	$25, %call16(cheritest_success)($1)
	move	$gp, $1
	sd	$2, 8($fp)              # 8-byte Folded Spill
	.reloc .Ltmp24, R_MIPS_JALR, cheritest_success
.Ltmp24:
	jalr	$25
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
	.frame	$fp,64,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -64
	sd	$ra, 56($sp)            # 8-byte Folded Spill
	sd	$fp, 48($sp)            # 8-byte Folded Spill
	sd	$gp, 40($sp)            # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(main)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(main)))
	sw	$zero, 36($fp)
	ld	$2, %got_page(.L.str.16)($1)
	daddiu	$4, $2, %got_ofst(.L.str.16)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 24($fp)             # 8-byte Folded Spill
	.reloc .Ltmp25, R_MIPS_JALR, printf
.Ltmp25:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.17)($1)
	daddiu	$4, $3, %got_ofst(.L.str.17)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	.reloc .Ltmp26, R_MIPS_JALR, printf
.Ltmp26:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(cheritest_ccall_setup)($1)
	move	$gp, $1
	sw	$2, 16($fp)             # 4-byte Folded Spill
	.reloc .Ltmp27, R_MIPS_JALR, cheritest_ccall_setup
.Ltmp27:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.18)($1)
	daddiu	$4, $3, %got_ofst(.L.str.18)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp28, R_MIPS_JALR, printf
.Ltmp28:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(test_sandboxA)($1)
	move	$gp, $1
	sw	$2, 12($fp)             # 4-byte Folded Spill
	.reloc .Ltmp29, R_MIPS_JALR, test_sandboxA
.Ltmp29:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.19)($1)
	daddiu	$4, $3, %got_ofst(.L.str.19)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp30, R_MIPS_JALR, printf
.Ltmp30:
	jalr	$25
	nop
	daddiu	$1, $zero, 0
	sw	$2, 8($fp)              # 4-byte Folded Spill
	move	$2, $1
	move	$sp, $fp
	ld	$gp, 40($sp)            # 8-byte Folded Reload
	ld	$fp, 48($sp)            # 8-byte Folded Reload
	ld	$ra, 56($sp)            # 8-byte Folded Reload
	daddiu	$sp, $sp, 64
	jr	$ra
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
	.comm	sharedp,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"A private data: %d\n"
	.size	.L.str.3, 20

	.type	privateAp,@object       # @privateAp
	.comm	privateAp,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"B private data: %d\n"
	.size	.L.str.4, 20

	.type	privateBp,@object       # @privateBp
	.comm	privateBp,8,8
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
	.type	sandbox_A_codecap,@object # @sandbox_A_codecap
	.local	sandbox_A_codecap
	.comm	sandbox_A_codecap,16,16
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\t code cap created as:\n"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tag %ju s %ju perms %08jx type %016jx\n"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\tbase %016jx length %016jx\n"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\t code cap sealed as:\n"
	.size	.L.str.12, 23

	.type	sandbox_A_datacap,@object # @sandbox_A_datacap
	.local	sandbox_A_datacap
	.comm	sandbox_A_datacap,16,16
	.type	privateA,@object        # @privateA
	.comm	privateA,48,16
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\t data cap created as:\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\t data cap sealed as:\n"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"done."
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hello world\n"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cheritest setup\n"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"now start testing...\n"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"done test with sandboxA.\n"
	.size	.L.str.19, 26

	.type	shared,@object          # @shared
	.comm	shared,48,16
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
	.addrsig_sym libcheri_type_alloc
	.addrsig_sym test_sandboxA
	.addrsig_sym libcheri_invoke
	.addrsig_sym cheritest_success
	.addrsig_sym sharedp
	.addrsig_sym privateAp
	.addrsig_sym privateBp
	.addrsig_sym libcheri_sealing_root
	.addrsig_sym sandbox_A_sealcap
	.addrsig_sym sandbox_A_codecap
	.addrsig_sym sandbox_A_datacap
	.addrsig_sym privateA
	.text
