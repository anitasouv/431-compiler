	.arch armv7-a
	.comm  intList,4,4
	.text
	.align  2
	.global length
length:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #12
	str	%r0, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #12
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #4
	mov	r10, #0
	b	.LU4
.LU6:
	b	.LU7
.LU7:
	sub	r9, fp, #12
	ldr	r8, [r9]
	add	r6,r8,#4
	ldr	r10, [r6]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r0,r10
	bl	length
	mov	r5,%r0
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r9,r5
	sub	r9, fp, #4
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  length, .-length

	.align  2
	.global addToFront
addToFront:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:84
	movt	r10, #:upper16:84
	sub	sp,sp,r10
.LU9:
	sub	r9, fp, #28
	str	%r0, [r9]
	sub	r9, fp, #20
	str	%r1, [r9]
	b	.LU10
.LU10:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #8
	ldr	r9, [r9]
	cmp	r10,r9
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #44
	str	%r0, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	r8,r10
	sub	r9, fp, #28
	str	r8, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r7,r9,#0
	sub	r10, fp, #40
	str	r10, [r7]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r5,r9,#4
	sub	r10, fp, #8
	str	r10, [r5]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	sub	r9, fp, #16
	b	.LU11
.LU13:
	b	.LU14
.LU14:
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #48
	str	%r0, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r8,r9,#0
	sub	r10, fp, #64
	str	r10, [r8]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #56
	str	r10, [r6]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	sub	r9, fp, #16
	b	.LU11
.LU11:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:84
	movt	r10, #:upper16:84
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  addToFront, .-addToFront

	.align  2
	.global deleteFirst
deleteFirst:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	sub	sp,sp,r10
.LU16:
	sub	r9, fp, #20
	str	%r0, [r9]
	b	.LU17
.LU17:
	sub	r9, fp, #20
	ldr	r6, [r9]
	mov	r4,#0
	sub	r9, fp, #4
	ldr	r9, [r9]
	cmp	r6,r9
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU19
	b	.LU20
.LU19:
	sub	r10, fp, #4
	sub	r9, fp, #8
	b	.LU18
.LU20:
	b	.LU21
.LU21:
	sub	r9, fp, #20
	ldr	r8, [r9]
	sub	r9, fp, #12
	str	r8, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r7, [r9]
	sub	r9, fp, #8
	b	.LU18
.LU18:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  deleteFirst, .-deleteFirst

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:92
	movt	r10, #:upper16:92
	sub	sp,sp,r10
.LU23:
	b	.LU24
.LU24:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r8, [r9]
	sub	r9, fp, #12
	str	r8, [r9]
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	sub	r10, fp, #8
	sub	r9, fp, #20
	str	r10, [r9]
	b	.LU26
.LU26:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU27
	b	.LU28
.LU27:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r1,r10
	bl	addToFront
	mov	r6,%r0
	sub	r9, fp, #20
	str	r6, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #12
	str	r4, [r9]
	b	.LU26
.LU28:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r0,r10
	bl	length
	mov	r4,%r0
	mov	%r1,r4
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU29
.LU29:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r0,r10
	bl	length
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU30
	b	.LU31
.LU30:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	add	r7,r9,#0
	ldr	r10, [r7]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	add	r6,r9,r10
	sub	r9, fp, #4
	str	r6, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	bl	length
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r0,r10
	bl	deleteFirst
	mov	r4,%r0
	sub	r9, fp, #20
	str	r4, [r9]
	b	.LU29
.LU31:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	mov	r10, #0
	b	.LU25
.LU25:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:92
	movt	r10, #:upper16:92
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
