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
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u52)
	%u53 = load %struct.node** %list
	%u54 = getelementptr %struct.node* %u53, i1 0, i32 1
	%u55 = load %struct.node** %u54
	call void @printList(%struct.node* %u55)
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
	%u57 = load %struct.tnode** %root
	%u58 = icmp ne %struct.tnode* %u57, null
	br i1 %u58, label %LU44, label %LU45
LU44:
	%u59 = load %struct.tnode** %root
	%u60 = getelementptr %struct.tnode* %u59, i1 0, i32 1
	%u61 = load %struct.tnode** %u60
	call void @treeprint(%struct.tnode* %u61)
	%u63 = load %struct.tnode** %root
	%u64 = getelementptr %struct.tnode* %u63, i1 0, i32 0
	%u65 = load i32* %u64
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u65)
	%u66 = load %struct.tnode** %root
	%u67 = getelementptr %struct.tnode* %u66, i1 0, i32 2
	%u68 = load %struct.tnode** %u67
	call void @treeprint(%struct.tnode* %u68)
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
	%u70 = load %struct.node** %list
	%u71 = icmp ne %struct.node* %u70, null
	br i1 %u71, label %LU51, label %LU52
LU51:
	%u72 = load %struct.node** %list
	%u73 = getelementptr %struct.node* %u72, i1 0, i32 1
	%u74 = load %struct.node** %u73
	call void @freeList(%struct.node* %u74)
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
	%u76 = load %struct.tnode** %root
	%u77 = icmp eq %struct.tnode* %u76, null
	%u78 = xor i1 1, %u77
	br i1 %u78, label %LU58, label %LU59
LU58:
	%u79 = load %struct.tnode** %root
	%u80 = getelementptr %struct.tnode* %u79, i1 0, i32 1
	%u81 = load %struct.tnode** %u80
	call void @freeTree(%struct.tnode* %u81)
	%u83 = load %struct.tnode** %root
	%u84 = getelementptr %struct.tnode* %u83, i1 0, i32 2
	%u85 = load %struct.tnode** %u84
	call void @freeTree(%struct.tnode* %u85)
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
	%u87 = load %struct.tnode** %root
	%u88 = icmp ne %struct.tnode* %u87, null
	br i1 %u88, label %LU65, label %LU66
LU65:
	%u89 = call i8* @malloc(i32 8)
	%u90 = bitcast i8* %u89 to %struct.node*
	store %struct.node* %u90, %struct.node** %temp
	%u91 = load %struct.tnode** %root
	%u92 = getelementptr %struct.tnode* %u91, i1 0, i32 0
	%u93 = load i32* %u92
	%u94 = load %struct.node** %temp
	%u95 = getelementptr %struct.node* %u94, i1 0, i32 0
	store i32 %u93, i32* %u95
	%u96 = load %struct.node** %temp
	%u97 = getelementptr %struct.node* %u96, i1 0, i32 1
	store %struct.node* null, %struct.node** %u97
	%u98 = load %struct.tnode** %root
	%u99 = getelementptr %struct.tnode* %u98, i1 0, i32 1
	%u100 = load %struct.tnode** %u99
	%u101 = call %struct.node* @postOrder(%struct.tnode* %u100)
	%u103 = load %struct.tnode** %root
	%u104 = getelementptr %struct.tnode* %u103, i1 0, i32 2
	%u105 = load %struct.tnode** %u104
	%u106 = call %struct.node* @postOrder(%struct.tnode* %u105)
	%u108 = call %struct.node* @concatLists(%struct.node* %u101, %struct.node* %u106)
	%u110 = load %struct.node** %temp
	%u111 = call %struct.node* @concatLists(%struct.node* %u108, %struct.node* %u110)
	store %struct.node* %u111, %struct.node** %_retval_
	br label %LU64
LU66:
	br label %LU67
LU67:
	store %struct.node* null, %struct.node** %_retval_
	br label %LU64
