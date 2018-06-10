target triple="i686"
%struct.node = type {i32, %struct.node*};
%struct.tnode = type {i32, %struct.tnode*, %struct.tnode*};
%struct.i = type {i32};
%struct.myCopy = type {i1};
@a = common global i32 0, align 4
@b = common global i32 0, align 4
@i = common global %struct.i* null, align 4
define %struct.node* @concatLists(%struct.node* %_P_first, %struct.node* %_P_second)
{
LU2:
	%_retval_ = alloca %struct.node*
	%temp = alloca %struct.node*
	%first = alloca %struct.node*
	store %struct.node* %_P_first, %struct.node** %first
	%second = alloca %struct.node*
	store %struct.node* %_P_second, %struct.node** %second
	br label %LU3
LU3:
	%u0 = load %struct.node** %first
	store %struct.node* %u0, %struct.node** %temp
	%u1 = load %struct.node** %first
	%u2 = icmp eq %struct.node* %u1, null
	br i1 %u2, label %LU5, label %LU6
LU5:
	%u3 = load %struct.node** %second
	store %struct.node* %u3, %struct.node** %_retval_
	br label %LU4
LU6:
	br label %LU7
LU7:
	br label %LU8
LU8:
	%u4 = load %struct.node** %temp
	%u5 = getelementptr %struct.node* %u4, i1 0, i32 1
	%u6 = load %struct.node** %u5
	%u7 = icmp ne %struct.node* %u6, null
	br i1 %u7, label %LU9, label %LU10
LU9:
	%u8 = load %struct.node** %temp
	%u9 = getelementptr %struct.node* %u8, i1 0, i32 1
	%u10 = load %struct.node** %u9
	store %struct.node* %u10, %struct.node** %temp
	br label %LU8
LU10:
	%u11 = load %struct.node** %second
	%u12 = load %struct.node** %temp
	%u13 = getelementptr %struct.node* %u12, i1 0, i32 1
	store %struct.node* %u11, %struct.node** %u13
	%u14 = load %struct.node** %first
	store %struct.node* %u14, %struct.node** %_retval_
	br label %LU4
LU4:
	%u15 = load %struct.node** %_retval_
	ret %struct.node* %u15
}

define %struct.node* @add(%struct.node* %_P_list, i32 %_P_toAdd)
{
LU12:
	%_retval_ = alloca %struct.node*
	%newNode = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	%toAdd = alloca i32
	store i32 %_P_toAdd, i32* %toAdd
	br label %LU13
LU13:
	%u15 = call i8* @malloc(i32 8)
	%u16 = bitcast i8* %u15 to %struct.node*
	store %struct.node* %u16, %struct.node** %newNode
	%u17 = load i32* %toAdd
	%u18 = load %struct.node** %newNode
	%u19 = getelementptr %struct.node* %u18, i1 0, i32 0
	store i32 %u17, i32* %u19
	%u20 = load %struct.node** %list
	%u21 = load %struct.node** %newNode
	%u22 = getelementptr %struct.node* %u21, i1 0, i32 1
	store %struct.node* %u20, %struct.node** %u22
	%u23 = load %struct.node** %newNode
	store %struct.node* %u23, %struct.node** %_retval_
	br label %LU14
LU14:
	%u24 = load %struct.node** %_retval_
	ret %struct.node* %u24
}

define i32 @size(%struct.node* %_P_list)
{
LU16:
	%_retval_ = alloca i32
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU17
LU17:
	%u24 = load %struct.node** %list
	%u25 = icmp eq %struct.node* %u24, null
	br i1 %u25, label %LU19, label %LU20
LU19:
	store i32 0, i32* %_retval_
	br label %LU18
LU20:
	br label %LU21
LU21:
	%u26 = load %struct.node** %list
	%u27 = getelementptr %struct.node* %u26, i1 0, i32 1
	%u28 = load %struct.node** %u27
	%u29 = call i32 @size(%struct.node* %u28)
	%u31 = add i32 1, %u29
	store i32 %u31, i32* %_retval_
	br label %LU18
LU18:
	%u32 = load i32* %_retval_
	ret i32 %u32
}

