target triple="i686"
%struct.Power = type {i32, i32};
define i32 @calcPower(i32 %_P_base, i32 %_P_exp)
{
LU2:
	%_retval_ = alloca i32
	%result = alloca i32
	%base = alloca i32
	store i32 %_P_base, i32* %base
	%exp = alloca i32
	store i32 %_P_exp, i32* %exp
	br label %LU3
LU3:
	store i32 1, i32* %result
	br label %LU5
LU5:
	%u0 = load i32* %exp
	%u1 = icmp sgt i32 %u0, 0
	br i1 %u1, label %LU6, label %LU4
LU6:
	%u2 = load i32* %result
	%u3 = load i32* %base
	%u4 = mul i32 %u2, %u3
	store i32 %u4, i32* %result
	%u5 = load i32* %exp
	%u6 = sub i32 %u5, 1
	store i32 %u6, i32* %exp
	br label %LU5
LU7:
	%u7 = load i32* %result
	store i32 %u7, i32* %_retval_
	br label %LU4
LU4:
	%u8 = load i32* %_retval_
	ret i32 %u8
}

define i32 @main()
{
LU9:
	%_retval_ = alloca i32
	%power = alloca %struct.Power*
	%input = alloca i32
	%result = alloca i32
	%exp = alloca i32
	%i = alloca i32
	br label %LU10
LU10:
	store i32 0, i32* %result
	%u8 = call i8* @malloc(i32 8)
	%u9 = bitcast i8* %u8 to %struct.Power*
	store %struct.Power* %u9, %struct.Power** %power
	%u10 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u11 = load i32* @_scanned_
	store i32 %u11, i32* %input
	%u12 = load i32* %input
	%u13 = load %struct.Power** %power
	%u14 = getelementptr %struct.Power* %u13, i1 0, i32 0
	store i32 %u12, i32* %u14
	%u15 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u16 = load i32* @_scanned_
	store i32 %u16, i32* %input
	%u17 = load i32* %input
	%u18 = icmp slt i32 %u17, 0
	br i1 %u18, label %LU12, label %LU13
LU12:
	%u19 = sub i32 0, 1
	store i32 %u19, i32* %_retval_
	br label %LU11
LU13:
	br label %LU14
LU14:
	%u20 = load i32* %input
	%u21 = load %struct.Power** %power
	%u22 = getelementptr %struct.Power* %u21, i1 0, i32 1
	store i32 %u20, i32* %u22
	store i32 0, i32* %i
	br label %LU15
LU15:
	%u23 = load i32* %i
	%u24 = icmp slt i32 %u23, 1000000
	br i1 %u24, label %LU16, label %LU11
LU16:
	%u25 = load i32* %i
	%u26 = add i32 %u25, 1
	store i32 %u26, i32* %i
	%u27 = load %struct.Power** %power
	%u28 = getelementptr %struct.Power* %u27, i1 0, i32 0
	%u29 = load i32* %u28
	%u30 = load %struct.Power** %power
	%u31 = getelementptr %struct.Power* %u30, i1 0, i32 1
	%u32 = load i32* %u31
	%u33 = call i32 @calcPower(i32 %u29, i32 %u32)
	store i32 %u33, i32* %result
	br label %LU15
LU17:
	%u35 = load i32* %result
	%u36 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u35)
	store i32 1, i32* %_retval_
	br label %LU11
LU11:
	%u37 = load i32* %_retval_
	ret i32 %u37
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
