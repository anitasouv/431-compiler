                  map2: 
[]
	.arch armv7-a
	.comm  a,4,4
	.comm  b,4,4
	.comm  i,4,4
	.text
                  map2: 
[%u0=0, %u13=0, @a=0, %u1=0, %u14=0, @b=0, %u2=0, %u11=0, %u3=0, %u12=0, %u4=0, %u5=0, %temp=6, %u6=0, %u7=0, %_retval_=0, %u8=1, @i=0, %u9=1, %_P_first=2, %_P_second=3, %second=5, %first=4, %u10=1]
	.align  2
	.global concatLists
concatLists:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	sub	fp,sp,r9
.LU2:
	mov	r8,r6
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r7
	mov	r8,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,%r1
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU3
.LU3:
	mov	r4,r8
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r4
	mov	r4,r8
	mov	r4,#0
	cmp	r4,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	r4,r4
	b	.LU4
.LU6:
	b	.LU7
.LU7:
	b	.LU8
.LU8:
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	mov	r4,r4
	mov	r4,#0
	cmp	r4,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU9
	b	.LU10
.LU9:
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#4
	mov	r5,r5
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r5
	b	.LU8
.LU10:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	mov	r4,r4
	mov	r4,r8
	mov	r4,r4
	b	.LU4
                  map2: 
[%_retval_=1, %u15=0]
.LU4:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  concatLists, .-concatLists

                  map2: 
[@a=0, @b=0, %u22=0, %u23=0, %u17=0, %u18=0, %_P_toAdd=1, %u15=0, %u16=0, %_retval_=0, @i=0, %u19=0, %_P_list=2, %toAdd=3, %newNode=0, %u20=0, %u21=0, %list=4]
	.align  2
	.global add
add:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7}
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	sub	fp,sp,r9
.LU12:
	mov	r8,r6
	mov	r7,r5
	mov	r8,%r0
	mov	r7,%r1
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU13
.LU13:
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r4
	mov	r4,r7
	mov	r4,r4
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r8
	mov	r4,r4
	add	r4,r4,#4
	mov	r4,r4
	mov	r4,r4
	mov	r4,r4
	b	.LU14
                  map2: 
[%u24=0, %_retval_=1]
.LU14:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	add	fp,sp,r9
	pop	{r4,r5,r6,r7}
	pop	{fp,pc}
	.size  add, .-add

                  map2: 
[%u24=0, @a=0, %u25=0, @b=0, %u28=0, %u29=0, %u26=0, %u27=0, %_retval_=0, @i=0, %_P_list=2, 1=4, %u31=1, %list=3]
	.align  2
	.global size
size:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7}
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	sub	fp,sp,r9
.LU16:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU17
.LU17:
	mov	r4,r7
	mov	r4,#0
	cmp	r4,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU19
	b	.LU20
.LU19:
	mov	r4,#0
	b	.LU18
.LU20:
	b	.LU21
.LU21:
	mov	r4,r7
	add	r4,r4,#4
	mov	r4,r4
	mov	%r0,r4
	bl	size
	mov	r4,%r0
	add	r5,r8,r4
	mov	r4,r5
	b	.LU18
                  map2: 
[%_retval_=1, %u32=0]
.LU18:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	add	fp,sp,r9
	pop	{r4,r5,r6,r7}
	pop	{fp,pc}
	.size  size, .-size

                  map2: 
[%u35=0, @a=0, %u36=0, @b=0, %u33=0, %u34=0, %u39=0, %u37=0, %u38=0, %_retval_=0, @i=0, %_P_list=3, %index=4, %_P_index=2, %u42=1, %u32=1, %u40=1, %list=5, %u41=1]
	.align  2
	.global get
get:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	fp,sp,r9
.LU23:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r7
	mov	r8,r6
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,%r0
	mov	r8,%r1
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU24
.LU24:
	mov	r5,r8
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU26
	b	.LU27
.LU26:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r4
	b	.LU25
.LU27:
	b	.LU28
.LU28:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	mov	r4,r4
	mov	r5,r8
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r5,r5,r9
	mov	%r0,r4
	mov	%r1,r5
	bl	get
	mov	r5,%r0
	mov	r4,r5
	b	.LU25
                  map2: 
