	.arch armv7-a
	.comm  peg1,4,4
	.comm  peg2,4,4
	.comm  peg3,4,4
	.comm  numMoves,4,4
	.text
	.align  2
	.global move
move:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:136
	movt	r10, #:upper16:136
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #12
	str	%r0, [r9]
	sub	r9, fp, #4
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #12
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #8
	ldr	r8, [r9]
	sub	r9, fp, #20
	str	r8, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	b	.LU10
.LU6:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #48
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU7
	b	.LU8
	b	.LU10
.LU10:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #52
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU11
	b	.LU12
.LU11:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #56
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	b	.LU16
.LU12:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #68
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU13
	b	.LU14
	b	.LU16
.LU16:
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #32
	str	r4, [r9]
	b	.LU4
.LU13:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #76
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	b	.LU15
.LU15:
	b	.LU16
.LU14:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #88
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r10, fp, #96
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	b	.LU15
.LU7:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r10, fp, #104
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r9, fp, #108
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r10, fp, #100
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	b	.LU9
.LU9:
	b	.LU10
.LU8:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r10, fp, #116
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r9, fp, #112
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r10, fp, #120
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	b	.LU9
.LU4:
	movw	r10, #:lower16:136
	movt	r10, #:upper16:136
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  move, .-move

	.align  2
	.global hanoi
hanoi:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:88
	movt	r10, #:upper16:88
	sub	sp,sp,r10
.LU18:
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r9, fp, #16
	str	%r1, [r9]
	sub	r9, fp, #4
	str	%r2, [r9]
	sub	r9, fp, #32
	str	%r3, [r9]
	b	.LU19
.LU19:
	sub	r9, fp, #24
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU21
	b	.LU22
.LU21:
	sub	r9, fp, #16
	ldr	r7, [r9]
	sub	r9, fp, #4
	ldr	r8, [r9]
	mov	%r0,r7
	mov	%r1,r8
	bl	move
	b	.LU23
.LU22:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	mov	%r0,r5
	sub	r10, fp, #68
	ldr	r10, [r10]
	mov	%r1,r10
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r2,r10
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r3,r10
	bl	hanoi
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r1,r10
	bl	move
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	mov	%r0,r4
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r1,r10
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r2,r10
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r3,r10
	bl	hanoi
	b	.LU23
.LU23:
	b	.LU20
.LU20:
	movw	r10, #:lower16:88
	movt	r10, #:upper16:88
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  hanoi, .-hanoi

	.align  2
	.global printPeg
printPeg:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	sub	sp,sp,r10
.LU25:
	sub	r9, fp, #12
	str	%r0, [r9]
	b	.LU26
.LU26:
	sub	r9, fp, #12
	ldr	r7, [r9]
	sub	r9, fp, #4
	str	r7, [r9]
	b	.LU28
.LU28:
	sub	r9, fp, #4
	ldr	r8, [r9]
	mov	r4,#0
	cmp	r8,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU29
	b	.LU30
.LU29:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r6,r9,#0
	ldr	r10, [r6]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	b	.LU28
.LU30:
	b	.LU27
.LU27:
	movw	r10, #:lower16:44
	movt	r10, #:upper16:44
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  printPeg, .-printPeg

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:172
	movt	r10, #:upper16:172
	sub	sp,sp,r10
.LU32:
	b	.LU33
.LU33:
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #32
	mov	r10, #0
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #40
	ldr	r10, [r10]
	cmp	r10,#1
	movge	r4,#1
	cmp	r4,#1
	beq	.LU35
	b	.LU42
.LU35:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	b	.LU36
.LU42:
	b	.LU43
.LU36:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #52
	ldr	r10, [r10]
	cmp	r10,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU37
	b	.LU38
.LU37:
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #40
	str	%r0, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	r8,r10
	sub	r9, fp, #36
	str	r8, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r7,r9,#0
	sub	r10, fp, #64
	ldr	r10, [r10]
	str	r10, [r7]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #76
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU36
.LU38:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r10, fp, #96
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printPeg
	mov	%r1,#2
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printPeg
	mov	%r1,#3
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r10, fp, #108
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printPeg
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r10, fp, #104
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#1
	mov	%r2,#3
	mov	%r3,#2
	bl	hanoi
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printPeg
	mov	%r1,#2
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printPeg
	mov	%r1,#3
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r10, fp, #100
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printPeg
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU39
.LU39:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #140
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #140
	ldr	r10, [r10]
	sub	r9, fp, #8
	ldr	r9, [r9]
	cmp	r10,r9
	movne	r4,#1
	cmp	r4,#1
	beq	.LU40
	b	.LU41
.LU40:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r10, fp, #144
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r9, fp, #152
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #156
	str	r10, [r9]
	sub	r10, fp, #156
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	b	.LU39
.LU41:
	b	.LU43
.LU43:
	sub	r9, fp, #20
	mov	r10, #0
	b	.LU34
.LU34:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:172
	movt	r10, #:upper16:172
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
