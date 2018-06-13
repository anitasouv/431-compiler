	.arch armv7-a
	.comm  globalfoo,4,4
	.text
	.align  2
	.global passBackStruct
passBackStruct:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU3
.LU3:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #48
	str	%r0, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r7, [r9]
	add	r10,r7,#0
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	mov	r10, #3
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r8, [r9]
	mov	%r1,r8
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	%r0,#4
	bl	malloc
	mov	r6,%r0
	mov	r5,r6
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r4,r9,#0
	sub	r10, fp, #36
	ldr	r10, [r10]
	str	r10, [r4]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #12
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:68
	movt	r10, #:upper16:68
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  passBackStruct, .-passBackStruct

	.align  2
	.global assignmentToFoo
assignmentToFoo:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	sub	sp,sp,r10
.LU6:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU7
.LU7:
	mov	%r0,#12
	bl	malloc
	mov	r7,%r0
	mov	r6,r7
	sub	r9, fp, #12
	str	r6, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r5,r9,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	str	r10, [r5]
	sub	r9, fp, #12
	ldr	r8, [r9]
	add	r4,r8,#0
	ldr	r10, [r4]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU8
.LU8:
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  assignmentToFoo, .-assignmentToFoo

	.align  2
	.global assignment
assignment:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU10:
	b	.LU11
.LU11:
	sub	r9, fp, #8
	mov	r10, #0
	str	r10, [r9]
	mov	%r0,#12
	bl	malloc
	mov	r7,%r0
	mov	r6,r7
	sub	r9, fp, #4
	str	r6, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r5,r9,#0
	mov	r10, #4
	str	r10, [r5]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	add	r4,r9,#0
	ldr	r8, [r4]
	mov	%r1,r8
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU12
.LU12:
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  assignment, .-assignment

	.align  2
	.global testPrint
testPrint:
	push	{fp,lr}
	add	fp,sp,#4
.LU14:
	b	.LU15
.LU15:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	%r1,#3
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU16
.LU16:
	pop	{fp,pc}
	.size  testPrint, .-testPrint

	.align  2
	.global testRead
testRead:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	sub	sp,sp,r10
.LU18:
	b	.LU19
.LU19:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r4, [r9]
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU20
.LU20:
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  testRead, .-testRead

	.align  2
	.global ifstatement
ifstatement:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	sub	sp,sp,r10
.LU22:
	b	.LU23
.LU23:
	mov	r4,#0
	mov	r10, #1
	cmp	r10,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU25
	b	.LU26
.LU25:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU27
.LU26:
	mov	%r1,#2
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU27
.LU27:
	mov	r4,#0
	mov	r10, #1
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU28
	b	.LU29
.LU28:
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU30
.LU29:
	mov	%r1,#2
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU30
.LU30:
	b	.LU24
.LU24:
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  ifstatement, .-ifstatement

	.align  2
	.global testReadThenPrint
testReadThenPrint:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	sub	sp,sp,r10
.LU32:
	b	.LU33
.LU33:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r5, [r9]
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r4, [r9]
	mov	%r1,r4
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU34
.LU34:
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  testReadThenPrint, .-testReadThenPrint

	.align  2
	.global dotExpression
dotExpression:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU36:
	b	.LU37
.LU37:
	mov	%r0,#4
	bl	malloc
	mov	r7,%r0
	mov	r6,r7
	sub	r9, fp, #4
	str	r6, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	add	r5,r9,#0
	mov	r10, #0
	str	r10, [r5]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r9, [r9]
	add	r4,r9,#0
	ldr	r8, [r4]
	mov	%r1,r8
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU38
.LU38:
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  dotExpression, .-dotExpression

	.align  2
	.global functionCall
functionCall:
	push	{fp,lr}
	add	fp,sp,#4
.LU40:
	b	.LU41
.LU41:
	bl	dotExpression
	b	.LU42
.LU42:
	pop	{fp,pc}
	.size  functionCall, .-functionCall

	.align  2
	.global parameterPassing
parameterPassing:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	sub	sp,sp,r10
.LU44:
	sub	r9, fp, #4
	str	%r0, [r9]
	sub	r9, fp, #8
	str	%r1, [r9]
	b	.LU45
.LU45:
	sub	r9, fp, #4
	ldr	r4, [r9]
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r5, [r9]
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU46
.LU46:
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  parameterPassing, .-parameterPassing

	.align  2
	.global whileLoop
whileLoop:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	sub	sp,sp,r10
.LU48:
	b	.LU49
.LU49:
	sub	r9, fp, #4
	mov	r10, #10
	str	r10, [r9]
	b	.LU51
.LU51:
	sub	r9, fp, #4
	ldr	r5, [r9]
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU52
	b	.LU53
.LU52:
	sub	r9, fp, #4
	ldr	r7, [r9]
	mov	%r1,r7
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r6, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r6,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU51
.LU53:
	b	.LU50
.LU50:
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  whileLoop, .-whileLoop

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
	sub	sp,sp,r10
.LU55:
	b	.LU56
.LU56:
	mov	%r0,#11
	bl	assignmentToFoo
	bl	testReadThenPrint
	bl	testPrint
	mov	%r0,#5
	mov	%r1,#6
	bl	parameterPassing
	bl	assignment
	bl	ifstatement
	bl	testRead
	bl	dotExpression
	bl	functionCall
	bl	whileLoop
	mov	%r0,#2
	bl	passBackStruct
	mov	r5,%r0
	sub	r9, fp, #4
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r7, [r9]
	add	r4,r7,#0
	ldr	r6, [r4]
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU57
.LU57:
	movw	r10, #:lower16:20
	movt	r10, #:upper16:20
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
