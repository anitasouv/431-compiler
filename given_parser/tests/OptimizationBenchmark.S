									map: 
[]
	.arch armv7-a
	.comm  global1,4,4
	.comm  global2,4,4
	.comm  global3,4,4
	.text
									map: 
[%u13=1, %u0=3, %u14=0, %u1=-1, 23=-2, %u2=3, %u11=-3, %u12=1, %u3=3, %u4=3, %u5=3, %u6=3, %u7=3, %u8=3, %u9=3, 5=-4, 8=-5, %a=-6, %u10=2]
	.align  2
	.global constantFolding
constantFolding:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6}
	movw	r9, #:lower16:36
	movt	r9, #:upper16:36
	sub	fp,sp,r9
.LU2:
	b	.LU3
.LU3:
	sub	r9, fp, #20
	ldr	r10, [r9]
	movw	r9, #:lower16:9
	movt	r9, #:upper16:9
	mul	r7,r10,r9
	mov	%r0,r7
	mov	%r1,#4
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	add	r7,r10,r9
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	mul	r7,r10,r10
	sub	r7,r7,r7
	movw	r9, #:lower16:9
	movt	r9, #:upper16:9
	add	r7,r7,r9
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	r7,r7,r9
	movw	r9, #:lower16:6
	movt	r9, #:upper16:6
	add	r7,r7,r9
	movw	r9, #:lower16:9
	movt	r9, #:upper16:9
	sub	r7,r7,r9
	movw	r9, #:lower16:18
	movt	r9, #:upper16:18
	sub	r7,r7,r9
	sub	r9, fp, #8
	ldr	r10, [r9]
	movw	r9, #:lower16:3
	movt	r9, #:upper16:3
	mul	r6,r10,r9
	mov	%r0,r6
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #12
	ldr	r10, [r9]
	movw	r9, #:lower16:90
	movt	r9, #:upper16:90
	mul	r5,r10,r9
	add	r5,r7,r5
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU4
									map: 
[%_retval_=-1, %u15=0]
.LU4:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:36
	movt	r9, #:upper16:36
	add	fp,sp,r9
	pop	{r4,r5,r6}
	pop	{fp,pc}
	.size  constantFolding, .-constantFolding

									map: 
[%u120=3, %u99=3, %u17=3, %u18=3, %u15=3, %u16=3, %u19=3, %u90=5, %u119=3, %u118=3, %u117=3, %u93=-1, %u116=3, %u94=5, %u115=3, %u91=5, %u114=3, %u92=5, %u113=3, %u97=3, %u112=3, %u98=3, %u111=3, %u95=5, %u110=3, %u96=5, %u24=3, %u25=3, %u22=3, %u23=3, %u28=3, %u29=3, %u26=3, %u27=3, %u109=3, %u108=3, %u107=3, %u106=3, %u105=3, %u104=3, %u103=3, %u102=3, %u20=3, %u101=3, %u21=3, %u100=3, %u142=3, %u35=3, %u141=3, %u36=3, %u140=3, %u33=3, %u34=3, %u39=3, %u37=3, %u38=3, %u139=3, %u138=3, %u137=3, %u136=3, %u135=3, %u31=3, %u134=3, %u32=3, %u133=3, %u132=3, %u30=3, %u131=4, %u46=3, %u130=4, %u47=3, %u44=-9, %u45=3, %u48=8, %u49=8, %u129=4, %u128=4, %u127=4, %u126=4, %u125=4, %u124=4, %u42=3, %u123=4, %u43=3, %u122=4, %u40=3, %u121=4, %u41=3, %u57=8, %u58=8, %u55=8, %u56=8, %u59=8, %u50=8, %u53=8, %u54=8, %u51=8, %u52=8, %u68=8, %u69=8, %u66=8, %u67=8, %u60=8, %u61=8, %u64=8, %u145=0, %u65=8, %u144=1, %u62=8, %u143=2, %u63=8, %u79=8, %u77=8, %u78=8, %u71=8, %u72=8, %u70=8, %u75=8, %a=-2, %u76=8, %b=-3, %u73=8, %c=-4, %u74=8, %d=-5, %e=-6, %f=-7, %u88=6, %g=-8, %u89=5, %h=-10, %i=-11, %j=-12, %k=-13, %l=-14, %m=-15, %n=-16, %o=-17, %p=-18, %r=-19, %s=-20, %t=-21, %v=-22, %w=-23, %x=-24, %y=-25, %z=-26, %u82=8, %u83=8, %u80=8, %u81=8, %u86=7, %u87=6, %u84=8, %u85=7]
	.align  2
	.global constantPropagation
