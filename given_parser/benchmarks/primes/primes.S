	.arch armv7-a
	.text
	.align  2
	.global isqrt
isqrt:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:52
	movt	r10, #:upper16:52
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #16
	str	%r0, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #4
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #8
	mov	r10, #3
	str	r10, [r9]
	b	.LU5
.LU5:
	sub	r9, fp, #4
	ldr	r6, [r9]
	sub	r9, fp, #16
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r6,r7
	movle	r4,#1
	cmp	r4,#1
	beq	.LU6
	b	.LU7
.LU6:
	sub	r9, fp, #4
	ldr	r8, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	add	r5,r8,r10
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	add	r4,r9,r10
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU5
.LU7:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #36
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #12
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:52
	movt	r10, #:upper16:52
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  isqrt, .-isqrt

	.align  2
	.global prime
prime:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
	sub	sp,sp,r10
.LU9:
	sub	r9, fp, #12
	str	%r0, [r9]
	b	.LU10
.LU10:
	sub	r9, fp, #12
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#2
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU11
.LU13:
	sub	r9, fp, #12
	ldr	r8, [r9]
	mov	%r0,r8
	bl	isqrt
	mov	r4,%r0
	sub	r9, fp, #20
	str	r4, [r9]
	sub	r9, fp, #24
	mov	r10, #2
	str	r10, [r9]
	b	.LU14
.LU20:
	b	.LU11
.LU14:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r9, [r9]
	cmp	r10,r9
	movle	r4,#1
	cmp	r4,#1
	beq	.LU15
	b	.LU16
.LU15:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mul	r6,r9,r10
	sub	r9, fp, #48
	ldr	r9, [r9]
	sub	r5,r9,r6
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #44
	ldr	r10, [r10]
	cmp	r10,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU17
	b	.LU18
.LU16:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU11
.LU17:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU11
.LU19:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #24
	str	r4, [r9]
	b	.LU14
.LU18:
	b	.LU19
.LU11:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  prime, .-prime

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU22:
	b	.LU23
.LU23:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r5, [r9]
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #12
	mov	r10, #0
	str	r10, [r9]
	b	.LU25
.LU25:
	sub	r9, fp, #12
	ldr	r6, [r9]
	sub	r9, fp, #4
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r6,r7
	movle	r4,#1
	cmp	r4,#1
	beq	.LU26
	b	.LU27
.LU26:
	sub	r9, fp, #12
	ldr	r8, [r9]
	mov	%r0,r8
	bl	prime
	mov	r4,%r0
	cmp	r4,#1
	beq	.LU28
	b	.LU29
.LU28:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU30
.LU29:
	b	.LU30
.LU30:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #12
	str	r4, [r9]
	b	.LU25
.LU27:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU24
.LU24:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
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
