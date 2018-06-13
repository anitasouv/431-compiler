target triple="i686"
%struct.simple = type {i32};
%struct.foo = type {i32, i1, %struct.simple*};
@globalfoo = common global %struct.foo* null, align 4
define %struct.simple* @passBackStruct(i32 %_P_x)
{
LU2:
	%_retval_ = alloca %struct.simple*
	%t = alloca %struct.foo*
	%f = alloca %struct.simple*
	%x = alloca i32
	store i32 %_P_x, i32* %x
	br label %LU3
LU3:
	%u0 = call i8* @malloc(i32 12)
	%u1 = bitcast i8* %u0 to %struct.foo*
	store %struct.foo* %u1, %struct.foo** %t
	%u2 = load %struct.foo** %t
	%u3 = getelementptr %struct.foo* %u2, i1 0, i32 0
	store i32 3, i32* %u3
	%u4 = load %struct.foo** %t
	%u5 = getelementptr %struct.foo* %u4, i1 0, i32 0
	%u6 = load i32* %u5
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u6)
	%u7 = load i32* %x
	%u8 = load %struct.foo** %t
	%u9 = getelementptr %struct.foo* %u8, i1 0, i32 0
	store i32 %u7, i32* %u9
	%u10 = load %struct.foo** %t
	%u11 = getelementptr %struct.foo* %u10, i1 0, i32 0
	%u12 = load i32* %u11
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u12)
	%u13 = call i8* @malloc(i32 4)
	%u14 = bitcast i8* %u13 to %struct.simple*
	store %struct.simple* %u14, %struct.simple** %f
	%u15 = load i32* %x
	%u16 = load %struct.simple** %f
	%u17 = getelementptr %struct.simple* %u16, i1 0, i32 0
	store i32 %u15, i32* %u17
	%u18 = load %struct.simple** %f
	%u19 = getelementptr %struct.simple* %u18, i1 0, i32 0
	%u20 = load i32* %u19
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u20)
	%u21 = load %struct.simple** %f
	store %struct.simple* %u21, %struct.simple** %_retval_
	br label %LU4
LU4:
	%u22 = load %struct.simple** %_retval_
	ret %struct.simple* %u22
}

define void @assignmentToFoo(i32 %_P_x)
{
LU6:
	%t = alloca %struct.foo*
	%x = alloca i32
	store i32 %_P_x, i32* %x
	br label %LU7
LU7:
	%u22 = call i8* @malloc(i32 12)
	%u23 = bitcast i8* %u22 to %struct.foo*
	store %struct.foo* %u23, %struct.foo** %t
	%u24 = load i32* %x
	%u25 = load %struct.foo** %t
	%u26 = getelementptr %struct.foo* %u25, i1 0, i32 0
	store i32 %u24, i32* %u26
	%u27 = load %struct.foo** %t
	%u28 = getelementptr %struct.foo* %u27, i1 0, i32 0
	%u29 = load i32* %u28
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u29)
	br label %LU8
LU8:
	ret void
}

define void @assignment()
{
LU10:
	%i = alloca i32
	%u = alloca %struct.foo*
	br label %LU11
LU11:
	store i32 0, i32* %i
	%u30 = call i8* @malloc(i32 12)
	%u31 = bitcast i8* %u30 to %struct.foo*
	store %struct.foo* %u31, %struct.foo** %u
	%u32 = load %struct.foo** %u
	%u33 = getelementptr %struct.foo* %u32, i1 0, i32 0
	store i32 4, i32* %u33
	%u34 = load %struct.foo** %u
	%u35 = getelementptr %struct.foo* %u34, i1 0, i32 0
	%u36 = load i32* %u35
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u36)
	%u37 = load i32* %i
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u37)
	br label %LU12
LU12:
	ret void
}

define void @testPrint()
{
LU14:
	br label %LU15
LU15:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 3)
	br label %LU16
LU16:
	ret void
}

define void @testRead()
{
LU18:
	%i = alloca i32
	br label %LU19
LU19:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u38 = load i32* @_scanned_
	store i32 %u38, i32* %i
	br label %LU20
LU20:
	ret void
}

define void @ifstatement()
{
LU22:
	%i = alloca i32
	br label %LU23
LU23:
	%u39 = icmp eq i32 1, 0
	br i1 %u39, label %LU25, label %LU26
LU25:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU27
LU26:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 2)
	br label %LU27
LU27:
	%u40 = icmp eq i32 1, 1
	br i1 %u40, label %LU28, label %LU29
LU28:
	store i32 0, i32* %i
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU30
LU29:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 2)
	br label %LU30
LU30:
	br label %LU24
LU24:
	ret void
}

define void @testReadThenPrint()
{
LU32:
	%a = alloca i32
	br label %LU33
LU33:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u41 = load i32* @_scanned_
	store i32 %u41, i32* %a
	%u42 = load i32* %a
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u42)
	br label %LU34
LU34:
	ret void
}

define void @dotExpression()
{
LU36:
	%d = alloca %struct.simple*
	br label %LU37
LU37:
	%u43 = call i8* @malloc(i32 4)
	%u44 = bitcast i8* %u43 to %struct.simple*
	store %struct.simple* %u44, %struct.simple** %d
	%u45 = load %struct.simple** %d
	%u46 = getelementptr %struct.simple* %u45, i1 0, i32 0
	store i32 0, i32* %u46
	%u47 = load %struct.simple** %d
	%u48 = getelementptr %struct.simple* %u47, i1 0, i32 0
	%u49 = load i32* %u48
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u49)
	br label %LU38
LU38:
	ret void
}

define void @functionCall()
{
LU40:
	br label %LU41
LU41:
	call void @dotExpression()
	br label %LU42
LU42:
	ret void
}

define void @parameterPassing(i32 %_P_x, i32 %_P_y)
{
LU44:
	%x = alloca i32
	store i32 %_P_x, i32* %x
	%y = alloca i32
	store i32 %_P_y, i32* %y
	br label %LU45
LU45:
	%u51 = load i32* %x
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u51)
	%u52 = load i32* %y
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u52)
	br label %LU46
LU46:
	ret void
}

define void @whileLoop()
{
LU48:
	%i = alloca i32
	br label %LU49
LU49:
	store i32 10, i32* %i
	br label %LU51
LU51:
	%u53 = load i32* %i
	%u54 = icmp sgt i32 %u53, 0
	br i1 %u54, label %LU52, label %LU53
LU52:
	%u55 = load i32* %i
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u55)
	%u56 = load i32* %i
	%u57 = sub i32 %u56, 1
	store i32 %u57, i32* %i
	br label %LU51
LU53:
	br label %LU50
LU50:
	ret void
}

define void @main()
{
LU55:
	%e = alloca %struct.simple*
	br label %LU56
LU56:
	call void @assignmentToFoo(i32 10)
	call void @testReadThenPrint()
	call void @testPrint()
	call void @parameterPassing(i32 5, i32 6)
	call void @assignment()
	call void @ifstatement()
	call void @testRead()
	call void @dotExpression()
	call void @functionCall()
	call void @whileLoop()
	%u68 = call %struct.simple* @passBackStruct(i32 2)
	store %struct.simple* %u68, %struct.simple** %e
	%u70 = load %struct.simple** %e
	%u71 = getelementptr %struct.simple* %u70, i1 0, i32 0
	%u72 = load i32* %u71
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u72)
	br label %LU57
LU57:
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
