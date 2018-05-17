globals0:
L1:
	.align  2
	.global buildList
.buildList:
	PUSH	{fp,lr}
	ADD	fp,sp,#4
	PUSH	{r4,r5,r6,r7,r8}
L2:
L3:
	MOV	%r0,8
	BL	malloc
	MOV	%u0,%r0
	MOV	%u1,%u0
	LDR	%n0,[%u2]
	STR	%u1,%u2
	MOV	%r0,8
	BL	malloc
	MOV	%u3,%r0
	MOV	%u4,%u3
	LDR	%n1,[%u5]
	STR	%u4,%u5
	MOV	%r0,8
	BL	malloc
	MOV	%u6,%r0
	MOV	%u7,%u6
	LDR	%n2,[%u8]
	STR	%u7,%u8
	MOV	%r0,8
	BL	malloc
	MOV	%u9,%r0
	MOV	%u10,%u9
	LDR	%n3,[%u11]
	STR	%u10,%u11
	MOV	%r0,8
	BL	malloc
	MOV	%u12,%r0
	MOV	%u13,%u12
	LDR	%n4,[%u14]
	STR	%u13,%u14
	MOV	%r0,8
	BL	malloc
	MOV	%u15,%r0
	MOV	%u16,%u15
	LDR	%n5,[%u17]
	STR	%u16,%u17
	MOV	%r0,getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0)
	MOV	%r1,%_scanned
	BL	@scanf
	MOV	%u18,%r0
	LDR	%_scanned,[%u19]
	LDR	%n0,[%u20]
	ADD	%u21,%u20,#0
	STR	%u19,%u21
	MOV	%r0,getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0)
	MOV	%r1,%_scanned
	BL	@scanf
	MOV	%u22,%r0
	LDR	%_scanned,[%u23]
	LDR	%n1,[%u24]
	ADD	%u25,%u24,#0
	STR	%u23,%u25
	MOV	%r0,getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0)
	MOV	%r1,%_scanned
	BL	@scanf
	MOV	%u26,%r0
	LDR	%_scanned,[%u27]
	LDR	%n2,[%u28]
	ADD	%u29,%u28,#0
	STR	%u27,%u29
	MOV	%r0,getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0)
	MOV	%r1,%_scanned
	BL	@scanf
	MOV	%u30,%r0
	LDR	%_scanned,[%u31]
	LDR	%n3,[%u32]
	ADD	%u33,%u32,#0
	STR	%u31,%u33
	MOV	%r0,getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0)
	MOV	%r1,%_scanned
	BL	@scanf
	MOV	%u34,%r0
	LDR	%_scanned,[%u35]
	LDR	%n4,[%u36]
	ADD	%u37,%u36,#0
	STR	%u35,%u37
	MOV	%r0,getelementptr inbounds ([4xi8]*@.scanf,i32 0, i32 0)
	MOV	%r1,%_scanned
	BL	@scanf
	MOV	%u38,%r0
	LDR	%_scanned,[%u39]
	LDR	%n5,[%u40]
	ADD	%u41,%u40,#0
	STR	%u39,%u41
	LDR	%n1,[%u42]
	LDR	%n0,[%u43]
	ADD	%u44,%u43,#4
	STR	%u42,%u44
	LDR	%n2,[%u45]
	LDR	%n1,[%u46]
	ADD	%u47,%u46,#4
	STR	%u45,%u47
	LDR	%n3,[%u48]
	LDR	%n2,[%u49]
	ADD	%u50,%u49,#4
	STR	%u48,%u50
	LDR	%n4,[%u51]
	LDR	%n3,[%u52]
	ADD	%u53,%u52,#4
	STR	%u51,%u53
	LDR	%n5,[%u54]
	LDR	%n4,[%u55]
	ADD	%u56,%u55,#4
	STR	%u54,%u56
	LDR	0,[%u57]
	LDR	%n5,[%u58]
	ADD	%u59,%u58,#4
	STR	%u57,%u59
	LDR	%n0,[%u60]
	STR	%struct.node,%_retval_
	B	L4
L4:
	LDR	%_retval_,[%u61]
	MOV	%r0,%u61
	POP	{fp,pc}
	POP	{r4,r5,r6,r7,r8}
	POP	{fp,pc}
	.size  buildList, .-buildList
