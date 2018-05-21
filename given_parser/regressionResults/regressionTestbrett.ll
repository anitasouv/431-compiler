target triple="i686"
%struct.thing = type {i32, i1, %struct.thing*};
@gi1 = common global i32 0, align 4
@gb1 = common global i1 0, align 4
@gs1 = common global %struct.thing* null, align 4
@counter = common global i32 0, align 4
define void @printgroup(i32 %_P_groupnum)
{
LU2:
	%groupnum = alloca i32
	store i32 %_P_groupnum, i32* %groupnum
	br label %LU3
LU3:
	%u0 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	%u1 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u2 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	%u3 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u4 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	%u5 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u6 = load i32* %groupnum
	%u7 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u6)
	br label %LU4
LU4:
	ret void
}

define i1 @setcounter(i32 %_P_val)
{
LU6:
	%_retval_ = alloca i1
	%val = alloca i32
	store i32 %_P_val, i32* %val
	br label %LU7
LU7:
	%u8 = load i32* %val
	store i32 %u8, i32* @counter
	store i1 1, i1* %_retval_
	br label %LU8
LU8:
	%u9 = load i1* %_retval_
	ret i1 %u9
}

define void @takealltypes(i32 %_P_i, i1 %_P_b, %struct.thing* %_P_s)
{
LU10:
	%i = alloca i32
	store i32 %_P_i, i32* %i
	%b = alloca i1
	store i1 %_P_b, i1* %b
	%s = alloca %struct.thing*
	store %struct.thing* %_P_s, %struct.thing** %s
	br label %LU11
LU11:
	%u9 = load i32* %i
	%u10 = icmp eq i32 %u9, 3
	br i1 %u10, label %LU13, label %LU14
LU13:
	%u11 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU15
LU14:
	%u12 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU15
LU15:
	%u13 = load i1* %b
	br i1 %u13, label %LU16, label %LU17
LU16:
	%u14 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU18
LU17:
	%u15 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU18
LU18:
	%u16 = load %struct.thing** %s
	%u17 = getelementptr %struct.thing* %u16, i1 0, i32 1
	%u18 = load i1* %u17
	br i1 %u18, label %LU19, label %LU20
LU19:
	%u19 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU21
LU20:
	%u20 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU21
LU21:
	br label %LU12
LU12:
	ret void
}

define void @tonofargs(i32 %_P_a1, i32 %_P_a2, i32 %_P_a3, i32 %_P_a4, i32 %_P_a5, i32 %_P_a6, i32 %_P_a7, i32 %_P_a8)
{
LU23:
	%a1 = alloca i32
	store i32 %_P_a1, i32* %a1
	%a2 = alloca i32
	store i32 %_P_a2, i32* %a2
	%a3 = alloca i32
	store i32 %_P_a3, i32* %a3
	%a4 = alloca i32
	store i32 %_P_a4, i32* %a4
	%a5 = alloca i32
	store i32 %_P_a5, i32* %a5
	%a6 = alloca i32
	store i32 %_P_a6, i32* %a6
	%a7 = alloca i32
	store i32 %_P_a7, i32* %a7
	%a8 = alloca i32
	store i32 %_P_a8, i32* %a8
	br label %LU24
LU24:
	%u21 = load i32* %a5
	%u22 = icmp eq i32 %u21, 5
	br i1 %u22, label %LU26, label %LU27
LU26:
	%u23 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU28
LU27:
	%u24 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u25 = load i32* %a5
	%u26 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u25)
	br label %LU28
LU28:
	%u27 = load i32* %a6
	%u28 = icmp eq i32 %u27, 6
	br i1 %u28, label %LU29, label %LU30
LU29:
	%u29 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU31
LU30:
	%u30 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u31 = load i32* %a6
	%u32 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u31)
	br label %LU31
LU31:
	%u33 = load i32* %a7
	%u34 = icmp eq i32 %u33, 7
	br i1 %u34, label %LU32, label %LU33
LU32:
	%u35 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU34
LU33:
	%u36 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u37 = load i32* %a7
	%u38 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u37)
	br label %LU34
LU34:
	%u39 = load i32* %a8
	%u40 = icmp eq i32 %u39, 8
	br i1 %u40, label %LU35, label %LU36
