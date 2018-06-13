	.arch armv7-a
	.text
	.align  2
	.global wait
wait:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU3
.LU3:
	b	.LU5
.LU5:
	sub	r9, fp, #4
	ldr	r5, [r9]
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU6
	b	.LU7
.LU6:
	sub	r9, fp, #4
	ldr	r6, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r6,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU5
.LU7:
	sub	r9, fp, #12
	mov	r10, #0
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  wait, .-wait

	.align  2
	.global power
power:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	sub	sp,sp,r10
.LU9:
	sub	r9, fp, #4
	str	%r0, [r9]
	sub	r9, fp, #8
	str	%r1, [r9]
	b	.LU10
.LU10:
	sub	r9, fp, #12
	mov	r10, #1
	str	r10, [r9]
	b	.LU12
.LU12:
	sub	r9, fp, #8
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU13
	b	.LU14
.LU13:
	sub	r9, fp, #12
	ldr	r7, [r9]
	sub	r9, fp, #4
	ldr	r8, [r9]
	mul	r5,r7,r8
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU12
.LU14:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #16
	b	.LU11
.LU11:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  power, .-power

	.align  2
	.global recursiveDecimalSum
recursiveDecimalSum:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:104
	movt	r10, #:upper16:104
	sub	sp,sp,r10
.LU16:
	sub	r9, fp, #32
	str	%r0, [r9]
	sub	r9, fp, #8
	str	%r1, [r9]
	sub	r9, fp, #36
	str	%r2, [r9]
	b	.LU17
.LU17:
	sub	r9, fp, #32
	ldr	r8, [r9]
	mov	r4,#0
	cmp	r8,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU19
	b	.LU23
.LU19:
	sub	r9, fp, #4
	mov	r10, #2
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#10
	bl	__aeabi_idiv
	sub	r9, fp, #12
	str	r7, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	movw	r10, #:lower16:10
	movt	r10, #:upper16:10
	mul	r6,r9,r10
	sub	r9, fp, #12
	str	r6, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #44
	sub	r10, fp, #52
	sub	r5,r9,r10
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #56
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU20
	b	.LU21
	b	.LU24
.LU23:
	b	.LU24
.LU20:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r1,r10
	bl	power
	mov	r5,%r0
	sub	r9, fp, #68
	add	r4,r9,r5
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU22
.LU22:
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#10
	bl	__aeabi_idiv
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r5,r9,r10
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r1,r10
	mov	%r2,r5
	bl	recursiveDecimalSum
	mov	r4,%r0
	sub	r9, fp, #20
	b	.LU18
.LU24:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	sub	r9, fp, #20
	b	.LU18
.LU21:
	b	.LU22
.LU18:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:104
	movt	r10, #:upper16:104
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  recursiveDecimalSum, .-recursiveDecimalSum

	.align  2
	.global convertToDecimal
convertToDecimal:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU26:
	sub	r9, fp, #16
	str	%r0, [r9]
	b	.LU27
.LU27:
	sub	r9, fp, #20
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r6, [r9]
	sub	r9, fp, #4
	ldr	r7, [r9]
	sub	r9, fp, #20
	ldr	r5, [r9]
	mov	%r0,r6
	mov	%r1,r7
	mov	%r2,r5
	bl	recursiveDecimalSum
	mov	r4,%r0
	sub	r9, fp, #8
	b	.LU28
.LU28:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  convertToDecimal, .-convertToDecimal

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	sub	sp,sp,r10
.LU30:
	b	.LU31
.LU31:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r8, [r9]
	sub	r9, fp, #4
	str	r8, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r0,r10
	bl	convertToDecimal
	mov	r5,%r0
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r6, [r9]
	sub	r9, fp, #4
	ldr	r7, [r9]
	mul	r4,r6,r7
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU33
.LU33:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #20
	ldr	r10, [r10]
	cmp	r10,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU34
	b	.LU35
.LU34:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r0,r10
	bl	wait
	mov	r5,%r0
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU33
.LU35:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	mov	r10, #0
	b	.LU32
.LU32:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
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
