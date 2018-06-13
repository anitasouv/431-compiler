	.arch armv7-a
	.comm  a,4,4
	.comm  b,4,4
	.comm  i,4,4
	.text
	.align  2
	.global concatLists
concatLists:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r9, fp, #16
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #24
	ldr	r7, [r9]
	sub	r9, fp, #12
	str	r7, [r9]
	sub	r9, fp, #24
	ldr	r8, [r9]
	mov	r4,#0
	cmp	r8,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #20
	b	.LU4
.LU6:
	b	.LU7
.LU7:
	b	.LU8
.LU8:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #36
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #36
	ldr	r10, [r10]
	cmp	r10,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU9
	b	.LU10
.LU9:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	b	.LU8
.LU10:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #52
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #20
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  concatLists, .-concatLists

	.align  2
	.global add
add:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:56
	movt	r10, #:upper16:56
	sub	sp,sp,r10
.LU12:
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r9, fp, #8
	str	%r1, [r9]
	b	.LU13
.LU13:
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #32
	str	%r0, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r7, [r9]
	sub	r9, fp, #16
	ldr	r8, [r9]
	add	r5,r8,#0
	str	r7, [r5]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r4,r9,#4
	sub	r10, fp, #36
	ldr	r10, [r10]
	str	r10, [r4]
	sub	r9, fp, #16
	ldr	r6, [r9]
	sub	r9, fp, #12
	b	.LU14
.LU14:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:56
	movt	r10, #:upper16:56
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  add, .-add

	.align  2
	.global size
size:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	sub	sp,sp,r10
.LU16:
	sub	r9, fp, #12
	str	%r0, [r9]
	b	.LU17
.LU17:
	sub	r9, fp, #12
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU19
	b	.LU20
.LU19:
	sub	r9, fp, #4
	mov	r10, #0
	b	.LU18
.LU20:
	b	.LU21
.LU21:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r6,r9,#4
	ldr	r8, [r6]
	mov	%r0,r8
	bl	size
	mov	r5,%r0
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r9,r5
	sub	r9, fp, #4
	b	.LU18
.LU18:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  size, .-size

	.align  2
	.global get
get:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:52
	movt	r10, #:upper16:52
	sub	sp,sp,r10
.LU23:
	sub	r9, fp, #20
	str	%r0, [r9]
	sub	r9, fp, #4
	str	%r1, [r9]
	b	.LU24
.LU24:
	sub	r9, fp, #4
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU26
	b	.LU27
.LU26:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r8, [r5]
	sub	r9, fp, #12
	b	.LU25
.LU27:
	b	.LU28
.LU28:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r6,r9,#4
	ldr	r10, [r6]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r5
	bl	get
	mov	r4,%r0
	sub	r9, fp, #12
	b	.LU25
.LU25:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:52
	movt	r10, #:upper16:52
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  get, .-get

	.align  2
	.global pop
pop:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU30:
	sub	r9, fp, #12
	str	%r0, [r9]
	b	.LU31
.LU31:
	sub	r9, fp, #12
	ldr	r7, [r9]
	add	r4,r7,#4
	ldr	r5, [r4]
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #12
	ldr	r6, [r9]
	sub	r9, fp, #4
	b	.LU32
.LU32:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  pop, .-pop

	.align  2
	.global printList
printList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	sub	sp,sp,r10
.LU34:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU35
.LU35:
	sub	r9, fp, #8
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU37
	b	.LU38
.LU37:
	sub	r9, fp, #8
	ldr	r8, [r9]
	add	r5,r8,#0
	ldr	r10, [r5]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r4,r9,#4
	ldr	r7, [r4]
	mov	%r0,r7
	bl	printList
	b	.LU39
.LU38:
	b	.LU39
.LU39:
	b	.LU36
.LU36:
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  printList, .-printList

	.align  2
	.global treeprint
treeprint:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	sub	sp,sp,r10
.LU41:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU42
.LU42:
	sub	r9, fp, #8
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU44
	b	.LU45
.LU44:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r6,r9,#4
	ldr	r10, [r6]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r0,r10
	bl	treeprint
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r4,r9,#8
	ldr	r8, [r4]
	mov	%r0,r8
	bl	treeprint
	b	.LU46