LU35:
	%u41 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU37
LU36:
	%u42 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u43 = load i32* %a8
	%u44 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u43)
	br label %LU37
LU37:
	br label %LU25
LU25:
	ret void
}

define i32 @returnint(i32 %_P_ret)
{
LU39:
	%_retval_ = alloca i32
	%ret = alloca i32
	store i32 %_P_ret, i32* %ret
	br label %LU40
LU40:
	%u45 = load i32* %ret
	store i32 %u45, i32* %_retval_
	br label %LU41
LU41:
	%u46 = load i32* %_retval_
	ret i32 %u46
}

define i1 @returnbool(i1 %_P_ret)
{
LU43:
	%_retval_ = alloca i1
	%ret = alloca i1
	store i1 %_P_ret, i1* %ret
	br label %LU44
LU44:
	%u46 = load i1* %ret
	store i1 %u46, i1* %_retval_
	br label %LU45
LU45:
	%u47 = load i1* %_retval_
	ret i1 %u47
}

define %struct.thing* @returnstruct(%struct.thing* %_P_ret)
{
LU47:
	%_retval_ = alloca %struct.thing*
	%ret = alloca %struct.thing*
	store %struct.thing* %_P_ret, %struct.thing** %ret
	br label %LU48
LU48:
	%u47 = load %struct.thing** %ret
	store %struct.thing* %u47, %struct.thing** %_retval_
	br label %LU49
LU49:
	%u48 = load %struct.thing** %_retval_
	ret %struct.thing* %u48
}

define i32 @main()
{
LU51:
	%_retval_ = alloca i32
	%b1 = alloca i1
	%b2 = alloca i1
	%i1 = alloca i32
	%i2 = alloca i32
	%i3 = alloca i32
	%s1 = alloca %struct.thing*
	%s2 = alloca %struct.thing*
	br label %LU52
LU52:
	store i32 0, i32* @counter
	call void @printgroup(i32 1)
	store i1 0, i1* %b1
	store i1 0, i1* %b2
	%u49 = load i1* %b1
	%u50 = load i1* %b2
	%u51 = and i1 %u49, %u50
	br i1 %u51, label %LU54, label %LU55
LU54:
	%u52 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU56
LU55:
	%u53 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU56
LU56:
	store i1 1, i1* %b1
	store i1 0, i1* %b2
	%u54 = load i1* %b1
	%u55 = load i1* %b2
	%u56 = and i1 %u54, %u55
	br i1 %u56, label %LU57, label %LU58
LU57:
	%u57 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU59
LU58:
	%u58 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU59
LU59:
	store i1 0, i1* %b1
	store i1 1, i1* %b2
	%u59 = load i1* %b1
	%u60 = load i1* %b2
	%u61 = and i1 %u59, %u60
	br i1 %u61, label %LU60, label %LU61
LU60:
	%u62 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU62
LU61:
	%u63 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU62
LU62:
	store i1 1, i1* %b1
	store i1 1, i1* %b2
	%u64 = load i1* %b1
	%u65 = load i1* %b2
	%u66 = and i1 %u64, %u65
	br i1 %u66, label %LU63, label %LU64
LU63:
	%u67 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU65
LU64:
	%u68 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU65
LU65:
	store i32 0, i32* @counter
	call void @printgroup(i32 2)
	store i1 1, i1* %b1
	store i1 1, i1* %b2
	%u70 = load i1* %b1
	%u71 = load i1* %b2
	%u72 = or i1 %u70, %u71
	br i1 %u72, label %LU66, label %LU67
LU66:
	%u73 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU68
LU67:
	%u74 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU68
LU68:
	store i1 1, i1* %b1
	store i1 0, i1* %b2
	%u75 = load i1* %b1
	%u76 = load i1* %b2
	%u77 = or i1 %u75, %u76
	br i1 %u77, label %LU69, label %LU70
LU69:
	%u78 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU71
LU70:
	%u79 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU71
LU71:
	store i1 0, i1* %b1
	store i1 1, i1* %b2
	%u80 = load i1* %b1
	%u81 = load i1* %b2
	%u82 = or i1 %u80, %u81
	br i1 %u82, label %LU72, label %LU73
LU72:
	%u83 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU74
LU73:
	%u84 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU74
LU74:
	store i1 0, i1* %b1
	store i1 0, i1* %b2
	%u85 = load i1* %b1
	%u86 = load i1* %b2
	%u87 = or i1 %u85, %u86
	br i1 %u87, label %LU75, label %LU76
LU75:
	%u88 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU77
LU76:
	%u89 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU77
LU77:
	call void @printgroup(i32 3)
	%u91 = icmp sgt i32 42, 1
	br i1 %u91, label %LU78, label %LU79
LU78:
	%u92 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU80
LU79:
	%u93 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU80
LU80:
	%u94 = icmp sge i32 42, 1
	br i1 %u94, label %LU81, label %LU82
LU81:
	%u95 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU83
LU82:
	%u96 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU83
LU83:
	%u97 = icmp slt i32 42, 1
	br i1 %u97, label %LU84, label %LU85
LU84:
	%u98 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU86
LU85:
	%u99 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU86
LU86:
	%u100 = icmp sle i32 42, 1
	br i1 %u100, label %LU87, label %LU88
LU87:
	%u101 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU89
LU88:
	%u102 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU89
LU89:
	%u103 = icmp eq i32 42, 1
	br i1 %u103, label %LU90, label %LU91
LU90:
	%u104 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU92
LU91:
	%u105 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU92
LU92:
	%u106 = icmp ne i32 42, 1
	br i1 %u106, label %LU93, label %LU94
LU93:
	%u107 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU95
LU94:
	%u108 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU95
LU95:
	br i1 1, label %LU96, label %LU97
LU96:
	%u109 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU98
LU97:
	%u110 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU98
LU98:
	%u111 = xor i1 1, 1
	br i1 %u111, label %LU99, label %LU100
LU99:
	%u112 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU101
LU100:
	%u113 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU101
LU101:
	br i1 0, label %LU102, label %LU103
LU102:
	%u114 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU104
LU103:
	%u115 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU104
LU104:
	%u116 = xor i1 1, 0
	br i1 %u116, label %LU105, label %LU106
LU105:
	%u117 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU107
LU106:
	%u118 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU107
LU107:
	%u119 = xor i1 1, 0
	br i1 %u119, label %LU108, label %LU109
LU108:
	%u120 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU110
LU109:
	%u121 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU110
LU110:
	call void @printgroup(i32 4)
	%u123 = add i32 2, 3
	%u124 = icmp eq i32 %u123, 5
	br i1 %u124, label %LU111, label %LU112
LU111:
	%u125 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU113
LU112:
	%u126 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u127 = add i32 2, 3
	%u128 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u127)
	br label %LU113
