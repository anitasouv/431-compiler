	.arch armv7-a
	.text
	.align  2
	.global computeFib
computeFib:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #16
	ldr	r10, [r10]
	cmp	r10,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #4
	mov	r10, #0
	b	.LU4
.LU6:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #20
	ldr	r10, [r10]
	cmp	r10,#2
	movle	r4,#1
	cmp	r4,#1
	beq	.LU7
	b	.LU8
	b	.LU10
.LU10:
	b	.LU4
.LU7:
	sub	r9, fp, #4
	mov	r10, #1
	b	.LU4
.LU9:
	b	.LU10
.LU8:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r8,r9,r10
	mov	%r0,r8
	bl	computeFib
	mov	r7,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	sub	r6,r9,r10
	mov	%r0,r6
	bl	computeFib
	mov	r5,%r0
	add	r4,r7,r5
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
	.size  computeFib, .-computeFib

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
	sub	sp,sp,r10
.LU12:
	b	.LU13
.LU13:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r5, [r9]
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r6, [r9]
	mov	%r0,r6
	bl	computeFib
	mov	r4,%r0
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	mov	r10, #0
	b	.LU14
.LU14:
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
