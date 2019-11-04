; ModuleID = 'pass_test.c'
source_filename = "pass_test.c"
target datalayout = "E-m:e-pf200:128:128:128:64-i8:8:32-i16:16:32-i64:64-n32:64-S128"
target triple = "cheri-unknown-freebsd"

%struct.thread = type { i32, %struct.pcb* }
%struct.pcb = type <{ %struct.thread*, %struct.thread*, i32 }>

@thread01 = global %struct.thread { i32 1, %struct.pcb* null }, align 8, !dbg !0
@pcb01 = global %struct.pcb zeroinitializer, align 2, !dbg !21
@pcb03 = constant %struct.pcb <{ %struct.thread* @thread01, %struct.thread* @thread01, i32 111 }>, align 2, !dbg !24
@.str = private unnamed_addr constant [44 x i8] c"the pcb struct contains 2 thread structs: \0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"the first thread struct: \0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09thread addr: 0x%p \0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09td_int: %d \0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\09pcb addr: 0x%p \0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"hello pass_test\0A\00", align 1

; Function Attrs: noinline nounwind optnone privilege_function
define chericcallcce void @init_struct(%struct.pcb* %pcb) #0 !dbg !32 {
entry:
  %pcb.addr = alloca %struct.pcb*, align 8
  store %struct.pcb* %pcb, %struct.pcb** %pcb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcb** %pcb.addr, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !38
  %pcb_td1 = getelementptr inbounds %struct.pcb, %struct.pcb* %0, i32 0, i32 0, !dbg !39
  store %struct.thread* @thread01, %struct.thread** %pcb_td1, align 2, !dbg !40
  %1 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !41
  %pcb_int = getelementptr inbounds %struct.pcb, %struct.pcb* %1, i32 0, i32 2, !dbg !42
  store i32 1000, i32* %pcb_int, align 2, !dbg !43
  %call = call noalias i8* @malloc(i64 zeroext 16) #5, !dbg !44
  %2 = bitcast i8* %call to %struct.thread*, !dbg !45
  %3 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !46
  %pcb_td2 = getelementptr inbounds %struct.pcb, %struct.pcb* %3, i32 0, i32 1, !dbg !47
  store %struct.thread* %2, %struct.thread** %pcb_td2, align 2, !dbg !48
  store i32 100, i32* getelementptr inbounds (%struct.thread, %struct.thread* @thread01, i32 0, i32 0), align 8, !dbg !49
  %4 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !50
  store %struct.pcb* %4, %struct.pcb** getelementptr inbounds (%struct.thread, %struct.thread* @thread01, i32 0, i32 1), align 8, !dbg !51
  %5 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !52
  %pcb_td21 = getelementptr inbounds %struct.pcb, %struct.pcb* %5, i32 0, i32 1, !dbg !53
  %6 = load %struct.thread*, %struct.thread** %pcb_td21, align 2, !dbg !53
  %td_int = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0, !dbg !54
  store i32 200, i32* %td_int, align 8, !dbg !55
  %7 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !56
  %8 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !57
  %pcb_td22 = getelementptr inbounds %struct.pcb, %struct.pcb* %8, i32 0, i32 1, !dbg !58
  %9 = load %struct.thread*, %struct.thread** %pcb_td22, align 2, !dbg !58
  %td_pcb = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1, !dbg !59
  store %struct.pcb* %7, %struct.pcb** %td_pcb, align 8, !dbg !60
  ret void, !dbg !61
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: allocsize(0)
declare noalias i8* @malloc(i64 zeroext) #2

; Function Attrs: noinline nounwind optnone
define void @use_struct(%struct.pcb* %pcb) #3 !dbg !62 {
entry:
  %pcb.addr = alloca %struct.pcb*, align 8
  store %struct.pcb* %pcb, %struct.pcb** %pcb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pcb** %pcb.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)), !dbg !68
  %call1 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !69
  %0 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !70
  %pcb_td1 = getelementptr inbounds %struct.pcb, %struct.pcb* %0, i32 0, i32 0, !dbg !71
  %1 = load %struct.thread*, %struct.thread** %pcb_td1, align 2, !dbg !71
  %call2 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.thread* %1), !dbg !72
  %2 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !73
  %pcb_td13 = getelementptr inbounds %struct.pcb, %struct.pcb* %2, i32 0, i32 0, !dbg !74
  %3 = load %struct.thread*, %struct.thread** %pcb_td13, align 2, !dbg !74
  %td_int = getelementptr inbounds %struct.thread, %struct.thread* %3, i32 0, i32 0, !dbg !75
  %4 = load i32, i32* %td_int, align 8, !dbg !75
  %call4 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 signext %4), !dbg !76
  %5 = load %struct.pcb*, %struct.pcb** %pcb.addr, align 8, !dbg !77
  %pcb_td15 = getelementptr inbounds %struct.pcb, %struct.pcb* %5, i32 0, i32 0, !dbg !78
  %6 = load %struct.thread*, %struct.thread** %pcb_td15, align 2, !dbg !78
  %td_pcb = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1, !dbg !79
  %7 = load %struct.pcb*, %struct.pcb** %td_pcb, align 8, !dbg !79
  %call6 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.pcb* %7), !dbg !80
  ret void, !dbg !81
}

declare signext i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone
define signext i32 @main() #3 !dbg !82 {
entry:
  %pcb00 = alloca %struct.pcb, align 2
  call void @llvm.dbg.declare(metadata %struct.pcb* %pcb00, metadata !85, metadata !DIExpression()), !dbg !86
  call chericcallcce void @init_struct(%struct.pcb* %pcb00), !dbg !87
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)), !dbg !88
  call chericcallcce void @init_struct(%struct.pcb* @pcb01), !dbg !89
  call void @use_struct(%struct.pcb* @pcb01), !dbg !90
  call void @use_struct(%struct.pcb* @pcb03), !dbg !91
  ret i32 0, !dbg !92
}

