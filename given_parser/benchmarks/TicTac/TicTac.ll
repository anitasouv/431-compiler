target triple="i686"
%struct.gameBoard = type {i32, i32, i32, i32, i32, i32, i32, i32, i32};
define void @cleanBoard(%struct.gameBoard* %_P_board)
{
LU2:
	%board = alloca %struct.gameBoard*
	store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
	br label %LU3
LU3:
	%u0 = load %struct.gameBoard** %board
	%u1 = getelementptr %struct.gameBoard* %u0, i1 0, i32 0
	store i32 0, i32* %u1
	%u2 = load %struct.gameBoard** %board
	%u3 = getelementptr %struct.gameBoard* %u2, i1 0, i32 1
	store i32 0, i32* %u3
	%u4 = load %struct.gameBoard** %board
	%u5 = getelementptr %struct.gameBoard* %u4, i1 0, i32 2
	store i32 0, i32* %u5
	%u6 = load %struct.gameBoard** %board
	%u7 = getelementptr %struct.gameBoard* %u6, i1 0, i32 3
	store i32 0, i32* %u7
	%u8 = load %struct.gameBoard** %board
	%u9 = getelementptr %struct.gameBoard* %u8, i1 0, i32 4
	store i32 0, i32* %u9
	%u10 = load %struct.gameBoard** %board
	%u11 = getelementptr %struct.gameBoard* %u10, i1 0, i32 5
	store i32 0, i32* %u11
	%u12 = load %struct.gameBoard** %board
	%u13 = getelementptr %struct.gameBoard* %u12, i1 0, i32 6
	store i32 0, i32* %u13
	%u14 = load %struct.gameBoard** %board
	%u15 = getelementptr %struct.gameBoard* %u14, i1 0, i32 7
	store i32 0, i32* %u15
	%u16 = load %struct.gameBoard** %board
	%u17 = getelementptr %struct.gameBoard* %u16, i1 0, i32 8
	store i32 0, i32* %u17
	br label %LU4
LU4:
	ret void
}

define void @printBoard(%struct.gameBoard* %_P_board)
{
LU6:
	%board = alloca %struct.gameBoard*
	store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
	br label %LU7
LU7:
	%u18 = load %struct.gameBoard** %board
	%u19 = getelementptr %struct.gameBoard* %u18, i1 0, i32 0
	%u20 = load i32* %u19
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u20)
	%u21 = load %struct.gameBoard** %board
	%u22 = getelementptr %struct.gameBoard* %u21, i1 0, i32 1
	%u23 = load i32* %u22
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u23)
	%u24 = load %struct.gameBoard** %board
	%u25 = getelementptr %struct.gameBoard* %u24, i1 0, i32 2
	%u26 = load i32* %u25
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u26)
	%u27 = load %struct.gameBoard** %board
	%u28 = getelementptr %struct.gameBoard* %u27, i1 0, i32 3
	%u29 = load i32* %u28
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u29)
	%u30 = load %struct.gameBoard** %board
	%u31 = getelementptr %struct.gameBoard* %u30, i1 0, i32 4
	%u32 = load i32* %u31
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u32)
	%u33 = load %struct.gameBoard** %board
	%u34 = getelementptr %struct.gameBoard* %u33, i1 0, i32 5
	%u35 = load i32* %u34
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u35)
	%u36 = load %struct.gameBoard** %board
	%u37 = getelementptr %struct.gameBoard* %u36, i1 0, i32 6
	%u38 = load i32* %u37
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u38)
	%u39 = load %struct.gameBoard** %board
	%u40 = getelementptr %struct.gameBoard* %u39, i1 0, i32 7
	%u41 = load i32* %u40
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 %u41)
	%u42 = load %struct.gameBoard** %board
	%u43 = getelementptr %struct.gameBoard* %u42, i1 0, i32 8
	%u44 = load i32* %u43
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u44)
	br label %LU8
LU8:
	ret void
}

define void @printMoveBoard()
{
LU10:
	br label %LU11
LU11:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 123)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 456)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 789)
	br label %LU12
LU12:
	ret void
}