[%_retval_=1, %u44=0]
.LU25:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  get, .-get

                  map2: 
[%u46=0, @a=0, %u47=0, @b=0, %u44=0, %u45=0, %_retval_=0, @i=0, %_P_list=1, %list=2]
	.align  2
	.global pop
pop:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5}
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	sub	fp,sp,r9
.LU30:
	mov	r6,r5
	mov	r6,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU31
.LU31:
	mov	r4,r6
	add	r4,r4,#4
	mov	r4,r4
	mov	r6,r4
	mov	r4,r6
	mov	r4,r4
	b	.LU32
                  map2: 
[%_retval_=1, %u48=0]
.LU32:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	add	fp,sp,r9
	pop	{r4,r5}
	pop	{fp,pc}
	.size  pop, .-pop

                  map2: 
[=0, @a=0, @b=0, %u55=1, %u56=1, %u48=0, %u49=0, @i=0, %_P_list=2, %u50=1, %u54=1, %u51=1, %list=3, %u52=1]
	.align  2
	.global printList
printList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU34:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU35
.LU35:
	mov	r4,r7
	mov	r4,#0
	cmp	r4,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU37
	b	.LU38
.LU37:
	mov	r5,r7
	add	r5,r5,#0
	mov	r5,r5
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r7
	add	r5,r5,#4
	mov	r5,r5
	mov	%r0,r5
	bl	printList
	mov	r4,%r0
	b	.LU39
.LU38:
	b	.LU39
.LU39:
	b	.LU36
                  map2: 
[]
.LU36:
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  printList, .-printList

                  map2: 
[=0, %u68=1, @a=0, %u58=0, %u69=1, @b=0, %u66=1, %_P_root=2, %u59=0, @i=0, %u60=0, %root=3, %u61=0, %u70=1, %u64=1, %u65=1, %u62=0]
	.align  2
	.global treeprint
treeprint:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU41:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU42
.LU42:
	mov	r4,r7
	mov	r4,#0
	cmp	r4,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU44
	b	.LU45
.LU44:
	mov	r4,r7
	add	r4,r4,#4
	mov	r4,r4
	mov	%r0,r4
	bl	treeprint
	mov	r4,%r0
	mov	r5,r7
	add	r5,r5,#0
	mov	r5,r5
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r7
	add	r5,r5,#8
	mov	r5,r5
	mov	%r0,r5
	bl	treeprint
	mov	r4,%r0
	b	.LU46
.LU45:
	b	.LU46
.LU46:
	b	.LU43
                  map2: 
[]
.LU43:
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  treeprint, .-treeprint

                  map2: 
[=0, @a=0, @b=0, @i=0, %u72=0, %_P_list=2, %u75=1, %u76=1, %u73=0, %list=3, %u74=1]
	.align  2
	.global freeList
freeList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU48:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU49
.LU49:
	mov	r4,r7
	mov	r4,#0
	cmp	r4,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU51
	b	.LU52
.LU51:
	mov	r5,r7
	add	r5,r5,#4
	mov	r5,r5
	mov	%r0,r5
	bl	freeList
	mov	r4,%r0
	b	.LU53
.LU52:
	b	.LU53
.LU53:
	b	.LU50
                  map2: 
[]
.LU50:
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  freeList, .-freeList

                  map2: 
[%u79=0, =0, @a=0, @b=0, %u78=0, %_P_root=2, @i=0, 1=3, %u82=0, %root=4, %u83=0, %u80=0, %u81=0, %u86=1, %u87=1, %u85=1]
	.align  2
	.global freeTree
freeTree:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7}
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	sub	fp,sp,r9
.LU55:
	mov	r8,r6
	mov	r8,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU56
.LU56:
	mov	r4,r8
	mov	r4,#0
	cmp	r4,#0
	moveq	r4,#1
	eor	r4,r7,r4
	cmp	r4,#1
	beq	.LU58
	b	.LU59
.LU58:
	mov	r4,r8
	add	r4,r4,#4
	mov	r4,r4
	mov	%r0,r4
	bl	freeTree
	mov	r4,%r0
	mov	r5,r8
	add	r5,r5,#8
	mov	r5,r5
	mov	%r0,r5
	bl	freeTree
	mov	r4,%r0
	b	.LU60
