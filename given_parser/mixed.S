Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
                  map2: 
[]
	.arch armv7-a
	.comm  globalfoo,4,4
	.text
Gen set: 
[lr, fp, sp]
Kill set: 
[fp]
LiveOut set: 
[lr, fp, sp]
OldLiveOut set: 
[lr, fp, sp]
Interference Graph: 
[{}]
Gen set: 
[%r0, %_P_num]
Kill set: 
[%num, @globalfoo]
LiveOut set: 
[%num, @globalfoo]
OldLiveOut set: 
[]
Interference Graph: 
[{%num=[@globalfoo], @globalfoo=[]}]
Gen set: 
[%num]
Kill set: 
[%u0, %u1]
LiveOut set: 
[%u0, %u1]
OldLiveOut set: 
[]
Interference Graph: 
[{%u0=[%u1], %u1=[]}]
Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
Gen set: 
[%num]
Kill set: 
[, %u2, %r0, %u3, %u4, %u5, %unused]
LiveOut set: 
[, %u2, %u3, %u4, %u5, %unused]
OldLiveOut set: 
[]
Interference Graph: 
[{=[], %u2=[, %u3, %u4, %u5, %unused], %u3=[, %u4, %u5, %unused], %u4=[, %u5], %u5=[], %unused=[, %u4, %u5]}]
                  map2: 
[%u0=1, =0, %u1=0, %u2=7, %num=6, %u3=4, %u4=2, %u5=1, %unused=3, %_P_num=5, @globalfoo=0]
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
	sub	r9, fp, #4
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r10,%r0
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r4,#0
	b	.LU3
.LU3:
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r5,r9
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
	mov	r10,%r0
	sub	r10, fp, #12
	str	r10, [r10]
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r8,r9
	mov	r7,r8
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r6,r9
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r6,r10
	mov	%r0,r5
	bl	tailrecursive
	mov	r4,%r0
	b	.LU4
Gen set: 
[]
Kill set: 
[pc, fp]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
                  map2: 
[]
.LU4:
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  tailrecursive, .-tailrecursive

Gen set: 
[lr, fp, sp]
Kill set: 
[fp]
LiveOut set: 
[lr, fp, sp]
OldLiveOut set: 
[lr, fp, sp]
Interference Graph: 
[{}]
Gen set: 
[%r0, %r1, %_P_y, %_P_x]
Kill set: 
[%x, %y, @globalfoo]
LiveOut set: 
[%x, %y, @globalfoo]
OldLiveOut set: 
[]
Interference Graph: 
[{%x=[%y, @globalfoo], %y=[%x, @globalfoo], @globalfoo=[]}]
Gen set: 
[%x, %y]
Kill set: 
[%u7, %u8, %_retval_, %u9]
LiveOut set: 
[%u7, %_retval_, %u8, %u9]
OldLiveOut set: 
[]
Interference Graph: 
[{%u7=[%_retval_, %u8, %u9], %_retval_=[], %u8=[%_retval_, %u9], %u9=[%_retval_]}]
                  map2: 
[%x=6, %y=7, %_P_y=4, %u7=3, %_retval_=0, %u8=2, %u9=1, %_P_x=5, @globalfoo=0]
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
	sub	r9, fp, #4
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r10,r8
	sub	r10, fp, #12
	str	r10, [r10]
	mov	r10,%r0
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r10,%r1
	sub	r10, fp, #12
	str	r10, [r10]
	mov	r4,#0
	b	.LU10
.LU10:
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r7,r9
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r6,r9
	add	r5,r7,r6
	mov	r4,r5
	b	.LU11
Gen set: 
[%_retval_]
Kill set: 
[%r0, pc, fp, %u10]
LiveOut set: 
[%_retval_, %u10]
OldLiveOut set: 
[%_retval_]
Interference Graph: 
[{%u10=[%_retval_]}]
                  map2: 
[%_retval_=1, %u10=0]
.LU11:
	mov	r4,r5
	mov	%r0,r4
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  add, .-add