define void @placePiece(%struct.gameBoard* %_P_board, i32 %_P_turn, i32 %_P_placement)
{
LU14:
	%board = alloca %struct.gameBoard*
	store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
	%turn = alloca i32
	store i32 %_P_turn, i32* %turn
	%placement = alloca i32
	store i32 %_P_placement, i32* %placement
	br label %LU15
LU15:
	%u45 = load i32* %placement
	%u46 = icmp eq i32 %u45, 1
	br i1 %u46, label %LU17, label %LU18
LU17:
	%u47 = load i32* %turn
	%u48 = load %struct.gameBoard** %board
	%u49 = getelementptr %struct.gameBoard* %u48, i1 0, i32 0
	store i32 %u47, i32* %u49
	br label %LU43
LU18:
	%u50 = load i32* %placement
	%u51 = icmp eq i32 %u50, 2
	br i1 %u51, label %LU19, label %LU20
	br label %LU43
LU43:
	br label %LU16
LU19:
	%u52 = load i32* %turn
	%u53 = load %struct.gameBoard** %board
	%u54 = getelementptr %struct.gameBoard* %u53, i1 0, i32 1
	store i32 %u52, i32* %u54
	br label %LU42
LU42:
	br label %LU43
LU20:
	%u55 = load i32* %placement
	%u56 = icmp eq i32 %u55, 3
	br i1 %u56, label %LU21, label %LU22
	br label %LU42
LU21:
	%u57 = load i32* %turn
	%u58 = load %struct.gameBoard** %board
	%u59 = getelementptr %struct.gameBoard* %u58, i1 0, i32 2
	store i32 %u57, i32* %u59
	br label %LU41
LU22:
	%u60 = load i32* %placement
	%u61 = icmp eq i32 %u60, 4
	br i1 %u61, label %LU23, label %LU24
	br label %LU41
LU41:
	br label %LU42
LU23:
	%u62 = load i32* %turn
	%u63 = load %struct.gameBoard** %board
	%u64 = getelementptr %struct.gameBoard* %u63, i1 0, i32 3
	store i32 %u62, i32* %u64
	br label %LU40
LU40:
	br label %LU41
LU24:
	%u65 = load i32* %placement
	%u66 = icmp eq i32 %u65, 5
	br i1 %u66, label %LU25, label %LU26
	br label %LU40
LU25:
	%u67 = load i32* %turn
	%u68 = load %struct.gameBoard** %board
	%u69 = getelementptr %struct.gameBoard* %u68, i1 0, i32 4
	store i32 %u67, i32* %u69
	br label %LU39
LU26:
	%u70 = load i32* %placement
	%u71 = icmp eq i32 %u70, 6
	br i1 %u71, label %LU27, label %LU28
	br label %LU39
LU39:
	br label %LU40
LU27:
	%u72 = load i32* %turn
	%u73 = load %struct.gameBoard** %board
	%u74 = getelementptr %struct.gameBoard* %u73, i1 0, i32 5
	store i32 %u72, i32* %u74
	br label %LU38
LU38:
	br label %LU39
LU28:
	%u75 = load i32* %placement
	%u76 = icmp eq i32 %u75, 7
	br i1 %u76, label %LU29, label %LU30
	br label %LU38
LU29:
	%u77 = load i32* %turn
	%u78 = load %struct.gameBoard** %board
	%u79 = getelementptr %struct.gameBoard* %u78, i1 0, i32 6
	store i32 %u77, i32* %u79
	br label %LU37
LU30:
	%u80 = load i32* %placement
	%u81 = icmp eq i32 %u80, 8
	br i1 %u81, label %LU31, label %LU32
	br label %LU37
LU37:
	br label %LU38
LU31:
	%u82 = load i32* %turn
	%u83 = load %struct.gameBoard** %board
	%u84 = getelementptr %struct.gameBoard* %u83, i1 0, i32 7
	store i32 %u82, i32* %u84
	br label %LU36
LU36:
	br label %LU37
LU32:
	%u85 = load i32* %placement
	%u86 = icmp eq i32 %u85, 9
	br i1 %u86, label %LU33, label %LU34
	br label %LU36
LU33:
	%u87 = load i32* %turn
	%u88 = load %struct.gameBoard** %board
	%u89 = getelementptr %struct.gameBoard* %u88, i1 0, i32 8
	store i32 %u87, i32* %u89
	br label %LU35
LU34:
	br label %LU35
LU35:
	br label %LU36
LU16:
	ret void
}

