target triple="i686"
%struct.A = type {i32, i32, i1, %struct.A*};
%struct.B = type {%struct.A*};
@i = common global i32* null, align 4
@j = common global i32* null, align 4
@k = common global i32* null, align 4
@b = common global %struct.B* null, align 4
@bb = common global %struct.B* null, align 4
@bbb = common global %struct.B* null, align 4
@bob = common global i1* null, align 4
define i32 @g(i32 %i, %struct.B %j)
{
LU2:
	%g = alloca i32
	%m = alloca i32
	%k = alloca i32
LU3:
	br label %LU4
LU4:
	%u0 = load i32* %_retval_
	ret i32 %u0
}

define i32 @foo(i32 %n)
{
LU7:
	%u0 = load i32* %n
	%u1 = icmp SLE i32 %u0, 0
	br i1 %u1, label LU9, label LU10
LU9:
	br label %LU8
LU10:
	%u2 = load i32* %n
	%u3 = load i32* %n
	%u4 = SUB i32 %u3, 1
	%u5 = call i32 %foo(i32 %u4)
	%u6 = MUL i32 %u2, %u5
	br label %LU8
LU11:
	br label %LU8
LU8:
	%u7 = load i32* %_retval_
	ret i32 %u7
}

define %struct.A @f(i32 %i, %struct.B %j)
{
LU13:
	%f = alloca i32
	%l = alloca i32
	%k = alloca i32
LU14:
	%u7 = load %struct.B* %b
	%u8 = getelementptr %struct.B* %u7, i1 0, i32 0
	%u9 = getelementptr %struct.A* %u8, i1 0, i32 3
	%u10 = getelementptr %struct.A* %u9, i1 0, i32 3
	%u11 = getelementptr %struct.A* %u10, i1 0, i32 0
	%u12 = load %struct.B* %b
	%u13 = getelementptr %struct.B* %u12, i1 0, i32 0
	%u14 = getelementptr %struct.A* %u13, i1 0, i32 3
	%u15 = getelementptr %struct.A* %u14, i1 0, i32 3
	%u16 = getelementptr %struct.A* %u15, i1 0, i32 3
	br label %LU15
LU15:
	%u17 = load i32* %_retval_
	ret i32 %u17
}

define i32 @bar(%struct.B %j, i32 %i)
{
LU18:
	br label %LU19
LU19:
	ret void
}

define i32 @main()
{
LU21:
	%a = alloca %struct.A*
	%i = alloca i32
	%j = alloca i32
	%k = alloca i32
	%b = alloca i1
	%h = alloca i32
LU22:
	%u17 = SUB i32 0, 2
	%u18 = SUB i32 0, %u17
	%u19 = load i32* %i
	%u20 = load i32* %i
	%u21 = load i1* 0
	%u22 = call i32 %g(i32 1, i1 %u21)
	%u23 = icmp SLT i32 %u20, %u22
	br i1 %u23, label LU24, label LU25
LU24:
	%u24 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 1)
	br label %LU26
LU25:
	br label %LU26
LU26:
	%u25 = load i32* %i
	%u26 = load i1* 0
	%u27 = call i32 %g(i32 1, i1 %u26)
	%u28 = icmp SGT i32 %u25, %u27
	br i1 %u28, label LU27, label LU28
LU27:
	%u29 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 1)
	br label %LU29
LU28:
	%u30 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 3)
	br label %LU29
LU30:
	%u31 = load i1* 1
	br i1 %u31, label LU31, label LU23
LU31:
	%u32 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 7)
	br label %LU30
LU32:
	%u33 = call i8* malloc(i32 4)
	%u34 = BITCAST i8* %u33 to %struct.B
	%u35 = call i32 %g(i32 1, %struct.B %u34)
	%u36 = call i8* malloc(i32 4)
	%u37 = BITCAST i8* %u36 to %struct.B
	%u38 = call %struct.A %f(i32 %u35, %struct.B %u37)
	%u39 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 1)
	%u40 = call i8* malloc(i32 4)
	%u41 = BITCAST i8* %u40 to %struct.B
	%u42 = call i8* malloc(i32 4)
	%u43 = BITCAST i8* %u42 to %struct.B
	%u44 = call i32 %g(i32 1, %struct.B %u43)
	%u45 = call i32 %bar(%struct.B %u41, i32 %u44)
	%u46 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 2)
	%u47 = call i8* malloc(i32 4)
	%u48 = BITCAST i8* %u47 to %struct.B
	%u49 = call i32 %g(i32 1, %struct.B %u48)
	%u50 = call i8* malloc(i32 4)
	%u51 = BITCAST i8* %u50 to %struct.B
	%u52 = call %struct.A %f(i32 %u49, %struct.B %u51)
	%u53 = getelementptr %struct.A* %u52, i1 0, i32 0
	%u54 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u53)
	br label %LU23
LU23:
	%u55 = load i32* %_retval_
	ret i32 %u55
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8]* c"%ld\0A\00, align 1
@.print = private unnamed_addr constant [5 x i8]* c"%ld \00, align 1
@.read = private unnamed_addr constant [4 x i8]* c"%ld\00, align 1
@.read_scratch = common global i32* 0, align 4
