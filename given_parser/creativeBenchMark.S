                  map2: 
[]
	.arch armv7-a
	.text
                  map2: 
[%u13=2, %u14=0, %u11=0, %u12=0, %u17=5, %u18=0, %u15=0, %u16=0, %u19=0, %u50=0, %u53=0, %u10=0, %u51=1, %u52=1, %u24=0, %u25=3, %u22=0, %u23=0, %u28=0, %u29=6, %u26=0, %u27=0, @_scanned_=1, %u20=0, %u21=13, %u0=0, %u35=0, %u1=0, %u36=0, %u2=0, %u33=4, %u3=0, %u34=0, %u4=0, %u39=0, %u5=0, %u6=0, %u37=0, %u7=0, %u38=0, %u8=0, %u9=0, %u31=0, %u32=0, %u30=0, %u46=0, %u47=0, %u44=0, %u45=0, %u48=0, %u49=0, %n0=7, %n1=8, %n2=9, %n3=10, %n4=11, %n5=12, %u42=0, %u43=0, %u40=0, %u41=0]
	.align  2
	.global buildList
buildList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:52
	movt	r9, #:upper16:52
	sub	fp,sp,r9
.LU2:
	b	.LU3
.LU3:
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	mov	%r0,#8
	bl	malloc
	mov	r4,%r0
	mov	r4,r4
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	ldr	r6, [r5]
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	sub	r9, fp, #36
	ldr	r10, [r9]
	ldr	r10, [r5]
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	ldr	r7, [r5]
	sub	r9, fp, #24
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	movw	r4, #:lower16:_scanned_
	movt	r4, #:upper16:_scanned_
	ldr	r8, [r5]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#0
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	sub	r9, fp, #24
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	r4,r10
	add	r4,r4,#4
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	r5,r10
	add	r5,r5,#4
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	b	.LU4
                  map2: 
[%_retval_=1, %u54=0]
.LU4:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:52
	movt	r9, #:upper16:52
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  buildList, .-buildList

                  map2: 
[%u57=0, %u58=0, %u55=0, %u56=0, %u59=0, %u71=0, %u70=0, %u75=0, %u54=0, %u73=0, %u74=0, %u68=0, %u69=0, %u66=0, %u67=0, %i=3, %cur=1, %product=4, %u60=0, %u61=0, %u64=0, %u65=0, %u62=0, %list=2, %u63=0]
	.align  2
	.global multiple
multiple:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7}
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	sub	fp,sp,r9
.LU6:
	mov	r6,%r0
	b	.LU7
.LU7:
	mov	r4,r6
	mov	r4,r5
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r5
	add	r4,r4,#4
	mov	r4,r4
	b	.LU9
.LU9:
	mov	r4,r7
	mov	r4,#0
	cmp	r4,#5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU10
	b	.LU11
.LU10:
	mov	r4,r8
	mov	r4,r5
	add	r4,r4,#0
	mov	r4,r4
	mul	r4,r4,r4
	mov	r4,r5
	add	r4,r4,#4
	mov	r4,r4
	mov	r4,r8
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r4,r7
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r4,r9
	b	.LU9
.LU11:
	mov	r4,r8
	b	.LU8
                  map2: 
[%_retval_=1, %u76=0]
.LU8:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:16
	movt	r9, #:upper16:16
	add	fp,sp,r9
	pop	{r4,r5,r6,r7}
	pop	{fp,pc}
	.size  multiple, .-multiple

                  map2: 
[%u79=0, %u77=0, %u78=0, %sum=5, %u90=0, %u93=0, %u91=0, %u92=0, %u97=0, %u76=0, %u95=0, %u96=0, %u88=0, %u89=0, %i=4, %cur=2, %u82=0, %u83=0, %u80=1, %u81=1, %u86=0, %u87=0, %u84=0, %list=3, %u85=0]
	.align  2
	.global add
add:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	sub	fp,sp,r9
.LU13:
	mov	r7,%r0
	b	.LU14
