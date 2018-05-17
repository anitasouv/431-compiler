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
	%u21 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u20)
	%u22 = load %struct.gameBoard** %board
	%u23 = getelementptr %struct.gameBoard* %u22, i1 0, i32 1
	%u24 = load i32* %u23
	%u25 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u24)
	%u26 = load %struct.gameBoard** %board
	%u27 = getelementptr %struct.gameBoard* %u26, i1 0, i32 2
	%u28 = load i32* %u27
	%u29 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u28)
	%u30 = load %struct.gameBoard** %board
	%u31 = getelementptr %struct.gameBoard* %u30, i1 0, i32 3
	%u32 = load i32* %u31
	%u33 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u32)
	%u34 = load %struct.gameBoard** %board
	%u35 = getelementptr %struct.gameBoard* %u34, i1 0, i32 4
	%u36 = load i32* %u35
	%u37 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u36)
	%u38 = load %struct.gameBoard** %board
	%u39 = getelementptr %struct.gameBoard* %u38, i1 0, i32 5
	%u40 = load i32* %u39
	%u41 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u40)
	%u42 = load %struct.gameBoard** %board
	%u43 = getelementptr %struct.gameBoard* %u42, i1 0, i32 6
	%u44 = load i32* %u43
	%u45 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u44)
	%u46 = load %struct.gameBoard** %board
	%u47 = getelementptr %struct.gameBoard* %u46, i1 0, i32 7
	%u48 = load i32* %u47
	%u49 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u48)
	%u50 = load %struct.gameBoard** %board
	%u51 = getelementptr %struct.gameBoard* %u50, i1 0, i32 8
	%u52 = load i32* %u51
	%u53 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u52)
	br label %LU8
LU8:
	ret void
}

define void @printMoveBoard()
{
LU10:
	br label %LU11
LU11:
	%u54 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 123)
	%u55 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 456)
	%u56 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 789)
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
	%u57 = load i32* %placement
	%u58 = icmp eq i32 %u57, 1
	br i1 %u58, label %LU17, label %LU18
LU17:
	%u59 = load i32* %turn
	%u60 = load %struct.gameBoard** %board
	%u61 = getelementptr %struct.gameBoard* %u60, i1 0, i32 0
	store i32 %u59, i32* %u61
	br label %LU43
LU18:
	%u62 = load i32* %placement
	%u63 = icmp eq i32 %u62, 2
	br i1 %u63, label %LU19, label %LU20
	br label %LU43
LU43:
	br label %LU16
LU19:
	%u64 = load i32* %turn
	%u65 = load %struct.gameBoard** %board
	%u66 = getelementptr %struct.gameBoard* %u65, i1 0, i32 1
	store i32 %u64, i32* %u66
	br label %LU42
LU42:
	br label %LU43
LU20:
	%u67 = load i32* %placement
	%u68 = icmp eq i32 %u67, 3
	br i1 %u68, label %LU21, label %LU22
	br label %LU42
LU21:
	%u69 = load i32* %turn
	%u70 = load %struct.gameBoard** %board
	%u71 = getelementptr %struct.gameBoard* %u70, i1 0, i32 2
	store i32 %u69, i32* %u71
	br label %LU41
LU22:
	%u72 = load i32* %placement
	%u73 = icmp eq i32 %u72, 4
	br i1 %u73, label %LU23, label %LU24
	br label %LU41
LU41:
	br label %LU42
LU23:
	%u74 = load i32* %turn
	%u75 = load %struct.gameBoard** %board
	%u76 = getelementptr %struct.gameBoard* %u75, i1 0, i32 3
	store i32 %u74, i32* %u76
	br label %LU40
LU40:
	br label %LU41
LU24:
	%u77 = load i32* %placement
	%u78 = icmp eq i32 %u77, 5
	br i1 %u78, label %LU25, label %LU26
	br label %LU40