attributes #0 = { noinline nounwind optnone privilege_function "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #5 = { allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thread01", scope: !2, file: !3, line: 50, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 (git@github.com:tupipa/llvm-project.git 281eebb4f2c5ed7bb4c726859ff4e7acc36ccac6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !20, nameTableKind: None)
!3 = !DIFile(filename: "pass_test.c", directory: "/root/cheri/os_bench/cheritypes/pass_test")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !3, line: 37, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread", file: !3, line: 39, size: 128, elements: !9)
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "td_int", scope: !8, file: !3, line: 40, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "td_pcb", scope: !8, file: !3, line: 41, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcb", file: !3, line: 44, size: 160, align: 16, elements: !15)
!15 = !{!16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_td1", scope: !14, file: !3, line: 45, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_td2", scope: !14, file: !3, line: 46, baseType: !17, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_int", scope: !14, file: !3, line: 47, baseType: !11, size: 32, offset: 128)
!20 = !{!0, !21, !24}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "pcb01", scope: !2, file: !3, line: 52, type: !23, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcb_t", file: !3, line: 36, baseType: !14)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "pcb03", scope: !2, file: !3, line: 54, type: !26, isLocal: false, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!27 = !{i32 2, !"Dwarf Version", i32 2}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 1}
!31 = !{!"clang version 10.0.0 (git@github.com:tupipa/llvm-project.git 281eebb4f2c5ed7bb4c726859ff4e7acc36ccac6)"}
!32 = distinct !DISubprogram(name: "init_struct", scope: !3, file: !3, line: 57, type: !33, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!36 = !DILocalVariable(name: "pcb", arg: 1, scope: !32, file: !3, line: 57, type: !35)
!37 = !DILocation(line: 57, column: 58, scope: !32)
!38 = !DILocation(line: 59, column: 5, scope: !32)
!39 = !DILocation(line: 59, column: 10, scope: !32)
!40 = !DILocation(line: 59, column: 18, scope: !32)
!41 = !DILocation(line: 61, column: 5, scope: !32)
!42 = !DILocation(line: 61, column: 10, scope: !32)
!43 = !DILocation(line: 61, column: 18, scope: !32)
!44 = !DILocation(line: 63, column: 33, scope: !32)
!45 = !DILocation(line: 63, column: 20, scope: !32)
!46 = !DILocation(line: 63, column: 5, scope: !32)
!47 = !DILocation(line: 63, column: 10, scope: !32)
!48 = !DILocation(line: 63, column: 18, scope: !32)
!49 = !DILocation(line: 65, column: 21, scope: !32)
!50 = !DILocation(line: 66, column: 23, scope: !32)
!51 = !DILocation(line: 66, column: 21, scope: !32)
!52 = !DILocation(line: 68, column: 5, scope: !32)
!53 = !DILocation(line: 68, column: 10, scope: !32)
!54 = !DILocation(line: 68, column: 19, scope: !32)
!55 = !DILocation(line: 68, column: 26, scope: !32)
!56 = !DILocation(line: 69, column: 28, scope: !32)
!57 = !DILocation(line: 69, column: 5, scope: !32)
!58 = !DILocation(line: 69, column: 10, scope: !32)
!59 = !DILocation(line: 69, column: 19, scope: !32)
!60 = !DILocation(line: 69, column: 26, scope: !32)
!61 = !DILocation(line: 71, column: 1, scope: !32)
!62 = distinct !DISubprogram(name: "use_struct", scope: !3, file: !3, line: 73, type: !63, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!66 = !DILocalVariable(name: "pcb", arg: 1, scope: !62, file: !3, line: 73, type: !65)
!67 = !DILocation(line: 73, column: 33, scope: !62)
!68 = !DILocation(line: 75, column: 5, scope: !62)
!69 = !DILocation(line: 76, column: 5, scope: !62)
!70 = !DILocation(line: 77, column: 38, scope: !62)
!71 = !DILocation(line: 77, column: 43, scope: !62)
!72 = !DILocation(line: 77, column: 5, scope: !62)
!73 = !DILocation(line: 78, column: 31, scope: !62)
!74 = !DILocation(line: 78, column: 36, scope: !62)
!75 = !DILocation(line: 78, column: 47, scope: !62)
!76 = !DILocation(line: 78, column: 5, scope: !62)
!77 = !DILocation(line: 79, column: 35, scope: !62)
!78 = !DILocation(line: 79, column: 40, scope: !62)
!79 = !DILocation(line: 79, column: 51, scope: !62)
!80 = !DILocation(line: 79, column: 5, scope: !62)
!81 = !DILocation(line: 81, column: 1, scope: !62)
!82 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 83, type: !83, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!83 = !DISubroutineType(types: !84)
!84 = !{!11}
!85 = !DILocalVariable(name: "pcb00", scope: !82, file: !3, line: 85, type: !23)
!86 = !DILocation(line: 85, column: 21, scope: !82)
!87 = !DILocation(line: 87, column: 5, scope: !82)
!88 = !DILocation(line: 89, column: 5, scope: !82)
!89 = !DILocation(line: 91, column: 5, scope: !82)
!90 = !DILocation(line: 93, column: 5, scope: !82)
!91 = !DILocation(line: 94, column: 5, scope: !82)
!92 = !DILocation(line: 96, column: 1, scope: !82)
