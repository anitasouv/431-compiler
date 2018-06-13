	.arch armv7-a
	.text
	.align  2
	.global cleanBoard
cleanBoard:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r10,r9,#12
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r8,r9,#16
	mov	r10, #0
	str	r10, [r8]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r7,r9,#20
	mov	r10, #0
	str	r10, [r7]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r6,r9,#24
	mov	r10, #0
	str	r10, [r6]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r5,r9,#28
	mov	r10, #0
	str	r10, [r5]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r4,r9,#32
	mov	r10, #0
	str	r10, [r4]
	b	.LU4
.LU4:
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  cleanBoard, .-cleanBoard

	.align  2
	.global printBoard
printBoard:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:96
	movt	r10, #:upper16:96
	sub	sp,sp,r10
.LU6:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU7
.LU7:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r10,r9,#4
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	add	r10,r9,#12
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r9, [r9]
	add	r8,r9,#16
	ldr	r10, [r8]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r7,r9,#20
	ldr	r10, [r7]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	add	r6,r9,#24
	ldr	r10, [r6]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r5,r9,#28
	ldr	r10, [r5]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r4,r9,#32
	ldr	r10, [r4]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU8
.LU8:
	movw	r10, #:lower16:96
	movt	r10, #:upper16:96
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  printBoard, .-printBoard

	.align  2
	.global printMoveBoard
printMoveBoard:
	push	{fp,lr}
	add	fp,sp,#4
.LU10:
	b	.LU11
.LU11:
	mov	%r1,#123
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	%r1,#456
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	%r1,#789
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU12
.LU12:
	pop	{fp,pc}
	.size  printMoveBoard, .-printMoveBoard

	.align  2
	.global placePiece
placePiece:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:148
	movt	r10, #:upper16:148
	sub	sp,sp,r10
.LU14:
	sub	r9, fp, #16
	str	%r0, [r9]
	sub	r9, fp, #20
	str	%r1, [r9]
	sub	r9, fp, #12
	str	%r2, [r9]
	b	.LU15
.LU15:
	sub	r9, fp, #12
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU17
	b	.LU18
.LU17:
	sub	r9, fp, #20
	ldr	r7, [r9]
	sub	r9, fp, #16
	ldr	r8, [r9]
	add	r5,r8,#0
	str	r7, [r5]
	b	.LU43
.LU18:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #28
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU19
	b	.LU20
	b	.LU43
.LU43:
	b	.LU16
.LU19:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r5,r9,#4
	sub	r10, fp, #36
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU42
.LU42:
	b	.LU43
.LU20:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #40
	ldr	r10, [r10]
	cmp	r10,#3
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU21
	b	.LU22
	b	.LU42
.LU21:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r5,r9,#8
	sub	r10, fp, #44
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU41
.LU22:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #52
	ldr	r10, [r10]
	cmp	r10,#4
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU23
	b	.LU24
	b	.LU41
.LU41:
	b	.LU42
.LU23:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r5,r9,#12
	sub	r10, fp, #56
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU40
.LU40:
	b	.LU41
.LU24:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #64
	ldr	r10, [r10]
	cmp	r10,#5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU25
	b	.LU26
	b	.LU40
.LU25:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r5,r9,#16
	sub	r10, fp, #72
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU39
.LU26:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #76
	ldr	r10, [r10]
	cmp	r10,#6
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU27
	b	.LU28
	b	.LU39
.LU39:
	b	.LU40
.LU27:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r9, [r9]
	add	r5,r9,#20
	sub	r10, fp, #80
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU38
.LU38:
	b	.LU39
.LU28:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #88
	ldr	r10, [r10]
	cmp	r10,#7
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU29
	b	.LU30
	b	.LU38
.LU29:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r9, [r9]
	add	r5,r9,#24
	sub	r10, fp, #92
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU37
.LU30:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #100
	ldr	r10, [r10]
	cmp	r10,#8
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU31
	b	.LU32
	b	.LU37
.LU37:
	b	.LU38
.LU31:
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
	add	r5,r9,#28
	sub	r10, fp, #104
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU36
.LU36:
	b	.LU37
