	.arch armv7-a
	.comm  gi1,4,4
	.comm  gb1,4,4
	.comm  gs1,4,4
	.comm  counter,4,4
	.text
	.align  2
	.global printgroup
printgroup:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
	sub	sp,sp,r10
.LU2:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU3
.LU3:
	mov	%r1,#1
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	mov	%r1,#1
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	mov	%r1,#1
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #8
	ldr	r4, [r9]
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU4
.LU4:
	movw	r10, #:lower16:24
	movt	r10, #:upper16:24
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  printgroup, .-printgroup

	.align  2
	.global setcounter
setcounter:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	sub	sp,sp,r10
.LU6:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU7
.LU7:
	sub	r9, fp, #8
	ldr	r4, [r9]
	sub	r9, fp, #12
	str	r4, [r9]
	sub	r9, fp, #4
	mov	r10, #1
	b	.LU8
.LU8:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  setcounter, .-setcounter

	.align  2
	.global takealltypes
takealltypes:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	sub	sp,sp,r10
.LU10:
	sub	r9, fp, #4
	str	%r0, [r9]
	sub	r9, fp, #16
	str	%r1, [r9]
	sub	r9, fp, #20
	str	%r2, [r9]
	b	.LU11
.LU11:
	sub	r9, fp, #4
	ldr	r5, [r9]
	mov	r4,#0
	cmp	r5,#3
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU13
	b	.LU14
.LU13:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU15
.LU14:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU15
.LU15:
	sub	r9, fp, #16
	ldr	r6, [r9]
	cmp	r6,#1
	beq	.LU16
	b	.LU17
.LU16:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU18
.LU17:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU18
.LU18:
	sub	r9, fp, #20
	ldr	r7, [r9]
	add	r4,r7,#4
	ldr	r8, [r4]
	cmp	r8,#1
	beq	.LU19
	b	.LU20
.LU19:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU21
.LU20:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU21
.LU21:
	b	.LU12
.LU12:
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  takealltypes, .-takealltypes

	.align  2
	.global tonofargs
tonofargs:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:96
	movt	r10, #:upper16:96
	sub	sp,sp,r10
.LU23:
	sub	r9, fp, #8
	str	%r0, [r9]
	sub	r9, fp, #12
	str	%r1, [r9]
	sub	r9, fp, #16
	str	%r2, [r9]
	sub	r9, fp, #20
	str	%r3, [r9]
	b	.LU24
.LU24:
	sub	r9, fp, #28
	ldr	r5, [r9]
	mov	r4,#0
	cmp	r5,#5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU26
	b	.LU27
.LU26:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU28
.LU27:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #28
	ldr	r6, [r9]
	mov	%r1,r6
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU28
.LU28:
	sub	r9, fp, #36
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#6
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU29
	b	.LU30
.LU29:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU31
.LU30:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #36
	ldr	r8, [r9]
	mov	%r1,r8
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU31
.LU31:
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #68
	ldr	r10, [r10]
	cmp	r10,#7
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU32
	b	.LU33
.LU32:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU34
.LU33:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU34
.LU34:
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #76
	ldr	r10, [r10]
	cmp	r10,#8
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU35
	b	.LU36
.LU35:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU37
.LU36:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU37
.LU37:
	b	.LU25
.LU25:
	movw	r10, #:lower16:96
	movt	r10, #:upper16:96
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  tonofargs, .-tonofargs

	.align  2
	.global returnint
returnint:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU39:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU40
.LU40:
	sub	r9, fp, #8
	ldr	r4, [r9]
	sub	r9, fp, #4
	b	.LU41
.LU41:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  returnint, .-returnint

	.align  2
	.global returnbool
returnbool:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU43:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU44
.LU44:
	sub	r9, fp, #8
	ldr	r4, [r9]
	sub	r9, fp, #4
	b	.LU45
.LU45:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  returnbool, .-returnbool

	.align  2
	.global returnstruct
returnstruct:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU47:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU48
.LU48:
	sub	r9, fp, #8
	ldr	r4, [r9]
	sub	r9, fp, #4
	b	.LU49
