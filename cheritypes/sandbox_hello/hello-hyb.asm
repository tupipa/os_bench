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
	.frame	$fp,192,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -192
	sd	$ra, 184($sp)           # 8-byte Folded Spill
	sd	$fp, 176($sp)           # 8-byte Folded Spill
	sd	$gp, 168($sp)           # 8-byte Folded Spill
	move	$fp, $sp
	daddiu	$1, $zero, -32
	and	$sp, $sp, $1
	lui	$1, %hi(%neg(%gp_rel(sandboxA_print)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(sandboxA_print)))
	ld	$2, %got_page(.L__const.sandboxA_print.a)($1)
	daddiu	$2, $2, %got_ofst(.L__const.sandboxA_print.a)
	clc	$c1, $2, 0($ddc)
	daddiu	$3, $sp, 128
	csc	$c1, $3, 0($ddc)
	ori	$4, $3, 16
	daddiu	$2, $2, 16
	clc	$c1, $2, 0($ddc)
	csc	$c1, $4, 0($ddc)
	ld	$2, %got_page(.L.str)($1)
	daddiu	$4, $2, %got_ofst(.L.str)
	ld	$25, %call16(printf)($1)
	move	$5, $3
	move	$gp, $1
	sd	$1, 120($sp)            # 8-byte Folded Spill
	.reloc .Ltmp0, R_MIPS_JALR, printf
.Ltmp0:
	jalr	$25
	nop
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.1)($1)
	daddiu	$4, $3, %got_ofst(.L.str.1)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 116($sp)            # 4-byte Folded Spill
	.reloc .Ltmp1, R_MIPS_JALR, printf
.Ltmp1:
	jalr	$25
	nop
	b	.LBB0_1
	nop
.LBB0_1:                                # %do.body
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_datacap)
	clc	$c1, $2, 0($ddc)
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$3, %got_page(.L.str.2)($1)
	daddiu	$4, $3, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$2, 104($sp)            # 8-byte Folded Spill
	.reloc .Ltmp2, R_MIPS_JALR, printf
.Ltmp2:
	jalr	$25
	nop
	ld	$1, 104($sp)            # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 120($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.3)($3)
	daddiu	$4, $4, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 100($sp)            # 4-byte Folded Spill
	.reloc .Ltmp3, R_MIPS_JALR, printf
.Ltmp3:
	jalr	$25
	nop
	b	.LBB0_2
	nop
.LBB0_2:                                # %do.end
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$25, %call16(sleep)($1)
	daddiu	$2, $zero, 1
	move	$4, $2
	move	$gp, $1
	sd	$2, 88($sp)             # 8-byte Folded Spill
	.reloc .Ltmp4, R_MIPS_JALR, sleep
.Ltmp4:
	jalr	$25
	nop
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$3, %got_disp(privateAp)($1)
	clc	$c1, $3, 0($ddc)
	cincoffset	$c1, $c1, 32
	ctoptr	$4, $c1, $ddc
	ld	$5, %got_page(.L.str.4)($1)
	daddiu	$5, $5, %got_ofst(.L.str.4)
	ld	$25, %call16(strcpy)($1)
	move	$gp, $1
	sw	$2, 84($sp)             # 4-byte Folded Spill
	sd	$3, 72($sp)             # 8-byte Folded Spill
	.reloc .Ltmp5, R_MIPS_JALR, strcpy
