	.arch armv7-a
	.text
	.align  2
	.global calcPower
calcPower:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #4
	str	%r0, [r9]
	sub	r9, fp, #20
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #12
	mov	r10, #1
	str	r10, [r9]
	b	.LU5
.LU5:
	sub	r9, fp, #20
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU6
	b	.LU7
.LU6:
	sub	r9, fp, #12
	ldr	r7, [r9]
	sub	r9, fp, #4
	ldr	r8, [r9]
	mul	r5,r7,r8
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #20
	str	r4, [r9]
	b	.LU5
.LU7:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #16
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  calcPower, .-calcPower

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:92
	movt	r10, #:upper16:92
	sub	sp,sp,r10
.LU9:
	b	.LU10
.LU10:
	sub	r9, fp, #12
	mov	r10, #0
	str	r10, [r9]
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
	sub	r9, fp, #4
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r7,r9,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	str	r10, [r7]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r8, [r9]
	sub	r9, fp, #20
	str	r8, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #36
	ldr	r10, [r10]
	cmp	r10,#0
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #16
	b	.LU11
.LU13:
	b	.LU14
.LU14:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r5,r9,#4
	sub	r10, fp, #44
	ldr	r10, [r10]
	str	r10, [r5]
	sub	r9, fp, #8
	mov	r10, #0
	str	r10, [r9]
	b	.LU15
.LU15:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #52
	ldr	r10, [r10]
	movw	r9, #:lower16:1000000
	movt	r9, #:upper16:1000000
	cmp	r10,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU16
	b	.LU17
.LU16:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r7,r9,r10
	sub	r9, fp, #8
	str	r7, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r6,r9,#0
	ldr	r10, [r6]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r1,r10
	bl	calcPower
	mov	r4,%r0
	sub	r9, fp, #12
	str	r4, [r9]
	b	.LU15
.LU17:
	sub	r9, fp, #12
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
	mov	r10, #1
	b	.LU11
.LU11:
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
