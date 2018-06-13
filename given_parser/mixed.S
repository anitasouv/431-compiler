	.arch armv7-a
	.comm  globalfoo,4,4
	.text
	.align  2
	.global tailrecursive
tailrecursive:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU2:
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	str	%r0, [r9]
	mov	r4,#0
	b	.LU3
.LU3:
	sub	r10, fp, #8
	ldr	r10, [r10]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	movle	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	b	.LU4
.LU6:
	b	.LU7
.LU7:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #12
	str	%r0, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	r8,r10
	mov	r7,r8
	sub	r10, fp, #8
	ldr	r10, [r10]
	mov	r6,r10
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r6,r10
	mov	%r0,r5
	bl	tailrecursive
	mov	r4,%r0
	b	.LU4
.LU4:
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  tailrecursive, .-tailrecursive

	.align  2
	.global add
add:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU9:
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #12
	str	r8, [r9]
	sub	r9, fp, #8
	str	%r0, [r9]
	sub	r9, fp, #12
	str	%r1, [r9]
	mov	r4,#0
	b	.LU10
.LU10:
	sub	r10, fp, #8
	ldr	r10, [r10]
	mov	r7,r10
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	r6,r10
	add	r5,r7,r6
	mov	r4,r5
	b	.LU11
.LU11:
	mov	r4,r5
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  add, .-add

	.align  2
	.global domath
domath:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:132
	movt	r10, #:upper16:132
	sub	sp,sp,r10
.LU13:
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	str	%r0, [r9]
	mov	r4,#0
	b	.LU14
.LU14:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #116
	str	%r0, [r9]
	sub	r10, fp, #116
	ldr	r10, [r10]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r10, fp, #112
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	mov	%r0,#4
	bl	malloc
	sub	r9, fp, #104
	str	%r0, [r9]
	sub	r10, fp, #104
	ldr	r10, [r10]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #88
	str	r10, [r10]
	sub	r10, fp, #92
	ldr	r10, [r10]
	sub	r9, fp, #88
	ldr	r9, [r9]
	str	r10, [r9]
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #84
	str	%r0, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	mov	%r0,#4
	bl	malloc
	sub	r9, fp, #72
	str	%r0, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #60
	str	r10, [r10]
	sub	r10, fp, #64
	ldr	r10, [r10]
	sub	r9, fp, #60
	ldr	r9, [r9]
	str	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #48
	str	r10, [r10]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #48
	ldr	r9, [r9]
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #40
	str	r10, [r10]
	sub	r9, fp, #40
	ldr	r9, [r9]
	mov	r10, #3
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #32
	str	r10, [r10]
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #24
	str	r10, [r10]
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #24
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #20
	str	r10, [r10]
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r8,r9,#0
	sub	r10, fp, #8
	ldr	r10, [r10]
	ldr	r10, [r8]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	r7,r10
	add	r6,r7,#8
	sub	r10, fp, #16
	ldr	r10, [r10]
	ldr	r10, [r6]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r5,r9,#0
	sub	r10, fp, #8
	ldr	r10, [r10]
	str	r10, [r5]
	b	.LU16
.LU16:
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU17
	b	.LU18
.LU17:
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #92
	str	r10, [r10]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #92
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #84
	str	r10, [r10]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #84
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r10, fp, #80
	str	r10, [r10]
	sub	r10, fp, #80
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #68
	str	r10, [r10]
	sub	r10, fp, #64
	ldr	r10, [r10]
	sub	r9, fp, #68
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #64
	str	r10, [r10]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #64
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r9, fp, #76
	ldr	r9, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r10, fp, #60
	str	r10, [r10]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #52
	str	r10, [r10]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #44
	str	r10, [r10]
	sub	r10, fp, #80
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r9, fp, #80
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #36
	str	r10, [r10]
	sub	r10, fp, #68
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #28
	str	r10, [r10]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r1,r10
	bl	add
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #16
	str	r10, [r10]
	sub	r10, fp, #76
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	ldr	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r8,r9,#0
	sub	r10, fp, #72
	ldr	r10, [r10]
	ldr	r10, [r8]
	sub	r9, fp, #76
	ldr	r9, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	sub	r7,r9,r10
	sub	r9, fp, #40
	str	r7, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	r6,r10
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r6,r10
	sub	r9, fp, #12
	str	r5, [r9]
	b	.LU16
.LU18:
	b	.LU15
.LU15:
	movw	r10, #:lower16:132
	movt	r10, #:upper16:132
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  domath, .-domath

	.align  2
	.global objinstantiation
objinstantiation:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU20:
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	str	%r0, [r9]
	mov	r4,#0
	b	.LU21
.LU21:
	b	.LU23
.LU23:
	sub	r10, fp, #8
	ldr	r10, [r10]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU24
	b	.LU25
.LU24:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #12
	str	%r0, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	r8,r10
	mov	r7,r8
	sub	r10, fp, #8
	ldr	r10, [r10]
	mov	r6,r10
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r6,r10
	sub	r9, fp, #8
	str	r5, [r9]
	b	.LU23
.LU25:
	b	.LU22
.LU22:
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  objinstantiation, .-objinstantiation

	.align  2
	.global ackermann
ackermann:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	sub	sp,sp,r10
.LU27:
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #12
	str	%r0, [r9]
	sub	r9, fp, #16
	str	%r1, [r9]
	mov	r4,#0
	b	.LU28
.LU28:
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU30
	b	.LU31
.LU30:
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	r6,r10
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r5,r6,r10
	mov	r4,r5
	b	.LU29
.LU31:
	b	.LU32
.LU32:
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU33
	b	.LU34
.LU33:
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	r7,r10
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r6,r7,r10
	mov	%r0,r6
	mov	%r1,#1
	bl	ackermann
	mov	r5,%r0
	mov	r4,r5
	b	.LU29
.LU34:
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r10,r9,r10
	sub	r10, fp, #20
	str	r10, [r10]
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	r8,r10
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r7,r8,r10
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r7
	bl	ackermann
	mov	r6,%r0
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r6
	bl	ackermann
	mov	r5,%r0
	mov	r4,r5
	b	.LU29
.LU35:
	b	.LU29
.LU29:
	mov	r4,r5
	mov	%r0,r4
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  ackermann, .-ackermann

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
	sub	sp,sp,r10
.LU37:
	mov	r4,#0
	b	.LU38
.LU38:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #20
	ldr	r10, [r10]
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #16
	ldr	r10, [r10]
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #12
	ldr	r10, [r10]
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #48
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #8
	ldr	r10, [r10]
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r10, fp, #8
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #4
	ldr	r10, [r10]
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r10, fp, #4
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r0,r10
	bl	tailrecursive
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r0,r10
	bl	domath
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	mov	%r0,r10
	bl	objinstantiation
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	r8,r10
	mov	%r1,r8
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	r7,r10
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	r6,r10
	mov	%r0,r7
	mov	%r1,r6
	bl	ackermann
	mov	r5,%r0
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r4,#0
	b	.LU39
.LU39:
	mov	r4,r5
	mov	%r0,r4
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
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
