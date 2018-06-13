<<<<<<< HEAD
globals0:
type %struct.node = {i32, %struct.node*};
L1:
define %struct.node @buildList()
{
L2:
=======
type %struct.node = {i32, %struct.node*};
define %struct.node @buildList()
{
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%input = alloca i32
	%i = alloca i32
	%n0 = alloca %struct.node*
	%n1 = alloca %struct.node*
	%n2 = alloca %struct.node*
	%n3 = alloca %struct.node*
	%n4 = alloca %struct.node*
	%n5 = alloca %struct.node*
<<<<<<< HEAD
L3:
	%u0 = call i8* malloc(i32 8)
	%u1 = BITCAST i8* %u0 to %struct.node
	%u2 = load * %n0
	store %struct.node %u1, * %u2
	%u3 = call i8* malloc(i32 8)
	%u4 = BITCAST i8* %u3 to %struct.node
	%u5 = load * %n1
	store %struct.node %u4, * %u5
	%u6 = call i8* malloc(i32 8)
	%u7 = BITCAST i8* %u6 to %struct.node
	%u8 = load * %n2
	store %struct.node %u7, * %u8
	%u9 = call i8* malloc(i32 8)
	%u10 = BITCAST i8* %u9 to %struct.node
	%u11 = load * %n3
	store %struct.node %u10, * %u11
	%u12 = call i8* malloc(i32 8)
	%u13 = BITCAST i8* %u12 to %struct.node
	%u14 = load * %n4
	store %struct.node %u13, * %u14
	%u15 = call i8* malloc(i32 8)
	%u16 = BITCAST i8* %u15 to %struct.node
	%u17 = load * %n5
	store %struct.node %u16, * %u17
=======
buildList1:
buildList1:
	%u0 = call i8* malloc(8)
	%u1 = BITCAST i8* %u0 to %struct.node
	%u2 = load * %n0
	store %u1 %struct.node, %u2* 
	%u3 = call i8* malloc(8)
	%u4 = BITCAST i8* %u3 to %struct.node
	%u5 = load * %n1
	store %u4 %struct.node, %u5* 
	%u6 = call i8* malloc(8)
	%u7 = BITCAST i8* %u6 to %struct.node
	%u8 = load * %n2
	store %u7 %struct.node, %u8* 
	%u9 = call i8* malloc(8)
	%u10 = BITCAST i8* %u9 to %struct.node
	%u11 = load * %n3
	store %u10 %struct.node, %u11* 
	%u12 = call i8* malloc(8)
	%u13 = BITCAST i8* %u12 to %struct.node
	%u14 = load * %n4
	store %u13 %struct.node, %u14* 
	%u15 = call i8* malloc(8)
	%u16 = BITCAST i8* %u15 to %struct.node
	%u17 = load * %n5
	store %u16 %struct.node, %u17* 
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%u18 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0), i32 %_scanned)
	%u19 = load i32* %_scanned
	%u20 = load %struct.node* %n0
	%u21 = getelementptr %struct.node* %u20, i1 0, i32 0
<<<<<<< HEAD
	store i32 %u19, %struct.node* %u21
=======
	store %u19 i32, %u21* %struct.node
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%u22 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0), i32 %_scanned)
	%u23 = load i32* %_scanned
	%u24 = load %struct.node* %n1
	%u25 = getelementptr %struct.node* %u24, i1 0, i32 0
<<<<<<< HEAD
	store i32 %u23, %struct.node* %u25
=======
	store %u23 i32, %u25* %struct.node
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%u26 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0), i32 %_scanned)
	%u27 = load i32* %_scanned
	%u28 = load %struct.node* %n2
	%u29 = getelementptr %struct.node* %u28, i1 0, i32 0
<<<<<<< HEAD
	store i32 %u27, %struct.node* %u29
=======
	store %u27 i32, %u29* %struct.node
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%u30 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0), i32 %_scanned)
	%u31 = load i32* %_scanned
	%u32 = load %struct.node* %n3
	%u33 = getelementptr %struct.node* %u32, i1 0, i32 0
<<<<<<< HEAD
	store i32 %u31, %struct.node* %u33
=======
	store %u31 i32, %u33* %struct.node
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%u34 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0), i32 %_scanned)
	%u35 = load i32* %_scanned
	%u36 = load %struct.node* %n4
	%u37 = getelementptr %struct.node* %u36, i1 0, i32 0
