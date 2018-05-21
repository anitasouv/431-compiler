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
	br i1 %u8, label %LU16, label %LU17
LU10:
	store i32 0, i32* %swapped
	%u9 = load %struct.Node** %head
	store %struct.Node* %u9, %struct.Node** %currNode
	br label %LU11
LU11:
	%u10 = load %struct.Node** %currNode
	%u11 = getelementptr %struct.Node* %u10, i1 0, i32 2
	%u12 = load %struct.Node** %u11
	%u13 = load %struct.Node** %head
	%u14 = icmp ne %struct.Node* %u12, %u13
	br i1 %u14, label %LU15, label %LU16
LU12:
	%u15 = load %struct.Node** %currNode
	%u16 = load %struct.Node** %currNode
	%u17 = getelementptr %struct.Node* %u16, i1 0, i32 2
	%u18 = load %struct.Node** %u17
	%u19 = call i32 @compare(%struct.Node* %u15, %struct.Node* %u18)
	%u21 = icmp sgt i32 %u19, 0
	br i1 %u21, label %LU13, label %LU14
LU13:
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
	br label %LU15
LU14:
	br label %LU15
LU15:
	%u37 = load %struct.Node** %currNode
	%u38 = getelementptr %struct.Node* %u37, i1 0, i32 2
	%u39 = load %struct.Node** %u38
	store %struct.Node* %u39, %struct.Node** %currNode
	br label %LU11
LU16:
	br label %LU9
LU17:
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
	%u46 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u45)
	br label %LU22
LU22:
	%u47 = load %struct.Node** %currNode
	%u48 = load %struct.Node** %head
	%u49 = icmp ne %struct.Node* %u47, %u48
	br i1 %u49, label %LU23, label %LU24
LU23:
	%u50 = load %struct.Node** %currNode
	store %struct.Node* %u50, %struct.Node** %toFree
	%u51 = load %struct.Node** %currNode
	%u52 = getelementptr %struct.Node* %u51, i1 0, i32 0
	%u53 = load i32* %u52
	%u54 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u53)
	%u55 = load %struct.Node** %currNode
	%u56 = getelementptr %struct.Node* %u55, i1 0, i32 2
	%u57 = load %struct.Node** %u56
	store %struct.Node* %u57, %struct.Node** %currNode
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
	%u58 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u59 = load i32* @_scanned_
	store i32 %u59, i32* %numNodes
	%u60 = load i32* %numNodes
	%u61 = icmp sle i32 %u60, 0
	br i1 %u61, label %LU29, label %LU30
LU29:
	%u62 = sub i32 0, 1
	%u63 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u62)
	%u64 = sub i32 0, 1
	store i32 %u64, i32* %_retval_
	br label %LU28
LU30:
	br label %LU31
LU31:
	%u65 = load i32* %numNodes
	%u66 = mul i32 %u65, 1000
	store i32 %u66, i32* %numNodes
	%u67 = load i32* %numNodes
	store i32 %u67, i32* %counter
	%u68 = call i8* @malloc(i32 12)
	%u69 = bitcast i8* %u68 to %struct.Node*
	store %struct.Node* %u69, %struct.Node** %head
	%u70 = load i32* %counter
	%u71 = load %struct.Node** %head
	%u72 = getelementptr %struct.Node* %u71, i1 0, i32 0
	store i32 %u70, i32* %u72
	%u73 = load %struct.Node** %head
	%u74 = load %struct.Node** %head
	%u75 = getelementptr %struct.Node* %u74, i1 0, i32 1
	store %struct.Node* %u73, %struct.Node** %u75
	%u76 = load %struct.Node** %head
	%u77 = load %struct.Node** %head
	%u78 = getelementptr %struct.Node* %u77, i1 0, i32 2
	store %struct.Node* %u76, %struct.Node** %u78
	%u79 = load i32* %counter
	%u80 = sub i32 %u79, 1
	store i32 %u80, i32* %counter
	%u81 = load %struct.Node** %head
	store %struct.Node* %u81, %struct.Node** %previous
	br label %LU32
LU32:
	%u82 = load i32* %counter
	%u83 = icmp sgt i32 %u82, 0
	br i1 %u83, label %LU33, label %LU34
LU33:
	%u84 = call i8* @malloc(i32 12)
	%u85 = bitcast i8* %u84 to %struct.Node*
	store %struct.Node* %u85, %struct.Node** %currNode
	%u86 = load i32* %counter
	%u87 = load %struct.Node** %currNode
	%u88 = getelementptr %struct.Node* %u87, i1 0, i32 0
	store i32 %u86, i32* %u88
	%u89 = load %struct.Node** %previous
	%u90 = load %struct.Node** %currNode
	%u91 = getelementptr %struct.Node* %u90, i1 0, i32 1
	store %struct.Node* %u89, %struct.Node** %u91
	%u92 = load %struct.Node** %head
	%u93 = load %struct.Node** %currNode
	%u94 = getelementptr %struct.Node* %u93, i1 0, i32 2
	store %struct.Node* %u92, %struct.Node** %u94
	%u95 = load %struct.Node** %currNode
	%u96 = load %struct.Node** %previous
	%u97 = getelementptr %struct.Node* %u96, i1 0, i32 2
	store %struct.Node* %u95, %struct.Node** %u97
	%u98 = load %struct.Node** %currNode
	store %struct.Node* %u98, %struct.Node** %previous
	%u99 = load i32* %counter
	%u100 = sub i32 %u99, 1
	store i32 %u100, i32* %counter
	br label %LU32
LU34:
	%u101 = load %struct.Node** %head
	call void @deathSort(%struct.Node* %u101)
	%u103 = load %struct.Node** %head
	call void @printEVILList(%struct.Node* %u103)
	store i32 0, i32* %_retval_
	br label %LU28
LU28:
	%u105 = load i32* %_retval_
	ret i32 %u105
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