constantPropagation:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:136
	movt	r9, #:upper16:136
	sub	fp,sp,r9
.LU6:
	b	.LU7
.LU7:
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #20
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #28
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #32
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #40
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #44
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #48
	ldr	r10, [r9]
	ldr	r10, [r7]
	mul	r7,r7,r7
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #40
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #44
	ldr	r10, [r9]
	ldr	r10, [r7]
	mul	r7,r7,r7
	add	r7,r7,r7
	sub	r9, fp, #52
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r7,r7,r7
	sub	r9, fp, #40
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #44
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #48
	ldr	r10, [r9]
	ldr	r10, [r7]
	mul	r7,r7,r7
	sub	r7,r7,r7
	sub	r9, fp, #52
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #56
	ldr	r10, [r9]
	ldr	r10, [r7]
	mov	%r0,r7
	mov	%r1,r7
	bl	__aeabi_idiv
	sub	r9, fp, #36
	ldr	r10, [r9]
	add	r7,r7,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #28
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r10,r7,r7
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r10, [r9]
	sub	r9, sp, #20
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #24
	str	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	sub	r9, sp, #16
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #16
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #68
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #16
	ldr	r10, [r9]
	add	r7,r10,r7
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #72
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r7,r7,r7
	sub	r9, fp, #64
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #68
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #28
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r7]
	mul	r7,r7,r7
	sub	r7,r7,r7
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r7]
	mul	r7,r7,r7
	sub	r9, fp, #52
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r7,r7,r7
	sub	r9, fp, #56
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r7,r7,r7
	sub	r9, fp, #88
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #80
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r7,r7,r7
	sub	r9, fp, #76
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #20
	ldr	r10, [r9]
	ldr	r10, [r8]
	mul	r8,r7,r8
	sub	r8,r7,r8
	sub	r9, fp, #68
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r9, fp, #92
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r8,r8,r8
	sub	r9, fp, #88
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r8,r8,r8
	sub	r9, fp, #64
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r8,r8,r8
	sub	r9, fp, #72
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r9, fp, #96
	ldr	r10, [r9]
	ldr	r10, [r7]
	mul	r7,r8,r7
	sub	r9, fp, #84
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #92
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r7,r7,r7
	sub	r9, fp, #92
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #96
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r7,r7,r7
	sub	r9, fp, #100
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r7,r7,r7
	sub	r9, fp, #52
	ldr	r10, [r9]
	ldr	r10, [r6]
	add	r5,r7,r6
	sub	r9, fp, #104
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU8
									map: 
[%u146=0, %_retval_=-1]
.LU8:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:136
	movt	r9, #:upper16:136
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  constantPropagation, .-constantPropagation

									map: 
[%u153=1, %e=-1, %u152=1, %u151=1, %u150=1, %u149=1, %u148=1, %u147=1, %u146=1, %a=-2, %b=-3, %c=-4, %u154=0, %d=-5]
	.align  2
	.global deadCodeElimination
deadCodeElimination:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4}
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	sub	fp,sp,r9
.LU10:
	b	.LU11
.LU11:
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r5,r5,r5
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r5,r5,r5
	sub	r9, fp, #20
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r5,r5,r5
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r4,r5,r5
	b	.LU12
									map: 
