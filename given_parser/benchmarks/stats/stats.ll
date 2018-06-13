target triple="i686"
%struct.linkedNums = type {i32, %struct.linkedNums*};
define %struct.linkedNums* @getRands(i32 %_P_seed, i32 %_P_num)
{
LU2:
	%_retval_ = alloca %struct.linkedNums*
	%cur = alloca i32
	%prev = alloca i32
	%curNode = alloca %struct.linkedNums*
	%prevNode = alloca %struct.linkedNums*
	%seed = alloca i32
	store i32 %_P_seed, i32* %seed
	%num = alloca i32
	store i32 %_P_num, i32* %num
	br label %LU3
LU3:
	store %struct.linkedNums* null, %struct.linkedNums** %curNode
	%u0 = load i32* %seed
	%u1 = load i32* %seed
	%u2 = mul i32 %u0, %u1
	store i32 %u2, i32* %cur
	%u3 = call i8* @malloc(i32 8)
	%u4 = bitcast i8* %u3 to %struct.linkedNums*
	store %struct.linkedNums* %u4, %struct.linkedNums** %prevNode
	%u5 = load i32* %cur
	%u6 = load %struct.linkedNums** %prevNode
	%u7 = getelementptr %struct.linkedNums* %u6, i1 0, i32 0
	store i32 %u5, i32* %u7
	%u8 = load %struct.linkedNums** %prevNode
	%u9 = getelementptr %struct.linkedNums* %u8, i1 0, i32 1
	store %struct.linkedNums* null, %struct.linkedNums** %u9
	%u10 = load i32* %num
	%u11 = sub i32 %u10, 1
	store i32 %u11, i32* %num
	%u12 = load i32* %cur
	store i32 %u12, i32* %prev
	br label %LU5
LU5:
	%u13 = load i32* %num
	%u14 = icmp sgt i32 %u13, 0
	br i1 %u14, label %LU6, label %LU7
LU6:
	%u15 = load i32* %prev
	%u16 = load i32* %prev
	%u17 = mul i32 %u15, %u16
	%u18 = load i32* %seed
	%u19 = sdiv i32 %u17, %u18
	%u20 = load i32* %seed
	%u21 = sdiv i32 %u20, 2
	%u22 = mul i32 %u19, %u21
	%u23 = add i32 %u22, 1
	store i32 %u23, i32* %cur
	%u24 = call i8* @malloc(i32 8)
	%u25 = bitcast i8* %u24 to %struct.linkedNums*
	store %struct.linkedNums* %u25, %struct.linkedNums** %curNode
	%u26 = load i32* %cur
	%u27 = load %struct.linkedNums** %curNode
	%u28 = getelementptr %struct.linkedNums* %u27, i1 0, i32 0
	store i32 %u26, i32* %u28
	%u29 = load %struct.linkedNums** %prevNode
	%u30 = load %struct.linkedNums** %curNode
	%u31 = getelementptr %struct.linkedNums* %u30, i1 0, i32 1
	store %struct.linkedNums* %u29, %struct.linkedNums** %u31
	%u32 = load %struct.linkedNums** %curNode
	store %struct.linkedNums* %u32, %struct.linkedNums** %prevNode
	%u33 = load i32* %num
	%u34 = sub i32 %u33, 1
	store i32 %u34, i32* %num
	%u35 = load i32* %cur
	store i32 %u35, i32* %prev
	br label %LU5
LU7:
	%u36 = load %struct.linkedNums** %curNode
	store %struct.linkedNums* %u36, %struct.linkedNums** %_retval_
	br label %LU4
LU4:
	%u37 = load %struct.linkedNums** %_retval_
	ret %struct.linkedNums* %u37
}

