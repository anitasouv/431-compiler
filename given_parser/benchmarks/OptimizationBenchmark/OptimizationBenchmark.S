	.arch armv7-a
	.comm  global1,4,4
	.comm  global2,4,4
	.comm  global3,4,4
	.text
	.align  2
	.global constantFolding
constantFolding:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU2:
	b	.LU3
.LU3:
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	movw	r10, #:lower16:9
	movt	r10, #:upper16:9
	mul	r10,r9,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#4
	bl	__aeabi_idiv
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	add	r10,r8,r10
	sub	r9, fp, #40
	str	r10, [r9]
	movw	r9, #:lower16:5
	movt	r9, #:upper16:5
	movw	r10, #:lower16:8
	movt	r10, #:upper16:8
	mul	r10,r9,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	movw	r10, #:lower16:9
	movt	r10, #:upper16:9
	add	r10,r9,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	movw	r10, #:lower16:12
	movt	r10, #:upper16:12
	sub	r10,r9,r10
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r9, [r9]
	movw	r10, #:lower16:6
	movt	r10, #:upper16:6
	add	r10,r9,r10
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	movw	r10, #:lower16:9
	movt	r10, #:upper16:9
	sub	r10,r9,r10
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	movw	r10, #:lower16:18
	movt	r10, #:upper16:18
	sub	r7,r9,r10
	movw	r9, #:lower16:23
	movt	r9, #:upper16:23
	movw	r10, #:lower16:3
	movt	r10, #:upper16:3
	mul	r6,r9,r10
	mov	%r0,r6
	mov	%r1,#23
	bl	__aeabi_idiv
	sub	r9, fp, #16
	ldr	r9, [r9]
	movw	r10, #:lower16:90
	movt	r10, #:upper16:90
	mul	r5,r9,r10
	add	r4,r7,r5
	sub	r9, fp, #8
	str	r4, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	sub	r9, fp, #4
	b	.LU4
.LU4:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  constantFolding, .-constantFolding

	.align  2
	.global constantPropagation
constantPropagation:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:544
	movt	r10, #:upper16:544
	sub	sp,sp,r10
.LU6:
	b	.LU7
