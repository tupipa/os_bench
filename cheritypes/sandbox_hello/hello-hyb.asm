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
	.frame	$fp,16,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -16
	sd	$fp, 8($sp)             # 8-byte Folded Spill
	move	$fp, $sp
	lui	$1, %hi(%neg(%gp_rel(sandboxA_print)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(sandboxA_print)))
	sd	$1, 0($fp)              # 8-byte Folded Spill
	#APP
	.set	push
	.set	at
	.set	macro
	.set	reorder

	cwritehwr	$c26, $chwr_ddc


	.set	pop
	#NO_APP
	ld	$2, 0($fp)              # 8-byte Folded Reload
	ld	$3, %got_disp(privateAp)($2)
	clc	$c1, $3, 0($ddc)
	addiu	$1, $zero, 1000
	csw	$1, $zero, 0($c1)
	ld	$4, %got_disp(privateBp)($2)
	clc	$c1, $4, 0($ddc)
	clw	$1, $zero, 0($c1)
	clc	$c1, $3, 0($ddc)
	csw	$1, $zero, 0($c1)
	daddiu	$3, $zero, 0
	move	$2, $3
	cgetnull	$c3
	move	$sp, $fp
	ld	$fp, 8($sp)             # 8-byte Folded Reload
	daddiu	$sp, $sp, 16
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
	ld	$2, %got_page(.L.str)($1)
	daddiu	$4, $2, %got_ofst(.L.str)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 32($fp)             # 8-byte Folded Spill
	.reloc .Ltmp0, R_MIPS_JALR, printf
.Ltmp0:
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
	ld	$6, %got_page(.L.str.1)($1)
	daddiu	$6, $6, %got_ofst(.L.str.1)
	ld	$25, %call16(printf)($1)
	sd	$4, 24($fp)             # 8-byte Folded Spill
	move	$4, $6
	move	$gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	sd	$3, 8($fp)              # 8-byte Folded Spill
	.reloc .Ltmp1, R_MIPS_JALR, printf
.Ltmp1:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	clw	$5, $zero, 0($c1)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.2)($3)
	daddiu	$4, $4, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 4($fp)              # 4-byte Folded Spill
	.reloc .Ltmp2, R_MIPS_JALR, printf
.Ltmp2:
	jalr	$25
	nop
	ld	$1, 8($fp)              # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	clw	$5, $zero, 0($c1)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.3)($3)
	daddiu	$4, $4, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 0($fp)              # 4-byte Folded Spill
	.reloc .Ltmp3, R_MIPS_JALR, printf
.Ltmp3:
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
	lui	$1, %hi(%neg(%gp_rel(cheritest_ccall_setup)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(cheritest_ccall_setup)))
	ld	$2, %got_page(.L.str.4)($1)
	daddiu	$4, $2, %got_ofst(.L.str.4)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 48($fp)             # 8-byte Folded Spill
	.reloc .Ltmp4, R_MIPS_JALR, printf
.Ltmp4:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(libcheri_sealing_root)($1)
	daddiu	$5, $3, %got_ofst(libcheri_sealing_root)
	ld	$25, %call16(sysarch)($1)
	daddiu	$4, $zero, 6
	move	$gp, $1
	sw	$2, 44($fp)             # 4-byte Folded Spill
	.reloc .Ltmp5, R_MIPS_JALR, sysarch
.Ltmp5:
	jalr	$25
	nop
	bgez	$2, .LBB2_3
	nop
# %bb.1:                                # %entry
	b	.LBB2_2
	nop
.LBB2_2:                                # %if.then
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	csc	$cnull, $2, 0($ddc)
	b	.LBB2_3
	nop
.LBB2_3:                                # %if.end
	ld	$1, 48($fp)             # 8-byte Folded Reload
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
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.5)($1)
	daddiu	$5, $2, %got_ofst(.L.str.5)
	ld	$2, %got_page(.L.str.6)($1)
	daddiu	$7, $2, %got_ofst(.L.str.6)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 139
	move	$gp, $1
	.reloc .Ltmp6, R_MIPS_JALR, __assert
.Ltmp6:
	jalr	$25
	nop
.LBB2_7:                                # %cond.end
	ld	$1, 48($fp)             # 8-byte Folded Reload
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
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.5)($1)
	daddiu	$5, $2, %got_ofst(.L.str.5)
	ld	$2, %got_page(.L.str.7)($1)
	daddiu	$7, $2, %got_ofst(.L.str.7)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 140
	move	$gp, $1
	.reloc .Ltmp7, R_MIPS_JALR, __assert
.Ltmp7:
	jalr	$25
	nop
