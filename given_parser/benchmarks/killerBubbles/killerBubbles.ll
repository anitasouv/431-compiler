target triple="i686"
%struct.Node = type {i32, %struct.Node*, %struct.Node*};
@swapped = common global i32 0, align 4
define i32 @compare(%struct.Node* %_P_a, %struct.Node* %_P_b)
{
LU2:
	%_retval_ = alloca i32
	%a = alloca %struct.Node*
	store %struct.Node* %_P_a, %struct.Node** %a
	%b = alloca %struct.Node*
	store %struct.Node* %_P_b, %struct.Node** %b
	br label %LU3
LU3:
	%u0 = load %struct.Node** %a
	%u1 = getelementptr %struct.Node* %u0, i1 0, i32 0
	%u2 = load i32* %u1
	%u3 = load %struct.Node** %b
	%u4 = getelementptr %struct.Node* %u3, i1 0, i32 0
	%u5 = load i32* %u4
	%u6 = sub i32 %u2, %u5
	store i32 %u6, i32* %_retval_
	br label %LU4
LU4:
	%u7 = load i32* %_retval_
	ret i32 %u7
}

define void @deathSort(%struct.Node* %_P_head)
{
LU6:
	%swapped = alloca i32
	%swap = alloca i32
	%currNode = alloca %struct.Node*
	%head = alloca %struct.Node*
	store %struct.Node* %_P_head, %struct.Node** %head
	br label %LU7
LU7:
	store i32 1, i32* %swapped
	br label %LU9
LU9:
	%u7 = load i32* %swapped
	%u8 = icmp eq i32 %u7, 1
	br i1 %u8, label %LU10, label %LU11
LU10:
	store i32 0, i32* %swapped
	%u9 = load %struct.Node** %head
	store %struct.Node* %u9, %struct.Node** %currNode
	br label %LU12
LU12:
	%u10 = load %struct.Node** %currNode
	%u11 = getelementptr %struct.Node* %u10, i1 0, i32 2
	%u12 = load %struct.Node** %u11
	%u13 = load %struct.Node** %head
	%u14 = icmp ne %struct.Node* %u12, %u13
	br i1 %u14, label %LU13, label %LU14
LU13:
	%u15 = load %struct.Node** %currNode
	%u16 = load %struct.Node** %currNode
	%u17 = getelementptr %struct.Node* %u16, i1 0, i32 2
	%u18 = load %struct.Node** %u17
	%u19 = call i32 @compare(%struct.Node* %u15, %struct.Node* %u18)
	%u21 = icmp sgt i32 %u19, 0
	br i1 %u21, label %LU15, label %LU16
LU15:
	%u22 = load %struct.Node** %currNode
	%u23 = getelementptr %struct.Node* %u22, i1 0, i32 0
	%u24 = load i32* %u23
	store i32 %u24, i32* %swap
	%u25 = load %struct.Node** %currNode
	%u26 = getelementptr %struct.Node* %u25, i1 0, i32 2
	%u27 = load %struct.Node** %u26
	%u28 = getelementptr %struct.Node* %u27, i1 0, i32 0
	%u29 = load i32* %u28
	%u30 = load %struct.Node** %currNode
	%u31 = getelementptr %struct.Node* %u30, i1 0, i32 0
	store i32 %u29, i32* %u31
	%u32 = load i32* %swap
	%u33 = load %struct.Node** %currNode
	%u34 = getelementptr %struct.Node* %u33, i1 0, i32 2
	%u35 = load %struct.Node** %u34
	%u36 = getelementptr %struct.Node* %u35, i1 0, i32 0
	store i32 %u32, i32* %u36
	store i32 1, i32* %swapped
	br label %LU17
LU16:
	br label %LU17
LU17:
	%u37 = load %struct.Node** %currNode
	%u38 = getelementptr %struct.Node* %u37, i1 0, i32 2
	%u39 = load %struct.Node** %u38
	store %struct.Node* %u39, %struct.Node** %currNode
	br label %LU12
LU14:
	br label %LU9
LU11:
	br label %LU8
LU8:
	ret void
}

define void @printEVILList(%struct.Node* %_P_head)
{
LU19:
	%currNode = alloca %struct.Node*
	%toFree = alloca %struct.Node*
	%head = alloca %struct.Node*
	store %struct.Node* %_P_head, %struct.Node** %head
	br label %LU20
LU20:
	%u40 = load %struct.Node** %head
	%u41 = getelementptr %struct.Node* %u40, i1 0, i32 2
	%u42 = load %struct.Node** %u41
	store %struct.Node* %u42, %struct.Node** %currNode
	%u43 = load %struct.Node** %head
	%u44 = getelementptr %struct.Node* %u43, i1 0, i32 0
	%u45 = load i32* %u44
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u45)
	br label %LU22