.LU59:
	b	.LU60
.LU60:
	b	.LU57
                  map2: 
[]
.LU57:
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	add	fp,sp,r9
	pop	{r4,r5,r6,r7}
	pop	{fp,pc}
	.size  freeTree, .-freeTree

                  map2: 
[%u99=0, %temp=0, %_retval_=0, %u90=0, %u93=0, %u94=0, %u91=0, %u92=0, %u97=0, %u113=1, %u98=0, %u112=1, %u95=0, %u96=0, %u110=1, @a=0, @b=0, %u89=0, %_P_root=2, @i=0, %u108=1, %u107=1, %u106=1, %root=3, %u105=1, %u103=1, %u102=1, %u101=1, %u100=1]
	.align  2
	.global postOrder
postOrder:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU62:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU63
.LU63:
	mov	r4,r7
	mov	r4,#0
	cmp	r4,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU65
	b	.LU66
.LU65:
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r4
	mov	r4,r7
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r4
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r4
	add	r4,r4,#4
	mov	r4,#0
	mov	r5,r7
	add	r5,r5,#4
	mov	r5,r5
	mov	%r0,r5
	bl	postOrder
	mov	r5,%r0
	mov	r5,r7
	add	r5,r5,#8
	mov	r5,r5
	mov	%r0,r5
	bl	postOrder
	mov	r5,%r0
	mov	%r0,r5
	mov	%r1,r5
	bl	concatLists
	mov	r5,%r0
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,r5
	bl	concatLists
	mov	r5,%r0
	mov	r4,r5
	b	.LU64
.LU66:
	b	.LU67
.LU67:
	mov	r4,#0
	b	.LU64
                  map2: 
[%_retval_=1, %u115=0]
.LU64:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  postOrder, .-postOrder

                  map2: 
[%u120=0, %u142=0, %u141=0, %u140=0, %_P_toAdd=3, %temp=0, %_retval_=0, %u119=0, %u118=0, %toAdd=5, %u117=0, %u139=0, %u116=0, %u138=1, %u115=1, %u136=1, %u135=1, %u134=1, %u133=1, %u132=1, %u131=0, @a=0, %u130=1, @b=0, %_P_root=2, @i=0, %u129=1, %u128=1, %root=4, %u127=1, %u126=1, %u148=1, %u125=1, %u147=0, %u124=1, %u146=1, %u123=1, %u122=1, %u144=1, %u121=1, %u143=1]
	.align  2
	.global treeadd
treeadd:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	fp,sp,r9
.LU69:
	mov	r8,r6
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r7
	mov	r8,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,%r1
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU70
.LU70:
	mov	r5,r8
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU72
	b	.LU73
.LU72:
	mov	%r0,#12
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r4
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	r4,r4
	add	r5,r4,#0
	mov	r5,r4
	mov	r5,r4
	add	r5,r5,#4
	mov	r5,#0
	mov	r5,r4
	add	r5,r5,#8
	mov	r5,#0
	mov	r5,r4
	mov	r4,r5
	b	.LU71
.LU73:
	b	.LU74
.LU74:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	r5,r8
	add	r5,r5,#0
	mov	r5,r5
	mov	r4,#0
	cmp	r5,r5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU75
	b	.LU76
.LU75:
	mov	r5,r8
	add	r5,r5,#4
	mov	r5,r5
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	mov	%r1,r5
	bl	treeadd
	mov	r5,%r0
	mov	r5,r8
	add	r4,r5,#4
	mov	r4,r5
	b	.LU77
.LU76:
	mov	r4,r8
	add	r4,r4,#8
	mov	r4,r4
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r4
	mov	%r1,r5
	bl	treeadd
	mov	r5,%r0
	mov	r5,r8
	add	r4,r5,#8
	mov	r4,r5
	b	.LU77
.LU77:
	mov	r5,r8
	mov	r4,r5
	b	.LU71
                  map2: 
[%_retval_=1, %u149=0]
.LU71:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  treeadd, .-treeadd

                  map2: 
