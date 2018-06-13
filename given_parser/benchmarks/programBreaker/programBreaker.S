	.arch armv7-a
	.comm  GLOBAL,4,4
	.comm  count,4,4
	.text
	.align  2
	.global fun2
fun2:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #4
	str	%r0, [r9]
	sub	r9, fp, #8
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #4
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #8
	ldr	r7, [r9]
	sub	r9, fp, #16
	b	.LU4
.LU6:
	sub	r9, fp, #4
	ldr	r8, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r8,r10
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	%r0,r5
	sub	r10, fp, #24
	ldr	r10, [r10]
	mov	%r1,r10
	bl	fun2
	mov	r4,%r0
	sub	r9, fp, #16
	b	.LU4
.LU7:
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  fun2, .-fun2

	.align  2
	.global fun1
fun1:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:100
	movt	r10, #:upper16:100
	sub	sp,sp,r10
.LU9:
	sub	r9, fp, #8
	str	%r0, [r9]
	sub	r9, fp, #12
	str	%r1, [r9]
	sub	r9, fp, #20
	str	%r2, [r9]
	b	.LU10
.LU10:
	movw	r9, #:lower16:5
	movt	r9, #:upper16:5
	movw	r10, #:lower16:6
	movt	r10, #:upper16:6
	add	r10,r9,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	mul	r8,r9,r10
	sub	r9, fp, #44
	ldr	r9, [r9]
	sub	r7,r9,r8
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	mov	%r0,#4
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r10, fp, #36
	ldr	r10, [r10]
	add	r6,r7,r10
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	add	r5,r6,r10
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #48
	ldr	r9, [r9]
	cmp	r10,r9
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r1,r10
	bl	fun2
	mov	r4,%r0
	sub	r9, fp, #28
	b	.LU11
.LU13:
	mov	r6,#0
	mov	r10, #5
	cmp	r10,#6
	movlt	r6,#1
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	mov	r5,#0
	sub	r10, fp, #68
	ldr	r10, [r10]
	sub	r9, fp, #72
	ldr	r9, [r9]
	cmp	r10,r9
	movle	r5,#1
	and	r4,r6,r5
	cmp	r4,#1
	beq	.LU14
	b	.LU15
	b	.LU17
.LU17:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	sub	r9, fp, #28
	b	.LU11
.LU14:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r1,r10
	bl	fun2
	mov	r4,%r0
	sub	r9, fp, #28
	b	.LU11
.LU16:
	b	.LU17
.LU15:
	b	.LU16
.LU11:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:100
	movt	r10, #:upper16:100
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  fun1, .-fun1

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU19:
	b	.LU20
.LU20:
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r6, [r9]
	sub	r9, fp, #4
	str	r6, [r9]
	b	.LU22
.LU22:
	sub	r9, fp, #4
	ldr	r7, [r9]
	mov	r4,#0
	movw	r9, #:lower16:10000
	movt	r9, #:upper16:10000
	cmp	r7,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU23
	b	.LU24
.LU23:
	sub	r9, fp, #4
	ldr	r8, [r9]
	mov	%r0,#3
	mov	%r1,r8
	mov	%r2,#5
	bl	fun1
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU22
.LU24:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU21
.LU21:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
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