[%_retval_=-1, %u155=0]
.LU12:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	add	fp,sp,r9
	pop	{r4}
	pop	{fp,pc}
	.size  deadCodeElimination, .-deadCodeElimination

									map: 
[%number=-1, %u162=0, %u161=0, %u160=1, %total=-3, %u159=2, %u158=3, %u157=4, %u156=0, %u155=1]
	.align  2
	.global sum
sum:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7}
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	sub	fp,sp,r9
.LU14:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r0,r10
	b	.LU15
.LU15:
	b	.LU17
.LU17:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU18
	b	.LU19
.LU18:
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r6,r8,r7
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r4,r5,r9
	b	.LU17
.LU19:
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU16
									map: 
[%_retval_=-1, %u163=0]
.LU16:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	add	fp,sp,r9
	pop	{r4,r5,r6,r7}
	pop	{fp,pc}
	.size  sum, .-sum

									map: 
[%u164=1, %u163=1, %a=-1, %b=-2, %u165=0]
	.align  2
	.global doesntModifyGlobals
doesntModifyGlobals:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU21:
	b	.LU22
.LU22:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r4,r5,r5
	b	.LU23
									map: 
[%_retval_=-1, %u166=0]
.LU23:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4}
	pop	{fp,pc}
	.size  doesntModifyGlobals, .-doesntModifyGlobals

									map: 
[%u174=0, %u173=0, %u172=1, %u170=0, %u180=0, @global1=-1, @global2=-2, @global3=-4, %u169=0, %u168=1, %a=-3, %u178=0, %u166=2, %u177=0, %u176=1]
	.align  2
	.global interProceduralOptimization
interProceduralOptimization:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5}
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	sub	fp,sp,r9
.LU25:
	b	.LU26
.LU26:
	mov	%r0,#100
	bl	sum
	mov	r6,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU28
	b	.LU29
.LU28:
	mov	%r0,#10000
	bl	sum
	mov	r4,%r0
	b	.LU36
.LU29:
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU30
	b	.LU31
	b	.LU36
.LU36:
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU27
.LU30:
	mov	%r0,#20000
	bl	sum
	mov	r4,%r0
	b	.LU32
.LU32:
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#3
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU33
	b	.LU34
.LU33:
	mov	%r0,#30000
	bl	sum
	mov	r4,%r0
	b	.LU35
.LU35:
	b	.LU36
.LU34:
	b	.LU35
.LU31:
	b	.LU32
									map: 
[%_retval_=-1, %u181=0]
.LU27:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:24
	movt	r9, #:upper16:24
	add	fp,sp,r9
	pop	{r4,r5}
	pop	{fp,pc}
	.size  interProceduralOptimization, .-interProceduralOptimization

									map: 
