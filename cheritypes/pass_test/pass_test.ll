; ModuleID = 'pass_test.c'
source_filename = "pass_test.c"
target datalayout = "E-m:e-pf200:128:128:128:64-i8:8:32-i16:16:32-i64:64-n32:64-S128"
target triple = "cheri-unknown-freebsd"

%struct.thread = type { i32, %struct.pcb* }
%struct.pcb = type { %struct.thread*, %struct.thread*, i32 }

@thread01 = global %struct.thread { i32 1, %struct.pcb* null }, align 8
@pcb01 = global %struct.pcb zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"the pcb 01 struct contains 2 thread structs: \0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"the first thread struct: \0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09thread addr: 0x%p \0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09td_int: %d \0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\09pcb addr: 0x%p \0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"hello pass_test\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define void @init_struct() #0 {
entry:
  store %struct.thread* @thread01, %struct.thread** getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 0), align 8
  store i32 1000, i32* getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 2), align 8
  %call = call noalias i8* @malloc(i64 zeroext 16) #3
  %0 = bitcast i8* %call to %struct.thread*
  store %struct.thread* %0, %struct.thread** getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 1), align 8
  store i32 100, i32* getelementptr inbounds (%struct.thread, %struct.thread* @thread01, i32 0, i32 0), align 8
  store %struct.pcb* @pcb01, %struct.pcb** getelementptr inbounds (%struct.thread, %struct.thread* @thread01, i32 0, i32 1), align 8
  %1 = load %struct.thread*, %struct.thread** getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 1), align 8
  %td_int = getelementptr inbounds %struct.thread, %struct.thread* %1, i32 0, i32 0
  store i32 200, i32* %td_int, align 8
  %2 = load %struct.thread*, %struct.thread** getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 1), align 8
  %td_pcb = getelementptr inbounds %struct.thread, %struct.thread* %2, i32 0, i32 1
  store %struct.pcb* @pcb01, %struct.pcb** %td_pcb, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare noalias i8* @malloc(i64 zeroext) #1

; Function Attrs: noinline nounwind optnone
define void @use_struct() #0 {
entry:
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %call1 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %0 = load %struct.thread*, %struct.thread** getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 0), align 8
  %call2 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.thread* %0)
  %1 = load %struct.thread*, %struct.thread** getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 0), align 8
  %td_int = getelementptr inbounds %struct.thread, %struct.thread* %1, i32 0, i32 0
  %2 = load i32, i32* %td_int, align 8
  %call3 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 signext %2)
  %3 = load %struct.thread*, %struct.thread** getelementptr inbounds (%struct.pcb, %struct.pcb* @pcb01, i32 0, i32 0), align 8
  %td_pcb = getelementptr inbounds %struct.thread, %struct.thread* %3, i32 0, i32 1
  %4 = load %struct.pcb*, %struct.pcb** %td_pcb, align 8
  %call4 = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.pcb* %4)
  ret void
}

declare signext i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define signext i32 @main() #0 {
entry:
  %call = call signext i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  call void @init_struct()
  call void @use_struct()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cheri128" "target-features"="+cheri128,+chericap,+soft-float,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"clang version 10.0.0 (git@github.com:tupipa/llvm-project.git 2d43bf4e37c38d2c153151a37cc67190e8c18631)"}