.LU49:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  returnstruct, .-returnstruct

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:544
	movt	r10, #:upper16:544
	sub	sp,sp,r10
.LU51:
	b	.LU52
.LU52:
	sub	r9, fp, #64
	mov	r10, #0
	str	r10, [r9]
	mov	%r0,#1
	bl	printgroup
	sub	r9, fp, #52
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #68
	sub	r10, fp, #72
	and	r4,r9,r10
	cmp	r4,#1
	beq	.LU54
	b	.LU55
.LU54:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU56
.LU55:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU56
.LU56:
	sub	r9, fp, #52
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #84
	sub	r10, fp, #76
	and	r4,r9,r10
	cmp	r4,#1
	beq	.LU57
	b	.LU58
.LU57:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU59
.LU58:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU59
.LU59:
	sub	r9, fp, #52
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #100
	sub	r10, fp, #96
	and	r4,r9,r10
	cmp	r4,#1
	beq	.LU60
	b	.LU61
.LU60:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU62
.LU61:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU62
.LU62:
	sub	r9, fp, #52
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r9, fp, #104
	sub	r10, fp, #108
	and	r4,r9,r10
	cmp	r4,#1
	beq	.LU63
	b	.LU64
.LU63:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU65
.LU64:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU65
.LU65:
	sub	r9, fp, #64
	mov	r10, #0
	str	r10, [r9]
	mov	%r0,#2
	bl	printgroup
	sub	r9, fp, #52
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r9, fp, #112
	sub	r10, fp, #116
	orr	r4,r9,r10
	cmp	r4,#1
	beq	.LU66
	b	.LU67
.LU66:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU68
.LU67:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU68
.LU68:
	sub	r9, fp, #52
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #124
	str	r10, [r9]
	sub	r9, fp, #120
	sub	r10, fp, #124
	orr	r4,r9,r10
	cmp	r4,#1
	beq	.LU69
	b	.LU70
.LU69:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU71
.LU70:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU71
.LU71:
	sub	r9, fp, #52
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r9, fp, #132
	sub	r10, fp, #128
	orr	r4,r9,r10
	cmp	r4,#1
	beq	.LU72
	b	.LU73
.LU72:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU74
.LU73:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU74
.LU74:
	sub	r9, fp, #52
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #56
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #136
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #168
	str	r10, [r9]
	sub	r9, fp, #136
	sub	r10, fp, #168
	orr	r4,r9,r10
	cmp	r4,#1
	beq	.LU75
	b	.LU76
.LU75:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU77
.LU76:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU77
.LU77:
	mov	%r0,#3
	bl	printgroup
	mov	r4,#0
	mov	r10, #42
	cmp	r10,#1
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU78
	b	.LU79
.LU78:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU80
.LU79:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU80
.LU80:
	mov	r4,#0
	mov	r10, #42
	cmp	r10,#1
	movge	r4,#1
	cmp	r4,#1
	beq	.LU81
	b	.LU82
.LU81:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU83
.LU82:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU83
.LU83:
	mov	r4,#0
	mov	r10, #42
	cmp	r10,#1
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU84
	b	.LU85
.LU84:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU86
.LU85:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU86
.LU86:
	mov	r4,#0
	mov	r10, #42
	cmp	r10,#1
	movle	r4,#1
	cmp	r4,#1
	beq	.LU87
	b	.LU88
.LU87:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU89
.LU88:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU89
.LU89:
	mov	r4,#0
	mov	r10, #42
	cmp	r10,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU90
	b	.LU91
.LU90:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU92
.LU91:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU92
.LU92:
	mov	r4,#0
	mov	r10, #42
	cmp	r10,#1
	movne	r4,#1
	cmp	r4,#1
	beq	.LU93
	b	.LU94
.LU93:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU95
.LU94:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU95
.LU95:
	mov	r10, #1
	cmp	r10,#1
	beq	.LU96
	b	.LU97
.LU96:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU98
.LU97:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU98
.LU98:
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	eor	r4,r9,r10
	cmp	r4,#1
	beq	.LU99
	b	.LU100
