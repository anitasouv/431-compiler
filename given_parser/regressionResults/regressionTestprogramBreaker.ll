target triple="i686"
@GLOBAL = common global i32 0, align 4
@count = common global i32 0, align 4
define i32 @fun2(i32 %_P_x, i32 %_P_y)
{
LU2:
	%_retval_ = alloca i32
	%x = alloca i32
	store i32 %_P_x, i32* %x
	%y = alloca i32
	store i32 %_P_y, i32* %y
	br label %LU3
LU3:
	%u0 = load i32* %x
	%u1 = icmp eq i32 %u0, 0
	br i1 %u1, label %LU5, label %LU6
LU5:
	%u2 = load i32* %y
	store i32 %u2, i32* %_retval_
	br label %LU4
LU6:
	%u3 = load i32* %x
	%u4 = sub i32 %u3, 1
	%u5 = load i32* %y
	%u6 = call i32 @fun2(i32 %u4, i32 %u5)
	store i32 %u6, i32* %_retval_
	br label %LU4
LU7:
	br label %LU4
LU4:
	%u8 = load i32* %_retval_
	ret i32 %u8
}

define i32 @fun1(i32 %_P_x, i32 %_P_y, i32 %_P_z)
{
LU9:
	%_retval_ = alloca i32
	%retVal = alloca i32
	%x = alloca i32
	store i32 %_P_x, i32* %x
	%y = alloca i32
	store i32 %_P_y, i32* %y
	%z = alloca i32
	store i32 %_P_z, i32* %z
	br label %LU10
LU10:
	%u8 = add i32 5, 6
	%u9 = load i32* %x
	%u10 = mul i32 %u9, 2
	%u11 = sub i32 %u8, %u10
	%u12 = load i32* %y
	%u13 = sdiv i32 4, %u12
	%u14 = add i32 %u11, %u13
	%u15 = load i32* %z
	%u16 = add i32 %u14, %u15
	store i32 %u16, i32* %retVal
	%u17 = load i32* %retVal
	%u18 = load i32* %y
	%u19 = icmp sgt i32 %u17, %u18
	br i1 %u19, label %LU12, label %LU13
LU12:
	%u20 = load i32* %retVal
	%u21 = load i32* %x
	%u22 = call i32 @fun2(i32 %u20, i32 %u21)
	store i32 %u22, i32* %_retval_
	br label %LU11
LU13:
	%u24 = icmp slt i32 5, 6
	%u25 = load i32* %retVal
	%u26 = load i32* %y
	%u27 = icmp sle i32 %u25, %u26
	%u28 = and i1 %u24, %u27
	br i1 %u28, label %LU14, label %LU15
	br label %LU17
LU17:
	%u33 = load i32* %retVal
	store i32 %u33, i32* %_retval_
	br label %LU11
LU14:
	%u29 = load i32* %retVal
	%u30 = load i32* %y
	%u31 = call i32 @fun2(i32 %u29, i32 %u30)
	store i32 %u31, i32* %_retval_
	br label %LU11
LU16:
	br label %LU17
LU15:
	br label %LU16
LU11:
	%u34 = load i32* %_retval_
	ret i32 %u34
}

define i32 @main()
{
LU19:
	%_retval_ = alloca i32
	%i = alloca i32
	br label %LU20
LU20:
	store i32 0, i32* %i
	%u34 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u35 = load i32* @_scanned_
	store i32 %u35, i32* %i
	br label %LU22
LU22:
	%u36 = load i32* %i
	%u37 = icmp slt i32 %u36, 10000
	br i1 %u37, label %LU23, label %LU21
LU23:
	%u38 = load i32* %i
	%u39 = call i32 @fun1(i32 3, i32 %u38, i32 5)
	%u41 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u39)
	%u42 = load i32* %i
	%u43 = add i32 %u42, 1
	store i32 %u43, i32* %i
	br label %LU22
LU24:
	store i32 0, i32* %_retval_
	br label %LU21
LU21:
	%u44 = load i32* %_retval_
	ret i32 %u44
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
