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
	.frame	$fp,288,$ra
	.mask 	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	.set	noat
# %bb.0:                                # %entry
	daddiu	$sp, $sp, -288
	sd	$ra, 280($sp)           # 8-byte Folded Spill
	sd	$fp, 272($sp)           # 8-byte Folded Spill
	sd	$gp, 264($sp)           # 8-byte Folded Spill
	move	$fp, $sp
	daddiu	$1, $zero, -32
	and	$sp, $sp, $1
	lui	$1, %hi(%neg(%gp_rel(sandboxA_print)))
	daddu	$1, $1, $25
	daddiu	$1, $1, %lo(%neg(%gp_rel(sandboxA_print)))
	ld	$2, %got_page(.L__const.sandboxA_print.a)($1)
	daddiu	$2, $2, %got_ofst(.L__const.sandboxA_print.a)
	clc	$c1, $2, 0($ddc)
	daddiu	$3, $sp, 224
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
	sd	$1, 216($sp)            # 8-byte Folded Spill
	.reloc .Ltmp0, R_MIPS_JALR, printf
.Ltmp0:
	jalr	$25
	nop
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.1)($1)
	daddiu	$4, $3, %got_ofst(.L.str.1)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 212($sp)            # 4-byte Folded Spill
	.reloc .Ltmp1, R_MIPS_JALR, printf
.Ltmp1:
	jalr	$25
	nop
	b	.LBB0_1
	nop
.LBB0_1:                                # %do.body
	cgetpcc	$c1
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.2)($1)
	daddiu	$4, $2, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	csc	$c1, $sp, 192($ddc)     # 16-byte Folded Spill
	.reloc .Ltmp2, R_MIPS_JALR, printf
.Ltmp2:
	jalr	$25
	nop
	clc	$c1, $sp, 192($ddc)     # 16-byte Folded Reload
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.3)($1)
	daddiu	$4, $3, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 188($sp)            # 4-byte Folded Spill
	.reloc .Ltmp3, R_MIPS_JALR, printf
.Ltmp3:
	jalr	$25
	nop
	b	.LBB0_2
	nop
.LBB0_2:                                # %do.end
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.4)($1)
	daddiu	$4, $2, %got_ofst(.L.str.4)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp4, R_MIPS_JALR, printf
.Ltmp4:
	jalr	$25
	nop
	b	.LBB0_3
	nop
.LBB0_3:                                # %do.body6
	cincoffset	$c1, $c26, $zero
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.2)($1)
	daddiu	$4, $2, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	csc	$c1, $sp, 160($ddc)     # 16-byte Folded Spill
	.reloc .Ltmp5, R_MIPS_JALR, printf
.Ltmp5:
	jalr	$25
	nop
	clc	$c1, $sp, 160($ddc)     # 16-byte Folded Reload
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.3)($1)
	daddiu	$4, $3, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 156($sp)            # 4-byte Folded Spill
	.reloc .Ltmp6, R_MIPS_JALR, printf
.Ltmp6:
	jalr	$25
	nop
	b	.LBB0_4
	nop
.LBB0_4:                                # %do.end11
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.5)($1)
	daddiu	$4, $2, %got_ofst(.L.str.5)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp7, R_MIPS_JALR, printf
.Ltmp7:
	jalr	$25
	nop
	b	.LBB0_5
	nop
.LBB0_5:                                # %do.body13
	creadhwr	$c1, $chwr_ddc
	cgettag	$5, $c1
	cgetsealed	$6, $c1
	cgetperm	$7, $c1
	cgettype	$8, $c1
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.2)($1)
	daddiu	$4, $2, %got_ofst(.L.str.2)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	csc	$c1, $sp, 128($ddc)     # 16-byte Folded Spill
	.reloc .Ltmp8, R_MIPS_JALR, printf
.Ltmp8:
	jalr	$25
	nop
	clc	$c1, $sp, 128($ddc)     # 16-byte Folded Reload
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.3)($1)
	daddiu	$4, $3, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 124($sp)            # 4-byte Folded Spill
	.reloc .Ltmp9, R_MIPS_JALR, printf
.Ltmp9:
	jalr	$25
	nop
	b	.LBB0_6
	nop