.LU99:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU101
.LU100:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU101
.LU101:
	mov	r10, #0
	cmp	r10,#1
	beq	.LU102
	b	.LU103
.LU102:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU104
.LU103:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU104
.LU104:
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	movw	r10, #:lower16:0
	movt	r10, #:upper16:0
	eor	r4,r9,r10
	cmp	r4,#1
	beq	.LU105
	b	.LU106
.LU105:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU107
.LU106:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU107
.LU107:
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	movw	r10, #:lower16:0
	movt	r10, #:upper16:0
	eor	r4,r9,r10
	cmp	r4,#1
	beq	.LU108
	b	.LU109
.LU108:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU110
.LU109:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU110
.LU110:
	mov	%r0,#4
	bl	printgroup
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	movw	r10, #:lower16:3
	movt	r10, #:upper16:3
	add	r5,r9,r10
	mov	r4,#0
	cmp	r5,#5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU111
	b	.LU112
.LU111:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU113
.LU112:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	movw	r10, #:lower16:3
	movt	r10, #:upper16:3
	add	r4,r9,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU113
.LU113:
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	movw	r10, #:lower16:3
	movt	r10, #:upper16:3
	mul	r5,r9,r10
	mov	r4,#0
	cmp	r5,#6
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU114
	b	.LU115
.LU114:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU116
.LU115:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	movw	r10, #:lower16:3
	movt	r10, #:upper16:3
	mul	r4,r9,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU116
.LU116:
	movw	r9, #:lower16:3
	movt	r9, #:upper16:3
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	sub	r5,r9,r10
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU117
	b	.LU118
.LU117:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU119
.LU118:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	movw	r9, #:lower16:3
	movt	r9, #:upper16:3
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	sub	r4,r9,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU119
.LU119:
	mov	%r0,#6
	mov	%r1,#3
	bl	__aeabi_idiv
	mov	r4,#0
	sub	r10, fp, #172
	ldr	r10, [r10]
	cmp	r10,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU120
	b	.LU121
.LU120:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU122
.LU121:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	mov	%r0,#6
	mov	%r1,#3
	bl	__aeabi_idiv
	sub	r10, fp, #176
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU122
.LU122:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:6
	movt	r10, #:upper16:6
	sub	r5,r9,r10
	mov	r4,#0
	cmp	r5,#0
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU123
	b	.LU124
.LU123:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU125
.LU124:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU125
.LU125:
	mov	%r0,#5
	bl	printgroup
	sub	r9, fp, #36
	mov	r10, #42
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #180
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #180
	ldr	r10, [r10]
	cmp	r10,#42
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU126
	b	.LU127
.LU126:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU128
.LU127:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU128
.LU128:
	sub	r9, fp, #36
	mov	r10, #3
	str	r10, [r9]
	sub	r9, fp, #40
	mov	r10, #2
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #184
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #188
	str	r10, [r9]
	sub	r9, fp, #184
	sub	r10, fp, #188
	add	r5,r9,r10
	sub	r9, fp, #44
	str	r5, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #192
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #192
	ldr	r10, [r10]
	cmp	r10,#5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU129
	b	.LU130
.LU129:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU131
.LU130:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU131
.LU131:
	sub	r9, fp, #52
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #200
	str	r10, [r9]
	sub	r10, fp, #200
	ldr	r10, [r10]
	cmp	r10,#1
	beq	.LU132
	b	.LU133
.LU132:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU134
.LU133:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU134
.LU134:
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #208
	str	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r10, fp, #208
	eor	r4,r9,r10
	cmp	r4,#1
	beq	.LU135
	b	.LU136
.LU135:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU137
.LU136:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU137
.LU137:
	sub	r9, fp, #52
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #216
	str	r10, [r9]
	sub	r10, fp, #216
	ldr	r10, [r10]
	cmp	r10,#1
	beq	.LU138
	b	.LU139