[%u199=12, %u198=12, %u197=12, %u196=12, %u195=-15, %u194=12, %u193=12, %u192=12, %u191=12, %u190=12, %u189=12, %u188=12, %u187=12, %u419=9, %u418=9, %u417=9, %u416=9, %u415=9, %u414=9, %u413=9, %u412=9, %u411=9, %u410=9, %u409=9, %u408=9, %u407=9, %u406=9, %u405=9, %u404=9, %u403=9, %u402=9, %u401=9, %u400=9, %u319=9, %u439=9, %u318=9, %u438=9, %u317=9, %u437=9, %u316=9, %u436=9, %u315=9, %u435=9, %u314=9, %u434=9, %u313=9, %u433=9, %u312=-3, %u432=9, %u311=9, %u431=9, %u310=9, %u430=9, %u309=9, %u429=9, %u308=9, %u428=9, %u307=9, %u427=9, %u306=9, %u426=9, %u305=9, %u425=9, %u304=9, %u424=9, %u303=9, %u423=9, %u302=9, %u422=9, %u301=9, %u421=9, %u300=9, %u420=9, %u340=9, %u219=12, %u339=9, %u218=12, %u217=12, %u338=-2, %u337=9, %u216=12, %u336=9, %u215=12, %u335=9, %u214=12, %u334=9, %u213=12, %u333=9, %u212=12, %a=-4, %u332=9, %u211=12, %b=-7, %u331=9, %u210=12, %c=-9, %u330=9, %d=-10, %e=-11, %f=-13, %g=-16, %h=-17, %i=-18, %j=-19, %k=-20, %l=-21, %m=-22, %n=-23, %o=-24, %p=-25, %q=-26, %r=-27, %s=-28, %t=-29, %u=-30, %v=-31, %w=-32, %x=-33, %u209=12, %y=-34, %u329=9, %u208=-35, %z=-36, %u328=9, %u207=12, %u448=0, %u327=9, %u206=12, %u447=1, %u326=9, %u205=12, %u446=2, %u204=12, %u325=-37, %u445=3, %u324=9, %u203=12, %u444=4, %u323=9, %u202=12, %u443=5, %u322=9, %u201=12, %u442=6, %u321=9, %u200=12, %u441=7, %u320=9, %u440=8, %u362=10, %u241=12, %u361=10, %u240=12, %u360=10, %u239=12, %u359=10, %u238=12, %u358=10, %u237=12, %u357=10, %u236=12, %u356=10, %u235=12, %u355=10, %u234=-5, %u354=10, %u233=12, %u353=10, %u232=12, %u352=10, %u231=12, %u230=12, %u351=-12, %u350=10, %u229=12, %u349=10, %u228=12, %u348=10, %u227=12, %u347=9, %u226=12, %u346=9, %u225=12, %u345=9, %u224=12, %u344=9, %u223=12, %u343=9, %u222=12, %u342=9, %u221=-41, %u341=9, %u220=12, %u384=9, %u263=9, %u383=9, %u262=9, %u382=9, %u261=9, %u381=9, %u260=-1, %u380=9, %u259=9, %u379=9, %u258=9, %u378=9, %u257=9, %u256=9, %u377=-6, %u376=9, %u255=9, %u375=9, %u254=9, %u374=9, %u253=9, %u373=9, %u252=9, %u372=9, %u251=9, %u371=9, %u250=9, %u370=9, %u249=9, %u369=9, %u248=9, %u368=9, %u247=-38, %u367=9, %u246=9, %u245=9, %u366=-39, %u365=9, %u244=9, %u364=9, %u243=10, %u363=9, %u242=11, %u285=9, %u284=9, %u283=9, %u282=9, %u281=9, %u280=9, %u279=9, %u399=9, %u278=9, %u398=9, %u277=9, %u397=9, %u276=9, %u396=9, %u275=9, %u395=9, %u274=9, %u394=9, %u273=-14, %u393=9, %u272=9, %u392=9, %u271=9, %u391=9, %u270=9, %u390=9, %u269=9, %u389=9, %u268=9, %u388=9, %u267=9, %u266=9, %u387=-40, %u386=9, %u265=9, %u385=9, %u264=9, %u185=12, %u184=13, %u183=14, %u182=15, %u181=16, %u299=-8, %u298=9, %u297=9, %u296=9, %u295=9, %u294=9, %u293=9, %u292=9, %u291=9, %u290=9, %u289=9, %u288=9, %u287=9, %u286=-42]
	.align  2
	.global commonSubexpressionElimination
commonSubexpressionElimination:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:232
	movt	r9, #:upper16:232
	sub	fp,sp,r9
.LU38:
	b	.LU39
.LU39:
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #56
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #52
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #60
	ldr	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #52
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #44
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #48
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #60
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #140
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #164
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #44
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #20
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #40
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #44
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #36
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #152
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #4
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #56
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #168
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #12
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #148
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #36
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #48
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #156
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #160
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #44
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #52
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #64
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #68
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #72
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #76
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #80
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #84
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #88
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #92
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #96
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #100
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #104
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #108
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #112
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #116
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #120
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #124
	ldr	r10, [r9]
	sub	r9, sp, #28
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #28
	str	r10, [r9]
	sub	r9, fp, #128
	ldr	r10, [r9]
	sub	r9, sp, #20
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, fp, #24
	ldr	r10, [r9]
	add	r10,r10,r10
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #132
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	add	r8,r10,r10
	sub	r9, fp, #136
	ldr	r10, [r9]
	ldr	r10, [r7]
	add	r6,r8,r7
	sub	r9, fp, #144
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r4,r6,r5
	b	.LU40
									map: 
