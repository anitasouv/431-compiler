target triple="i686"
%struct.simple = type {i32};
%struct.foo = type {i32, i1, %struct.simple*};
@globalfoo = common global %struct.foo* null, align 4
define void @assignment()
{
LU2:
	%i = alloca i32
	%u = alloca %struct.foo*
	br label %LU3
LU3:
	store i32 0, i32* %i
	%u0 = call i8* @malloc(i32 12)
	%u1 = bitcast i8* %u0 to %struct.foo*
	store %struct.foo* %u1, %struct.foo** %u
	%u2 = load %struct.foo** %u
	%u3 = getelementptr %struct.foo* %u2, i1 0, i32 0
	store i32 3, i32* %u3
	%u4 = load %struct.foo** %u
	%u5 = getelementptr %struct.foo* %u4, i1 0, i32 0
	%u6 = load i32* %u5
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u6)
	%u7 = load i32* %i
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u7)
	br label %LU4
LU4:
	ret void
}

define void @testPrint()
{
LU6:
	br label %LU7
LU7:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 3)
	br label %LU8
LU8:
	ret void
}

define void @testRead()
{
LU10:
	%i = alloca i32
	br label %LU11
LU11:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u8 = load i32* @_scanned_
	store i32 %u8, i32* %i
	br label %LU12
LU12:
	ret void
}

define void @testReadThenPrint()
{
LU14:
	%a = alloca i32
	br label %LU15
LU15:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u9 = load i32* @_scanned_
	store i32 %u9, i32* %a
	%u10 = load i32* %a
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u10)
	br label %LU16
LU16:
	ret void
}

define void @dotExpression()
{
LU18:
	%d = alloca %struct.simple*
	br label %LU19
LU19:
	%u11 = call i8* @malloc(i32 4)
	%u12 = bitcast i8* %u11 to %struct.simple*
	store %struct.simple* %u12, %struct.simple** %d
	%u13 = load %struct.simple** %d
	%u14 = getelementptr %struct.simple* %u13, i1 0, i32 0
	store i32 0, i32* %u14
	%u15 = load %struct.simple** %d
	%u16 = getelementptr %struct.simple* %u15, i1 0, i32 0
	%u17 = load i32* %u16
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u17)
	br label %LU20
LU20:
	ret void
}

define void @functionCall()
{
LU22:
	br label %LU23
LU23:
	call void @dotExpression()
	br label %LU24
LU24:
	ret void
}

define void @parameterPassing(i32 %_P_x, i32 %_P_y)
{
LU26:
	%x = alloca i32
	store i32 %_P_x, i32* %x
	%y = alloca i32
	store i32 %_P_y, i32* %y
	br label %LU27
LU27:
	%u19 = load i32* %x
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u19)
	%u20 = load i32* %y
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u20)
	br label %LU28
LU28:
	ret void
}

define void @main()
{
LU30:
	br label %LU31
LU31:
	call void @testReadThenPrint()
	call void @parameterPassing(i32 5, i32 6)
	call void @assignment()
	br label %LU32
LU32:
	ret void
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