define i32 @get(%struct.node* %_P_list, i32 %_P_index)
{
LU23:
	%_retval_ = alloca i32
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	%index = alloca i32
	store i32 %_P_index, i32* %index
	br label %LU24
LU24:
	%u32 = load i32* %index
	%u33 = icmp eq i32 %u32, 0
	br i1 %u33, label %LU26, label %LU27
LU26:
	%u34 = load %struct.node** %list
	%u35 = getelementptr %struct.node* %u34, i1 0, i32 0
	%u36 = load i32* %u35
	store i32 %u36, i32* %_retval_
	br label %LU25
LU27:
	br label %LU28
LU28:
	%u37 = load %struct.node** %list
	%u38 = getelementptr %struct.node* %u37, i1 0, i32 1
	%u39 = load %struct.node** %u38
	%u40 = load i32* %index
	%u41 = sub i32 %u40, 1
	%u42 = call i32 @get(%struct.node* %u39, i32 %u41)
	store i32 %u42, i32* %_retval_
	br label %LU25
LU25:
	%u44 = load i32* %_retval_
	ret i32 %u44
}

define %struct.node* @pop(%struct.node* %_P_list)
{
LU30:
	%_retval_ = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU31
LU31:
	%u44 = load %struct.node** %list
	%u45 = getelementptr %struct.node* %u44, i1 0, i32 1
	%u46 = load %struct.node** %u45
	store %struct.node* %u46, %struct.node** %list
	%u47 = load %struct.node** %list
	store %struct.node* %u47, %struct.node** %_retval_
	br label %LU32
LU32:
	%u48 = load %struct.node** %_retval_
	ret %struct.node* %u48
}

define void @printList(%struct.node* %_P_list)
{
LU34:
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU35
LU35:
	%u48 = load %struct.node** %list
	%u49 = icmp ne %struct.node* %u48, null
	br i1 %u49, label %LU37, label %LU38
LU37:
	%u50 = load %struct.node** %list
	%u51 = getelementptr %struct.node* %u50, i1 0, i32 0
	%u52 = load i32* %u51
	%u53 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u52)
	%u54 = load %struct.node** %list
	%u55 = getelementptr %struct.node* %u54, i1 0, i32 1
	%u56 = load %struct.node** %u55
	call void @printList(%struct.node* %u56)
	br label %LU39
LU38:
	br label %LU39
LU39:
	br label %LU36
LU36:
	ret void
}

define void @treeprint(%struct.tnode* %_P_root)
{
LU41:
	%root = alloca %struct.tnode*
	store %struct.tnode* %_P_root, %struct.tnode** %root
	br label %LU42
LU42:
	%u58 = load %struct.tnode** %root
	%u59 = icmp ne %struct.tnode* %u58, null
	br i1 %u59, label %LU44, label %LU45
LU44:
	%u60 = load %struct.tnode** %root
	%u61 = getelementptr %struct.tnode* %u60, i1 0, i32 1
	%u62 = load %struct.tnode** %u61
	call void @treeprint(%struct.tnode* %u62)
	%u64 = load %struct.tnode** %root
	%u65 = getelementptr %struct.tnode* %u64, i1 0, i32 0
	%u66 = load i32* %u65
	%u67 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u66)
	%u68 = load %struct.tnode** %root
	%u69 = getelementptr %struct.tnode* %u68, i1 0, i32 2
	%u70 = load %struct.tnode** %u69
	call void @treeprint(%struct.tnode* %u70)
	br label %LU46
LU45:
	br label %LU46
LU46:
	br label %LU43
LU43:
	ret void
}

define void @freeList(%struct.node* %_P_list)
{
LU48:
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU49
LU49:
	%u72 = load %struct.node** %list
	%u73 = icmp ne %struct.node* %u72, null
	br i1 %u73, label %LU51, label %LU52
LU51:
	%u74 = load %struct.node** %list
	%u75 = getelementptr %struct.node* %u74, i1 0, i32 1
	%u76 = load %struct.node** %u75
	call void @freeList(%struct.node* %u76)
	br label %LU53
LU52:
	br label %LU53
LU53:
	br label %LU50
LU50:
	ret void
}

define void @freeTree(%struct.tnode* %_P_root)
{
LU55:
	%root = alloca %struct.tnode*
	store %struct.tnode* %_P_root, %struct.tnode** %root
	br label %LU56
LU56:
	%u78 = load %struct.tnode** %root
	%u79 = icmp eq %struct.tnode* %u78, null
	%u80 = xor i1 1, %u79
	br i1 %u80, label %LU58, label %LU59
LU58:
	%u81 = load %struct.tnode** %root
	%u82 = getelementptr %struct.tnode* %u81, i1 0, i32 1
	%u83 = load %struct.tnode** %u82
	call void @freeTree(%struct.tnode* %u83)
	%u85 = load %struct.tnode** %root
	%u86 = getelementptr %struct.tnode* %u85, i1 0, i32 2
	%u87 = load %struct.tnode** %u86
	call void @freeTree(%struct.tnode* %u87)
	br label %LU60
LU59:
	br label %LU60
LU60:
	br label %LU57
LU57:
	ret void
}