.Ltmp5:
	jalr	$25
	nop
	ld	$1, 72($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cincoffset	$c1, $c1, 32
	ctoptr	$5, $c1, $ddc
	ld	$3, 120($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.5)($3)
	daddiu	$4, $4, %got_ofst(.L.str.5)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sd	$2, 64($sp)             # 8-byte Folded Spill
	.reloc .Ltmp6, R_MIPS_JALR, printf
.Ltmp6:
	jalr	$25
	nop
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$25, %call16(sleep)($1)
	ld	$4, 88($sp)             # 8-byte Folded Reload
	move	$gp, $1
	sw	$2, 60($sp)             # 4-byte Folded Spill
	.reloc .Ltmp7, R_MIPS_JALR, sleep
.Ltmp7:
	jalr	$25
	nop
	ld	$1, 72($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	addiu	$6, $zero, 1000
	csw	$6, $zero, 0($c1)
	ld	$3, 120($sp)            # 8-byte Folded Reload
	ld	$25, %call16(sleep)($3)
	ld	$4, 88($sp)             # 8-byte Folded Reload
	move	$gp, $3
	sw	$2, 56($sp)             # 4-byte Folded Spill
	.reloc .Ltmp8, R_MIPS_JALR, sleep
.Ltmp8:
	jalr	$25
	nop
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.6)($1)
	daddiu	$4, $3, %got_ofst(.L.str.6)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 52($sp)             # 4-byte Folded Spill
	.reloc .Ltmp9, R_MIPS_JALR, printf
.Ltmp9:
	jalr	$25
	nop
	b	.LBB0_3
	nop
.LBB0_3:                                # %do.body14
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$2, %got_disp(privateBp)($1)
	clc	$c1, $2, 0($ddc)
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$3, %got_page(.L.str.2)($1)
	daddiu	$4, $3, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$2, 40($sp)             # 8-byte Folded Spill
	.reloc .Ltmp10, R_MIPS_JALR, printf
.Ltmp10:
	jalr	$25
	nop
	ld	$1, 40($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 120($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.3)($3)
	daddiu	$4, $4, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 36($sp)             # 4-byte Folded Spill
	.reloc .Ltmp11, R_MIPS_JALR, printf
.Ltmp11:
	jalr	$25
	nop
	b	.LBB0_4
	nop
.LBB0_4:                                # %do.end19
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.7)($1)
	daddiu	$4, $2, %got_ofst(.L.str.7)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp12, R_MIPS_JALR, printf
.Ltmp12:
	jalr	$25
	nop
	b	.LBB0_5
	nop
.LBB0_5:                                # %do.body21
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_B_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_B_datacap)
	clc	$c1, $2, 0($ddc)
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$3, %got_page(.L.str.2)($1)
	daddiu	$4, $3, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$2, 24($sp)             # 8-byte Folded Spill
	.reloc .Ltmp13, R_MIPS_JALR, printf
.Ltmp13:
	jalr	$25
	nop
	ld	$1, 24($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 120($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.3)($3)
	daddiu	$4, $4, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 20($sp)             # 4-byte Folded Spill
	.reloc .Ltmp14, R_MIPS_JALR, printf
.Ltmp14:
	jalr	$25
	nop
	b	.LBB0_6
	nop
.LBB0_6:                                # %do.end26
	ld	$1, 120($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_B_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_B_datacap)
	clc	$c1, $2, 0($ddc)
	addiu	$3, $zero, 1000
	csw	$3, $zero, 0($c1)
	daddiu	$2, $zero, 0
	sd	$2, 8($sp)              # 8-byte Folded Spill
	ld	$3, 8($sp)              # 8-byte Folded Reload
	cgetnull	$c3
	move	$sp, $fp
	ld	$gp, 168($sp)           # 8-byte Folded Reload
	ld	$fp, 176($sp)           # 8-byte Folded Reload
	ld	$ra, 184($sp)           # 8-byte Folded Reload
	daddiu	$sp, $sp, 192
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
	lui	$1, %hi(%neg(%gp_rel(sandboxB_print)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(sandboxB_print)))
	ld	$2, %got_page(.L.str.8)($1)
	daddiu	$4, $2, %got_ofst(.L.str.8)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 32($fp)             # 8-byte Folded Spill
	.reloc .Ltmp15, R_MIPS_JALR, printf
.Ltmp15:
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	ld	$3, %got_disp(privateBp)($1)
	clc	$c1, $3, 0($ddc)
	addiu	$5, $zero, 2000
	csw	$5, $zero, 0($c1)
	ld	$4, %got_disp(privateAp)($1)
	clc	$c1, $4, 0($ddc)
	csw	$5, $zero, 0($c1)
	ld	$6, %got_disp(sharedp)($1)
	clc	$c1, $6, 0($ddc)
	clw	$5, $zero, 0($c1)
	ld	$6, %got_page(.L.str.9)($1)
	daddiu	$6, $6, %got_ofst(.L.str.9)
	ld	$25, %call16(printf)($1)
	sd	$4, 24($fp)             # 8-byte Folded Spill
	move	$4, $6
	move	$gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	sd	$3, 8($fp)              # 8-byte Folded Spill
	.reloc .Ltmp16, R_MIPS_JALR, printf
.Ltmp16:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	clw	$5, $zero, 0($c1)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.10)($3)
	daddiu	$4, $4, %got_ofst(.L.str.10)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 4($fp)              # 4-byte Folded Spill
	.reloc .Ltmp17, R_MIPS_JALR, printf
