target triple="i686"
%struct.simple = type {i32};
%struct.foo = type {i32, i1, %struct.simple*};
@globalfoo = common global %struct.foo* null, align 4
define void @tailrecursive(i32 %_P_num)
{
LU2:
	%unused = alloca %struct.foo*
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
	%u2 = call i8* @malloc(i32 12)
	%u3 = bitcast i8* %u2 to %struct.foo*
	store %struct.foo* %u3, %struct.foo** %unused
	%u4 = load i32* %num
	%u5 = sub i32 %u4, 1
	call void @tailrecursive(i32 %u5)
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
	%u7 = load i32* %x
	%u8 = load i32* %y
	%u9 = add i32 %u7, %u8
	store i32 %u9, i32* %_retval_
	br label %LU11
LU11:
	%u10 = load i32* %_retval_
	ret i32 %u10
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
	%u10 = call i8* @malloc(i32 12)
	%u11 = bitcast i8* %u10 to %struct.foo*
	store %struct.foo* %u11, %struct.foo** %math1
	%u12 = call i8* @malloc(i32 4)
	%u13 = bitcast i8* %u12 to %struct.simple*
	%u14 = load %struct.foo** %math1
	%u15 = getelementptr %struct.foo* %u14, i1 0, i32 2
	store %struct.simple* %u13, %struct.simple** %u15
	%u16 = call i8* @malloc(i32 12)
	%u17 = bitcast i8* %u16 to %struct.foo*
	store %struct.foo* %u17, %struct.foo** %math2
	%u18 = call i8* @malloc(i32 4)
	%u19 = bitcast i8* %u18 to %struct.simple*
	%u20 = load %struct.foo** %math2
	%u21 = getelementptr %struct.foo* %u20, i1 0, i32 2
	store %struct.simple* %u19, %struct.simple** %u21
	%u22 = load i32* %num
	%u23 = load %struct.foo** %math1
	%u24 = getelementptr %struct.foo* %u23, i1 0, i32 0
	store i32 %u22, i32* %u24
	%u25 = load %struct.foo** %math2
	%u26 = getelementptr %struct.foo* %u25, i1 0, i32 0
	store i32 3, i32* %u26
	%u27 = load %struct.foo** %math1
	%u28 = getelementptr %struct.foo* %u27, i1 0, i32 0
	%u29 = load i32* %u28
	%u30 = load %struct.foo** %math1
	%u31 = getelementptr %struct.foo* %u30, i1 0, i32 2
	%u32 = load %struct.simple** %u31
	%u33 = getelementptr %struct.simple* %u32, i1 0, i32 0
	store i32 %u29, i32* %u33
	%u34 = load %struct.foo** %math2
	%u35 = getelementptr %struct.foo* %u34, i1 0, i32 0
	%u36 = load i32* %u35
	%u37 = load %struct.foo** %math2
	%u38 = getelementptr %struct.foo* %u37, i1 0, i32 2
	%u39 = load %struct.simple** %u38
	%u40 = getelementptr %struct.simple* %u39, i1 0, i32 0
	store i32 %u36, i32* %u40
	br label %LU16
LU16:
	%u41 = load i32* %num
	%u42 = icmp sgt i32 %u41, 0
	br i1 %u42, label %LU17, label %LU15
LU17:
	%u43 = load %struct.foo** %math1
	%u44 = getelementptr %struct.foo* %u43, i1 0, i32 0
	%u45 = load i32* %u44
	%u46 = load %struct.foo** %math2
	%u47 = getelementptr %struct.foo* %u46, i1 0, i32 0
	%u48 = load i32* %u47
	%u49 = mul i32 %u45, %u48
	store i32 %u49, i32* %tmp
	%u50 = load i32* %tmp
	%u51 = load %struct.foo** %math1
	%u52 = getelementptr %struct.foo* %u51, i1 0, i32 2
	%u53 = load %struct.simple** %u52
	%u54 = getelementptr %struct.simple* %u53, i1 0, i32 0
	%u55 = load i32* %u54
	%u56 = mul i32 %u50, %u55
	%u57 = load %struct.foo** %math2
	%u58 = getelementptr %struct.foo* %u57, i1 0, i32 0
	%u59 = load i32* %u58
	%u60 = sdiv i32 %u56, %u59
	store i32 %u60, i32* %tmp
	%u61 = load %struct.foo** %math2
	%u62 = getelementptr %struct.foo* %u61, i1 0, i32 2
	%u63 = load %struct.simple** %u62
	%u64 = getelementptr %struct.simple* %u63, i1 0, i32 0
	%u65 = load i32* %u64
	%u66 = load %struct.foo** %math1
	%u67 = getelementptr %struct.foo* %u66, i1 0, i32 0
	%u68 = load i32* %u67
	%u69 = call i32 @add(i32 %u65, i32 %u68)
	store i32 %u69, i32* %tmp
	%u71 = load %struct.foo** %math2
	%u72 = getelementptr %struct.foo* %u71, i1 0, i32 0
	%u73 = load i32* %u72
	%u74 = load %struct.foo** %math1
	%u75 = getelementptr %struct.foo* %u74, i1 0, i32 0
	%u76 = load i32* %u75
	%u77 = sub i32 %u73, %u76
	store i32 %u77, i32* %tmp
	%u78 = load i32* %num
	%u79 = sub i32 %u78, 1
	store i32 %u79, i32* %num
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
	%u80 = load i32* %num
	%u81 = icmp sgt i32 %u80, 0
	br i1 %u81, label %LU24, label %LU22
LU24:
	%u82 = call i8* @malloc(i32 12)
	%u83 = bitcast i8* %u82 to %struct.foo*
	store %struct.foo* %u83, %struct.foo** %tmp
	%u84 = load i32* %num
	%u85 = sub i32 %u84, 1
	store i32 %u85, i32* %num
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
	%u86 = load i32* %m
	%u87 = icmp eq i32 %u86, 0
	br i1 %u87, label %LU30, label %LU31
LU30:
	%u88 = load i32* %n
	%u89 = add i32 %u88, 1
	store i32 %u89, i32* %_retval_
	br label %LU29
LU31:
	br label %LU32
LU32:
	%u90 = load i32* %n
	%u91 = icmp eq i32 %u90, 0
	br i1 %u91, label %LU33, label %LU34
LU33:
	%u92 = load i32* %m
	%u93 = sub i32 %u92, 1
	%u94 = call i32 @ackermann(i32 %u93, i32 1)
	store i32 %u94, i32* %_retval_
	br label %LU29
LU34:
	%u96 = load i32* %m
	%u97 = sub i32 %u96, 1
	%u98 = load i32* %m
	%u99 = load i32* %n
	%u100 = sub i32 %u99, 1
	%u101 = call i32 @ackermann(i32 %u98, i32 %u100)
	%u103 = call i32 @ackermann(i32 %u97, i32 %u101)
	store i32 %u103, i32* %_retval_
	br label %LU29
LU35:
	br label %LU29
LU29:
	%u105 = load i32* %_retval_
	ret i32 %u105
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
	%u105 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u106 = load i32* @_scanned_
	store i32 %u106, i32* %a
	%u107 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u108 = load i32* @_scanned_
	store i32 %u108, i32* %b
	%u109 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u110 = load i32* @_scanned_
	store i32 %u110, i32* %c
	%u111 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u112 = load i32* @_scanned_
	store i32 %u112, i32* %d
	%u113 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u114 = load i32* @_scanned_
	store i32 %u114, i32* %e
	%u115 = load i32* %a
	call void @tailrecursive(i32 %u115)
	%u117 = load i32* %a
	%u118 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u117)
	%u119 = load i32* %b
	call void @domath(i32 %u119)
	%u121 = load i32* %b
	%u122 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u121)
	%u123 = load i32* %c
	call void @objinstantiation(i32 %u123)
	%u125 = load i32* %c
	%u126 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u125)
	%u127 = load i32* %d
	%u128 = load i32* %e
	%u129 = call i32 @ackermann(i32 %u127, i32 %u128)
	%u131 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u129)
	store i32 0, i32* %_retval_
	br label %LU39
LU39:
	%u132 = load i32* %_retval_
	ret i32 %u132
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
