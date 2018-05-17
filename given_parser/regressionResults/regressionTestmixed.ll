target triple="i686"
%struct.simple = type {i32};
%struct.foo = type {i32, i1, %struct.simple*};
@globalfoo = common global %struct.foo* null, align 4
define void @tailrecursive(i32 %_P_num)
{
LU2:
	%num = alloca i32
	store i32 %_P_num, i32* %num
	br label %LU3
LU3:
	%u0 = load i32* %num
	%u1 = icmp sle i32 %u0, 0
	br i1 %u1, label %LU5, label %LU6
LU5:
	br label %LU4
LU6:
	br label %LU7
LU7:
	%u2 = load i32* %num
	%u3 = sub i32 %u2, 1
	call void @tailrecursive(i32 %u3)
	br label %LU4
LU4:
	ret void
}

define i32 @add(i32 %_P_x, i32 %_P_y)
{
LU9:
	%_retval_ = alloca i32
	%x = alloca i32
	store i32 %_P_x, i32* %x
	%y = alloca i32
	store i32 %_P_y, i32* %y
	br label %LU10
LU10:
	%u5 = load i32* %x
	%u6 = load i32* %y
	%u7 = add i32 %u5, %u6
	store i32 %u7, i32* %_retval_
	br label %LU11
LU11:
	%u8 = load i32* %_retval_
	ret i32 %u8
}

define void @domath(i32 %_P_num)
{
LU13:
	%math1 = alloca %struct.foo*
	%math2 = alloca %struct.foo*
	%tmp = alloca i32
	%num = alloca i32
	store i32 %_P_num, i32* %num
	br label %LU14
LU14:
	%u8 = call i8* @malloc(i32 12)
	%u9 = bitcast i8* %u8 to %struct.foo*
	store %struct.foo* %u9, %struct.foo** %math1
	%u10 = call i8* @malloc(i32 4)
	%u11 = bitcast i8* %u10 to %struct.simple*
	%u12 = load %struct.foo** %math1
	%u13 = getelementptr %struct.foo* %u12, i1 0, i32 2
	store %struct.simple* %u11, %struct.simple** %u13
	%u14 = call i8* @malloc(i32 12)
	%u15 = bitcast i8* %u14 to %struct.foo*
	store %struct.foo* %u15, %struct.foo** %math2
	%u16 = call i8* @malloc(i32 4)
	%u17 = bitcast i8* %u16 to %struct.simple*
	%u18 = load %struct.foo** %math2
	%u19 = getelementptr %struct.foo* %u18, i1 0, i32 2
	store %struct.simple* %u17, %struct.simple** %u19
	%u20 = load i32* %num
	%u21 = load %struct.foo** %math1
	%u22 = getelementptr %struct.foo* %u21, i1 0, i32 0
	store i32 %u20, i32* %u22
	%u23 = load %struct.foo** %math2
	%u24 = getelementptr %struct.foo* %u23, i1 0, i32 0
	store i32 3, i32* %u24
	%u25 = load %struct.foo** %math1
	%u26 = getelementptr %struct.foo* %u25, i1 0, i32 0
	%u27 = load i32* %u26
	%u28 = load %struct.foo** %math1
	%u29 = getelementptr %struct.foo* %u28, i1 0, i32 2
	%u30 = load %struct.simple** %u29
	%u31 = getelementptr %struct.simple* %u30, i1 0, i32 0
	store i32 %u27, i32* %u31
	%u32 = load %struct.foo** %math2
	%u33 = getelementptr %struct.foo* %u32, i1 0, i32 0
	%u34 = load i32* %u33
	%u35 = load %struct.foo** %math2
	%u36 = getelementptr %struct.foo* %u35, i1 0, i32 2
	%u37 = load %struct.simple** %u36
	%u38 = getelementptr %struct.simple* %u37, i1 0, i32 0
	store i32 %u34, i32* %u38
	br label %LU16
LU16:
	%u39 = load i32* %num
	%u40 = icmp sgt i32 %u39, 0
	br i1 %u40, label %LU17, label %LU15
LU17:
	%u41 = load %struct.foo** %math1
	%u42 = getelementptr %struct.foo* %u41, i1 0, i32 0
	%u43 = load i32* %u42
	%u44 = load %struct.foo** %math2
	%u45 = getelementptr %struct.foo* %u44, i1 0, i32 0
	%u46 = load i32* %u45
	%u47 = mul i32 %u43, %u46
	store i32 %u47, i32* %tmp
	%u48 = load i32* %tmp
	%u49 = load %struct.foo** %math1
	%u50 = getelementptr %struct.foo* %u49, i1 0, i32 2
	%u51 = load %struct.simple** %u50
	%u52 = getelementptr %struct.simple* %u51, i1 0, i32 0
	%u53 = load i32* %u52
	%u54 = mul i32 %u48, %u53
	%u55 = load %struct.foo** %math2
	%u56 = getelementptr %struct.foo* %u55, i1 0, i32 0
	%u57 = load i32* %u56
	%u58 = sdiv i32 %u54, %u57
	store i32 %u58, i32* %tmp
	%u59 = load %struct.foo** %math2
	%u60 = getelementptr %struct.foo* %u59, i1 0, i32 2
	%u61 = load %struct.simple** %u60
	%u62 = getelementptr %struct.simple* %u61, i1 0, i32 0
	%u63 = load i32* %u62
	%u64 = load %struct.foo** %math1
	%u65 = getelementptr %struct.foo* %u64, i1 0, i32 0
	%u66 = load i32* %u65
	%u67 = call i32 @add(i32 %u63, i32 %u66)
	store i32 %u67, i32* %tmp
	%u69 = load %struct.foo** %math2
	%u70 = getelementptr %struct.foo* %u69, i1 0, i32 0
	%u71 = load i32* %u70
	%u72 = load %struct.foo** %math1
	%u73 = getelementptr %struct.foo* %u72, i1 0, i32 0
	%u74 = load i32* %u73
	%u75 = sub i32 %u71, %u74
	store i32 %u75, i32* %tmp
	%u76 = load i32* %num
	%u77 = sub i32 %u76, 1
	store i32 %u77, i32* %num
	br label %LU16
LU18:
	br label %LU15
LU15:
	ret void
}