.LBB2_11:                               # %cond.end7
	ld	$1, 48($fp)             # 8-byte Folded Reload
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
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.5)($1)
	daddiu	$5, $2, %got_ofst(.L.str.5)
	ld	$2, %got_page(.L.str.8)($1)
	daddiu	$7, $2, %got_ofst(.L.str.8)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 141
	move	$gp, $1
	.reloc .Ltmp8, R_MIPS_JALR, __assert
.Ltmp8:
	jalr	$25
	nop
.LBB2_15:                               # %cond.end11
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(libcheri_sealing_root)($1)
	daddiu	$2, $2, %got_ofst(libcheri_sealing_root)
	clc	$c1, $2, 0($ddc)
	ld	$2, %got_page(sandbox_A_sealcap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_sealcap)
	csc	$c1, $2, 0($ddc)
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	sd	$2, 32($fp)             # 8-byte Folded Spill
	.reloc .Ltmp9, R_MIPS_JALR, libcheri_type_alloc
.Ltmp9:
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$2, 48($fp)             # 8-byte Folded Reload
	ld	$25, %call16(libcheri_type_alloc)($2)
	move	$gp, $2
	.reloc .Ltmp10, R_MIPS_JALR, libcheri_type_alloc
.Ltmp10:
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$2, 48($fp)             # 8-byte Folded Reload
	ld	$25, %call16(libcheri_type_alloc)($2)
	move	$gp, $2
	.reloc .Ltmp11, R_MIPS_JALR, libcheri_type_alloc
.Ltmp11:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_B_sealcap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_B_sealcap)
	csc	$c3, $2, 0($ddc)
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	sd	$2, 24($fp)             # 8-byte Folded Spill
	.reloc .Ltmp12, R_MIPS_JALR, libcheri_type_alloc
.Ltmp12:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$2, 32($fp)             # 8-byte Folded Reload
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
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.5)($1)
	daddiu	$5, $2, %got_ofst(.L.str.5)
	ld	$2, %got_page(.L.str.9)($1)
	daddiu	$7, $2, %got_ofst(.L.str.9)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 152
	move	$gp, $1
	.reloc .Ltmp13, R_MIPS_JALR, __assert
.Ltmp13:
	jalr	$25
	nop
.LBB2_19:                               # %cond.end20
	ld	$1, 48($fp)             # 8-byte Folded Reload
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
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(.L__func__.cheritest_ccall_setup)($1)
	daddiu	$4, $2, %got_ofst(.L__func__.cheritest_ccall_setup)
	ld	$2, %got_page(.L.str.5)($1)
	daddiu	$5, $2, %got_ofst(.L.str.5)
	ld	$2, %got_page(.L.str.10)($1)
	daddiu	$7, $2, %got_ofst(.L.str.10)
	ld	$25, %call16(__assert)($1)
	daddiu	$6, $zero, 153
	move	$gp, $1
	.reloc .Ltmp14, R_MIPS_JALR, __assert
.Ltmp14:
	jalr	$25
	nop
.LBB2_23:                               # %cond.end25
	cgetpcc	$c1
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_A_codecap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_A_codecap)
	csc	$c1, $2, 0($ddc)
	clc	$c1, $2, 0($ddc)
	ld	$3, %got_disp(sandboxA_print)($1)
	csetaddr	$c1, $c1, $3
	csc	$c1, $2, 0($ddc)
	clc	$c1, $2, 0($ddc)
	ld	$3, %got_page(sandbox_A_sealcap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_A_sealcap)
	clc	$c2, $3, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $2, 0($ddc)
	ld	$2, %got_page(.L.str.11)($1)
	daddiu	$4, $2, %got_ofst(.L.str.11)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$3, 16($fp)             # 8-byte Folded Spill
	.reloc .Ltmp15, R_MIPS_JALR, printf
