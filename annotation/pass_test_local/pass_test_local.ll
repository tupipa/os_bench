; ModuleID = 'pass_test_local.c'
source_filename = "pass_test_local.c"
target datalayout = "E-m:e-pf200:128:128:128:64-i8:8:32-i16:16:32-i64:64-n32:64-S128"
target triple = "cheri-unknown-freebsd"

%struct.thread = type { i32, %struct.pcb* }
%struct.pcb = type { %struct.thread*, %struct.thread*, %struct.thread*, i32 }

@thread_global01 = global %struct.thread { i32 1, %struct.pcb* null }, align 8, !dbg !0
@pcb_global01 = global %struct.pcb zeroinitializer, align 8, !dbg !22
@pcb_global02 = constant %struct.pcb { %struct.thread* @thread_global01, %struct.thread* @thread_global01, %struct.thread* @thread_global01, i32 111 }, align 8, !dbg !25
@init_struct.thread_local_static = internal global %struct.thread { i32 2, %struct.pcb* null }, align 8, !dbg !28
@.str = private unnamed_addr constant [44 x i8] c"the pcb struct contains 2 thread structs: \0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"the first thread struct: \0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09thread addr: 0x%p \0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09td_int: %d \0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\09pcb addr: 0x%p \0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"hello pass_test\0A\00", align 1
@pcb_global03_static = internal global %struct.pcb zeroinitializer, align 8, !dbg !34

; Function Attrs: noinline nounwind optnone
define void @init_struct(%struct.pcb* %pcb) #0 !dbg !30 {
entry:
  %pcb.addr = alloca %struct.pcb*, align 8
  store %struct.pcb* %pcb, %struct.pcb** %pcb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcb** %pcb.addr, metadata !41, metadata !DIExpression()), !dbg !42
  %0 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !43
  %pcb_td1 = getelementptr inbounds %struct.pcb, %struct.pcb* %0, i32 0, i32 0, !dbg !44
  store %struct.thread* @thread_global01, %struct.thread** %pcb_td1, align 8, !dbg !45
  %1 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !46
  %pcb_td3 = getelementptr inbounds %struct.pcb, %struct.pcb* %1, i32 0, i32 2, !dbg !47
  store %struct.thread* @init_struct.thread_local_static, %struct.thread** %pcb_td3, align 8, !dbg !48
  %2 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !49
  %pcb_int = getelementptr inbounds %struct.pcb, %struct.pcb* %2, i32 0, i32 3, !dbg !50
  store i32 1000, i32* %pcb_int, align 8, !dbg !51
  %call = call noalias i8* @malloc(i64 zeroext 16) #4, !dbg !52
  %3 = bitcast i8* %call to %struct.thread*, !dbg !53
  %4 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !54
  %pcb_td2 = getelementptr inbounds %struct.pcb, %struct.pcb* %4, i32 0, i32 1, !dbg !55
  store %struct.thread* %3, %struct.thread** %pcb_td2, align 8, !dbg !56
  store i32 100, i32* getelementptr inbounds (%struct.thread, %struct.thread* @thread_global01, i32 0, i32 0), align 8, !dbg !57
  %5 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !58
  store %struct.pcb* %5, %struct.pcb** getelementptr inbounds (%struct.thread, %struct.thread* @thread_global01, i32 0, i32 1), align 8, !dbg !59
  %6 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !60
  %pcb_td21 = getelementptr inbounds %struct.pcb, %struct.pcb* %6, i32 0, i32 1, !dbg !61
  %7 = load %struct.thread*, %struct.thread** %pcb_td21, align 8, !dbg !61
  %td_int = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0, !dbg !62
  store i32 200, i32* %td_int, align 8, !dbg !63
  %8 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !64
  %9 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !65
  %pcb_td22 = getelementptr inbounds %struct.pcb, %struct.pcb* %9, i32 0, i32 1, !dbg !66
  %10 = load %struct.thread*, %struct.thread** %pcb_td22, align 8, !dbg !66
  %td_pcb = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 1, !dbg !67
  store %struct.pcb* %8, %struct.pcb** %td_pcb, align 8, !dbg !68
  ret void, !dbg !69
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: allocsize(0)
declare noalias i8* @malloc(i64 zeroext) #2

