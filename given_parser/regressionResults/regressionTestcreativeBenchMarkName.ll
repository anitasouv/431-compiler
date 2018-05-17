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
	%u12 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u13 = load i32* @_scanned_
	%u14 = load %struct.node** %n0
	%u15 = getelementptr %struct.node* %u14, i1 0, i32 0
	store i32 %u13, i32* %u15
	%u16 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u17 = load i32* @_scanned_
	%u18 = load %struct.node** %n1
	%u19 = getelementptr %struct.node* %u18, i1 0, i32 0
	store i32 %u17, i32* %u19
	%u20 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u21 = load i32* @_scanned_
	%u22 = load %struct.node** %n2
	%u23 = getelementptr %struct.node* %u22, i1 0, i32 0
	store i32 %u21, i32* %u23
	%u24 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u25 = load i32* @_scanned_
	%u26 = load %struct.node** %n3
	%u27 = getelementptr %struct.node* %u26, i1 0, i32 0
	store i32 %u25, i32* %u27
	%u28 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u29 = load i32* @_scanned_
	%u30 = load %struct.node** %n4
	%u31 = getelementptr %struct.node* %u30, i1 0, i32 0
	store i32 %u29, i32* %u31
	%u32 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u33 = load i32* @_scanned_
	%u34 = load %struct.node** %n5
	%u35 = getelementptr %struct.node* %u34, i1 0, i32 0
	store i32 %u33, i32* %u35
	%u36 = load %struct.node** %n1
	%u37 = load %struct.node** %n0
	%u38 = getelementptr %struct.node* %u37, i1 0, i32 1
	store %struct.node* %u36, %struct.node** %u38
	%u39 = load %struct.node** %n2
	%u40 = load %struct.node** %n1
	%u41 = getelementptr %struct.node* %u40, i1 0, i32 1
	store %struct.node* %u39, %struct.node** %u41
	%u42 = load %struct.node** %n3
	%u43 = load %struct.node** %n2
	%u44 = getelementptr %struct.node* %u43, i1 0, i32 1
	store %struct.node* %u42, %struct.node** %u44
	%u45 = load %struct.node** %n4
	%u46 = load %struct.node** %n3
	%u47 = getelementptr %struct.node* %u46, i1 0, i32 1
	store %struct.node* %u45, %struct.node** %u47
	%u48 = load %struct.node** %n5
	%u49 = load %struct.node** %n4
	%u50 = getelementptr %struct.node* %u49, i1 0, i32 1
	store %struct.node* %u48, %struct.node** %u50
	%u51 = load %struct.node** %n5
	%u52 = getelementptr %struct.node* %u51, i1 0, i32 1
	store %struct.node* null, %struct.node** %u52
	%u53 = load %struct.node** %n0
	store %struct.node* %u53, %struct.node** %_retval_
	br label %LU4
LU4:
	%u54 = load %struct.node** %_retval_
	ret %struct.node* %u54
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
	%u54 = load %struct.node** %list
	store %struct.node* %u54, %struct.node** %cur
	%u55 = load %struct.node** %cur
	%u56 = getelementptr %struct.node* %u55, i1 0, i32 0
	%u57 = load i32* %u56
	store i32 %u57, i32* %product
	%u58 = load %struct.node** %cur
	%u59 = getelementptr %struct.node* %u58, i1 0, i32 1
	%u60 = load %struct.node** %u59
	store %struct.node* %u60, %struct.node** %cur
	br label %LU9
LU9:
	%u61 = load i32* %i
	%u62 = icmp slt i32 %u61, 5
	br i1 %u62, label %LU10, label %LU8
LU10:
	%u63 = load i32* %product
	%u64 = load %struct.node** %cur
	%u65 = getelementptr %struct.node* %u64, i1 0, i32 0
	%u66 = load i32* %u65
	%u67 = mul i32 %u63, %u66
	store i32 %u67, i32* %product
	%u68 = load %struct.node** %cur
	%u69 = getelementptr %struct.node* %u68, i1 0, i32 1
	%u70 = load %struct.node** %u69
	store %struct.node* %u70, %struct.node** %cur
	%u71 = load i32* %product
	%u72 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u71)
	%u73 = load i32* %i
	%u74 = add i32 %u73, 1
	store i32 %u74, i32* %i
	br label %LU9
LU11:
	%u75 = load i32* %product
	store i32 %u75, i32* %_retval_
	br label %LU8