.Ltmp17:
	jalr	$25
	nop
	ld	$1, 8($fp)              # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	clw	$5, $zero, 0($c1)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.11)($3)
	daddiu	$4, $4, %got_ofst(.L.str.11)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 0($fp)              # 4-byte Folded Spill
	.reloc .Ltmp18, R_MIPS_JALR, printf
.Ltmp18:
	jalr	$25
	nop
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
	lui	$1, %hi(%neg(%gp_rel(cheritest_ccall_setup)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(cheritest_ccall_setup)))
	ld	$2, %got_page(.L.str.12)($1)
	daddiu	$4, $2, %got_ofst(.L.str.12)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 64($fp)             # 8-byte Folded Spill
	.reloc .Ltmp19, R_MIPS_JALR, printf
.Ltmp19:
	jalr	$25
	nop
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(libcheri_sealing_root)($1)
	daddiu	$5, $3, %got_ofst(libcheri_sealing_root)
	ld	$25, %call16(sysarch)($1)
	daddiu	$4, $zero, 6
	move	$gp, $1
	sw	$2, 60($fp)             # 4-byte Folded Spill
	.reloc .Ltmp20, R_MIPS_JALR, sysarch
.Ltmp20:
	jalr	$25
	nop
	bgez	$2, .LBB2_3
	nop
# %bb.1:                                # %entry
	b	.LBB2_2
	nop
.LBB2_2:                                # %if.then
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	csc	$cnull, $2, 0($ddc)
	b	.LBB2_3
	nop
.LBB2_3:                                # %if.end
	ld	$1, 64($fp)             # 8-byte Folded Reload
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
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.13)($1)
	daddiu	$5, $2, %got_ofst(.L.str.13)
	ld	$2, %got_page(.L.str.14)($1)
	daddiu	$7, $2, %got_ofst(.L.str.14)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 161
	move	$gp, $1
	.reloc .Ltmp21, R_MIPS_JALR, __assert
.Ltmp21:
	jalr	$25
	nop
.LBB2_7:                                # %cond.end
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	clc	$c1, $2, 0($ddc)
	cgetperm	$2, $c1
	andi	$2, $2, 512
	beqz	$2, .LBB2_10
	nop
# %bb.8:                                # %cond.end
	b	.LBB2_9
	nop
.LBB2_9:                                # %cond.true5
	b	.LBB2_11
	nop
.LBB2_10:                               # %cond.false6
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.13)($1)
	daddiu	$5, $2, %got_ofst(.L.str.13)
	ld	$2, %got_page(.L.str.15)($1)
	daddiu	$7, $2, %got_ofst(.L.str.15)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 162
	move	$gp, $1
	.reloc .Ltmp22, R_MIPS_JALR, __assert
.Ltmp22:
	jalr	$25
	nop
.LBB2_11:                               # %cond.end7
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	clc	$c1, $2, 0($ddc)
	cgetlen	$2, $c1
	beqz	$2, .LBB2_14
	nop
# %bb.12:                               # %cond.end7
	b	.LBB2_13
	nop
.LBB2_13:                               # %cond.true9
	b	.LBB2_15
	nop
.LBB2_14:                               # %cond.false10
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.13)($1)
	daddiu	$5, $2, %got_ofst(.L.str.13)
	ld	$2, %got_page(.L.str.16)($1)
	daddiu	$7, $2, %got_ofst(.L.str.16)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 163
	move	$gp, $1
	.reloc .Ltmp23, R_MIPS_JALR, __assert
.Ltmp23:
	jalr	$25
	nop
.LBB2_15:                               # %cond.end11
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	clc	$c1, $2, 0($ddc)
	ld	$2, %got_page(sandbox_A_sealcap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_sealcap)
	csc	$c1, $2, 0($ddc)
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	sd	$2, 48($fp)             # 8-byte Folded Spill
	.reloc .Ltmp24, R_MIPS_JALR, libcheri_type_alloc
.Ltmp24:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$2, 64($fp)             # 8-byte Folded Reload
	ld	$25, %call16(libcheri_type_alloc)($2)
	move	$gp, $2
	.reloc .Ltmp25, R_MIPS_JALR, libcheri_type_alloc
