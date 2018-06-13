	.arch armv7-a
	.comm  interval,4,4
	.comm  end,4,4
	.text
	.align  2
	.global multBy4xTimes
multBy4xTimes:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #4
	str	%r0, [r9]
	sub	r9, fp, #20
	str	%r1, [r9]
	b	.LU3
.LU3:
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,#0
	movle	r4,#1
	cmp	r4,#1
	beq	.LU5
	b	.LU6
.LU5:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #12
	b	.LU4
.LU6:
	b	.LU7
.LU7:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	sub	r10, fp, #52
	ldr	r10, [r10]
	mul	r8,r9,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	str	r8, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r7,r9,r10
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,r7
	bl	multBy4xTimes
	mov	r6,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #12
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  multBy4xTimes, .-multBy4xTimes

	.align  2
	.global divideBy8
divideBy8:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU9:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU10
.LU10:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r8,r9,#0
	str	r7, [r8]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	add	r6,r9,#0
	ldr	r10, [r6]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r5,r9,#0
	str	r4, [r5]
	b	.LU11
.LU11:
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  divideBy8, .-divideBy8

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:200
	movt	r10, #:upper16:200
	sub	sp,sp,r10
.LU13:
	b	.LU14
.LU14:
	mov	%r0,#4
	bl	malloc
	mov	r7,%r0
	mov	r6,r7
	sub	r9, fp, #4
	str	r6, [r9]
	sub	r9, fp, #12
	mov	r10, #1000000
	str	r10, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r8, [r9]
	sub	r9, fp, #8
	str	r8, [r9]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #28
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #40
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #36
	mov	r10, #0
	str	r10, [r9]
	b	.LU16
.LU16:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #76
	ldr	r10, [r10]
	cmp	r10,#50
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU17
	b	.LU18
.LU17:
	sub	r9, fp, #40
	mov	r10, #0
	str	r10, [r9]
	b	.LU19
.LU19:
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #84
	ldr	r10, [r10]
	sub	r9, fp, #80
	ldr	r9, [r9]
	cmp	r10,r9
	movle	r4,#1
	cmp	r4,#1
	beq	.LU20
	b	.LU21
.LU20:
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	mul	r10,r9,r10
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r9, [r9]
	movw	r10, #:lower16:3
	movt	r10, #:upper16:3
	mul	r10,r9,r10
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r9, [r9]
	movw	r10, #:lower16:4
	movt	r10, #:upper16:4
	mul	r10,r9,r10
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r9, [r9]
	movw	r10, #:lower16:5
	movt	r10, #:upper16:5
	mul	r10,r9,r10
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r9, [r9]
	movw	r10, #:lower16:6
	movt	r10, #:upper16:6
	mul	r10,r9,r10
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r9, [r9]
	movw	r10, #:lower16:7
	movt	r10, #:upper16:7
	mul	r10,r9,r10
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r9, [r9]
	movw	r10, #:lower16:8
	movt	r10, #:upper16:8
	mul	r10,r9,r10
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	movw	r10, #:lower16:9
	movt	r10, #:upper16:9
	mul	r10,r9,r10
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	movw	r10, #:lower16:10
	movt	r10, #:upper16:10
	mul	r10,r9,r10
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	movw	r10, #:lower16:11
	movt	r10, #:upper16:11
	mul	r10,r9,r10
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r10,r9,r10
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r9, fp, #108
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #100
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #160
	str	r10, [r9]
	sub	r9, fp, #160
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r10, fp, #152
	ldr	r10, [r10]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r10, fp, #96
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	multBy4xTimes
	mov	r7,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r0,r10
	bl	divideBy8
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r9, fp, #104
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r6,r9,r10
	sub	r9, fp, #16
	str	r6, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #156
	str	r10, [r9]
	mov	r5,#0
	sub	r10, fp, #156
	ldr	r10, [r10]
	cmp	r10,#0
	movle	r5,#1
	sub	r9, fp, #32
	str	r5, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #148
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #148
	ldr	r10, [r10]
	cmp	r10,#0
	movle	r4,#1
	cmp	r4,#1
	beq	.LU22
	b	.LU23
.LU22:
	sub	r9, fp, #16
	mov	r10, #1
	str	r10, [r9]
	b	.LU24
.LU23:
	b	.LU24
.LU24:
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #164
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #168
	str	r10, [r9]
	sub	r9, fp, #164
	ldr	r9, [r9]
	sub	r10, fp, #168
	ldr	r10, [r10]
	add	r4,r9,r10
	sub	r9, fp, #40
	str	r4, [r9]
	b	.LU19
.LU21:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #172
	str	r10, [r9]
	sub	r9, fp, #172
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #28
	str	r4, [r9]
	b	.LU16
.LU18:
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #176
	str	r10, [r9]
	sub	r10, fp, #176
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #184
	str	r10, [r9]
	sub	r10, fp, #184
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #20
	mov	r10, #0
	b	.LU15
.LU15:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:200
	movt	r10, #:upper16:200
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
