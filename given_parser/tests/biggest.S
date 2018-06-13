	.arch armv7-a
	.text
	.align  2
	.global getIntList
getIntList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	fp,sp,r9
.LU2:
	b	.LU3
.LU3:
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	ldr	r7, [r4]
	mov	r4,r8
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r4,r6,r9
	mov	r4,#0
	cmp	r4,r4
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	mov	r5,r8
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#4
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	b	.LU4
.LU6:
	mov	r4,r8
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	bl	getIntList
	mov	r4,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	b	.LU4
.LU7:
	b	.LU4
.LU4:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  getIntList, .-getIntList

	.align  2
	.global biggest
biggest:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU9:
	mov	r7,%r0
	mov	r6,%r1
	b	.LU10
.LU10:
	mov	r5,r7
	mov	r5,r6
	mov	r4,#0
	cmp	r5,r5
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU12
	b	.LU13
.LU12:
	mov	r4,r7
	b	.LU11
.LU13:
	mov	r4,r6
	b	.LU11
.LU14:
	b	.LU11
.LU11:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  biggest, .-biggest

	.align  2
	.global biggestInList
biggestInList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU16:
	mov	r6,%r0
	b	.LU17
.LU17:
	mov	r4,r6
	add	r4,r4,#0
	mov	r4,r4
	b	.LU19
.LU19:
	mov	r4,r6
	add	r4,r4,#4
	mov	r5,r4
	mov	r4,#0
	cmp	r5,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU20
	b	.LU21
.LU20:
	mov	r4,r7
	mov	r4,r6
	add	r4,r4,#0
	mov	r4,r4
	mov	%r0,r4
	mov	%r1,r4
	bl	biggest
	mov	r4,%r0
	mov	r4,r6
	add	r4,r4,#4
	mov	r4,r4
	b	.LU19
.LU21:
	mov	r4,r7
	b	.LU18
.LU18:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  biggestInList, .-biggestInList

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4}
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	sub	fp,sp,r9
.LU23:
	b	.LU24
.LU24:
	bl	getIntList
	mov	r4,%r0
	mov	r4,r5
	mov	%r0,r4
	bl	biggestInList
	mov	r4,%r0
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU25
.LU25:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	add	fp,sp,r9
	pop	{r4}
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