<<<<<<< HEAD
	store i32 %u35, %struct.node* %u37
=======
	store %u35 i32, %u37* %struct.node
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%u38 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0), i32 %_scanned)
	%u39 = load i32* %_scanned
	%u40 = load %struct.node* %n5
	%u41 = getelementptr %struct.node* %u40, i1 0, i32 0
<<<<<<< HEAD
	store i32 %u39, %struct.node* %u41
	%u42 = load %struct.node* %n1
	%u43 = load %struct.node* %n0
	%u44 = getelementptr %struct.node* %u43, i1 0, i32 1
	store %struct.node %u42, %struct.node* %u44
	%u45 = load %struct.node* %n2
	%u46 = load %struct.node* %n1
	%u47 = getelementptr %struct.node* %u46, i1 0, i32 1
	store %struct.node %u45, %struct.node* %u47
	%u48 = load %struct.node* %n3
	%u49 = load %struct.node* %n2
	%u50 = getelementptr %struct.node* %u49, i1 0, i32 1
	store %struct.node %u48, %struct.node* %u50
	%u51 = load %struct.node* %n4
	%u52 = load %struct.node* %n3
	%u53 = getelementptr %struct.node* %u52, i1 0, i32 1
	store %struct.node %u51, %struct.node* %u53
	%u54 = load %struct.node* %n5
	%u55 = load %struct.node* %n4
	%u56 = getelementptr %struct.node* %u55, i1 0, i32 1
	store %struct.node %u54, %struct.node* %u56
	%u57 = load i1* 0
	%u58 = load %struct.node* %n5
	%u59 = getelementptr %struct.node* %u58, i1 0, i32 1
	store i1 %u57, %struct.node* %u59
	%u60 = load %struct.node* %n0
	store %u60 %struct.node, i32* %_retval_
	br label L4
L4:
	%u61 = load i32* %_retval_
	ret i32 %u61
}

L5:
define i32 @multiple(%struct.node list)
{
L6:
	%i = alloca i32
	%product = alloca i32
	%cur = alloca %struct.node*
L7:
	%u61 = load * %i
	store i32 0, * %u61
	%u62 = load %struct.node* %list
	%u63 = load * %cur
	store %struct.node %u62, * %u63
	%u64 = load %struct.node* %cur
	%u65 = getelementptr %struct.node* %u64, i1 0, i32 0
	%u66 = load * %product
	store %struct.node %u65, * %u66
	%u67 = load %struct.node* %cur
	%u68 = getelementptr %struct.node* %u67, i1 0, i32 1
	%u69 = load * %cur
	store %struct.node %u68, * %u69
L9:
	%u70 = load i32* %i
	%u71 = icmp SLT i32 %u70, 5
	br i1 %u71, label L10, label L8
L10:
	%u72 = load i32* %product
	%u73 = load %struct.node* %cur
	%u74 = getelementptr %struct.node* %u73, i1 0, i32 0
	%u75 = MUL i32 %u72, %u74
	%u76 = load * %product
	store i32 %u75, * %u76
	%u77 = load %struct.node* %cur
	%u78 = getelementptr %struct.node* %u77, i1 0, i32 1
	%u79 = load * %cur
	store %struct.node %u78, * %u79
	%u80 = load i32* %product
	%u81 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u80)
	%u82 = load i32* %i
	%u83 = ADD i32 %u82, 1
	%u84 = load * %i
	store i32 %u83, * %u84
	br label L9
L11:
	%u85 = load i32* %product
	store %u85 i32, i32* %_retval_
	br label L8
L8:
	%u86 = load i32* %_retval_
	ret i32 %u86
}