Gen set: 
[lr, fp, sp]
Kill set: 
[fp]
LiveOut set: 
[lr, fp, sp]
OldLiveOut set: 
[lr, fp, sp]
Interference Graph: 
[{}]
Gen set: 
[%r0, %_P_num]
Kill set: 
[%num, @globalfoo]
LiveOut set: 
[%num, @globalfoo]
OldLiveOut set: 
[]
Interference Graph: 
[{%num=[@globalfoo], @globalfoo=[]}]
Gen set: 
[%num]
Kill set: 
[%u13, %u35, %u14, %u36, %u11, %u33, %u12, %u34, %u17, %u39, %u18, %u15, %u37, %u16, %u38, %u19, %u31, %u10, %u32, %u30, %u24, %u25, %u22, %r0, %u23, %u28, %u29, %u26, %u27, %math2, %math1, %u20, %u21, %u40]
LiveOut set: 
[%u35, %u13, %u36, %u14, %u33, %u11, %u34, %u12, %u39, %u17, %u18, %u37, %u15, %u38, %u16, %u19, %u31, %u32, %u10, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %math1, %u20, %u21, %u40]
OldLiveOut set: 
[]
Interference Graph: 
[{%u35=[%u36, %u39, %u37, %u38, %u40], %u13=[%u35, %u36, %u14, %u33, %u34, %u39, %u17, %u18, %u37, %u15, %u38, %u16, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %u20, %u21, %u40], %u36=[%u39, %u37, %u38, %u40], %u14=[%u35, %u36, %u33, %u34, %u39, %u17, %u18, %u37, %u15, %u38, %u16, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %u20, %u21, %u40], %u33=[%u35, %u36, %u34, %u39, %u37, %u38, %u40], %u11=[%u35, %u13, %u36, %u14, %u33, %u34, %u12, %u39, %u17, %u18, %u37, %u15, %u38, %u16, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %math1, %u20, %u21, %u40], %u34=[%u35, %u36, %u39, %u37, %u38, %u40], %u12=[%u35, %u13, %u36, %u14, %u33, %u34, %u39, %u17, %u18, %u37, %u15, %u38, %u16, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %u20, %u21, %u40], %u39=[%u40], %u17=[%u35, %u24, %u36, %u25, %u33, %u22, %u34, %u23, %u39, %u28, %u29, %u18, %u37, %u26, %u38, %u27, %u19, %math2, %u31, %u20, %u32, %u21, %u40, %u30], %u18=[%u35, %u24, %u36, %u25, %u33, %u22, %u34, %u23, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u19, %u31, %u20, %u32, %u21, %u40, %u30], %u37=[%u39, %u38, %u40], %u15=[%u35, %u36, %u33, %u34, %u39, %u17, %u18, %u37, %u38, %u16, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %u20, %u21, %u40], %u38=[%u39, %u40], %u16=[%u35, %u36, %u33, %u34, %u39, %u17, %u18, %u37, %u38, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %u20, %u21, %u40], %u19=[%u35, %u24, %u36, %u25, %u33, %u22, %u34, %u23, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u31, %u20, %u32, %u21, %u40, %u30], %u31=[%u35, %u36, %u33, %u34, %u39, %u37, %u38, %u32, %u40], %u32=[%u35, %u36, %u33, %u34, %u39, %u37, %u38, %u40], %u10=[%u35, %u13, %u36, %u14, %u33, %u11, %u34, %u12, %u39, %u17, %u18, %u37, %u15, %u38, %u16, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %math1, %u20, %u21, %u40], %u30=[%u35, %u36, %u33, %u34, %u39, %u37, %u38, %u31, %u32, %u40], %u24=[%u35, %u36, %u25, %u33, %u34, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u31, %u32, %u40, %u30], %u25=[%u35, %u36, %u33, %u34, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u31, %u32, %u40, %u30], %u22=[%u35, %u24, %u36, %u25, %u33, %u34, %u23, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u31, %u32, %u40, %u30], %u23=[%u35, %u24, %u36, %u25, %u33, %u34, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u31, %u32, %u40, %u30], %u28=[%u35, %u36, %u33, %u34, %u39, %u29, %u37, %u38, %u31, %u32, %u40, %u30], %u29=[%u35, %u36, %u33, %u34, %u39, %u37, %u38, %u31, %u32, %u40, %u30], %u26=[%u35, %u36, %u33, %u34, %u39, %u28, %u29, %u37, %u38, %u27, %u31, %u32, %u40, %u30], %u27=[%u35, %u36, %u33, %u34, %u39, %u28, %u29, %u37, %u38, %u31, %u32, %u40, %u30], %math2=[%u35, %u24, %u36, %u25, %u33, %u22, %u34, %u23, %u39, %u28, %u29, %u18, %u37, %u26, %u38, %u27, %u19, %u31, %u20, %u32, %u21, %u40, %u30], %math1=[%u35, %u13, %u36, %u14, %u33, %u34, %u12, %u39, %u17, %u18, %u37, %u15, %u38, %u16, %u19, %u31, %u32, %u30, %u24, %u25, %u22, %u23, %u28, %u29, %u26, %u27, %math2, %u20, %u21, %u40], %u20=[%u35, %u24, %u36, %u25, %u33, %u22, %u34, %u23, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u31, %u32, %u21, %u40, %u30], %u21=[%u35, %u24, %u36, %u25, %u33, %u22, %u34, %u23, %u39, %u28, %u29, %u37, %u26, %u38, %u27, %u31, %u32, %u40, %u30], %u40=[]}]
Gen set: 
[%num]
Kill set: 
[%u42, %u41]
LiveOut set: 
[%u42, %u41]
OldLiveOut set: 
[]
Interference Graph: 
[{%u42=[], %u41=[%u42]}]
Gen set: 
[%num, %math2, %math1, %u60]
Kill set: 
[%tmp, %u57, %u79, %u58, %u55, %u77, %u56, %u78, %u59, %num, %u71, %u50, %u72, %u53, %u75, %u54, %u76, %u51, %u73, %u52, %u74, %u46, %u68, %u47, %u69, %u44, %u66, %u45, %r0, %u67, %r1, %u48, %u49, %u61, %u64, %u43, %u65, %u62, %u63]
LiveOut set: 
[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u46, %u69, %u47, %u66, %u44, %u67, %u45, %u48, %u49, %u61, %u64, %u65, %u43, %u62, %u63]
OldLiveOut set: 
[]
Interference Graph: 
[{%u79=[%num], %tmp=[%u79, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u69, %u66, %u67, %u61, %u64, %u65, %u62, %u63], %u57=[%u79, %tmp, %u68, %u69, %u58, %u77, %u66, %u78, %u67, %u59, %num, %u71, %u72, %u61, %u75, %u64, %u76, %u65, %u73, %u62, %u74, %u63], %u58=[%u79, %tmp, %u68, %u69, %u77, %u66, %u78, %u67, %u59, %num, %u71, %u72, %u61, %u75, %u64, %u76, %u65, %u73, %u62, %u74, %u63], %u77=[%u79, %tmp, %num, %u78], %u55=[%u79, %tmp, %u68, %u57, %u69, %u58, %u77, %u66, %u78, %u67, %u56, %u59, %num, %u71, %u72, %u61, %u75, %u64, %u76, %u65, %u73, %u62, %u74, %u63], %u78=[%u79, %num], %u56=[%u79, %tmp, %u68, %u57, %u69, %u58, %u77, %u66, %u78, %u67, %u59, %num, %u71, %u72, %u61, %u75, %u64, %u76, %u65, %u73, %u62, %u74, %u63], %u59=[%u79, %tmp, %u68, %u69, %u77, %u66, %u78, %u67, %num, %u71, %u72, %u61, %u75, %u64, %u76, %u65, %u73, %u62, %u74, %u63], %num=[], %u71=[%u79, %tmp, %u77, %num, %u78, %u72, %u75, %u76, %u73, %u74], %u72=[%u79, %tmp, %u77, %num, %u78, %u75, %u76, %u73, %u74], %u50=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u69, %u66, %u67, %u61, %u64, %u65, %u62, %u63], %u75=[%u79, %tmp, %u77, %num, %u78, %u76], %u53=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u75, %u76, %u54, %u73, %u74, %u68, %u69, %u66, %u67, %u61, %u64, %u65, %u62, %u63], %u76=[%u79, %tmp, %u77, %num, %u78], %u54=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u75, %u76, %u73, %u74, %u68, %u69, %u66, %u67, %u61, %u64, %u65, %u62, %u63], %u73=[%u79, %tmp, %u77, %num, %u78, %u75, %u76, %u74], %u51=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u75, %u53, %u76, %u54, %u73, %u74, %u52, %u68, %u69, %u66, %u67, %u61, %u64, %u65, %u62, %u63], %u74=[%u79, %tmp, %u77, %num, %u78, %u75, %u76], %u52=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u75, %u53, %u76, %u54, %u73, %u74, %u68, %u69, %u66, %u67, %u61, %u64, %u65, %u62, %u63], %u68=[%u79, %tmp, %u69, %u77, %num, %u78, %u71, %u72, %u75, %u76, %u73, %u74], %u46=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u69, %u47, %u66, %u67, %u48, %u49, %u61, %u64, %u65, %u62, %u63], %u69=[%u79, %tmp, %u77, %num, %u78, %u71, %u72, %u75, %u76, %u73, %u74], %u47=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u69, %u66, %u67, %u48, %u49, %u61, %u64, %u65, %u62, %u63], %u66=[%u79, %tmp, %u68, %u69, %u77, %u78, %u67, %num, %u71, %u72, %u75, %u76, %u73, %u74], %u44=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u46, %u69, %u47, %u66, %u67, %u45, %u48, %u49, %u61, %u64, %u65, %u62, %u63], %u67=[%u79, %tmp, %u68, %u69, %u77, %u78, %num, %u71, %u72, %u75, %u76, %u73, %u74], %u45=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u46, %u69, %u47, %u66, %u67, %u48, %u49, %u61, %u64, %u65, %u62, %u63], %u48=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u69, %u66, %u67, %u49, %u61, %u64, %u65, %u62, %u63], %u49=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u69, %u66, %u67, %u61, %u64, %u65, %u62, %u63], %u61=[%u79, %tmp, %u68, %u69, %u77, %u66, %u78, %u67, %num, %u71, %u72, %u75, %u64, %u76, %u65, %u73, %u62, %u74, %u63], %u64=[%u79, %tmp, %u68, %u69, %u77, %u66, %u78, %u67, %num, %u71, %u72, %u75, %u76, %u65, %u73, %u74], %u65=[%u79, %tmp, %u68, %u69, %u77, %u66, %u78, %u67, %num, %u71, %u72, %u75, %u76, %u73, %u74], %u43=[%u79, %tmp, %u57, %u58, %u77, %u55, %u78, %u56, %u59, %num, %u71, %u72, %u50, %u75, %u53, %u76, %u54, %u73, %u51, %u74, %u52, %u68, %u46, %u69, %u47, %u66, %u44, %u67, %u45, %u48, %u49, %u61, %u64, %u65, %u62, %u63], %u62=[%u79, %tmp, %u68, %u69, %u77, %u66, %u78, %u67, %num, %u71, %u72, %u75, %u64, %u76, %u65, %u73, %u74, %u63], %u63=[%u79, %tmp, %u68, %u69, %u77, %u66, %u78, %u67, %num, %u71, %u72, %u75, %u64, %u76, %u65, %u73, %u74]}]
Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
                  map2: 