.LU7:
	sub	r9, fp, #8
	mov	r10, #4
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #7
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #8
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #5
	str	r10, [r9]
	sub	r9, fp, #24
	mov	r10, #11
	str	r10, [r9]
	sub	r9, fp, #28
	mov	r10, #21
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #124
	str	r10, [r9]
	sub	r9, fp, #120
	ldr	r9, [r9]
	sub	r10, fp, #124
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #316
	str	r10, [r9]
	sub	r10, fp, #316
	ldr	r10, [r10]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r9, fp, #116
	ldr	r9, [r9]
	sub	r10, fp, #128
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #312
	str	r10, [r9]
	sub	r10, fp, #312
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #220
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #188
	str	r10, [r9]
	sub	r9, fp, #220
	ldr	r9, [r9]
	sub	r10, fp, #188
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #308
	str	r10, [r9]
	sub	r10, fp, #308
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #180
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #184
	str	r10, [r9]
	sub	r9, fp, #180
	ldr	r9, [r9]
	sub	r10, fp, #184
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #304
	str	r10, [r9]
	sub	r10, fp, #304
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #196
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #192
	str	r10, [r9]
	sub	r9, fp, #196
	ldr	r9, [r9]
	sub	r10, fp, #192
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #300
	str	r10, [r9]
	sub	r10, fp, #300
	ldr	r10, [r10]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #272
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #260
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #264
	str	r10, [r9]
	sub	r9, fp, #260
	ldr	r9, [r9]
	sub	r10, fp, #264
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #296
	str	r10, [r9]
	sub	r9, fp, #272
	ldr	r9, [r9]
	sub	r10, fp, #296
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #292
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #228
	str	r10, [r9]
	sub	r9, fp, #292
	ldr	r9, [r9]
	sub	r10, fp, #228
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #288
	str	r10, [r9]
	sub	r10, fp, #288
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #240
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #244
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #236
	str	r10, [r9]
	sub	r9, fp, #244
	ldr	r9, [r9]
	sub	r10, fp, #236
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #284
	str	r10, [r9]
	sub	r9, fp, #240
	ldr	r9, [r9]
	sub	r10, fp, #284
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #280
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #312
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #320
	str	r10, [r9]
	sub	r10, fp, #312
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #320
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #280
	ldr	r9, [r9]
	sub	r10, fp, #292
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #276
	str	r10, [r9]
	sub	r10, fp, #276
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #280
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #288
	str	r10, [r9]
	sub	r9, fp, #280
	ldr	r9, [r9]
	sub	r10, fp, #288
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #272
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #296
	str	r10, [r9]
	sub	r9, fp, #272
	ldr	r9, [r9]
	sub	r10, fp, #296
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #268
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #348
	str	r10, [r9]
	sub	r9, fp, #268
	ldr	r9, [r9]
	sub	r10, fp, #348
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #264
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #344
	str	r10, [r9]
	sub	r9, fp, #264
	ldr	r9, [r9]
	sub	r10, fp, #344
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #260
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #336
	str	r10, [r9]
	sub	r9, fp, #260
	ldr	r9, [r9]
	sub	r10, fp, #336
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #256
	str	r10, [r9]
	sub	r10, fp, #256
	ldr	r10, [r10]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #328
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #332
	str	r10, [r9]
	sub	r9, fp, #328
	ldr	r9, [r9]
	sub	r10, fp, #332
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #252
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #364
	str	r10, [r9]
	sub	r9, fp, #252
	ldr	r9, [r9]
	sub	r10, fp, #364
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #248
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #376
	str	r10, [r9]
	sub	r9, fp, #248
	ldr	r9, [r9]
	sub	r10, fp, #376
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #244
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #368
	str	r10, [r9]
	sub	r9, fp, #244
	ldr	r9, [r9]
	sub	r10, fp, #368
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #240
	str	r10, [r9]
	sub	r10, fp, #240
	ldr	r10, [r10]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #356
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #360
	str	r10, [r9]
	sub	r9, fp, #356
	ldr	r9, [r9]
	sub	r10, fp, #360
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #236
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #352
	str	r10, [r9]
	sub	r9, fp, #236
	ldr	r9, [r9]
	sub	r10, fp, #352
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #232
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #388
	str	r10, [r9]
	sub	r9, fp, #232
	ldr	r9, [r9]
	sub	r10, fp, #388
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #228
	str	r10, [r9]
	sub	r10, fp, #228
	ldr	r10, [r10]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #408
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #416
	str	r10, [r9]
	sub	r9, fp, #408
	ldr	r9, [r9]
	sub	r10, fp, #416
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #224
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #400
	str	r10, [r9]
	sub	r9, fp, #224
	ldr	r9, [r9]
	sub	r10, fp, #400
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #220
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #384
	str	r10, [r9]
	sub	r9, fp, #220
	ldr	r9, [r9]
	sub	r10, fp, #384
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #216
	str	r10, [r9]
	sub	r10, fp, #216
	ldr	r10, [r10]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #516
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #520
	str	r10, [r9]
	sub	r9, fp, #516
	ldr	r9, [r9]
	sub	r10, fp, #520
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #212
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #512
	str	r10, [r9]
	sub	r9, fp, #212
	ldr	r9, [r9]
	sub	r10, fp, #512
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #204
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, fp, #528
	str	r10, [r9]
	sub	r9, fp, #204
	ldr	r9, [r9]
	sub	r10, fp, #528
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #200
	str	r10, [r9]
	sub	r10, fp, #200
	ldr	r10, [r10]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #524
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #432
	str	r10, [r9]
	sub	r9, fp, #524
	ldr	r9, [r9]
	sub	r10, fp, #432
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #196
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #196
	ldr	r9, [r9]
	sub	r10, fp, #132
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #192
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #156
	str	r10, [r9]
	sub	r10, fp, #192
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #156
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, fp, #148
	str	r10, [r9]
	sub	r9, fp, #140
	ldr	r9, [r9]
	sub	r10, fp, #148
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #188
	str	r10, [r9]
	sub	r10, fp, #188
	ldr	r10, [r10]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #172
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #160
	str	r10, [r9]
	sub	r9, fp, #172
	ldr	r9, [r9]
	sub	r10, fp, #160
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #184
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r9, fp, #184
	ldr	r9, [r9]
	sub	r10, fp, #112
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #180
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r10, [r9]
	sub	r9, fp, #224
	str	r10, [r9]
	sub	r9, fp, #180
	ldr	r9, [r9]
	sub	r10, fp, #224
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #176
	str	r10, [r9]
	sub	r10, fp, #176
	ldr	r10, [r10]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #216
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, fp, #212
	str	r10, [r9]
	sub	r9, fp, #216
	ldr	r9, [r9]
	sub	r10, fp, #212
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #172
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #204
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #200
	str	r10, [r9]
	sub	r9, fp, #204
	ldr	r9, [r9]
	sub	r10, fp, #200
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #168
	str	r10, [r9]
	sub	r9, fp, #172
	ldr	r9, [r9]
	sub	r10, fp, #168
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #164
	str	r10, [r9]
	sub	r10, fp, #164
	ldr	r10, [r10]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #176
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #168
	str	r10, [r9]
	sub	r9, fp, #176
	ldr	r9, [r9]
	sub	r10, fp, #168
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #160
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #164
	str	r10, [r9]
	sub	r9, fp, #160
	ldr	r9, [r9]
	sub	r10, fp, #164
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #156
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r9, fp, #156
	ldr	r9, [r9]
	sub	r10, fp, #152
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r10, fp, #152
	ldr	r10, [r10]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r10, [r9]
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r10, [r9]
	sub	r9, fp, #136
	str	r10, [r9]
	sub	r9, fp, #144
	ldr	r9, [r9]
	sub	r10, fp, #136
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #148
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r8, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #324
	str	r10, [r9]
	sub	r10, fp, #324
	ldr	r10, [r10]
	mul	r10,r8,r10
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r9, fp, #148
	ldr	r9, [r9]
	sub	r10, fp, #144
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #140
	str	r10, [r9]
	sub	r10, fp, #140
	ldr	r10, [r10]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, fp, #316
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r10, [r9]
	sub	r9, fp, #308
	str	r10, [r9]
	sub	r9, fp, #316
	ldr	r9, [r9]
	sub	r10, fp, #308
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #136
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r10, [r9]
	sub	r9, fp, #304
	str	r10, [r9]
	sub	r9, fp, #136
	ldr	r9, [r9]
	sub	r10, fp, #304
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #300
	str	r10, [r9]
	sub	r9, fp, #132
	ldr	r9, [r9]
	sub	r10, fp, #300
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r10, fp, #128
	ldr	r10, [r10]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r10, [r9]
	sub	r9, fp, #284
	str	r10, [r9]
	sub	r9, fp, #100
	ldr	r10, [r9]
	sub	r9, fp, #276
	str	r10, [r9]
	sub	r9, fp, #284
	ldr	r9, [r9]
	sub	r10, fp, #276
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #124
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r10, [r9]
	sub	r9, fp, #268
	str	r10, [r9]
	sub	r9, fp, #124
	ldr	r9, [r9]
	sub	r10, fp, #268
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r10, [r9]
	sub	r9, fp, #256
	str	r10, [r9]
	sub	r9, fp, #120
	ldr	r9, [r9]
	sub	r10, fp, #256
	ldr	r10, [r10]
	sub	r7,r9,r10
	sub	r9, fp, #104
	str	r7, [r9]
	sub	r9, fp, #96
	ldr	r10, [r9]
	sub	r9, fp, #252
	str	r10, [r9]
	sub	r9, fp, #100
	ldr	r10, [r9]
	sub	r9, fp, #248
	str	r10, [r9]
	sub	r9, fp, #252
	ldr	r9, [r9]
	sub	r10, fp, #248
	ldr	r10, [r10]
	sub	r6,r9,r10
	sub	r9, fp, #104
	ldr	r10, [r9]
	sub	r9, fp, #232
	str	r10, [r9]
	sub	r10, fp, #232
	ldr	r10, [r10]
	add	r5,r6,r10
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #380
	str	r10, [r9]
	sub	r10, fp, #380
	ldr	r10, [r10]
	add	r4,r5,r10
	sub	r9, fp, #108
	str	r4, [r9]
	sub	r9, fp, #108
	ldr	r10, [r9]
	sub	r9, fp, #372
	str	r10, [r9]
	sub	r10, fp, #372
	ldr	r10, [r10]
	sub	r9, fp, #4
	b	.LU8
.LU8:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:544
	movt	r10, #:upper16:544
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  constantPropagation, .-constantPropagation

	.align  2
	.global deadCodeElimination
