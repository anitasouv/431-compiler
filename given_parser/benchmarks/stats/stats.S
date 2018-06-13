	.arch armv7-a
	.text
	.align  2
	.global getRands
getRands:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:168
	movt	r10, #:upper16:168
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #28
	str	%r0, [r9]
	sub	r9, fp, #8
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r8, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mul	r10,r8,r10
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #32
	str	r10, [r9]
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #52
	str	%r0, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r7,r9,#0
	sub	r10, fp, #52
	ldr	r10, [r10]
	str	r10, [r7]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r6,r9,#4
	sub	r10, fp, #12
	ldr	r10, [r10]
	str	r10, [r6]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	b	.LU5
.LU5:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #80
	ldr	r10, [r10]
	cmp	r10,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU6
	b	.LU7
.LU6:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r9, fp, #100
	ldr	r9, [r9]
	sub	r10, fp, #108
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r10, fp, #120
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #116
	ldr	r9, [r9]
	sub	r10, fp, #124
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r10,r9,r10
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	sub	r9, fp, #32
	str	r10, [r9]
	mov	%r0,#8
	bl	malloc
	sub	r9, fp, #60
	str	%r0, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r9, fp, #112
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #104
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #148
	str	r10, [r9]
	sub	r9, fp, #148
	ldr	r9, [r9]
	add	r7,r9,#4
	sub	r10, fp, #96
	ldr	r10, [r10]
	str	r10, [r7]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r10, fp, #144
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r9,r10
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	b	.LU5
.LU7:
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r10, fp, #152
	ldr	r10, [r10]
	sub	r9, fp, #24
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:168
	movt	r10, #:upper16:168
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  getRands, .-getRands

	.align  2
	.global calcMean
calcMean:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:84
	movt	r10, #:upper16:84
	sub	sp,sp,r10
.LU9:
	sub	r9, fp, #24
	str	%r0, [r9]
	b	.LU10
.LU10:
	sub	r9, fp, #8
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #0
	str	r10, [r9]
	b	.LU12
.LU12:
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #28
	ldr	r10, [r10]
	cmp	r10,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU13
	b	.LU14
.LU13:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r8,r9,r10
	sub	r9, fp, #4
	str	r8, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r7,r9,#0
	ldr	r10, [r7]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	add	r6,r9,r10
	sub	r9, fp, #8
	str	r6, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #24
	str	r10, [r9]
	b	.LU12
.LU14:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #56
	ldr	r10, [r10]
	cmp	r10,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU15
	b	.LU16
.LU15:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #12
	str	r4, [r9]
	b	.LU17
.LU16:
	b	.LU17
.LU17:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	sub	r9, fp, #16
	b	.LU11
.LU11:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:84
	movt	r10, #:upper16:84
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  calcMean, .-calcMean

	.align  2
	.global approxSqrt
approxSqrt:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU19:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU20
.LU20:
	sub	r9, fp, #16
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r6, [r9]
	sub	r9, fp, #8
	str	r6, [r9]
	sub	r9, fp, #12
	mov	r10, #0
	str	r10, [r9]
	b	.LU22
.LU22:
	sub	r9, fp, #12
	ldr	r8, [r9]
	sub	r9, fp, #4
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r8,r7
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU23
	b	.LU24
.LU23:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mul	r5,r9,r10
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #16
	str	r4, [r9]
	b	.LU22
.LU24:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #20
	b	.LU21
.LU21:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  approxSqrt, .-approxSqrt

	.align  2
	.global approxSqrtAll
approxSqrtAll:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	sub	sp,sp,r10
.LU26:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU27
.LU27:
	b	.LU29
.LU29:
	sub	r9, fp, #8
	ldr	r8, [r9]
	mov	r4,#0
	cmp	r8,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU30
	b	.LU31
.LU30:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r7,r9,#0
	ldr	r10, [r7]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r0,r10
	bl	approxSqrt
	mov	r6,%r0
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	b	.LU29
.LU31:
	b	.LU28
.LU28:
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  approxSqrtAll, .-approxSqrtAll

	.align  2
	.global range
range:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:108
	movt	r10, #:upper16:108
	sub	sp,sp,r10
.LU33:
	sub	r9, fp, #16
	str	%r0, [r9]
	b	.LU34
.LU34:
	sub	r9, fp, #20
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #1
	str	r10, [r9]
	b	.LU36
.LU36:
	sub	r9, fp, #16
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU37
	b	.LU38
.LU37:
	sub	r9, fp, #4
	ldr	r8, [r9]
	cmp	r8,#1
	beq	.LU39
	b	.LU40
.LU39:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r6,r9,#0
	ldr	r10, [r6]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	b	.LU47
.LU40:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r9, [r9]
	cmp	r10,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU41
	b	.LU42
	b	.LU47
.LU47:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	b	.LU36
.LU41:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	b	.LU46
.LU46:
	b	.LU47
.LU42:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #72
	ldr	r10, [r10]
	sub	r9, fp, #76
	ldr	r9, [r9]
	cmp	r10,r9
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU43
	b	.LU44
	b	.LU46
.LU43:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	b	.LU45
.LU44:
	b	.LU45
.LU45:
	b	.LU46
.LU38:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU35
.LU35:
	movw	r10, #:lower16:108
	movt	r10, #:upper16:108
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  range, .-range

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:56
	movt	r10, #:upper16:56
	sub	sp,sp,r10
.LU49:
	b	.LU50
.LU50:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
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
	ldr	r8, [r9]
	sub	r9, fp, #4
	str	r8, [r9]
	sub	r9, fp, #16
	ldr	r7, [r9]
	sub	r9, fp, #4
	ldr	r6, [r9]
	mov	%r0,r7
	mov	%r1,r6
	bl	getRands
	mov	r5,%r0
	sub	r9, fp, #20
	str	r5, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r0,r10
	bl	calcMean
	mov	r4,%r0
	sub	r9, fp, #8
	str	r4, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r0,r10
	bl	range
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	mov	%r0,r10
	bl	approxSqrtAll
	sub	r9, fp, #12
	mov	r10, #0
	b	.LU51
.LU51:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:56
	movt	r10, #:upper16:56
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
