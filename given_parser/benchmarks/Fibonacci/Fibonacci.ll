target triple="i686"
define i32 @computeFib(i32 %_P_input)
{
LU2:
	%_retval_ = alloca i32
	%input = alloca i32
	store i32 %_P_input, i32* %input
	br label %LU3
LU3:
	%u0 = load i32* %input
	%u1 = icmp eq i32 %u0, 0
	br i1 %u1, label %LU5, label %LU6
LU5:
	store i32 0, i32* %_retval_
	br label %LU4
LU6:
	%u2 = load i32* %input
	%u3 = icmp sle i32 %u2, 2
	br i1 %u3, label %LU7, label %LU8
	br label %LU10
LU10:
	br label %LU4
LU7:
	store i32 1, i32* %_retval_
	br label %LU4
LU9:
	br label %LU10
LU8:
	%u4 = load i32* %input
	%u5 = sub i32 %u4, 1
	%u6 = call i32 @computeFib(i32 %u5)
	%u8 = load i32* %input
	%u9 = sub i32 %u8, 2
	%u10 = call i32 @computeFib(i32 %u9)
	%u12 = add i32 %u6, %u10
	store i32 %u12, i32* %_retval_
	br label %LU4
LU4:
	%u13 = load i32* %_retval_
	ret i32 %u13
}

define i32 @main()
{
LU12:
	%_retval_ = alloca i32
	%input = alloca i32
	br label %LU13
LU13:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u13 = load i32* @_scanned_
	store i32 %u13, i32* %input
	%u14 = load i32* %input
	%u15 = call i32 @computeFib(i32 %u14)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u15)
	store i32 0, i32* %_retval_
	br label %LU14
LU14:
	%u17 = load i32* %_retval_
	ret i32 %u17
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