define %struct.node* @postOrder(%struct.tnode* %_P_root)
{
LU62:
	%_retval_ = alloca %struct.node*
	%temp = alloca %struct.node*
	%root = alloca %struct.tnode*
	store %struct.tnode* %_P_root, %struct.tnode** %root
	br label %LU63
LU63:
	%u89 = load %struct.tnode** %root
	%u90 = icmp ne %struct.tnode* %u89, null
	br i1 %u90, label %LU65, label %LU66
LU65:
	%u91 = call i8* @malloc(i32 8)
	%u92 = bitcast i8* %u91 to %struct.node*
	store %struct.node* %u92, %struct.node** %temp
	%u93 = load %struct.tnode** %root
	%u94 = getelementptr %struct.tnode* %u93, i1 0, i32 0
	%u95 = load i32* %u94
	%u96 = load %struct.node** %temp
	%u97 = getelementptr %struct.node* %u96, i1 0, i32 0
	store i32 %u95, i32* %u97
	%u98 = load %struct.node** %temp
	%u99 = getelementptr %struct.node* %u98, i1 0, i32 1
	store %struct.node* null, %struct.node** %u99
	%u100 = load %struct.tnode** %root
	%u101 = getelementptr %struct.tnode* %u100, i1 0, i32 1
	%u102 = load %struct.tnode** %u101
	%u103 = call %struct.node* @postOrder(%struct.tnode* %u102)
	%u105 = load %struct.tnode** %root
	%u106 = getelementptr %struct.tnode* %u105, i1 0, i32 2
	%u107 = load %struct.tnode** %u106
	%u108 = call %struct.node* @postOrder(%struct.tnode* %u107)
	%u110 = call %struct.node* @concatLists(%struct.node* %u103, %struct.node* %u108)
	%u112 = load %struct.node** %temp
	%u113 = call %struct.node* @concatLists(%struct.node* %u110, %struct.node* %u112)
	store %struct.node* %u113, %struct.node** %_retval_
	br label %LU64
LU66:
	br label %LU67
LU67:
	store %struct.node* null, %struct.node** %_retval_
	br label %LU64
LU64:
	%u115 = load %struct.node** %_retval_
	ret %struct.node* %u115
}

define %struct.tnode* @treeadd(%struct.tnode* %_P_root, i32 %_P_toAdd)
{
LU69:
	%_retval_ = alloca %struct.tnode*
	%temp = alloca %struct.tnode*
	%root = alloca %struct.tnode*
	store %struct.tnode* %_P_root, %struct.tnode** %root
	%toAdd = alloca i32
	store i32 %_P_toAdd, i32* %toAdd
	br label %LU70
LU70:
	%u115 = load %struct.tnode** %root
	%u116 = icmp eq %struct.tnode* %u115, null
	br i1 %u116, label %LU72, label %LU73
LU72:
	%u117 = call i8* @malloc(i32 12)
	%u118 = bitcast i8* %u117 to %struct.tnode*
	store %struct.tnode* %u118, %struct.tnode** %temp
	%u119 = load i32* %toAdd
	%u120 = load %struct.tnode** %temp
	%u121 = getelementptr %struct.tnode* %u120, i1 0, i32 0
	store i32 %u119, i32* %u121
	%u122 = load %struct.tnode** %temp
	%u123 = getelementptr %struct.tnode* %u122, i1 0, i32 1
	store %struct.tnode* null, %struct.tnode** %u123
	%u124 = load %struct.tnode** %temp
	%u125 = getelementptr %struct.tnode* %u124, i1 0, i32 2
	store %struct.tnode* null, %struct.tnode** %u125
	%u126 = load %struct.tnode** %temp
	store %struct.tnode* %u126, %struct.tnode** %_retval_
	br label %LU71
LU73:
	br label %LU74
LU74:
	%u127 = load i32* %toAdd
	%u128 = load %struct.tnode** %root
	%u129 = getelementptr %struct.tnode* %u128, i1 0, i32 0
	%u130 = load i32* %u129
	%u131 = icmp slt i32 %u127, %u130
	br i1 %u131, label %LU75, label %LU76
LU75:
	%u132 = load %struct.tnode** %root
	%u133 = getelementptr %struct.tnode* %u132, i1 0, i32 1
	%u134 = load %struct.tnode** %u133
	%u135 = load i32* %toAdd
	%u136 = call %struct.tnode* @treeadd(%struct.tnode* %u134, i32 %u135)
	%u138 = load %struct.tnode** %root
	%u139 = getelementptr %struct.tnode* %u138, i1 0, i32 1
	store %struct.tnode* %u136, %struct.tnode** %u139
	br label %LU77
LU76:
	%u140 = load %struct.tnode** %root
	%u141 = getelementptr %struct.tnode* %u140, i1 0, i32 2
	%u142 = load %struct.tnode** %u141
	%u143 = load i32* %toAdd
	%u144 = call %struct.tnode* @treeadd(%struct.tnode* %u142, i32 %u143)
	%u146 = load %struct.tnode** %root
	%u147 = getelementptr %struct.tnode* %u146, i1 0, i32 2
	store %struct.tnode* %u144, %struct.tnode** %u147
	br label %LU77
LU77:
	%u148 = load %struct.tnode** %root
	store %struct.tnode* %u148, %struct.tnode** %_retval_
	br label %LU71
LU71:
	%u149 = load %struct.tnode** %_retval_
	ret %struct.tnode* %u149
}