.LU138:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU140
.LU139:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU140
.LU140:
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #224
	str	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r10, fp, #224
	eor	r4,r9,r10
	cmp	r4,#1
	beq	.LU141
	b	.LU142
.LU141:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU143
.LU142:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU143
.LU143:
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #228
	str	r10, [r9]
	sub	r10, fp, #228
	ldr	r10, [r10]
	cmp	r10,#1
	beq	.LU144
	b	.LU145
.LU144:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU146
.LU145:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU146
.LU146:
	mov	%r0,#6
	bl	printgroup
	sub	r9, fp, #36
	mov	r10, #0
	str	r10, [r9]
	b	.LU147
.LU147:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #232
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #232
	ldr	r10, [r10]
	cmp	r10,#5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU148
	b	.LU149
.LU148:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #236
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #236
	ldr	r10, [r10]
	cmp	r10,#5
	movge	r4,#1
	cmp	r4,#1
	beq	.LU150
	b	.LU151
.LU150:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU152
.LU151:
	b	.LU152
.LU152:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #240
	str	r10, [r9]
	sub	r9, fp, #240
	movw	r10, #:lower16:5
	movt	r10, #:upper16:5
	add	r4,r9,r10
	sub	r9, fp, #36
	str	r4, [r9]
	b	.LU147
.LU149:
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #244
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #244
	ldr	r10, [r10]
	cmp	r10,#5
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU153
	b	.LU154
.LU153:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU155
.LU154:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #248
	str	r10, [r9]
	sub	r10, fp, #248
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU155
.LU155:
	mov	%r0,#7
	bl	printgroup
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #76
	str	%r0, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	r8,r10
	sub	r9, fp, #4
	str	r8, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #268
	str	r10, [r9]
	sub	r9, fp, #268
	ldr	r9, [r9]
	add	r7,r9,#0
	mov	r10, #42
	str	r10, [r7]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #264
	str	r10, [r9]
	sub	r9, fp, #264
	ldr	r9, [r9]
	add	r6,r9,#4
	mov	r10, #1
	str	r10, [r6]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #260
	str	r10, [r9]
	sub	r9, fp, #260
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #256
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #256
	ldr	r10, [r10]
	cmp	r10,#42
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU156
	b	.LU157
.LU156:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU158
.LU157:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #276
	str	r10, [r9]
	sub	r9, fp, #276
	ldr	r9, [r9]
	add	r4,r9,#0
	ldr	r10, [r4]
	sub	r9, fp, #272
	str	r10, [r9]
	sub	r10, fp, #272
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU158
.LU158:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #284
	str	r10, [r9]
	sub	r9, fp, #284
	ldr	r9, [r9]
	add	r4,r9,#4
	ldr	r10, [r4]
	sub	r9, fp, #280
	str	r10, [r9]
	sub	r10, fp, #280
	ldr	r10, [r10]
	cmp	r10,#1
	beq	.LU159
	b	.LU160
.LU159:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU161
.LU160:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU161
.LU161:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #92
	str	%r0, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #296
	str	r10, [r9]
	sub	r9, fp, #296
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #288
	str	r10, [r9]
	sub	r9, fp, #288
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r10, [r9]
	sub	r9, fp, #312
	str	r10, [r9]
	sub	r9, fp, #312
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #76
	mov	r10, #13
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #308
	str	r10, [r9]
	sub	r9, fp, #308
	ldr	r9, [r9]
	add	r8,r9,#8
	ldr	r10, [r8]
	sub	r9, fp, #304
	str	r10, [r9]
	sub	r9, fp, #304
	ldr	r9, [r9]
	add	r7,r9,#4
	mov	r10, #0
	str	r10, [r7]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #300
	str	r10, [r9]
	sub	r9, fp, #300
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r10, [r6]
	sub	r9, fp, #292
	str	r10, [r9]
	sub	r9, fp, #292
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #316
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #316
	ldr	r10, [r10]
	cmp	r10,#13
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU162
	b	.LU163