define i32 @calcMean(%struct.linkedNums* %_P_nums)
{
LU9:
	%_retval_ = alloca i32
	%sum = alloca i32
	%num = alloca i32
	%mean = alloca i32
	%nums = alloca %struct.linkedNums*
	store %struct.linkedNums* %_P_nums, %struct.linkedNums** %nums
	br label %LU10
LU10:
	store i32 0, i32* %sum
	store i32 0, i32* %num
	store i32 0, i32* %mean
	br label %LU12
LU12:
	%u37 = load %struct.linkedNums** %nums
	%u38 = icmp ne %struct.linkedNums* %u37, null
	br i1 %u38, label %LU13, label %LU14
LU13:
	%u39 = load i32* %num
	%u40 = add i32 %u39, 1
	store i32 %u40, i32* %num
	%u41 = load i32* %sum
	%u42 = load %struct.linkedNums** %nums
	%u43 = getelementptr %struct.linkedNums* %u42, i1 0, i32 0
	%u44 = load i32* %u43
	%u45 = add i32 %u41, %u44
	store i32 %u45, i32* %sum
	%u46 = load %struct.linkedNums** %nums
	%u47 = getelementptr %struct.linkedNums* %u46, i1 0, i32 1
	%u48 = load %struct.linkedNums** %u47
	store %struct.linkedNums* %u48, %struct.linkedNums** %nums
	br label %LU12
LU14:
	%u49 = load i32* %num
	%u50 = icmp ne i32 %u49, 0
	br i1 %u50, label %LU15, label %LU16
LU15:
	%u51 = load i32* %sum
	%u52 = load i32* %num
	%u53 = sdiv i32 %u51, %u52
	store i32 %u53, i32* %mean
	br label %LU17
LU16:
	br label %LU17
LU17:
	%u54 = load i32* %mean
	store i32 %u54, i32* %_retval_
	br label %LU11
LU11:
	%u55 = load i32* %_retval_
	ret i32 %u55
}

define i32 @approxSqrt(i32 %_P_num)
{
LU19:
	%_retval_ = alloca i32
	%guess = alloca i32
	%result = alloca i32
	%prev = alloca i32
	%num = alloca i32
	store i32 %_P_num, i32* %num
	br label %LU20
LU20:
	store i32 1, i32* %guess
	%u55 = load i32* %guess
	store i32 %u55, i32* %prev
	store i32 0, i32* %result
	br label %LU22
LU22:
	%u56 = load i32* %result
	%u57 = load i32* %num
	%u58 = icmp slt i32 %u56, %u57
	br i1 %u58, label %LU23, label %LU24
LU23:
	%u59 = load i32* %guess
	%u60 = load i32* %guess
	%u61 = mul i32 %u59, %u60
	store i32 %u61, i32* %result
	%u62 = load i32* %guess
	store i32 %u62, i32* %prev
	%u63 = load i32* %guess
	%u64 = add i32 %u63, 1
	store i32 %u64, i32* %guess
	br label %LU22
LU24:
	%u65 = load i32* %prev
	store i32 %u65, i32* %_retval_
	br label %LU21
LU21:
	%u66 = load i32* %_retval_
	ret i32 %u66
}

define void @approxSqrtAll(%struct.linkedNums* %_P_nums)
{
LU26:
	%nums = alloca %struct.linkedNums*
	store %struct.linkedNums* %_P_nums, %struct.linkedNums** %nums
	br label %LU27
LU27:
	br label %LU29
LU29:
	%u66 = load %struct.linkedNums** %nums
	%u67 = icmp ne %struct.linkedNums* %u66, null
	br i1 %u67, label %LU30, label %LU31
LU30:
	%u68 = load %struct.linkedNums** %nums
	%u69 = getelementptr %struct.linkedNums* %u68, i1 0, i32 0
	%u70 = load i32* %u69
	%u71 = call i32 @approxSqrt(i32 %u70)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u71)
	%u73 = load %struct.linkedNums** %nums
	%u74 = getelementptr %struct.linkedNums* %u73, i1 0, i32 1
	%u75 = load %struct.linkedNums** %u74
	store %struct.linkedNums* %u75, %struct.linkedNums** %nums
	br label %LU29
LU31:
	br label %LU28
LU28:
	ret void
}