define void @objinstantiation(i32 %_P_num)
{
LU20:
	%tmp = alloca %struct.foo*
	%num = alloca i32
	store i32 %_P_num, i32* %num
	br label %LU21
LU21:
	br label %LU23
LU23:
	%u78 = load i32* %num
	%u79 = icmp sgt i32 %u78, 0
	br i1 %u79, label %LU24, label %LU22
LU24:
	%u80 = call i8* @malloc(i32 12)
	%u81 = bitcast i8* %u80 to %struct.foo*
	store %struct.foo* %u81, %struct.foo** %tmp
	%u82 = load i32* %num
	%u83 = sub i32 %u82, 1
	store i32 %u83, i32* %num
	br label %LU23
LU25:
	br label %LU22
LU22:
	ret void
}

define i32 @ackermann(i32 %_P_m, i32 %_P_n)
{
LU27:
	%_retval_ = alloca i32
	%m = alloca i32
	store i32 %_P_m, i32* %m
	%n = alloca i32
	store i32 %_P_n, i32* %n
	br label %LU28
LU28:
	%u84 = load i32* %m
	%u85 = icmp eq i32 %u84, 0
	br i1 %u85, label %LU30, label %LU31
LU30:
	%u86 = load i32* %n
	%u87 = add i32 %u86, 1
	store i32 %u87, i32* %_retval_
	br label %LU29
LU31:
	br label %LU32
LU32:
	%u88 = load i32* %n
	%u89 = icmp eq i32 %u88, 0
	br i1 %u89, label %LU33, label %LU34
LU33:
	%u90 = load i32* %m
	%u91 = sub i32 %u90, 1
	%u92 = call i32 @ackermann(i32 %u91, i32 1)
	store i32 %u92, i32* %_retval_
	br label %LU29
LU34:
	%u94 = load i32* %m
	%u95 = sub i32 %u94, 1
	%u96 = load i32* %m
	%u97 = load i32* %n
	%u98 = sub i32 %u97, 1
	%u99 = call i32 @ackermann(i32 %u96, i32 %u98)
	%u101 = call i32 @ackermann(i32 %u95, i32 %u99)
	store i32 %u101, i32* %_retval_
	br label %LU29
LU35:
	br label %LU29
LU29:
	%u103 = load i32* %_retval_
	ret i32 %u103
}

define i32 @main()
{
LU37:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	%c = alloca i32
	%d = alloca i32
	%e = alloca i32
	br label %LU38
LU38:
	%u103 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u104 = load i32* @_scanned_
	store i32 %u104, i32* %a
	%u105 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u106 = load i32* @_scanned_
	store i32 %u106, i32* %b
	%u107 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u108 = load i32* @_scanned_
	store i32 %u108, i32* %c
	%u109 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u110 = load i32* @_scanned_
	store i32 %u110, i32* %d
	%u111 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u112 = load i32* @_scanned_
	store i32 %u112, i32* %e
	%u113 = load i32* %a
	call void @tailrecursive(i32 %u113)
	%u115 = load i32* %a
	%u116 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u115)
	%u117 = load i32* %b
	call void @domath(i32 %u117)
	%u119 = load i32* %b
	%u120 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u119)
	%u121 = load i32* %c
	call void @objinstantiation(i32 %u121)
	%u123 = load i32* %c
	%u124 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u123)
	%u125 = load i32* %d
	%u126 = load i32* %e
	%u127 = call i32 @ackermann(i32 %u125, i32 %u126)
	%u129 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u127)
	store i32 0, i32* %_retval_
	br label %LU39
LU39:
	%u130 = load i32* %_retval_
	ret i32 %u130
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