.LU32:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #112
	ldr	r10, [r10]
	cmp	r10,#9
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU33
	b	.LU34
	b	.LU36
.LU33:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r9, fp, #128
	ldr	r9, [r9]
	add	r5,r9,#32
	sub	r10, fp, #132
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU35
.LU34:
	b	.LU35
.LU35:
	b	.LU36
.LU16:
	movw	r10, #:lower16:148
	movt	r10, #:upper16:148
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  placePiece, .-placePiece

	.align  2
	.global checkWinner
checkWinner:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:316
	movt	r10, #:upper16:316
	sub	sp,sp,r10
.LU45:
	sub	r9, fp, #12
	str	%r0, [r9]
	b	.LU46
.LU46:
	sub	r9, fp, #12
	ldr	r6, [r9]
	add	r5,r6,#0
	ldr	r7, [r5]
	mov	r4,#0
	cmp	r7,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU48
	b	.LU55
.LU48:
	sub	r9, fp, #12
	ldr	r8, [r9]
	add	r5,r8,#4
	ldr	r10, [r5]
	sub	r9, fp, #16
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #16
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU49
	b	.LU53
	b	.LU56
.LU55:
	b	.LU56
.LU49:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU50
	b	.LU51
	b	.LU54
.LU50:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU47
.LU51:
	b	.LU52
.LU52:
	b	.LU54
.LU54:
	b	.LU56
.LU56:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #28
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #28
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU57
	b	.LU64
.LU57:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #36
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #36
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU58
	b	.LU62
	b	.LU65
.LU64:
	b	.LU65
.LU58:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #44
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #44
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU59
	b	.LU60
	b	.LU63
.LU59:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU47
.LU60:
	b	.LU61
.LU61:
	b	.LU63
.LU63:
	b	.LU65
.LU65:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r5,r9,#12
	ldr	r10, [r5]
	sub	r9, fp, #52
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #52
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU66
	b	.LU73
.LU66:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r5,r9,#16
	ldr	r10, [r5]
	sub	r9, fp, #60
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #60
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU67
	b	.LU71
	b	.LU74
.LU73:
	b	.LU74
.LU67:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	add	r5,r9,#20
	ldr	r10, [r5]
	sub	r9, fp, #68
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #68
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU68
	b	.LU69
	b	.LU72
.LU68:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU47
.LU69:
	b	.LU70
.LU70:
	b	.LU72
.LU72:
	b	.LU74
.LU74:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r9, [r9]
	add	r5,r9,#12
	ldr	r10, [r5]
	sub	r9, fp, #76
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #76
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU75
	b	.LU82
.LU75:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r9, [r9]
	add	r5,r9,#16
	ldr	r10, [r5]
	sub	r9, fp, #88
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #88
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU76
	b	.LU80
	b	.LU83
.LU82:
	b	.LU83
.LU76:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r9, [r9]
	add	r5,r9,#20
	ldr	r10, [r5]
	sub	r9, fp, #92
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #92
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU77
	b	.LU78
	b	.LU81
.LU77:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU47
.LU78:
	b	.LU79
.LU79:
	b	.LU81
.LU81:
	b	.LU83
.LU83:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r9, fp, #116
	ldr	r9, [r9]
	add	r5,r9,#24
	ldr	r10, [r5]
	sub	r9, fp, #100
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #100
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU84
	b	.LU91
.LU84:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r9, fp, #120
	ldr	r9, [r9]
	add	r5,r9,#28
	ldr	r10, [r5]
	sub	r9, fp, #124
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #124
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU85
	b	.LU89
	b	.LU92
.LU91:
	b	.LU92
.LU85:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #132
	ldr	r9, [r9]
	add	r5,r9,#32
	ldr	r10, [r5]
	sub	r9, fp, #128
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #128
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU86
	b	.LU87
	b	.LU90
.LU86:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU47
.LU87:
	b	.LU88
.LU88:
	b	.LU90
.LU90:
	b	.LU92
.LU92:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #140
	str	r10, [r9]
	sub	r9, fp, #140
	ldr	r9, [r9]
	add	r5,r9,#24
	ldr	r10, [r5]
	sub	r9, fp, #136
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #136
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU93
	b	.LU100