define void @range(%struct.linkedNums* %_P_nums)
{
LU33:
	%min = alloca i32
	%max = alloca i32
	%first = alloca i1
	%nums = alloca %struct.linkedNums*
	store %struct.linkedNums* %_P_nums, %struct.linkedNums** %nums
	br label %LU34
LU34:
	store i32 0, i32* %min
	store i32 0, i32* %max
	store i1 1, i1* %first
	br label %LU36
LU36:
	%u76 = load %struct.linkedNums** %nums
	%u77 = icmp ne %struct.linkedNums* %u76, null
	br i1 %u77, label %LU37, label %LU38
LU37:
	%u78 = load i1* %first
	br i1 %u78, label %LU39, label %LU40
LU39:
	%u79 = load %struct.linkedNums** %nums
	%u80 = getelementptr %struct.linkedNums* %u79, i1 0, i32 0
	%u81 = load i32* %u80
	store i32 %u81, i32* %min
	%u82 = load %struct.linkedNums** %nums
	%u83 = getelementptr %struct.linkedNums* %u82, i1 0, i32 0
	%u84 = load i32* %u83
	store i32 %u84, i32* %max
	store i1 0, i1* %first
	br label %LU47
LU40:
	%u85 = load %struct.linkedNums** %nums
	%u86 = getelementptr %struct.linkedNums* %u85, i1 0, i32 0
	%u87 = load i32* %u86
	%u88 = load i32* %min
	%u89 = icmp slt i32 %u87, %u88
	br i1 %u89, label %LU41, label %LU42
	br label %LU47
LU47:
	%u101 = load %struct.linkedNums** %nums
	%u102 = getelementptr %struct.linkedNums* %u101, i1 0, i32 1
	%u103 = load %struct.linkedNums** %u102
	store %struct.linkedNums* %u103, %struct.linkedNums** %nums
	br label %LU36
LU41:
	%u90 = load %struct.linkedNums** %nums
	%u91 = getelementptr %struct.linkedNums* %u90, i1 0, i32 0
	%u92 = load i32* %u91
	store i32 %u92, i32* %min
	br label %LU46
LU46:
	br label %LU47
LU42:
	%u93 = load %struct.linkedNums** %nums
	%u94 = getelementptr %struct.linkedNums* %u93, i1 0, i32 0
	%u95 = load i32* %u94
	%u96 = load i32* %max
	%u97 = icmp sgt i32 %u95, %u96
	br i1 %u97, label %LU43, label %LU44
	br label %LU46
LU43:
	%u98 = load %struct.linkedNums** %nums
	%u99 = getelementptr %struct.linkedNums* %u98, i1 0, i32 0
	%u100 = load i32* %u99
	store i32 %u100, i32* %max
	br label %LU45
LU44:
	br label %LU45
LU45:
	br label %LU46
LU38:
	%u104 = load i32* %min
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u104)
	%u105 = load i32* %max
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u105)
	br label %LU35
LU35:
	ret void
}

define i32 @main()
{
LU49:
	%_retval_ = alloca i32
	%seed = alloca i32
	%num = alloca i32
	%mean = alloca i32
	%nums = alloca %struct.linkedNums*
	br label %LU50
LU50:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u106 = load i32* @_scanned_
	store i32 %u106, i32* %seed
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u107 = load i32* @_scanned_
	store i32 %u107, i32* %num
	%u108 = load i32* %seed
	%u109 = load i32* %num
	%u110 = call %struct.linkedNums* @getRands(i32 %u108, i32 %u109)
	store %struct.linkedNums* %u110, %struct.linkedNums** %nums
	%u112 = load %struct.linkedNums** %nums
	%u113 = call i32 @calcMean(%struct.linkedNums* %u112)
	store i32 %u113, i32* %mean
	%u115 = load i32* %mean
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u115)
	%u116 = load %struct.linkedNums** %nums
	call void @range(%struct.linkedNums* %u116)
	%u118 = load %struct.linkedNums** %nums
	call void @approxSqrtAll(%struct.linkedNums* %u118)
	store i32 0, i32* %_retval_
	br label %LU51
LU51:
	%u120 = load i32* %_retval_
	ret i32 %u120
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