deadCodeElimination:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU10:
	b	.LU11
.LU11:
	sub	r9, fp, #16
	mov	r10, #4
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #5
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #7
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #8
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #6
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #9
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #12
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #8
	str	r10, [r9]
	sub	r9, fp, #24
	mov	r10, #10
	str	r10, [r9]
	sub	r9, fp, #24
	mov	r10, #13
	str	r10, [r9]
	sub	r9, fp, #24
	mov	r10, #9
	str	r10, [r9]
	sub	r9, fp, #28
	mov	r10, #45
	str	r10, [r9]
	sub	r9, fp, #28
	mov	r10, #12
	str	r10, [r9]
	sub	r9, fp, #28
	mov	r10, #3
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #23
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #10
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #11
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #5
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #9
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	add	r7,r9,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	add	r6,r7,r10
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	add	r5,r6,r10
	sub	r9, fp, #4
	ldr	r8, [r9]
	add	r4,r5,r8
	sub	r9, fp, #8
	b	.LU12
.LU12:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  deadCodeElimination, .-deadCodeElimination

	.align  2
	.global sum
sum:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	sub	sp,sp,r10
.LU14:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU15
.LU15:
	sub	r9, fp, #8
	mov	r10, #0
	str	r10, [r9]
	b	.LU17
.LU17:
	sub	r9, fp, #4
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU18
	b	.LU19
.LU18:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r8, [r9]
	sub	r9, fp, #20
	ldr	r9, [r9]
	add	r5,r9,r8
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #4
	ldr	r7, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r7,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU17
.LU19:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #12
	b	.LU16
.LU16:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  sum, .-sum

	.align  2
	.global doesntModifyGlobals
doesntModifyGlobals:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU21:
	b	.LU22
.LU22:
	sub	r9, fp, #8
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #2
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r6, [r9]
	sub	r9, fp, #12
	ldr	r5, [r9]
	add	r4,r6,r5
	sub	r9, fp, #4
	b	.LU23
.LU23:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  doesntModifyGlobals, .-doesntModifyGlobals

	.align  2
	.global interProceduralOptimization
interProceduralOptimization:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	sub	sp,sp,r10
.LU25:
	b	.LU26
.LU26:
	sub	r9, fp, #12
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #0
	str	r10, [r9]
	mov	%r0,#100
	bl	sum
	mov	r5,%r0
	sub	r9, fp, #16
	str	r5, [r9]
	sub	r9, fp, #12
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU28
	b	.LU29
.LU28:
	mov	%r0,#10000
	bl	sum
	mov	r4,%r0
	sub	r9, fp, #16
	str	r4, [r9]
	b	.LU36
.LU29:
	sub	r9, fp, #20
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU30
	b	.LU31
	b	.LU36
.LU36:
	sub	r9, fp, #16
	ldr	r8, [r9]
	sub	r9, fp, #8
	b	.LU27
.LU30:
	mov	%r0,#20000
	bl	sum
	mov	r4,%r0
	sub	r9, fp, #16
	str	r4, [r9]
	b	.LU32
.LU32:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #24
	ldr	r10, [r10]
	cmp	r10,#3
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU33
	b	.LU34
.LU33:
	mov	%r0,#30000
	bl	sum
	mov	r4,%r0
	sub	r9, fp, #16
	str	r4, [r9]
	b	.LU35
.LU35:
	b	.LU36
.LU34:
	b	.LU35
.LU31:
	b	.LU32
.LU27:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  interProceduralOptimization, .-interProceduralOptimization

	.align  2
	.global commonSubexpressionElimination
commonSubexpressionElimination:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:872
	movt	r10, #:upper16:872
	sub	sp,sp,r10
.LU38:
	b	.LU39