[%_retval_=-1, %u449=0]
.LU40:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:232
	movt	r9, #:upper16:232
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  commonSubexpressionElimination, .-commonSubexpressionElimination

									map: 
[%u450=0, %u461=1, %u460=1, %g=-2, %i=-1, %u449=1, %u459=1, %u458=1, %u457=1, %u456=1, %u455=1, %u454=1, %a=-4, %u453=1, %b=-5, %u452=1, %u463=0, %c=-6, %u462=0, %u451=1, %d=-7]
	.align  2
	.global hoisting
hoisting:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4}
	movw	r9, #:lower16:32
	movt	r9, #:upper16:32
	sub	fp,sp,r9
.LU42:
	b	.LU43
.LU43:
	b	.LU45
.LU45:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	movw	r9, #:lower16:1000000
	movt	r9, #:upper16:1000000
	cmp	r5,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU46
	b	.LU47
.LU46:
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r5]
	sub	r9, fp, #20
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r5,r5,r5
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r5,r5,r5
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r5]
	sub	r9, fp, #28
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r5,r5,r5
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	add	r5,r5,r5
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r5,r9
	b	.LU45
.LU47:
	sub	r9, fp, #20
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU44
									map: 
[%_retval_=-1, %u464=0]
.LU44:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:32
	movt	r9, #:upper16:32
	add	fp,sp,r9
	pop	{r4}
	pop	{fp,pc}
	.size  hoisting, .-hoisting

									map: 
[%u468=0, %u467=0, %u466=1, %u465=0, %a=-1, %u464=1, %d=-2]
	.align  2
	.global doubleIf
doubleIf:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU49:
	b	.LU50
.LU50:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU52
	b	.LU56
.LU52:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#1
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU53
	b	.LU54
	b	.LU57
.LU56:
	b	.LU57
.LU53:
	b	.LU55
.LU55:
	b	.LU57
.LU57:
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU51
.LU54:
	b	.LU55
									map: 
[%u469=0, %_retval_=-1]
.LU51:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4}
	pop	{fp,pc}
	.size  doubleIf, .-doubleIf

									map: 
[%u483=1, %u472=2, %u482=1, %u471=2, %u481=1, %u469=2, %u479=1, %u478=1, %u477=1, %a=-1, %u475=1, %u485=0, %u473=1]
	.align  2
	.global integerDivide
integerDivide:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU59:
	b	.LU60
.LU60:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r0,r6
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r6]
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	mul	r6,r6,r9
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	%r0,r5
	mov	%r1,#8
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	%r0,r5
	mov	%r1,#16
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:32
	movt	r9, #:upper16:32
	mul	r5,r5,r9
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	%r0,r5
	mov	%r1,#64
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:128
	movt	r9, #:upper16:128
	mul	r5,r5,r9
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	%r0,r5
	mov	%r1,#4
	bl	__aeabi_idiv
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU61
									map: 
[%_retval_=-1, %u486=0]
.LU61:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4,r5}
	pop	{fp,pc}
	.size  integerDivide, .-integerDivide

									map: 
[%u494=10, %u492=10, %u491=10, %u490=10, 3=-1, %u506=0, %u504=1, %u503=2, %u502=3, %u501=4, %u500=5, %u499=6, %u488=10, %u498=7, %u487=10, %a=-2, %u486=10, %u496=8, %u495=9]
	.align  2
	.global association
association:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:48
	movt	r9, #:upper16:48
	sub	fp,sp,r9
.LU63:
	b	.LU64
