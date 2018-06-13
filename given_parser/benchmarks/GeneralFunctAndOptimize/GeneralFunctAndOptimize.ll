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
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u39 = load i32* @_scanned_
	store i32 %u39, i32* %start
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u40 = load i32* @_scanned_
	store i32 %u40, i32* @interval
	%u41 = load i32* %start
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u41)
	%u42 = load i32* @interval
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u42)
	store i32 0, i32* %countOuter
	store i32 0, i32* %countInner
	store i32 0, i32* %calc
	br label %LU16
LU16:
	%u43 = load i32* %countOuter
	%u44 = icmp slt i32 %u43, 50
	br i1 %u44, label %LU17, label %LU18
LU17:
	store i32 0, i32* %countInner
	br label %LU19
LU19:
	%u45 = load i32* %countInner
	%u46 = load i32* @end
	%u47 = icmp sle i32 %u45, %u46
	br i1 %u47, label %LU20, label %LU21
LU20:
	%u48 = mul i32 1, 2
	%u49 = mul i32 %u48, 3
	%u50 = mul i32 %u49, 4
	%u51 = mul i32 %u50, 5
	%u52 = mul i32 %u51, 6
	%u53 = mul i32 %u52, 7
	%u54 = mul i32 %u53, 8
	%u55 = mul i32 %u54, 9
	%u56 = mul i32 %u55, 10
	%u57 = mul i32 %u56, 11
	store i32 %u57, i32* %calc
	%u58 = load i32* %countInner
	%u59 = add i32 %u58, 1
	store i32 %u59, i32* %countInner
	%u60 = load i32* %countInner
	%u61 = load %struct.IntHolder** %x
	%u62 = getelementptr %struct.IntHolder* %u61, i1 0, i32 0
	store i32 %u60, i32* %u62
	%u63 = load %struct.IntHolder** %x
	%u64 = getelementptr %struct.IntHolder* %u63, i1 0, i32 0
	%u65 = load i32* %u64
	store i32 %u65, i32* %tempAnswer
	%u66 = load %struct.IntHolder** %x
	%u67 = call i32 @multBy4xTimes(%struct.IntHolder* %u66, i32 2)
	%u69 = load %struct.IntHolder** %x
	call void @divideBy8(%struct.IntHolder* %u69)
	%u71 = load i32* @interval
	%u72 = sub i32 %u71, 1
	store i32 %u72, i32* %tempInterval
	%u73 = load i32* %tempInterval
	%u74 = icmp sle i32 %u73, 0
	store i1 %u74, i1* %uselessVar
	%u75 = load i32* %tempInterval
	%u76 = icmp sle i32 %u75, 0
	br i1 %u76, label %LU22, label %LU23
LU22:
	store i32 1, i32* %tempInterval
	br label %LU24
LU23:
	br label %LU24
LU24:
	%u77 = load i32* %countInner
	%u78 = load i32* %tempInterval
	%u79 = add i32 %u77, %u78
	store i32 %u79, i32* %countInner
	br label %LU19
LU21:
	%u80 = load i32* %countOuter
	%u81 = add i32 %u80, 1
	store i32 %u81, i32* %countOuter
	br label %LU16
LU18:
	%u82 = load i32* %countInner
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u82)
	%u83 = load i32* %calc
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u83)
	store i32 0, i32* %_retval_
	br label %LU15
LU15:
	%u84 = load i32* %_retval_
	ret i32 %u84
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