[%u13=31, %u57=24, %u14=30, %u58=23, %u11=34, %u55=26, %u12=32, %u56=25, %u17=26, %u18=24, %u15=28, %u59=22, %u16=27, %u19=23, %_P_num=5, %u50=32, %u53=28, %u10=35, %u54=27, %u51=31, %u52=30, %u24=18, %u68=13, %u25=17, %u69=12, %u22=20, %u66=15, %u23=19, %u67=14, %u28=14, %u29=13, %u26=16, %u27=15, %u60=10, %u61=21, %u20=22, %u64=17, %u21=21, %u65=16, %u62=20, %u63=19, %u35=7, %u79=1, %tmp=18, %u36=4, %u33=9, %u77=3, %u34=8, %u78=2, %u39=1, %u37=3, %u38=2, %num=6, %u71=11, %u72=10, %u31=11, %u75=7, %u32=10, %u76=4, %u73=9, %u30=12, %u74=8, %u46=36, %u47=35, %u44=38, %u45=37, %u48=34, %u49=33, %math2=8, %math1=9, %u42=0, %u43=39, %u40=0, @globalfoo=0, %u41=1]
	.align  2
	.global domath
domath:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:156
	movt	r10, #:upper16:156
	sub	sp,sp,r10
.LU13:
	sub	r9, fp, #4
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r10,%r0
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r4,#0
	b	.LU14
