target triple="i686"
%struct.IntHolder = type {i32};
@interval = common global i32 0, align 4
@end = common global i32 0, align 4
define i32 @multBy4xTimes(%struct.IntHolder* %_P_num, i32 %_P_timesLeft)
{
LU2:
	%_retval_ = alloca i32
	%num = alloca %struct.IntHolder*
	store %struct.IntHolder* %_P_num, %struct.IntHolder** %num
	%timesLeft = alloca i32
	store i32 %_P_timesLeft, i32* %timesLeft
	br label %LU3
LU3:
	%u0 = load i32* %timesLeft
	%u1 = icmp sle i32 %u0, 0
	br i1 %u1, label %LU5, label %LU6
LU5:
	%u2 = load %struct.IntHolder** %num
	%u3 = getelementptr %struct.IntHolder* %u2, i1 0, i32 0
	%u4 = load i32* %u3
	store i32 %u4, i32* %_retval_
	br label %LU4
LU6:
	br label %LU7
LU7:
	%u5 = load %struct.IntHolder** %num
	%u6 = getelementptr %struct.IntHolder* %u5, i1 0, i32 0
	%u7 = load i32* %u6
	%u8 = mul i32 4, %u7
	%u9 = load %struct.IntHolder** %num
	%u10 = getelementptr %struct.IntHolder* %u9, i1 0, i32 0
	store i32 %u8, i32* %u10
	%u11 = load %struct.IntHolder** %num
	%u12 = load i32* %timesLeft
	%u13 = sub i32 %u12, 1
	%u14 = call i32 @multBy4xTimes(%struct.IntHolder* %u11, i32 %u13)
	%u16 = load %struct.IntHolder** %num
	%u17 = getelementptr %struct.IntHolder* %u16, i1 0, i32 0
	%u18 = load i32* %u17
	store i32 %u18, i32* %_retval_
	br label %LU4
LU4:
	%u19 = load i32* %_retval_
	ret i32 %u19
}

define void @divideBy8(%struct.IntHolder* %_P_num)
{
LU9:
	%num = alloca %struct.IntHolder*
	store %struct.IntHolder* %_P_num, %struct.IntHolder** %num
	br label %LU10
LU10:
	%u19 = load %struct.IntHolder** %num
	%u20 = getelementptr %struct.IntHolder* %u19, i1 0, i32 0
	%u21 = load i32* %u20
	%u22 = sdiv i32 %u21, 2
	%u23 = load %struct.IntHolder** %num
	%u24 = getelementptr %struct.IntHolder* %u23, i1 0, i32 0
	store i32 %u22, i32* %u24
	%u25 = load %struct.IntHolder** %num
	%u26 = getelementptr %struct.IntHolder* %u25, i1 0, i32 0
	%u27 = load i32* %u26
	%u28 = sdiv i32 %u27, 2
	%u29 = load %struct.IntHolder** %num
	%u30 = getelementptr %struct.IntHolder* %u29, i1 0, i32 0
	store i32 %u28, i32* %u30
	%u31 = load %struct.IntHolder** %num
	%u32 = getelementptr %struct.IntHolder* %u31, i1 0, i32 0
	%u33 = load i32* %u32
	%u34 = sdiv i32 %u33, 2
	%u35 = load %struct.IntHolder** %num
	%u36 = getelementptr %struct.IntHolder* %u35, i1 0, i32 0
	store i32 %u34, i32* %u36
	br label %LU11
LU11:
	ret void
}

define i32 @main()
{
LU13:
	%_retval_ = alloca i32
	%start = alloca i32
	%countOuter = alloca i32
	%countInner = alloca i32
	%calc = alloca i32
	%tempAnswer = alloca i32
	%tempInterval = alloca i32
	%x = alloca %struct.IntHolder*
	%uselessVar = alloca i1
	%uselessVar2 = alloca i1
	br label %LU14
LU14:
	%u37 = call i8* @malloc(i32 4)
	%u38 = bitcast i8* %u37 to %struct.IntHolder*
	store %struct.IntHolder* %u38, %struct.IntHolder** %x
	store i32 1000000, i32* @end
	%u39 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u40 = load i32* @_scanned_
	store i32 %u40, i32* %start
	%u41 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u42 = load i32* @_scanned_
	store i32 %u42, i32* @interval
	%u43 = load i32* %start
	%u44 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u43)
	%u45 = load i32* @interval
	%u46 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u45)
	store i32 0, i32* %countOuter
	store i32 0, i32* %countInner
	store i32 0, i32* %calc
	br label %LU16
LU16:
	%u47 = load i32* %countOuter
	%u48 = icmp slt i32 %u47, 50
	br i1 %u48, label %LU23, label %LU15
LU17:
	store i32 0, i32* %countInner
	br label %LU18
LU18:
	%u49 = load i32* %countInner
	%u50 = load i32* @end
	%u51 = icmp sle i32 %u49, %u50
	br i1 %u51, label %LU22, label %LU15
LU19:
	%u52 = mul i32 1, 2
	%u53 = mul i32 %u52, 3
	%u54 = mul i32 %u53, 4
	%u55 = mul i32 %u54, 5
	%u56 = mul i32 %u55, 6
	%u57 = mul i32 %u56, 7
	%u58 = mul i32 %u57, 8
	%u59 = mul i32 %u58, 9
	%u60 = mul i32 %u59, 10
	%u61 = mul i32 %u60, 11
	store i32 %u61, i32* %calc
	%u62 = load i32* %countInner
	%u63 = add i32 %u62, 1
	store i32 %u63, i32* %countInner
	%u64 = load i32* %countInner
	%u65 = load %struct.IntHolder** %x
	%u66 = getelementptr %struct.IntHolder* %u65, i1 0, i32 0
	store i32 %u64, i32* %u66
	%u67 = load %struct.IntHolder** %x
	%u68 = getelementptr %struct.IntHolder* %u67, i1 0, i32 0
	%u69 = load i32* %u68
	store i32 %u69, i32* %tempAnswer
	%u70 = load %struct.IntHolder** %x
	%u71 = call i32 @multBy4xTimes(%struct.IntHolder* %u70, i32 2)
	%u73 = load %struct.IntHolder** %x
	call void @divideBy8(%struct.IntHolder* %u73)
	%u75 = load i32* @interval
	%u76 = sub i32 %u75, 1
	store i32 %u76, i32* %tempInterval
	%u77 = load i32* %tempInterval
	%u78 = icmp sle i32 %u77, 0
	store i1 %u78, i1* %uselessVar
	%u79 = load i32* %tempInterval
	%u80 = icmp sle i32 %u79, 0
	br i1 %u80, label %LU20, label %LU21
LU20:
	store i32 1, i32* %tempInterval
	br label %LU22
LU21:
	br label %LU22
LU22:
	%u81 = load i32* %countInner
	%u82 = load i32* %tempInterval
	%u83 = add i32 %u81, %u82
	store i32 %u83, i32* %countInner
	br label %LU18
LU23:
	%u84 = load i32* %countOuter
	%u85 = add i32 %u84, 1
	store i32 %u85, i32* %countOuter
	br label %LU16
LU24:
	%u86 = load i32* %countInner
	%u87 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u86)
	%u88 = load i32* %calc
	%u89 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u88)
	store i32 0, i32* %_retval_
	br label %LU15
LU15:
	%u90 = load i32* %_retval_
	ret i32 %u90
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