; Function Attrs: noinline nounwind optnone
define void @use_struct(%struct.pcb* %pcb) #0 !dbg !70 {
entry:
  %pcb.addr = alloca %struct.pcb*, align 8
  store %struct.pcb* %pcb, %struct.pcb** %pcb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcb** %pcb.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)), !dbg !76
  %call1 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !77
  %0 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !78
  %pcb_td1 = getelementptr inbounds %struct.pcb, %struct.pcb* %0, i32 0, i32 0, !dbg !79
  %1 = load %struct.thread*, %struct.thread** %pcb_td1, align 8, !dbg !79
  %call2 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.thread* %1), !dbg !80
  %2 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !81
  %pcb_td13 = getelementptr inbounds %struct.pcb, %struct.pcb* %2, i32 0, i32 0, !dbg !82
  %3 = load %struct.thread*, %struct.thread** %pcb_td13, align 8, !dbg !82
  %td_int = getelementptr inbounds %struct.thread, %struct.thread* %3, i32 0, i32 0, !dbg !83
  %4 = load i32, i32* %td_int, align 8, !dbg !83
  %call4 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 signext %4), !dbg !84
  %5 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !85
  %pcb_td15 = getelementptr inbounds %struct.pcb, %struct.pcb* %5, i32 0, i32 0, !dbg !86
  %6 = load %struct.thread*, %struct.thread** %pcb_td15, align 8, !dbg !86
  %td_pcb = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1, !dbg !87
  %7 = load %struct.pcb*, %struct.pcb** %td_pcb, align 8, !dbg !87
  %call6 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.pcb* %7), !dbg !88
  ret void, !dbg !89
}

