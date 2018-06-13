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
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 1)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 1)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 1)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u0 = load i32* %groupnum
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u0)
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
	%u1 = load i32* %val
	store i32 %u1, i32* @counter
	store i1 1, i1* %_retval_
	br label %LU8
LU8:
	%u2 = load i1* %_retval_
	ret i1 %u2
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
	%u2 = load i32* %i
	%u3 = icmp eq i32 %u2, 3
	br i1 %u3, label %LU13, label %LU14
LU13:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU15
LU14:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU15
LU15:
	%u4 = load i1* %b
	br i1 %u4, label %LU16, label %LU17
LU16:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU18
LU17:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU18
LU18:
	%u5 = load %struct.thing** %s
	%u6 = getelementptr %struct.thing* %u5, i1 0, i32 1
	%u7 = load i1* %u6
	br i1 %u7, label %LU19, label %LU20
LU19:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU21
LU20:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
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
	%u8 = load i32* %a5
	%u9 = icmp eq i32 %u8, 5
	br i1 %u9, label %LU26, label %LU27
LU26:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU28
LU27:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u10 = load i32* %a5
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u10)
	br label %LU28
LU28:
	%u11 = load i32* %a6
	%u12 = icmp eq i32 %u11, 6
	br i1 %u12, label %LU29, label %LU30
LU29:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU31
LU30:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u13 = load i32* %a6
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u13)
	br label %LU31
LU31:
	%u14 = load i32* %a7
	%u15 = icmp eq i32 %u14, 7
	br i1 %u15, label %LU32, label %LU33
LU32:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU34
LU33:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u16 = load i32* %a7
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u16)
	br label %LU34
LU34:
	%u17 = load i32* %a8
	%u18 = icmp eq i32 %u17, 8
	br i1 %u18, label %LU35, label %LU36
LU35:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU37
LU36:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u19 = load i32* %a8
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u19)
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
	%u20 = load i32* %ret
	store i32 %u20, i32* %_retval_
	br label %LU41
LU41:
	%u21 = load i32* %_retval_
	ret i32 %u21
}

define i1 @returnbool(i1 %_P_ret)
{
LU43:
	%_retval_ = alloca i1
	%ret = alloca i1
	store i1 %_P_ret, i1* %ret
	br label %LU44
LU44:
	%u21 = load i1* %ret
	store i1 %u21, i1* %_retval_
	br label %LU45
LU45:
	%u22 = load i1* %_retval_
	ret i1 %u22
}