L12:
define i32 @add(%struct.node list)
{
L13:
	%i = alloca i32
	%sum = alloca i32
	%cur = alloca %struct.node*
L14:
	%u86 = load * %i
	store i32 0, * %u86
	%u87 = load %struct.node* %list
	%u88 = load * %cur
	store %struct.node %u87, * %u88
	%u89 = load %struct.node* %cur
	%u90 = getelementptr %struct.node* %u89, i1 0, i32 0
	%u91 = load * %sum
	store %struct.node %u90, * %u91
	%u92 = load %struct.node* %cur
	%u93 = getelementptr %struct.node* %u92, i1 0, i32 1
	%u94 = load * %cur
	store %struct.node %u93, * %u94
L16:
	%u95 = load i32* %i
	%u96 = icmp SLT i32 %u95, 5
	br i1 %u96, label L17, label L15
L17:
	%u97 = load i32* %sum
	%u98 = load %struct.node* %cur
	%u99 = getelementptr %struct.node* %u98, i1 0, i32 0
	%u100 = ADD i32 %u97, %u99
	%u101 = load * %sum
	store i32 %u100, * %u101
	%u102 = load %struct.node* %cur
	%u103 = getelementptr %struct.node* %u102, i1 0, i32 1
	%u104 = load * %cur
	store %struct.node %u103, * %u104
	%u105 = load i32* %sum
	%u106 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u105)
	%u107 = load i32* %i
	%u108 = ADD i32 %u107, 1
	%u109 = load * %i
	store i32 %u108, * %u109
	br label L16
L18:
	%u110 = load i32* %sum
	store %u110 i32, i32* %_retval_
	br label L15
L15:
	%u111 = load i32* %_retval_
	ret i32 %u111
}

L19:
define i32 @recurseList(%struct.node list)
{
L20:
L21:
	%u111 = load %struct.node* %list
	%u112 = getelementptr %struct.node* %u111, i1 0, i32 1
	%u113 = load i1* 0
	%u114 = icmp EQ %struct.node %u112, %u113
	br i1 %u114, label L23, label L24
L23:
	%u115 = load %struct.node* %list
	%u116 = getelementptr %struct.node* %u115, i1 0, i32 0
	store %u116 %struct.node, i32* %_retval_
	br label L22
L24:
	%u117 = load %struct.node* %list
	%u118 = getelementptr %struct.node* %u117, i1 0, i32 0
	%u119 = load %struct.node* %list
	%u120 = getelementptr %struct.node* %u119, i1 0, i32 1
	%u121 = call i32 %recurseList(%struct.node %u120)
	%u122 = MUL %struct.node %u118, %u121
	store %u122 %struct.node, i32* %_retval_
	br label L22
L25:
	br label L22
L22:
	%u123 = load i32* %_retval_
	ret i32 %u123
}

L26:
define i32 @main()
{
L27:
=======
	store %u39 i32, %u41* %struct.node
	%u42 = load %struct.node* %n1
	%u43 = load %struct.node* %n0
	%u44 = getelementptr %struct.node* %u43, i1 0, i32 1
	store %u42 %struct.node, %u44* %struct.node
	%u45 = load %struct.node* %n2
	%u46 = load %struct.node* %n1
	%u47 = getelementptr %struct.node* %u46, i1 0, i32 1
	store %u45 %struct.node, %u47* %struct.node
	%u48 = load %struct.node* %n3
	%u49 = load %struct.node* %n2
	%u50 = getelementptr %struct.node* %u49, i1 0, i32 1
	store %u48 %struct.node, %u50* %struct.node
	%u51 = load %struct.node* %n4
	%u52 = load %struct.node* %n3
	%u53 = getelementptr %struct.node* %u52, i1 0, i32 1
	store %u51 %struct.node, %u53* %struct.node
	%u54 = load %struct.node* %n5
	%u55 = load %struct.node* %n4
	%u56 = getelementptr %struct.node* %u55, i1 0, i32 1
	store %u54 %struct.node, %u56* %struct.node
	%u57 = load i1* 0
	%u58 = load %struct.node* %n5
	%u59 = getelementptr %struct.node* %u58, i1 0, i32 1
	store %u57 i1, %u59* %struct.node
buildList-1:
	%u60 = load %struct.node* %n0
	ret %u60 %struct.node
}

define i32 @multiple(%struct.node list)
{
	%i = alloca i32
	%product = alloca i32
	%cur = alloca %struct.node*
multiple1:
multiple1:
	%u0 = load * %i
	store 0 i32, %u0* 
	%u1 = load %struct.node* %list
	%u2 = load * %cur
	store %u1 %struct.node, %u2* 
	%u3 = load %struct.node* %cur
	%u4 = getelementptr %struct.node* %u3, i1 0, i32 0
	%u5 = load * %product
	store %u4 %struct.node, %u5* 
	%u6 = load %struct.node* %cur
	%u7 = getelementptr %struct.node* %u6, i1 0, i32 1
	%u8 = load * %cur
	store %u7 %struct.node, %u8* 
multiple2:
	%u9 = load i32* %i
	%u10 = icmp SLT i32 %u9, 5
	br i1 LT, label multiple4, label multiple-1
multiple3:
multiple4:
	%u11 = load i32* %product
	%u12 = load %struct.node* %cur
	%u13 = getelementptr %struct.node* %u12, i1 0, i32 0
	%u14 = MUL i32 %u11, %u13
	%u15 = load * %product
	store %u14 i32, %u15* 
	%u16 = load %struct.node* %cur
	%u17 = getelementptr %struct.node* %u16, i1 0, i32 1
	%u18 = load * %cur
	store %u17 %struct.node, %u18* 
	%u19 = load i32* %product
	%u20 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u19)
	%u21 = load i32* %i
	%u22 = ADD i32 %u21, 1
	%u23 = load * %i
	store %u22 i32, %u23* 
	br label multiple2