.LBB0_6:                                # %do.end18
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.6)($1)
	daddiu	$4, $2, %got_ofst(.L.str.6)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp10, R_MIPS_JALR, printf
.Ltmp10:
	jalr	$25
	nop
	b	.LBB0_7
	nop
.LBB0_7:                                # %do.body20
	ld	$1, 216($sp)            # 8-byte Folded Reload
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
	sd	$2, 112($sp)            # 8-byte Folded Spill
	.reloc .Ltmp11, R_MIPS_JALR, printf
.Ltmp11:
	jalr	$25
	nop
	ld	$1, 112($sp)            # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 216($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.3)($3)
	daddiu	$4, $4, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 108($sp)            # 4-byte Folded Spill
	.reloc .Ltmp12, R_MIPS_JALR, printf
.Ltmp12:
	jalr	$25
	nop
	b	.LBB0_8
	nop
.LBB0_8:                                # %do.end25
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$25, %call16(sleep)($1)
	daddiu	$2, $zero, 1
	move	$4, $2
	move	$gp, $1
	sd	$2, 96($sp)             # 8-byte Folded Spill
	.reloc .Ltmp13, R_MIPS_JALR, sleep
.Ltmp13:
	jalr	$25
	nop
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$3, %got_disp(privateAp)($1)
	clc	$c1, $3, 0($ddc)
	cincoffset	$c1, $c1, 32
	ctoptr	$4, $c1, $ddc
	ld	$5, %got_page(.L.str.7)($1)
	daddiu	$5, $5, %got_ofst(.L.str.7)
	ld	$25, %call16(strcpy)($1)
	move	$gp, $1
	sw	$2, 92($sp)             # 4-byte Folded Spill
	sd	$3, 80($sp)             # 8-byte Folded Spill
	.reloc .Ltmp14, R_MIPS_JALR, strcpy
