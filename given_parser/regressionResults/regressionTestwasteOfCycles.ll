target triple="i686"
define i32 @function(i32 %_P_n)
{
LU2:
	%_retval_ = alloca i32
	%i = alloca i32
	%j = alloca i32
	%n = alloca i32
	store i32 %_P_n, i32* %n
	br label %LU3
LU3:
	%u0 = load i32* %n
	%u1 = icmp sle i32 %u0, 0
	br i1 %u1, label %LU5, label %LU6
LU5:
	store i32 0, i32* %_retval_
	br label %LU4
LU6:
	br label %LU7
LU7:
	store i32 0, i32* %i
	br label %LU8
LU8:
	%u2 = load i32* %i
	%u3 = load i32* %n
	%u4 = load i32* %n
	%u5 = mul i32 %u3, %u4
	%u6 = icmp slt i32 %u2, %u5
	br i1 %u6, label %LU9, label %LU4
LU9:
	%u7 = load i32* %i
	%u8 = load i32* %n
	%u9 = add i32 %u7, %u8
	store i32 %u9, i32* %j
	%u10 = load i32* %j
	%u11 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u10)
	%u12 = load i32* %i
	%u13 = add i32 %u12, 1
	store i32 %u13, i32* %i
	br label %LU8
LU10:
	%u14 = load i32* %n
	%u15 = sub i32 %u14, 1
	%u16 = call i32 @function(i32 %u15)
	store i32 %u16, i32* %_retval_
	br label %LU4
LU4:
	%u18 = load i32* %_retval_
	ret i32 %u18
}

define i32 @main()
{
LU12:
	%_retval_ = alloca i32
	%num = alloca i32
	br label %LU13
LU13:
	%u18 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u19 = load i32* @_scanned_
	store i32 %u19, i32* %num
	%u20 = load i32* %num
	%u21 = call i32 @function(i32 %u20)
	%u23 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	store i32 0, i32* %_retval_
	br label %LU14
LU14:
	%u24 = load i32* %_retval_
	ret i32 %u24
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