.LU14:
	mov	%r0,#12
	bl	malloc
	mov	r10,%r0
	sub	r10, fp, #124
	str	r10, [r10]
	sub	r9, fp, #124
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #120
	str	r10, [r10]
	sub	r9, fp, #120
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #20
	str	r10, [r10]
	mov	%r0,#4
	bl	malloc
	mov	r10,%r0
	sub	r10, fp, #112
	str	r10, [r10]
	sub	r9, fp, #112
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #108
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #104
	str	r10, [r10]
	sub	r9, fp, #104
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #96
	str	r10, [r10]
	sub	r9, fp, #108
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #96
	str	r10, [r10]
	mov	%r0,#12
	bl	malloc
	mov	r10,%r0
	sub	r10, fp, #92
	str	r10, [r10]
	sub	r9, fp, #92
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #88
	str	r10, [r10]
	sub	r9, fp, #88
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #16
	str	r10, [r10]
	mov	%r0,#4
	bl	malloc
	mov	r10,%r0
	sub	r10, fp, #80
	str	r10, [r10]
	sub	r9, fp, #80
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #76
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #72
	str	r10, [r10]
	sub	r9, fp, #72
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #68
	str	r10, [r10]
	sub	r9, fp, #76
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #68
	str	r10, [r10]
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #64
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #60
	str	r10, [r10]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #56
	str	r10, [r10]
	sub	r9, fp, #64
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #56
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #52
	str	r10, [r10]
	sub	r9, fp, #52
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #48
	str	r10, [r10]
	mov	r10,#3
	sub	r10, fp, #48
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #44
	str	r10, [r10]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #40
	str	r10, [r10]
	sub	r9, fp, #40
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #36
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #32
	str	r10, [r10]
	sub	r9, fp, #32
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #28
	str	r10, [r10]
	sub	r9, fp, #28
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #24
	str	r10, [r10]
	sub	r9, fp, #24
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #20
	str	r10, [r10]
	sub	r9, fp, #36
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #20
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #16
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #12
	str	r10, [r10]
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r8,r9
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r7,r9
	add	r6,r7,#8
	mov	r5,r6
	add	r4,r5,#0
	mov	r4,r8
	b	.LU16