define %struct.node* @quickSort(%struct.node* %_P_list)
{
LU79:
	%_retval_ = alloca %struct.node*
	%pivot = alloca i32
	%i = alloca i32
	%less = alloca %struct.node*
	%greater = alloca %struct.node*
	%temp = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU80
LU80:
	store %struct.node* null, %struct.node** %less
	store %struct.node* null, %struct.node** %greater
	%u149 = load %struct.node** %list
	%u150 = call i32 @size(%struct.node* %u149)
	%u152 = icmp sle i32 %u150, 1
	br i1 %u152, label %LU82, label %LU83
LU82:
	%u153 = load %struct.node** %list
	store %struct.node* %u153, %struct.node** %_retval_
	br label %LU81
LU83:
	br label %LU84
LU84:
	%u154 = load %struct.node** %list
	%u155 = call i32 @get(%struct.node* %u154, i32 0)
	%u157 = load %struct.node** %list
	%u158 = load %struct.node** %list
	%u159 = call i32 @size(%struct.node* %u158)
	%u161 = sub i32 %u159, 1
	%u162 = call i32 @get(%struct.node* %u157, i32 %u161)
	%u164 = add i32 %u155, %u162
	%u165 = sdiv i32 %u164, 2
	store i32 %u165, i32* %pivot
	%u166 = load %struct.node** %list
	store %struct.node* %u166, %struct.node** %temp
	store i32 0, i32* %i
	br label %LU85
LU85:
	%u167 = load %struct.node** %temp
	%u168 = icmp ne %struct.node* %u167, null
	br i1 %u168, label %LU86, label %LU87
LU86:
	%u169 = load %struct.node** %list
	%u170 = load i32* %i
	%u171 = call i32 @get(%struct.node* %u169, i32 %u170)
	%u173 = load i32* %pivot
	%u174 = icmp sgt i32 %u171, %u173
	br i1 %u174, label %LU88, label %LU89
LU88:
	%u175 = load %struct.node** %greater
	%u176 = load %struct.node** %list
	%u177 = load i32* %i
	%u178 = call i32 @get(%struct.node* %u176, i32 %u177)
	%u180 = call %struct.node* @add(%struct.node* %u175, i32 %u178)
	store %struct.node* %u180, %struct.node** %greater
	br label %LU90
LU89:
	%u182 = load %struct.node** %less
	%u183 = load %struct.node** %list
	%u184 = load i32* %i
	%u185 = call i32 @get(%struct.node* %u183, i32 %u184)
	%u187 = call %struct.node* @add(%struct.node* %u182, i32 %u185)
	store %struct.node* %u187, %struct.node** %less
	br label %LU90
LU90:
	%u189 = load %struct.node** %temp
	%u190 = getelementptr %struct.node* %u189, i1 0, i32 1
	%u191 = load %struct.node** %u190
	store %struct.node* %u191, %struct.node** %temp
	%u192 = load i32* %i
	%u193 = add i32 %u192, 1
	store i32 %u193, i32* %i
	br label %LU85
LU87:
	%u194 = load %struct.node** %list
	call void @freeList(%struct.node* %u194)
	%u196 = load %struct.node** %less
	%u197 = call %struct.node* @quickSort(%struct.node* %u196)
	%u199 = load %struct.node** %greater
	%u200 = call %struct.node* @quickSort(%struct.node* %u199)
	%u202 = call %struct.node* @concatLists(%struct.node* %u197, %struct.node* %u200)
	store %struct.node* %u202, %struct.node** %_retval_
	br label %LU81
LU81:
	%u204 = load %struct.node** %_retval_
	ret %struct.node* %u204
}