multiple5:
multiple-1:
	%u24 = load i32* %product
	ret %u24 i32
}

define i32 @add(%struct.node list)
{
	%i = alloca i32
	%sum = alloca i32
	%cur = alloca %struct.node*
add1:
add1:
	%u0 = load * %i
	store 0 i32, %u0* 
	%u1 = load %struct.node* %list
	%u2 = load * %cur
	store %u1 %struct.node, %u2* 
	%u3 = load %struct.node* %cur
	%u4 = getelementptr %struct.node* %u3, i1 0, i32 0
	%u5 = load * %sum
	store %u4 %struct.node, %u5* 
	%u6 = load %struct.node* %cur
	%u7 = getelementptr %struct.node* %u6, i1 0, i32 1
	%u8 = load * %cur
	store %u7 %struct.node, %u8* 
add2:
	%u9 = load i32* %i
	%u10 = icmp SLT i32 %u9, 5
	br i1 LT, label add4, label add-1
add3:
add4:
	%u11 = load i32* %sum
	%u12 = load %struct.node* %cur
	%u13 = getelementptr %struct.node* %u12, i1 0, i32 0
	%u14 = ADD i32 %u11, %u13
	%u15 = load * %sum
	store %u14 i32, %u15* 
	%u16 = load %struct.node* %cur
	%u17 = getelementptr %struct.node* %u16, i1 0, i32 1
	%u18 = load * %cur
	store %u17 %struct.node, %u18* 
	%u19 = load i32* %sum
	%u20 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u19)
	%u21 = load i32* %i
	%u22 = ADD i32 %u21, 1
	%u23 = load * %i
	store %u22 i32, %u23* 
	br label add2
add5:
add-1:
	%u24 = load i32* %sum
	ret %u24 i32
}

define i32 @recurseList(%struct.node list)
{
recurseList1:
recurseList1:
	%u0 = load %struct.node* %list
	%u1 = getelementptr %struct.node* %u0, i1 0, i32 1
	%u2 = load i1* 0
	%u3 = icmp EQ %struct.node %u1, %u2
	br i1 EQ, label recurseList2, label recurseList4
recurseList2:
	br label recurseList6
recurseList3:
recurseList-1:
	%u4 = load %struct.node* %list
	%u5 = getelementptr %struct.node* %u4, i1 0, i32 0
	ret %u5 %struct.node
	%u6 = load %struct.node* %list
	%u7 = getelementptr %struct.node* %u6, i1 0, i32 0
	%u8 = load %struct.node* %list
	%u9 = getelementptr %struct.node* %u8, i1 0, i32 1
	%u10 = call i32 %recurseList(%u9)
	%u11 = MUL %struct.node %u7, %u10
	ret %u11 %struct.node
recurseList6:
recurseList6:
recurseList4:
	br label recurseList6
recurseList5:
recurseList-1:
	%u4 = load %struct.node* %list
	%u5 = getelementptr %struct.node* %u4, i1 0, i32 0
	ret %u5 %struct.node
	%u6 = load %struct.node* %list
	%u7 = getelementptr %struct.node* %u6, i1 0, i32 0
	%u8 = load %struct.node* %list
	%u9 = getelementptr %struct.node* %u8, i1 0, i32 1
	%u10 = call i32 %recurseList(%u9)
	%u11 = MUL %struct.node %u7, %u10
	ret %u11 %struct.node
recurseList6:
recurseList6:
}