LU64:
	%u113 = load %struct.node** %_retval_
	ret %struct.node* %u113
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
	%u113 = load %struct.tnode** %root
	%u114 = icmp eq %struct.tnode* %u113, null
	br i1 %u114, label %LU72, label %LU73
LU72:
	%u115 = call i8* @malloc(i32 12)
	%u116 = bitcast i8* %u115 to %struct.tnode*
	store %struct.tnode* %u116, %struct.tnode** %temp
	%u117 = load i32* %toAdd
	%u118 = load %struct.tnode** %temp
	%u119 = getelementptr %struct.tnode* %u118, i1 0, i32 0
	store i32 %u117, i32* %u119
	%u120 = load %struct.tnode** %temp
	%u121 = getelementptr %struct.tnode* %u120, i1 0, i32 1
	store %struct.tnode* null, %struct.tnode** %u121
	%u122 = load %struct.tnode** %temp
	%u123 = getelementptr %struct.tnode* %u122, i1 0, i32 2
	store %struct.tnode* null, %struct.tnode** %u123
	%u124 = load %struct.tnode** %temp
	store %struct.tnode* %u124, %struct.tnode** %_retval_
	br label %LU71
LU73:
	br label %LU74
LU74:
	%u125 = load i32* %toAdd
	%u126 = load %struct.tnode** %root
	%u127 = getelementptr %struct.tnode* %u126, i1 0, i32 0
	%u128 = load i32* %u127
	%u129 = icmp slt i32 %u125, %u128
	br i1 %u129, label %LU75, label %LU76
LU75:
	%u130 = load %struct.tnode** %root
	%u131 = getelementptr %struct.tnode* %u130, i1 0, i32 1
	%u132 = load %struct.tnode** %u131
	%u133 = load i32* %toAdd
	%u134 = call %struct.tnode* @treeadd(%struct.tnode* %u132, i32 %u133)
	%u136 = load %struct.tnode** %root
	%u137 = getelementptr %struct.tnode* %u136, i1 0, i32 1
	store %struct.tnode* %u134, %struct.tnode** %u137
	br label %LU77
LU76:
	%u138 = load %struct.tnode** %root
	%u139 = getelementptr %struct.tnode* %u138, i1 0, i32 2
	%u140 = load %struct.tnode** %u139
	%u141 = load i32* %toAdd
	%u142 = call %struct.tnode* @treeadd(%struct.tnode* %u140, i32 %u141)
	%u144 = load %struct.tnode** %root
	%u145 = getelementptr %struct.tnode* %u144, i1 0, i32 2
	store %struct.tnode* %u142, %struct.tnode** %u145
	br label %LU77
LU77:
	%u146 = load %struct.tnode** %root
	store %struct.tnode* %u146, %struct.tnode** %_retval_
	br label %LU71
LU71:
	%u147 = load %struct.tnode** %_retval_
	ret %struct.tnode* %u147
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
	%u147 = load %struct.node** %list
	%u148 = call i32 @size(%struct.node* %u147)
	%u150 = icmp sle i32 %u148, 1
	br i1 %u150, label %LU82, label %LU83
LU82:
	%u151 = load %struct.node** %list
	store %struct.node* %u151, %struct.node** %_retval_
	br label %LU81
LU83:
	br label %LU84
LU84:
	%u152 = load %struct.node** %list
	%u153 = call i32 @get(%struct.node* %u152, i32 0)
	%u155 = load %struct.node** %list
	%u156 = load %struct.node** %list
	%u157 = call i32 @size(%struct.node* %u156)
	%u159 = sub i32 %u157, 1
	%u160 = call i32 @get(%struct.node* %u155, i32 %u159)
	%u162 = add i32 %u153, %u160
	%u163 = sdiv i32 %u162, 2
	store i32 %u163, i32* %pivot
	%u164 = load %struct.node** %list
	store %struct.node* %u164, %struct.node** %temp
	store i32 0, i32* %i
	br label %LU85