[%u164=0, =0, %less=9, %u162=0, %u161=0, %_retval_=0, %u159=0, %u158=0, %u157=0, %u155=0, %u199=1, %u154=0, %u153=0, %u197=0, @a=0, %u152=0, %u196=0, @b=0, %u150=1, %u194=0, %u193=1, %u192=1, %u191=1, %u190=1, @i=0, %u149=1, %u189=1, %u187=1, %u185=0, %pivot=6, %u184=0, %u183=0, %u182=0, %temp=5, %u180=0, %greater=8, %u178=0, %u177=0, %u176=0, %u175=0, %u174=0, %u173=1, %i=7, %u171=1, %u170=1, %_P_list=2, %u169=1, %u202=1, %u168=0, %u167=1, %u200=1, %u166=1, %list=3, %u165=4]
	.align  2
	.global quickSort
quickSort:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:36
	movt	r9, #:upper16:36
	sub	fp,sp,r9
.LU79:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU80
.LU80:
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r10,#0
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,#0
	mov	r5,r7
	mov	%r0,r5
	bl	size
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#1
	movle	r4,#1
	cmp	r4,#1
	beq	.LU82
	b	.LU83
.LU82:
	mov	r4,r7
	mov	r4,r4
	b	.LU81
.LU83:
	b	.LU84
.LU84:
	mov	r4,r7
	mov	%r0,r4
	mov	%r1,#0
	bl	get
	mov	r4,%r0
	mov	r4,r7
	mov	r4,r7
	mov	%r0,r4
	bl	size
	mov	r4,%r0
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r4,r4,r9
	mov	%r0,r4
	mov	%r1,r4
	bl	get
	mov	r4,%r0
	add	r4,r4,r4
	mov	%r0,r4
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r8
	mov	r5,r7
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r5
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r10,#0
	b	.LU85
.LU85:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU86
	b	.LU87
.LU86:
	mov	r5,r7
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	mov	%r1,r5
	bl	get
	mov	r5,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,r5
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU88
	b	.LU89
.LU88:
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r4,r10
	mov	r4,r7
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	mov	%r1,r4
	bl	get
	mov	r4,%r0
	mov	%r0,r4
	mov	%r1,r4
	bl	add
	mov	r4,%r0
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r4
	b	.LU90
.LU89:
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r4,r10
	mov	r4,r7
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	mov	%r1,r4
	bl	get
	mov	r4,%r0
	mov	%r0,r4
	mov	%r1,r4
	bl	add
	mov	r5,%r0
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r10,r5
	b	.LU90
.LU90:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#4
	mov	r5,r5
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r5
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r5,r10
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r5,r5,r9
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r10,r5
	b	.LU85
.LU87:
	mov	r4,r7
	mov	%r0,r4
	bl	freeList
	mov	r4,%r0
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	bl	quickSort
	mov	r4,%r0
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	bl	quickSort
	mov	r5,%r0
	mov	%r0,r4
	mov	%r1,r5
	bl	concatLists
	mov	r5,%r0
	mov	r4,r5
	b	.LU81
                  map2: 
[%_retval_=1, %u204=0]
.LU81:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:36
	movt	r9, #:upper16:36
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  quickSort, .-quickSort

                  map2: 
[=0, @a=0, @b=0, %_retval_=0, @i=0, %_P_list=2, 0=3, %u208=1, %u206=1, %u204=0, %u214=1, %u212=1, %u210=1, %list=4]
	.align  2
	.global quickSortMain
quickSortMain:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7}
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	sub	fp,sp,r9
.LU92:
	mov	r8,r6
	mov	r8,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU93
.LU93:
	mov	r4,r8
	mov	%r0,r4
	bl	printList
	mov	r4,%r0
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r7,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r8
	mov	%r0,r5
	bl	printList
	mov	r4,%r0
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r7,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r8
	mov	%r0,r5
	bl	printList
	mov	r4,%r0
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r7,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r4,#0
	b	.LU94
                  map2: 
[%u216=0, %_retval_=1]
.LU94:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	add	fp,sp,r9
	pop	{r4,r5,r6,r7}
	pop	{fp,pc}
	.size  quickSortMain, .-quickSortMain

                  map2: 