L5:
	.align  2
	.global multiple
.multiple:
	PUSH	{fp,lr}
	ADD	fp,sp,#4
	PUSH	{r4,r5,r6,r7,r8}
L6:
L7:
	LDR	%i,[%u61]
	STR	0,%u61
	LDR	%list,[%u62]
	LDR	%cur,[%u63]
	STR	%u62,%u63
	LDR	%cur,[%u64]
	ADD	%u65,%u64,#0
	LDR	%product,[%u66]
	STR	%u65,%u66
	LDR	%cur,[%u67]
	ADD	%u68,%u67,#4
	LDR	%cur,[%u69]
	STR	%u68,%u69
L9:
	LDR	%i,[%u70]
	MOV	%u71,#0
	cmp	%u70,5
	MOVLT	%u71,#1
	cmp	%u71,#1
	BEQ	.L10
	B	.L8
L10:
	LDR	%product,[%u72]
	LDR	%cur,[%u73]
	ADD	%u74,%u73,#0
	MUL	%u75,%u72,%u74
	LDR	%product,[%u76]
	STR	%u75,%u76
	LDR	%cur,[%u77]
	ADD	%u78,%u77,#4
	LDR	%cur,[%u79]
	STR	%u78,%u79
	LDR	%product,[%u80]
	MOV	%r0,getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0)
	MOV	%r1,%u80
	BL	@printf
	MOV	%u81,%r0
	LDR	%i,[%u82]
	ADD	%u83,%u82,1
	LDR	%i,[%u84]
	STR	%u83,%u84
	B	L9
L11:
	LDR	%product,[%u85]
	STR	i32,%_retval_
	B	L8
L8:
	LDR	%_retval_,[%u86]
	MOV	%r0,%u86
	POP	{fp,pc}
	POP	{r4,r5,r6,r7,r8}
	POP	{fp,pc}
	.size  multiple, .-multiple
L12:
	.align  2
	.global add
.add:
	PUSH	{fp,lr}
	ADD	fp,sp,#4
	PUSH	{r4,r5,r6,r7,r8}
L13:
L14:
	LDR	%i,[%u86]
	STR	0,%u86
	LDR	%list,[%u87]
	LDR	%cur,[%u88]
	STR	%u87,%u88
	LDR	%cur,[%u89]
	ADD	%u90,%u89,#0
	LDR	%sum,[%u91]
	STR	%u90,%u91
	LDR	%cur,[%u92]
	ADD	%u93,%u92,#4
	LDR	%cur,[%u94]
	STR	%u93,%u94
L16:
	LDR	%i,[%u95]
	MOV	%u96,#0
	cmp	%u95,5
	MOVLT	%u96,#1
	cmp	%u96,#1
	BEQ	.L17
	B	.L15
L17:
	LDR	%sum,[%u97]
	LDR	%cur,[%u98]
	ADD	%u99,%u98,#0
	ADD	%u100,%u97,%u99
	LDR	%sum,[%u101]
	STR	%u100,%u101
	LDR	%cur,[%u102]
	ADD	%u103,%u102,#4
	LDR	%cur,[%u104]
	STR	%u103,%u104
	LDR	%sum,[%u105]
	MOV	%r0,getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0)
	MOV	%r1,%u105
	BL	@printf
	MOV	%u106,%r0
	LDR	%i,[%u107]
	ADD	%u108,%u107,1
	LDR	%i,[%u109]
	STR	%u108,%u109
	B	L16
L18:
	LDR	%sum,[%u110]
	STR	i32,%_retval_
	B	L15
L15:
	LDR	%_retval_,[%u111]
	MOV	%r0,%u111
	POP	{fp,pc}
	POP	{r4,r5,r6,r7,r8}
	POP	{fp,pc}
	.size  add, .-add
L19:
	.align  2
	.global recurseList
.recurseList:
	PUSH	{fp,lr}
	ADD	fp,sp,#4
	PUSH	{r4,r5,r6,r7,r8}