LU85:
	%u165 = load %struct.node** %temp
	%u166 = icmp ne %struct.node* %u165, null
	br i1 %u166, label %LU86, label %LU87
LU86:
	%u167 = load %struct.node** %list
	%u168 = load i32* %i
	%u169 = call i32 @get(%struct.node* %u167, i32 %u168)
	%u171 = load i32* %pivot
	%u172 = icmp sgt i32 %u169, %u171
	br i1 %u172, label %LU88, label %LU89
LU88:
	%u173 = load %struct.node** %greater
	%u174 = load %struct.node** %list
	%u175 = load i32* %i
	%u176 = call i32 @get(%struct.node* %u174, i32 %u175)
	%u178 = call %struct.node* @add(%struct.node* %u173, i32 %u176)
	store %struct.node* %u178, %struct.node** %greater
	br label %LU90
LU89:
	%u180 = load %struct.node** %less
	%u181 = load %struct.node** %list
	%u182 = load i32* %i
	%u183 = call i32 @get(%struct.node* %u181, i32 %u182)
	%u185 = call %struct.node* @add(%struct.node* %u180, i32 %u183)
	store %struct.node* %u185, %struct.node** %less
	br label %LU90
LU90:
	%u187 = load %struct.node** %temp
	%u188 = getelementptr %struct.node* %u187, i1 0, i32 1
	%u189 = load %struct.node** %u188
	store %struct.node* %u189, %struct.node** %temp
	%u190 = load i32* %i
	%u191 = add i32 %u190, 1
	store i32 %u191, i32* %i
	br label %LU85
LU87:
	%u192 = load %struct.node** %list
	call void @freeList(%struct.node* %u192)
	%u194 = load %struct.node** %less
	%u195 = call %struct.node* @quickSort(%struct.node* %u194)
	%u197 = load %struct.node** %greater
	%u198 = call %struct.node* @quickSort(%struct.node* %u197)
	%u200 = call %struct.node* @concatLists(%struct.node* %u195, %struct.node* %u198)
	store %struct.node* %u200, %struct.node** %_retval_
	br label %LU81
LU81:
	%u202 = load %struct.node** %_retval_
	ret %struct.node* %u202
}

define %struct.node* @quickSortMain(%struct.node* %_P_list)
{
LU92:
	%_retval_ = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU93
LU93:
	%u202 = load %struct.node** %list
	call void @printList(%struct.node* %u202)
	%u204 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u204)
	%u205 = load %struct.node** %list
	call void @printList(%struct.node* %u205)
	%u207 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u207)
	%u208 = load %struct.node** %list
	call void @printList(%struct.node* %u208)
	%u210 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u210)
	store %struct.node* null, %struct.node** %_retval_
	br label %LU94
LU94:
	%u211 = load %struct.node** %_retval_
	ret %struct.node* %u211
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
	%u211 = sub i32 0, 1
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u211)
	%u212 = load %struct.tnode** %root
	%u213 = icmp ne %struct.tnode* %u212, null
	br i1 %u213, label %LU99, label %LU109
LU99:
	%u214 = load %struct.tnode** %root
	%u215 = getelementptr %struct.tnode* %u214, i1 0, i32 0
	%u216 = load i32* %u215
	%u217 = load i32* %target
	%u218 = icmp eq i32 %u216, %u217
	br i1 %u218, label %LU100, label %LU101
	br label %LU110
LU109:
	br label %LU110
LU100:
	store i32 1, i32* %_retval_
	br label %LU98
LU102:
	%u219 = load %struct.tnode** %root
	%u220 = getelementptr %struct.tnode* %u219, i1 0, i32 1
	%u221 = load %struct.tnode** %u220
	%u222 = load i32* %target
	%u223 = call i32 @treesearch(%struct.tnode* %u221, i32 %u222)
	%u225 = icmp eq i32 %u223, 1
	br i1 %u225, label %LU103, label %LU104
LU103:
	store i32 1, i32* %_retval_
	br label %LU98
