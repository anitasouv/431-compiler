	.arch armv7-a
	.text
	.align  2
	.global getIntList
getIntList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
	sub	sp,sp,r10
.LU2:
	b	.LU3
.LU3:
	mov	%r0,#8
	bl	malloc
	mov	r8,%r0
	mov	r7,r8
	sub	r9, fp, #16
	str	r7, [r9]
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
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,r5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r7,r9,#0
	sub	r10, fp, #32
	ldr	r10, [r10]
	str	r10, [r7]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r5,r9,#4
	sub	r10, fp, #8
	ldr	r10, [r10]
	str	r10, [r5]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #12
	b	.LU4
.LU6:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r8,r9,#0
	sub	r10, fp, #48
	ldr	r10, [r10]
	str	r10, [r8]
	bl	getIntList
	mov	r6,%r0
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	add	r5,r9,#4
	str	r6, [r5]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #12
	b	.LU4
.LU7:
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  getIntList, .-getIntList

	.align  2
	.global biggest
biggest:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU9:
	sub	r9, fp, #20
	str	%r0, [r9]
	sub	r9, fp, #16
	str	%r1, [r9]
	b	.LU10
.LU10:
	sub	r9, fp, #20
	ldr	r5, [r9]
	sub	r9, fp, #16
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r5,r6
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	sub	r9, fp, #20
	ldr	r7, [r9]
	sub	r9, fp, #8
	b	.LU11
.LU13:
	sub	r9, fp, #16
	ldr	r8, [r9]
	sub	r9, fp, #8
	b	.LU11
.LU14:
	b	.LU11
.LU11:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  biggest, .-biggest

	.align  2
	.global biggestInList
biggestInList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	sub	sp,sp,r10
.LU16:
	sub	r9, fp, #16
	str	%r0, [r9]
	b	.LU17
.LU17:
	sub	r9, fp, #16
	ldr	r8, [r9]
	add	r5,r8,#0
	ldr	r10, [r5]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	b	.LU19
.LU19:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #28
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #28
	ldr	r10, [r10]
	cmp	r10,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU20
	b	.LU21
.LU20:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r7,r9,#0
	ldr	r10, [r7]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r1,r10
	bl	biggest
	mov	r6,%r0
	sub	r9, fp, #8
	str	r6, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	b	.LU19
.LU21:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #4
	b	.LU18
.LU18:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  biggestInList, .-biggestInList

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
	sub	sp,sp,r10
.LU23:
	b	.LU24
.LU24:
	bl	getIntList
	mov	r5,%r0
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r6, [r9]
	mov	%r0,r6
	bl	biggestInList
	mov	r4,%r0
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	mov	r10, #0
	b	.LU25
.LU25:
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