define i32 @checkWinner(%struct.gameBoard* %_P_board)
{
LU45:
	%_retval_ = alloca i32
	%board = alloca %struct.gameBoard*
	store %struct.gameBoard* %_P_board, %struct.gameBoard** %board
	br label %LU46
LU46:
	%u90 = load %struct.gameBoard** %board
	%u91 = getelementptr %struct.gameBoard* %u90, i1 0, i32 0
	%u92 = load i32* %u91
	%u93 = icmp eq i32 %u92, 1
	br i1 %u93, label %LU48, label %LU55
LU48:
	%u94 = load %struct.gameBoard** %board
	%u95 = getelementptr %struct.gameBoard* %u94, i1 0, i32 1
	%u96 = load i32* %u95
	%u97 = icmp eq i32 %u96, 1
	br i1 %u97, label %LU49, label %LU53
	br label %LU56
LU55:
	br label %LU56
LU49:
	%u98 = load %struct.gameBoard** %board
	%u99 = getelementptr %struct.gameBoard* %u98, i1 0, i32 2
	%u100 = load i32* %u99
	%u101 = icmp eq i32 %u100, 1
	br i1 %u101, label %LU50, label %LU51
	br label %LU54
LU50:
	store i32 0, i32* %_retval_
	br label %LU47
LU51:
	br label %LU52
LU52:
	br label %LU54
LU54:
	br label %LU56
LU56:
	%u102 = load %struct.gameBoard** %board
	%u103 = getelementptr %struct.gameBoard* %u102, i1 0, i32 0
	%u104 = load i32* %u103
	%u105 = icmp eq i32 %u104, 2
	br i1 %u105, label %LU57, label %LU64
LU57:
	%u106 = load %struct.gameBoard** %board
	%u107 = getelementptr %struct.gameBoard* %u106, i1 0, i32 1
	%u108 = load i32* %u107
	%u109 = icmp eq i32 %u108, 2
	br i1 %u109, label %LU58, label %LU62
	br label %LU65
LU64:
	br label %LU65
LU58:
	%u110 = load %struct.gameBoard** %board
	%u111 = getelementptr %struct.gameBoard* %u110, i1 0, i32 2
	%u112 = load i32* %u111
	%u113 = icmp eq i32 %u112, 2
	br i1 %u113, label %LU59, label %LU60
	br label %LU63
LU59:
	store i32 1, i32* %_retval_
	br label %LU47
LU60:
	br label %LU61
LU61:
	br label %LU63
LU63:
	br label %LU65
LU65:
	%u114 = load %struct.gameBoard** %board
	%u115 = getelementptr %struct.gameBoard* %u114, i1 0, i32 3
	%u116 = load i32* %u115
	%u117 = icmp eq i32 %u116, 1
	br i1 %u117, label %LU66, label %LU73
LU66:
	%u118 = load %struct.gameBoard** %board
	%u119 = getelementptr %struct.gameBoard* %u118, i1 0, i32 4
	%u120 = load i32* %u119
	%u121 = icmp eq i32 %u120, 1
	br i1 %u121, label %LU67, label %LU71
	br label %LU74
LU73:
	br label %LU74
LU67:
	%u122 = load %struct.gameBoard** %board
	%u123 = getelementptr %struct.gameBoard* %u122, i1 0, i32 5
	%u124 = load i32* %u123
	%u125 = icmp eq i32 %u124, 1
	br i1 %u125, label %LU68, label %LU69
	br label %LU72
LU68:
	store i32 0, i32* %_retval_
	br label %LU47
LU69:
	br label %LU70
LU70:
	br label %LU72
LU72:
	br label %LU74
LU74:
	%u126 = load %struct.gameBoard** %board
	%u127 = getelementptr %struct.gameBoard* %u126, i1 0, i32 3
	%u128 = load i32* %u127
	%u129 = icmp eq i32 %u128, 2
	br i1 %u129, label %LU75, label %LU82
LU75:
	%u130 = load %struct.gameBoard** %board
	%u131 = getelementptr %struct.gameBoard* %u130, i1 0, i32 4
	%u132 = load i32* %u131
	%u133 = icmp eq i32 %u132, 2
	br i1 %u133, label %LU76, label %LU80
	br label %LU83
LU82:
	br label %LU83
LU76:
	%u134 = load %struct.gameBoard** %board
	%u135 = getelementptr %struct.gameBoard* %u134, i1 0, i32 5
	%u136 = load i32* %u135
	%u137 = icmp eq i32 %u136, 2
	br i1 %u137, label %LU77, label %LU78
	br label %LU81
LU77:
	store i32 1, i32* %_retval_
	br label %LU47
LU78:
	br label %LU79
LU79:
	br label %LU81
LU81:
	br label %LU83
LU83:
	%u138 = load %struct.gameBoard** %board
	%u139 = getelementptr %struct.gameBoard* %u138, i1 0, i32 6
	%u140 = load i32* %u139
	%u141 = icmp eq i32 %u140, 1
	br i1 %u141, label %LU84, label %LU91
LU84:
	%u142 = load %struct.gameBoard** %board
	%u143 = getelementptr %struct.gameBoard* %u142, i1 0, i32 7
	%u144 = load i32* %u143
	%u145 = icmp eq i32 %u144, 1
	br i1 %u145, label %LU85, label %LU89
	br label %LU92
LU91:
	br label %LU92
LU85:
	%u146 = load %struct.gameBoard** %board
	%u147 = getelementptr %struct.gameBoard* %u146, i1 0, i32 8
	%u148 = load i32* %u147
	%u149 = icmp eq i32 %u148, 1
	br i1 %u149, label %LU86, label %LU87
	br label %LU90
LU86:
	store i32 0, i32* %_retval_
	br label %LU47
LU87:
	br label %LU88
LU88:
	br label %LU90
LU90:
	br label %LU92
LU92:
	%u150 = load %struct.gameBoard** %board
	%u151 = getelementptr %struct.gameBoard* %u150, i1 0, i32 6
	%u152 = load i32* %u151
	%u153 = icmp eq i32 %u152, 2
	br i1 %u153, label %LU93, label %LU100
LU93:
	%u154 = load %struct.gameBoard** %board
	%u155 = getelementptr %struct.gameBoard* %u154, i1 0, i32 7
	%u156 = load i32* %u155
	%u157 = icmp eq i32 %u156, 2
	br i1 %u157, label %LU94, label %LU98
	br label %LU101
LU100:
	br label %LU101
LU94:
	%u158 = load %struct.gameBoard** %board
	%u159 = getelementptr %struct.gameBoard* %u158, i1 0, i32 8
	%u160 = load i32* %u159
	%u161 = icmp eq i32 %u160, 2
	br i1 %u161, label %LU95, label %LU96
	br label %LU99
LU95:
	store i32 1, i32* %_retval_
	br label %LU47
LU96:
	br label %LU97
LU97:
	br label %LU99
LU99:
	br label %LU101
LU101:
	%u162 = load %struct.gameBoard** %board
	%u163 = getelementptr %struct.gameBoard* %u162, i1 0, i32 0
	%u164 = load i32* %u163
	%u165 = icmp eq i32 %u164, 1
	br i1 %u165, label %LU102, label %LU109
LU102:
	%u166 = load %struct.gameBoard** %board
	%u167 = getelementptr %struct.gameBoard* %u166, i1 0, i32 3
	%u168 = load i32* %u167
	%u169 = icmp eq i32 %u168, 1
	br i1 %u169, label %LU103, label %LU107
	br label %LU110
LU109:
	br label %LU110
LU103:
	%u170 = load %struct.gameBoard** %board
	%u171 = getelementptr %struct.gameBoard* %u170, i1 0, i32 6
	%u172 = load i32* %u171
	%u173 = icmp eq i32 %u172, 1
	br i1 %u173, label %LU104, label %LU105
	br label %LU108
LU104:
	store i32 0, i32* %_retval_
	br label %LU47
LU105:
	br label %LU106
LU106:
	br label %LU108
LU108:
	br label %LU110
LU110:
	%u174 = load %struct.gameBoard** %board
	%u175 = getelementptr %struct.gameBoard* %u174, i1 0, i32 0
	%u176 = load i32* %u175
	%u177 = icmp eq i32 %u176, 2
	br i1 %u177, label %LU111, label %LU118
LU111:
	%u178 = load %struct.gameBoard** %board
	%u179 = getelementptr %struct.gameBoard* %u178, i1 0, i32 3
	%u180 = load i32* %u179
	%u181 = icmp eq i32 %u180, 2
	br i1 %u181, label %LU112, label %LU116
	br label %LU119
LU118:
	br label %LU119
LU112:
	%u182 = load %struct.gameBoard** %board
	%u183 = getelementptr %struct.gameBoard* %u182, i1 0, i32 6
	%u184 = load i32* %u183
	%u185 = icmp eq i32 %u184, 2
	br i1 %u185, label %LU113, label %LU114
	br label %LU117
LU113:
	store i32 1, i32* %_retval_
	br label %LU47
LU114:
	br label %LU115
LU115:
	br label %LU117
LU117:
	br label %LU119
LU119:
	%u186 = load %struct.gameBoard** %board
	%u187 = getelementptr %struct.gameBoard* %u186, i1 0, i32 1
	%u188 = load i32* %u187
	%u189 = icmp eq i32 %u188, 1
	br i1 %u189, label %LU120, label %LU127
LU120:
	%u190 = load %struct.gameBoard** %board
	%u191 = getelementptr %struct.gameBoard* %u190, i1 0, i32 4
	%u192 = load i32* %u191
	%u193 = icmp eq i32 %u192, 1
	br i1 %u193, label %LU121, label %LU125
	br label %LU128
LU127:
	br label %LU128
LU121:
	%u194 = load %struct.gameBoard** %board
	%u195 = getelementptr %struct.gameBoard* %u194, i1 0, i32 7
	%u196 = load i32* %u195
	%u197 = icmp eq i32 %u196, 1
	br i1 %u197, label %LU122, label %LU123
	br label %LU126
LU122:
	store i32 0, i32* %_retval_
	br label %LU47
LU123:
	br label %LU124
LU124:
	br label %LU126
LU126:
	br label %LU128
LU128:
	%u198 = load %struct.gameBoard** %board
	%u199 = getelementptr %struct.gameBoard* %u198, i1 0, i32 1
	%u200 = load i32* %u199
	%u201 = icmp eq i32 %u200, 2
	br i1 %u201, label %LU129, label %LU136
LU129:
	%u202 = load %struct.gameBoard** %board
	%u203 = getelementptr %struct.gameBoard* %u202, i1 0, i32 4
	%u204 = load i32* %u203
	%u205 = icmp eq i32 %u204, 2
	br i1 %u205, label %LU130, label %LU134
	br label %LU137
LU136:
	br label %LU137
LU130:
	%u206 = load %struct.gameBoard** %board
	%u207 = getelementptr %struct.gameBoard* %u206, i1 0, i32 7
	%u208 = load i32* %u207
	%u209 = icmp eq i32 %u208, 2
	br i1 %u209, label %LU131, label %LU132
	br label %LU135
LU131:
	store i32 1, i32* %_retval_
	br label %LU47
LU132:
	br label %LU133
LU133:
	br label %LU135
LU135:
	br label %LU137
LU137:
	%u210 = load %struct.gameBoard** %board
	%u211 = getelementptr %struct.gameBoard* %u210, i1 0, i32 2
	%u212 = load i32* %u211
	%u213 = icmp eq i32 %u212, 1
	br i1 %u213, label %LU138, label %LU145
LU138:
	%u214 = load %struct.gameBoard** %board
	%u215 = getelementptr %struct.gameBoard* %u214, i1 0, i32 5
	%u216 = load i32* %u215
	%u217 = icmp eq i32 %u216, 1
	br i1 %u217, label %LU139, label %LU143
	br label %LU146
LU145:
	br label %LU146
LU139:
	%u218 = load %struct.gameBoard** %board
	%u219 = getelementptr %struct.gameBoard* %u218, i1 0, i32 8
	%u220 = load i32* %u219
	%u221 = icmp eq i32 %u220, 1
	br i1 %u221, label %LU140, label %LU141
	br label %LU144
LU140:
	store i32 0, i32* %_retval_
	br label %LU47
LU141:
	br label %LU142
LU142:
	br label %LU144
LU144:
	br label %LU146
LU146:
	%u222 = load %struct.gameBoard** %board
	%u223 = getelementptr %struct.gameBoard* %u222, i1 0, i32 2
	%u224 = load i32* %u223
	%u225 = icmp eq i32 %u224, 2
	br i1 %u225, label %LU147, label %LU154
LU147:
	%u226 = load %struct.gameBoard** %board
	%u227 = getelementptr %struct.gameBoard* %u226, i1 0, i32 5
	%u228 = load i32* %u227
	%u229 = icmp eq i32 %u228, 2
	br i1 %u229, label %LU148, label %LU152
	br label %LU155
LU154:
	br label %LU155
LU148:
	%u230 = load %struct.gameBoard** %board
	%u231 = getelementptr %struct.gameBoard* %u230, i1 0, i32 8
	%u232 = load i32* %u231
	%u233 = icmp eq i32 %u232, 2
	br i1 %u233, label %LU149, label %LU150
	br label %LU153
LU149:
	store i32 1, i32* %_retval_
	br label %LU47
LU150:
	br label %LU151
LU151:
	br label %LU153
LU153:
	br label %LU155
LU155:
	%u234 = sub i32 0, 1
	store i32 %u234, i32* %_retval_
	br label %LU47
LU152:
	br label %LU153
LU143:
	br label %LU144
LU134:
	br label %LU135
LU125:
	br label %LU126
LU116:
	br label %LU117
LU107:
	br label %LU108
LU98:
	br label %LU99
LU89:
	br label %LU90
LU80:
	br label %LU81
LU71:
	br label %LU72
LU62:
	br label %LU63
LU53:
	br label %LU54
LU47:
	%u235 = load i32* %_retval_
	ret i32 %u235
}