.LU45:
	b	.LU46
.LU46:
	b	.LU43
.LU43:
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  treeprint, .-treeprint

	.align  2
	.global freeList
freeList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
	sub	sp,sp,r10
.LU48:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU49
.LU49:
	sub	r9, fp, #8
	ldr	r5, [r9]
	mov	r4,#0
	cmp	r5,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU51
	b	.LU52
.LU51:
	sub	r9, fp, #8
	ldr	r6, [r9]
	add	r4,r6,#4
	ldr	r7, [r4]
	mov	%r0,r7
	bl	freeList
	b	.LU53
.LU52:
	b	.LU53
.LU53:
	b	.LU50
.LU50:
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  freeList, .-freeList

	.align  2
	.global freeTree
freeTree:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	sub	sp,sp,r10
.LU55:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU56
.LU56:
	sub	r9, fp, #8
	ldr	r6, [r9]
	mov	r5,#0
	cmp	r6,#0
	moveq	r5,#1
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	eor	r4,r9,r5
	cmp	r4,#1
	beq	.LU58
	b	.LU59
.LU58:
	sub	r9, fp, #8
	ldr	r7, [r9]
	add	r5,r7,#4
	ldr	r10, [r5]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeTree
	sub	r9, fp, #8
	ldr	r8, [r9]
	add	r4,r8,#8
	ldr	r10, [r4]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeTree
	b	.LU60
.LU59:
	b	.LU60
.LU60:
	b	.LU57
.LU57:
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  freeTree, .-freeTree

	.align  2
	.global postOrder
postOrder:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:80
	movt	r10, #:upper16:80
	sub	sp,sp,r10
.LU62:
	sub	r9, fp, #20
	str	%r0, [r9]
	b	.LU63
.LU63:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #8
	ldr	r9, [r9]
	cmp	r10,r9
	movne	r4,#1
	cmp	r4,#1
	beq	.LU65
	b	.LU66
.LU65:
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #56
	str	%r0, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	bl	postOrder
	mov	r8,%r0
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r7,r9,#8
	ldr	r10, [r7]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	bl	postOrder
	mov	r6,%r0
	mov	%r0,r8
	mov	%r1,r6
	bl	concatLists
	mov	r5,%r0
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	mov	%r0,r5
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r1,r10
	bl	concatLists
	mov	r4,%r0
	sub	r9, fp, #16
	b	.LU64
.LU66:
	b	.LU67
.LU67:
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #16
	b	.LU64
.LU64:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:80
	movt	r10, #:upper16:80
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  postOrder, .-postOrder

	.align  2
	.global treeadd
treeadd:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:112
	movt	r10, #:upper16:112
	sub	sp,sp,r10
.LU69:
	sub	r9, fp, #28
	str	%r0, [r9]
	sub	r9, fp, #20
	str	%r1, [r9]
	b	.LU70
.LU70:
	sub	r9, fp, #28
	ldr	r8, [r9]
	mov	r4,#0
	sub	r9, fp, #8
	ldr	r9, [r9]
	cmp	r8,r9
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU72
	b	.LU73
.LU72:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #40
	str	%r0, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r7,r9,#0
	sub	r10, fp, #40
	ldr	r10, [r10]
	str	r10, [r7]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #8
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r5,r9,#8
	sub	r10, fp, #8
	ldr	r10, [r10]
	str	r10, [r5]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #24
	b	.LU71
.LU73:
	b	.LU74
.LU74:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #52
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r9, [r9]
	cmp	r10,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU75
	b	.LU76
.LU75:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r6,r9,#4
	ldr	r10, [r6]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r1,r10
	bl	treeadd
	mov	r5,%r0
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r4,r9,#4
	str	r5, [r4]
	b	.LU77
.LU76:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r10, [r6]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r1,r10
	bl	treeadd
	mov	r4,%r0
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r9, [r9]
	add	r5,r9,#8
	str	r4, [r5]
	b	.LU77
.LU77:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r10, fp, #96
	ldr	r10, [r10]
	sub	r9, fp, #24
	b	.LU71
.LU71:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:112
	movt	r10, #:upper16:112
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  treeadd, .-treeadd

	.align  2
	.global quickSort