.LU162:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU164
.LU163:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #328
	str	r10, [r9]
	sub	r9, fp, #328
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #324
	str	r10, [r9]
	sub	r9, fp, #324
	ldr	r9, [r9]
	add	r4,r9,#0
	ldr	r10, [r4]
	sub	r9, fp, #320
	str	r10, [r9]
	sub	r10, fp, #320
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU164
.LU164:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #340
	str	r10, [r9]
	sub	r9, fp, #340
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r10, [r6]
	sub	r9, fp, #332
	str	r10, [r9]
	sub	r9, fp, #332
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #344
	str	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r10, fp, #344
	eor	r4,r9,r10
	cmp	r4,#1
	beq	.LU165
	b	.LU166
.LU165:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU167
.LU166:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU167
.LU167:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #352
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #348
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #352
	ldr	r10, [r10]
	sub	r9, fp, #348
	ldr	r9, [r9]
	cmp	r10,r9
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU168
	b	.LU169
.LU168:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU170
.LU169:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU170
.LU170:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #364
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #360
	str	r10, [r9]
	sub	r9, fp, #360
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #356
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #364
	ldr	r10, [r10]
	sub	r9, fp, #356
	ldr	r9, [r9]
	cmp	r10,r9
	movne	r4,#1
	cmp	r4,#1
	beq	.LU171
	b	.LU172
.LU171:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU173
.LU172:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU173
.LU173:
	mov	%r0,#8
	bl	printgroup
	sub	r9, fp, #48
	mov	r10, #7
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #372
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #372
	ldr	r10, [r10]
	cmp	r10,#7
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU174
	b	.LU175
.LU174:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU176
.LU175:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #376
	str	r10, [r9]
	sub	r10, fp, #376
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU176
.LU176:
	sub	r9, fp, #16
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #384
	str	r10, [r9]
	sub	r10, fp, #384
	ldr	r10, [r10]
	cmp	r10,#1
	beq	.LU177
	b	.LU178
.LU177:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU179
.LU178:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU179
.LU179:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #76
	str	%r0, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	r8,r10
	sub	r9, fp, #60
	str	r8, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #396
	str	r10, [r9]
	sub	r9, fp, #396
	ldr	r9, [r9]
	add	r7,r9,#0
	mov	r10, #34
	str	r10, [r7]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #392
	str	r10, [r9]
	sub	r9, fp, #392
	ldr	r9, [r9]
	add	r6,r9,#4
	mov	r10, #0
	str	r10, [r6]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #388
	str	r10, [r9]
	sub	r9, fp, #388
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #404
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #404
	ldr	r10, [r10]
	cmp	r10,#34
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU180
	b	.LU181
.LU180:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU182
.LU181:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #412
	str	r10, [r9]
	sub	r9, fp, #412
	ldr	r9, [r9]
	add	r4,r9,#0
	ldr	r10, [r4]
	sub	r9, fp, #408
	str	r10, [r9]
	sub	r10, fp, #408
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU182
.LU182:
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #424
	str	r10, [r9]
	sub	r9, fp, #424
	ldr	r9, [r9]
	add	r5,r9,#4
	ldr	r10, [r5]
	sub	r9, fp, #420
	str	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r10, fp, #420
	eor	r4,r9,r10
	cmp	r4,#1
	beq	.LU183
	b	.LU184
.LU183:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU185
.LU184:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU185
.LU185:
	mov	%r0,#12
	bl	malloc
	sub	r9, fp, #92
	str	%r0, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #452
	str	r10, [r9]
	sub	r9, fp, #452
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #444
	str	r10, [r9]
	sub	r9, fp, #444
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r10, [r9]
	sub	r9, fp, #436
	str	r10, [r9]
	sub	r9, fp, #436
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #76
	mov	r10, #16
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #432
	str	r10, [r9]
	sub	r9, fp, #432
	ldr	r9, [r9]
	add	r8,r9,#8
	ldr	r10, [r8]
	sub	r9, fp, #428
	str	r10, [r9]
	sub	r9, fp, #428
	ldr	r9, [r9]
	add	r7,r9,#4
	mov	r10, #1
	str	r10, [r7]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #456
	str	r10, [r9]
	sub	r9, fp, #456
	ldr	r9, [r9]
	add	r6,r9,#8
	ldr	r10, [r6]
	sub	r9, fp, #448
	str	r10, [r9]
	sub	r9, fp, #448
	ldr	r9, [r9]
	add	r5,r9,#0
	ldr	r10, [r5]
	sub	r9, fp, #440
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #440
	ldr	r10, [r10]
	cmp	r10,#16
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU186
	b	.LU187