.LU93:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #148
	str	r10, [r9]
	sub	r9, fp, #148
	ldr	r9, [r9]
	add	r5,r9,#28
	ldr	r10, [r5]
	sub	r9, fp, #144
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #144
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU94
	b	.LU98
	b	.LU101
.LU100:
	b	.LU101
.LU94:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #156
	str	r10, [r9]
	sub	r9, fp, #156
	ldr	r9, [r9]
	add	r5,r9,#32
	ldr	r10, [r5]
	sub	r9, fp, #152
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #152
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU95
	b	.LU96
	b	.LU99
.LU95:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU47
.LU96:
	b	.LU97
.LU97:
	b	.LU99
.LU99:
	b	.LU101
.LU101:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #164
	str	r10, [r9]
	sub	r9, fp, #164
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #160
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #160
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU102
	b	.LU109
.LU102:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #172
	str	r10, [r9]
	sub	r9, fp, #172
	ldr	r9, [r9]
	add	r5,r9,#12
	ldr	r10, [r5]
	sub	r9, fp, #168
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #168
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU103
	b	.LU107
	b	.LU110
.LU109:
	b	.LU110
.LU103:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #180
	str	r10, [r9]
	sub	r9, fp, #180
	ldr	r9, [r9]
	add	r5,r9,#24
	ldr	r10, [r5]
	sub	r9, fp, #176
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #176
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU104
	b	.LU105
	b	.LU108
.LU104:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU47
.LU105:
	b	.LU106
.LU106:
	b	.LU108
.LU108:
	b	.LU110
.LU110:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #184
	str	r10, [r9]
	sub	r9, fp, #184
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #188
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #188
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU111
	b	.LU118
.LU111:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #196
	str	r10, [r9]
	sub	r9, fp, #196
	ldr	r9, [r9]
	add	r5,r9,#12
	ldr	r10, [r5]
	sub	r9, fp, #192
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #192
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU112
	b	.LU116
	b	.LU119
.LU118:
	b	.LU119
.LU112:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #204
	str	r10, [r9]
	sub	r9, fp, #204
	ldr	r9, [r9]
	add	r5,r9,#24
	ldr	r10, [r5]
	sub	r9, fp, #200
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #200
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU113
	b	.LU114
	b	.LU117
.LU113:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU47
.LU114:
	b	.LU115
.LU115:
	b	.LU117
.LU117:
	b	.LU119
.LU119:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #208
	str	r10, [r9]
	sub	r9, fp, #208
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #212
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #212
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU120
	b	.LU127
.LU120:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #220
	str	r10, [r9]
	sub	r9, fp, #220
	ldr	r9, [r9]
	add	r5,r9,#16
	ldr	r10, [r5]
	sub	r9, fp, #216
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #216
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU121
	b	.LU125
	b	.LU128
.LU127:
	b	.LU128
.LU121:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #228
	str	r10, [r9]
	sub	r9, fp, #228
	ldr	r9, [r9]
	add	r5,r9,#28
	ldr	r10, [r5]
	sub	r9, fp, #224
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #224
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU122
	b	.LU123
	b	.LU126
.LU122:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU47
.LU123:
	b	.LU124
.LU124:
	b	.LU126
.LU126:
	b	.LU128
.LU128:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #236
	str	r10, [r9]
	sub	r9, fp, #236
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #232
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #232
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU129
	b	.LU136
.LU129:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #244
	str	r10, [r9]
	sub	r9, fp, #244
	ldr	r9, [r9]
	add	r5,r9,#16
	ldr	r10, [r5]
	sub	r9, fp, #240
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #240
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU130
	b	.LU134
	b	.LU137
.LU136:
	b	.LU137
.LU130:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #252
	str	r10, [r9]
	sub	r9, fp, #252
	ldr	r9, [r9]
	add	r5,r9,#28
	ldr	r10, [r5]
	sub	r9, fp, #248
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #248
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU131
	b	.LU132
	b	.LU135
