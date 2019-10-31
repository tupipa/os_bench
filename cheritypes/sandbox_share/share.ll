; ModuleID = 'share.c'
source_filename = "share.c"
target datalayout = "E-m:e-pf200:128:128:128:64-i8:8:32-i16:16:32-i64:64-n32:64-S128"
target triple = "cheri-unknown-freebsd"

%struct.sandbox_data = type { i32, [28 x i8], [32 x i8] }

@privateAp = common global %struct.sandbox_data addrspace(200)* null, align 16
@privateBp = common global %struct.sandbox_data addrspace(200)* null, align 16
@.str = private unnamed_addr constant [23 x i8] c"printing in sandbox B\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"shared data: %d\0A\00", align 1
@sharedp = common global %struct.sandbox_data addrspace(200)* null, align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"A private data: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"B private data: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"begin.\0A\00", align 1
@libcheri_sealing_root = internal global i8 addrspace(200)* null, align 16
@__func__.cheritest_ccall_setup = private unnamed_addr constant [22 x i8] c"cheritest_ccall_setup\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"share.c\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"(cheri_getperm(libcheri_sealing_root) & CHERI_PERM_SEAL ) != 0\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"(cheri_getperm(libcheri_sealing_root) & CHERI_PERM_UNSEAL ) != 0\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"cheri_getlen(libcheri_sealing_root) != 0\00", align 1
@sandbox_A_sealcap = internal global i8 addrspace(200)* null, align 16
@sandbox_B_sealcap = internal global i8 addrspace(200)* null, align 16
@.str.9 = private unnamed_addr constant [61 x i8] c"(cheri_getperm(sandbox_A_sealcap) & CHERI_PERM_UNSEAL ) != 0\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"(cheri_getperm(sandbox_B_sealcap) & CHERI_PERM_UNSEAL ) != 0\00", align 1
@sandbox_A_codecap = internal global i8 addrspace(200)* null, align 16
@.str.11 = private unnamed_addr constant [29 x i8] c"\09creating data cap (IDC)...\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"tag %ju s %ju perms %08jx type %016jx\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"\09base %016jx length %016jx\0A\00", align 1
@privateA = internal global %struct.sandbox_data zeroinitializer, align 64
@privateB = internal global %struct.sandbox_data zeroinitializer, align 64
@sandbox_A_datacap = internal global %struct.sandbox_data addrspace(200)* null, align 16
@sandbox_B_datacap = internal global %struct.sandbox_data addrspace(200)* null, align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"hello world\0A\00", align 1
@shared = internal global %struct.sandbox_data zeroinitializer, align 64
@.str.16 = private unnamed_addr constant [17 x i8] c"cheritest setup\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"now start testing...\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"done test with sandboxA.\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define chericcallcce void @sandboxA_print() #0 {
entry:
  %0 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %0, i32 0, i32 0
  store i32 1000, i32 addrspace(200)* %data, align 32
  %1 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %data1 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %1, i32 0, i32 0
  %2 = load i32, i32 addrspace(200)* %data1, align 32
  %3 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data2 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %3, i32 0, i32 0
  store i32 %2, i32 addrspace(200)* %data2, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @sandboxA_subprint() #0 {
entry:
  call void asm sideeffect "CSetDefault $$c26\0A\09", "~{$1}"() #4, !srcloc !3
  %0 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %0, i32 0, i32 0
  store i32 1111, i32 addrspace(200)* %data, align 32
  %1 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %data1 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %1, i32 0, i32 0
  %2 = load i32, i32 addrspace(200)* %data1, align 32
  %3 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data2 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %3, i32 0, i32 0
  store i32 %2, i32 addrspace(200)* %data2, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @sandboxB_print() #0 {
entry:
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %0 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %data = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %0, i32 0, i32 0
  store i32 2000, i32 addrspace(200)* %data, align 32
  %1 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data1 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %1, i32 0, i32 0
  store i32 2000, i32 addrspace(200)* %data1, align 32
  %2 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @sharedp, align 16
  %data2 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %2, i32 0, i32 0
  %3 = load i32, i32 addrspace(200)* %data2, align 32
  %call3 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 signext %3)
  %4 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data4 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %4, i32 0, i32 0
  %5 = load i32, i32 addrspace(200)* %data4, align 32
  %call5 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 signext %5)
  %6 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %data6 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %6, i32 0, i32 0
  %7 = load i32, i32 addrspace(200)* %data6, align 32
  %call7 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 signext %7)
  ret void
}