.LU186:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU188
.LU187:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #468
	str	r10, [r9]
	sub	r9, fp, #468
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #464
	str	r10, [r9]
	sub	r9, fp, #464
	ldr	r9, [r9]
	add	r4,r9,#0
	ldr	r10, [r4]
	sub	r9, fp, #460
	str	r10, [r9]
	sub	r10, fp, #460
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU188
.LU188:
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #480
	str	r10, [r9]
	sub	r9, fp, #480
	ldr	r9, [r9]
	add	r5,r9,#8
	ldr	r10, [r5]
	sub	r9, fp, #476
	str	r10, [r9]
	sub	r9, fp, #476
	ldr	r9, [r9]
	add	r4,r9,#4
	ldr	r10, [r4]
	sub	r9, fp, #472
	str	r10, [r9]
	sub	r10, fp, #472
	ldr	r10, [r10]
	cmp	r10,#1
	beq	.LU189
	b	.LU190
.LU189:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU191
.LU190:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU191
.LU191:
	mov	%r0,#9
	bl	printgroup
	mov	%r0,#12
	bl	malloc
	mov	r8,%r0
	mov	r7,r8
	sub	r9, fp, #4
	str	r7, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #492
	str	r10, [r9]
	sub	r9, fp, #492
	ldr	r9, [r9]
	add	r6,r9,#4
	mov	r10, #1
	str	r10, [r6]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #488
	str	r10, [r9]
	mov	%r0,#3
	mov	%r1,#1
	sub	r10, fp, #488
	ldr	r10, [r10]
	mov	%r2,r10
	bl	takealltypes
	mov	%r1,#2
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	%r0,#1
	mov	%r1,#2
	mov	%r2,#3
	mov	%r3,#4
	mov	r9,#5
	mov	r9,#6
	mov	r9,#7
	mov	r9,#8
	bl	tonofargs
	mov	%r1,#3
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	%r0,#3
	bl	returnint
	mov	r5,%r0
	sub	r9, fp, #36
	str	r5, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #496
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #496
	ldr	r10, [r10]
	cmp	r10,#3
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU192
	b	.LU193
.LU192:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU194
.LU193:
	mov	%r1,#0
	movw	%r0, #:lower16:.print
	movt	%r0, #:upper16:.print
	bl	printf
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #500
	str	r10, [r9]
	sub	r10, fp, #500
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU194
.LU194:
	mov	%r0,#1
	bl	returnbool
	mov	r4,%r0
	sub	r9, fp, #52
	str	r4, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #508
	str	r10, [r9]
	sub	r10, fp, #508
	ldr	r10, [r10]
	cmp	r10,#1
	beq	.LU195
	b	.LU196
.LU195:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU197
.LU196:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU197
.LU197:
	mov	%r0,#12
	bl	malloc
	mov	r7,%r0
	mov	r6,r7
	sub	r9, fp, #4
	str	r6, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #528
	str	r10, [r9]
	sub	r10, fp, #528
	ldr	r10, [r10]
	mov	%r0,r10
	bl	returnstruct
	mov	r5,%r0
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #524
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #520
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #524
	ldr	r10, [r10]
	sub	r9, fp, #520
	ldr	r9, [r9]
	cmp	r10,r9
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU198
	b	.LU199
.LU198:
	mov	%r1,#1
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU200
.LU199:
	mov	%r1,#0
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU200
.LU200:
	mov	%r0,#10
	bl	printgroup
	sub	r9, fp, #24
	mov	r10, #0
	b	.LU53
.LU53:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:544
	movt	r10, #:upper16:544
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
