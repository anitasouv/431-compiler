	.arch armv7-a
	.text
	.align  2
	.global sum
sum:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #8
	str	%r0, [r9]
	sub	r9, fp, #16
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #8
	ldr	r5, [r9]
	sub	r9, fp, #16
	ldr	r6, [r9]
	add	r4,r5,r6
	sub	r9, fp, #4
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  sum, .-sum

	.align  2
	.global fact
fact:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:56
	movt	r10, #:upper16:56
	sub	sp,sp,r10
.LU6:
	sub	r9, fp, #12
	str	%r0, [r9]
	b	.LU7
.LU7:
	sub	r9, fp, #12
	ldr	r8, [r9]
	mov	r6,#0
	cmp	r8,#1
	moveq	r6,#1
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	mov	r5,#0
	sub	r10, fp, #20
	ldr	r10, [r10]
	cmp	r10,#0
	moveq	r5,#1
	orr	r4,r6,r5
	cmp	r4,#1
	beq	.LU9
	b	.LU10
.LU9:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU8
.LU10:
	b	.LU11
.LU11:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,#1
	movle	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r6,r9,r10
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mul	r5,r6,r10
	mov	%r0,r5
	bl	fact
	mov	r4,%r0
	sub	r9, fp, #8
	b	.LU8
.LU13:
	b	.LU14
.LU14:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r7,r9,r10
	mov	%r0,r7
	bl	fact
	mov	r6,%r0
	sub	r9, fp, #32
	ldr	r9, [r9]
	mul	r5,r9,r6
	sub	r9, fp, #16
	str	r5, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #8
	b	.LU8
.LU8:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:56
	movt	r10, #:upper16:56
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  fact, .-fact

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU16:
	b	.LU17
.LU17:
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	b	.LU19
.LU19:
	sub	r9, fp, #4
	ldr	r8, [r9]
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	mov	r4,#0
	cmp	r8,r5
	movne	r4,#1
	cmp	r4,#1
	beq	.LU20
	b	.LU21
.LU20:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	bl	fact
	mov	r7,%r0
	sub	r9, fp, #16
	str	r7, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	bl	fact
	mov	r6,%r0
	sub	r9, fp, #12
	str	r6, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r1,r10
	bl	sum
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	b	.LU19
.LU21:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU18
.LU18:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
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
