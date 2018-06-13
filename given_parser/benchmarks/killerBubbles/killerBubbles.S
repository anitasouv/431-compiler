	.arch armv7-a
	.comm  swapped,4,4
	.text
	.align  2
	.global compare
compare:
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
	ldr	r7, [r9]
	add	r6,r7,#0
	ldr	r8, [r6]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r4,r8,r10
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
	.size  compare, .-compare

	.align  2
	.global deathSort
deathSort:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:108
	movt	r10, #:upper16:108
	sub	sp,sp,r10
.LU6:
	sub	r9, fp, #20
	str	%r0, [r9]
	b	.LU7
.LU7:
	sub	r9, fp, #8
	mov	r10, #1
	str	r10, [r9]
	b	.LU9
.LU9:
	sub	r9, fp, #8
	ldr	r8, [r9]
	mov	r4,#0
	cmp	r8,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU10
	b	.LU11
.LU10:
	sub	r9, fp, #8
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	b	.LU12
.LU12:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
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
	movne	r4,#1
	cmp	r4,#1
	beq	.LU13
	b	.LU14
.LU13:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r10, [r6]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r1,r10
	bl	compare
	mov	r5,%r0
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU15
	b	.LU16
.LU15:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r9, [r9]
	add	r7,r9,#0
	sub	r10, fp, #72
	ldr	r10, [r10]
	str	r10, [r7]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r10, [r6]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r5,r9,#0
	sub	r10, fp, #80
	ldr	r10, [r10]
	str	r10, [r5]
	sub	r9, fp, #8
	mov	r10, #1
	str	r10, [r9]
	b	.LU17
.LU16:
	b	.LU17
.LU17:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	b	.LU12
.LU14:
	b	.LU9
.LU11:
	b	.LU8
.LU8:
	movw	r10, #:lower16:108
	movt	r10, #:upper16:108
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  deathSort, .-deathSort

	.align  2
	.global printEVILList
printEVILList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	sub	sp,sp,r10
.LU19:
	sub	r9, fp, #16
	str	%r0, [r9]
	b	.LU20
.LU20:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r8, [r6]
	sub	r9, fp, #12
	str	r8, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	add	r4,r9,#0
	ldr	r7, [r4]
	mov	%r1,r7
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU22
.LU22:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r9, [r9]
	cmp	r10,r9
	movne	r4,#1
	cmp	r4,#1
	beq	.LU23
	b	.LU24
.LU23:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r6,r9,#0
	ldr	r10, [r6]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	b	.LU22
.LU24:
	b	.LU21
.LU21:
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  printEVILList, .-printEVILList

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:160
	movt	r10, #:upper16:160
	sub	sp,sp,r10
.LU26:
	b	.LU27
.LU27:
	sub	r9, fp, #8
	mov	r10, #666
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r8, [r9]
	sub	r9, fp, #24
	str	r8, [r9]
	sub	r9, fp, #24
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	movle	r4,#1
	cmp	r4,#1
	beq	.LU29
	b	.LU30
.LU29:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #12
	b	.LU28
.LU30:
	b	.LU31
.LU31:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	movw	r10, #:lower16:1000
	movt	r10, #:upper16:1000
	mul	r10,r9,r10
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #52
	str	%r0, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	add	r6,r9,#8
	sub	r10, fp, #60
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	b	.LU32
.LU32:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #80
	ldr	r10, [r10]
	cmp	r10,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU33
	b	.LU34
.LU33:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #60
	str	%r0, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r9, fp, #112
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #132
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r9, fp, #108
	ldr	r9, [r9]
	add	r6,r9,#8
	sub	r10, fp, #104
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r10, fp, #100
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r9, fp, #116
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU32
.LU34:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r10, fp, #144
	ldr	r10, [r10]
	mov	%r0,r10
	bl	deathSort
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #136
	str	r10, [r9]
	sub	r10, fp, #136
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printEVILList
	sub	r9, fp, #12
	mov	r10, #0
	b	.LU28
.LU28:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:160
	movt	r10, #:upper16:160
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
