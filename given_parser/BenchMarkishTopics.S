	.arch armv7-a
	.comm  intList,4,4
	.text
	.align  2
	.global length
length:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	fp,sp,r9
.LU2:
	mov	r4,r5
	mov	r4,%r0
	mov	r4,#0
	b	.LU3
.LU3:
	mov	r4,r6
	mov	r4,#0
	cmp	r6,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	mov	r4,#0
	b	.LU4
.LU6:
	b	.LU7
.LU7:
	mov	r4,r8
	add	r4,r8,#4
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r0,r10
	bl	length
	mov	r4,%r0
	add	r4,r7,r4
	mov	r4,r4
	b	.LU4
.LU4:
	mov	r4,r5
	mov	%r0,r5
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  length, .-length

	.align  2
	.global addToFront
addToFront:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:52
	movt	r9, #:upper16:52
	sub	fp,sp,r9
.LU9:
	mov	r5,r7
	mov	r5,r6
	mov	r5,%r0
	mov	r5,%r1
	mov	r4,#0
	b	.LU10
.LU10:
	mov	r5,r8
	mov	r4,#0
	cmp	r8,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	r5,r4
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	add	r4,r10,#0
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	add	r4,r10,#4
	mov	r4,#0
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	b	.LU11
.LU13:
	b	.LU14
.LU14:
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	r4,r4
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #36
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #36
	ldr	r10, [r9]
	add	r5,r10,#0
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #20
	ldr	r10, [r9]
	add	r5,r10,#4
	sub	r9, fp, #24
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	r4,r10
	b	.LU11
.LU11:
	mov	r4,r5
	mov	%r0,r5
	movw	r9, #:lower16:52
	movt	r9, #:upper16:52
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  addToFront, .-addToFront

	.align  2
	.global deleteFirst
deleteFirst:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:32
	movt	r9, #:upper16:32
	sub	fp,sp,r9
.LU16:
	mov	r6,r7
	mov	r6,%r0
	mov	r4,#0
	b	.LU17
.LU17:
	mov	r6,r8
	mov	r4,#0
	cmp	r8,#0
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
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	add	r5,r10,#4
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	b	.LU18
.LU18:
	mov	r4,r5
	mov	%r0,r5
	movw	r9, #:lower16:32
	movt	r9, #:upper16:32
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  deleteFirst, .-deleteFirst

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:68
	movt	r9, #:upper16:68
	sub	fp,sp,r9
.LU23:
	mov	r5,#0
	b	.LU24
.LU24:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	ldr	r7, [r4]
	mov	r5,r7
	mov	r4,#0
	mov	r6,#0
	b	.LU26
.LU26:
	mov	r5,r8
	mov	r4,#0
	cmp	r8,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU27
	b	.LU28
.LU27:
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	%r1,r10
	bl	addToFront
	mov	r4,%r0
	mov	r6,r4
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #20
	ldr	r10, [r9]
	add	r6,r10,#0
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r4,r10,r9
	mov	r5,r4
	b	.LU26
.LU28:
	sub	r9, fp, #24
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	mov	%r0,r10
	bl	length
	mov	r4,%r0
	mov	%r1,r4
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU29
.LU29:
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #28
	ldr	r10, [r9]
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
	sub	r9, fp, #36
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #40
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #40
	ldr	r10, [r9]
	add	r4,r10,#0
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r4,r10,r10
	mov	r4,r4
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r0,r10
	bl	length
	mov	r4,%r0
	mov	%r1,r4
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #48
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #48
	ldr	r10, [r9]
	mov	%r0,r10
	bl	deleteFirst
	mov	r4,%r0
	mov	r6,r4
	b	.LU29
.LU31:
	sub	r9, fp, #52
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #52
	ldr	r10, [r9]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r4,#0
	b	.LU25
.LU25:
	mov	r4,r5
	mov	%r0,r5
	movw	r9, #:lower16:68
	movt	r9, #:upper16:68
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  main, .-main

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