define %struct.thing* @returnstruct(%struct.thing* %_P_ret)
{
LU47:
	%_retval_ = alloca %struct.thing*
	%ret = alloca %struct.thing*
	store %struct.thing* %_P_ret, %struct.thing** %ret
	br label %LU48
LU48:
	%u22 = load %struct.thing** %ret
	store %struct.thing* %u22, %struct.thing** %_retval_
	br label %LU49
LU49:
	%u23 = load %struct.thing** %_retval_
	ret %struct.thing* %u23
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
	%u24 = load i1* %b1
	%u25 = load i1* %b2
	%u26 = and i1 %u24, %u25
	br i1 %u26, label %LU54, label %LU55
LU54:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU56
LU55:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU56
LU56:
	store i1 1, i1* %b1
	store i1 0, i1* %b2
	%u27 = load i1* %b1
	%u28 = load i1* %b2
	%u29 = and i1 %u27, %u28
	br i1 %u29, label %LU57, label %LU58
LU57:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU59
LU58:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU59
LU59:
	store i1 0, i1* %b1
	store i1 1, i1* %b2
	%u30 = load i1* %b1
	%u31 = load i1* %b2
	%u32 = and i1 %u30, %u31
	br i1 %u32, label %LU60, label %LU61
LU60:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU62
LU61:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU62
LU62:
	store i1 1, i1* %b1
	store i1 1, i1* %b2
	%u33 = load i1* %b1
	%u34 = load i1* %b2
	%u35 = and i1 %u33, %u34
	br i1 %u35, label %LU63, label %LU64
LU63:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU65
LU64:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU65
LU65:
	store i32 0, i32* @counter
	call void @printgroup(i32 2)
	store i1 1, i1* %b1
	store i1 1, i1* %b2
	%u37 = load i1* %b1
	%u38 = load i1* %b2
	%u39 = or i1 %u37, %u38
	br i1 %u39, label %LU66, label %LU67
LU66:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU68
LU67:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU68
LU68:
	store i1 1, i1* %b1
	store i1 0, i1* %b2
	%u40 = load i1* %b1
	%u41 = load i1* %b2
	%u42 = or i1 %u40, %u41
	br i1 %u42, label %LU69, label %LU70
LU69:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU71
LU70:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU71
LU71:
	store i1 0, i1* %b1
	store i1 1, i1* %b2
	%u43 = load i1* %b1
	%u44 = load i1* %b2
	%u45 = or i1 %u43, %u44
	br i1 %u45, label %LU72, label %LU73
LU72:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU74
LU73:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU74
LU74:
	store i1 0, i1* %b1
	store i1 0, i1* %b2
	%u46 = load i1* %b1
	%u47 = load i1* %b2
	%u48 = or i1 %u46, %u47
	br i1 %u48, label %LU75, label %LU76
LU75:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU77
LU76:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU77
LU77:
	call void @printgroup(i32 3)
	%u50 = icmp sgt i32 42, 1
	br i1 %u50, label %LU78, label %LU79
LU78:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU80
LU79:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU80
LU80:
	%u51 = icmp sge i32 42, 1
	br i1 %u51, label %LU81, label %LU82
LU81:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU83
LU82:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU83
LU83:
	%u52 = icmp slt i32 42, 1
	br i1 %u52, label %LU84, label %LU85
LU84:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU86
LU85:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU86
LU86:
	%u53 = icmp sle i32 42, 1
	br i1 %u53, label %LU87, label %LU88
LU87:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU89
LU88:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU89
LU89:
	%u54 = icmp eq i32 42, 1
	br i1 %u54, label %LU90, label %LU91
LU90:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU92
LU91:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU92
LU92:
	%u55 = icmp ne i32 42, 1
	br i1 %u55, label %LU93, label %LU94
LU93:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU95
LU94:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU95
LU95:
	br i1 1, label %LU96, label %LU97
LU96:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU98
LU97:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU98
LU98:
	%u56 = xor i1 1, 1
	br i1 %u56, label %LU99, label %LU100
LU99:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU101
LU100:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU101
LU101:
	br i1 0, label %LU102, label %LU103
LU102:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU104
LU103:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU104
LU104:
	%u57 = xor i1 1, 0
	br i1 %u57, label %LU105, label %LU106
LU105:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU107
LU106:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU107
LU107:
	%u58 = xor i1 1, 0
	br i1 %u58, label %LU108, label %LU109
LU108:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU110
LU109:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU110
LU110:
	call void @printgroup(i32 4)
	%u60 = add i32 2, 3
	%u61 = icmp eq i32 %u60, 5
	br i1 %u61, label %LU111, label %LU112
LU111:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU113
LU112:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u62 = add i32 2, 3
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u62)
	br label %LU113
LU113:
	%u63 = mul i32 2, 3
	%u64 = icmp eq i32 %u63, 6
	br i1 %u64, label %LU114, label %LU115
LU114:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU116
LU115:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u65 = mul i32 2, 3
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u65)
	br label %LU116
LU116:
	%u66 = sub i32 3, 2
	%u67 = icmp eq i32 %u66, 1
	br i1 %u67, label %LU117, label %LU118
LU117:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU119
LU118:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u68 = sub i32 3, 2
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u68)
	br label %LU119
LU119:
	%u69 = sdiv i32 6, 3
	%u70 = icmp eq i32 %u69, 2
	br i1 %u70, label %LU120, label %LU121
LU120:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU122
LU121:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u71 = sdiv i32 6, 3
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u71)
	br label %LU122
LU122:
	%u72 = sub i32 0, 6
	%u73 = icmp slt i32 %u72, 0
	br i1 %u73, label %LU123, label %LU124
