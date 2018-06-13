target triple="i686"
%struct.node = type {i32, %struct.node*};
define %struct.node* @buildList()
{
LU2:
	%_retval_ = alloca %struct.node*
	%input = alloca i32
	%i = alloca i32
	%n0 = alloca %struct.node*
	%n1 = alloca %struct.node*
	%n2 = alloca %struct.node*
	%n3 = alloca %struct.node*
	%n4 = alloca %struct.node*
	%n5 = alloca %struct.node*
	br label %LU3
LU3:
	%u0 = call i8* @malloc(i32 8)
	%u1 = bitcast i8* %u0 to %struct.node*
	store %struct.node* %u1, %struct.node** %n0
	%u2 = call i8* @malloc(i32 8)
	%u3 = bitcast i8* %u2 to %struct.node*
	store %struct.node* %u3, %struct.node** %n1
	%u4 = call i8* @malloc(i32 8)
	%u5 = bitcast i8* %u4 to %struct.node*
	store %struct.node* %u5, %struct.node** %n2
	%u6 = call i8* @malloc(i32 8)
	%u7 = bitcast i8* %u6 to %struct.node*
	store %struct.node* %u7, %struct.node** %n3
	%u8 = call i8* @malloc(i32 8)
	%u9 = bitcast i8* %u8 to %struct.node*
	store %struct.node* %u9, %struct.node** %n4
	%u10 = call i8* @malloc(i32 8)
	%u11 = bitcast i8* %u10 to %struct.node*
	store %struct.node* %u11, %struct.node** %n5
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u12 = load i32* @_scanned_
	%u13 = load %struct.node** %n0
	%u14 = getelementptr %struct.node* %u13, i1 0, i32 0
	store i32 %u12, i32* %u14
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u15 = load i32* @_scanned_
	%u16 = load %struct.node** %n1
	%u17 = getelementptr %struct.node* %u16, i1 0, i32 0
	store i32 %u15, i32* %u17
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u18 = load i32* @_scanned_
	%u19 = load %struct.node** %n2
	%u20 = getelementptr %struct.node* %u19, i1 0, i32 0
	store i32 %u18, i32* %u20
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u21 = load i32* @_scanned_
	%u22 = load %struct.node** %n3
	%u23 = getelementptr %struct.node* %u22, i1 0, i32 0
	store i32 %u21, i32* %u23
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u24 = load i32* @_scanned_
	%u25 = load %struct.node** %n4
	%u26 = getelementptr %struct.node* %u25, i1 0, i32 0
	store i32 %u24, i32* %u26
	call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u27 = load i32* @_scanned_
	%u28 = load %struct.node** %n5
	%u29 = getelementptr %struct.node* %u28, i1 0, i32 0
	store i32 %u27, i32* %u29
	%u30 = load %struct.node** %n1
	%u31 = load %struct.node** %n0
	%u32 = getelementptr %struct.node* %u31, i1 0, i32 1
	store %struct.node* %u30, %struct.node** %u32
	%u33 = load %struct.node** %n2
	%u34 = load %struct.node** %n1
	%u35 = getelementptr %struct.node* %u34, i1 0, i32 1
	store %struct.node* %u33, %struct.node** %u35
	%u36 = load %struct.node** %n3
	%u37 = load %struct.node** %n2
	%u38 = getelementptr %struct.node* %u37, i1 0, i32 1
	store %struct.node* %u36, %struct.node** %u38
	%u39 = load %struct.node** %n4
	%u40 = load %struct.node** %n3
	%u41 = getelementptr %struct.node* %u40, i1 0, i32 1
	store %struct.node* %u39, %struct.node** %u41
	%u42 = load %struct.node** %n5
	%u43 = load %struct.node** %n4
	%u44 = getelementptr %struct.node* %u43, i1 0, i32 1
	store %struct.node* %u42, %struct.node** %u44
	%u45 = load %struct.node** %n5
	%u46 = getelementptr %struct.node* %u45, i1 0, i32 1
	store %struct.node* null, %struct.node** %u46
	%u47 = load %struct.node** %n0
	store %struct.node* %u47, %struct.node** %_retval_
	br label %LU4
LU4:
	%u48 = load %struct.node** %_retval_
	ret %struct.node* %u48
}

define i32 @multiple(%struct.node* %_P_list)
{
LU6:
	%_retval_ = alloca i32
	%i = alloca i32
	%product = alloca i32
	%cur = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU7
LU7:
	store i32 0, i32* %i
	%u48 = load %struct.node** %list
	store %struct.node* %u48, %struct.node** %cur
	%u49 = load %struct.node** %cur
	%u50 = getelementptr %struct.node* %u49, i1 0, i32 0
	%u51 = load i32* %u50
	store i32 %u51, i32* %product
	%u52 = load %struct.node** %cur
	%u53 = getelementptr %struct.node* %u52, i1 0, i32 1
	%u54 = load %struct.node** %u53
	store %struct.node* %u54, %struct.node** %cur
	br label %LU9
LU9:
	%u55 = load i32* %i
	%u56 = icmp slt i32 %u55, 5
	br i1 %u56, label %LU10, label %LU11
LU10:
	%u57 = load i32* %product
	%u58 = load %struct.node** %cur
	%u59 = getelementptr %struct.node* %u58, i1 0, i32 0
	%u60 = load i32* %u59
	%u61 = mul i32 %u57, %u60
	store i32 %u61, i32* %product
	%u62 = load %struct.node** %cur
	%u63 = getelementptr %struct.node* %u62, i1 0, i32 1
	%u64 = load %struct.node** %u63
	store %struct.node* %u64, %struct.node** %cur
	%u65 = load i32* %product
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u65)
	%u66 = load i32* %i
	%u67 = add i32 %u66, 1
	store i32 %u67, i32* %i
	br label %LU9