LU25:
	%u79 = load i32* %turn
	%u80 = load %struct.gameBoard** %board
	%u81 = getelementptr %struct.gameBoard* %u80, i1 0, i32 4
	store i32 %u79, i32* %u81
	br label %LU39
LU26:
	%u82 = load i32* %placement
	%u83 = icmp eq i32 %u82, 6
	br i1 %u83, label %LU27, label %LU28
	br label %LU39
LU39:
	br label %LU40
LU27:
	%u84 = load i32* %turn
	%u85 = load %struct.gameBoard** %board
	%u86 = getelementptr %struct.gameBoard* %u85, i1 0, i32 5
	store i32 %u84, i32* %u86
	br label %LU38
LU38:
	br label %LU39
LU28:
	%u87 = load i32* %placement
	%u88 = icmp eq i32 %u87, 7
	br i1 %u88, label %LU29, label %LU30
	br label %LU38
LU29:
	%u89 = load i32* %turn
	%u90 = load %struct.gameBoard** %board
	%u91 = getelementptr %struct.gameBoard* %u90, i1 0, i32 6
	store i32 %u89, i32* %u91
	br label %LU37
LU30:
	%u92 = load i32* %placement
	%u93 = icmp eq i32 %u92, 8
	br i1 %u93, label %LU31, label %LU32
	br label %LU37
LU37:
	br label %LU38
LU31:
	%u94 = load i32* %turn
	%u95 = load %struct.gameBoard** %board
	%u96 = getelementptr %struct.gameBoard* %u95, i1 0, i32 7
	store i32 %u94, i32* %u96
	br label %LU36
LU36:
	br label %LU37
LU32:
	%u97 = load i32* %placement
	%u98 = icmp eq i32 %u97, 9
	br i1 %u98, label %LU33, label %LU34
	br label %LU36
LU33:
	%u99 = load i32* %turn
	%u100 = load %struct.gameBoard** %board
	%u101 = getelementptr %struct.gameBoard* %u100, i1 0, i32 8
	store i32 %u99, i32* %u101
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
	%u102 = load %struct.gameBoard** %board
	%u103 = getelementptr %struct.gameBoard* %u102, i1 0, i32 0
	%u104 = load i32* %u103
	%u105 = icmp eq i32 %u104, 1
	br i1 %u105, label %LU48, label %LU55
LU48:
	%u106 = load %struct.gameBoard** %board
	%u107 = getelementptr %struct.gameBoard* %u106, i1 0, i32 1
	%u108 = load i32* %u107
	%u109 = icmp eq i32 %u108, 1
	br i1 %u109, label %LU49, label %LU53
	br label %LU56
LU55:
	br label %LU56
LU49:
	%u110 = load %struct.gameBoard** %board
	%u111 = getelementptr %struct.gameBoard* %u110, i1 0, i32 2
	%u112 = load i32* %u111
	%u113 = icmp eq i32 %u112, 1
	br i1 %u113, label %LU50, label %LU51
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
	%u114 = load %struct.gameBoard** %board
	%u115 = getelementptr %struct.gameBoard* %u114, i1 0, i32 0
	%u116 = load i32* %u115
	%u117 = icmp eq i32 %u116, 2
	br i1 %u117, label %LU57, label %LU64
LU57:
	%u118 = load %struct.gameBoard** %board
	%u119 = getelementptr %struct.gameBoard* %u118, i1 0, i32 1
	%u120 = load i32* %u119
	%u121 = icmp eq i32 %u120, 2
	br i1 %u121, label %LU58, label %LU62
	br label %LU65
LU64:
	br label %LU65
LU58:
	%u122 = load %struct.gameBoard** %board
	%u123 = getelementptr %struct.gameBoard* %u122, i1 0, i32 2
	%u124 = load i32* %u123
	%u125 = icmp eq i32 %u124, 2
	br i1 %u125, label %LU59, label %LU60
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
	%u126 = load %struct.gameBoard** %board
	%u127 = getelementptr %struct.gameBoard* %u126, i1 0, i32 3
	%u128 = load i32* %u127
	%u129 = icmp eq i32 %u128, 1
	br i1 %u129, label %LU66, label %LU73