.Ltmp15:
	jalr	$25
	nop
	creadhwr	$c1, $chwr_ddc
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$3, %got_disp(privateAp)($1)
	csc	$c1, $3, 0($ddc)
	clc	$c2, $3, 0($ddc)
	ld	$4, %got_page(privateA)($1)
	daddiu	$4, $4, %got_ofst(privateA)
	csetaddr	$c2, $c2, $4
	csc	$c2, $3, 0($ddc)
	ld	$4, %got_disp(privateBp)($1)
	csc	$c1, $4, 0($ddc)
	clc	$c1, $4, 0($ddc)
	ld	$5, %got_page(privateB)($1)
	daddiu	$5, $5, %got_ofst(privateB)
	csetaddr	$c1, $c1, $5
	csc	$c1, $4, 0($ddc)
	clc	$c1, $3, 0($ddc)
	ld	$5, %got_page(sandbox_A_datacap)($1)
	daddiu	$5, $5, %got_ofst(sandbox_A_datacap)
	csc	$c1, $5, 0($ddc)
	clc	$c1, $4, 0($ddc)
	ld	$6, %got_page(sandbox_B_datacap)($1)
	daddiu	$6, $6, %got_ofst(sandbox_B_datacap)
	csc	$c1, $6, 0($ddc)
	clc	$c1, $5, 0($ddc)
	ld	$7, 16($fp)             # 8-byte Folded Reload
	clc	$c2, $7, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $5, 0($ddc)
	clc	$c1, $6, 0($ddc)
	ld	$5, %got_page(sandbox_B_sealcap)($1)
	daddiu	$5, $5, %got_ofst(sandbox_B_sealcap)
	clc	$c2, $5, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $6, 0($ddc)
	clc	$c1, $3, 0($ddc)
	clc	$c2, $7, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $3, 0($ddc)
	clc	$c1, $3, 0($ddc)
	clc	$c2, $7, 0($ddc)
	cunseal	$c1, $c1, $c2
	csc	$c1, $3, 0($ddc)
	clc	$c1, $4, 0($ddc)
	clc	$c2, $5, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $4, 0($ddc)
	clc	$c1, $4, 0($ddc)
	clc	$c2, $5, 0($ddc)
	cunseal	$c1, $c1, $c2
	csc	$c1, $4, 0($ddc)
	clc	$c1, $6, 0($ddc)
	clc	$c2, $5, 0($ddc)
	cunseal	$c1, $c1, $c2
	csc	$c1, $6, 0($ddc)
	ld	$3, %got_page(.L.str.12)($1)
	daddiu	$4, $3, %got_ofst(.L.str.12)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 12($fp)             # 4-byte Folded Spill
	.reloc .Ltmp16, R_MIPS_JALR, printf
.Ltmp16:
	jalr	$25
	nop
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
	.reloc .Ltmp17, R_MIPS_JALR, sandbox_invoke
.Ltmp17:
	jalr	$25
	nop
	ld	$1, 0($fp)              # 8-byte Folded Reload
	ld	$25, %call16(cheritest_success)($1)
	move	$gp, $1
	.reloc .Ltmp18, R_MIPS_JALR, cheritest_success
.Ltmp18:
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
	ld	$2, %got_page(.L.str.13)($1)
	daddiu	$4, $2, %got_ofst(.L.str.13)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 24($fp)             # 8-byte Folded Spill
	.reloc .Ltmp19, R_MIPS_JALR, printf
.Ltmp19:
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
	ld	$3, %got_page(.L.str.14)($1)
	daddiu	$4, $3, %got_ofst(.L.str.14)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	.reloc .Ltmp20, R_MIPS_JALR, printf
.Ltmp20:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(cheritest_ccall_setup)($1)
	move	$gp, $1
	sw	$2, 16($fp)             # 4-byte Folded Spill
	.reloc .Ltmp21, R_MIPS_JALR, cheritest_ccall_setup
.Ltmp21:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.15)($1)
	daddiu	$4, $3, %got_ofst(.L.str.15)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp22, R_MIPS_JALR, printf
.Ltmp22:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(test_sandboxA)($1)
	move	$gp, $1
	sw	$2, 12($fp)             # 4-byte Folded Spill
	.reloc .Ltmp23, R_MIPS_JALR, test_sandboxA
.Ltmp23:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.16)($1)
	daddiu	$4, $3, %got_ofst(.L.str.16)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp24, R_MIPS_JALR, printf
.Ltmp24:
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
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\tcreating hybrid data cap (DDC)...\n"
	.size	.L.str.11, 36

	.type	privateA,@object        # @privateA
	.local	privateA
	.comm	privateA,64,64
	.type	privateB,@object        # @privateB
	.local	privateB
	.comm	privateB,64,64
	.type	sandbox_A_datacap,@object # @sandbox_A_datacap
	.local	sandbox_A_datacap
	.comm	sandbox_A_datacap,16,16
	.type	sandbox_B_datacap,@object # @sandbox_B_datacap
	.local	sandbox_B_datacap
	.comm	sandbox_B_datacap,16,16
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"done."
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"hello world\n"
	.size	.L.str.13, 13

	.type	shared,@object          # @shared
	.local	shared
	.comm	shared,64,64
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cheritest setup\n"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"now start testing...\n"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"done test with sandboxA.\n"
	.size	.L.str.16, 26


	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git e914474cc8618f40fc08dd4f9a57808efcf965a6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sandboxA_print
	.addrsig_sym printf
	.addrsig_sym cheritest_ccall_setup
	.addrsig_sym sysarch
	.addrsig_sym __assert
	.addrsig_sym libcheri_type_alloc
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
	.addrsig_sym sandbox_A_datacap
	.addrsig_sym sandbox_B_datacap
	.addrsig_sym shared
	.text