LU11:
	%u68 = load i32* %product
	store i32 %u68, i32* %_retval_
	br label %LU8
LU8:
	%u69 = load i32* %_retval_
	ret i32 %u69
}

define i32 @add(%struct.node* %_P_list)
{
LU13:
	%_retval_ = alloca i32
	%i = alloca i32
	%sum = alloca i32
	%cur = alloca %struct.node*
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU14
LU14:
	store i32 0, i32* %i
	%u69 = load %struct.node** %list
	store %struct.node* %u69, %struct.node** %cur
	%u70 = load %struct.node** %cur
	%u71 = getelementptr %struct.node* %u70, i1 0, i32 0
	%u72 = load i32* %u71
	store i32 %u72, i32* %sum
	%u73 = load %struct.node** %cur
	%u74 = getelementptr %struct.node* %u73, i1 0, i32 1
	%u75 = load %struct.node** %u74
	store %struct.node* %u75, %struct.node** %cur
	br label %LU16
LU16:
	%u76 = load i32* %i
	%u77 = icmp slt i32 %u76, 5
	br i1 %u77, label %LU17, label %LU18
LU17:
	%u78 = load i32* %sum
	%u79 = load %struct.node** %cur
	%u80 = getelementptr %struct.node* %u79, i1 0, i32 0
	%u81 = load i32* %u80
	%u82 = add i32 %u78, %u81
	store i32 %u82, i32* %sum
	%u83 = load %struct.node** %cur
	%u84 = getelementptr %struct.node* %u83, i1 0, i32 1
	%u85 = load %struct.node** %u84
	store %struct.node* %u85, %struct.node** %cur
	%u86 = load i32* %sum
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u86)
	%u87 = load i32* %i
	%u88 = add i32 %u87, 1
	store i32 %u88, i32* %i
	br label %LU16
LU18:
	%u89 = load i32* %sum
	store i32 %u89, i32* %_retval_
	br label %LU15
LU15:
	%u90 = load i32* %_retval_
	ret i32 %u90
}

define i32 @recurseList(%struct.node* %_P_list)
{
LU20:
	%_retval_ = alloca i32
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU21
LU21:
	%u90 = load %struct.node** %list
	%u91 = getelementptr %struct.node* %u90, i1 0, i32 1
	%u92 = load %struct.node** %u91
	%u93 = icmp eq %struct.node* %u92, null
	br i1 %u93, label %LU23, label %LU24
LU23:
	%u94 = load %struct.node** %list
	%u95 = getelementptr %struct.node* %u94, i1 0, i32 0
	%u96 = load i32* %u95
	store i32 %u96, i32* %_retval_
	br label %LU22
LU24:
	%u97 = load %struct.node** %list
	%u98 = getelementptr %struct.node* %u97, i1 0, i32 0
	%u99 = load i32* %u98
	%u100 = load %struct.node** %list
	%u101 = getelementptr %struct.node* %u100, i1 0, i32 1
	%u102 = load %struct.node** %u101
	%u103 = call i32 @recurseList(%struct.node* %u102)
	%u105 = mul i32 %u99, %u103
	store i32 %u105, i32* %_retval_
	br label %LU22
LU25:
	br label %LU22
LU22:
	%u106 = load i32* %_retval_
	ret i32 %u106
}

define i32 @main()
{
LU27:
	%_retval_ = alloca i32
	%list = alloca %struct.node*
	%product = alloca i32
	%sum = alloca i32
	%result = alloca i32
	%bigProduct = alloca i32
	%i = alloca i32
	br label %LU28
LU28:
	store i32 0, i32* %i
	store i32 0, i32* %bigProduct
	%u106 = call %struct.node* @buildList()
	store %struct.node* %u106, %struct.node** %list
	%u108 = load %struct.node** %list
	%u109 = call i32 @multiple(%struct.node* %u108)
	store i32 %u109, i32* %product
	%u111 = load %struct.node** %list
	%u112 = call i32 @add(%struct.node* %u111)
	store i32 %u112, i32* %sum
	%u114 = load i32* %product
	%u115 = load i32* %sum
	%u116 = sdiv i32 %u115, 2
	%u117 = sub i32 %u114, %u116
	store i32 %u117, i32* %result
	br label %LU30
LU30:
	%u118 = load i32* %i
	%u119 = icmp slt i32 %u118, 2
	br i1 %u119, label %LU31, label %LU32
LU31:
	%u120 = load i32* %bigProduct
	%u121 = load %struct.node** %list
	%u122 = call i32 @recurseList(%struct.node* %u121)
	%u124 = add i32 %u120, %u122
	store i32 %u124, i32* %bigProduct
	%u125 = load i32* %i
	%u126 = add i32 %u125, 1
	store i32 %u126, i32* %i
	br label %LU30
LU32:
	%u127 = load i32* %bigProduct
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u127)
	br label %LU33
LU33:
	%u128 = load i32* %bigProduct
	%u129 = icmp ne i32 %u128, 0
	br i1 %u129, label %LU34, label %LU35
LU34:
	%u130 = load i32* %bigProduct
	%u131 = sub i32 %u130, 1
	store i32 %u131, i32* %bigProduct
	br label %LU33
LU35:
	%u132 = load i32* %result
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u132)
	%u133 = load i32* %bigProduct
	call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u133)
	store i32 0, i32* %_retval_
	br label %LU29
LU29:
	%u134 = load i32* %_retval_
	ret i32 %u134
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@_scanned_ = common global i32 0, align 4