define %struct.node* @quickSortMain(%struct.node* %_P_list)
{
LU92:
	%_retval_ = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU93
LU93:
	%u204 = load %struct.node** %list
	call void @printList(%struct.node* %u204)
	%u206 = sub i32 0, 999
	%u207 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u206)
	%u208 = load %struct.node** %list
	call void @printList(%struct.node* %u208)
	%u210 = sub i32 0, 999
	%u211 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u210)
	%u212 = load %struct.node** %list
	call void @printList(%struct.node* %u212)
	%u214 = sub i32 0, 999
	%u215 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u214)
	store %struct.node* null, %struct.node** %_retval_
	br label %LU94
LU94:
	%u216 = load %struct.node** %_retval_
	ret %struct.node* %u216
}

define i32 @treesearch(%struct.tnode* %_P_root, i32 %_P_target)
{
LU96:
	%_retval_ = alloca i32
	%root = alloca %struct.tnode*
	store %struct.tnode* %_P_root, %struct.tnode** %root
	%target = alloca i32
	store i32 %_P_target, i32* %target
	br label %LU97
LU97:
	%u216 = sub i32 0, 1
	%u217 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u216)
	%u218 = load %struct.tnode** %root
	%u219 = icmp ne %struct.tnode* %u218, null
	br i1 %u219, label %LU99, label %LU109
LU99:
	%u220 = load %struct.tnode** %root
	%u221 = getelementptr %struct.tnode* %u220, i1 0, i32 0
	%u222 = load i32* %u221
	%u223 = load i32* %target
	%u224 = icmp eq i32 %u222, %u223
	br i1 %u224, label %LU100, label %LU101
	br label %LU110
LU109:
	br label %LU110
LU100:
	store i32 1, i32* %_retval_
	br label %LU98
LU102:
	%u225 = load %struct.tnode** %root
	%u226 = getelementptr %struct.tnode* %u225, i1 0, i32 1
	%u227 = load %struct.tnode** %u226
	%u228 = load i32* %target
	%u229 = call i32 @treesearch(%struct.tnode* %u227, i32 %u228)
	%u231 = icmp eq i32 %u229, 1
	br i1 %u231, label %LU103, label %LU104
LU103:
	store i32 1, i32* %_retval_
	br label %LU98
LU105:
	%u232 = load %struct.tnode** %root
	%u233 = getelementptr %struct.tnode* %u232, i1 0, i32 2
	%u234 = load %struct.tnode** %u233
	%u235 = load i32* %target
	%u236 = call i32 @treesearch(%struct.tnode* %u234, i32 %u235)
	%u238 = icmp eq i32 %u236, 1
	br i1 %u238, label %LU106, label %LU107
LU106:
	store i32 1, i32* %_retval_
	br label %LU98
LU108:
	br label %LU110
LU110:
	store i32 0, i32* %_retval_
	br label %LU98
LU107:
	store i32 0, i32* %_retval_
	br label %LU98
LU104:
	br label %LU105
LU101:
	br label %LU102
LU98:
	%u239 = load i32* %_retval_
	ret i32 %u239
}