.Ltmp14:
	jalr	$25
	nop
	ld	$1, 80($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cincoffset	$c1, $c1, 32
	ctoptr	$5, $c1, $ddc
	ld	$3, 216($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.8)($3)
	daddiu	$4, $4, %got_ofst(.L.str.8)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sd	$2, 72($sp)             # 8-byte Folded Spill
	.reloc .Ltmp15, R_MIPS_JALR, printf
.Ltmp15:
	jalr	$25
	nop
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$25, %call16(sleep)($1)
	ld	$4, 96($sp)             # 8-byte Folded Reload
	move	$gp, $1
	sw	$2, 68($sp)             # 4-byte Folded Spill
	.reloc .Ltmp16, R_MIPS_JALR, sleep
.Ltmp16:
	jalr	$25
	nop
	ld	$1, 80($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	addiu	$6, $zero, 1000
	csw	$6, $zero, 0($c1)
	ld	$3, 216($sp)            # 8-byte Folded Reload
	ld	$25, %call16(sleep)($3)
	ld	$4, 96($sp)             # 8-byte Folded Reload
	move	$gp, $3
	sw	$2, 64($sp)             # 4-byte Folded Spill
	.reloc .Ltmp17, R_MIPS_JALR, sleep
.Ltmp17:
	jalr	$25
	nop
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.9)($1)
	daddiu	$4, $3, %got_ofst(.L.str.9)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 60($sp)             # 4-byte Folded Spill
	.reloc .Ltmp18, R_MIPS_JALR, printf
.Ltmp18:
	jalr	$25
	nop
	b	.LBB0_9
	nop
.LBB0_9:                                # %do.body35
	ld	$1, 216($sp)            # 8-byte Folded Reload
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
	sd	$2, 48($sp)             # 8-byte Folded Spill
	.reloc .Ltmp19, R_MIPS_JALR, printf
.Ltmp19:
	jalr	$25
	nop
	ld	$1, 48($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 216($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.3)($3)
	daddiu	$4, $4, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 44($sp)             # 4-byte Folded Spill
	.reloc .Ltmp20, R_MIPS_JALR, printf
.Ltmp20:
	jalr	$25
	nop
	b	.LBB0_10
	nop
.LBB0_10:                               # %do.end40
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(.L.str.10)($1)
	daddiu	$4, $2, %got_ofst(.L.str.10)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp21, R_MIPS_JALR, printf
.Ltmp21:
	jalr	$25
	nop
	b	.LBB0_11
	nop
.LBB0_11:                               # %do.body42
	ld	$1, 216($sp)            # 8-byte Folded Reload
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
	sd	$2, 32($sp)             # 8-byte Folded Spill
	.reloc .Ltmp22, R_MIPS_JALR, printf
.Ltmp22:
	jalr	$25
	nop
	ld	$1, 32($sp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	cgetbase	$5, $c1
	cgetlen	$6, $c1
	ld	$3, 216($sp)            # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.3)($3)
	daddiu	$4, $4, %got_ofst(.L.str.3)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 28($sp)             # 4-byte Folded Spill
	.reloc .Ltmp23, R_MIPS_JALR, printf
.Ltmp23:
	jalr	$25
	nop
	b	.LBB0_12
	nop
.LBB0_12:                               # %do.end47
	ld	$1, 216($sp)            # 8-byte Folded Reload
	ld	$2, %got_page(sandbox_B_datacap)($1)
	daddiu	$2, $2, %got_ofst(sandbox_B_datacap)
	clc	$c1, $2, 0($ddc)
	addiu	$3, $zero, 1000
	csw	$3, $zero, 0($c1)
	daddiu	$2, $zero, 0
	sd	$2, 16($sp)             # 8-byte Folded Spill
	ld	$3, 16($sp)             # 8-byte Folded Reload
	cgetnull	$c3
	move	$sp, $fp
	ld	$gp, 264($sp)           # 8-byte Folded Reload
	ld	$fp, 272($sp)           # 8-byte Folded Reload
	ld	$ra, 280($sp)           # 8-byte Folded Reload
	daddiu	$sp, $sp, 288
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
	ld	$2, %got_page(.L.str.11)($1)
	daddiu	$4, $2, %got_ofst(.L.str.11)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 32($fp)             # 8-byte Folded Spill
	.reloc .Ltmp24, R_MIPS_JALR, printf
.Ltmp24:
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
	ld	$6, %got_page(.L.str.12)($1)
	daddiu	$6, $6, %got_ofst(.L.str.12)
	ld	$25, %call16(printf)($1)
	sd	$4, 24($fp)             # 8-byte Folded Spill
	move	$4, $6
	move	$gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	sd	$3, 8($fp)              # 8-byte Folded Spill
	.reloc .Ltmp25, R_MIPS_JALR, printf
.Ltmp25:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	clw	$5, $zero, 0($c1)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.13)($3)
	daddiu	$4, $4, %got_ofst(.L.str.13)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 4($fp)              # 4-byte Folded Spill
	.reloc .Ltmp26, R_MIPS_JALR, printf
.Ltmp26:
	jalr	$25
	nop
	ld	$1, 8($fp)              # 8-byte Folded Reload
	clc	$c1, $1, 0($ddc)
	clw	$5, $zero, 0($c1)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	ld	$4, %got_page(.L.str.14)($3)
	daddiu	$4, $4, %got_ofst(.L.str.14)
	ld	$25, %call16(printf)($3)
	move	$gp, $3
	sw	$2, 0($fp)              # 4-byte Folded Spill
	.reloc .Ltmp27, R_MIPS_JALR, printf
.Ltmp27:
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
	ld	$2, %got_page(.L.str.15)($1)
	daddiu	$4, $2, %got_ofst(.L.str.15)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 48($fp)             # 8-byte Folded Spill
	.reloc .Ltmp28, R_MIPS_JALR, printf
.Ltmp28:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	sw	$2, 44($fp)             # 4-byte Folded Spill
	.reloc .Ltmp29, R_MIPS_JALR, libcheri_type_alloc
.Ltmp29:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(sandbox_A_sealcap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_A_sealcap)
	csc	$c3, $3, 0($ddc)
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	sd	$3, 32($fp)             # 8-byte Folded Spill
	.reloc .Ltmp30, R_MIPS_JALR, libcheri_type_alloc
.Ltmp30:
	jalr	$25
	nop
	ld	$1, 32($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$3, 48($fp)             # 8-byte Folded Reload
	ld	$25, %call16(libcheri_type_alloc)($3)
	move	$gp, $3
	.reloc .Ltmp31, R_MIPS_JALR, libcheri_type_alloc
.Ltmp31:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(sandbox_B_sealcap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_B_sealcap)
	csc	$c3, $3, 0($ddc)
	ld	$25, %call16(libcheri_type_alloc)($1)
	move	$gp, $1
	sd	$3, 24($fp)             # 8-byte Folded Spill
	.reloc .Ltmp32, R_MIPS_JALR, libcheri_type_alloc
.Ltmp32:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	csc	$c3, $1, 0($ddc)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	clc	$c1, $3, 0($ddc)
	cgetperm	$4, $c1
	ori	$4, $4, 640
	candperm	$c1, $c1, $4
	csc	$c1, $3, 0($ddc)
	clc	$c1, $1, 0($ddc)
	cgetperm	$4, $c1
	ori	$4, $4, 512
	candperm	$c1, $c1, $4
	csc	$c1, $1, 0($ddc)
	cgetpcc	$c1
	ld	$4, 48($fp)             # 8-byte Folded Reload
	ld	$5, %got_page(sandbox_A_codecap)($4)
	daddiu	$5, $5, %got_ofst(sandbox_A_codecap)
	csc	$c1, $5, 0($ddc)
	clc	$c1, $5, 0($ddc)
	ld	$6, %got_disp(sandboxA_print)($4)
	csetaddr	$c1, $c1, $6
	csc	$c1, $5, 0($ddc)
	clc	$c1, $5, 0($ddc)
	clc	$c2, $3, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $5, 0($ddc)
	ld	$5, %got_page(privateA)($4)
	daddiu	$4, $5, %got_ofst(privateA)
	ld	$5, 48($fp)             # 8-byte Folded Reload
	ld	$6, %got_page(privateB)($5)
	daddiu	$6, $6, %got_ofst(privateB)
	ld	$7, %got_page(datacap_create)($5)
	daddiu	$7, $7, %got_ofst(datacap_create)
	move	$5, $6
	move	$25, $7
	sd	$6, 16($fp)             # 8-byte Folded Spill
	sd	$7, 8($fp)              # 8-byte Folded Spill
	.reloc .Ltmp33, R_MIPS_JALR, datacap_create
.Ltmp33:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$3, %got_disp(privateAp)($1)
	csc	$c3, $3, 0($ddc)
	ld	$4, %got_page(privateDummy)($1)
	daddiu	$5, $4, %got_ofst(privateDummy)
	ld	$4, 16($fp)             # 8-byte Folded Reload
	ld	$25, 8($fp)             # 8-byte Folded Reload
	sd	$3, 0($fp)              # 8-byte Folded Spill
	.reloc .Ltmp34, R_MIPS_JALR, datacap_create
.Ltmp34:
	jalr	$25
	nop
	ld	$1, 48($fp)             # 8-byte Folded Reload
	ld	$3, %got_disp(privateBp)($1)
	csc	$c3, $3, 0($ddc)
	ld	$4, 0($fp)              # 8-byte Folded Reload
	clc	$c1, $4, 0($ddc)
	ld	$5, %got_page(sandbox_A_datacap)($1)
	daddiu	$5, $5, %got_ofst(sandbox_A_datacap)
	csc	$c1, $5, 0($ddc)
	clc	$c1, $3, 0($ddc)
	ld	$3, %got_page(sandbox_B_datacap)($1)
	daddiu	$3, $3, %got_ofst(sandbox_B_datacap)
	csc	$c1, $3, 0($ddc)
	clc	$c1, $5, 0($ddc)
	ld	$3, 32($fp)             # 8-byte Folded Reload
	clc	$c2, $3, 0($ddc)
	cseal	$c1, $c1, $c2
	csc	$c1, $5, 0($ddc)
	ld	$5, %got_page(.L.str.16)($1)
	daddiu	$4, $5, %got_ofst(.L.str.16)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp35, R_MIPS_JALR, printf
.Ltmp35:
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
	.reloc .Ltmp36, R_MIPS_JALR, cheri_ptrperm
.Ltmp36:
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
	.reloc .Ltmp37, R_MIPS_JALR, sandbox_invoke
.Ltmp37:
	jalr	$25
	nop
	ld	$1, 0($fp)              # 8-byte Folded Reload
	ld	$25, %call16(cheritest_success)($1)
	move	$gp, $1
	.reloc .Ltmp38, R_MIPS_JALR, cheritest_success
.Ltmp38:
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
	ld	$2, %got_page(.L.str.17)($1)
	daddiu	$4, $2, %got_ofst(.L.str.17)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sd	$1, 24($fp)             # 8-byte Folded Spill
	.reloc .Ltmp39, R_MIPS_JALR, printf
.Ltmp39:
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
	ld	$3, %got_page(.L.str.18)($1)
	daddiu	$4, $3, %got_ofst(.L.str.18)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	sw	$2, 20($fp)             # 4-byte Folded Spill
	.reloc .Ltmp40, R_MIPS_JALR, printf
.Ltmp40:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(cheritest_ccall_setup)($1)
	move	$gp, $1
	sw	$2, 16($fp)             # 4-byte Folded Spill
	.reloc .Ltmp41, R_MIPS_JALR, cheritest_ccall_setup
.Ltmp41:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.19)($1)
	daddiu	$4, $3, %got_ofst(.L.str.19)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp42, R_MIPS_JALR, printf
.Ltmp42:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$25, %call16(test_sandboxA)($1)
	move	$gp, $1
	sw	$2, 12($fp)             # 4-byte Folded Spill
	.reloc .Ltmp43, R_MIPS_JALR, test_sandboxA
.Ltmp43:
	jalr	$25
	nop
	ld	$1, 24($fp)             # 8-byte Folded Reload
	ld	$3, %got_page(.L.str.20)($1)
	daddiu	$4, $3, %got_ofst(.L.str.20)
	ld	$25, %call16(printf)($1)
	move	$gp, $1
	.reloc .Ltmp44, R_MIPS_JALR, printf
.Ltmp44:
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
	.reloc .Ltmp45, R_MIPS_JALR, cheri_ptr
.Ltmp45:
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
	.asciz	"\nthe PCC is:\n\t"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tag %ju s %ju perms %08jx type %016jx\n"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\tbase %016jx length %016jx\n"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\nthe IDC is:\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\nthe DDC is:\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\nthe sandbox_A_datacap is:\n\t"
	.size	.L.str.6, 29

	.type	sandbox_A_datacap,@object # @sandbox_A_datacap
	.local	sandbox_A_datacap
	.comm	sandbox_A_datacap,16,16
	.type	privateAp,@object       # @privateAp
	.comm	privateAp,16,16
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"my name is A"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"A private name: %s\n"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\nthe privateBp is:\n\t"
	.size	.L.str.9, 21

	.type	privateBp,@object       # @privateBp
	.comm	privateBp,16,16
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\nthe sandbox_B_datacapis:\n\t"
	.size	.L.str.10, 28

	.type	sandbox_B_datacap,@object # @sandbox_B_datacap
	.local	sandbox_B_datacap
	.comm	sandbox_B_datacap,16,16
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"printing in sandbox B\n"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"shared data: %d\n"
	.size	.L.str.12, 17

	.type	sharedp,@object         # @sharedp
	.comm	sharedp,16,16
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"A private data: %d\n"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"B private data: %d\n"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"begin.\n"
	.size	.L.str.15, 8

	.type	sandbox_A_sealcap,@object # @sandbox_A_sealcap
	.local	sandbox_A_sealcap
	.comm	sandbox_A_sealcap,16,16
	.type	sandbox_B_sealcap,@object # @sandbox_B_sealcap
	.local	sandbox_B_sealcap
	.comm	sandbox_B_sealcap,16,16
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
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"done."
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"hello world\n"
	.size	.L.str.17, 13

	.type	shared,@object          # @shared
	.local	shared
	.comm	shared,64,64
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


	.ident	"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git e914474cc8618f40fc08dd4f9a57808efcf965a6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sandboxA_print
	.addrsig_sym printf
	.addrsig_sym sleep
	.addrsig_sym strcpy
	.addrsig_sym cheritest_ccall_setup
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
	.addrsig_sym sandbox_A_sealcap
	.addrsig_sym sandbox_B_sealcap
	.addrsig_sym sandbox_A_codecap
	.addrsig_sym privateA
	.addrsig_sym privateB
	.addrsig_sym privateDummy
	.addrsig_sym shared
	.text