.LU64:
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	mul	r10,r10,r9
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	mov	%r0,r10
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, fp, #36
	ldr	r10, [r9]
	mul	r10,r10,r10
	sub	r9, fp, #36
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #32
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #36
	ldr	r10, [r9]
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	mul	r10,r10,r9
	sub	r9, fp, #32
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #24
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	%r0,r10
	mov	%r1,#4
	bl	__aeabi_idiv
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #20
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #24
	ldr	r10, [r9]
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	add	r10,r10,r9
	sub	r9, fp, #20
	str	r10, [r9]
	sub	r9, fp, #8
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	sub	r8,r10,r9
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r7]
	movw	r9, #:lower16:50
	movt	r9, #:upper16:50
	mul	r6,r7,r9
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	%r0,r5
	mov	%r1,#50
	bl	__aeabi_idiv
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU65
									map: 
[%_retval_=-1, %u507=0]
.LU65:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:48
	movt	r9, #:upper16:48
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  association, .-association

									map: 
[%u509=0, %u508=0, %u507=1, %value=-1, %sum=-2, %u515=0, %u514=1, %u513=2, %u512=3, %u511=4, %u510=5]
	.align  2
	.global tailRecursionHelper
tailRecursionHelper:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	sub	fp,sp,r9
.LU67:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r0,r10
	sub	r9, fp, #8
	ldr	r10, [r9]
	mov	%r1,r10
	b	.LU68
.LU68:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU70
	b	.LU71
.LU70:
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU69
.LU71:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r8,r10,r9
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r6]
	add	r5,r7,r6
	mov	%r0,r8
	mov	%r1,r5
	bl	tailRecursionHelper
	mov	r4,%r0
	b	.LU69
.LU72:
	b	.LU69
									map: 
[%u517=0, %_retval_=-1]
.LU69:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  tailRecursionHelper, .-tailRecursionHelper

									map: 
[%u517=1, %u518=0, %value=-1]
	.align  2
	.global tailRecursion
tailRecursion:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4}
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	sub	fp,sp,r9
.LU74:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r0,r10
	b	.LU75
.LU75:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	%r0,r5
	mov	%r1,#0
	bl	tailRecursionHelper
	mov	r4,%r0
	b	.LU76
									map: 
[%u520=0, %_retval_=-1]
.LU76:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:8
	movt	r9, #:upper16:8
	add	fp,sp,r9
	pop	{r4}
	pop	{fp,pc}
	.size  tailRecursion, .-tailRecursion

									map: 
[%u528=0, %u527=0, %u526=1, %u525=0, %u524=1, %u523=0, %u522=1, %u521=0, %u520=1, %a=-1, %b=-2]
	.align  2
	.global unswitching
unswitching:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4}
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	sub	fp,sp,r9
.LU78:
	b	.LU79
.LU79:
	b	.LU81
.LU81:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	movw	r9, #:lower16:1000000
	movt	r9, #:upper16:1000000
	cmp	r5,r9
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU82
	b	.LU83
.LU82:
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r5,#2
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU84
	b	.LU85
.LU84:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r5,r9
	b	.LU86
.LU85:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	add	r4,r5,r9
	b	.LU86
.LU86:
	b	.LU81
.LU83:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU80
									map: 
[%_retval_=-1, %u529=0]
.LU80:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:12
	movt	r9, #:upper16:12
	add	fp,sp,r9
	pop	{r4}
	pop	{fp,pc}
	.size  unswitching, .-unswitching

									map: 
[%u539=4, %sum=-6, %u538=4, %u537=4, %u536=4, %u535=4, %u534=4, %u533=4, %u555=0, %u554=0, %u532=4, %u531=0, %u553=1, %a=-8, %u530=1, %b=-9, %u551=2, %c=-10, %u550=3, %d=-11, %e=-4, %i=-3, %number=-1, %u529=2, 3=-5, %u549=4, %u547=4, %u546=4, %u545=4, %u543=4, %u542=4, %u541=4, %u540=4]
	.align  2
	.global randomCalculation