define %struct.node* @inOrder(%struct.tnode* %_P_root)
{
LU112:
	%_retval_ = alloca %struct.node*
	%temp = alloca %struct.node*
	%root = alloca %struct.tnode*
	store %struct.tnode* %_P_root, %struct.tnode** %root
	br label %LU113
LU113:
	%u239 = load %struct.tnode** %root
	%u240 = icmp ne %struct.tnode* %u239, null
	br i1 %u240, label %LU115, label %LU116
LU115:
	%u241 = call i8* @malloc(i32 8)
	%u242 = bitcast i8* %u241 to %struct.node*
	store %struct.node* %u242, %struct.node** %temp
	%u243 = load %struct.tnode** %root
	%u244 = getelementptr %struct.tnode* %u243, i1 0, i32 0
	%u245 = load i32* %u244
	%u246 = load %struct.node** %temp
	%u247 = getelementptr %struct.node* %u246, i1 0, i32 0
	store i32 %u245, i32* %u247
	%u248 = load %struct.node** %temp
	%u249 = getelementptr %struct.node* %u248, i1 0, i32 1
	store %struct.node* null, %struct.node** %u249
	%u250 = load %struct.tnode** %root
	%u251 = getelementptr %struct.tnode* %u250, i1 0, i32 1
	%u252 = load %struct.tnode** %u251
	%u253 = call %struct.node* @inOrder(%struct.tnode* %u252)
	%u255 = load %struct.node** %temp
	%u256 = load %struct.tnode** %root
	%u257 = getelementptr %struct.tnode* %u256, i1 0, i32 2
	%u258 = load %struct.tnode** %u257
	%u259 = call %struct.node* @inOrder(%struct.tnode* %u258)
	%u261 = call %struct.node* @concatLists(%struct.node* %u255, %struct.node* %u259)
	%u263 = call %struct.node* @concatLists(%struct.node* %u253, %struct.node* %u261)
	store %struct.node* %u263, %struct.node** %_retval_
	br label %LU114
LU116:
	store %struct.node* null, %struct.node** %_retval_
	br label %LU114
LU117:
	br label %LU114
LU114:
	%u265 = load %struct.node** %_retval_
	ret %struct.node* %u265
}

define i32 @bintreesearch(%struct.tnode* %_P_root, i32 %_P_target)
{
LU119:
	%_retval_ = alloca i32
	%root = alloca %struct.tnode*
	store %struct.tnode* %_P_root, %struct.tnode** %root
	%target = alloca i32
	store i32 %_P_target, i32* %target
	br label %LU120
LU120:
	%u265 = sub i32 0, 1
	%u266 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u265)
	%u267 = load %struct.tnode** %root
	%u268 = icmp ne %struct.tnode* %u267, null
	br i1 %u268, label %LU122, label %LU129
LU122:
	%u269 = load %struct.tnode** %root
	%u270 = getelementptr %struct.tnode* %u269, i1 0, i32 0
	%u271 = load i32* %u270
	%u272 = load i32* %target
	%u273 = icmp eq i32 %u271, %u272
	br i1 %u273, label %LU123, label %LU124
	br label %LU130
LU129:
	br label %LU130
LU123:
	store i32 1, i32* %_retval_
	br label %LU121
LU125:
	%u274 = load i32* %target
	%u275 = load %struct.tnode** %root
	%u276 = getelementptr %struct.tnode* %u275, i1 0, i32 0
	%u277 = load i32* %u276
	%u278 = icmp slt i32 %u274, %u277
	br i1 %u278, label %LU126, label %LU127
LU126:
	%u279 = load %struct.tnode** %root
	%u280 = getelementptr %struct.tnode* %u279, i1 0, i32 1
	%u281 = load %struct.tnode** %u280
	%u282 = load i32* %target
	%u283 = call i32 @bintreesearch(%struct.tnode* %u281, i32 %u282)
	store i32 %u283, i32* %_retval_
	br label %LU121
LU128:
	br label %LU130
LU130:
	store i32 0, i32* %_retval_
	br label %LU121
LU127:
	%u285 = load %struct.tnode** %root
	%u286 = getelementptr %struct.tnode* %u285, i1 0, i32 2
	%u287 = load %struct.tnode** %u286
	%u288 = load i32* %target
	%u289 = call i32 @bintreesearch(%struct.tnode* %u287, i32 %u288)
	store i32 %u289, i32* %_retval_
	br label %LU121
LU124:
	br label %LU125
LU121:
	%u291 = load i32* %_retval_
	ret i32 %u291
}

define %struct.tnode* @buildTree(%struct.node* %_P_list)
{
LU132:
	%_retval_ = alloca %struct.tnode*
	%i = alloca i32
	%root = alloca %struct.tnode*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU133
LU133:
	store %struct.tnode* null, %struct.tnode** %root
	store i32 0, i32* %i
	br label %LU135
LU135:
	%u291 = load i32* %i
	%u292 = load %struct.node** %list
	%u293 = call i32 @size(%struct.node* %u292)
	%u295 = icmp slt i32 %u291, %u293
	br i1 %u295, label %LU136, label %LU137
LU136:
	%u296 = load %struct.tnode** %root
	%u297 = load %struct.node** %list
	%u298 = load i32* %i
	%u299 = call i32 @get(%struct.node* %u297, i32 %u298)
	%u301 = call %struct.tnode* @treeadd(%struct.tnode* %u296, i32 %u299)
	store %struct.tnode* %u301, %struct.tnode** %root
	%u303 = load i32* %i
	%u304 = add i32 %u303, 1
	store i32 %u304, i32* %i
	br label %LU135
LU137:
	%u305 = load %struct.tnode** %root
	store %struct.tnode* %u305, %struct.tnode** %_retval_
	br label %LU134
LU134:
	%u306 = load %struct.tnode** %_retval_
	ret %struct.tnode* %u306
}