quickSort:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:160
	movt	r10, #:upper16:160
	sub	sp,sp,r10
.LU79:
	sub	r9, fp, #36
	str	%r0, [r9]
	b	.LU80
.LU80:
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	bl	size
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#1
	movle	r4,#1
	cmp	r4,#1
	beq	.LU82
	b	.LU83
.LU82:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #28
	b	.LU81
.LU83:
	b	.LU84
.LU84:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#0
	bl	get
	sub	r9, fp, #48
	str	%r0, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	bl	size
	sub	r9, fp, #44
	str	%r0, [r9]
	sub	r9, fp, #44
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r8,r9,r10
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r8
	bl	get
	mov	r7,%r0
	sub	r9, fp, #48
	add	r6,r9,r7
	mov	%r0,r6
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #0
	str	r10, [r9]
	b	.LU85
.LU85:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #64
	ldr	r10, [r10]
	sub	r9, fp, #12
	ldr	r9, [r9]
	cmp	r10,r9
	movne	r4,#1
	cmp	r4,#1
	beq	.LU86
	b	.LU87
.LU86:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r1,r10
	bl	get
	mov	r5,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	mov	r4,#0
	sub	r9, fp, #68
	ldr	r9, [r9]
	cmp	r5,r9
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU88
	b	.LU89
.LU88:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r1,r10
	bl	get
	mov	r5,%r0
	sub	r10, fp, #88
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r5
	bl	add
	mov	r4,%r0
	sub	r9, fp, #24
	str	r4, [r9]
	b	.LU90
.LU89:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #96
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r1,r10
	bl	get
	mov	r5,%r0
	sub	r10, fp, #100
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r5
	bl	add
	mov	r4,%r0
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU90
.LU90:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r9, fp, #112
	ldr	r9, [r9]
	add	r6,r9,#4
	ldr	r10, [r6]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r10, fp, #108
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r9, fp, #104
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #16
	str	r4, [r9]
	b	.LU85
.LU87:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r10, fp, #144
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeList
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #140
	str	r10, [r9]
	sub	r10, fp, #140
	ldr	r10, [r10]
	mov	%r0,r10
	bl	quickSort
	mov	r6,%r0
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r10, fp, #116
	ldr	r10, [r10]
	mov	%r0,r10
	bl	quickSort
	mov	r5,%r0
	mov	%r0,r6
	mov	%r1,r5
	bl	concatLists
	mov	r4,%r0
	sub	r9, fp, #28
	b	.LU81
.LU81:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:160
	movt	r10, #:upper16:160
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  quickSort, .-quickSort

	.align  2
	.global quickSortMain
quickSortMain:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU92:
	sub	r9, fp, #16
	str	%r0, [r9]
	b	.LU93
.LU93:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printList
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r6,r9,r10
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	ldr	r8, [r9]
	mov	%r0,r8
	bl	printList
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r5,r9,r10
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	ldr	r7, [r9]
	mov	%r0,r7
	bl	printList
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r4,r9,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #8
	b	.LU94
.LU94:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  quickSortMain, .-quickSortMain

	.align  2
	.global treesearch
treesearch:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	sub	sp,sp,r10
.LU96:
	sub	r9, fp, #20
	str	%r0, [r9]
	sub	r9, fp, #4
	str	%r1, [r9]
	b	.LU97
.LU97:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #20
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU99
	b	.LU109
.LU99:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r8, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,r8
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU100
	b	.LU101
	b	.LU110
.LU109:
	b	.LU110
.LU100:
	sub	r9, fp, #16
	mov	r10, #1
	b	.LU98
.LU102:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r6,r9,#4
	ldr	r10, [r6]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r1,r10
	bl	treesearch
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU103
	b	.LU104
.LU103:
	sub	r9, fp, #16
	mov	r10, #1
	b	.LU98
.LU105:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r10, [r6]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r1,r10
	bl	treesearch
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU106
	b	.LU107
.LU106:
	sub	r9, fp, #16
	mov	r10, #1
	b	.LU98
.LU108:
	b	.LU110
.LU110:
	sub	r9, fp, #16
	mov	r10, #0
	b	.LU98
.LU107:
	sub	r9, fp, #16
	mov	r10, #0
	b	.LU98