.Ltmp25:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$2, 64($fp)             # 8-byte Folded Reload
	ld	$25, %call16(libcheri_type_alloc)($2)
	move	$gp, $2
	.reloc .Ltmp26, R_MIPS_JALR, libcheri_type_alloc
.Ltmp26:
	jalr	$25
	nop
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_B_sealcap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_B_sealcap)
	csc	$c3, $2, 0($ddc)
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	sd	$2, 40($fp)             # 8-byte Folded Spill
	.reloc .Ltmp27, R_MIPS_JALR, libcheri_type_alloc
.Ltmp27:
	jalr	$25
	nop
	ld	$1, 40($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$2, 48($fp)             # 8-byte Folded Reload
	clc	$c1, $2, 0($ddc)
	cgetperm	$3, $c1
	andi	$3, $3, 512
	beqz	$3, .LBB2_18
	nop
# %bb.16:                               # %cond.end11
	b	.LBB2_17
	nop
.LBB2_17:                               # %cond.true18
	b	.LBB2_19
	nop
.LBB2_18:                               # %cond.false19
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.13)($1)
	daddiu	$5, $2, %got_ofst(.L.str.13)
	ld	$2, %got_page(.L.str.17)($1)
	daddiu	$7, $2, %got_ofst(.L.str.17)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 176
	move	$gp, $1
	.reloc .Ltmp28, R_MIPS_JALR, __assert
.Ltmp28:
	jalr	$25
	nop
.LBB2_19:                               # %cond.end20
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_B_sealcap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_B_sealcap)
	clc	$c1, $2, 0($ddc)
	cgetperm	$2, $c1
	andi	$2, $2, 512
	beqz	$2, .LBB2_22
	nop
# %bb.20:                               # %cond.end20
	b	.LBB2_21
	nop
.LBB2_21:                               # %cond.true23
	b	.LBB2_23
	nop
.LBB2_22:                               # %cond.false24
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.13)($1)
	daddiu	$5, $2, %got_ofst(.L.str.13)
	ld	$2, %got_page(.L.str.18)($1)
	daddiu	$7, $2, %got_ofst(.L.str.18)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 177
	move	$gp, $1
	.reloc .Ltmp29, R_MIPS_JALR, __assert
.Ltmp29:
	jalr	$25
	nop
.LBB2_23:                               # %cond.end25
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_sealcap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_sealcap)
	clc	$c1, $2, 0($ddc)
	cgetperm	$3, $c1
	ori	$3, $3, 640
	candperm	$c1, $c1, $3
	csc	$c1, $2, 0($ddc)
	ld	$3, %got_page(sandbox_B_sealcap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_B_sealcap)
	clc	$c1, $3, 0($ddc)
	cgetperm	$4, $c1
	ori	$4, $4, 512
	candperm	$c1, $c1, $4
	csc	$c1, $3, 0($ddc)
	cgetpcc	$c1
	ld	$3, %got_page(sandbox_A_codecap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_A_codecap)
	csc	$c1, $3, 0($ddc)
	clc	$c1, $3, 0($ddc)
	ld	$4, %got_disp(sandboxA_print)($1)
	csetaddr	$c1, $c1, $4
	csc	$c1, $3, 0($ddc)
	clc	$c1, $3, 0($ddc)
	clc	$c2, $2, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $3, 0($ddc)
	ld	$3, %got_page(privateA)($1)
	daddiu	$4, $3, %got_ofst(privateA)
	ld	$3, %got_page(privateB)($1)
	daddiu	$3, $3, %got_ofst(privateB)
	ld	$5, %got_page(datacap_create)($1)
	daddiu	$5, $5, %got_ofst(datacap_create)
	sd	$5, 32($fp)             # 8-byte Folded Spill
	move	$5, $3
	ld	$25, 32($fp)            # 8-byte Folded Reload
	sd	$2, 24($fp)             # 8-byte Folded Spill
	sd	$3, 16($fp)             # 8-byte Folded Spill
	.reloc .Ltmp30, R_MIPS_JALR, datacap_create
.Ltmp30:
	jalr	$25
	nop
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_disp(privateAp)($1)
	csc	$c3, $2, 0($ddc)
	ld	$3, %got_page(privateDummy)($1)
	daddiu	$5, $3, %got_ofst(privateDummy)
	ld	$4, 16($fp)             # 8-byte Folded Reload
	ld	$25, 32($fp)            # 8-byte Folded Reload
	sd	$2, 8($fp)              # 8-byte Folded Spill
	.reloc .Ltmp31, R_MIPS_JALR, datacap_create