LU105:
	%u226 = load %struct.tnode** %root
	%u227 = getelementptr %struct.tnode* %u226, i1 0, i32 2
	%u228 = load %struct.tnode** %u227
	%u229 = load i32* %target
	%u230 = call i32 @treesearch(%struct.tnode* %u228, i32 %u229)
	%u232 = icmp eq i32 %u230, 1
	br i1 %u232, label %LU106, label %LU107
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
	%u233 = load i32* %_retval_
	ret i32 %u233
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
	%u233 = load %struct.tnode** %root
	%u234 = icmp ne %struct.tnode* %u233, null
	br i1 %u234, label %LU115, label %LU116
LU115:
	%u235 = call i8* @malloc(i32 8)
	%u236 = bitcast i8* %u235 to %struct.node*
	store %struct.node* %u236, %struct.node** %temp
	%u237 = load %struct.tnode** %root
	%u238 = getelementptr %struct.tnode* %u237, i1 0, i32 0
	%u239 = load i32* %u238
	%u240 = load %struct.node** %temp
	%u241 = getelementptr %struct.node* %u240, i1 0, i32 0
	store i32 %u239, i32* %u241
	%u242 = load %struct.node** %temp
	%u243 = getelementptr %struct.node* %u242, i1 0, i32 1
	store %struct.node* null, %struct.node** %u243
	%u244 = load %struct.tnode** %root
	%u245 = getelementptr %struct.tnode* %u244, i1 0, i32 1
	%u246 = load %struct.tnode** %u245
	%u247 = call %struct.node* @inOrder(%struct.tnode* %u246)
	%u249 = load %struct.node** %temp
	%u250 = load %struct.tnode** %root
	%u251 = getelementptr %struct.tnode* %u250, i1 0, i32 2
	%u252 = load %struct.tnode** %u251
	%u253 = call %struct.node* @inOrder(%struct.tnode* %u252)
	%u255 = call %struct.node* @concatLists(%struct.node* %u249, %struct.node* %u253)
	%u257 = call %struct.node* @concatLists(%struct.node* %u247, %struct.node* %u255)
	store %struct.node* %u257, %struct.node** %_retval_
	br label %LU114
LU116:
	store %struct.node* null, %struct.node** %_retval_
	br label %LU114
LU117:
	br label %LU114
LU114:
	%u259 = load %struct.node** %_retval_
	ret %struct.node* %u259
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
	%u259 = sub i32 0, 1
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u259)
	%u260 = load %struct.tnode** %root
	%u261 = icmp ne %struct.tnode* %u260, null
	br i1 %u261, label %LU122, label %LU129
LU122:
	%u262 = load %struct.tnode** %root
	%u263 = getelementptr %struct.tnode* %u262, i1 0, i32 0
	%u264 = load i32* %u263
	%u265 = load i32* %target
	%u266 = icmp eq i32 %u264, %u265
	br i1 %u266, label %LU123, label %LU124
	br label %LU130
LU129:
	br label %LU130
LU123:
	store i32 1, i32* %_retval_
	br label %LU121
LU125:
	%u267 = load i32* %target
	%u268 = load %struct.tnode** %root
	%u269 = getelementptr %struct.tnode* %u268, i1 0, i32 0
	%u270 = load i32* %u269
	%u271 = icmp slt i32 %u267, %u270
	br i1 %u271, label %LU126, label %LU127
LU126:
	%u272 = load %struct.tnode** %root
	%u273 = getelementptr %struct.tnode* %u272, i1 0, i32 1
	%u274 = load %struct.tnode** %u273
	%u275 = load i32* %target
	%u276 = call i32 @bintreesearch(%struct.tnode* %u274, i32 %u275)
	store i32 %u276, i32* %_retval_
	br label %LU121
LU128:
	br label %LU130
LU130:
	store i32 0, i32* %_retval_
	br label %LU121