[%_retval_=0, %u219=0, %u218=1, %u216=1, %u238=0, %u236=1, %u235=1, %u234=1, %u233=1, %u232=1, %u231=0, @a=0, @b=0, %_P_root=2, @i=0, 0=4, %target=6, %_P_target=3, %u229=0, %u228=0, %u227=0, %root=5, %u226=0, %u225=0, %u224=0, %u223=1, %u222=1, %u221=1, %u220=1]
	.align  2
	.global treesearch
treesearch:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	sub	fp,sp,r9
.LU96:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r6
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r7
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,%r1
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU97
.LU97:
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU99
	b	.LU109
.LU99:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#0
	mov	r5,r5
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,r5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU100
	b	.LU101
	b	.LU110
.LU109:
	b	.LU110
.LU100:
	mov	r4,#1
	b	.LU98
.LU102:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	mov	r4,r4
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	mov	%r1,r4
	bl	treesearch
	mov	r4,%r0
	mov	r4,#0
	cmp	r4,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU103
	b	.LU104
.LU103:
	mov	r4,#1
	b	.LU98
.LU105:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#8
	mov	r5,r5
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	mov	%r1,r5
	bl	treesearch
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU106
	b	.LU107
.LU106:
	mov	r4,#1
	b	.LU98
.LU108:
	b	.LU110
.LU110:
	mov	r4,r8
	b	.LU98
.LU107:
	mov	r4,r8
	b	.LU98
.LU104:
	b	.LU105
.LU101:
	b	.LU102
                  map2: 
[%_retval_=1, %u239=0]
.LU98:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  treesearch, .-treesearch

                  map2: 
[%u241=0, %u263=0, %u240=0, %u261=0, %temp=0, %_retval_=0, %u239=1, %u259=0, %u258=0, %u257=0, %u256=0, %u255=0, %u253=0, %u252=0, @a=0, %u251=0, @b=0, %u250=0, %_P_root=2, @i=0, %u249=0, %root=3, %u248=0, %u247=0, %u246=0, %u245=0, %u244=0, %u243=0, %u242=0]
	.align  2
	.global inOrder
inOrder:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU112:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU113
.LU113:
	mov	r5,r7
	mov	r4,#0
	cmp	r5,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU115
	b	.LU116
.LU115:
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r4
	mov	r4,r7
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r4
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r4
	add	r4,r4,#4
	mov	r4,#0
	mov	r4,r7
	add	r4,r4,#4
	mov	r4,r4
	mov	%r0,r4
	bl	inOrder
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r7
	add	r4,r4,#8
	mov	r4,r4
	mov	%r0,r4
	bl	inOrder
	mov	r4,%r0
	mov	%r0,r4
	mov	%r1,r4
	bl	concatLists
	mov	r4,%r0
	mov	%r0,r4
	mov	%r1,r4
	bl	concatLists
	mov	r4,%r0
	mov	r4,r4
	b	.LU114
.LU116:
	mov	r4,#0
	b	.LU114
.LU117:
	b	.LU114
                  map2: 
[%_retval_=1, %u265=0]
.LU114:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  inOrder, .-inOrder

                  map2: 
[%u285=0, %u283=0, %u282=0, %u281=0, %u280=0, %_retval_=0, %u279=0, %u278=0, %u277=1, %u276=1, %u275=1, %u274=0, @a=0, %u273=0, @b=0, %u272=1, %u271=1, %u270=1, %_P_root=2, @i=0, 0=4, %target=6, %_P_target=3, %root=5, %u269=1, %u268=0, %u267=1, %u289=1, %u288=1, %u265=1, %u287=1, %u286=1]
	.align  2
	.global bintreesearch
bintreesearch:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	sub	fp,sp,r9
.LU119:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r6
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r7
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,%r1
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU120
.LU120:
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU122
	b	.LU129
.LU122:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#0
	mov	r5,r5
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,r5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU123
	b	.LU124
	b	.LU130
.LU129:
	b	.LU130
.LU123:
	mov	r4,#1
	b	.LU121
.LU125:
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#0
	mov	r5,r5
	mov	r4,#0
	cmp	r4,r5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU126
	b	.LU127