.LU39:
	sub	r9, fp, #8
	mov	r10, #11
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #22
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #33
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #44
	str	r10, [r9]
	sub	r9, fp, #24
	mov	r10, #55
	str	r10, [r9]
	sub	r9, fp, #28
	mov	r10, #66
	str	r10, [r9]
	sub	r9, fp, #32
	mov	r10, #77
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #600
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #596
	str	r10, [r9]
	sub	r9, fp, #600
	ldr	r9, [r9]
	sub	r10, fp, #596
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #532
	str	r10, [r9]
	sub	r10, fp, #532
	ldr	r10, [r10]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #592
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #588
	str	r10, [r9]
	sub	r10, fp, #592
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #588
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r10, fp, #528
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #240
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #232
	str	r10, [r9]
	sub	r9, fp, #240
	ldr	r9, [r9]
	sub	r10, fp, #232
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #524
	str	r10, [r9]
	sub	r10, fp, #524
	ldr	r10, [r10]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #196
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #192
	str	r10, [r9]
	sub	r9, fp, #196
	ldr	r9, [r9]
	sub	r10, fp, #192
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #520
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #188
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #184
	str	r10, [r9]
	sub	r10, fp, #188
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #184
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #520
	ldr	r9, [r9]
	sub	r10, fp, #180
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #516
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #164
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #160
	str	r10, [r9]
	sub	r9, fp, #164
	ldr	r9, [r9]
	sub	r10, fp, #160
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #512
	str	r10, [r9]
	sub	r9, fp, #516
	ldr	r9, [r9]
	sub	r10, fp, #512
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #508
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #828
	str	r10, [r9]
	sub	r9, fp, #508
	ldr	r9, [r9]
	sub	r10, fp, #828
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #504
	str	r10, [r9]
	sub	r10, fp, #504
	ldr	r10, [r10]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #812
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #804
	str	r10, [r9]
	sub	r9, fp, #812
	ldr	r9, [r9]
	sub	r10, fp, #804
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #500
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #792
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #784
	str	r10, [r9]
	sub	r10, fp, #792
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #784
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #500
	ldr	r9, [r9]
	sub	r10, fp, #776
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #496
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #660
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #648
	str	r10, [r9]
	sub	r9, fp, #660
	ldr	r9, [r9]
	sub	r10, fp, #648
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #492
	str	r10, [r9]
	sub	r9, fp, #496
	ldr	r9, [r9]
	sub	r10, fp, #492
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #488
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #628
	str	r10, [r9]
	sub	r9, fp, #488
	ldr	r9, [r9]
	sub	r10, fp, #628
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #484
	str	r10, [r9]
	sub	r10, fp, #484
	ldr	r10, [r10]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #616
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #608
	str	r10, [r9]
	sub	r9, fp, #616
	ldr	r9, [r9]
	sub	r10, fp, #608
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #480
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #604
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #244
	str	r10, [r9]
	sub	r10, fp, #604
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #244
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #480
	ldr	r9, [r9]
	sub	r10, fp, #236
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #476
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #224
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #220
	str	r10, [r9]
	sub	r9, fp, #224
	ldr	r9, [r9]
	sub	r10, fp, #220
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #472
	str	r10, [r9]
	sub	r9, fp, #476
	ldr	r9, [r9]
	sub	r10, fp, #472
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #468
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #208
	str	r10, [r9]
	sub	r9, fp, #468
	ldr	r9, [r9]
	sub	r10, fp, #208
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #464
	str	r10, [r9]
	sub	r10, fp, #464
	ldr	r10, [r10]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #200
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #168
	str	r10, [r9]
	sub	r9, fp, #200
	ldr	r9, [r9]
	sub	r10, fp, #168
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #460
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r10, fp, #152
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #144
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #460
	ldr	r9, [r9]
	sub	r10, fp, #140
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #456
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r9, fp, #132
	ldr	r9, [r9]
	sub	r10, fp, #128
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #452
	str	r10, [r9]
	sub	r9, fp, #456
	ldr	r9, [r9]
	sub	r10, fp, #452
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #448
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #112
	str	r10, [r9]
	sub	r9, fp, #448
	ldr	r9, [r9]
	sub	r10, fp, #112
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #444
	str	r10, [r9]
	sub	r10, fp, #444
	ldr	r10, [r10]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #400
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #392
	str	r10, [r9]
	sub	r9, fp, #400
	ldr	r9, [r9]
	sub	r10, fp, #392
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #440
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #380
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #376
	str	r10, [r9]
	sub	r10, fp, #380
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #376
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #440
	ldr	r9, [r9]
	sub	r10, fp, #364
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #436
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #352
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #336
	str	r10, [r9]
	sub	r9, fp, #352
	ldr	r9, [r9]
	sub	r10, fp, #336
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #432
	str	r10, [r9]
	sub	r9, fp, #436
	ldr	r9, [r9]
	sub	r10, fp, #432
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #428
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #324
	str	r10, [r9]
	sub	r9, fp, #428
	ldr	r9, [r9]
	sub	r10, fp, #324
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #424
	str	r10, [r9]
	sub	r10, fp, #424
	ldr	r10, [r10]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #312
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #304
	str	r10, [r9]
	sub	r9, fp, #312
	ldr	r9, [r9]
	sub	r10, fp, #304
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #420
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #292
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #284
	str	r10, [r9]
	sub	r10, fp, #292
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #284
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #420
	ldr	r9, [r9]
	sub	r10, fp, #264
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #416
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #256
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #252
	str	r10, [r9]
	sub	r9, fp, #256
	ldr	r9, [r9]
	sub	r10, fp, #252
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #412
	str	r10, [r9]
	sub	r9, fp, #416
	ldr	r9, [r9]
	sub	r10, fp, #412
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #408
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #568
	str	r10, [r9]
	sub	r9, fp, #408
	ldr	r9, [r9]
	sub	r10, fp, #568
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #404
	str	r10, [r9]
	sub	r10, fp, #404
	ldr	r10, [r10]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #548
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #536
	str	r10, [r9]
	sub	r9, fp, #548
	ldr	r9, [r9]
	sub	r10, fp, #536
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #400
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #504
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #496
	str	r10, [r9]
	sub	r10, fp, #504
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #496
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #400
	ldr	r9, [r9]
	sub	r10, fp, #492
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #396
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #484
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #480
	str	r10, [r9]
	sub	r9, fp, #484
	ldr	r9, [r9]
	sub	r10, fp, #480
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #392
	str	r10, [r9]
	sub	r9, fp, #396
	ldr	r9, [r9]
	sub	r10, fp, #392
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #388
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #448
	str	r10, [r9]
	sub	r9, fp, #388
	ldr	r9, [r9]
	sub	r10, fp, #448
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #384
	str	r10, [r9]
	sub	r10, fp, #384
	ldr	r10, [r10]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #416
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #412
	str	r10, [r9]
	sub	r9, fp, #416
	ldr	r9, [r9]
	sub	r10, fp, #412
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #380
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #408
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #404
	str	r10, [r9]
	sub	r10, fp, #408
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #404
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #380
	ldr	r9, [r9]
	sub	r10, fp, #856
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #376
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #840
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #832
	str	r10, [r9]
	sub	r9, fp, #840
	ldr	r9, [r9]
	sub	r10, fp, #832
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #372
	str	r10, [r9]
	sub	r9, fp, #376
	ldr	r9, [r9]
	sub	r10, fp, #372
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #368
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #708
	str	r10, [r9]
	sub	r9, fp, #368
	ldr	r9, [r9]
	sub	r10, fp, #708
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #364
	str	r10, [r9]
	sub	r10, fp, #364
	ldr	r10, [r10]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #696
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #688
	str	r10, [r9]
	sub	r9, fp, #696
	ldr	r9, [r9]
	sub	r10, fp, #688
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #360
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #676
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #664
	str	r10, [r9]
	sub	r10, fp, #676
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #664
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #360
	ldr	r9, [r9]
	sub	r10, fp, #652
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #356
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #552
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #540
	str	r10, [r9]
	sub	r9, fp, #552
	ldr	r9, [r9]
	sub	r10, fp, #540
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #352
	str	r10, [r9]
	sub	r9, fp, #356
	ldr	r9, [r9]
	sub	r10, fp, #352
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #348
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #528
	str	r10, [r9]
	sub	r9, fp, #348
	ldr	r9, [r9]
	sub	r10, fp, #528
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #344
	str	r10, [r9]
	sub	r10, fp, #344
	ldr	r10, [r10]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #520
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #512
	str	r10, [r9]
	sub	r9, fp, #520
	ldr	r9, [r9]
	sub	r10, fp, #512
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #340
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #468
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #460
	str	r10, [r9]
	sub	r10, fp, #468
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #460
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #340
	ldr	r9, [r9]
	sub	r10, fp, #452
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #336
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #440
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #436
	str	r10, [r9]
	sub	r9, fp, #440
	ldr	r9, [r9]
	sub	r10, fp, #436
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #332
	str	r10, [r9]
	sub	r9, fp, #336
	ldr	r9, [r9]
	sub	r10, fp, #332
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #328
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #424
	str	r10, [r9]
	sub	r9, fp, #328
	ldr	r9, [r9]
	sub	r10, fp, #424
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #324
	str	r10, [r9]
	sub	r10, fp, #324
	ldr	r10, [r10]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #848
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #844
	str	r10, [r9]
	sub	r9, fp, #848
	ldr	r9, [r9]
	sub	r10, fp, #844
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #320
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #824
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #816
	str	r10, [r9]
	sub	r10, fp, #824
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #816
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #320
	ldr	r9, [r9]
	sub	r10, fp, #808
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #316
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #796
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #788
	str	r10, [r9]
	sub	r9, fp, #796
	ldr	r9, [r9]
	sub	r10, fp, #788
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #312
	str	r10, [r9]
	sub	r9, fp, #316
	ldr	r9, [r9]
	sub	r10, fp, #312
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #308
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #668
	str	r10, [r9]
	sub	r9, fp, #308
	ldr	r9, [r9]
	sub	r10, fp, #668
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #304
	str	r10, [r9]
	sub	r10, fp, #304
	ldr	r10, [r10]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #640
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #632
	str	r10, [r9]
	sub	r9, fp, #640
	ldr	r9, [r9]
	sub	r10, fp, #632
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #300
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #624
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #620
	str	r10, [r9]
	sub	r10, fp, #624
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #620
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #300
	ldr	r9, [r9]
	sub	r10, fp, #612
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #296
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #584
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #248
	str	r10, [r9]
	sub	r9, fp, #584
	ldr	r9, [r9]
	sub	r10, fp, #248
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #292
	str	r10, [r9]
	sub	r9, fp, #296
	ldr	r9, [r9]
	sub	r10, fp, #292
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #288
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #228
	str	r10, [r9]
	sub	r9, fp, #288
	ldr	r9, [r9]
	sub	r10, fp, #228
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #284
	str	r10, [r9]
	sub	r10, fp, #284
	ldr	r10, [r10]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #216
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #212
	str	r10, [r9]
	sub	r9, fp, #216
	ldr	r9, [r9]
	sub	r10, fp, #212
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #280
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #204
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #176
	str	r10, [r9]
	sub	r10, fp, #204
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #176
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #280
	ldr	r9, [r9]
	sub	r10, fp, #172
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #276
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #156
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #148
	str	r10, [r9]
	sub	r9, fp, #156
	ldr	r9, [r9]
	sub	r10, fp, #148
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #272
	str	r10, [r9]
	sub	r9, fp, #276
	ldr	r9, [r9]
	sub	r10, fp, #272
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #268
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #136
	str	r10, [r9]
	sub	r9, fp, #268
	ldr	r9, [r9]
	sub	r10, fp, #136
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #264
	str	r10, [r9]
	sub	r10, fp, #264
	ldr	r10, [r10]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #124
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #116
	str	r10, [r9]
	sub	r9, fp, #120
	ldr	r9, [r9]
	sub	r10, fp, #116
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #260
	str	r10, [r9]
	sub	r9, fp, #124
	ldr	r9, [r9]
	sub	r10, fp, #260
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #256
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #396
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #388
	str	r10, [r9]
	sub	r10, fp, #396
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #388
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #256
	ldr	r9, [r9]
	sub	r10, fp, #384
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #252
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #368
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #360
	str	r10, [r9]
	sub	r9, fp, #368
	ldr	r9, [r9]
	sub	r10, fp, #360
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #248
	str	r10, [r9]
	sub	r9, fp, #252
	ldr	r9, [r9]
	sub	r10, fp, #248
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #244
	str	r10, [r9]
	sub	r10, fp, #244
	ldr	r10, [r10]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #332
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #328
	str	r10, [r9]
	sub	r9, fp, #332
	ldr	r9, [r9]
	sub	r10, fp, #328
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #240
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #320
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #316
	str	r10, [r9]
	sub	r10, fp, #320
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #316
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #240
	ldr	r9, [r9]
	sub	r10, fp, #308
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #236
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #296
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #268
	str	r10, [r9]
	sub	r9, fp, #296
	ldr	r9, [r9]
	sub	r10, fp, #268
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #232
	str	r10, [r9]
	sub	r9, fp, #236
	ldr	r9, [r9]
	sub	r10, fp, #232
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #228
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #260
	str	r10, [r9]
	sub	r9, fp, #228
	ldr	r9, [r9]
	sub	r10, fp, #260
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #224
	str	r10, [r9]
	sub	r10, fp, #224
	ldr	r10, [r10]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #580
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #576
	str	r10, [r9]
	sub	r10, fp, #580
	ldr	r10, [r10]
	mov	%r0,r10
	sub	r10, fp, #576
	ldr	r10, [r10]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #560
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #556
	str	r10, [r9]
	sub	r9, fp, #560
	ldr	r9, [r9]
	sub	r10, fp, #556
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #220
	str	r10, [r9]
	sub	r9, fp, #572
	ldr	r9, [r9]
	sub	r10, fp, #220
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #216
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #508
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #500
	str	r10, [r9]
	sub	r9, fp, #508
	ldr	r9, [r9]
	sub	r10, fp, #500
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #212
	str	r10, [r9]
	sub	r9, fp, #216
	ldr	r9, [r9]
	sub	r10, fp, #212
	ldr	r10, [r10]
	sub	r10,r9,r10
	sub	r9, fp, #208
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #488
	str	r10, [r9]
	sub	r9, fp, #208
	ldr	r9, [r9]
	sub	r10, fp, #488
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #204
	str	r10, [r9]
	sub	r10, fp, #204
	ldr	r10, [r10]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #472
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #464
	str	r10, [r9]
	sub	r9, fp, #472
	ldr	r9, [r9]
	sub	r10, fp, #464
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #200
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #372
	str	r10, [r9]
	sub	r9, fp, #200
	ldr	r9, [r9]
	sub	r10, fp, #372
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #196
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #356
	str	r10, [r9]
	sub	r9, fp, #196
	ldr	r9, [r9]
	sub	r10, fp, #356
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #192
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #348
	str	r10, [r9]
	sub	r9, fp, #192
	ldr	r9, [r9]
	sub	r10, fp, #348
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #188
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #344
	str	r10, [r9]
	sub	r9, fp, #188
	ldr	r9, [r9]
	sub	r10, fp, #344
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #184
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #340
	str	r10, [r9]
	sub	r9, fp, #184
	ldr	r9, [r9]
	sub	r10, fp, #340
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #180
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #300
	str	r10, [r9]
	sub	r9, fp, #180
	ldr	r9, [r9]
	sub	r10, fp, #300
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #176
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #288
	str	r10, [r9]
	sub	r9, fp, #176
	ldr	r9, [r9]
	sub	r10, fp, #288
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #172
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #280
	str	r10, [r9]
	sub	r9, fp, #172
	ldr	r9, [r9]
	sub	r10, fp, #280
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #168
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, fp, #276
	str	r10, [r9]
	sub	r9, fp, #168
	ldr	r9, [r9]
	sub	r10, fp, #276
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #164
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, fp, #272
	str	r10, [r9]
	sub	r9, fp, #164
	ldr	r9, [r9]
	sub	r10, fp, #272
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #160
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, fp, #564
	str	r10, [r9]
	sub	r9, fp, #160
	ldr	r9, [r9]
	sub	r10, fp, #564
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #156
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #544
	str	r10, [r9]
	sub	r9, fp, #156
	ldr	r9, [r9]
	sub	r10, fp, #544
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #152
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, fp, #532
	str	r10, [r9]
	sub	r9, fp, #152
	ldr	r9, [r9]
	sub	r10, fp, #532
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #148
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r10, [r9]
	sub	r9, fp, #524
	str	r10, [r9]
	sub	r9, fp, #148
	ldr	r9, [r9]
	sub	r10, fp, #524
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #144
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r10, [r9]
	sub	r9, fp, #516
	str	r10, [r9]
	sub	r9, fp, #144
	ldr	r9, [r9]
	sub	r10, fp, #516
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #140
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r10, [r9]
	sub	r9, fp, #476
	str	r10, [r9]
	sub	r9, fp, #140
	ldr	r9, [r9]
	sub	r10, fp, #476
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #136
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r10, [r9]
	sub	r9, fp, #456
	str	r10, [r9]
	sub	r9, fp, #136
	ldr	r9, [r9]
	sub	r10, fp, #456
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r10, [r9]
	sub	r9, fp, #444
	str	r10, [r9]
	sub	r9, fp, #132
	ldr	r9, [r9]
	sub	r10, fp, #444
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r10, [r9]
	sub	r9, fp, #432
	str	r10, [r9]
	sub	r9, fp, #128
	ldr	r9, [r9]
	sub	r10, fp, #432
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #124
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r10, [r9]
	sub	r9, fp, #428
	str	r10, [r9]
	sub	r9, fp, #124
	ldr	r9, [r9]
	sub	r10, fp, #428
	ldr	r10, [r10]
	add	r8,r9,r10
	sub	r9, fp, #96
	ldr	r10, [r9]
	sub	r9, fp, #852
	str	r10, [r9]
	sub	r10, fp, #852
	ldr	r10, [r10]
	add	r7,r8,r10
	sub	r9, fp, #100
	ldr	r10, [r9]
	sub	r9, fp, #836
	str	r10, [r9]
	sub	r10, fp, #836
	ldr	r10, [r10]
	add	r6,r7,r10
	sub	r9, fp, #104
	ldr	r10, [r9]
	sub	r9, fp, #820
	str	r10, [r9]
	sub	r10, fp, #820
	ldr	r10, [r10]
	add	r5,r6,r10
	sub	r9, fp, #108
	ldr	r10, [r9]
	sub	r9, fp, #800
	str	r10, [r9]
	sub	r10, fp, #800
	ldr	r10, [r10]
	add	r4,r5,r10
	sub	r9, fp, #4
	b	.LU40