randomCalculation:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7}
	movw	r9, #:lower16:60
	movt	r9, #:upper16:60
	sub	fp,sp,r9
.LU88:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r0,r10
	b	.LU89
.LU89:
	b	.LU91
.LU91:
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r6,r5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU92
	b	.LU93
.LU92:
	sub	r9, fp, #32
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r9, fp, #36
	ldr	r10, [r9]
	ldr	r10, [r8]
	add	r8,r8,r8
	sub	r9, fp, #44
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r9, fp, #40
	ldr	r10, [r9]
	ldr	r10, [r8]
	add	r8,r8,r8
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r8]
	add	r8,r8,r8
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r8]
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	mul	r8,r8,r9
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r8]
	mov	%r0,r8
	mov	%r1,#2
	bl	__aeabi_idiv
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r8]
	sub	r9, fp, #20
	ldr	r10, [r9]
	mul	r8,r10,r8
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r8]
	mov	%r0,r8
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	%r1,r10
	bl	__aeabi_idiv
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r8]
	movw	r9, #:lower16:4
	movt	r9, #:upper16:4
	mul	r7,r8,r9
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r0,r6
	mov	%r1,#4
	bl	__aeabi_idiv
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r5,r9
	b	.LU91
.LU93:
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU90
									map: 
[%_retval_=-1, %u556=0]
.LU90:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:60
	movt	r9, #:upper16:60
	add	fp,sp,r9
	pop	{r4,r5,r6,r7}
	pop	{fp,pc}
	.size  randomCalculation, .-randomCalculation

									map: 
[%u560=6, %i=-4, %previous=-8, 0=-2, %number=-1, %sum=-5, %u559=0, %result=-7, %u558=1, %u557=2, %u556=0, %u567=0, %u566=0, %u565=1, %u564=2, %u563=3, %u562=4, %u561=5]
	.align  2
	.global iterativeFibonacci
iterativeFibonacci:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:56
	movt	r9, #:upper16:56
	sub	fp,sp,r9
.LU95:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r0,r10
	b	.LU96
.LU96:
	sub	r9, fp, #8
	ldr	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r4,r10,r9
	b	.LU98
.LU98:
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r6,r5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU99
	b	.LU100
.LU99:
	sub	r9, fp, #28
	ldr	r10, [r9]
	sub	r9, sp, #16
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #32
	ldr	r10, [r9]
	sub	r9, sp, #12
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	add	r8,r10,r10
	sub	r9, fp, #28
	ldr	r10, [r9]
	ldr	r10, [r7]
	sub	r9, fp, #20
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #16
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r5,r9
	b	.LU98
.LU100:
	sub	r9, fp, #28
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU97
									map: 
[%u568=0, %_retval_=-1]
.LU97:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:56
	movt	r9, #:upper16:56
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  iterativeFibonacci, .-iterativeFibonacci

									map: 
[%u571=1, %u582=0, %u570=1, %u580=1, %number=-1, %u569=1, %u568=1, %u579=2, %u578=3, %u576=4, %u575=5, %u574=6, %u573=0, %u572=0]
	.align  2
	.global recursiveFibonacci
recursiveFibonacci:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	sub	fp,sp,r9
.LU102:
	sub	r9, fp, #4
	ldr	r10, [r9]
	mov	%r0,r10
	b	.LU103
.LU103:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r5,#0
	cmp	r5,#0
	movle	r5,#1
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r5,#0
	cmp	r5,#1
	moveq	r5,#1
	orr	r4,r5,r5
	cmp	r4,#1
	beq	.LU105
	b	.LU106
.LU105:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU104
.LU106:
	sub	r9, fp, #4
	ldr	r10, [r9]
	sub	r9, sp, #16
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r10, [r9]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	sub	r10,r10,r9
	sub	r9, fp, #16
	str	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	%r0,r10
	bl	recursiveFibonacci
	mov	r8,%r0
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r7]
	movw	r9, #:lower16:2
	movt	r9, #:upper16:2
	sub	r6,r7,r9
	mov	%r0,r6
	bl	recursiveFibonacci
	mov	r5,%r0
	add	r4,r8,r5
	b	.LU104