declare signext i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define void @sandboxB_subprint() #0 {
entry:
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %0 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %data = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %0, i32 0, i32 0
  store i32 2000, i32 addrspace(200)* %data, align 32
  %1 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data1 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %1, i32 0, i32 0
  store i32 2000, i32 addrspace(200)* %data1, align 32
  %2 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @sharedp, align 16
  %data2 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %2, i32 0, i32 0
  %3 = load i32, i32 addrspace(200)* %data2, align 32
  %call3 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 signext %3)
  %4 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %data4 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %4, i32 0, i32 0
  %5 = load i32, i32 addrspace(200)* %data4, align 32
  %call5 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 signext %5)
  %6 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %data6 = getelementptr inbounds %struct.sandbox_data, %struct.sandbox_data addrspace(200)* %6, i32 0, i32 0
  %7 = load i32, i32 addrspace(200)* %data6, align 32
  %call7 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 signext %7)
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @cheritest_ccall_setup() #0 {
entry:
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %call1 = call signext i32 @sysarch(i32 signext 6, i8* bitcast (i8 addrspace(200)** @libcheri_sealing_root to i8*))
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 addrspace(200)* null, i8 addrspace(200)** @libcheri_sealing_root, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i8 addrspace(200)*, i8 addrspace(200)** @libcheri_sealing_root, align 16
  %1 = call i64 @llvm.cheri.cap.perms.get.i64(i8 addrspace(200)* %0)
  %and = and i64 %1, 128
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cheritest_ccall_setup, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 signext 212, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0)) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i8 addrspace(200)*, i8 addrspace(200)** @libcheri_sealing_root, align 16
  %4 = call i64 @llvm.cheri.cap.perms.get.i64(i8 addrspace(200)* %3)
  %and3 = and i64 %4, 512
  %cmp4 = icmp ne i64 %and3, 0
  br i1 %cmp4, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  call void @__assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cheritest_ccall_setup, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 signext 213, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end7

cond.end7:                                        ; preds = %5, %cond.true5
  %6 = load i8 addrspace(200)*, i8 addrspace(200)** @libcheri_sealing_root, align 16
  %7 = call i64 @llvm.cheri.cap.length.get.i64(i8 addrspace(200)* %6)
  %cmp8 = icmp ne i64 %7, 0
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end7
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end7
  call void @__assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cheritest_ccall_setup, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 signext 214, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0)) #5
  unreachable

8:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %8, %cond.true9
  %9 = load i8 addrspace(200)*, i8 addrspace(200)** @libcheri_sealing_root, align 16
  store i8 addrspace(200)* %9, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %call12 = call i8 addrspace(200)* @libcheri_type_alloc()
  store i8 addrspace(200)* %call12, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %call13 = call i8 addrspace(200)* @libcheri_type_alloc()
  store i8 addrspace(200)* %call13, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %call14 = call i8 addrspace(200)* @libcheri_type_alloc()
  store i8 addrspace(200)* %call14, i8 addrspace(200)** @sandbox_B_sealcap, align 16
  %call15 = call i8 addrspace(200)* @libcheri_type_alloc()
  store i8 addrspace(200)* %call15, i8 addrspace(200)** @sandbox_B_sealcap, align 16
  %10 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %11 = call i64 @llvm.cheri.cap.perms.get.i64(i8 addrspace(200)* %10)
  %and16 = and i64 %11, 512
  %cmp17 = icmp ne i64 %and16, 0
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end11
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end11
  call void @__assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cheritest_ccall_setup, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 signext 225, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #5
  unreachable

12:                                               ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %12, %cond.true18
  %13 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_B_sealcap, align 16
  %14 = call i64 @llvm.cheri.cap.perms.get.i64(i8 addrspace(200)* %13)
  %and21 = and i64 %14, 512
  %cmp22 = icmp ne i64 %and21, 0
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end20
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  call void @__assert(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cheritest_ccall_setup, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 signext 226, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0)) #5
  unreachable

15:                                               ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %15, %cond.true23
  %16 = call i8 addrspace(200)* @llvm.cheri.pcc.get()
  store i8 addrspace(200)* %16, i8 addrspace(200)** @sandbox_A_codecap, align 16
  %17 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_codecap, align 16
  %18 = call i8 addrspace(200)* @llvm.cheri.cap.address.set.i64(i8 addrspace(200)* %17, i64 ptrtoint (void ()* @sandboxA_print to i64))
  store i8 addrspace(200)* %18, i8 addrspace(200)** @sandbox_A_codecap, align 16
  %19 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_codecap, align 16
  %20 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %21 = call i8 addrspace(200)* @llvm.cheri.cap.seal(i8 addrspace(200)* %19, i8 addrspace(200)* %20)
  store i8 addrspace(200)* %21, i8 addrspace(200)** @sandbox_A_codecap, align 16
  %call26 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %do.body