LU8:
	%u76 = load i32* %_retval_
	ret i32 %u76
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
	%u76 = load %struct.node** %list
	store %struct.node* %u76, %struct.node** %cur
	%u77 = load %struct.node** %cur
	%u78 = getelementptr %struct.node* %u77, i1 0, i32 0
	%u79 = load i32* %u78
	store i32 %u79, i32* %sum
	%u80 = load %struct.node** %cur
	%u81 = getelementptr %struct.node* %u80, i1 0, i32 1
	%u82 = load %struct.node** %u81
	store %struct.node* %u82, %struct.node** %cur
	br label %LU16
LU16:
	%u83 = load i32* %i
	%u84 = icmp slt i32 %u83, 5
	br i1 %u84, label %LU17, label %LU15
LU17:
	%u85 = load i32* %sum
	%u86 = load %struct.node** %cur
	%u87 = getelementptr %struct.node* %u86, i1 0, i32 0
	%u88 = load i32* %u87
	%u89 = add i32 %u85, %u88
	store i32 %u89, i32* %sum
	%u90 = load %struct.node** %cur
	%u91 = getelementptr %struct.node* %u90, i1 0, i32 1
	%u92 = load %struct.node** %u91
	store %struct.node* %u92, %struct.node** %cur
	%u93 = load i32* %sum
	%u94 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u93)
	%u95 = load i32* %i
	%u96 = add i32 %u95, 1
	store i32 %u96, i32* %i
	br label %LU16
LU18:
	%u97 = load i32* %sum
	store i32 %u97, i32* %_retval_
	br label %LU15
LU15:
	%u98 = load i32* %_retval_
	ret i32 %u98
}

define i32 @recurseList(%struct.node* %_P_list)
{
LU20:
	%_retval_ = alloca i32
	%list = alloca %struct.node*
	store %struct.node* %_P_list, %struct.node** %list
	br label %LU21
LU21:
	%u98 = load %struct.node** %list
	%u99 = getelementptr %struct.node* %u98, i1 0, i32 1
	%u100 = load %struct.node** %u99
	%u101 = icmp eq %struct.node* %u100, null
	br i1 %u101, label %LU23, label %LU24
LU23:
	%u102 = load %struct.node** %list
	%u103 = getelementptr %struct.node* %u102, i1 0, i32 0
	%u104 = load i32* %u103
	store i32 %u104, i32* %_retval_
	br label %LU22
LU24:
	%u105 = load %struct.node** %list
	%u106 = getelementptr %struct.node* %u105, i1 0, i32 0
	%u107 = load i32* %u106
	%u108 = load %struct.node** %list
	%u109 = getelementptr %struct.node* %u108, i1 0, i32 1
	%u110 = load %struct.node** %u109
	%u111 = call i32 @recurseList(%struct.node* %u110)
	%u113 = mul i32 %u107, %u111
	store i32 %u113, i32* %_retval_
	br label %LU22
LU25:
	br label %LU22
LU22:
	%u114 = load i32* %_retval_
	ret i32 %u114
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
	%u114 = call %struct.node* @buildList()
	store %struct.node* %u114, %struct.node** %list
	%u116 = load %struct.node** %list
	%u117 = call i32 @multiple(%struct.node* %u116)
	store i32 %u117, i32* %product
	%u119 = load %struct.node** %list
	%u120 = call i32 @add(%struct.node* %u119)
	store i32 %u120, i32* %sum
	%u122 = load i32* %product
	%u123 = load i32* %sum
	%u124 = sdiv i32 %u123, 2
	%u125 = sub i32 %u122, %u124
	store i32 %u125, i32* %result
	br label %LU30
LU30:
	%u126 = load i32* %i
	%u127 = icmp slt i32 %u126, 2
	br i1 %u127, label %LU31, label %LU29
LU31:
	%u128 = load i32* %bigProduct
	%u129 = load %struct.node** %list
	%u130 = call i32 @recurseList(%struct.node* %u129)
	%u132 = add i32 %u128, %u130
	store i32 %u132, i32* %bigProduct
	%u133 = load i32* %i
	%u134 = add i32 %u133, 1
	store i32 %u134, i32* %i
	br label %LU30
LU32:
	%u135 = load i32* %bigProduct
	%u136 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u135)
	br label %LU33
LU33:
	%u137 = load i32* %bigProduct
	%u138 = icmp ne i32 %u137, 0
	br i1 %u138, label %LU34, label %LU29
LU34:
	%u139 = load i32* %bigProduct
	%u140 = sub i32 %u139, 1
	store i32 %u140, i32* %bigProduct
	br label %LU33
LU35:
	%u141 = load i32* %result
	%u142 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u141)
	%u143 = load i32* %bigProduct
	%u144 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u143)
	store i32 0, i32* %_retval_
	br label %LU29
LU29:
	%u145 = load i32* %_retval_
	ret i32 %u145
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