define i32 @main()
{
LU157:
	%_retval_ = alloca i32
	%turn = alloca i32
	%space1 = alloca i32
	%space2 = alloca i32
	%winner = alloca i32
	%i = alloca i32
	%board = alloca %struct.gameBoard*
	br label %LU158
LU158:
	store i32 0, i32* %i
	store i32 0, i32* %turn
	store i32 0, i32* %space1
	store i32 0, i32* %space2
	%u235 = sub i32 0, 1
	store i32 %u235, i32* %winner
	%u236 = call i8* @malloc(i32 36)
	%u237 = bitcast i8* %u236 to %struct.gameBoard*
	store %struct.gameBoard* %u237, %struct.gameBoard** %board
	%u238 = load %struct.gameBoard** %board
	call void @cleanBoard(%struct.gameBoard* %u238)
	br label %LU160
LU160:
	%u240 = load i32* %winner
	%u241 = icmp slt i32 %u240, 0
	%u242 = load i32* %i
	%u243 = icmp ne i32 %u242, 8
	%u244 = and i1 %u241, %u243
	br i1 %u244, label %LU161, label %LU162
LU161:
	%u245 = load %struct.gameBoard** %board
	call void @printBoard(%struct.gameBoard* %u245)
	%u247 = load i32* %turn
	%u248 = icmp eq i32 %u247, 0
	br i1 %u248, label %LU163, label %LU164
LU163:
	%u249 = load i32* %turn
	%u250 = add i32 %u249, 1
	store i32 %u250, i32* %turn
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u251 = load i32* @_scanned_
	store i32 %u251, i32* %space1
	%u252 = load %struct.gameBoard** %board
	%u253 = load i32* %space1
	call void @placePiece(%struct.gameBoard* %u252, i32 1, i32 %u253)
	br label %LU165
LU164:
	%u255 = load i32* %turn
	%u256 = sub i32 %u255, 1
	store i32 %u256, i32* %turn
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u257 = load i32* @_scanned_
	store i32 %u257, i32* %space2
	%u258 = load %struct.gameBoard** %board
	%u259 = load i32* %space2
	call void @placePiece(%struct.gameBoard* %u258, i32 2, i32 %u259)
	br label %LU165
LU165:
	%u261 = load %struct.gameBoard** %board
	%u262 = call i32 @checkWinner(%struct.gameBoard* %u261)
	store i32 %u262, i32* %winner
	%u264 = load i32* %i
	%u265 = add i32 %u264, 1
	store i32 %u265, i32* %i
	br label %LU160
LU162:
	%u266 = load i32* %winner
	%u267 = add i32 %u266, 1
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u267)
	store i32 0, i32* %_retval_
	br label %LU159
LU159:
	%u268 = load i32* %_retval_
	ret i32 %u268
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