LU127:
	%u278 = load %struct.tnode** %root
	%u279 = getelementptr %struct.tnode* %u278, i1 0, i32 2
	%u280 = load %struct.tnode** %u279
	%u281 = load i32* %target
	%u282 = call i32 @bintreesearch(%struct.tnode* %u280, i32 %u281)
	store i32 %u282, i32* %_retval_
	br label %LU121
LU124:
	br label %LU125
LU121:
	%u284 = load i32* %_retval_
	ret i32 %u284
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
	%u284 = load i32* %i
	%u285 = load %struct.node** %list
	%u286 = call i32 @size(%struct.node* %u285)
	%u288 = icmp slt i32 %u284, %u286
	br i1 %u288, label %LU136, label %LU137
LU136:
	%u289 = load %struct.tnode** %root
	%u290 = load %struct.node** %list
	%u291 = load i32* %i
	%u292 = call i32 @get(%struct.node* %u290, i32 %u291)
	%u294 = call %struct.tnode* @treeadd(%struct.tnode* %u289, i32 %u292)
	store %struct.tnode* %u294, %struct.tnode** %root
	%u296 = load i32* %i
	%u297 = add i32 %u296, 1
	store i32 %u297, i32* %i
	br label %LU135
LU137:
	%u298 = load %struct.tnode** %root
	store %struct.tnode* %u298, %struct.tnode** %_retval_
	br label %LU134
LU134:
	%u299 = load %struct.tnode** %_retval_
	ret %struct.tnode* %u299
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
	%u299 = load %struct.node** %list
	%u300 = call %struct.tnode* @buildTree(%struct.node* %u299)
	store %struct.tnode* %u300, %struct.tnode** %root
	%u302 = load %struct.tnode** %root
	call void @treeprint(%struct.tnode* %u302)
	%u304 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u304)
	%u305 = load %struct.tnode** %root
	%u306 = call %struct.node* @inOrder(%struct.tnode* %u305)
	store %struct.node* %u306, %struct.node** %inList
	%u308 = load %struct.node** %inList
	call void @printList(%struct.node* %u308)
	%u310 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u310)
	%u311 = load %struct.node** %inList
	call void @freeList(%struct.node* %u311)
	%u313 = load %struct.tnode** %root
	%u314 = call %struct.node* @postOrder(%struct.tnode* %u313)
	store %struct.node* %u314, %struct.node** %postList
	%u316 = load %struct.node** %postList
	call void @printList(%struct.node* %u316)
	%u318 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u318)
	%u319 = load %struct.node** %postList
	call void @freeList(%struct.node* %u319)
	%u321 = load %struct.tnode** %root
	%u322 = call i32 @treesearch(%struct.tnode* %u321, i32 0)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u322)
	%u324 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u324)
	%u325 = load %struct.tnode** %root
	%u326 = call i32 @treesearch(%struct.tnode* %u325, i32 10)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u326)
	%u328 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u328)
	%u329 = load %struct.tnode** %root
	%u330 = sub i32 0, 2
	%u331 = call i32 @treesearch(%struct.tnode* %u329, i32 %u330)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u331)
	%u333 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u333)
	%u334 = load %struct.tnode** %root
	%u335 = call i32 @treesearch(%struct.tnode* %u334, i32 2)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u335)
	%u337 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u337)
	%u338 = load %struct.tnode** %root
	%u339 = call i32 @treesearch(%struct.tnode* %u338, i32 3)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u339)
	%u341 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u341)
	%u342 = load %struct.tnode** %root
	%u343 = call i32 @treesearch(%struct.tnode* %u342, i32 9)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u343)
	%u345 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u345)
	%u346 = load %struct.tnode** %root
	%u347 = call i32 @treesearch(%struct.tnode* %u346, i32 1)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u347)
	%u349 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u349)
	%u350 = load %struct.tnode** %root
	%u351 = call i32 @bintreesearch(%struct.tnode* %u350, i32 0)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u351)
	%u353 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u353)
	%u354 = load %struct.tnode** %root
	%u355 = call i32 @bintreesearch(%struct.tnode* %u354, i32 10)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u355)
	%u357 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u357)
	%u358 = load %struct.tnode** %root
	%u359 = sub i32 0, 2
	%u360 = call i32 @bintreesearch(%struct.tnode* %u358, i32 %u359)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u360)
	%u362 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u362)
	%u363 = load %struct.tnode** %root
	%u364 = call i32 @bintreesearch(%struct.tnode* %u363, i32 2)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u364)
	%u366 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u366)
	%u367 = load %struct.tnode** %root
	%u368 = call i32 @bintreesearch(%struct.tnode* %u367, i32 3)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u368)
	%u370 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u370)
	%u371 = load %struct.tnode** %root
	%u372 = call i32 @bintreesearch(%struct.tnode* %u371, i32 9)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u372)
	%u374 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u374)
	%u375 = load %struct.tnode** %root
	%u376 = call i32 @bintreesearch(%struct.tnode* %u375, i32 1)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u376)
	%u378 = sub i32 0, 999
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u378)
	%u379 = load %struct.tnode** %root
	call void @freeTree(%struct.tnode* %u379)
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
	%u381 = load %struct.node** %src
	%u382 = icmp eq %struct.node* %u381, null
	br i1 %u382, label %LU146, label %LU147
