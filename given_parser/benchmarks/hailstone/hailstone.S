	.arch armv7-a
	.text
	.align  2
	.global mod
mod:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #8
	str	%r0, [r9]
	sub	r9, fp, #16
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #8
	ldr	r6, [r9]
	sub	r9, fp, #8
	ldr	r7, [r9]
	sub	r9, fp, #16
	ldr	r8, [r9]
	mov	%r0,r7
	mov	%r1,r8
	bl	__aeabi_idiv
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mul	r5,r9,r10
	sub	r4,r6,r5
	sub	r9, fp, #4
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  mod, .-mod

	.align  2
	.global hailstone
hailstone:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU6:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU7
.LU7:
	b	.LU9
.LU9:
	mov	r10, #1
	cmp	r10,#1
	beq	.LU10
	b	.LU11
.LU10:
	sub	r9, fp, #8
	ldr	r6, [r9]
	mov	%r1,r6
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r7, [r9]
	mov	%r0,r7
	mov	%r1,#2
	bl	mod
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	sub	r9, fp, #8
	ldr	r8, [r9]
	movw	r9, #:lower16:3
	movt	r9, #:upper16:3
	mul	r5,r9,r8
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r5,r10
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU14
.LU13:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU14
.LU14:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #16
	ldr	r10, [r10]
	cmp	r10,#1
	movle	r4,#1
	cmp	r4,#1
	beq	.LU15
	b	.LU16
.LU15:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU8
.LU16:
	b	.LU17
.LU17:
	b	.LU9
.LU11:
	b	.LU8
.LU8:
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  hailstone, .-hailstone

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
	sub	sp,sp,r10
.LU19:
	b	.LU20
.LU20:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r4, [r9]
	sub	r9, fp, #4
	str	r4, [r9]
	sub	r9, fp, #4
	ldr	r5, [r9]
	mov	%r0,r5
	bl	hailstone
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU21
.LU21:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
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