define i32 @main()
{
>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
	%list = alloca %struct.node*
	%product = alloca i32
	%sum = alloca i32
	%result = alloca i32
	%bigProduct = alloca i32
	%i = alloca i32
<<<<<<< HEAD
L28:
	%u123 = load * %i
	store i32 0, * %u123
	%u124 = load * %bigProduct
	store i32 0, * %u124
	%u125 = call %struct.node %buildList()
	%u126 = load * %list
	store %struct.node %u125, * %u126
	%u127 = load %struct.node* %list
	%u128 = call i32 %multiple(%struct.node %u127)
	%u129 = load * %product
	store i32 %u128, * %u129
	%u130 = load %struct.node* %list
	%u131 = call i32 %add(%struct.node %u130)
	%u132 = load * %sum
	store i32 %u131, * %u132
	%u133 = load i32* %product
	%u134 = load i32* %sum
	%u135 = SDIV i32 %u134, 2
	%u136 = SUB i32 %u133, %u135
	%u137 = load * %result
	store i32 %u136, * %u137
L30:
	%u138 = load i32* %i
	%u139 = icmp SLT i32 %u138, 2
	br i1 %u139, label L31, label L29
L31:
	%u140 = load i32* %bigProduct
	%u141 = load %struct.node* %list
	%u142 = call i32 %recurseList(%struct.node %u141)
	%u143 = ADD i32 %u140, %u142
	%u144 = load * %bigProduct
	store i32 %u143, * %u144
	%u145 = load i32* %i
	%u146 = ADD i32 %u145, 1
	%u147 = load * %i
	store i32 %u146, * %u147
	br label L30
L32:
	%u148 = load i32* %bigProduct
	%u149 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u148)
L33:
	%u150 = load i32* %bigProduct
	%u151 = icmp NE i32 %u150, 0
	br i1 %u151, label L34, label L29
L34:
	%u152 = load i32* %bigProduct
	%u153 = SUB i32 %u152, 1
	%u154 = load * %bigProduct
	store i32 %u153, * %u154
	br label L33
L35:
	%u155 = load i32* %result
	%u156 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u155)
	%u157 = load i32* %bigProduct
	%u158 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u157)
	store 0 i32, i32* %_retval_
	br label L29
L29:
	%u159 = load i32* %_retval_
	ret i32 %u159
}

end36:
=======
main1:
main1:
	%u0 = load * %i
	store 0 i32, %u0* 
	%u1 = load * %bigProduct
	store 0 i32, %u1* 
	%u2 = call %struct.node %buildList()
	%u3 = load * %list
	store %u2 %struct.node, %u3* 
	%u4 = load %struct.node* %list
	%u5 = call i32 %multiple(%u4)
	%u6 = load * %product
	store %u5 i32, %u6* 
	%u7 = load %struct.node* %list
	%u8 = call i32 %add(%u7)
	%u9 = load * %sum
	store %u8 i32, %u9* 
	%u10 = load i32* %product
	%u11 = load i32* %sum
	%u12 = SDIV i32 %u11, 2
	%u13 = SUB i32 %u10, %u12
	%u14 = load * %result
	store %u13 i32, %u14* 
main2:
	%u15 = load i32* %i
	%u16 = icmp SLT i32 %u15, 2
	br i1 LT, label main4, label main-1
main3:
main4:
	%u17 = load i32* %bigProduct
	%u18 = load %struct.node* %list
	%u19 = call i32 %recurseList(%u18)
	%u20 = ADD i32 %u17, %u19
	%u21 = load * %bigProduct
	store %u20 i32, %u21* 
	%u22 = load i32* %i
	%u23 = ADD i32 %u22, 1
	%u24 = load * %i
	store %u23 i32, %u24* 
	br label main2
main5:
	%u25 = load i32* %bigProduct
	%u26 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u25)
main6:
	%u27 = load i32* %bigProduct
	%u28 = icmp NE i32 %u27, 0
	br i1 NE, label main8, label main-1
main7:
main8:
	%u29 = load i32* %bigProduct
	%u30 = SUB i32 %u29, 1
	%u31 = load * %bigProduct
	store %u30 i32, %u31* 
	br label main6
main9:
	%u32 = load i32* %result
	%u33 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u32)
	%u34 = load i32* %bigProduct
	%u35 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0), i32 %u34)
main-1:
	ret 0 i32
}

>>>>>>> 0c2c6e50b9c6715d581b6ae742ad8deb79f23b8b
declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00, align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00, align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00, align 1
@.read_scratch = common global i32 0, align 4