declare signext i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone
define signext i32 @main() #0 !dbg !90 {
entry:
  %pcb_local = alloca %struct.pcb, align 8
  call void @llvm.dbg.declare(metadata %struct.pcb* %pcb_local, metadata !93, metadata !DIExpression()), !dbg !94
  call void @init_struct(%struct.pcb* %pcb_local), !dbg !95
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)), !dbg !96
  call void @init_struct(%struct.pcb* @pcb_global01), !dbg !97
  call void @init_struct(%struct.pcb* @pcb_global03_static), !dbg !98
  call void @use_struct(%struct.pcb* @pcb_global01), !dbg !99
  call void @use_struct(%struct.pcb* @pcb_global02), !dbg !100
  ret i32 0, !dbg !101
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thread_global01", scope: !2, file: !3, line: 48, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 (git@github.com:tupipa/llvm-project.git 9e31d0f74fc4044bda230398bb7252abf2b4cd24)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, nameTableKind: None)
!3 = !DIFile(filename: "pass_test_local.c", directory: "/root/cheri/os_bench/annotation/pass_test_local")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !3, line: 34, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread", file: !3, line: 36, size: 128, elements: !9)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "td_int", scope: !8, file: !3, line: 37, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "td_pcb", scope: !8, file: !3, line: 38, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcb", file: !3, line: 41, size: 256, elements: !15)
!15 = !{!16, !18, !19, !20}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_td1", scope: !14, file: !3, line: 42, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_td2", scope: !14, file: !3, line: 43, baseType: !17, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_td3", scope: !14, file: !3, line: 44, baseType: !17, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_int", scope: !14, file: !3, line: 45, baseType: !11, size: 32, offset: 192)
!21 = !{!0, !22, !25, !28, !34}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "pcb_global01", scope: !2, file: !3, line: 50, type: !24, isLocal: false, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcb_t", file: !3, line: 33, baseType: !14)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "pcb_global02", scope: !2, file: !3, line: 52, type: !27, isLocal: false, isDefinition: true)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "thread_local_static", scope: !30, file: !3, line: 60, type: !7, isLocal: true, isDefinition: true)
!30 = distinct !DISubprogram(name: "init_struct", scope: !3, file: !3, line: 57, type: !31, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "pcb_global03_static", scope: !2, file: !3, line: 54, type: !24, isLocal: true, isDefinition: true)
!36 = !{i32 2, !"Dwarf Version", i32 2}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"PIC Level", i32 1}
!40 = !{!"clang version 10.0.0 (git@github.com:tupipa/llvm-project.git 9e31d0f74fc4044bda230398bb7252abf2b4cd24)"}
!41 = !DILocalVariable(name: "pcb", arg: 1, scope: !30, file: !3, line: 57, type: !33)
!42 = !DILocation(line: 57, column: 25, scope: !30)
!43 = !DILocation(line: 62, column: 5, scope: !30)
!44 = !DILocation(line: 62, column: 10, scope: !30)
!45 = !DILocation(line: 62, column: 18, scope: !30)
!46 = !DILocation(line: 63, column: 5, scope: !30)
!47 = !DILocation(line: 63, column: 10, scope: !30)
!48 = !DILocation(line: 63, column: 18, scope: !30)
!49 = !DILocation(line: 65, column: 5, scope: !30)
!50 = !DILocation(line: 65, column: 10, scope: !30)
!51 = !DILocation(line: 65, column: 18, scope: !30)
!52 = !DILocation(line: 67, column: 33, scope: !30)
!53 = !DILocation(line: 67, column: 20, scope: !30)
!54 = !DILocation(line: 67, column: 5, scope: !30)
!55 = !DILocation(line: 67, column: 10, scope: !30)
!56 = !DILocation(line: 67, column: 18, scope: !30)
!57 = !DILocation(line: 69, column: 28, scope: !30)
!58 = !DILocation(line: 70, column: 30, scope: !30)
!59 = !DILocation(line: 70, column: 28, scope: !30)
!60 = !DILocation(line: 72, column: 5, scope: !30)
!61 = !DILocation(line: 72, column: 10, scope: !30)
!62 = !DILocation(line: 72, column: 19, scope: !30)
!63 = !DILocation(line: 72, column: 26, scope: !30)
!64 = !DILocation(line: 73, column: 28, scope: !30)
!65 = !DILocation(line: 73, column: 5, scope: !30)
!66 = !DILocation(line: 73, column: 10, scope: !30)
!67 = !DILocation(line: 73, column: 19, scope: !30)
!68 = !DILocation(line: 73, column: 26, scope: !30)
!69 = !DILocation(line: 75, column: 1, scope: !30)
!70 = distinct !DISubprogram(name: "use_struct", scope: !3, file: !3, line: 77, type: !71, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!74 = !DILocalVariable(name: "pcb", arg: 1, scope: !70, file: !3, line: 77, type: !73)
!75 = !DILocation(line: 77, column: 33, scope: !70)
!76 = !DILocation(line: 79, column: 5, scope: !70)
!77 = !DILocation(line: 80, column: 5, scope: !70)
!78 = !DILocation(line: 81, column: 38, scope: !70)
!79 = !DILocation(line: 81, column: 43, scope: !70)
!80 = !DILocation(line: 81, column: 5, scope: !70)
!81 = !DILocation(line: 82, column: 31, scope: !70)
!82 = !DILocation(line: 82, column: 36, scope: !70)
!83 = !DILocation(line: 82, column: 47, scope: !70)
!84 = !DILocation(line: 82, column: 5, scope: !70)
!85 = !DILocation(line: 83, column: 35, scope: !70)
!86 = !DILocation(line: 83, column: 40, scope: !70)
!87 = !DILocation(line: 83, column: 51, scope: !70)
!88 = !DILocation(line: 83, column: 5, scope: !70)
!89 = !DILocation(line: 85, column: 1, scope: !70)
!90 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 87, type: !91, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!91 = !DISubroutineType(types: !92)
!92 = !{!11}
!93 = !DILocalVariable(name: "pcb_local", scope: !90, file: !3, line: 89, type: !24)
!94 = !DILocation(line: 89, column: 21, scope: !90)
!95 = !DILocation(line: 91, column: 5, scope: !90)
!96 = !DILocation(line: 93, column: 5, scope: !90)
!97 = !DILocation(line: 95, column: 5, scope: !90)
!98 = !DILocation(line: 96, column: 5, scope: !90)
!99 = !DILocation(line: 98, column: 5, scope: !90)
!100 = !DILocation(line: 99, column: 5, scope: !90)
!101 = !DILocation(line: 101, column: 1, scope: !90)