LU123:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU125
LU124:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU125
LU125:
	call void @printgroup(i32 5)
	store i32 42, i32* %i1
	%u75 = load i32* %i1
	%u76 = icmp eq i32 %u75, 42
	br i1 %u76, label %LU126, label %LU127
LU126:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU128
LU127:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU128
LU128:
	store i32 3, i32* %i1
	store i32 2, i32* %i2
	%u77 = load i32* %i1
	%u78 = load i32* %i2
	%u79 = add i32 %u77, %u78
	store i32 %u79, i32* %i3
	%u80 = load i32* %i3
	%u81 = icmp eq i32 %u80, 5
	br i1 %u81, label %LU129, label %LU130
LU129:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU131
LU130:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU131
LU131:
	store i1 1, i1* %b1
	%u82 = load i1* %b1
	br i1 %u82, label %LU132, label %LU133
LU132:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU134
LU133:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU134
LU134:
	%u83 = load i1* %b1
	%u84 = xor i1 1, %u83
	br i1 %u84, label %LU135, label %LU136
LU135:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU137
LU136:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU137
LU137:
	store i1 0, i1* %b1
	%u85 = load i1* %b1
	br i1 %u85, label %LU138, label %LU139
LU138:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU140
LU139:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU140
LU140:
	%u86 = load i1* %b1
	%u87 = xor i1 1, %u86
	br i1 %u87, label %LU141, label %LU142
LU141:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU143
LU142:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU143
LU143:
	%u88 = load i1* %b1
	br i1 %u88, label %LU144, label %LU145
LU144:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU146
LU145:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU146
LU146:
	call void @printgroup(i32 6)
	store i32 0, i32* %i1
	br label %LU147
LU147:
	%u90 = load i32* %i1
	%u91 = icmp slt i32 %u90, 5
	br i1 %u91, label %LU148, label %LU149
LU148:
	%u92 = load i32* %i1
	%u93 = icmp sge i32 %u92, 5
	br i1 %u93, label %LU150, label %LU151
LU150:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU152
LU151:
	br label %LU152
LU152:
	%u94 = load i32* %i1
	%u95 = add i32 %u94, 5
	store i32 %u95, i32* %i1
	br label %LU147
LU149:
	%u96 = load i32* %i1
	%u97 = icmp eq i32 %u96, 5
	br i1 %u97, label %LU153, label %LU154
LU153:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU155
LU154:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u98 = load i32* %i1
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u98)
	br label %LU155
LU155:
	call void @printgroup(i32 7)
	%u100 = call i8* @malloc(i32 12)
	%u101 = bitcast i8* %u100 to %struct.thing*
	store %struct.thing* %u101, %struct.thing** %s1
	%u102 = load %struct.thing** %s1
	%u103 = getelementptr %struct.thing* %u102, i1 0, i32 0
	store i32 42, i32* %u103
	%u104 = load %struct.thing** %s1
	%u105 = getelementptr %struct.thing* %u104, i1 0, i32 1
	store i1 1, i1* %u105
	%u106 = load %struct.thing** %s1
	%u107 = getelementptr %struct.thing* %u106, i1 0, i32 0
	%u108 = load i32* %u107
	%u109 = icmp eq i32 %u108, 42
	br i1 %u109, label %LU156, label %LU157
LU156:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU158
LU157:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u110 = load %struct.thing** %s1
	%u111 = getelementptr %struct.thing* %u110, i1 0, i32 0
	%u112 = load i32* %u111
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u112)
	br label %LU158
LU158:
	%u113 = load %struct.thing** %s1
	%u114 = getelementptr %struct.thing* %u113, i1 0, i32 1
	%u115 = load i1* %u114
	br i1 %u115, label %LU159, label %LU160