.LU104:
	b	.LU105
.LU101:
	b	.LU102
.LU98:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  treesearch, .-treesearch

	.align  2
	.global inOrder
inOrder:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:84
	movt	r10, #:upper16:84
	sub	sp,sp,r10
.LU112:
	sub	r9, fp, #20
	str	%r0, [r9]
	b	.LU113
.LU113:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #8
	ldr	r9, [r9]
	cmp	r10,r9
	movne	r4,#1
	cmp	r4,#1
	beq	.LU115
	b	.LU116
.LU115:
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #60
	str	%r0, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	bl	inOrder
	mov	r8,%r0
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r7,r9,#8
	ldr	r10, [r7]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r0,r10
	bl	inOrder
	mov	r6,%r0
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r6
	bl	concatLists
	mov	r5,%r0
	mov	%r0,r8
	mov	%r1,r5
	bl	concatLists
	mov	r4,%r0
	sub	r9, fp, #16
	b	.LU114
.LU116:
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #16
	b	.LU114
.LU117:
	b	.LU114
.LU114:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:84
	movt	r10, #:upper16:84
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  inOrder, .-inOrder

	.align  2
	.global bintreesearch
bintreesearch:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
	sub	sp,sp,r10
.LU119:
	sub	r9, fp, #20
	str	%r0, [r9]
	sub	r9, fp, #4
	str	%r1, [r9]
	b	.LU120
.LU120:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #20
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU122
	b	.LU129
.LU122:
	sub	r9, fp, #20
	ldr	r7, [r9]
	add	r5,r7,#0
	ldr	r10, [r5]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r8, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,r8
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU123
	b	.LU124
	b	.LU130
.LU129:
	b	.LU130
.LU123:
	sub	r9, fp, #16
	mov	r10, #1
	b	.LU121
.LU125:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #28
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r9, [r9]
	cmp	r10,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU126
	b	.LU127
.LU126:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r1,r10
	bl	bintreesearch
	mov	r4,%r0
	sub	r9, fp, #16
	b	.LU121
.LU128:
	b	.LU130
.LU130:
	sub	r9, fp, #16
	mov	r10, #0
	b	.LU121
.LU127:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r1,r10
	bl	bintreesearch
	mov	r4,%r0
	sub	r9, fp, #16
	b	.LU121
.LU124:
	b	.LU125
.LU121:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  bintreesearch, .-bintreesearch

	.align  2
	.global buildTree
buildTree:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU132:
	sub	r9, fp, #24
	str	%r0, [r9]
	b	.LU133
.LU133:
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	b	.LU135
.LU135:
	sub	r9, fp, #4
	ldr	r8, [r9]
	sub	r9, fp, #24
	ldr	r7, [r9]
	mov	%r0,r7
	bl	size
	mov	r5,%r0
	mov	r4,#0
	cmp	r8,r5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU136
	b	.LU137
.LU136:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r1,r10
	bl	get
	mov	r6,%r0
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r6
	bl	treeadd
	mov	r5,%r0
	sub	r9, fp, #16
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU135
.LU137:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #12
	b	.LU134
.LU134:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  buildTree, .-buildTree

	.align  2
	.global treeMain
treeMain:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:172
	movt	r10, #:upper16:172
	sub	sp,sp,r10
.LU139:
	sub	r9, fp, #20
	str	%r0, [r9]
	b	.LU140