.LU40:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:872
	movt	r10, #:upper16:872
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  commonSubexpressionElimination, .-commonSubexpressionElimination

	.align  2
	.global hoisting
hoisting:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:88
	movt	r10, #:upper16:88
	sub	sp,sp,r10
.LU42:
	b	.LU43
.LU43:
	sub	r9, fp, #24
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #28
	mov	r10, #2
	str	r10, [r9]
	sub	r9, fp, #32
	mov	r10, #3
	str	r10, [r9]
	sub	r9, fp, #36
	mov	r10, #4
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #0
	str	r10, [r9]
	b	.LU45
.LU45:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #40
	ldr	r10, [r10]
	movw	r9, #:lower16:1000000
	movt	r9, #:upper16:1000000
	cmp	r10,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU46
	b	.LU47
.LU46:
	sub	r9, fp, #4
	mov	r10, #5
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r9, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	add	r8,r9,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	add	r7,r8,r10
	sub	r9, fp, #8
	str	r7, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r9, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	add	r6,r9,r10
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	add	r5,r6,r10
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #16
	str	r4, [r9]
	b	.LU45
.LU47:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	sub	r9, fp, #20
	b	.LU44
.LU44:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:88
	movt	r10, #:upper16:88
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  hoisting, .-hoisting

	.align  2
	.global doubleIf