.LU126:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	mov	r4,r4
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	mov	%r1,r4
	bl	bintreesearch
	mov	r4,%r0
	mov	r4,r4
	b	.LU121
.LU128:
	b	.LU130
.LU130:
	mov	r4,r8
	b	.LU121
.LU127:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	add	r5,r4,#8
	mov	r5,r5
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	mov	%r1,r5
	bl	bintreesearch
	mov	r5,%r0
	mov	r4,r5
	b	.LU121
.LU124:
	b	.LU125
                  map2: 
[%_retval_=1, %u291=0]
.LU121:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  bintreesearch, .-bintreesearch

                  map2: 
[%u296=0, @a=0, %u295=0, @b=0, %u293=1, %i=3, %u292=1, %u291=1, %_retval_=0, @i=0, %_P_list=2, %u305=0, %u304=1, %root=5, %u303=1, %u301=1, %u299=1, %u298=1, %list=4, %u297=1]
	.align  2
	.global buildTree
buildTree:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	fp,sp,r9
.LU132:
	mov	r8,r6
	mov	r8,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU133
.LU133:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,#0
	mov	r7,#0
	b	.LU135
.LU135:
	mov	r5,r7
	mov	r5,r8
	mov	%r0,r5
	bl	size
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,r5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU136
	b	.LU137
.LU136:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	r5,r8
	mov	r5,r7
	mov	%r0,r5
	mov	%r1,r5
	bl	get
	mov	r5,%r0
	mov	%r0,r4
	mov	%r1,r5
	bl	treeadd
	mov	r5,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r5
	mov	r5,r7
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r5,r5,r9
	mov	r7,r5
	b	.LU135
.LU137:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	r4,r4
	b	.LU134
                  map2: 
[%_retval_=1, %u306=0]
.LU134:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  buildTree, .-buildTree

                  map2: 
[=0, %u362=1, %u360=1, %u318=1, %u316=1, %u314=1, %u313=1, %u357=1, %u356=1, %u311=1, %u399=1, %u354=1, %u397=1, %u351=1, @a=0, %u350=1, %u394=1, @b=0, %u393=1, %u391=1, @i=0, 0=4, %u309=0, %u307=0, %u306=0, %u348=1, %root=0, %u345=1, %u344=1, %u388=1, %u343=1, %u387=1, %u386=1, %u341=1, %u384=1, %u381=1, %u380=1, %u417=1, %u338=1, %u415=2, %u337=1, %u335=1, %u412=2, %u378=1, %u411=2, %u332=1, %u331=1, %u375=1, %u374=1, %u372=1, %_P_list=3, %inList=1, %u409=2, %u329=1, %u406=2, %u405=2, %u327=1, %u403=2, %u325=1, %u369=1, %u368=1, %u323=1, %u400=2, %u322=1, %postList=1, %u366=1, %u320=1, %list=5, %u363=1]
	.align  2
	.global treeMain
treeMain:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	fp,sp,r9
.LU139:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r7
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU140
.LU140:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	bl	buildTree
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r4
	mov	%r0,r4
	bl	treeprint
	mov	r4,%r0
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	bl	inOrder
	mov	r5,%r0
	mov	r5,r5
	mov	r5,r5
	mov	%r0,r5
	bl	printList
	mov	r4,%r0
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r5
	mov	%r0,r5
	bl	freeList
	mov	r4,%r0
	mov	r5,r4
	mov	%r0,r5
	bl	postOrder
	mov	r5,%r0
	mov	r5,r5
	mov	r5,r5
	mov	%r0,r5
	bl	printList
	mov	r4,%r0
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r5
	mov	%r0,r5
	bl	freeList
	mov	r4,%r0
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,r8
	bl	treesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#10
	bl	treesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	sub	r5,r8,r9
	mov	%r0,r5
	mov	%r1,r5
	bl	treesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#2
	bl	treesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#3
	bl	treesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#9
	bl	treesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#1
	bl	treesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,r8
	bl	bintreesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#10
	bl	bintreesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	sub	r5,r8,r9
	mov	%r0,r5
	mov	%r1,r5
	bl	bintreesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#2
	bl	bintreesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r5,r8,r9
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	mov	%r1,#3
	bl	bintreesearch
	mov	r6,%r0
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r6,r8,r9
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r6,r4
	mov	%r0,r6
	mov	%r1,#9
	bl	bintreesearch
	mov	r6,%r0
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r6,r8,r9
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r6,r4
	mov	%r0,r6
	mov	%r1,#1
	bl	bintreesearch
	mov	r6,%r0
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:999
	movt	r9, #:upper16:999
	sub	r6,r8,r9
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r5,r4
	mov	%r0,r5
	bl	freeTree
	mov	r4,%r0
	b	.LU141
                  map2: 