L20:
L21:
	LDR	%list,[%u111]
	ADD	%u112,%u111,#4
	LDR	0,[%u113]
	MOV	%u114,#0
	cmp	%u112,%u113
	MOVEQ	%u114,#1
	cmp	%u114,#1
	BEQ	.L23
	B	.L24
L23:
	LDR	%list,[%u115]
	ADD	%u116,%u115,#0
	STR	%struct.node,%_retval_
	B	L22
L24:
	LDR	%list,[%u117]
	ADD	%u118,%u117,#0
	LDR	%list,[%u119]
	ADD	%u120,%u119,#4
	MOV	%r0,%u120
	BL	%recurseList
	MOV	%u121,%r0
	MUL	%u122,%u118,%u121
	STR	%struct.node,%_retval_
	B	L22
L25:
	B	L22
L22:
	LDR	%_retval_,[%u123]
	MOV	%r0,%u123
	POP	{fp,pc}
	POP	{r4,r5,r6,r7,r8}
	POP	{fp,pc}
	.size  recurseList, .-recurseList
L26:
	.align  2
	.global main
.main:
	PUSH	{fp,lr}
	ADD	fp,sp,#4
	PUSH	{r4,r5,r6,r7,r8}
L27:
L28:
	LDR	%i,[%u123]
	STR	0,%u123
	LDR	%bigProduct,[%u124]
	STR	0,%u124
	BL	%buildList
	MOV	%u125,%r0
	LDR	%list,[%u126]
	STR	%u125,%u126
	LDR	%list,[%u127]
	MOV	%r0,%u127
	BL	%multiple
	MOV	%u128,%r0
	LDR	%product,[%u129]
	STR	%u128,%u129
	LDR	%list,[%u130]
	MOV	%r0,%u130
	BL	%add
	MOV	%u131,%r0
	LDR	%sum,[%u132]
	STR	%u131,%u132
	LDR	%product,[%u133]
	LDR	%sum,[%u134]
	MOV	%r0,%u134
	MOV	%r1,2
	BL	__aeabi_idiv
	SUB	%u136,%u133,%u135
	LDR	%result,[%u137]
	STR	%u136,%u137
L30:
	LDR	%i,[%u138]
	MOV	%u139,#0
	cmp	%u138,2
	MOVLT	%u139,#1
	cmp	%u139,#1
	BEQ	.L31
	B	.L29
L31:
	LDR	%bigProduct,[%u140]
	LDR	%list,[%u141]
	MOV	%r0,%u141
	BL	%recurseList
	MOV	%u142,%r0
	ADD	%u143,%u140,%u142
	LDR	%bigProduct,[%u144]
	STR	%u143,%u144
	LDR	%i,[%u145]
	ADD	%u146,%u145,1
	LDR	%i,[%u147]
	STR	%u146,%u147
	B	L30
L32:
	LDR	%bigProduct,[%u148]
	MOV	%r0,getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0)
	MOV	%r1,%u148
	BL	@printf
	MOV	%u149,%r0
L33:
	LDR	%bigProduct,[%u150]
	MOV	%u151,#0
	cmp	%u150,0
	MOVNE	%u151,#1
	cmp	%u151,#1
	BEQ	.L34
	B	.L29
L34:
	LDR	%bigProduct,[%u152]
	SUB	%u153,%u152,1
	LDR	%bigProduct,[%u154]
	STR	%u153,%u154
	B	L33
L35:
	LDR	%result,[%u155]
	MOV	%r0,getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0)
	MOV	%r1,%u155
	BL	@printf
	MOV	%u156,%r0
	LDR	%bigProduct,[%u157]
	MOV	%r0,getelementptr inbounds ([4xi8]*@.println,i32 0, i32 0)
	MOV	%r1,%u157
	BL	@printf
	MOV	%u158,%r0
	STR	i32,%_retval_
	B	L29
L29:
	LDR	%_retval_,[%u159]
	MOV	%r0,%u159
	POP	{fp,pc}
	POP	{r4,r5,r6,r7,r8}
	POP	{fp,pc}
	.size  main, .-main
end36:
	.align  2
..println:
	.asciz  c"%ld\0A\00
	.align  2
..print:
	.asciz  c"%ld \00
	.align  2
..read:
	.asciz  c"%ld\00
	.align  2
..read_scratch:
	.asciz  0