define void @treeMain(%struct.node* %_P_list)
{
LU139:
	%root = alloca %struct.tnode*
	%inList = alloca %struct.node*
	%postList = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU140
LU140:
	%u306 = load %struct.node** %list
	%u307 = call %struct.tnode* @buildTree(%struct.node* %u306)
	store %struct.tnode* %u307, %struct.tnode** %root
	%u309 = load %struct.tnode** %root
	call void @treeprint(%struct.tnode* %u309)
	%u311 = sub i32 0, 999
	%u312 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u311)
	%u313 = load %struct.tnode** %root
	%u314 = call %struct.node* @inOrder(%struct.tnode* %u313)
	store %struct.node* %u314, %struct.node** %inList
	%u316 = load %struct.node** %inList
	call void @printList(%struct.node* %u316)
	%u318 = sub i32 0, 999
	%u319 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u318)
	%u320 = load %struct.node** %inList
	call void @freeList(%struct.node* %u320)
	%u322 = load %struct.tnode** %root
	%u323 = call %struct.node* @postOrder(%struct.tnode* %u322)
	store %struct.node* %u323, %struct.node** %postList
	%u325 = load %struct.node** %postList
	call void @printList(%struct.node* %u325)
	%u327 = sub i32 0, 999
	%u328 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u327)
	%u329 = load %struct.node** %postList
	call void @freeList(%struct.node* %u329)
	%u331 = load %struct.tnode** %root
	%u332 = call i32 @treesearch(%struct.tnode* %u331, i32 0)
	%u334 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u332)
	%u335 = sub i32 0, 999
	%u336 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u335)
	%u337 = load %struct.tnode** %root
	%u338 = call i32 @treesearch(%struct.tnode* %u337, i32 10)
	%u340 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u338)
	%u341 = sub i32 0, 999
	%u342 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u341)
	%u343 = load %struct.tnode** %root
	%u344 = sub i32 0, 2
	%u345 = call i32 @treesearch(%struct.tnode* %u343, i32 %u344)
	%u347 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u345)
	%u348 = sub i32 0, 999
	%u349 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u348)
	%u350 = load %struct.tnode** %root
	%u351 = call i32 @treesearch(%struct.tnode* %u350, i32 2)
	%u353 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u351)
	%u354 = sub i32 0, 999
	%u355 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u354)
	%u356 = load %struct.tnode** %root
	%u357 = call i32 @treesearch(%struct.tnode* %u356, i32 3)
	%u359 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u357)
	%u360 = sub i32 0, 999
	%u361 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u360)
	%u362 = load %struct.tnode** %root
	%u363 = call i32 @treesearch(%struct.tnode* %u362, i32 9)
	%u365 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u363)
	%u366 = sub i32 0, 999
	%u367 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u366)
	%u368 = load %struct.tnode** %root
	%u369 = call i32 @treesearch(%struct.tnode* %u368, i32 1)
	%u371 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u369)
	%u372 = sub i32 0, 999
	%u373 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u372)
	%u374 = load %struct.tnode** %root
	%u375 = call i32 @bintreesearch(%struct.tnode* %u374, i32 0)
	%u377 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u375)
	%u378 = sub i32 0, 999
	%u379 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u378)
	%u380 = load %struct.tnode** %root
	%u381 = call i32 @bintreesearch(%struct.tnode* %u380, i32 10)
	%u383 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u381)
	%u384 = sub i32 0, 999
	%u385 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u384)
	%u386 = load %struct.tnode** %root
	%u387 = sub i32 0, 2
	%u388 = call i32 @bintreesearch(%struct.tnode* %u386, i32 %u387)
	%u390 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u388)
	%u391 = sub i32 0, 999
	%u392 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u391)
	%u393 = load %struct.tnode** %root
	%u394 = call i32 @bintreesearch(%struct.tnode* %u393, i32 2)
	%u396 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u394)
	%u397 = sub i32 0, 999
	%u398 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u397)
	%u399 = load %struct.tnode** %root
	%u400 = call i32 @bintreesearch(%struct.tnode* %u399, i32 3)
	%u402 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u400)
	%u403 = sub i32 0, 999
	%u404 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u403)
	%u405 = load %struct.tnode** %root
	%u406 = call i32 @bintreesearch(%struct.tnode* %u405, i32 9)
	%u408 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u406)
	%u409 = sub i32 0, 999
	%u410 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u409)
	%u411 = load %struct.tnode** %root
	%u412 = call i32 @bintreesearch(%struct.tnode* %u411, i32 1)
	%u414 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u412)
	%u415 = sub i32 0, 999
	%u416 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u415)
	%u417 = load %struct.tnode** %root
	call void @freeTree(%struct.tnode* %u417)
	br label %LU141