.LU16:
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r5,r9
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU17
	b	.LU18
.LU17:
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #140
	str	r10, [r10]
	sub	r9, fp, #140
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #136
	str	r10, [r10]
	sub	r9, fp, #136
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #132
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #128
	str	r10, [r10]
	sub	r9, fp, #128
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #124
	str	r10, [r10]
	sub	r9, fp, #124
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #120
	str	r10, [r10]
	sub	r9, fp, #132
	ldr	r9, [r9]
	sub	r10, fp, #120
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r10, fp, #116
	str	r10, [r10]
	sub	r9, fp, #116
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #56
	str	r10, [r10]
	sub	r9, fp, #56
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #112
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #108
	str	r10, [r10]
	sub	r9, fp, #108
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #104
	str	r10, [r10]
	sub	r9, fp, #104
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #96
	str	r10, [r10]
	sub	r9, fp, #96
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #92
	str	r10, [r10]
	sub	r9, fp, #92
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #88
	str	r10, [r10]
	sub	r9, fp, #112
	ldr	r9, [r9]
	sub	r10, fp, #88
	ldr	r10, [r10]
	mul	r10,r9,r10
	sub	r10, fp, #84
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #80
	str	r10, [r10]
	sub	r9, fp, #80
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #76
	str	r10, [r10]
	sub	r9, fp, #76
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #72
	str	r10, [r10]
	sub	r9, fp, #84
	ldr	r9, [r9]
	mov	%r0,r9
	sub	r9, fp, #72
	ldr	r9, [r9]
	mov	%r1,r9
	bl	__aeabi_idiv
	sub	r9, fp, #24
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #56
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #68
	str	r10, [r10]
	sub	r9, fp, #68
	ldr	r9, [r9]
	add	r10,r9,#8
	sub	r10, fp, #64
	str	r10, [r10]
	sub	r9, fp, #64
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #60
	str	r10, [r10]
	sub	r9, fp, #60
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #52
	str	r10, [r10]
	sub	r9, fp, #52
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #48
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #44
	str	r10, [r10]
	sub	r9, fp, #44
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #40
	str	r10, [r10]
	sub	r9, fp, #40
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #36
	str	r10, [r10]
	sub	r9, fp, #48
	ldr	r9, [r9]
	mov	%r0,r9
	sub	r9, fp, #36
	ldr	r9, [r9]
	mov	%r1,r9
	bl	add
	mov	r10,%r0
	sub	r10, fp, #32
	str	r10, [r10]
	sub	r9, fp, #32
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #56
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #28
	str	r10, [r10]
	sub	r9, fp, #28
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #24
	str	r10, [r10]
	sub	r9, fp, #24
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #20
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #16
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	add	r10,r9,#0
	sub	r10, fp, #12
	str	r10, [r10]
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r8,r9
	sub	r9, fp, #20
	ldr	r9, [r9]
	sub	r7,r9,r8
	mov	r10,r7
	sub	r10, fp, #56
	str	r10, [r10]
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r6,r9
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r6,r10
	mov	r10,r5
	sub	r10, fp, #8
	str	r10, [r10]
	b	.LU16
.LU18:
	b	.LU15
Gen set: 
[]
Kill set: 
[pc, fp]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
                  map2: 
[]
.LU15:
	movw	r10, #:lower16:156
	movt	r10, #:upper16:156
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  domath, .-domath

Gen set: 
[lr, fp, sp]
Kill set: 
[fp]
LiveOut set: 
[lr, fp, sp]
OldLiveOut set: 
[lr, fp, sp]
Interference Graph: 
[{}]
Gen set: 
[%r0, %_P_num]
Kill set: 
[%num, @globalfoo]
LiveOut set: 
[%num, @globalfoo]
OldLiveOut set: 
[]
Interference Graph: 
[{%num=[@globalfoo], @globalfoo=[]}]
Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
Gen set: 
[%num]
Kill set: 
[%u80, %u81]
LiveOut set: 
[%u80, %u81]
OldLiveOut set: 
[]
Interference Graph: 
[{%u80=[%u81], %u81=[]}]
Gen set: 
[%num]
Kill set: 
[%tmp, %r0, %num, %u82, %u83, %u84, %u85]
LiveOut set: 
[%tmp, %num, %u82, %u83, %u84, %u85]
OldLiveOut set: 
[]
Interference Graph: 
[{%tmp=[%num, %u84, %u85], %num=[], %u82=[%tmp, %num, %u83, %u84, %u85], %u83=[%tmp, %num, %u84, %u85], %u84=[%num, %u85], %u85=[%num]}]
Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
                  map2: 