.LU131:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU47
.LU132:
	b	.LU133
.LU133:
	b	.LU135
.LU135:
	b	.LU137
.LU137:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #260
	str	r10, [r9]
	sub	r9, fp, #260
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #256
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #256
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU138
	b	.LU145
.LU138:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #268
	str	r10, [r9]
	sub	r9, fp, #268
	ldr	r9, [r9]
	add	r5,r9,#20
	ldr	r10, [r5]
	sub	r9, fp, #264
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #264
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU139
	b	.LU143
	b	.LU146
.LU145:
	b	.LU146
.LU139:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #272
	str	r10, [r9]
	sub	r9, fp, #272
	ldr	r9, [r9]
	add	r5,r9,#32
	ldr	r10, [r5]
	sub	r9, fp, #276
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #276
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU140
	b	.LU141
	b	.LU144
.LU140:
	sub	r9, fp, #8
	mov	r10, #0
	b	.LU47
.LU141:
	b	.LU142
.LU142:
	b	.LU144
.LU144:
	b	.LU146
.LU146:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #284
	str	r10, [r9]
	sub	r9, fp, #284
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #280
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #280
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU147
	b	.LU154
.LU147:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #292
	str	r10, [r9]
	sub	r9, fp, #292
	ldr	r9, [r9]
	add	r5,r9,#20
	ldr	r10, [r5]
	sub	r9, fp, #288
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #288
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU148
	b	.LU152
	b	.LU155
.LU154:
	b	.LU155
.LU148:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #296
	str	r10, [r9]
	sub	r9, fp, #296
	ldr	r9, [r9]
	add	r5,r9,#32
	ldr	r10, [r5]
	sub	r9, fp, #300
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #300
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU149
	b	.LU150
	b	.LU153
.LU149:
	sub	r9, fp, #8
	mov	r10, #1
	b	.LU47
.LU150:
	b	.LU151
.LU151:
	b	.LU153
.LU153:
	b	.LU155
.LU155:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #8
	b	.LU47
.LU152:
	b	.LU153
.LU143:
	b	.LU144
.LU134:
	b	.LU135
.LU125:
	b	.LU126
.LU116:
	b	.LU117
.LU107:
	b	.LU108
.LU98:
	b	.LU99
.LU89:
	b	.LU90
.LU80:
	b	.LU81
.LU71:
	b	.LU72
.LU62:
	b	.LU63
.LU53:
	b	.LU54
.LU47:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:316
	movt	r10, #:upper16:316
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  checkWinner, .-checkWinner

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:100
	movt	r10, #:upper16:100
	sub	sp,sp,r10
.LU157:
	b	.LU158
.LU158:
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #24
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #0
	str	r10, [r9]
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r6,r9,r10
	sub	r9, fp, #8
	str	r6, [r9]
	mov	%r0,#36
	bl	malloc
	mov	r5,%r0
	mov	r4,r5
	sub	r9, fp, #28
	str	r4, [r9]
	sub	r9, fp, #28
	ldr	r7, [r9]
	mov	%r0,r7
	bl	cleanBoard
	b	.LU160
.LU160:
	sub	r9, fp, #8
	ldr	r8, [r9]
	mov	r6,#0
	cmp	r8,#0
	movlt	r6,#1
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	mov	r5,#0
	sub	r10, fp, #32
	ldr	r10, [r10]
	cmp	r10,#8
	movne	r5,#1
	and	r4,r6,r5
	cmp	r4,#1
	beq	.LU161
	b	.LU162
.LU161:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	bl	printBoard
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #36
	ldr	r10, [r10]
	cmp	r10,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU163
	b	.LU164
.LU163:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r5,r9,r10
	sub	r9, fp, #24
	str	r5, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#1
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r2,r10
	bl	placePiece
	b	.LU165
.LU164:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	sub	r9, fp, #24
	str	r5, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r2,r10
	bl	placePiece
	b	.LU165
.LU165:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r0,r10
	bl	checkWinner
	mov	r5,%r0
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU160
.LU162:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	mov	r10, #0
	b	.LU159
.LU159:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:100
	movt	r10, #:upper16:100
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