LU141:
	ret void
}

define %struct.node* @myCopy(%struct.node* %_P_src)
{
LU143:
	%_retval_ = alloca %struct.node*
	%src = alloca %struct.node*
	store %struct.node* %_P_src, %struct.node** %src
	br label %LU144
LU144:
	%u419 = load %struct.node** %src
	%u420 = icmp eq %struct.node* %u419, null
	br i1 %u420, label %LU146, label %LU147
LU146:
	store %struct.node* null, %struct.node** %_retval_
	br label %LU145
LU147:
	br label %LU148
LU148:
	%u421 = load %struct.node** %src
	%u422 = getelementptr %struct.node* %u421, i1 0, i32 0
	%u423 = load i32* %u422
	%u424 = call %struct.node* @add(%struct.node* null, i32 %u423)
	%u426 = load %struct.node** %src
	%u427 = getelementptr %struct.node* %u426, i1 0, i32 1
	%u428 = load %struct.node** %u427
	%u429 = call %struct.node* @myCopy(%struct.node* %u428)
	%u431 = call %struct.node* @concatLists(%struct.node* %u424, %struct.node* %u429)
	store %struct.node* %u431, %struct.node** %_retval_
	br label %LU145
LU145:
	%u433 = load %struct.node** %_retval_
	ret %struct.node* %u433
}

define i32 @main()
{
LU150:
	%_retval_ = alloca i32
	%i = alloca i32
	%element = alloca i32
	%myList = alloca %struct.node*
	%copyList1 = alloca %struct.node*
	%copyList2 = alloca %struct.node*
	%sortedList = alloca %struct.node*
	br label %LU151
LU151:
	store %struct.node* null, %struct.node** %myList
	store %struct.node* null, %struct.node** %copyList1
	store %struct.node* null, %struct.node** %copyList2
	store i32 0, i32* %i
	br label %LU153
LU153:
	%u433 = load i32* %i
	%u434 = icmp slt i32 %u433, 10
	br i1 %u434, label %LU154, label %LU155
LU154:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u435 = load i32* @_scanned_
	store i32 %u435, i32* %element
	%u436 = load %struct.node** %myList
	%u437 = load i32* %element
	%u438 = call %struct.node* @add(%struct.node* %u436, i32 %u437)
	store %struct.node* %u438, %struct.node** %myList
	%u440 = load %struct.node** %myList
	%u441 = call %struct.node* @myCopy(%struct.node* %u440)
	store %struct.node* %u441, %struct.node** %copyList1
	%u443 = load %struct.node** %myList
	%u444 = call %struct.node* @myCopy(%struct.node* %u443)
	store %struct.node* %u444, %struct.node** %copyList2
	%u446 = load %struct.node** %copyList1
	%u447 = call %struct.node* @quickSortMain(%struct.node* %u446)
	store %struct.node* %u447, %struct.node** %sortedList
	%u449 = load %struct.node** %sortedList
	call void @freeList(%struct.node* %u449)
	%u451 = load %struct.node** %copyList2
	call void @treeMain(%struct.node* %u451)
	%u453 = load i32* %i
	%u454 = add i32 %u453, 1
	store i32 %u454, i32* %i
	br label %LU153
LU155:
	%u455 = load %struct.node** %myList
	call void @freeList(%struct.node* %u455)
	%u457 = load %struct.node** %copyList1
	call void @freeList(%struct.node* %u457)
	%u459 = load %struct.node** %copyList2
	call void @freeList(%struct.node* %u459)
	store i32 0, i32* %_retval_
	br label %LU152
LU152:
	%u461 = load i32* %_retval_
	ret i32 %u461
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