LU159:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU161
LU160:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU161
LU161:
	%u116 = call i8* @malloc(i32 12)
	%u117 = bitcast i8* %u116 to %struct.thing*
	%u118 = load %struct.thing** %s1
	%u119 = getelementptr %struct.thing* %u118, i1 0, i32 2
	store %struct.thing* %u117, %struct.thing** %u119
	%u120 = load %struct.thing** %s1
	%u121 = getelementptr %struct.thing* %u120, i1 0, i32 2
	%u122 = load %struct.thing** %u121
	%u123 = getelementptr %struct.thing* %u122, i1 0, i32 0
	store i32 13, i32* %u123
	%u124 = load %struct.thing** %s1
	%u125 = getelementptr %struct.thing* %u124, i1 0, i32 2
	%u126 = load %struct.thing** %u125
	%u127 = getelementptr %struct.thing* %u126, i1 0, i32 1
	store i1 0, i1* %u127
	%u128 = load %struct.thing** %s1
	%u129 = getelementptr %struct.thing* %u128, i1 0, i32 2
	%u130 = load %struct.thing** %u129
	%u131 = getelementptr %struct.thing* %u130, i1 0, i32 0
	%u132 = load i32* %u131
	%u133 = icmp eq i32 %u132, 13
	br i1 %u133, label %LU162, label %LU163
LU162:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU164
LU163:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u134 = load %struct.thing** %s1
	%u135 = getelementptr %struct.thing* %u134, i1 0, i32 2
	%u136 = load %struct.thing** %u135
	%u137 = getelementptr %struct.thing* %u136, i1 0, i32 0
	%u138 = load i32* %u137
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u138)
	br label %LU164
LU164:
	%u139 = load %struct.thing** %s1
	%u140 = getelementptr %struct.thing* %u139, i1 0, i32 2
	%u141 = load %struct.thing** %u140
	%u142 = getelementptr %struct.thing* %u141, i1 0, i32 1
	%u143 = load i1* %u142
	%u144 = xor i1 1, %u143
	br i1 %u144, label %LU165, label %LU166
LU165:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU167
LU166:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU167
LU167:
	%u145 = load %struct.thing** %s1
	%u146 = load %struct.thing** %s1
	%u147 = icmp eq %struct.thing* %u145, %u146
	br i1 %u147, label %LU168, label %LU169
LU168:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU170
LU169:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU170
LU170:
	%u148 = load %struct.thing** %s1
	%u149 = load %struct.thing** %s1
	%u150 = getelementptr %struct.thing* %u149, i1 0, i32 2
	%u151 = load %struct.thing** %u150
	%u152 = icmp ne %struct.thing* %u148, %u151
	br i1 %u152, label %LU171, label %LU172
LU171:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU173
LU172:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU173
LU173:
	call void @printgroup(i32 8)
	store i32 7, i32* @gi1
	%u154 = load i32* @gi1
	%u155 = icmp eq i32 %u154, 7
	br i1 %u155, label %LU174, label %LU175
LU174:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU176
LU175:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u156 = load i32* @gi1
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u156)
	br label %LU176
LU176:
	store i1 1, i1* @gb1
	%u157 = load i1* @gb1
	br i1 %u157, label %LU177, label %LU178
LU177:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU179
LU178:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU179
LU179:
	%u158 = call i8* @malloc(i32 12)
	%u159 = bitcast i8* %u158 to %struct.thing*
	store %struct.thing* %u159, %struct.thing** @gs1
	%u160 = load %struct.thing** @gs1
	%u161 = getelementptr %struct.thing* %u160, i1 0, i32 0
	store i32 34, i32* %u161
	%u162 = load %struct.thing** @gs1
	%u163 = getelementptr %struct.thing* %u162, i1 0, i32 1
	store i1 0, i1* %u163
	%u164 = load %struct.thing** @gs1
	%u165 = getelementptr %struct.thing* %u164, i1 0, i32 0
	%u166 = load i32* %u165
	%u167 = icmp eq i32 %u166, 34
	br i1 %u167, label %LU180, label %LU181
LU180:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU182
LU181:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u168 = load %struct.thing** @gs1
	%u169 = getelementptr %struct.thing* %u168, i1 0, i32 0
	%u170 = load i32* %u169
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u170)
	br label %LU182
LU182:
	%u171 = load %struct.thing** @gs1
	%u172 = getelementptr %struct.thing* %u171, i1 0, i32 1
	%u173 = load i1* %u172
	%u174 = xor i1 1, %u173
	br i1 %u174, label %LU183, label %LU184
