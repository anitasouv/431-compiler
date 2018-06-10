                  map2: 
[]
	.arch armv7-a
	.comm  globalfoo,4,4
	.text
                  map2: 
[%u=6, %u0=8, %u1=7, %u2=5, %u3=4, %u4=3, %i=9, %u5=2, %u6=1, %u7=0, @globalfoo=0]
	.align  2
	.global assignment
assignment:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:36
	movt	r9, #:upper16:36
	sub	sp,sp,r9
.LU2:
	mov	r4,#0
	b	.LU3
.LU3:
	mov	r10,#0
	sub	r9, fp, #20
	str	r10, [r9]
	mov	%r0,#12
	bl	malloc
	mov	r10,%r0
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	add	r8,r10,#0
	mov	r8,#3
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r7,r10
	add	r6,r7,#0
	mov	r5,r6
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU4
                  map2: 
[]
.LU4:
	movw	r9, #:lower16:36
	movt	r9, #:upper16:36
	add	sp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  assignment, .-assignment

                  map2: 
[@globalfoo=0]
	.align  2
	.global testPrint
testPrint:
	push	{fp,lr}
	add	fp,sp,#4
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	sub	sp,sp,r9
.LU6:
	mov	r4,#0
	b	.LU7
.LU7:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	%r1,#3
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU8
                  map2: 
[]
.LU8:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	add	sp,sp,r9
	pop	{fp,pc}
	.size  testPrint, .-testPrint

                  map2: 
[%u8=2, %i=0, @globalfoo=0, @_scanned_=1]
	.align  2
	.global testRead
testRead:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5}
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	sub	sp,sp,r9
.LU10:
	mov	r4,#0
	b	.LU11
.LU11:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r5, #:lower16:_scanned_
	movt	r5, #:upper16:_scanned_
	ldr	r6, [r5]
	mov	r4,r6
	b	.LU12
                  map2: 
[]
.LU12:
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	add	sp,sp,r9
	pop	{r4,r5}
	pop	{fp,pc}
	.size  testRead, .-testRead

                  map2: 
[%u9=3, %a=1, %u10=0, @globalfoo=0, @_scanned_=2]
	.align  2
	.global testReadThenPrint
testReadThenPrint:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	sp,sp,r9
.LU14:
	mov	r4,#0
	b	.LU15
.LU15:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r6, #:lower16:_scanned_
	movt	r6, #:upper16:_scanned_
	ldr	r7, [r6]
	mov	r5,r7
	mov	r4,r5
	mov	%r1,r4
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU16
                  map2: 
[]
.LU16:
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	sp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  testReadThenPrint, .-testReadThenPrint

                  map2: 
[%u13=4, %u14=3, %u11=7, %u12=6, %u17=0, %u15=2, %u16=1, @globalfoo=0, %d=5]
	.align  2
	.global dotExpression
dotExpression:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	sub	sp,sp,r9
.LU18:
	mov	r4,#0
	b	.LU19
.LU19:
	mov	%r0,#4
	bl	malloc
	mov	r10,%r0
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r8,r10
	add	r7,r8,#0
	mov	r7,#0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r6,r10
	add	r5,r6,#0
	mov	r4,r5
	mov	%r1,r4
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	b	.LU20
                  map2: 
[]
.LU20:
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	add	sp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  dotExpression, .-dotExpression

                  map2: 
[=0, @globalfoo=0]
	.align  2
	.global functionCall
functionCall:
	push	{fp,lr}
	add	fp,sp,#4
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	sub	sp,sp,r9
.LU22:
	mov	r4,#0
	b	.LU23
.LU23:
	bl	dotExpression
	mov	r4,%r0
	b	.LU24
                  map2: 
[]
.LU24:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	add	sp,sp,r9
	pop	{fp,pc}
	.size  functionCall, .-functionCall

                  map2: 
[%x=4, %y=5, %_P_y=2, %u19=1, %_P_x=3, %u20=0, @globalfoo=0]
	.align  2
	.global parameterPassing
parameterPassing:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	sp,sp,r9
.LU26:
	mov	r8,r7
	mov	r10,r6
	sub	r9, fp, #4
	str	r10, [r9]
	mov	r8,%r0
	mov	r10,%r1
	sub	r9, fp, #4
	str	r10, [r9]
	mov	r4,#0
	b	.LU27
.LU27:
	mov	r5,r8
	mov	%r1,r5
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU28
                  map2: 
[]
.LU28:
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	sp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  parameterPassing, .-parameterPassing

                  map2: 
[=0, @globalfoo=0]
	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	sub	sp,sp,r9
.LU30:
	mov	r4,#0
	b	.LU31
.LU31:
	bl	testReadThenPrint
	mov	r4,%r0
	mov	%r0,#5
	mov	%r1,#6
	bl	parameterPassing
	mov	r4,%r0
	bl	assignment
	mov	r4,%r0
	b	.LU32
                  map2: 
[]
.LU32:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	add	sp,sp,r9
	pop	{fp,pc}
	.size  main, .-main

                  map2: 
[]
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
