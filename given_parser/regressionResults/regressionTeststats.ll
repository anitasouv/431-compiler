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
	br i1 %u14, label %LU6, label %LU4
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
	br i1 %u38, label %LU13, label %LU11
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
	br i1 %u58, label %LU23, label %LU21
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
	br i1 %u67, label %LU30, label %LU28
LU30:
	%u68 = load %struct.linkedNums** %nums
	%u69 = getelementptr %struct.linkedNums* %u68, i1 0, i32 0
	%u70 = load i32* %u69
	%u71 = call i32 @approxSqrt(i32 %u70)
	%u73 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u71)
	%u74 = load %struct.linkedNums** %nums
	%u75 = getelementptr %struct.linkedNums* %u74, i1 0, i32 1
	%u76 = load %struct.linkedNums** %u75
	store %struct.linkedNums* %u76, %struct.linkedNums** %nums
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
	%u77 = load %struct.linkedNums** %nums
	%u78 = icmp ne %struct.linkedNums* %u77, null
	br i1 %u78, label %LU46, label %LU35
LU37:
	%u79 = load i1* %first
	br i1 %u79, label %LU38, label %LU39
LU38:
	%u80 = load %struct.linkedNums** %nums
	%u81 = getelementptr %struct.linkedNums* %u80, i1 0, i32 0
	%u82 = load i32* %u81
	store i32 %u82, i32* %min
	%u83 = load %struct.linkedNums** %nums
	%u84 = getelementptr %struct.linkedNums* %u83, i1 0, i32 0
	%u85 = load i32* %u84
	store i32 %u85, i32* %max
	store i1 0, i1* %first
	br label %LU46
LU39:
	%u86 = load %struct.linkedNums** %nums
	%u87 = getelementptr %struct.linkedNums* %u86, i1 0, i32 0
	%u88 = load i32* %u87
	%u89 = load i32* %min
	%u90 = icmp slt i32 %u88, %u89
	br i1 %u90, label %LU40, label %LU41
	br label %LU46
LU46:
	%u102 = load %struct.linkedNums** %nums
	%u103 = getelementptr %struct.linkedNums* %u102, i1 0, i32 1
	%u104 = load %struct.linkedNums** %u103
	store %struct.linkedNums* %u104, %struct.linkedNums** %nums
	br label %LU36
LU40:
	%u91 = load %struct.linkedNums** %nums
	%u92 = getelementptr %struct.linkedNums* %u91, i1 0, i32 0
	%u93 = load i32* %u92
	store i32 %u93, i32* %min
	br label %LU45
LU45:
	br label %LU46
LU41:
	%u94 = load %struct.linkedNums** %nums
	%u95 = getelementptr %struct.linkedNums* %u94, i1 0, i32 0
	%u96 = load i32* %u95
	%u97 = load i32* %max
	%u98 = icmp sgt i32 %u96, %u97
	br i1 %u98, label %LU42, label %LU43
	br label %LU45
LU42:
	%u99 = load %struct.linkedNums** %nums
	%u100 = getelementptr %struct.linkedNums* %u99, i1 0, i32 0
	%u101 = load i32* %u100
	store i32 %u101, i32* %max
	br label %LU44
LU43:
	br label %LU44
LU44:
	br label %LU45
LU47:
	%u105 = load i32* %min
	%u106 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u105)
	%u107 = load i32* %max
	%u108 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u107)
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
	%u109 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u110 = load i32* @_scanned_
	store i32 %u110, i32* %seed
	%u111 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u112 = load i32* @_scanned_
	store i32 %u112, i32* %num
	%u113 = load i32* %seed
	%u114 = load i32* %num
	%u115 = call %struct.linkedNums* @getRands(i32 %u113, i32 %u114)
	store %struct.linkedNums* %u115, %struct.linkedNums** %nums
	%u117 = load %struct.linkedNums** %nums
	%u118 = call i32 @calcMean(%struct.linkedNums* %u117)
	store i32 %u118, i32* %mean
	%u120 = load i32* %mean
	%u121 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u120)
	%u122 = load %struct.linkedNums** %nums
	call void @range(%struct.linkedNums* %u122)
	%u124 = load %struct.linkedNums** %nums
	call void @approxSqrtAll(%struct.linkedNums* %u124)
	store i32 0, i32* %_retval_
	br label %LU51
LU51:
	%u126 = load i32* %_retval_
	ret i32 %u126
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