[%tmp=3, %num=6, %u82=7, %u83=4, %u80=1, %_P_num=5, %u81=0, %u84=2, @globalfoo=0, %u85=1]
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
	sub	r9, fp, #4
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r10,%r0
	sub	r10, fp, #8
	str	r10, [r10]
	mov	r4,#0
	b	.LU21
.LU21:
	b	.LU23
.LU23:
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r5,r9
	mov	r4,#0
	cmp	r5,#0
	movgt	r4,#1
	cmp	r4,#1
	beq	.LU24
	b	.LU25
.LU24:
	mov	%r0,#12
	bl	malloc
	mov	r10,%r0
	sub	r10, fp, #12
	str	r10, [r10]
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r8,r9
	mov	r7,r8
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r6,r9
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r5,r6,r10
	mov	r10,r5
	sub	r10, fp, #8
	str	r10, [r10]
	b	.LU23
.LU25:
	b	.LU22
Gen set: 
[]
Kill set: 
[pc, fp]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
                  map2: 
[]
.LU22:
	movw	r10, #:lower16:28
	movt	r10, #:upper16:28
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  objinstantiation, .-objinstantiation

Gen set: 
[lr, fp, sp]
Kill set: 
[fp]
LiveOut set: 
[lr, fp, sp]
OldLiveOut set: 
[lr, fp, sp]
Interference Graph: 
[{}]
Gen set: 
[%_P_n, %_P_m, %r0, %r1]
Kill set: 
[%m, %n, @globalfoo]
LiveOut set: 
[%m, %n, @globalfoo]
OldLiveOut set: 
[]
Interference Graph: 
[{%m=[%n, @globalfoo], %n=[%m, @globalfoo], @globalfoo=[]}]
Gen set: 
[%m]
Kill set: 
[%u86, %u87]
LiveOut set: 
[%u86, %u87]
OldLiveOut set: 
[]
Interference Graph: 
[{%u86=[%u87], %u87=[]}]
Gen set: 
[%n]
Kill set: 
[%u88, %u89, %_retval_]
LiveOut set: 
[%u88, %u89, %_retval_]
OldLiveOut set: 
[]
Interference Graph: 
[{%u88=[%u89, %_retval_], %u89=[%_retval_], %_retval_=[]}]
Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
Gen set: 
[%n]
Kill set: 
[%u90, %u91]
LiveOut set: 
[%u90, %u91]
OldLiveOut set: 
[]
Interference Graph: 
[{%u90=[%u91], %u91=[]}]
Gen set: 
[%m]
Kill set: 
[%r0, %r1, %u93, %_retval_, %u94, %u92]
LiveOut set: 
[%_retval_, %u93, %u94, %u92]
OldLiveOut set: 
[]
Interference Graph: 
[{%_retval_=[], %u93=[%_retval_, %u94], %u94=[%_retval_], %u92=[%_retval_, %u93, %u94]}]
Gen set: 
[%m, %n]
Kill set: 
[%u99, %r0, %r1, %_retval_, %u103, %u97, %u98, %u101, %u100, %u96]
LiveOut set: 
[%u99, %_retval_, %u103, %u97, %u101, %u98, %u100, %u96]
OldLiveOut set: 
[]
Interference Graph: 
[{%u99=[%_retval_, %u103, %u101, %u100], %_retval_=[], %u103=[%_retval_], %u97=[%u99, %_retval_, %u103, %u101, %u98, %u100], %u101=[%_retval_, %u103], %u98=[%u99, %_retval_, %u103, %u101, %u100], %u100=[%_retval_, %u103, %u101], %u96=[%u99, %_retval_, %u103, %u97, %u101, %u98, %u100]}]
Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
                  map2: 
[%u88=2, %u99=4, %u89=1, %m=7, %_retval_=0, %n=8, %_P_n=5, %_P_m=6, %u90=1, %u93=2, %u94=1, %u91=0, %u92=3, %u103=1, %u86=1, %u97=9, %u87=0, %u101=2, %u98=8, %u100=3, @globalfoo=0, %u96=10]
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
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #12
	str	r10, [r10]
	sub	r9, fp, #4
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #16
	str	r10, [r10]
	mov	r10,%r0
	sub	r10, fp, #12
	str	r10, [r10]
	mov	r10,%r1
	sub	r10, fp, #16
	str	r10, [r10]
	mov	r4,#0
	b	.LU28