doubleIf:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	sub	sp,sp,r10
.LU49:
	b	.LU50
.LU50:
	sub	r9, fp, #8
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #2
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #3
	str	r10, [r9]
	sub	r9, fp, #20
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r5, [r9]
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU52
	b	.LU56
.LU52:
	sub	r9, fp, #12
	mov	r10, #20
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU53
	b	.LU54
	b	.LU57
.LU56:
	b	.LU57
.LU53:
	sub	r9, fp, #12
	mov	r10, #200
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #300
	str	r10, [r9]
	b	.LU55
.LU55:
	sub	r9, fp, #20
	mov	r10, #50
	str	r10, [r9]
	b	.LU57
.LU57:
	sub	r9, fp, #20
	ldr	r7, [r9]
	sub	r9, fp, #4
	b	.LU51
.LU54:
	sub	r9, fp, #8
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #2
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #3
	str	r10, [r9]
	b	.LU55
.LU51:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:36
	movt	r10, #:upper16:36
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  doubleIf, .-doubleIf

	.align  2
	.global integerDivide
integerDivide:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	sub	sp,sp,r10
.LU59:
	b	.LU60
.LU60:
	sub	r9, fp, #8
	mov	r10, #3000
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r9, [r9]
	movw	r10, #:lower16:4
	movt	r10, #:upper16:4
	mul	r10,r9,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#8
	bl	__aeabi_idiv
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#16
	bl	__aeabi_idiv
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	mul	r7,r9,r10
	sub	r9, fp, #8
	str	r7, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#64
	bl	__aeabi_idiv
	sub	r9, fp, #8
	str	r6, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r9, [r9]
	movw	r10, #:lower16:128
	movt	r10, #:upper16:128
	mul	r5,r9,r10
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r8, [r9]
	mov	%r0,r8
	mov	%r1,#4
	bl	__aeabi_idiv
	sub	r9, fp, #8
	str	r4, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #4
	b	.LU61
