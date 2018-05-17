target triple="i686"
define i32 @wait(i32 %_P_waitTime)
{
LU2:
	%_retval_ = alloca i32
	%waitTime = alloca i32
	store i32 %_P_waitTime, i32* %waitTime
	br label %LU3
LU3:
	br label %LU5
LU5:
	%u0 = load i32* %waitTime
	%u1 = icmp sgt i32 %u0, 0
	br i1 %u1, label %LU6, label %LU4
LU6:
	%u2 = load i32* %waitTime
	%u3 = sub i32 %u2, 1
	store i32 %u3, i32* %waitTime
	br label %LU5
LU7:
	store i32 0, i32* %_retval_
	br label %LU4
LU4:
	%u4 = load i32* %_retval_
	ret i32 %u4
}

define i32 @power(i32 %_P_base, i32 %_P_exponent)
{
LU9:
	%_retval_ = alloca i32
	%product = alloca i32
	%base = alloca i32
	store i32 %_P_base, i32* %base
	%exponent = alloca i32
	store i32 %_P_exponent, i32* %exponent
	br label %LU10
LU10:
	store i32 1, i32* %product
	br label %LU12
LU12:
	%u4 = load i32* %exponent
	%u5 = icmp sgt i32 %u4, 0
	br i1 %u5, label %LU13, label %LU11
LU13:
	%u6 = load i32* %product
	%u7 = load i32* %base
	%u8 = mul i32 %u6, %u7
	store i32 %u8, i32* %product
	%u9 = load i32* %exponent
	%u10 = sub i32 %u9, 1
	store i32 %u10, i32* %exponent
	br label %LU12
LU14:
	%u11 = load i32* %product
	store i32 %u11, i32* %_retval_
	br label %LU11
LU11:
	%u12 = load i32* %_retval_
	ret i32 %u12
}

define i32 @recursiveDecimalSum(i32 %_P_binaryNum, i32 %_P_decimalSum, i32 %_P_recursiveDepth)
{
LU16:
	%_retval_ = alloca i32
	%tempNum = alloca i32
	%base = alloca i32
	%remainder = alloca i32
	%binaryNum = alloca i32
	store i32 %_P_binaryNum, i32* %binaryNum
	%decimalSum = alloca i32
	store i32 %_P_decimalSum, i32* %decimalSum
	%recursiveDepth = alloca i32
	store i32 %_P_recursiveDepth, i32* %recursiveDepth
	br label %LU17
LU17:
	%u12 = load i32* %binaryNum
	%u13 = icmp sgt i32 %u12, 0
	br i1 %u13, label %LU19, label %LU23
LU19:
	store i32 2, i32* %base
	%u14 = load i32* %binaryNum
	%u15 = sdiv i32 %u14, 10
	store i32 %u15, i32* %tempNum
	%u16 = load i32* %tempNum
	%u17 = mul i32 %u16, 10
	store i32 %u17, i32* %tempNum
	%u18 = load i32* %binaryNum
	%u19 = load i32* %tempNum
	%u20 = sub i32 %u18, %u19
	store i32 %u20, i32* %tempNum
	%u21 = load i32* %tempNum
	%u22 = icmp eq i32 %u21, 1
	br i1 %u22, label %LU20, label %LU21
	br label %LU24
LU23:
	br label %LU24
LU20:
	%u23 = load i32* %decimalSum
	%u24 = load i32* %base
	%u25 = load i32* %recursiveDepth
	%u26 = call i32 @power(i32 %u24, i32 %u25)
	%u28 = add i32 %u23, %u26
	store i32 %u28, i32* %decimalSum
	br label %LU22
LU22:
	%u29 = load i32* %binaryNum
	%u30 = sdiv i32 %u29, 10
	%u31 = load i32* %decimalSum
	%u32 = load i32* %recursiveDepth
	%u33 = add i32 %u32, 1
	%u34 = call i32 @recursiveDecimalSum(i32 %u30, i32 %u31, i32 %u33)
	store i32 %u34, i32* %_retval_
	br label %LU18
LU24:
	%u36 = load i32* %decimalSum
	store i32 %u36, i32* %_retval_
	br label %LU18
LU21:
	br label %LU22
LU18:
	%u37 = load i32* %_retval_
	ret i32 %u37
}

define i32 @convertToDecimal(i32 %_P_binaryNum)
{
LU26:
	%_retval_ = alloca i32
	%recursiveDepth = alloca i32
	%decimalSum = alloca i32
	%binaryNum = alloca i32
	store i32 %_P_binaryNum, i32* %binaryNum
	br label %LU27
LU27:
	store i32 0, i32* %recursiveDepth
	store i32 0, i32* %decimalSum
	%u37 = load i32* %binaryNum
	%u38 = load i32* %decimalSum
	%u39 = load i32* %recursiveDepth
	%u40 = call i32 @recursiveDecimalSum(i32 %u37, i32 %u38, i32 %u39)
	store i32 %u40, i32* %_retval_
	br label %LU28
LU28:
	%u42 = load i32* %_retval_
	ret i32 %u42
}

define i32 @main()
{
LU30:
	%_retval_ = alloca i32
	%number = alloca i32
	%waitTime = alloca i32
	br label %LU31
LU31:
	%u42 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u43 = load i32* @_scanned_
	store i32 %u43, i32* %number
	%u44 = load i32* %number
	%u45 = call i32 @convertToDecimal(i32 %u44)
	store i32 %u45, i32* %number
	%u47 = load i32* %number
	%u48 = load i32* %number
	%u49 = mul i32 %u47, %u48
	store i32 %u49, i32* %waitTime
	br label %LU33
LU33:
	%u50 = load i32* %waitTime
	%u51 = icmp sgt i32 %u50, 0
	br i1 %u51, label %LU34, label %LU32
LU34:
	%u52 = load i32* %waitTime
	%u53 = call i32 @wait(i32 %u52)
	%u55 = load i32* %waitTime
	%u56 = sub i32 %u55, 1
	store i32 %u56, i32* %waitTime
	br label %LU33
LU35:
	%u57 = load i32* %number
	%u58 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u57)
	store i32 0, i32* %_retval_
	br label %LU32
LU32:
	%u59 = load i32* %_retval_
	ret i32 %u59
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
