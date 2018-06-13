target triple="i686"
define i32 @isqrt(i32 %_P_a)
{
LU2:
	%_retval_ = alloca i32
	%square = alloca i32
	%delta = alloca i32
	%a = alloca i32
	store i32 %_P_a, i32* %a
	br label %LU3
LU3:
	store i32 1, i32* %square
	store i32 3, i32* %delta
	br label %LU5
LU5:
	%u0 = load i32* %square
	%u1 = load i32* %a
	%u2 = icmp sle i32 %u0, %u1
	br i1 %u2, label %LU6, label %LU7
LU6:
	%u3 = load i32* %square
	%u4 = load i32* %delta
	%u5 = add i32 %u3, %u4
	store i32 %u5, i32* %square
	%u6 = load i32* %delta
	%u7 = add i32 %u6, 2
	store i32 %u7, i32* %delta
	br label %LU5
LU7:
	%u8 = load i32* %delta
	%u9 = sdiv i32 %u8, 2
	%u10 = sub i32 %u9, 1
	store i32 %u10, i32* %_retval_
	br label %LU4
LU4:
	%u11 = load i32* %_retval_
	ret i32 %u11
}

define i1 @prime(i32 %_P_a)
{
LU9:
	%_retval_ = alloca i1
	%max = alloca i32
	%divisor = alloca i32
	%remainder = alloca i32
	%a = alloca i32
	store i32 %_P_a, i32* %a
	br label %LU10
LU10:
	%u11 = load i32* %a
	%u12 = icmp slt i32 %u11, 2
	br i1 %u12, label %LU12, label %LU13
LU12:
	store i1 0, i1* %_retval_
	br label %LU11
LU13:
	%u13 = load i32* %a
	%u14 = call i32 @isqrt(i32 %u13)
	store i32 %u14, i32* %max
	store i32 2, i32* %divisor
	br label %LU14
LU20:
	br label %LU11
LU14:
	%u16 = load i32* %divisor
	%u17 = load i32* %max
	%u18 = icmp sle i32 %u16, %u17
	br i1 %u18, label %LU15, label %LU16
LU15:
	%u19 = load i32* %a
	%u20 = load i32* %a
	%u21 = load i32* %divisor
	%u22 = sdiv i32 %u20, %u21
	%u23 = load i32* %divisor
	%u24 = mul i32 %u22, %u23
	%u25 = sub i32 %u19, %u24
	store i32 %u25, i32* %remainder
	%u26 = load i32* %remainder
	%u27 = icmp eq i32 %u26, 0
	br i1 %u27, label %LU17, label %LU18
LU16:
	store i1 1, i1* %_retval_
	br label %LU11
LU17:
	store i1 0, i1* %_retval_
	br label %LU11
LU19:
	%u28 = load i32* %divisor
	%u29 = add i32 %u28, 1
	store i32 %u29, i32* %divisor
	br label %LU14
LU18:
	br label %LU19
LU11:
	%u30 = load i1* %_retval_
	ret i1 %u30
}

define i32 @main()
{
LU22:
	%_retval_ = alloca i32
	%limit = alloca i32
	%a = alloca i32
	br label %LU23
LU23:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u30 = load i32* @_scanned_
	store i32 %u30, i32* %limit
	store i32 0, i32* %a
	br label %LU25
LU25:
	%u31 = load i32* %a
	%u32 = load i32* %limit
	%u33 = icmp sle i32 %u31, %u32
	br i1 %u33, label %LU26, label %LU27
LU26:
	%u34 = load i32* %a
	%u35 = call i1 @prime(i32 %u34)
	br i1 %u35, label %LU28, label %LU29
LU28:
	%u37 = load i32* %a
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u37)
	br label %LU30
LU29:
	br label %LU30
LU30:
	%u38 = load i32* %a
	%u39 = add i32 %u38, 1
	store i32 %u39, i32* %a
	br label %LU25
LU27:
	store i32 0, i32* %_retval_
	br label %LU24
LU24:
	%u40 = load i32* %_retval_
	ret i32 %u40
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