.LU14:
	mov	r4,r7
	mov	r4,r6
	add	r4,r4,#0
	mov	r4,r4
	mov	r5,r6
	add	r5,r5,#4
	mov	r4,r5
	b	.LU16
.LU16:
	mov	r4,r8
	mov	r4,#0
	cmp	r4,#5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU17
	b	.LU18
.LU17:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	r4,r6
	add	r4,r4,#0
	mov	r4,r4
	add	r4,r4,r4
	mov	r4,r6
	add	r4,r4,#4
	mov	r4,r4
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	mov	r4,r8
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r4,r9
	b	.LU16
.LU18:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	b	.LU15
                  map2: 
[%_retval_=1, %u98=0]
.LU15:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:20
	movt	r9, #:upper16:20
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  add, .-add

                  map2: 
[%u99=0, %u109=0, %u108=0, %u107=0, %u106=0, %u105=0, %u104=0, %u103=1, %u102=1, %u113=0, %u98=0, %u101=0, %u100=1, %u111=1, %list=2, %u110=1]
	.align  2
	.global recurseList
recurseList:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5}
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	sub	fp,sp,r9
.LU20:
	mov	r6,%r0
	b	.LU21
.LU21:
	mov	r4,r6
	add	r4,r4,#4
	mov	r5,r4
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU23
	b	.LU24
.LU23:
	mov	r5,r6
	add	r5,r5,#0
	mov	r4,r5
	b	.LU22
.LU24:
	mov	r4,r6
	add	r4,r4,#0
	mov	r4,r4
	mov	r4,r6
	add	r4,r4,#4
	mov	r5,r4
	mov	%r0,r5
	bl	recurseList
	mov	r5,%r0
	mul	r4,r4,r5
	b	.LU22
.LU25:
	b	.LU22
                  map2: 
[%_retval_=1, %u114=0]
.LU22:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	add	fp,sp,r9
	pop	{r4,r5}
	pop	{fp,pc}
	.size  recurseList, .-recurseList

                  map2: 
[%u120=0, %u141=0, %u140=0, %sum=3, %u119=0, %result=8, %u117=0, %u139=1, %u116=0, %u138=0, %u137=1, %u114=0, %u135=0, %u134=0, %u133=1, %u132=1, %u130=0, %i=6, %bigProduct=7, %product=2, %u129=0, %u128=0, %u127=0, %u126=1, %u125=0, %u124=4, %u123=1, %u122=1, %u143=0, %list=5]
	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:32
	movt	r9, #:upper16:32
	sub	fp,sp,r9
.LU27:
	b	.LU28
.LU28:
	bl	buildList
	mov	r4,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	bl	multiple
	mov	r4,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	bl	add
	mov	r4,%r0
	mov	r5,r6
	mov	r5,r7
	mov	%r0,r5
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r4,r5,r8
	b	.LU30
.LU30:
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#2
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU31
	b	.LU32
.LU31:
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r0,r4
	bl	recurseList
	mov	r4,%r0
	add	r5,r4,r4
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	r5,r10
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r5,r9
	b	.LU30
.LU32:
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU33
.LU33:
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r5,r10
	mov	r4,#0
	cmp	r5,#0
	movne	r4,#1
	cmp	r4,#1
	beq	.LU34
	b	.LU35
.LU34:
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r5,r10
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r4,r5,r9
	b	.LU33
.LU35:
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	mov	r4,r10
	mov	%r1,r4
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	b	.LU29
                  map2: 
[%_retval_=1, %u145=0]
.LU29:
	mov	r4,r5
	mov	%r0,r4
	movw	r9, #:lower16:32
	movt	r9, #:upper16:32
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  main, .-main

                  map2: 
[]
	.section	.rodata
	.align  2
.println:
	.asciz  "%ld\0A\00"
	.align  2
.print:
	.asciz  "%ld \00"
	.align  2
.read:
	.asciz  "%ld\00"
	.comm  _scanned_,4,4
	.global __aeabi_idiv