.Ltmp31:
	jalr	$25
	nop
	ld	$1, 64($fp)             # 8-byte Folded Reload
	ld	$2, %got_disp(privateBp)($1)
	csc	$c3, $2, 0($ddc)
	ld	$3, 8($fp)              # 8-byte Folded Reload
	clc	$c1, $3, 0($ddc)
	ld	$4, %got_page(sandbox_A_datacap)($1)
	daddiu	$4, $4, %got_ofst(sandbox_A_datacap)
	csc	$c1, $4, 0($ddc)
	clc	$c1, $2, 0($ddc)
	ld	$2, %got_page(sandbox_B_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_B_datacap)
	csc	$c1, $2, 0($ddc)
	clc	$c1, $4, 0($ddc)
	ld	$2, 24($fp)             # 8-byte Folded Reload
	clc	$c2, $2, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $4, 0($ddc)
	ld	$4, %got_page(.L.str.19)($1)
	daddiu	$4, $4, %got_ofst(.L.str.19)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp32, R_MIPS_JALR, printf
.Ltmp32:
	jalr	$25
	nop
	move	$sp, $fp
	ld	$gp, 72($sp)            # 8-byte Folded Reload
	ld	$fp, 80($sp)            # 8-byte Folded Reload
	ld	$ra, 88($sp)            # 8-byte Folded Reload
	daddiu	$sp, $sp, 96
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	cheritest_ccall_setup
.Lfunc_end2:
	.size	cheritest_ccall_setup, .Lfunc_end2-cheritest_ccall_setup
                                        # -- End function
	.p2align	3               # -- Begin function datacap_create
	.type	datacap_create,@function
	.set	nomicromips
	.set	nomips16
	.ent	datacap_create
datacap_create:                         # @datacap_create
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
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(datacap_create)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(datacap_create)))
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	ld	$2, 24($fp)
	ld	$3, 16($fp)
	dsubu	$5, $3, $2
	ld	$1, %got_page(cheri_ptrperm)($1)
	daddiu	$25, $1, %got_ofst(cheri_ptrperm)
	ori	$6, $zero, 33789
	move	$4, $2
	.reloc .Ltmp33, R_MIPS_JALR, cheri_ptrperm
.Ltmp33:
	jalr	$25
	nop
	daddiu	$1, $fp, 0
	csc	$c3, $1, 0($ddc)
	clc	$c3, $1, 0($ddc)
	move	$sp, $fp
	ld	$fp, 32($sp)            # 8-byte Folded Reload
	ld	$ra, 40($sp)            # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	datacap_create
.Lfunc_end3:
	.size	datacap_create, .Lfunc_end3-datacap_create
                                        # -- End function
	.globl	test_sandboxA           # -- Begin function test_sandboxA
	.p2align	3
	.type	test_sandboxA,@function
	.set	nomicromips
	.set	nomips16
	.ent	test_sandboxA
test_sandboxA:                          # @test_sandboxA
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -32
	sd	$ra, 24($sp)            # 8-byte Folded Spill
	sd	$fp, 16($sp)            # 8-byte Folded Spill
	sd	$gp, 8($sp)             # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(test_sandboxA)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(test_sandboxA)))
	ld	$2, %got_page(sandbox_A_codecap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_codecap)
	clc	$c1, $2, 0($ddc)
	ld	$2, %got_page(sandbox_A_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_datacap)
	clc	$c2, $2, 0($ddc)
	ld	$25, %call16(sandbox_invoke)($1)
	daddiu	$2, $zero, 0
	cgetnull	$c3
	cgetnull	$c4
	cgetnull	$c5
	cgetnull	$c6
	cgetnull	$c7
	cgetnull	$c8
	cgetnull	$c9
	cgetnull	$c10
	move	$4, $2
	move	$5, $2
	move	$6, $2
	move	$7, $2
	move	$8, $2
	move	$9, $2
	move	$10, $2
	move	$11, $2
	move	$gp, $1
	sd	$1, 0($fp)              # 8-byte Folded Spill
	.reloc .Ltmp34, R_MIPS_JALR, sandbox_invoke
.Ltmp34:
	jalr	$25
	nop
	ld	$1, 0($fp)              # 8-byte Folded Reload
	ld	$25, %call16(cheritest_success)($1)
	move	$gp, $1
	.reloc .Ltmp35, R_MIPS_JALR, cheritest_success