LU66:
	%u130 = load %struct.gameBoard** %board
	%u131 = getelementptr %struct.gameBoard* %u130, i1 0, i32 4
	%u132 = load i32* %u131
	%u133 = icmp eq i32 %u132, 1
	br i1 %u133, label %LU67, label %LU71
	br label %LU74
LU73:
	br label %LU74
LU67:
	%u134 = load %struct.gameBoard** %board
	%u135 = getelementptr %struct.gameBoard* %u134, i1 0, i32 5
	%u136 = load i32* %u135
	%u137 = icmp eq i32 %u136, 1
	br i1 %u137, label %LU68, label %LU69
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
	%u138 = load %struct.gameBoard** %board
	%u139 = getelementptr %struct.gameBoard* %u138, i1 0, i32 3
	%u140 = load i32* %u139
	%u141 = icmp eq i32 %u140, 2
	br i1 %u141, label %LU75, label %LU82
LU75:
	%u142 = load %struct.gameBoard** %board
	%u143 = getelementptr %struct.gameBoard* %u142, i1 0, i32 4
	%u144 = load i32* %u143
	%u145 = icmp eq i32 %u144, 2
	br i1 %u145, label %LU76, label %LU80
	br label %LU83
LU82:
	br label %LU83
LU76:
	%u146 = load %struct.gameBoard** %board
	%u147 = getelementptr %struct.gameBoard* %u146, i1 0, i32 5
	%u148 = load i32* %u147
	%u149 = icmp eq i32 %u148, 2
	br i1 %u149, label %LU77, label %LU78
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
	%u150 = load %struct.gameBoard** %board
	%u151 = getelementptr %struct.gameBoard* %u150, i1 0, i32 6
	%u152 = load i32* %u151
	%u153 = icmp eq i32 %u152, 1
	br i1 %u153, label %LU84, label %LU91
LU84:
	%u154 = load %struct.gameBoard** %board
	%u155 = getelementptr %struct.gameBoard* %u154, i1 0, i32 7
	%u156 = load i32* %u155
	%u157 = icmp eq i32 %u156, 1
	br i1 %u157, label %LU85, label %LU89
	br label %LU92
LU91:
	br label %LU92
LU85:
	%u158 = load %struct.gameBoard** %board
	%u159 = getelementptr %struct.gameBoard* %u158, i1 0, i32 8
	%u160 = load i32* %u159
	%u161 = icmp eq i32 %u160, 1
	br i1 %u161, label %LU86, label %LU87
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
	%u162 = load %struct.gameBoard** %board
	%u163 = getelementptr %struct.gameBoard* %u162, i1 0, i32 6
	%u164 = load i32* %u163
	%u165 = icmp eq i32 %u164, 2
	br i1 %u165, label %LU93, label %LU100
LU93:
	%u166 = load %struct.gameBoard** %board
	%u167 = getelementptr %struct.gameBoard* %u166, i1 0, i32 7
	%u168 = load i32* %u167
	%u169 = icmp eq i32 %u168, 2
	br i1 %u169, label %LU94, label %LU98
	br label %LU101
LU100:
	br label %LU101
LU94:
	%u170 = load %struct.gameBoard** %board
	%u171 = getelementptr %struct.gameBoard* %u170, i1 0, i32 8
	%u172 = load i32* %u171
	%u173 = icmp eq i32 %u172, 2
	br i1 %u173, label %LU95, label %LU96
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
	%u174 = load %struct.gameBoard** %board
	%u175 = getelementptr %struct.gameBoard* %u174, i1 0, i32 0
	%u176 = load i32* %u175
	%u177 = icmp eq i32 %u176, 1
	br i1 %u177, label %LU102, label %LU109
