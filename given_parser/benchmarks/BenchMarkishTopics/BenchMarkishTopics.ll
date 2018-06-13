target triple="i686"
%struct.intList = type {i32, %struct.intList*};
@intList = common global i32 0, align 4
define i32 @length(%struct.intList* %_P_list)
{
LU2:
	%_retval_ = alloca i32
	%list = alloca %struct.intList*
	store %struct.intList* %_P_list, %struct.intList** %list
	br label %LU3
LU3:
	%u0 = load %struct.intList** %list
	%u1 = icmp eq %struct.intList* %u0, null
	br i1 %u1, label %LU5, label %LU6
LU5:
	store i32 0, i32* %_retval_
	br label %LU4
LU6:
	br label %LU7
LU7:
	%u2 = load %struct.intList** %list
	%u3 = getelementptr %struct.intList* %u2, i1 0, i32 1
	%u4 = load %struct.intList** %u3
	%u5 = call i32 @length(%struct.intList* %u4)
	%u7 = add i32 1, %u5
	store i32 %u7, i32* %_retval_
	br label %LU4
LU4:
	%u8 = load i32* %_retval_
	ret i32 %u8
}

define %struct.intList* @addToFront(%struct.intList* %_P_list, i32 %_P_element)
{
LU9:
	%_retval_ = alloca %struct.intList*
	%front = alloca %struct.intList*
	%list = alloca %struct.intList*
	store %struct.intList* %_P_list, %struct.intList** %list
	%element = alloca i32
	store i32 %_P_element, i32* %element
	br label %LU10
LU10:
	%u8 = load %struct.intList** %list
	%u9 = icmp eq %struct.intList* %u8, null
	br i1 %u9, label %LU12, label %LU13
LU12:
	%u10 = call i8* @malloc(i32 8)
	%u11 = bitcast i8* %u10 to %struct.intList*
	store %struct.intList* %u11, %struct.intList** %list
	%u12 = load i32* %element
	%u13 = load %struct.intList** %list
	%u14 = getelementptr %struct.intList* %u13, i1 0, i32 0
	store i32 %u12, i32* %u14
	%u15 = load %struct.intList** %list
	%u16 = getelementptr %struct.intList* %u15, i1 0, i32 1
	store %struct.intList* null, %struct.intList** %u16
	%u17 = load %struct.intList** %list
	store %struct.intList* %u17, %struct.intList** %_retval_
	br label %LU11
LU13:
	br label %LU14
LU14:
	%u18 = call i8* @malloc(i32 8)
	%u19 = bitcast i8* %u18 to %struct.intList*
	store %struct.intList* %u19, %struct.intList** %front
	%u20 = load i32* %element
	%u21 = load %struct.intList** %front
	%u22 = getelementptr %struct.intList* %u21, i1 0, i32 0
	store i32 %u20, i32* %u22
	%u23 = load %struct.intList** %list
	%u24 = load %struct.intList** %front
	%u25 = getelementptr %struct.intList* %u24, i1 0, i32 1
	store %struct.intList* %u23, %struct.intList** %u25
	%u26 = load %struct.intList** %front
	store %struct.intList* %u26, %struct.intList** %_retval_
	br label %LU11
LU11:
	%u27 = load %struct.intList** %_retval_
	ret %struct.intList* %u27
}

define %struct.intList* @deleteFirst(%struct.intList* %_P_list)
{
LU16:
	%_retval_ = alloca %struct.intList*
	%first = alloca %struct.intList*
	%list = alloca %struct.intList*
	store %struct.intList* %_P_list, %struct.intList** %list
	br label %LU17
LU17:
	%u27 = load %struct.intList** %list
	%u28 = icmp eq %struct.intList* %u27, null
	br i1 %u28, label %LU19, label %LU20
LU19:
	store %struct.intList* null, %struct.intList** %_retval_
	br label %LU18
LU20:
	br label %LU21
LU21:
	%u29 = load %struct.intList** %list
	store %struct.intList* %u29, %struct.intList** %first
	%u30 = load %struct.intList** %list
	%u31 = getelementptr %struct.intList* %u30, i1 0, i32 1
	%u32 = load %struct.intList** %u31
	store %struct.intList* %u32, %struct.intList** %list
	%u33 = load %struct.intList** %list
	store %struct.intList* %u33, %struct.intList** %_retval_
	br label %LU18
LU18:
	%u34 = load %struct.intList** %_retval_
	ret %struct.intList* %u34
}

define i32 @main()
{
LU23:
	%_retval_ = alloca i32
	%list = alloca %struct.intList*
	%sum = alloca i32
	br label %LU24
LU24:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u34 = load i32* @_scanned_
	store i32 %u34, i32* @intList
	store i32 0, i32* %sum
	store %struct.intList* null, %struct.intList** %list
	br label %LU26
LU26:
	%u35 = load i32* @intList
	%u36 = icmp sgt i32 %u35, 0
	br i1 %u36, label %LU27, label %LU28
LU27:
	%u37 = load %struct.intList** %list
	%u38 = load i32* @intList
	%u39 = call %struct.intList* @addToFront(%struct.intList* %u37, i32 %u38)
	store %struct.intList* %u39, %struct.intList** %list
	%u41 = load %struct.intList** %list
	%u42 = getelementptr %struct.intList* %u41, i1 0, i32 0
	%u43 = load i32* %u42
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u43)
	%u44 = load i32* @intList
	%u45 = sub i32 %u44, 1
	store i32 %u45, i32* @intList
	br label %LU26
LU28:
	%u46 = load %struct.intList** %list
	%u47 = call i32 @length(%struct.intList* %u46)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u47)
	br label %LU29
LU29:
	%u49 = load %struct.intList** %list
	%u50 = call i32 @length(%struct.intList* %u49)
	%u52 = icmp sgt i32 %u50, 0
	br i1 %u52, label %LU30, label %LU31
LU30:
	%u53 = load i32* %sum
	%u54 = load %struct.intList** %list
	%u55 = getelementptr %struct.intList* %u54, i1 0, i32 0
	%u56 = load i32* %u55
	%u57 = add i32 %u53, %u56
	store i32 %u57, i32* %sum
	%u58 = load %struct.intList** %list
	%u59 = call i32 @length(%struct.intList* %u58)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u59)
	%u61 = load %struct.intList** %list
	%u62 = call %struct.intList* @deleteFirst(%struct.intList* %u61)
	store %struct.intList* %u62, %struct.intList** %list
	br label %LU29
LU31:
	%u64 = load i32* %sum
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u64)
	store i32 0, i32* %_retval_
	br label %LU25
LU25:
	%u65 = load i32* %_retval_
	ret i32 %u65
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