.LU61:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:60
	movt	r10, #:upper16:60
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  integerDivide, .-integerDivide

	.align  2
	.global association
association:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
	sub	sp,sp,r10
.LU63:
	b	.LU64
.LU64:
	sub	r9, fp, #8
	mov	r10, #10
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r9, [r9]
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	mul	r10,r9,r10
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	movw	r9, #:lower16:3
	movt	r9, #:upper16:3
	sub	r10, fp, #16
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r10, fp, #12
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#3
	bl	__aeabi_idiv
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r8, [r9]
	movw	r10, #:lower16:4
	movt	r10, #:upper16:4
	mul	r10,r8,r10
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#4
	bl	__aeabi_idiv
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r9, [r9]
	movw	r10, #:lower16:4
	movt	r10, #:upper16:4
	add	r7,r9,r10
	sub	r9, fp, #8
	str	r7, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r9, [r9]
	movw	r10, #:lower16:4
	movt	r10, #:upper16:4
	sub	r6,r9,r10
	sub	r9, fp, #8
	str	r6, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r9, [r9]
	movw	r10, #:lower16:50
	movt	r10, #:upper16:50
	mul	r5,r9,r10
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#50
	bl	__aeabi_idiv
	sub	r9, fp, #8
	str	r4, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #4
	b	.LU65
.LU65:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:72
	movt	r10, #:upper16:72
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  association, .-association

	.align  2
	.global tailRecursionHelper
tailRecursionHelper:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	sub	sp,sp,r10
.LU67:
	sub	r9, fp, #4
	str	%r0, [r9]
	sub	r9, fp, #8
	str	%r1, [r9]
	b	.LU68
.LU68:
	sub	r9, fp, #4
	ldr	r7, [r9]
	mov	r4,#0
	cmp	r7,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU70
	b	.LU71
.LU70:
	sub	r9, fp, #8
	ldr	r8, [r9]
	sub	r9, fp, #20
	b	.LU69
.LU71:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r6,r9,r10
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	add	r5,r9,r10
	mov	%r0,r6
	mov	%r1,r5
	bl	tailRecursionHelper
	mov	r4,%r0
	sub	r9, fp, #20
	b	.LU69
.LU72:
	b	.LU69
.LU69:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  tailRecursionHelper, .-tailRecursionHelper

	.align  2
	.global tailRecursion
tailRecursion:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	sub	sp,sp,r10
.LU74:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU75
.LU75:
	sub	r9, fp, #4
	ldr	r5, [r9]
	mov	%r0,r5
	mov	%r1,#0
	bl	tailRecursionHelper
	mov	r4,%r0
	sub	r9, fp, #12
	b	.LU76
.LU76:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  tailRecursion, .-tailRecursion

	.align  2
	.global unswitching
unswitching:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	sub	sp,sp,r10
.LU78:
	b	.LU79
.LU79:
	sub	r9, fp, #8
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #12
	mov	r10, #2
	str	r10, [r9]
	b	.LU81
.LU81:
	sub	r9, fp, #8
	ldr	r5, [r9]
	mov	r4,#0
	movw	r9, #:lower16:1000000
	movt	r9, #:upper16:1000000
	cmp	r5,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU82
	b	.LU83
.LU82:
	sub	r9, fp, #12
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r6,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU84
	b	.LU85
.LU84:
	sub	r9, fp, #8
	ldr	r7, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r7,r10
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU86
.LU85:
	sub	r9, fp, #8
	ldr	r8, [r9]
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	add	r4,r8,r10
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU86
.LU86:
	b	.LU81
.LU83:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r10, fp, #16
	ldr	r10, [r10]
	sub	r9, fp, #4
	b	.LU80
.LU80:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:32
	movt	r10, #:upper16:32
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  unswitching, .-unswitching

	.align  2
	.global randomCalculation
randomCalculation:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:124
	movt	r10, #:upper16:124
	sub	sp,sp,r10
.LU88:
	sub	r9, fp, #8
	str	%r0, [r9]
	b	.LU89
.LU89:
	sub	r9, fp, #12
	mov	r10, #0
	str	r10, [r9]
	sub	r9, fp, #16
	mov	r10, #0
	str	r10, [r9]
	b	.LU91
.LU91:
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #48
	ldr	r9, [r9]
	cmp	r10,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU92
	b	.LU93
.LU92:
	sub	r9, fp, #28
	mov	r10, #4
	str	r10, [r9]
	sub	r9, fp, #32
	mov	r10, #7
	str	r10, [r9]
	sub	r9, fp, #36
	mov	r10, #8
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r9, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r9, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	sub	r9, fp, #4
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r9, fp, #60
	ldr	r9, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	add	r10,r9,r10
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r9, fp, #100
	ldr	r9, [r9]
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	mul	r10,r9,r10
	sub	r9, fp, #56
	str	r10, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #12
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	movw	r9, #:lower16:3
	movt	r9, #:upper16:3
	sub	r10, fp, #80
	ldr	r10, [r10]
	mul	r8,r9,r10
	sub	r9, fp, #12
	str	r8, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r10, fp, #72
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#3
	bl	__aeabi_idiv
	sub	r9, fp, #12
	str	r7, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r9, [r9]
	movw	r10, #:lower16:4
	movt	r10, #:upper16:4
	mul	r6,r9,r10
	sub	r9, fp, #12
	str	r6, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #104
	str	r10, [r9]
	sub	r10, fp, #104
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#4
	bl	__aeabi_idiv
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #12
	str	r4, [r9]
	b	.LU91
.LU93:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #108
	str	r10, [r9]
	sub	r10, fp, #108
	ldr	r10, [r10]
	sub	r9, fp, #20
	b	.LU90
.LU90:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:124
	movt	r10, #:upper16:124
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  randomCalculation, .-randomCalculation

	.align  2
	.global iterativeFibonacci
iterativeFibonacci:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:64
	movt	r10, #:upper16:64
	sub	sp,sp,r10
