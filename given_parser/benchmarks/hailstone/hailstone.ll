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
	br i1 1, label %LU10, label %LU11
LU10:
	%u7 = load i32* %n
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u7)
	%u8 = load i32* %n
	%u9 = call i32 @mod(i32 %u8, i32 2)
	%u11 = icmp eq i32 %u9, 1
	br i1 %u11, label %LU12, label %LU13
LU12:
	%u12 = load i32* %n
	%u13 = mul i32 3, %u12
	%u14 = add i32 %u13, 1
	store i32 %u14, i32* %n
	br label %LU14
LU13:
	%u15 = load i32* %n
	%u16 = sdiv i32 %u15, 2
	store i32 %u16, i32* %n
	br label %LU14
LU14:
	%u17 = load i32* %n
	%u18 = icmp sle i32 %u17, 1
	br i1 %u18, label %LU15, label %LU16
LU15:
	%u19 = load i32* %n
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u19)
	br label %LU8
LU16:
	br label %LU17
LU17:
	br label %LU9
LU11:
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
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u20 = load i32* @_scanned_
	store i32 %u20, i32* %num
	%u21 = load i32* %num
	call void @hailstone(i32 %u21)
	store i32 0, i32* %_retval_
	br label %LU21
LU21:
	%u23 = load i32* %_retval_
	ret i32 %u23
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
