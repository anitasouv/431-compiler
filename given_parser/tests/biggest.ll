target triple="i686"
%struct.IntList = type {i32, %struct.IntList*};
define %struct.IntList* @getIntList()
{
LU2:
	%_retval_ = alloca %struct.IntList*
	%list = alloca %struct.IntList*
	%next = alloca i32
	br label %LU3
LU3:
	%u0 = call i8* @malloc(i32 8)
	%u1 = bitcast i8* %u0 to %struct.IntList*
	store %struct.IntList* %u1, %struct.IntList** %list
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u2 = load i32* @_scanned_
	store i32 %u2, i32* %next
	%u3 = load i32* %next
	%u4 = sub i32 0, 1
	%u5 = icmp eq i32 %u3, %u4
	br i1 %u5, label %LU5, label %LU6
LU5:
	%u6 = load i32* %next
	%u7 = load %struct.IntList** %list
	%u8 = getelementptr %struct.IntList* %u7, i1 0, i32 0
	store i32 %u6, i32* %u8
	%u9 = load %struct.IntList** %list
	%u10 = getelementptr %struct.IntList* %u9, i1 0, i32 1
	store %struct.IntList* null, %struct.IntList** %u10
	%u11 = load %struct.IntList** %list
	store %struct.IntList* %u11, %struct.IntList** %_retval_
	br label %LU4
LU6:
	%u12 = load i32* %next
	%u13 = load %struct.IntList** %list
	%u14 = getelementptr %struct.IntList* %u13, i1 0, i32 0
	store i32 %u12, i32* %u14
	%u15 = call %struct.IntList* @getIntList()
	%u17 = load %struct.IntList** %list
	%u18 = getelementptr %struct.IntList* %u17, i1 0, i32 1
	store %struct.IntList* %u15, %struct.IntList** %u18
	%u19 = load %struct.IntList** %list
	store %struct.IntList* %u19, %struct.IntList** %_retval_
	br label %LU4
LU7:
	br label %LU4
LU4:
	%u20 = load %struct.IntList** %_retval_
	ret %struct.IntList* %u20
}

define i32 @biggest(i32 %_P_num1, i32 %_P_num2)
{
LU9:
	%_retval_ = alloca i32
	%num1 = alloca i32
	store i32 %_P_num1, i32* %num1
	%num2 = alloca i32
	store i32 %_P_num2, i32* %num2
	br label %LU10
LU10:
	%u20 = load i32* %num1
	%u21 = load i32* %num2
	%u22 = icmp sgt i32 %u20, %u21
	br i1 %u22, label %LU12, label %LU13
LU12:
	%u23 = load i32* %num1
	store i32 %u23, i32* %_retval_
	br label %LU11
LU13:
	%u24 = load i32* %num2
	store i32 %u24, i32* %_retval_
	br label %LU11
LU14:
	br label %LU11
LU11:
	%u25 = load i32* %_retval_
	ret i32 %u25
}

define i32 @biggestInList(%struct.IntList* %_P_list)
{
LU16:
	%_retval_ = alloca i32
	%big = alloca i32
	%list = alloca %struct.IntList*
	store %struct.IntList* %_P_list, %struct.IntList** %list
	br label %LU17
LU17:
	%u25 = load %struct.IntList** %list
	%u26 = getelementptr %struct.IntList* %u25, i1 0, i32 0
	%u27 = load i32* %u26
	store i32 %u27, i32* %big
	br label %LU19
LU19:
	%u28 = load %struct.IntList** %list
	%u29 = getelementptr %struct.IntList* %u28, i1 0, i32 1
	%u30 = load %struct.IntList** %u29
	%u31 = icmp ne %struct.IntList* %u30, null
	br i1 %u31, label %LU20, label %LU21
LU20:
	%u32 = load i32* %big
	%u33 = load %struct.IntList** %list
	%u34 = getelementptr %struct.IntList* %u33, i1 0, i32 0
	%u35 = load i32* %u34
	%u36 = call i32 @biggest(i32 %u32, i32 %u35)
	store i32 %u36, i32* %big
	%u38 = load %struct.IntList** %list
	%u39 = getelementptr %struct.IntList* %u38, i1 0, i32 1
	%u40 = load %struct.IntList** %u39
	store %struct.IntList* %u40, %struct.IntList** %list
	br label %LU19
LU21:
	%u41 = load i32* %big
	store i32 %u41, i32* %_retval_
	br label %LU18
LU18:
	%u42 = load i32* %_retval_
	ret i32 %u42
}

define i32 @main()
{
LU23:
	%_retval_ = alloca i32
	%list = alloca %struct.IntList*
	br label %LU24
LU24:
	%u42 = call %struct.IntList* @getIntList()
	store %struct.IntList* %u42, %struct.IntList** %list
	%u44 = load %struct.IntList** %list
	%u45 = call i32 @biggestInList(%struct.IntList* %u44)
	%u47 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u45)
	store i32 0, i32* %_retval_
	br label %LU25
LU25:
	%u48 = load i32* %_retval_
	ret i32 %u48
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
