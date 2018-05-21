target triple="i686"
define i32 @mod(i32 %_P_a, i32 %_P_b)
{
LU2:
	%_retval_ = alloca i32
	%a = alloca i32
	store i32 %_P_a, i32* %a
	%b = alloca i32
	store i32 %_P_b, i32* %b
	br label %LU3
LU3:
	%u0 = load i32* %a
	%u1 = load i32* %a
	%u2 = load i32* %b
	%u3 = sdiv i32 %u1, %u2
	%u4 = load i32* %b
	%u5 = mul i32 %u3, %u4
	%u6 = sub i32 %u0, %u5
	store i32 %u6, i32* %_retval_
	br label %LU4
LU4:
	%u7 = load i32* %_retval_
	ret i32 %u7
}

define void @hailstone(i32 %_P_n)
{
LU6:
	%n = alloca i32
	store i32 %_P_n, i32* %n
	br label %LU7
LU7:
	br label %LU9
LU9:
	br i1 1, label %LU16, label %LU17
LU10:
	%u7 = load i32* %n
	%u8 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u7)
	%u9 = load i32* %n
	%u10 = call i32 @mod(i32 %u9, i32 2)
	%u12 = icmp eq i32 %u10, 1
	br i1 %u12, label %LU11, label %LU12
LU11:
	%u13 = load i32* %n
	%u14 = mul i32 3, %u13
	%u15 = add i32 %u14, 1
	store i32 %u15, i32* %n
	br label %LU13
LU12:
	%u16 = load i32* %n
	%u17 = sdiv i32 %u16, 2
	store i32 %u17, i32* %n
	br label %LU13
LU13:
	%u18 = load i32* %n
	%u19 = icmp sle i32 %u18, 1
	br i1 %u19, label %LU14, label %LU15
LU14:
	%u20 = load i32* %n
	%u21 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u20)
	br label %LU8
LU15:
	br label %LU16
LU16:
	br label %LU9
LU17:
	br label %LU8
LU8:
	ret void
}

define i32 @main()
{
LU19:
	%_retval_ = alloca i32
	%num = alloca i32
	br label %LU20
LU20:
	%u22 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u23 = load i32* @_scanned_
	store i32 %u23, i32* %num
	%u24 = load i32* %num
	call void @hailstone(i32 %u24)
	store i32 0, i32* %_retval_
	br label %LU21
LU21:
	%u26 = load i32* %_retval_
	ret i32 %u26
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.read_scratch = common global i32 0, align 4
@_scanned_ = common global i32 0, align 4
