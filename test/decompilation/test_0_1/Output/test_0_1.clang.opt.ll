; ModuleID = 'Output/test_0_1.clang.opt.bc'
source_filename = "Output/test_0_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl callback_sub_0;"
module asm "  .type callback_sub_0,@function"
module asm "callback_sub_0:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size callback_sub_0,0b-callback_sub_0;"
module asm "  .cfi_endproc;"
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [6 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d = internal constant %0 <{ [6 x i8] c"test \00" }>, align 64
@data_0x38 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"-\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 16, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 16, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 16, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %XDI, !mcsema_real_eip !5
  %20 = add i64 %1, -4, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %22, !mcsema_real_eip !6
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.5, !mcsema_real_eip !7
  %RDI_val.6 = load i64, i64* %XDI, !mcsema_real_eip !8
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !8
  %RDX_val.8 = load i64, i64* %XDX, !mcsema_real_eip !8
  %RCX_val.9 = load i64, i64* %XCX, !mcsema_real_eip !8
  %R8_val.10 = load i64, i64* %R8, !mcsema_real_eip !8
  %R9_val.11 = load i64, i64* %R9, !mcsema_real_eip !8
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !8
  %23 = inttoptr i64 %RSP_val.12 to i64*, !mcsema_real_eip !8
  %24 = load i64, i64* %23, !mcsema_real_eip !8
  %25 = add i64 %RSP_val.12, 8, !mcsema_real_eip !8
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !8
  %27 = load i64, i64* %26, !mcsema_real_eip !8
  %28 = add i64 %25, 8, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  %30 = load i64, i64* %29, !mcsema_real_eip !8
  %31 = add i64 %28, 8, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !8
  %33 = load i64, i64* %32, !mcsema_real_eip !8
  %34 = add i64 %31, 8, !mcsema_real_eip !8
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !8
  %36 = load i64, i64* %35, !mcsema_real_eip !8
  %37 = add i64 %34, 8, !mcsema_real_eip !8
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !8
  %39 = load i64, i64* %38, !mcsema_real_eip !8
  %40 = add i64 %37, 8, !mcsema_real_eip !8
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !8
  %42 = load i64, i64* %41, !mcsema_real_eip !8
  %43 = add i64 %40, 8, !mcsema_real_eip !8
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !8
  %45 = load i64, i64* %44, !mcsema_real_eip !8
  %46 = add i64 %43, 8, !mcsema_real_eip !8
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !8
  %48 = load i64, i64* %47, !mcsema_real_eip !8
  %49 = add i64 %46, 8, !mcsema_real_eip !8
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !8
  %51 = load i64, i64* %50, !mcsema_real_eip !8
  %52 = sub i64 %RSP_val.12, 8, !mcsema_real_eip !8
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !8
  store i64 -2415393069852865332, i64* %53, !mcsema_real_eip !8
  store i64 %52, i64* %XSP, !mcsema_real_eip !8
  %54 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 %RSI_val.7, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 %24, i64 %27, i64 %30, i64 %33, i64 %36, i64 %39, i64 %42, i64 %45, i64 %48, i64 %51), !mcsema_real_eip !8
  store i64 %54, i64* %XAX, !mcsema_real_eip !8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !9
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  store i1 false, i1* %SF, !mcsema_real_eip !9
  store i1 true, i1* %ZF, !mcsema_real_eip !9
  store i1 true, i1* %PF, !mcsema_real_eip !9
  store i1 undef, i1* %AF, !mcsema_real_eip !9
  store i64 0, i64* %XCX, !mcsema_real_eip !9
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !10
  %55 = add i64 %RBP_val.18, -8, !mcsema_real_eip !10
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !10
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !10
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.20, i32* %57, !mcsema_real_eip !10
  %ECX_val.22 = load i32, i32* %ECX.14, !mcsema_real_eip !11
  %58 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %58, i64* %XAX, !mcsema_real_eip !11
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !12
  %59 = add i64 16, %RSP_val.23, !mcsema_real_eip !12
  %60 = xor i64 %59, %RSP_val.23, !mcsema_real_eip !12
  %61 = xor i64 %60, 16, !mcsema_real_eip !12
  %62 = and i64 %61, 16, !mcsema_real_eip !12
  %63 = icmp ne i64 %62, 0, !mcsema_real_eip !12
  store i1 %63, i1* %AF, !mcsema_real_eip !12
  %64 = lshr i64 %59, 63, !mcsema_real_eip !12
  %65 = trunc i64 %64 to i1, !mcsema_real_eip !12
  store i1 %65, i1* %SF, !mcsema_real_eip !12
  %66 = icmp eq i64 %59, 0, !mcsema_real_eip !12
  store i1 %66, i1* %ZF, !mcsema_real_eip !12
  %67 = xor i64 %RSP_val.23, 16, !mcsema_real_eip !12
  %68 = xor i64 %67, -1, !mcsema_real_eip !12
  %69 = and i64 %68, %60, !mcsema_real_eip !12
  %70 = lshr i64 %69, 63, !mcsema_real_eip !12
  %71 = and i64 %70, 1, !mcsema_real_eip !12
  %72 = trunc i64 %71 to i1, !mcsema_real_eip !12
  store i1 %72, i1* %OF, !mcsema_real_eip !12
  %73 = trunc i64 %59 to i8, !mcsema_real_eip !12
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !12
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !12
  %76 = xor i1 %75, true, !mcsema_real_eip !12
  store i1 %76, i1* %PF, !mcsema_real_eip !12
  %77 = icmp ult i64 %59, %RSP_val.23, !mcsema_real_eip !12
  store i1 %77, i1* %CF, !mcsema_real_eip !12
  store i64 %59, i64* %XSP, !mcsema_real_eip !12
  %78 = inttoptr i64 %59 to i64*, !mcsema_real_eip !13
  %79 = load i64, i64* %78, !mcsema_real_eip !13
  store i64 %79, i64* %XBP, !mcsema_real_eip !13
  %80 = add i64 %59, 8, !mcsema_real_eip !13
  store i64 %80, i64* %XSP, !mcsema_real_eip !13
  %81 = add i64 %80, 8, !mcsema_real_eip !14
  %82 = inttoptr i64 %80 to i64*, !mcsema_real_eip !14
  %83 = load i64, i64* %82, !mcsema_real_eip !14
  store i64 %83, i64* %XIP, !mcsema_real_eip !14
  store i64 %81, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 25}
!8 = !{i64 27}
!9 = !{i64 32}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 44}