LU113:
	%u129 = mul i32 2, 3
	%u130 = icmp eq i32 %u129, 6
	br i1 %u130, label %LU114, label %LU115
LU114:
	%u131 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU116
LU115:
	%u132 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u133 = mul i32 2, 3
	%u134 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u133)
	br label %LU116
LU116:
	%u135 = sub i32 3, 2
	%u136 = icmp eq i32 %u135, 1
	br i1 %u136, label %LU117, label %LU118
LU117:
	%u137 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU119
LU118:
	%u138 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u139 = sub i32 3, 2
	%u140 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u139)
	br label %LU119
LU119:
	%u141 = sdiv i32 6, 3
	%u142 = icmp eq i32 %u141, 2
	br i1 %u142, label %LU120, label %LU121
LU120:
	%u143 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU122
LU121:
	%u144 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u145 = sdiv i32 6, 3
	%u146 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u145)
	br label %LU122
LU122:
	%u147 = sub i32 0, 6
	%u148 = icmp slt i32 %u147, 0
	br i1 %u148, label %LU123, label %LU124
LU123:
	%u149 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU125
LU124:
	%u150 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU125
LU125:
	call void @printgroup(i32 5)
	store i32 42, i32* %i1
	%u152 = load i32* %i1
	%u153 = icmp eq i32 %u152, 42
	br i1 %u153, label %LU126, label %LU127
LU126:
	%u154 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU128
LU127:
	%u155 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU128
