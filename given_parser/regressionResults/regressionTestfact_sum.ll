target triple="i686"
define i32 @sum(i32 %_P_a, i32 %_P_b)
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
	%u1 = load i32* %b
	%u2 = add i32 %u0, %u1
	store i32 %u2, i32* %_retval_
	br label %LU4
LU4:
	%u3 = load i32* %_retval_
	ret i32 %u3
}

define i32 @fact(i32 %_P_n)
{
LU6:
	%_retval_ = alloca i32
	%t = alloca i32
	%n = alloca i32
	store i32 %_P_n, i32* %n
	br label %LU7
LU7:
	%u3 = load i32* %n
	%u4 = icmp eq i32 %u3, 1
	%u5 = load i32* %n
	%u6 = icmp eq i32 %u5, 0
	%u7 = or i1 %u4, %u6
	br i1 %u7, label %LU9, label %LU10
LU9:
	store i32 1, i32* %_retval_
	br label %LU8
LU10:
	br label %LU11
LU11:
	%u8 = load i32* %n
	%u9 = icmp sle i32 %u8, 1
	br i1 %u9, label %LU12, label %LU13
LU12:
	%u10 = sub i32 0, 1
	%u11 = load i32* %n
	%u12 = mul i32 %u10, %u11
	%u13 = call i32 @fact(i32 %u12)
	store i32 %u13, i32* %_retval_
	br label %LU8
LU13:
	br label %LU14
LU14:
	%u15 = load i32* %n
	%u16 = load i32* %n
	%u17 = sub i32 %u16, 1
	%u18 = call i32 @fact(i32 %u17)
	%u20 = mul i32 %u15, %u18
	store i32 %u20, i32* %t
	%u21 = load i32* %t
	store i32 %u21, i32* %_retval_
	br label %LU8
LU8:
	%u22 = load i32* %_retval_
	ret i32 %u22
}

define i32 @main()
{
LU16:
	%_retval_ = alloca i32
	%num1 = alloca i32
	%num2 = alloca i32
	%flag = alloca i32
	br label %LU17
LU17:
	store i32 0, i32* %flag
	br label %LU19
LU19:
	%u22 = load i32* %flag
	%u23 = sub i32 0, 1
	%u24 = icmp ne i32 %u22, %u23
	br i1 %u24, label %LU20, label %LU18
LU20:
	%u25 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u26 = load i32* @_scanned_
	store i32 %u26, i32* %num1
	%u27 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u28 = load i32* @_scanned_
	store i32 %u28, i32* %num2
	%u29 = load i32* %num1
	%u30 = call i32 @fact(i32 %u29)
	store i32 %u30, i32* %num1
	%u32 = load i32* %num2
	%u33 = call i32 @fact(i32 %u32)
	store i32 %u33, i32* %num2
	%u35 = load i32* %num1
	%u36 = load i32* %num2
	%u37 = call i32 @sum(i32 %u35, i32 %u36)
	%u39 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u37)
	%u40 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u41 = load i32* @_scanned_
	store i32 %u41, i32* %flag
	br label %LU19
LU21:
	store i32 0, i32* %_retval_
	br label %LU18
LU18:
	%u42 = load i32* %_retval_
	ret i32 %u42
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