.LU140:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	bl	buildTree
	sub	r9, fp, #156
	str	%r0, [r9]
	sub	r10, fp, #156
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r10, fp, #104
	ldr	r10, [r10]
	mov	%r0,r10
	bl	treeprint
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r10, fp, #152
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r0,r10
	bl	inOrder
	sub	r9, fp, #148
	str	%r0, [r9]
	sub	r10, fp, #148
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printList
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r10, fp, #144
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeList
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	bl	postOrder
	sub	r9, fp, #140
	str	%r0, [r9]
	sub	r10, fp, #140
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printList
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #136
	str	r10, [r9]
	sub	r10, fp, #136
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeList
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r10, fp, #120
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#0
	bl	treesearch
	sub	r9, fp, #132
	str	%r0, [r9]
	sub	r10, fp, #132
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r10, fp, #128
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r10, fp, #100
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#10
	bl	treesearch
	sub	r9, fp, #124
	str	%r0, [r9]
	sub	r10, fp, #124
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r10, fp, #120
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	sub	r10,r9,r10
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #116
	ldr	r10, [r10]
	mov	%r1,r10
	bl	treesearch
	sub	r9, fp, #112
	str	%r0, [r9]
	sub	r10, fp, #112
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r10, fp, #108
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	treesearch
	sub	r9, fp, #104
	str	%r0, [r9]
	sub	r10, fp, #104
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r10, fp, #100
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#3
	bl	treesearch
	sub	r9, fp, #96
	str	%r0, [r9]
	sub	r10, fp, #96
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #124
	str	r10, [r9]
	sub	r10, fp, #124
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#9
	bl	treesearch
	sub	r9, fp, #88
	str	%r0, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r10, fp, #108
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#1
	bl	treesearch
	sub	r9, fp, #80
	str	%r0, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#0
	bl	bintreesearch
	sub	r9, fp, #72
	str	%r0, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#10
	bl	bintreesearch
	sub	r9, fp, #64
	str	%r0, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	sub	r10,r9,r10
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r1,r10
	bl	bintreesearch
	sub	r9, fp, #52
	str	%r0, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r10, fp, #128
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	bintreesearch
	sub	r9, fp, #44
	str	%r0, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r10,r9,r10
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r10, fp, #112
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#3
	bl	bintreesearch
	sub	r9, fp, #36
	str	%r0, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r8,r9,r10
	mov	%r1,r8
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#9
	bl	bintreesearch
	mov	r7,%r0
	mov	%r1,r7
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r6,r9,r10
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#1
	bl	bintreesearch
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:999
	movt	r10, #:upper16:999
	sub	r4,r9,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeTree
	b	.LU141
.LU141:
	movw	r10, #:lower16:172
	movt	r10, #:upper16:172
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  treeMain, .-treeMain

	.align  2
	.global myCopy
myCopy:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:52
	movt	r10, #:upper16:52
	sub	sp,sp,r10
.LU143:
	sub	r9, fp, #16
	str	%r0, [r9]
	b	.LU144
.LU144:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #4
	ldr	r9, [r9]
	cmp	r10,r9
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU146
	b	.LU147
.LU146:
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #8
	b	.LU145
.LU147:
	b	.LU148
.LU148:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r8,r9,#0
	ldr	r10, [r8]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #4
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r1,r10
	bl	add
	mov	r7,%r0
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r6,r9,#4
	ldr	r10, [r6]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r0,r10
	bl	myCopy
	mov	r5,%r0
	mov	%r0,r7
	mov	%r1,r5
	bl	concatLists
	mov	r4,%r0
	sub	r9, fp, #8
	b	.LU145
.LU145:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:52
	movt	r10, #:upper16:52
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  myCopy, .-myCopy

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:100
	movt	r10, #:upper16:100
	sub	sp,sp,r10
.LU150:
	b	.LU151
.LU151:
	sub	r10, fp, #16
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #0
	str	r10, [r9]
	b	.LU153
.LU153:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #36
	ldr	r10, [r10]
	cmp	r10,#10
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
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r1,r10
	bl	add
	mov	r8,%r0
	sub	r9, fp, #28
	str	r8, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r0,r10
	bl	myCopy
	mov	r7,%r0
	sub	r9, fp, #8
	str	r7, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	bl	myCopy
	mov	r6,%r0
	sub	r9, fp, #4
	str	r6, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	bl	quickSortMain
	mov	r5,%r0
	sub	r9, fp, #32
	str	r5, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeList
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	bl	treeMain
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #12
	str	r4, [r9]
	b	.LU153
.LU155:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeList
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeList
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r0,r10
	bl	freeList
	sub	r9, fp, #20
	mov	r10, #0
	b	.LU152
.LU152:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:100
	movt	r10, #:upper16:100
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  main, .-main

	.section	.rodata
	.align  2
.println:
	.asciz  "%ld\n\00"
	.align  2
.print:
	.asciz  "%ld \00"
	.align  2
.read:
	.asciz  "%ld\00"
	.comm  _scanned_,4,4
	.global __aeabi_idiv