LU22:
	%u46 = load %struct.Node** %currNode
	%u47 = load %struct.Node** %head
	%u48 = icmp ne %struct.Node* %u46, %u47
	br i1 %u48, label %LU23, label %LU24
LU23:
	%u49 = load %struct.Node** %currNode
	store %struct.Node* %u49, %struct.Node** %toFree
	%u50 = load %struct.Node** %currNode
	%u51 = getelementptr %struct.Node* %u50, i1 0, i32 0
	%u52 = load i32* %u51
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u52)
	%u53 = load %struct.Node** %currNode
	%u54 = getelementptr %struct.Node* %u53, i1 0, i32 2
	%u55 = load %struct.Node** %u54
	store %struct.Node* %u55, %struct.Node** %currNode
	br label %LU22
LU24:
	br label %LU21
LU21:
	ret void
}

define i32 @main()
{
LU26:
	%_retval_ = alloca i32
	%numNodes = alloca i32
	%counter = alloca i32
	%currNode = alloca %struct.Node*
	%head = alloca %struct.Node*
	%previous = alloca %struct.Node*
	br label %LU27
LU27:
	store i32 666, i32* @swapped
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u56 = load i32* @_scanned_
	store i32 %u56, i32* %numNodes
	%u57 = load i32* %numNodes
	%u58 = icmp sle i32 %u57, 0
	br i1 %u58, label %LU29, label %LU30
LU29:
	%u59 = sub i32 0, 1
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u59)
	%u60 = sub i32 0, 1
	store i32 %u60, i32* %_retval_
	br label %LU28
LU30:
	br label %LU31
LU31:
	%u61 = load i32* %numNodes
	%u62 = mul i32 %u61, 1000
	store i32 %u62, i32* %numNodes
	%u63 = load i32* %numNodes
	store i32 %u63, i32* %counter
	%u64 = call i8* @malloc(i32 12)
	%u65 = bitcast i8* %u64 to %struct.Node*
	store %struct.Node* %u65, %struct.Node** %head
	%u66 = load i32* %counter
	%u67 = load %struct.Node** %head
	%u68 = getelementptr %struct.Node* %u67, i1 0, i32 0
	store i32 %u66, i32* %u68
	%u69 = load %struct.Node** %head
	%u70 = load %struct.Node** %head
	%u71 = getelementptr %struct.Node* %u70, i1 0, i32 1
	store %struct.Node* %u69, %struct.Node** %u71
	%u72 = load %struct.Node** %head
	%u73 = load %struct.Node** %head
	%u74 = getelementptr %struct.Node* %u73, i1 0, i32 2
	store %struct.Node* %u72, %struct.Node** %u74
	%u75 = load i32* %counter
	%u76 = sub i32 %u75, 1
	store i32 %u76, i32* %counter
	%u77 = load %struct.Node** %head
	store %struct.Node* %u77, %struct.Node** %previous
	br label %LU32
LU32:
	%u78 = load i32* %counter
	%u79 = icmp sgt i32 %u78, 0
	br i1 %u79, label %LU33, label %LU34
LU33:
	%u80 = call i8* @malloc(i32 12)
	%u81 = bitcast i8* %u80 to %struct.Node*
	store %struct.Node* %u81, %struct.Node** %currNode
	%u82 = load i32* %counter
	%u83 = load %struct.Node** %currNode
	%u84 = getelementptr %struct.Node* %u83, i1 0, i32 0
	store i32 %u82, i32* %u84
	%u85 = load %struct.Node** %previous
	%u86 = load %struct.Node** %currNode
	%u87 = getelementptr %struct.Node* %u86, i1 0, i32 1
	store %struct.Node* %u85, %struct.Node** %u87
	%u88 = load %struct.Node** %head
	%u89 = load %struct.Node** %currNode
	%u90 = getelementptr %struct.Node* %u89, i1 0, i32 2
	store %struct.Node* %u88, %struct.Node** %u90
	%u91 = load %struct.Node** %currNode
	%u92 = load %struct.Node** %previous
	%u93 = getelementptr %struct.Node* %u92, i1 0, i32 2
	store %struct.Node* %u91, %struct.Node** %u93
	%u94 = load %struct.Node** %currNode
	store %struct.Node* %u94, %struct.Node** %previous
	%u95 = load i32* %counter
	%u96 = sub i32 %u95, 1
	store i32 %u96, i32* %counter
	br label %LU32
LU34:
	%u97 = load %struct.Node** %head
	call void @deathSort(%struct.Node* %u97)
	%u99 = load %struct.Node** %head
	call void @printEVILList(%struct.Node* %u99)
	store i32 0, i32* %_retval_
	br label %LU28
LU28:
	%u101 = load i32* %_retval_
	ret i32 %u101
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