.LU107:
	b	.LU104
									map: 
[%_retval_=-1, %u583=0]
.LU104:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:28
	movt	r9, #:upper16:28
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  recursiveFibonacci, .-recursiveFibonacci

									map: 
[%u618=2, %u639=2, %u616=2, %u637=2, %u614=2, %result=-6, %u635=2, %u634=2, %u612=2, %u632=2, %u610=2, %u598=6, %input=-3, %u652=0, %u630=2, %u651=1, %u596=6, %u594=6, %u592=6, %u590=6, %r0=-4, %i=-2, %u608=2, %u628=2, %u606=2, %u649=2, %u626=2, %u604=3, %u647=2, %u625=-7, %u624=2, %u602=4, @_scanned_=-1, %u646=-8, %u645=2, %u622=2, %u600=5, %u643=2, %u588=6, %u587=0, %u620=2, %u586=1, %u641=2, %u585=2, %u640=-10, %u584=0, %u583=1]
	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r9, #:lower16:64
	movt	r9, #:upper16:64
	sub	fp,sp,r9
.LU109:
	b	.LU110
.LU110:
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.read
	movt	r10, #:upper16:.read
	bl	scanf
	movw	r5, #:lower16:_scanned_
	movt	r5, #:upper16:_scanned_
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	b	.LU112
.LU112:
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r5]
	mov	r4,#0
	cmp	r6,r5
	movlt	r4,#1
	cmp	r4,#1
	beq	.LU113
	b	.LU114
.LU113:
	bl	constantFolding
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, sp, #16
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	%r1,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	constantPropagation
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, sp, #16
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	%r1,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	deadCodeElimination
	sub	r9, fp, #20
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	sub	r9, sp, #16
	ldr	r10, [r9]
	ldr	r10, [r10]
	sub	r9, fp, #20
	ldr	r10, [r9]
	mov	%r1,r10
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	interProceduralOptimization
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r8]
	mov	%r1,r8
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	commonSubexpressionElimination
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r7,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	hoisting
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	doubleIf
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	integerDivide
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	association
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r6
	mov	%r1,#1000
	bl	__aeabi_idiv
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #28
	ldr	r10, [r9]
	mov	r10,r10
	bl	tailRecursion
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	bl	unswitching
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r6
	bl	randomCalculation
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r6
	mov	%r1,#5
	bl	__aeabi_idiv
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #40
	ldr	r10, [r9]
	mov	r10,r10
	bl	iterativeFibonacci
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	sub	r9, fp, #12
	ldr	r10, [r9]
	ldr	r10, [r6]
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r10,r6
	mov	%r1,#1000
	bl	__aeabi_idiv
	sub	r9, fp, #16
	ldr	r10, [r9]
	sub	r9, fp, #32
	ldr	r10, [r9]
	mov	r10,r10
	bl	recursiveFibonacci
	sub	r9, fp, #16
	ldr	r10, [r9]
	mov	r6,r10
	sub	r9, fp, #24
	ldr	r10, [r9]
	ldr	r10, [r6]
	mov	%r1,r6
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	sub	r9, fp, #8
	ldr	r10, [r9]
	ldr	r10, [r5]
	movw	r9, #:lower16:1
	movt	r9, #:upper16:1
	add	r4,r5,r9
	b	.LU112
.LU114:
	mov	%r1,#9999
	sub	r9, fp, #16
	ldr	r10, [r9]
	movw	r10, #:lower16:.println
	movt	r10, #:upper16:.println
	bl	printf
	b	.LU111
									map: 
[%_retval_=-1, %u654=0]
.LU111:
	sub	r9, fp, #4
	ldr	r10, [r9]
	ldr	r10, [r4]
	mov	%r0,r4
	movw	r9, #:lower16:64
	movt	r9, #:upper16:64
	add	fp,sp,r9
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  main, .-main

									map: 
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