do.body:                                          ; preds = %cond.end25
  %22 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %23 = call i1 @llvm.cheri.cap.tag.get(i8 addrspace(200)* %22)
  %conv = zext i1 %23 to i64
  %24 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %25 = call i1 @llvm.cheri.cap.sealed.get(i8 addrspace(200)* %24)
  %conv27 = zext i1 %25 to i64
  %26 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %27 = call i64 @llvm.cheri.cap.perms.get.i64(i8 addrspace(200)* %26)
  %28 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %29 = call i64 @llvm.cheri.cap.type.get.i64(i8 addrspace(200)* %28)
  %call28 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i64 zeroext %conv, i64 zeroext %conv27, i64 zeroext %27, i64 zeroext %29)
  %30 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %31 = call i64 @llvm.cheri.cap.base.get.i64(i8 addrspace(200)* %30)
  %32 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %33 = call i64 @llvm.cheri.cap.length.get.i64(i8 addrspace(200)* %32)
  %call29 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i64 zeroext %31, i64 zeroext %33)
  br label %do.end

do.end:                                           ; preds = %do.body
  %34 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %35 = bitcast i8 addrspace(200)* %34 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %35, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %36 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %37 = bitcast %struct.sandbox_data addrspace(200)* %36 to i8 addrspace(200)*
  %38 = call i8 addrspace(200)* @llvm.cheri.cap.address.set.i64(i8 addrspace(200)* %37, i64 ptrtoint (%struct.sandbox_data* @privateA to i64))
  %39 = bitcast i8 addrspace(200)* %38 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %39, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %40 = call i8 addrspace(200)* @llvm.mips.idc.get()
  %41 = bitcast i8 addrspace(200)* %40 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %41, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %42 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %43 = bitcast %struct.sandbox_data addrspace(200)* %42 to i8 addrspace(200)*
  %44 = call i8 addrspace(200)* @llvm.cheri.cap.address.set.i64(i8 addrspace(200)* %43, i64 ptrtoint (%struct.sandbox_data* @privateB to i64))
  %45 = bitcast i8 addrspace(200)* %44 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %45, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %46 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  store %struct.sandbox_data addrspace(200)* %46, %struct.sandbox_data addrspace(200)** @sandbox_A_datacap, align 16
  %47 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  store %struct.sandbox_data addrspace(200)* %47, %struct.sandbox_data addrspace(200)** @sandbox_B_datacap, align 16
  %48 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @sandbox_A_datacap, align 16
  %49 = bitcast %struct.sandbox_data addrspace(200)* %48 to i8 addrspace(200)*
  %50 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %51 = call i8 addrspace(200)* @llvm.cheri.cap.seal(i8 addrspace(200)* %49, i8 addrspace(200)* %50)
  %52 = bitcast i8 addrspace(200)* %51 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %52, %struct.sandbox_data addrspace(200)** @sandbox_A_datacap, align 16
  %53 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @sandbox_B_datacap, align 16
  %54 = bitcast %struct.sandbox_data addrspace(200)* %53 to i8 addrspace(200)*
  %55 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_B_sealcap, align 16
  %56 = call i8 addrspace(200)* @llvm.cheri.cap.seal(i8 addrspace(200)* %54, i8 addrspace(200)* %55)
  %57 = bitcast i8 addrspace(200)* %56 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %57, %struct.sandbox_data addrspace(200)** @sandbox_B_datacap, align 16
  %58 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %59 = bitcast %struct.sandbox_data addrspace(200)* %58 to i8 addrspace(200)*
  %60 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %61 = call i8 addrspace(200)* @llvm.cheri.cap.seal(i8 addrspace(200)* %59, i8 addrspace(200)* %60)
  %62 = bitcast i8 addrspace(200)* %61 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %62, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %63 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %64 = bitcast %struct.sandbox_data addrspace(200)* %63 to i8 addrspace(200)*
  %65 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_sealcap, align 16
  %66 = call i8 addrspace(200)* @llvm.cheri.cap.unseal(i8 addrspace(200)* %64, i8 addrspace(200)* %65)
  %67 = bitcast i8 addrspace(200)* %66 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %67, %struct.sandbox_data addrspace(200)** @privateAp, align 16
  %68 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %69 = bitcast %struct.sandbox_data addrspace(200)* %68 to i8 addrspace(200)*
  %70 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_B_sealcap, align 16
  %71 = call i8 addrspace(200)* @llvm.cheri.cap.seal(i8 addrspace(200)* %69, i8 addrspace(200)* %70)
  %72 = bitcast i8 addrspace(200)* %71 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %72, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %73 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %74 = bitcast %struct.sandbox_data addrspace(200)* %73 to i8 addrspace(200)*
  %75 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_B_sealcap, align 16
  %76 = call i8 addrspace(200)* @llvm.cheri.cap.unseal(i8 addrspace(200)* %74, i8 addrspace(200)* %75)
  %77 = bitcast i8 addrspace(200)* %76 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %77, %struct.sandbox_data addrspace(200)** @privateBp, align 16
  %78 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @sandbox_B_datacap, align 16
  %79 = bitcast %struct.sandbox_data addrspace(200)* %78 to i8 addrspace(200)*
  %80 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_B_sealcap, align 16
  %81 = call i8 addrspace(200)* @llvm.cheri.cap.unseal(i8 addrspace(200)* %79, i8 addrspace(200)* %80)
  %82 = bitcast i8 addrspace(200)* %81 to %struct.sandbox_data addrspace(200)*
  store %struct.sandbox_data addrspace(200)* %82, %struct.sandbox_data addrspace(200)** @sandbox_B_datacap, align 16
  %call30 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare signext i32 @sysarch(i32 signext, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.cheri.cap.perms.get.i64(i8 addrspace(200)*) #2

; Function Attrs: noreturn
declare void @__assert(i8*, i8*, i32 signext, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.cheri.cap.length.get.i64(i8 addrspace(200)*) #2

declare i8 addrspace(200)* @libcheri_type_alloc() #1

; Function Attrs: nounwind readnone
declare i8 addrspace(200)* @llvm.cheri.pcc.get() #2

; Function Attrs: nounwind readnone
declare i8 addrspace(200)* @llvm.cheri.cap.address.set.i64(i8 addrspace(200)*, i64) #2

; Function Attrs: nounwind readnone
declare i8 addrspace(200)* @llvm.cheri.cap.seal(i8 addrspace(200)*, i8 addrspace(200)*) #2

; Function Attrs: nounwind readnone
declare i1 @llvm.cheri.cap.tag.get(i8 addrspace(200)*) #2

; Function Attrs: nounwind readnone
declare i8 addrspace(200)* @llvm.mips.idc.get() #2

; Function Attrs: nounwind readnone
declare i1 @llvm.cheri.cap.sealed.get(i8 addrspace(200)*) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.cheri.cap.type.get.i64(i8 addrspace(200)*) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.cheri.cap.base.get.i64(i8 addrspace(200)*) #2

; Function Attrs: nounwind readnone
declare i8 addrspace(200)* @llvm.cheri.cap.unseal(i8 addrspace(200)*, i8 addrspace(200)*) #2

; Function Attrs: noinline nounwind optnone
define void @test_sandboxA() #0 {
entry:
  %0 = load i8 addrspace(200)*, i8 addrspace(200)** @sandbox_A_codecap, align 16
  %1 = load %struct.sandbox_data addrspace(200)*, %struct.sandbox_data addrspace(200)** @sandbox_A_datacap, align 16
  %2 = bitcast %struct.sandbox_data addrspace(200)* %1 to i8 addrspace(200)*
  call chericcallcc void @sandbox_invoke(i8 addrspace(200)* %0, i8 addrspace(200)* %2)
  call void @cheritest_success() #5
  unreachable
}

declare chericcallcc void @sandbox_invoke(i8 addrspace(200)*, i8 addrspace(200)*) #1

; Function Attrs: noreturn
declare void @cheritest_success() #3

; Function Attrs: noinline nounwind optnone
define signext i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store %struct.sandbox_data addrspace(200)* addrspacecast (%struct.sandbox_data* @privateA to %struct.sandbox_data addrspace(200)*), %struct.sandbox_data addrspace(200)** @privateAp, align 16
  store %struct.sandbox_data addrspace(200)* addrspacecast (%struct.sandbox_data* @privateB to %struct.sandbox_data addrspace(200)*), %struct.sandbox_data addrspace(200)** @privateBp, align 16
  store %struct.sandbox_data addrspace(200)* addrspacecast (%struct.sandbox_data* @shared to %struct.sandbox_data addrspace(200)*), %struct.sandbox_data addrspace(200)** @sharedp, align 16
  %call1 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  call void @cheritest_ccall_setup()
  %call2 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  call void @test_sandboxA()
  %call3 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"clang version 9.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git e914474cc8618f40fc08dd4f9a57808efcf965a6)"}
!3 = !{i32 1795, i32 1814}