LU102:
	%u178 = load %struct.gameBoard** %board
	%u179 = getelementptr %struct.gameBoard* %u178, i1 0, i32 3
	%u180 = load i32* %u179
	%u181 = icmp eq i32 %u180, 1
	br i1 %u181, label %LU103, label %LU107
	br label %LU110
LU109:
	br label %LU110
LU103:
	%u182 = load %struct.gameBoard** %board
	%u183 = getelementptr %struct.gameBoard* %u182, i1 0, i32 6
	%u184 = load i32* %u183
	%u185 = icmp eq i32 %u184, 1
	br i1 %u185, label %LU104, label %LU105
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
	%u186 = load %struct.gameBoard** %board
	%u187 = getelementptr %struct.gameBoard* %u186, i1 0, i32 0
	%u188 = load i32* %u187
	%u189 = icmp eq i32 %u188, 2
	br i1 %u189, label %LU111, label %LU118
LU111:
	%u190 = load %struct.gameBoard** %board
	%u191 = getelementptr %struct.gameBoard* %u190, i1 0, i32 3
	%u192 = load i32* %u191
	%u193 = icmp eq i32 %u192, 2
	br i1 %u193, label %LU112, label %LU116
	br label %LU119
LU118:
	br label %LU119
LU112:
	%u194 = load %struct.gameBoard** %board
	%u195 = getelementptr %struct.gameBoard* %u194, i1 0, i32 6
	%u196 = load i32* %u195
	%u197 = icmp eq i32 %u196, 2
	br i1 %u197, label %LU113, label %LU114
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
	%u198 = load %struct.gameBoard** %board
	%u199 = getelementptr %struct.gameBoard* %u198, i1 0, i32 1
	%u200 = load i32* %u199
	%u201 = icmp eq i32 %u200, 1
	br i1 %u201, label %LU120, label %LU127
LU120:
	%u202 = load %struct.gameBoard** %board
	%u203 = getelementptr %struct.gameBoard* %u202, i1 0, i32 4
	%u204 = load i32* %u203
	%u205 = icmp eq i32 %u204, 1
	br i1 %u205, label %LU121, label %LU125
	br label %LU128
LU127:
	br label %LU128
LU121:
	%u206 = load %struct.gameBoard** %board
	%u207 = getelementptr %struct.gameBoard* %u206, i1 0, i32 7
	%u208 = load i32* %u207
	%u209 = icmp eq i32 %u208, 1
	br i1 %u209, label %LU122, label %LU123
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
	%u210 = load %struct.gameBoard** %board
	%u211 = getelementptr %struct.gameBoard* %u210, i1 0, i32 1
	%u212 = load i32* %u211
	%u213 = icmp eq i32 %u212, 2
	br i1 %u213, label %LU129, label %LU136
LU129:
	%u214 = load %struct.gameBoard** %board
	%u215 = getelementptr %struct.gameBoard* %u214, i1 0, i32 4
	%u216 = load i32* %u215
	%u217 = icmp eq i32 %u216, 2
	br i1 %u217, label %LU130, label %LU134
	br label %LU137
LU136:
	br label %LU137
LU130:
	%u218 = load %struct.gameBoard** %board
	%u219 = getelementptr %struct.gameBoard* %u218, i1 0, i32 7
	%u220 = load i32* %u219
	%u221 = icmp eq i32 %u220, 2
	br i1 %u221, label %LU131, label %LU132
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
	%u222 = load %struct.gameBoard** %board
	%u223 = getelementptr %struct.gameBoard* %u222, i1 0, i32 2
	%u224 = load i32* %u223
	%u225 = icmp eq i32 %u224, 1
	br i1 %u225, label %LU138, label %LU145
LU138:
	%u226 = load %struct.gameBoard** %board
	%u227 = getelementptr %struct.gameBoard* %u226, i1 0, i32 5
	%u228 = load i32* %u227
	%u229 = icmp eq i32 %u228, 1
	br i1 %u229, label %LU139, label %LU143
	br label %LU146