LU128:
	store i32 3, i32* %i1
	store i32 2, i32* %i2
	%u156 = load i32* %i1
	%u157 = load i32* %i2
	%u158 = add i32 %u156, %u157
	store i32 %u158, i32* %i3
	%u159 = load i32* %i3
	%u160 = icmp eq i32 %u159, 5
	br i1 %u160, label %LU129, label %LU130
LU129:
	%u161 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU131
LU130:
	%u162 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU131
LU131:
	store i1 1, i1* %b1
	%u163 = load i1* %b1
	br i1 %u163, label %LU132, label %LU133
LU132:
	%u164 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU134
LU133:
	%u165 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU134
LU134:
	%u166 = load i1* %b1
	%u167 = xor i1 1, %u166
	br i1 %u167, label %LU135, label %LU136
LU135:
	%u168 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU137
LU136:
	%u169 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU137
LU137:
	store i1 0, i1* %b1
	%u170 = load i1* %b1
	br i1 %u170, label %LU138, label %LU139
LU138:
	%u171 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU140
LU139:
	%u172 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU140
LU140:
	%u173 = load i1* %b1
	%u174 = xor i1 1, %u173
	br i1 %u174, label %LU141, label %LU142
LU141:
	%u175 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU143
LU142:
	%u176 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU143
LU143:
	%u177 = load i1* %b1
	br i1 %u177, label %LU144, label %LU145
LU144:
	%u178 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU146
LU145:
	%u179 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU146
LU146:
	call void @printgroup(i32 6)
	store i32 0, i32* %i1
	br label %LU147
LU147:
	%u181 = load i32* %i1
	%u182 = icmp slt i32 %u181, 5
	br i1 %u182, label %LU151, label %LU152
LU148:
	%u183 = load i32* %i1
	%u184 = icmp sge i32 %u183, 5
	br i1 %u184, label %LU149, label %LU150
LU149:
	%u185 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU151
LU150:
	br label %LU151
LU151:
	%u186 = load i32* %i1
	%u187 = add i32 %u186, 5
	store i32 %u187, i32* %i1
	br label %LU147
LU152:
	%u188 = load i32* %i1
	%u189 = icmp eq i32 %u188, 5
	br i1 %u189, label %LU153, label %LU154
LU153:
	%u190 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU155
LU154:
	%u191 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u192 = load i32* %i1
	%u193 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u192)
	br label %LU155
LU155:
	call void @printgroup(i32 7)
	%u195 = call i8* @malloc(i32 12)
	%u196 = bitcast i8* %u195 to %struct.thing*
	store %struct.thing* %u196, %struct.thing** %s1
	%u197 = load %struct.thing** %s1
	%u198 = getelementptr %struct.thing* %u197, i1 0, i32 0
	store i32 42, i32* %u198
	%u199 = load %struct.thing** %s1
	%u200 = getelementptr %struct.thing* %u199, i1 0, i32 1
	store i1 1, i1* %u200
	%u201 = load %struct.thing** %s1
	%u202 = getelementptr %struct.thing* %u201, i1 0, i32 0
	%u203 = load i32* %u202
	%u204 = icmp eq i32 %u203, 42
	br i1 %u204, label %LU156, label %LU157
LU156:
	%u205 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU158
LU157:
	%u206 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u207 = load %struct.thing** %s1
	%u208 = getelementptr %struct.thing* %u207, i1 0, i32 0
	%u209 = load i32* %u208
	%u210 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u209)
	br label %LU158
LU158:
	%u211 = load %struct.thing** %s1
	%u212 = getelementptr %struct.thing* %u211, i1 0, i32 1
	%u213 = load i1* %u212
	br i1 %u213, label %LU159, label %LU160
LU159:
	%u214 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU161
LU160:
	%u215 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU161