LU146:
	store %struct.node* null, %struct.node** %_retval_
	br label %LU145
LU147:
	br label %LU148
LU148:
	%u383 = load %struct.node** %src
	%u384 = getelementptr %struct.node* %u383, i1 0, i32 0
	%u385 = load i32* %u384
	%u386 = call %struct.node* @add(%struct.node* null, i32 %u385)
	%u388 = load %struct.node** %src
	%u389 = getelementptr %struct.node* %u388, i1 0, i32 1
	%u390 = load %struct.node** %u389
	%u391 = call %struct.node* @myCopy(%struct.node* %u390)
	%u393 = call %struct.node* @concatLists(%struct.node* %u386, %struct.node* %u391)
	store %struct.node* %u393, %struct.node** %_retval_
	br label %LU145
LU145:
	%u395 = load %struct.node** %_retval_
	ret %struct.node* %u395
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
	%u395 = load i32* %i
	%u396 = icmp slt i32 %u395, 10
	br i1 %u396, label %LU154, label %LU155
LU154:
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u397 = load i32* @_scanned_
	store i32 %u397, i32* %element
	%u398 = load %struct.node** %myList
	%u399 = load i32* %element
	%u400 = call %struct.node* @add(%struct.node* %u398, i32 %u399)
	store %struct.node* %u400, %struct.node** %myList
	%u402 = load %struct.node** %myList
	%u403 = call %struct.node* @myCopy(%struct.node* %u402)
	store %struct.node* %u403, %struct.node** %copyList1
	%u405 = load %struct.node** %myList
	%u406 = call %struct.node* @myCopy(%struct.node* %u405)
	store %struct.node* %u406, %struct.node** %copyList2
	%u408 = load %struct.node** %copyList1
	%u409 = call %struct.node* @quickSortMain(%struct.node* %u408)
	store %struct.node* %u409, %struct.node** %sortedList
	%u411 = load %struct.node** %sortedList
	call void @freeList(%struct.node* %u411)
	%u413 = load %struct.node** %copyList2
	call void @treeMain(%struct.node* %u413)
	%u415 = load i32* %i
	%u416 = add i32 %u415, 1
	store i32 %u416, i32* %i
	br label %LU153
LU155:
	%u417 = load %struct.node** %myList
	call void @freeList(%struct.node* %u417)
	%u419 = load %struct.node** %copyList1
	call void @freeList(%struct.node* %u419)
	%u421 = load %struct.node** %copyList2
	call void @freeList(%struct.node* %u421)
	store i32 0, i32* %_retval_
	br label %LU152
LU152:
	%u423 = load i32* %_retval_
	ret i32 %u423
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