.Ltmp35:
	jalr	$25
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	test_sandboxA
.Lfunc_end4:
	.size	test_sandboxA, .Lfunc_end4-test_sandboxA
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
	ld	$2, %got_page(.L.str.20)($1)
	daddiu	$4, $2, %got_ofst(.L.str.20)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 24($fp)             # 8-byte Folded Spill
	.reloc .Ltmp36, R_MIPS_JALR, printf
.Ltmp36:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(privateA)($1)
	daddiu	$3, $3, %got_ofst(privateA)
	cfromddc	$c1, $3
	csetbounds	$c1, $c1, 64
	ld	$3, %got_disp(privateAp)($1)
	csc	$c1, $3, 0($ddc)
	ld	$3, %got_page(privateB)($1)
	daddiu	$3, $3, %got_ofst(privateB)
	cfromddc	$c1, $3
	csetbounds	$c1, $c1, 64
	ld	$3, %got_disp(privateBp)($1)
	csc	$c1, $3, 0($ddc)
	ld	$3, %got_page(shared)($1)
	daddiu	$3, $3, %got_ofst(shared)
	cfromddc	$c1, $3
	csetbounds	$c1, $c1, 64
	ld	$3, %got_disp(sharedp)($1)
	csc	$c1, $3, 0($ddc)
	ld	$3, %got_page(.L.str.21)($1)
	daddiu	$4, $3, %got_ofst(.L.str.21)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	.reloc .Ltmp37, R_MIPS_JALR, printf
.Ltmp37:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(cheritest_ccall_setup)($1)
	move	$gp, $1
	sw	$2, 16($fp)             # 4-byte Folded Spill
	.reloc .Ltmp38, R_MIPS_JALR, cheritest_ccall_setup
.Ltmp38:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.22)($1)
	daddiu	$4, $3, %got_ofst(.L.str.22)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp39, R_MIPS_JALR, printf
.Ltmp39:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(test_sandboxA)($1)
	move	$gp, $1
	sw	$2, 12($fp)             # 4-byte Folded Spill
	.reloc .Ltmp40, R_MIPS_JALR, test_sandboxA
.Ltmp40:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.23)($1)
	daddiu	$4, $3, %got_ofst(.L.str.23)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp41, R_MIPS_JALR, printf
.Ltmp41:
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
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
                                        # -- End function
	.p2align	3               # -- Begin function cheri_ptrperm
	.type	cheri_ptrperm,@function
	.set	nomicromips
	.set	nomips16
	.ent	cheri_ptrperm
cheri_ptrperm:                          # @cheri_ptrperm
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
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(cheri_ptrperm)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(cheri_ptrperm)))
	sd	$4, 24($fp)
	sd	$5, 16($fp)
	sd	$6, 8($fp)
	ld	$4, 24($fp)
	ld	$5, 16($fp)
	ld	$1, %got_page(cheri_ptr)($1)
	daddiu	$25, $1, %got_ofst(cheri_ptr)
	.reloc .Ltmp42, R_MIPS_JALR, cheri_ptr
.Ltmp42:
	jalr	$25
	nop
	ld	$1, 8($fp)
	ori	$1, $1, 1
	candperm	$c3, $c3, $1
	move	$sp, $fp
	ld	$fp, 32($sp)            # 8-byte Folded Reload
	ld	$ra, 40($sp)            # 8-byte Folded Reload
	daddiu	$sp, $sp, 48
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	cheri_ptrperm
.Lfunc_end6:
	.size	cheri_ptrperm, .Lfunc_end6-cheri_ptrperm
                                        # -- End function
	.p2align	3               # -- Begin function cheri_ptr
	.type	cheri_ptr,@function
	.set	nomicromips
	.set	nomips16
	.ent	cheri_ptr
cheri_ptr:                              # @cheri_ptr
	.frame	$fp,32,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -32
	sd	$fp, 24($sp)            # 8-byte Folded Spill
	move	$fp, $sp
	sd	$4, 16($fp)
	sd	$5, 8($fp)
	ld	$1, 16($fp)
	cfromddc	$c1, $1
	ld	$1, 8($fp)
	csetbounds	$c3, $c1, $1
	move	$sp, $fp
	ld	$fp, 24($sp)            # 8-byte Folded Reload
	daddiu	$sp, $sp, 32
	jr	$ra
	nop
	.set	at
	.set	macro
	.set	reorder
	.end	cheri_ptr