LU145:
	br label %LU146
LU139:
	%u230 = load %struct.gameBoard** %board
	%u231 = getelementptr %struct.gameBoard* %u230, i1 0, i32 8
	%u232 = load i32* %u231
	%u233 = icmp eq i32 %u232, 1
	br i1 %u233, label %LU140, label %LU141
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
	%u234 = load %struct.gameBoard** %board
	%u235 = getelementptr %struct.gameBoard* %u234, i1 0, i32 2
	%u236 = load i32* %u235
	%u237 = icmp eq i32 %u236, 2
	br i1 %u237, label %LU147, label %LU154
LU147:
	%u238 = load %struct.gameBoard** %board
	%u239 = getelementptr %struct.gameBoard* %u238, i1 0, i32 5
	%u240 = load i32* %u239
	%u241 = icmp eq i32 %u240, 2
	br i1 %u241, label %LU148, label %LU152
	br label %LU155
LU154:
	br label %LU155
LU148:
	%u242 = load %struct.gameBoard** %board
	%u243 = getelementptr %struct.gameBoard* %u242, i1 0, i32 8
	%u244 = load i32* %u243
	%u245 = icmp eq i32 %u244, 2
	br i1 %u245, label %LU149, label %LU150
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
	%u246 = sub i32 0, 1
	store i32 %u246, i32* %_retval_
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
	%u247 = load i32* %_retval_
	ret i32 %u247
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
	%u247 = sub i32 0, 1
	store i32 %u247, i32* %winner
	%u248 = call i8* @malloc(i32 36)
	%u249 = bitcast i8* %u248 to %struct.gameBoard*
	store %struct.gameBoard* %u249, %struct.gameBoard** %board
	%u250 = load %struct.gameBoard** %board
	call void @cleanBoard(%struct.gameBoard* %u250)
	br label %LU160
LU160:
	%u252 = load i32* %winner
	%u253 = icmp slt i32 %u252, 0
	%u254 = load i32* %i
	%u255 = icmp ne i32 %u254, 8
	%u256 = and i1 %u253, %u255
	br i1 %u256, label %LU164, label %LU159
LU161:
	%u257 = load %struct.gameBoard** %board
	call void @printBoard(%struct.gameBoard* %u257)
	%u259 = load i32* %turn
	%u260 = icmp eq i32 %u259, 0
	br i1 %u260, label %LU162, label %LU163
LU162:
	%u261 = load i32* %turn
	%u262 = add i32 %u261, 1
	store i32 %u262, i32* %turn
	%u263 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u264 = load i32* @_scanned_
	store i32 %u264, i32* %space1
	%u265 = load %struct.gameBoard** %board
	%u266 = load i32* %space1
	call void @placePiece(%struct.gameBoard* %u265, i32 1, i32 %u266)
	br label %LU164
LU163:
	%u268 = load i32* %turn
	%u269 = sub i32 %u268, 1
	store i32 %u269, i32* %turn
	%u270 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u271 = load i32* @_scanned_
	store i32 %u271, i32* %space2
	%u272 = load %struct.gameBoard** %board
	%u273 = load i32* %space2
	call void @placePiece(%struct.gameBoard* %u272, i32 2, i32 %u273)
	br label %LU164
LU164:
	%u275 = load %struct.gameBoard** %board
	%u276 = call i32 @checkWinner(%struct.gameBoard* %u275)
	store i32 %u276, i32* %winner
	%u278 = load i32* %i
	%u279 = add i32 %u278, 1
	store i32 %u279, i32* %i
	br label %LU160
LU165:
	%u280 = load i32* %winner
	%u281 = add i32 %u280, 1
	%u282 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u281)
	store i32 0, i32* %_retval_
	br label %LU159
LU159:
	%u283 = load i32* %_retval_
	ret i32 %u283
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
