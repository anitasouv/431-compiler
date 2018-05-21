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
	%u2 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u3 = load i32* @_scanned_
	store i32 %u3, i32* %next
	%u4 = load i32* %next
	%u5 = sub i32 0, 1
	%u6 = icmp eq i32 %u4, %u5
	br i1 %u6, label %LU5, label %LU6
LU5:
	%u7 = load i32* %next
	%u8 = load %struct.IntList** %list
	%u9 = getelementptr %struct.IntList* %u8, i1 0, i32 0
	store i32 %u7, i32* %u9
	%u10 = load %struct.IntList** %list
	%u11 = getelementptr %struct.IntList* %u10, i1 0, i32 1
	store %struct.IntList* null, %struct.IntList** %u11
	%u12 = load %struct.IntList** %list
	store %struct.IntList* %u12, %struct.IntList** %_retval_
	br label %LU4
LU6:
	%u13 = load i32* %next
	%u14 = load %struct.IntList** %list
	%u15 = getelementptr %struct.IntList* %u14, i1 0, i32 0
	store i32 %u13, i32* %u15
	%u16 = call %struct.IntList* @getIntList()
	%u18 = load %struct.IntList** %list
	%u19 = getelementptr %struct.IntList* %u18, i1 0, i32 1
	store %struct.IntList* %u16, %struct.IntList** %u19
	%u20 = load %struct.IntList** %list
	store %struct.IntList* %u20, %struct.IntList** %_retval_
	br label %LU4
LU7:
	br label %LU4
LU4:
	%u21 = load %struct.IntList** %_retval_
	ret %struct.IntList* %u21
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
	%u21 = load i32* %num1
	%u22 = load i32* %num2
	%u23 = icmp sgt i32 %u21, %u22
	br i1 %u23, label %LU12, label %LU13
LU12:
	%u24 = load i32* %num1
	store i32 %u24, i32* %_retval_
	br label %LU11
LU13:
	%u25 = load i32* %num2
	store i32 %u25, i32* %_retval_
	br label %LU11
LU14:
	br label %LU11
LU11:
	%u26 = load i32* %_retval_
	ret i32 %u26
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
	%u26 = load %struct.IntList** %list
	%u27 = getelementptr %struct.IntList* %u26, i1 0, i32 0
	%u28 = load i32* %u27
	store i32 %u28, i32* %big
	br label %LU19
LU19:
	%u29 = load %struct.IntList** %list
	%u30 = getelementptr %struct.IntList* %u29, i1 0, i32 1
	%u31 = load %struct.IntList** %u30
	%u32 = icmp ne %struct.IntList* %u31, null
	br i1 %u32, label %LU20, label %LU21
LU20:
	%u33 = load i32* %big
	%u34 = load %struct.IntList** %list
	%u35 = getelementptr %struct.IntList* %u34, i1 0, i32 0
	%u36 = load i32* %u35
	%u37 = call i32 @biggest(i32 %u33, i32 %u36)
	store i32 %u37, i32* %big
	%u39 = load %struct.IntList** %list
	%u40 = getelementptr %struct.IntList* %u39, i1 0, i32 1
	%u41 = load %struct.IntList** %u40
	store %struct.IntList* %u41, %struct.IntList** %list
	br label %LU19
LU21:
	%u42 = load i32* %big
	store i32 %u42, i32* %_retval_
	br label %LU18
LU18:
	%u43 = load i32* %_retval_
	ret i32 %u43
}

define i32 @main()
{
LU23:
	%_retval_ = alloca i32
	%list = alloca %struct.IntList*
	br label %LU24
LU24:
	%u43 = call %struct.IntList* @getIntList()
	store %struct.IntList* %u43, %struct.IntList** %list
	%u45 = load %struct.IntList** %list
	%u46 = call i32 @biggestInList(%struct.IntList* %u45)
	%u48 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u46)
	store i32 0, i32* %_retval_
	br label %LU25
LU25:
	%u49 = load i32* %_retval_
	ret i32 %u49
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