[]
.LU141:
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  treeMain, .-treeMain

                  map2: 
[@a=0, @b=0, %_retval_=0, @i=0, %_P_src=2, %src=3, %u419=0, %u429=0, %u428=0, %u427=0, %u426=0, %u424=0, %u423=0, %u422=0, %u421=0, %u420=0, %u431=1]
	.align  2
	.global myCopy
myCopy:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU143:
	mov	r7,r6
	mov	r7,%r0
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU144
.LU144:
	mov	r4,r7
	mov	r4,#0
	cmp	r4,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU146
	b	.LU147
.LU146:
	mov	r4,#0
	b	.LU145
.LU147:
	b	.LU148
.LU148:
	mov	r4,r7
	add	r4,r4,#0
	mov	r4,r4
	mov	%r0,#0
	mov	%r1,r4
	bl	add
	mov	r4,%r0
	mov	r4,r7
	add	r4,r4,#4
	mov	r4,r4
	mov	%r0,r4
	bl	myCopy
	mov	r4,%r0
	mov	%r0,r4
	mov	%r1,r4
	bl	concatLists
	mov	r5,%r0
	mov	r4,r5
	b	.LU145
                  map2: 
[%_retval_=1, %u433=0]
.LU145:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  myCopy, .-myCopy

                  map2: 
[=0, %_retval_=0, %copyList2=5, %copyList1=6, %u438=0, %u437=0, %u459=1, %u436=0, %element=0, %u457=1, %u435=3, %u434=0, %myList=4, %u433=1, %u455=0, %u454=1, %u453=1, %u451=1, @a=0, @b=0, %i=2, @i=0, %sortedList=0, %u449=0, @_scanned_=0, %u447=0, %u446=0, %u444=0, %u443=0, %u441=0, %u440=0]
	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	sub	fp,sp,r9
.LU150:
	mov	r4,#0
	mov	r4,#0
	mov	r4,#0
	b	.LU151
.LU151:
	mov	r8,#0
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,#0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,#0
	mov	r6,#0
	b	.LU153
.LU153:
	mov	r5,r6
	mov	r4,#0
	cmp	r5,#10
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU154
	b	.LU155
.LU154:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	ldr	r7, [r4]
	mov	r4,r7
	mov	r4,r8
	mov	r4,r4
	mov	%r0,r4
	mov	%r1,r4
	bl	add
	mov	r4,%r0
	mov	r8,r4
	mov	r4,r8
	mov	%r0,r4
	bl	myCopy
	mov	r4,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r4
	mov	r4,r8
	mov	%r0,r4
	bl	myCopy
	mov	r4,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r10,r4
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	bl	quickSortMain
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r4
	mov	%r0,r4
	bl	freeList
	mov	r4,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	bl	treeMain
	mov	r4,%r0
	mov	r5,r6
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r5,r5,r9
	mov	r6,r5
	b	.LU153
.LU155:
	mov	r4,r8
	mov	%r0,r4
	bl	freeList
	mov	r4,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	bl	freeList
	mov	r4,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	mov	%r0,r5
	bl	freeList
	mov	r4,%r0
	mov	r4,#0
	b	.LU152
                  map2: 
[%u461=0, %_retval_=1]
.LU152:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  main, .-main

                  map2: 
[]
	.section	.rodata
	.align  2
.println:
	.asciz  "%ld\0A\00"
	.align  2
.print:
	.asciz  "%ld \00"
	.align  2
.read:
	.asciz  "%ld\00"
	.comm  _scanned_,4,4
	.global __aeabi_idiv