.Lfunc_end7:
	.size	cheri_ptr, .Lfunc_end7-cheri_ptr
                                        # -- End function
	.type	.L__const.sandboxA_print.a,@object # @__const.sandboxA_print.a
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5
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
	.asciz	"\nthe sandbox_A_datacap is:\n\t"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tag %ju s %ju perms %08jx type %016jx\n"
	.size	.L.str.2, 39

	.type	sandbox_A_datacap,@object # @sandbox_A_datacap
	.local	sandbox_A_datacap
	.comm	sandbox_A_datacap,16,16
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\tbase %016jx length %016jx\n"
	.size	.L.str.3, 28

	.type	privateAp,@object       # @privateAp
	.comm	privateAp,16,16
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"my name is A"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"A private name: %s\n"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\nthe privateBp is:\n\t"
	.size	.L.str.6, 21

	.type	privateBp,@object       # @privateBp
	.comm	privateBp,16,16
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\nthe sandbox_B_datacapis:\n\t"
	.size	.L.str.7, 28

	.type	sandbox_B_datacap,@object # @sandbox_B_datacap
	.local	sandbox_B_datacap
	.comm	sandbox_B_datacap,16,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"printing in sandbox B\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"shared data: %d\n"
	.size	.L.str.9, 17

	.type	sharedp,@object         # @sharedp
	.comm	sharedp,16,16
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"A private data: %d\n"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"B private data: %d\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"begin.\n"
	.size	.L.str.12, 8

	.type	libcheri_sealing_root,@object # @libcheri_sealing_root
	.local	libcheri_sealing_root
	.comm	libcheri_sealing_root,16,16
	.type	.L__func__.cheritest_ccall_setup,@object # @__func__.cheritest_ccall_setup
.L__func__.cheritest_ccall_setup:
	.asciz	"cheritest_ccall_setup"
	.size	.L__func__.cheritest_ccall_setup, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"hello.c"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"(cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL ) != 0"
	.size	.L.str.14, 63

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(cheri_getperm(libcheri_sealing_root) & CHERI_PERM_UNSEAL ) != 0"
	.size	.L.str.15, 65

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cheri_getlen(libcheri_sealing_root) != 0"
	.size	.L.str.16, 41

	.type	sandbox_A_sealcap,@object # @sandbox_A_sealcap
	.local	sandbox_A_sealcap
	.comm	sandbox_A_sealcap,16,16
	.type	sandbox_B_sealcap,@object # @sandbox_B_sealcap
	.local	sandbox_B_sealcap
	.comm	sandbox_B_sealcap,16,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"(cheri_getperm(sandbox_A_sealcap) & CHERI_PERM_UNSEAL ) != 0"
	.size	.L.str.17, 61

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"(cheri_getperm(sandbox_B_sealcap) & CHERI_PERM_UNSEAL ) != 0"
	.size	.L.str.18, 61

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
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"done."
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"hello world\n"
	.size	.L.str.20, 13

	.type	shared,@object          # @shared
	.local	shared
	.comm	shared,64,64
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"cheritest setup\n"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"now start testing...\n"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"done test with sandboxA.\n"
	.size	.L.str.23, 26


	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git e914474cc8618f40fc08dd4f9a57808efcf965a6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sandboxA_print
	.addrsig_sym printf
	.addrsig_sym sleep
	.addrsig_sym strcpy
	.addrsig_sym cheritest_ccall_setup
	.addrsig_sym sysarch
	.addrsig_sym __assert
	.addrsig_sym libcheri_type_alloc
	.addrsig_sym datacap_create
	.addrsig_sym test_sandboxA
	.addrsig_sym sandbox_invoke
	.addrsig_sym cheritest_success
	.addrsig_sym cheri_ptrperm
	.addrsig_sym cheri_ptr
	.addrsig_sym sandbox_A_datacap
	.addrsig_sym privateAp
	.addrsig_sym privateBp
	.addrsig_sym sandbox_B_datacap
	.addrsig_sym sharedp
	.addrsig_sym libcheri_sealing_root
	.addrsig_sym sandbox_A_sealcap
	.addrsig_sym sandbox_B_sealcap
	.addrsig_sym sandbox_A_codecap
	.addrsig_sym privateA
	.addrsig_sym privateB
	.addrsig_sym privateDummy
	.addrsig_sym shared
	.text