.LU95:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU96
.LU96:
	movw	r9, #:lower16:0
	movt	r9, #:upper16:0
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r4,r9,r10
	sub	r9, fp, #28
	str	r4, [r9]
	sub	r9, fp, #16
	mov	r10, #1
	str	r10, [r9]
	sub	r9, fp, #8
	mov	r10, #0
	str	r10, [r9]
	b	.LU98
.LU98:
	sub	r9, fp, #8
	ldr	r7, [r9]
	sub	r9, fp, #4
	ldr	r6, [r9]
	mov	r4,#0
	cmp	r7,r6
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU99
	b	.LU100
.LU99:
	sub	r9, fp, #16
	ldr	r8, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	add	r5,r8,r10
	sub	r9, fp, #12
	str	r5, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #8
	str	r4, [r9]
	b	.LU98
.LU100:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #48
	str	r10, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #20
	b	.LU97
.LU97:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:64
	movt	r10, #:upper16:64
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  iterativeFibonacci, .-iterativeFibonacci

	.align  2
	.global recursiveFibonacci
recursiveFibonacci:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	sub	sp,sp,r10
.LU102:
	sub	r9, fp, #4
	str	%r0, [r9]
	b	.LU103
.LU103:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	mov	r6,#0
	sub	r10, fp, #20
	ldr	r10, [r10]
	cmp	r10,#0
	movle	r6,#1
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #16
	str	r10, [r9]
	mov	r5,#0
	sub	r10, fp, #16
	ldr	r10, [r10]
	cmp	r10,#1
	moveq	r5,#1
	orr	r4,r6,r5
	cmp	r4,#1
	beq	.LU105
	b	.LU106
.LU105:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #8
	b	.LU104
.LU106:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r8,r9,r10
	mov	%r0,r8
	bl	recursiveFibonacci
	mov	r7,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r9, [r9]
	movw	r10, #:lower16:2
	movt	r10, #:upper16:2
	sub	r6,r9,r10
	mov	%r0,r6
	bl	recursiveFibonacci
	mov	r5,%r0
	add	r4,r7,r5
	sub	r9, fp, #8
	b	.LU104
.LU107:
	b	.LU104
.LU104:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:48
	movt	r10, #:upper16:48
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  recursiveFibonacci, .-recursiveFibonacci

	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:148
	movt	r10, #:upper16:148
	sub	sp,sp,r10
.LU109:
	b	.LU110
.LU110:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r9, #:lower16:_scanned_
	movt	r9, #:upper16:_scanned_
	ldr	r10, [r9]
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r10, fp, #20
	ldr	r10, [r10]
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #4
	mov	r10, #1
	str	r10, [r9]
	b	.LU112
.LU112:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #24
	str	r10, [r9]
	mov	r4,#0
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #24
	ldr	r9, [r9]
	cmp	r10,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU113
	b	.LU114
.LU113:
	bl	constantFolding
	sub	r9, fp, #60
	str	%r0, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #88
	str	r10, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	constantPropagation
	sub	r9, fp, #56
	str	%r0, [r9]
	sub	r10, fp, #56
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	deadCodeElimination
	sub	r9, fp, #52
	str	%r0, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #132
	str	r10, [r9]
	sub	r10, fp, #132
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	interProceduralOptimization
	sub	r9, fp, #48
	str	%r0, [r9]
	sub	r10, fp, #48
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #120
	str	r10, [r9]
	sub	r10, fp, #120
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	commonSubexpressionElimination
	sub	r9, fp, #44
	str	%r0, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #84
	str	r10, [r9]
	sub	r10, fp, #84
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	hoisting
	sub	r9, fp, #40
	str	%r0, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r10, fp, #52
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	doubleIf
	sub	r9, fp, #36
	str	%r0, [r9]
	sub	r10, fp, #36
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #40
	str	r10, [r9]
	sub	r10, fp, #40
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	integerDivide
	sub	r9, fp, #32
	str	%r0, [r9]
	sub	r10, fp, #32
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #96
	str	r10, [r9]
	sub	r10, fp, #96
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	association
	sub	r9, fp, #28
	str	%r0, [r9]
	sub	r10, fp, #28
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #76
	str	r10, [r9]
	sub	r10, fp, #76
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #64
	str	r10, [r9]
	sub	r10, fp, #64
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#1000
	bl	__aeabi_idiv
	sub	r10, fp, #56
	ldr	r10, [r10]
	mov	%r0,r10
	bl	tailRecursion
	sub	r9, fp, #24
	str	%r0, [r9]
	sub	r10, fp, #24
	ldr	r10, [r10]
	sub	r9, fp, #8
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r10, fp, #44
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	bl	unswitching
	mov	r8,%r0
	sub	r9, fp, #8
	str	r8, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #100
	str	r10, [r9]
	sub	r10, fp, #100
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #92
	str	r10, [r9]
	sub	r10, fp, #92
	ldr	r10, [r10]
	mov	%r0,r10
	bl	randomCalculation
	mov	r7,%r0
	sub	r9, fp, #8
	str	r7, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #68
	str	r10, [r9]
	sub	r10, fp, #68
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #60
	str	r10, [r9]
	sub	r10, fp, #60
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#5
	bl	__aeabi_idiv
	sub	r10, fp, #48
	ldr	r10, [r10]
	mov	%r0,r10
	bl	iterativeFibonacci
	mov	r6,%r0
	sub	r9, fp, #8
	str	r6, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #128
	str	r10, [r9]
	sub	r10, fp, #128
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #124
	str	r10, [r9]
	sub	r10, fp, #124
	ldr	r10, [r10]
	mov	%r0,r10
	mov	%r1,#1000
	bl	__aeabi_idiv
	sub	r10, fp, #104
	ldr	r10, [r10]
	mov	%r0,r10
	bl	recursiveFibonacci
	mov	r5,%r0
	sub	r9, fp, #8
	str	r5, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, fp, #80
	str	r10, [r9]
	sub	r10, fp, #80
	ldr	r10, [r10]
	mov	%r1,r10
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #72
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r4,r9,r10
	sub	r9, fp, #4
	str	r4, [r9]
	b	.LU112
.LU114:
	mov	%r1,#9999
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	mov	r10, #0
	b	.LU111
.LU111:
	sub	r9, fp, #4
	mov	%r0,r4
	movw	r10, #:lower16:148
	movt	r10, #:upper16:148
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