.LU28:
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r5,r9
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU30
	b	.LU31
.LU30:
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r6,r9
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	add	r5,r6,r10
	mov	r4,r5
	b	.LU29
.LU31:
	b	.LU32
.LU32:
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r5,r9
	mov	r4,#0
	cmp	r5,#0
	moveq	r4,#1
	cmp	r4,#1
	beq	.LU33
	b	.LU34
.LU33:
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r7,r9
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
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #24
	str	r10, [r10]
	sub	r9, fp, #24
	ldr	r9, [r9]
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r10,r9,r10
	sub	r10, fp, #20
	str	r10, [r10]
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #16
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r8,r9
	movw	r10, #:lower16:1
	movt	r10, #:upper16:1
	sub	r7,r8,r10
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	%r0,r9
	mov	%r1,r7
	bl	ackermann
	mov	r6,%r0
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	%r0,r9
	mov	%r1,r6
	bl	ackermann
	mov	r5,%r0
	mov	r4,r5
	b	.LU29
.LU35:
	b	.LU29
Gen set: 
[%_retval_]
Kill set: 
[%r0, pc, %u105, fp]
LiveOut set: 
[%_retval_, %u105]
OldLiveOut set: 
[%_retval_]
Interference Graph: 
[{%u105=[%_retval_]}]
                  map2: 
[%_retval_=1, %u105=0]
.LU29:
	mov	r4,r5
	mov	%r0,r4
	movw	r10, #:lower16:40
	movt	r10, #:upper16:40
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  ackermann, .-ackermann

Gen set: 
[lr, fp, sp]
Kill set: 
[fp]
LiveOut set: 
[lr, fp, sp]
OldLiveOut set: 
[lr, fp, sp]
Interference Graph: 
[{}]
Gen set: 
[]
Kill set: 
[@globalfoo]
LiveOut set: 
[@globalfoo]
OldLiveOut set: 
[]
Interference Graph: 
[{@globalfoo=[]}]
Gen set: 
[%u109, %u108, %u107, %u106, %u105]
Kill set: 
[%e, , %u120, %r0, %r1, %_retval_, %u119, @_scanned_, %u118, %u116, %u115, %a, %u113, %b, %u112, %c, %d, %u110, %u121]
LiveOut set: 
[%u120, , %e, %_retval_, %u119, %u118, @_scanned_, %u116, %u115, %u113, %a, %u112, %b, %c, %u121, %u110, %d]
OldLiveOut set: 
[]
Interference Graph: 
[{%u120=[%_retval_, %u121], =[%u120, %u119, %u118, %_retval_, %u116, %u115, %u113, %u112, %u121], %e=[%u120, , %u119, %u118, %_retval_, %u116, %u115, %u113, %u112, %u121, %u110], %_retval_=[], %u119=[%u120, %_retval_, %u121], %u118=[%u120, %u119, %_retval_, %u121], @_scanned_=[%u120, , %e, %_retval_, %u119, %u118, %u116, %u115, %u113, %a, %u112, %b, %c, %u121, %u110, %d], %u116=[%u120, , %u119, %u118, %_retval_, %u121], %u115=[%u120, , %u119, %u118, %_retval_, %u116, %u121], %u113=[%u120, , %u119, %u118, %_retval_, %u116, %u115, %u121], %a=[%u120, , %e, %_retval_, %u119, %u118, @_scanned_, %u116, %u115, %u113, %u112, %b, %c, %u121, %u110, %d], %u112=[%u120, , %u119, %u118, %_retval_, %u116, %u115, %u113, %u121], %b=[%u120, , %e, %_retval_, %u119, %u118, @_scanned_, %u116, %u115, %u113, %u112, %c, %u121, %u110, %d], %c=[%u120, , %e, %_retval_, %u119, %u118, @_scanned_, %u116, %u115, %u113, %u112, %u121, %u110, %d], %u121=[%_retval_], %u110=[%u120, , %u119, %u118, %_retval_, %u116, %u115, %u113, %u112, %u121], %d=[%u120, , %e, %_retval_, %u119, %u118, @_scanned_, %u116, %u115, %u113, %u112, %u121, %u110]}]
                  map2: 
[%u120=2, =10, %e=14, %_retval_=0, %u109=5, %u119=3, %u108=6, %u118=4, @_scanned_=17, %u107=7, %u106=8, %u116=8, %u105=9, %u115=9, %u113=11, %a=19, %u112=12, %b=18, %c=16, @globalfoo=0, %u121=1, %u110=13, %d=15]
	.align  2
	.global main