LU183:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU185
LU184:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU185
LU185:
	%u175 = call i8* @malloc(i32 12)
	%u176 = bitcast i8* %u175 to %struct.thing*
	%u177 = load %struct.thing** @gs1
	%u178 = getelementptr %struct.thing* %u177, i1 0, i32 2
	store %struct.thing* %u176, %struct.thing** %u178
	%u179 = load %struct.thing** @gs1
	%u180 = getelementptr %struct.thing* %u179, i1 0, i32 2
	%u181 = load %struct.thing** %u180
	%u182 = getelementptr %struct.thing* %u181, i1 0, i32 0
	store i32 16, i32* %u182
	%u183 = load %struct.thing** @gs1
	%u184 = getelementptr %struct.thing* %u183, i1 0, i32 2
	%u185 = load %struct.thing** %u184
	%u186 = getelementptr %struct.thing* %u185, i1 0, i32 1
	store i1 1, i1* %u186
	%u187 = load %struct.thing** @gs1
	%u188 = getelementptr %struct.thing* %u187, i1 0, i32 2
	%u189 = load %struct.thing** %u188
	%u190 = getelementptr %struct.thing* %u189, i1 0, i32 0
	%u191 = load i32* %u190
	%u192 = icmp eq i32 %u191, 16
	br i1 %u192, label %LU186, label %LU187
LU186:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU188
LU187:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u193 = load %struct.thing** @gs1
	%u194 = getelementptr %struct.thing* %u193, i1 0, i32 2
	%u195 = load %struct.thing** %u194
	%u196 = getelementptr %struct.thing* %u195, i1 0, i32 0
	%u197 = load i32* %u196
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u197)
	br label %LU188
LU188:
	%u198 = load %struct.thing** @gs1
	%u199 = getelementptr %struct.thing* %u198, i1 0, i32 2
	%u200 = load %struct.thing** %u199
	%u201 = getelementptr %struct.thing* %u200, i1 0, i32 1
	%u202 = load i1* %u201
	br i1 %u202, label %LU189, label %LU190
LU189:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU191
LU190:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU191
LU191:
	call void @printgroup(i32 9)
	%u204 = call i8* @malloc(i32 12)
	%u205 = bitcast i8* %u204 to %struct.thing*
	store %struct.thing* %u205, %struct.thing** %s1
	%u206 = load %struct.thing** %s1
	%u207 = getelementptr %struct.thing* %u206, i1 0, i32 1
	store i1 1, i1* %u207
	%u208 = load %struct.thing** %s1
	call void @takealltypes(i32 3, i1 1, %struct.thing* %u208)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 2)
	call void @tonofargs(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8)
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 3)
	%u211 = call i32 @returnint(i32 3)
	store i32 %u211, i32* %i1
	%u213 = load i32* %i1
	%u214 = icmp eq i32 %u213, 3
	br i1 %u214, label %LU192, label %LU193
LU192:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU194
LU193:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.print,i32 0, i32 0), i32 0)
	%u215 = load i32* %i1
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u215)
	br label %LU194
LU194:
	%u216 = call i1 @returnbool(i1 1)
	store i1 %u216, i1* %b1
	%u218 = load i1* %b1
	br i1 %u218, label %LU195, label %LU196
LU195:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU197
LU196:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU197
LU197:
	%u219 = call i8* @malloc(i32 12)
	%u220 = bitcast i8* %u219 to %struct.thing*
	store %struct.thing* %u220, %struct.thing** %s1
	%u221 = load %struct.thing** %s1
	%u222 = call %struct.thing* @returnstruct(%struct.thing* %u221)
	store %struct.thing* %u222, %struct.thing** %s2
	%u224 = load %struct.thing** %s1
	%u225 = load %struct.thing** %s2
	%u226 = icmp eq %struct.thing* %u224, %u225
	br i1 %u226, label %LU198, label %LU199
LU198:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	br label %LU200
LU199:
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 0)
	br label %LU200
LU200:
	call void @printgroup(i32 10)
	store i32 0, i32* %_retval_
	br label %LU53
LU53:
	%u228 = load i32* %_retval_
	ret i32 %u228
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