LU161:
	%u216 = call i8* @malloc(i32 12)
	%u217 = bitcast i8* %u216 to %struct.thing*
	%u218 = load %struct.thing** %s1
	%u219 = getelementptr %struct.thing* %u218, i1 0, i32 2
	store %struct.thing* %u217, %struct.thing** %u219
	%u220 = load %struct.thing** %s1
	%u221 = getelementptr %struct.thing* %u220, i1 0, i32 2
	%u222 = load %struct.thing** %u221
	%u223 = getelementptr %struct.thing* %u222, i1 0, i32 0
	store i32 13, i32* %u223
	%u224 = load %struct.thing** %s1
	%u225 = getelementptr %struct.thing* %u224, i1 0, i32 2
	%u226 = load %struct.thing** %u225
	%u227 = getelementptr %struct.thing* %u226, i1 0, i32 1
	store i1 0, i1* %u227
	%u228 = load %struct.thing** %s1
	%u229 = getelementptr %struct.thing* %u228, i1 0, i32 2
	%u230 = load %struct.thing** %u229
	%u231 = getelementptr %struct.thing* %u230, i1 0, i32 0
	%u232 = load i32* %u231
	%u233 = icmp eq i32 %u232, 13
	br i1 %u233, label %LU162, label %LU163
LU162:
	%u234 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU164
LU163:
	%u235 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u236 = load %struct.thing** %s1
	%u237 = getelementptr %struct.thing* %u236, i1 0, i32 2
	%u238 = load %struct.thing** %u237
	%u239 = getelementptr %struct.thing* %u238, i1 0, i32 0
	%u240 = load i32* %u239
	%u241 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u240)
	br label %LU164
LU164:
	%u242 = load %struct.thing** %s1
	%u243 = getelementptr %struct.thing* %u242, i1 0, i32 2
	%u244 = load %struct.thing** %u243
	%u245 = getelementptr %struct.thing* %u244, i1 0, i32 1
	%u246 = load i1* %u245
	%u247 = xor i1 1, %u246
	br i1 %u247, label %LU165, label %LU166
LU165:
	%u248 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU167
LU166:
	%u249 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU167
LU167:
	%u250 = load %struct.thing** %s1
	%u251 = load %struct.thing** %s1
	%u252 = icmp eq %struct.thing* %u250, %u251
	br i1 %u252, label %LU168, label %LU169
LU168:
	%u253 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU170
LU169:
	%u254 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU170
LU170:
	%u255 = load %struct.thing** %s1
	%u256 = load %struct.thing** %s1
	%u257 = getelementptr %struct.thing* %u256, i1 0, i32 2
	%u258 = load %struct.thing** %u257
	%u259 = icmp ne %struct.thing* %u255, %u258
	br i1 %u259, label %LU171, label %LU172
LU171:
	%u260 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU173
LU172:
	%u261 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU173
LU173:
	call void @printgroup(i32 8)
	store i32 7, i32* @gi1
	%u263 = load i32* @gi1
	%u264 = icmp eq i32 %u263, 7
	br i1 %u264, label %LU174, label %LU175
LU174:
	%u265 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU176
LU175:
	%u266 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u267 = load i32* @gi1
	%u268 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u267)
	br label %LU176
LU176:
	store i1 1, i1* @gb1
	%u269 = load i1* @gb1
	br i1 %u269, label %LU177, label %LU178
LU177:
	%u270 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU179
LU178:
	%u271 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU179
LU179:
	%u272 = call i8* @malloc(i32 12)
	%u273 = bitcast i8* %u272 to %struct.thing*
	store %struct.thing* %u273, %struct.thing** @gs1
	%u274 = load %struct.thing** @gs1
	%u275 = getelementptr %struct.thing* %u274, i1 0, i32 0
	store i32 34, i32* %u275
	%u276 = load %struct.thing** @gs1
	%u277 = getelementptr %struct.thing* %u276, i1 0, i32 1
	store i1 0, i1* %u277
	%u278 = load %struct.thing** @gs1
	%u279 = getelementptr %struct.thing* %u278, i1 0, i32 0
	%u280 = load i32* %u279
	%u281 = icmp eq i32 %u280, 34
	br i1 %u281, label %LU180, label %LU181
LU180:
	%u282 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU182
LU181:
	%u283 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u284 = load %struct.thing** @gs1
	%u285 = getelementptr %struct.thing* %u284, i1 0, i32 0
	%u286 = load i32* %u285
	%u287 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u286)
	br label %LU182
LU182:
	%u288 = load %struct.thing** @gs1
	%u289 = getelementptr %struct.thing* %u288, i1 0, i32 1
	%u290 = load i1* %u289
	%u291 = xor i1 1, %u290
	br i1 %u291, label %LU183, label %LU184
LU183:
	%u292 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU185
LU184:
	%u293 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU185