main:
	push	{fp,lr}
	add	fp,sp,#4
	push	{r4,r5,r6,r7,r8}
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
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
	sub	r10, fp, #52
	ldr	r10, [r10]
	movw	r10, #:lower16:_scanned_
	movt	r10, #:upper16:_scanned_
	sub	r9, fp, #20
	ldr	r9, [r9]
	sub	r10, sp, #52
	ldr	r10, [r10]
	ldr	r9, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #60
	str	r10, [r10]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #52
	ldr	r10, [r10]
	movw	r10, #:lower16:_scanned_
	movt	r10, #:upper16:_scanned_
	sub	r9, fp, #16
	ldr	r9, [r9]
	sub	r10, sp, #52
	ldr	r10, [r10]
	ldr	r9, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #56
	str	r10, [r10]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #52
	ldr	r10, [r10]
	movw	r10, #:lower16:_scanned_
	movt	r10, #:upper16:_scanned_
	sub	r9, fp, #12
	ldr	r9, [r9]
	sub	r10, sp, #52
	ldr	r10, [r10]
	ldr	r9, [r10]
	sub	r9, fp, #12
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #48
	str	r10, [r10]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #52
	ldr	r10, [r10]
	movw	r10, #:lower16:_scanned_
	movt	r10, #:upper16:_scanned_
	sub	r9, fp, #8
	ldr	r9, [r9]
	sub	r10, sp, #52
	ldr	r10, [r10]
	ldr	r9, [r10]
	sub	r9, fp, #8
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #44
	str	r10, [r10]
	movw	%r1, #:lower16:_scanned_
	movt	%r1, #:upper16:_scanned_
	movw	%r0, #:lower16:.read
	movt	%r0, #:upper16:.read
	bl	scanf
	sub	r10, fp, #52
	ldr	r10, [r10]
	movw	r10, #:lower16:_scanned_
	movt	r10, #:upper16:_scanned_
	sub	r9, fp, #4
	ldr	r9, [r9]
	sub	r10, sp, #52
	ldr	r10, [r10]
	ldr	r9, [r10]
	sub	r9, fp, #4
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #40
	str	r10, [r10]
	sub	r9, fp, #60
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #36
	str	r10, [r10]
	sub	r9, fp, #36
	ldr	r9, [r9]
	mov	%r0,r9
	bl	tailrecursive
	mov	r10,%r0
	sub	r10, fp, #24
	str	r10, [r10]
	sub	r9, fp, #60
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #32
	str	r10, [r10]
	sub	r9, fp, #32
	ldr	r9, [r9]
	mov	%r1,r9
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #56
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #28
	str	r10, [r10]
	sub	r9, fp, #28
	ldr	r9, [r9]
	mov	%r0,r9
	bl	domath
	mov	r10,%r0
	sub	r10, fp, #24
	str	r10, [r10]
	sub	r9, fp, #56
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #20
	str	r10, [r10]
	sub	r9, fp, #20
	ldr	r9, [r9]
	mov	%r1,r9
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #48
	ldr	r9, [r9]
	mov	r10,r9
	sub	r10, fp, #16
	str	r10, [r10]
	sub	r9, fp, #16
	ldr	r9, [r9]
	mov	%r0,r9
	bl	objinstantiation
	mov	r10,%r0
	sub	r10, fp, #24
	str	r10, [r10]
	sub	r9, fp, #48
	ldr	r9, [r9]
	mov	r8,r9
	mov	%r1,r8
	movw	%r0, #:lower16:.println
	movt	%r0, #:upper16:.println
	bl	printf
	sub	r9, fp, #44
	ldr	r9, [r9]
	mov	r7,r9
	sub	r9, fp, #40
	ldr	r9, [r9]
	mov	r6,r9
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
Gen set: 
[%_retval_]
Kill set: 
[%r0, pc, fp, %u123]
LiveOut set: 
[%_retval_, %u123]
OldLiveOut set: 
[%_retval_]
Interference Graph: 
[{%u123=[%_retval_]}]
                  map2: 
[%_retval_=1, %u123=0]
.LU39:
	mov	r4,r5
	mov	%r0,r4
	movw	r10, #:lower16:76
	movt	r10, #:upper16:76
	add	sp,sp,r10
	pop	{r4,r5,r6,r7,r8}
	pop	{fp,pc}
	.size  main, .-main

Gen set: 
[]
Kill set: 
[]
LiveOut set: 
[]
OldLiveOut set: 
[]
Interference Graph: 
[{}]
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