LU185:
	%u294 = call i8* @malloc(i32 12)
	%u295 = bitcast i8* %u294 to %struct.thing*
	%u296 = load %struct.thing** @gs1
	%u297 = getelementptr %struct.thing* %u296, i1 0, i32 2
	store %struct.thing* %u295, %struct.thing** %u297
	%u298 = load %struct.thing** @gs1
	%u299 = getelementptr %struct.thing* %u298, i1 0, i32 2
	%u300 = load %struct.thing** %u299
	%u301 = getelementptr %struct.thing* %u300, i1 0, i32 0
	store i32 16, i32* %u301
	%u302 = load %struct.thing** @gs1
	%u303 = getelementptr %struct.thing* %u302, i1 0, i32 2
	%u304 = load %struct.thing** %u303
	%u305 = getelementptr %struct.thing* %u304, i1 0, i32 1
	store i1 1, i1* %u305
	%u306 = load %struct.thing** @gs1
	%u307 = getelementptr %struct.thing* %u306, i1 0, i32 2
	%u308 = load %struct.thing** %u307
	%u309 = getelementptr %struct.thing* %u308, i1 0, i32 0
	%u310 = load i32* %u309
	%u311 = icmp eq i32 %u310, 16
	br i1 %u311, label %LU186, label %LU187
LU186:
	%u312 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU188
LU187:
	%u313 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u314 = load %struct.thing** @gs1
	%u315 = getelementptr %struct.thing* %u314, i1 0, i32 2
	%u316 = load %struct.thing** %u315
	%u317 = getelementptr %struct.thing* %u316, i1 0, i32 0
	%u318 = load i32* %u317
	%u319 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u318)
	br label %LU188
LU188:
	%u320 = load %struct.thing** @gs1
	%u321 = getelementptr %struct.thing* %u320, i1 0, i32 2
	%u322 = load %struct.thing** %u321
	%u323 = getelementptr %struct.thing* %u322, i1 0, i32 1
	%u324 = load i1* %u323
	br i1 %u324, label %LU189, label %LU190
LU189:
	%u325 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU191
LU190:
	%u326 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU191
LU191:
	call void @printgroup(i32 9)
	%u328 = call i8* @malloc(i32 12)
	%u329 = bitcast i8* %u328 to %struct.thing*
	store %struct.thing* %u329, %struct.thing** %s1
	%u330 = load %struct.thing** %s1
	%u331 = getelementptr %struct.thing* %u330, i1 0, i32 1
	store i1 1, i1* %u331
	%u332 = load %struct.thing** %s1
	call void @takealltypes(i32 3, i1 1, %struct.thing* %u332)
	%u334 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 2)
	call void @tonofargs(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8)
	%u336 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 3)
	%u337 = call i32 @returnint(i32 3)
	store i32 %u337, i32* %i1
	%u339 = load i32* %i1
	%u340 = icmp eq i32 %u339, 3
	br i1 %u340, label %LU192, label %LU193
LU192:
	%u341 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU194
LU193:
	%u342 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	%u343 = load i32* %i1
	%u344 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u343)
	br label %LU194
LU194:
	%u345 = call i1 @returnbool(i1 1)
	store i1 %u345, i1* %b1
	%u347 = load i1* %b1
	br i1 %u347, label %LU195, label %LU196
LU195:
	%u348 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU197
LU196:
	%u349 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU197
LU197:
	%u350 = call i8* @malloc(i32 12)
	%u351 = bitcast i8* %u350 to %struct.thing*
	store %struct.thing* %u351, %struct.thing** %s1
	%u352 = load %struct.thing** %s1
	%u353 = call %struct.thing* @returnstruct(%struct.thing* %u352)
	store %struct.thing* %u353, %struct.thing** %s2
	%u355 = load %struct.thing** %s1
	%u356 = load %struct.thing** %s2
	%u357 = icmp eq %struct.thing* %u355, %u356
	br i1 %u357, label %LU198, label %LU199
LU198:
	%u358 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU200
LU199:
	%u359 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU200
LU200:
	call void @printgroup(i32 10)
	store i32 0, i32* %_retval_
	br label %LU53
LU53:
	%u361 = load i32* %_retval_
	ret i32 %u361
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
