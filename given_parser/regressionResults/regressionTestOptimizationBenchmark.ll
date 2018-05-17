target triple="i686"
@global1 = common global i32 0, align 4
@global2 = common global i32 0, align 4
@global3 = common global i32 0, align 4
define i32 @constantFolding()
{
LU2:
	%_retval_ = alloca i32
	%a = alloca i32
	br label %LU3
LU3:
	%u0 = mul i32 8, 9
	%u1 = sdiv i32 %u0, 4
	%u2 = add i32 %u1, 2
	%u3 = mul i32 5, 8
	%u4 = sub i32 %u2, %u3
	%u5 = add i32 %u4, 9
	%u6 = sub i32 %u5, 12
	%u7 = add i32 %u6, 6
	%u8 = sub i32 %u7, 9
	%u9 = sub i32 %u8, 18
	%u10 = mul i32 23, 3
	%u11 = sdiv i32 %u10, 23
	%u12 = mul i32 %u11, 90
	%u13 = add i32 %u9, %u12
	store i32 %u13, i32* %a
	%u14 = load i32* %a
	store i32 %u14, i32* %_retval_
	br label %LU4
LU4:
	%u15 = load i32* %_retval_
	ret i32 %u15
}

define i32 @constantPropagation()
{
LU6:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	%c = alloca i32
	%d = alloca i32
	%e = alloca i32
	%f = alloca i32
	%g = alloca i32
	%h = alloca i32
	%i = alloca i32
	%j = alloca i32
	%k = alloca i32
	%l = alloca i32
	%m = alloca i32
	%n = alloca i32
	%o = alloca i32
	%p = alloca i32
	%q = alloca i32
	%r = alloca i32
	%s = alloca i32
	%t = alloca i32
	%u = alloca i32
	%v = alloca i32
	%w = alloca i32
	%x = alloca i32
	%y = alloca i32
	%z = alloca i32
	br label %LU7
LU7:
	store i32 4, i32* %a
	store i32 7, i32* %b
	store i32 8, i32* %c
	store i32 5, i32* %d
	store i32 11, i32* %e
	store i32 21, i32* %f
	%u15 = load i32* %a
	%u16 = load i32* %b
	%u17 = add i32 %u15, %u16
	store i32 %u17, i32* %g
	%u18 = load i32* %c
	%u19 = load i32* %d
	%u20 = add i32 %u18, %u19
	store i32 %u20, i32* %h
	%u21 = load i32* %e
	%u22 = load i32* %f
	%u23 = add i32 %u21, %u22
	store i32 %u23, i32* %i
	%u24 = load i32* %g
	%u25 = load i32* %h
	%u26 = add i32 %u24, %u25
	store i32 %u26, i32* %j
	%u27 = load i32* %i
	%u28 = load i32* %j
	%u29 = mul i32 %u27, %u28
	store i32 %u29, i32* %k
	%u30 = load i32* %e
	%u31 = load i32* %h
	%u32 = load i32* %i
	%u33 = mul i32 %u31, %u32
	%u34 = add i32 %u30, %u33
	%u35 = load i32* %k
	%u36 = sub i32 %u34, %u35
	store i32 %u36, i32* %l
	%u37 = load i32* %h
	%u38 = load i32* %i
	%u39 = load i32* %j
	%u40 = mul i32 %u38, %u39
	%u41 = sub i32 %u37, %u40
	%u42 = load i32* %k
	%u43 = load i32* %l
	%u44 = sdiv i32 %u42, %u43
	%u45 = add i32 %u41, %u44
	store i32 %u45, i32* %m
	%u46 = load i32* %e
	%u47 = load i32* %f
	%u48 = add i32 %u46, %u47
	%u49 = load i32* %g
	%u50 = add i32 %u48, %u49
	%u51 = load i32* %h
	%u52 = add i32 %u50, %u51
	%u53 = load i32* %i
	%u54 = add i32 %u52, %u53
	%u55 = load i32* %j
	%u56 = sub i32 %u54, %u55
	store i32 %u56, i32* %n
	%u57 = load i32* %n
	%u58 = load i32* %m
	%u59 = sub i32 %u57, %u58
	%u60 = load i32* %h
	%u61 = add i32 %u59, %u60
	%u62 = load i32* %a
	%u63 = sub i32 %u61, %u62
	%u64 = load i32* %b
	%u65 = sub i32 %u63, %u64
	store i32 %u65, i32* %o
	%u66 = load i32* %k
	%u67 = load i32* %l
	%u68 = add i32 %u66, %u67
	%u69 = load i32* %g
	%u70 = sub i32 %u68, %u69
	%u71 = load i32* %h
	%u72 = sub i32 %u70, %u71
	store i32 %u72, i32* %p
	%u73 = load i32* %b
	%u74 = load i32* %a
	%u75 = sub i32 %u73, %u74
	%u76 = load i32* %d
	%u77 = mul i32 %u75, %u76
	%u78 = load i32* %i
	%u79 = sub i32 %u77, %u78
	store i32 %u79, i32* %q
	%u80 = load i32* %l
	%u81 = load i32* %c
	%u82 = mul i32 %u80, %u81
	%u83 = load i32* %d
	%u84 = mul i32 %u82, %u83
	%u85 = load i32* %o
	%u86 = add i32 %u84, %u85
	store i32 %u86, i32* %r
	%u87 = load i32* %b
	%u88 = load i32* %a
	%u89 = mul i32 %u87, %u88
	%u90 = load i32* %c
	%u91 = mul i32 %u89, %u90
	%u92 = load i32* %e
	%u93 = sdiv i32 %u91, %u92
	%u94 = load i32* %o
	%u95 = sub i32 %u93, %u94
	store i32 %u95, i32* %s
	%u96 = load i32* %i
	%u97 = load i32* %k
	%u98 = add i32 %u96, %u97
	%u99 = load i32* %c
	%u100 = add i32 %u98, %u99
	%u101 = load i32* %p
	%u102 = sub i32 %u100, %u101
	store i32 %u102, i32* %t
	%u103 = load i32* %n
	%u104 = load i32* %o
	%u105 = add i32 %u103, %u104
	%u106 = load i32* %f
	%u107 = load i32* %a
	%u108 = mul i32 %u106, %u107
	%u109 = sub i32 %u105, %u108
	store i32 %u109, i32* %u
	%u110 = load i32* %a
	%u111 = load i32* %b
	%u112 = mul i32 %u110, %u111
	%u113 = load i32* %k
	%u114 = sub i32 %u112, %u113
	%u115 = load i32* %l
	%u116 = sub i32 %u114, %u115
	store i32 %u116, i32* %v
	%u117 = load i32* %v
	%u118 = load i32* %s
	%u119 = sub i32 %u117, %u118
	%u120 = load i32* %r
	%u121 = load i32* %d
	%u122 = mul i32 %u120, %u121
	%u123 = sub i32 %u119, %u122
	store i32 %u123, i32* %w
	%u124 = load i32* %o
	%u125 = load i32* %w
	%u126 = sub i32 %u124, %u125
	%u127 = load i32* %v
	%u128 = sub i32 %u126, %u127
	%u129 = load i32* %n
	%u130 = sub i32 %u128, %u129
	store i32 %u130, i32* %x
	%u131 = load i32* %p
	%u132 = load i32* %x
	%u133 = mul i32 %u131, %u132
	%u134 = load i32* %t
	%u135 = add i32 %u133, %u134
	%u136 = load i32* %w
	%u137 = sub i32 %u135, %u136
	store i32 %u137, i32* %y
	%u138 = load i32* %w
	%u139 = load i32* %x
	%u140 = sub i32 %u138, %u139
	%u141 = load i32* %y
	%u142 = add i32 %u140, %u141
	%u143 = load i32* %k
	%u144 = add i32 %u142, %u143
	store i32 %u144, i32* %z
	%u145 = load i32* %z
	store i32 %u145, i32* %_retval_
	br label %LU8
LU8:
	%u146 = load i32* %_retval_
	ret i32 %u146
}

define i32 @deadCodeElimination()
{
LU10:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	%c = alloca i32
	%d = alloca i32
	%e = alloca i32
	br label %LU11
LU11:
	store i32 4, i32* %a
	store i32 5, i32* %a
	store i32 7, i32* %a
	store i32 8, i32* %a
	store i32 6, i32* %b
	store i32 9, i32* %b
	store i32 12, i32* %b
	store i32 8, i32* %b
	store i32 10, i32* %c
	store i32 13, i32* %c
	store i32 9, i32* %c
	store i32 45, i32* %d
	store i32 12, i32* %d
	store i32 3, i32* %d
	store i32 23, i32* %e
	store i32 10, i32* %e
	store i32 11, i32* @global1
	store i32 5, i32* @global1
	store i32 9, i32* @global1
	%u146 = load i32* %a
	%u147 = load i32* %b
	%u148 = add i32 %u146, %u147
	%u149 = load i32* %c
	%u150 = add i32 %u148, %u149
	%u151 = load i32* %d
	%u152 = add i32 %u150, %u151
	%u153 = load i32* %e
	%u154 = add i32 %u152, %u153
	store i32 %u154, i32* %_retval_
	br label %LU12
LU12:
	%u155 = load i32* %_retval_
	ret i32 %u155
}

define i32 @sum(i32 %_P_number)
{
LU14:
	%_retval_ = alloca i32
	%total = alloca i32
	%number = alloca i32
	store i32 %_P_number, i32* %number
	br label %LU15
LU15:
	store i32 0, i32* %total
	br label %LU17
LU17:
	%u155 = load i32* %number
	%u156 = icmp sgt i32 %u155, 0
	br i1 %u156, label %LU18, label %LU16
LU18:
	%u157 = load i32* %total
	%u158 = load i32* %number
	%u159 = add i32 %u157, %u158
	store i32 %u159, i32* %total
	%u160 = load i32* %number
	%u161 = sub i32 %u160, 1
	store i32 %u161, i32* %number
	br label %LU17
LU19:
	%u162 = load i32* %total
	store i32 %u162, i32* %_retval_
	br label %LU16
LU16:
	%u163 = load i32* %_retval_
	ret i32 %u163
}

define i32 @doesntModifyGlobals()
{
LU21:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	br label %LU22
LU22:
	store i32 1, i32* %a
	store i32 2, i32* %b
	%u163 = load i32* %a
	%u164 = load i32* %b
	%u165 = add i32 %u163, %u164
	store i32 %u165, i32* %_retval_
	br label %LU23
LU23:
	%u166 = load i32* %_retval_
	ret i32 %u166
}

define i32 @interProceduralOptimization()
{
LU25:
	%_retval_ = alloca i32
	%a = alloca i32
	br label %LU26
LU26:
	store i32 1, i32* @global1
	store i32 0, i32* @global2
	store i32 0, i32* @global3
	%u166 = call i32 @sum(i32 100)
	store i32 %u166, i32* %a
	%u168 = load i32* @global1
	%u169 = icmp eq i32 %u168, 1
	br i1 %u169, label %LU28, label %LU29
LU28:
	%u170 = call i32 @sum(i32 10000)
	store i32 %u170, i32* %a
	br label %LU36
LU29:
	%u172 = load i32* @global2
	%u173 = icmp eq i32 %u172, 2
	br i1 %u173, label %LU30, label %LU31
	br label %LU36
LU36:
	%u180 = load i32* %a
	store i32 %u180, i32* %_retval_
	br label %LU27
LU30:
	%u174 = call i32 @sum(i32 20000)
	store i32 %u174, i32* %a
	br label %LU32
LU32:
	%u176 = load i32* @global3
	%u177 = icmp eq i32 %u176, 3
	br i1 %u177, label %LU33, label %LU34
LU33:
	%u178 = call i32 @sum(i32 30000)
	store i32 %u178, i32* %a
	br label %LU35
LU35:
	br label %LU36
LU34:
	br label %LU35
LU31:
	br label %LU32
LU27:
	%u181 = load i32* %_retval_
	ret i32 %u181
}

define i32 @commonSubexpressionElimination()
{
LU38:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	%c = alloca i32
	%d = alloca i32
	%e = alloca i32
	%f = alloca i32
	%g = alloca i32
	%h = alloca i32
	%i = alloca i32
	%j = alloca i32
	%k = alloca i32
	%l = alloca i32
	%m = alloca i32
	%n = alloca i32
	%o = alloca i32
	%p = alloca i32
	%q = alloca i32
	%r = alloca i32
	%s = alloca i32
	%t = alloca i32
	%u = alloca i32
	%v = alloca i32
	%w = alloca i32
	%x = alloca i32
	%y = alloca i32
	%z = alloca i32
	br label %LU39
LU39:
	store i32 11, i32* %a
	store i32 22, i32* %b
	store i32 33, i32* %c
	store i32 44, i32* %d
	store i32 55, i32* %e
	store i32 66, i32* %f
	store i32 77, i32* %g
	%u181 = load i32* %a
	%u182 = load i32* %b
	%u183 = mul i32 %u181, %u182
	store i32 %u183, i32* %h
	%u184 = load i32* %c
	%u185 = load i32* %d
	%u186 = sdiv i32 %u184, %u185
	store i32 %u186, i32* %i
	%u187 = load i32* %e
	%u188 = load i32* %f
	%u189 = mul i32 %u187, %u188
	store i32 %u189, i32* %j
	%u190 = load i32* %a
	%u191 = load i32* %b
	%u192 = mul i32 %u190, %u191
	%u193 = load i32* %c
	%u194 = load i32* %d
	%u195 = sdiv i32 %u193, %u194
	%u196 = add i32 %u192, %u195
	%u197 = load i32* %e
	%u198 = load i32* %f
	%u199 = mul i32 %u197, %u198
	%u200 = sub i32 %u196, %u199
	%u201 = load i32* %g
	%u202 = add i32 %u200, %u201
	store i32 %u202, i32* %k
	%u203 = load i32* %a
	%u204 = load i32* %b
	%u205 = mul i32 %u203, %u204
	%u206 = load i32* %c
	%u207 = load i32* %d
	%u208 = sdiv i32 %u206, %u207
	%u209 = add i32 %u205, %u208
	%u210 = load i32* %e
	%u211 = load i32* %f
	%u212 = mul i32 %u210, %u211
	%u213 = sub i32 %u209, %u212
	%u214 = load i32* %g
	%u215 = add i32 %u213, %u214
	store i32 %u215, i32* %l
	%u216 = load i32* %a
	%u217 = load i32* %b
	%u218 = mul i32 %u216, %u217
	%u219 = load i32* %c
	%u220 = load i32* %d
	%u221 = sdiv i32 %u219, %u220
	%u222 = add i32 %u218, %u221
	%u223 = load i32* %e
	%u224 = load i32* %f
	%u225 = mul i32 %u223, %u224
	%u226 = sub i32 %u222, %u225
	%u227 = load i32* %g
	%u228 = add i32 %u226, %u227
	store i32 %u228, i32* %m
	%u229 = load i32* %a
	%u230 = load i32* %b
	%u231 = mul i32 %u229, %u230
	%u232 = load i32* %c
	%u233 = load i32* %d
	%u234 = sdiv i32 %u232, %u233
	%u235 = add i32 %u231, %u234
	%u236 = load i32* %e
	%u237 = load i32* %f
	%u238 = mul i32 %u236, %u237
	%u239 = sub i32 %u235, %u238
	%u240 = load i32* %g
	%u241 = add i32 %u239, %u240
	store i32 %u241, i32* %n
	%u242 = load i32* %a
	%u243 = load i32* %b
	%u244 = mul i32 %u242, %u243
	%u245 = load i32* %c
	%u246 = load i32* %d
	%u247 = sdiv i32 %u245, %u246
	%u248 = add i32 %u244, %u247
	%u249 = load i32* %e
	%u250 = load i32* %f
	%u251 = mul i32 %u249, %u250
	%u252 = sub i32 %u248, %u251
	%u253 = load i32* %g
	%u254 = add i32 %u252, %u253
	store i32 %u254, i32* %o
	%u255 = load i32* %a
	%u256 = load i32* %b
	%u257 = mul i32 %u255, %u256
	%u258 = load i32* %c
	%u259 = load i32* %d
	%u260 = sdiv i32 %u258, %u259
	%u261 = add i32 %u257, %u260
	%u262 = load i32* %e
	%u263 = load i32* %f
	%u264 = mul i32 %u262, %u263
	%u265 = sub i32 %u261, %u264
	%u266 = load i32* %g
	%u267 = add i32 %u265, %u266
	store i32 %u267, i32* %p
	%u268 = load i32* %a
	%u269 = load i32* %b
	%u270 = mul i32 %u268, %u269
	%u271 = load i32* %c
	%u272 = load i32* %d
	%u273 = sdiv i32 %u271, %u272
	%u274 = add i32 %u270, %u273
	%u275 = load i32* %e
	%u276 = load i32* %f
	%u277 = mul i32 %u275, %u276
	%u278 = sub i32 %u274, %u277
	%u279 = load i32* %g
	%u280 = add i32 %u278, %u279
	store i32 %u280, i32* %q
	%u281 = load i32* %a
	%u282 = load i32* %b
	%u283 = mul i32 %u281, %u282
	%u284 = load i32* %c
	%u285 = load i32* %d
	%u286 = sdiv i32 %u284, %u285
	%u287 = add i32 %u283, %u286
	%u288 = load i32* %e
	%u289 = load i32* %f
	%u290 = mul i32 %u288, %u289
	%u291 = sub i32 %u287, %u290
	%u292 = load i32* %g
	%u293 = add i32 %u291, %u292
	store i32 %u293, i32* %r
	%u294 = load i32* %a
	%u295 = load i32* %b
	%u296 = mul i32 %u294, %u295
	%u297 = load i32* %c
	%u298 = load i32* %d
	%u299 = sdiv i32 %u297, %u298
	%u300 = add i32 %u296, %u299
	%u301 = load i32* %e
	%u302 = load i32* %f
	%u303 = mul i32 %u301, %u302
	%u304 = sub i32 %u300, %u303
	%u305 = load i32* %g
	%u306 = add i32 %u304, %u305
	store i32 %u306, i32* %s
	%u307 = load i32* %a
	%u308 = load i32* %b
	%u309 = mul i32 %u307, %u308
	%u310 = load i32* %c
	%u311 = load i32* %d
	%u312 = sdiv i32 %u310, %u311
	%u313 = add i32 %u309, %u312
	%u314 = load i32* %e
	%u315 = load i32* %f
	%u316 = mul i32 %u314, %u315
	%u317 = sub i32 %u313, %u316
	%u318 = load i32* %g
	%u319 = add i32 %u317, %u318
	store i32 %u319, i32* %t
	%u320 = load i32* %a
	%u321 = load i32* %b
	%u322 = mul i32 %u320, %u321
	%u323 = load i32* %c
	%u324 = load i32* %d
	%u325 = sdiv i32 %u323, %u324
	%u326 = add i32 %u322, %u325
	%u327 = load i32* %e
	%u328 = load i32* %f
	%u329 = mul i32 %u327, %u328
	%u330 = sub i32 %u326, %u329
	%u331 = load i32* %g
	%u332 = add i32 %u330, %u331
	store i32 %u332, i32* %u
	%u333 = load i32* %b
	%u334 = load i32* %a
	%u335 = mul i32 %u333, %u334
	%u336 = load i32* %c
	%u337 = load i32* %d
	%u338 = sdiv i32 %u336, %u337
	%u339 = add i32 %u335, %u338
	%u340 = load i32* %e
	%u341 = load i32* %f
	%u342 = mul i32 %u340, %u341
	%u343 = sub i32 %u339, %u342
	%u344 = load i32* %g
	%u345 = add i32 %u343, %u344
	store i32 %u345, i32* %v
	%u346 = load i32* %a
	%u347 = load i32* %b
	%u348 = mul i32 %u346, %u347
	%u349 = load i32* %c
	%u350 = load i32* %d
	%u351 = sdiv i32 %u349, %u350
	%u352 = add i32 %u348, %u351
	%u353 = load i32* %f
	%u354 = load i32* %e
	%u355 = mul i32 %u353, %u354
	%u356 = sub i32 %u352, %u355
	%u357 = load i32* %g
	%u358 = add i32 %u356, %u357
	store i32 %u358, i32* %w
	%u359 = load i32* %g
	%u360 = load i32* %a
	%u361 = load i32* %b
	%u362 = mul i32 %u360, %u361
	%u363 = add i32 %u359, %u362
	%u364 = load i32* %c
	%u365 = load i32* %d
	%u366 = sdiv i32 %u364, %u365
	%u367 = add i32 %u363, %u366
	%u368 = load i32* %e
	%u369 = load i32* %f
	%u370 = mul i32 %u368, %u369
	%u371 = sub i32 %u367, %u370
	store i32 %u371, i32* %x
	%u372 = load i32* %a
	%u373 = load i32* %b
	%u374 = mul i32 %u372, %u373
	%u375 = load i32* %c
	%u376 = load i32* %d
	%u377 = sdiv i32 %u375, %u376
	%u378 = add i32 %u374, %u377
	%u379 = load i32* %e
	%u380 = load i32* %f
	%u381 = mul i32 %u379, %u380
	%u382 = sub i32 %u378, %u381
	%u383 = load i32* %g
	%u384 = add i32 %u382, %u383
	store i32 %u384, i32* %y
	%u385 = load i32* %c
	%u386 = load i32* %d
	%u387 = sdiv i32 %u385, %u386
	%u388 = load i32* %a
	%u389 = load i32* %b
	%u390 = mul i32 %u388, %u389
	%u391 = add i32 %u387, %u390
	%u392 = load i32* %e
	%u393 = load i32* %f
	%u394 = mul i32 %u392, %u393
	%u395 = sub i32 %u391, %u394
	%u396 = load i32* %g
	%u397 = add i32 %u395, %u396
	store i32 %u397, i32* %z
	%u398 = load i32* %a
	%u399 = load i32* %b
	%u400 = add i32 %u398, %u399
	%u401 = load i32* %c
	%u402 = add i32 %u400, %u401
	%u403 = load i32* %d
	%u404 = add i32 %u402, %u403
	%u405 = load i32* %e
	%u406 = add i32 %u404, %u405
	%u407 = load i32* %f
	%u408 = add i32 %u406, %u407
	%u409 = load i32* %g
	%u410 = add i32 %u408, %u409
	%u411 = load i32* %h
	%u412 = add i32 %u410, %u411
	%u413 = load i32* %i
	%u414 = add i32 %u412, %u413
	%u415 = load i32* %j
	%u416 = add i32 %u414, %u415
	%u417 = load i32* %k
	%u418 = add i32 %u416, %u417
	%u419 = load i32* %l
	%u420 = add i32 %u418, %u419
	%u421 = load i32* %m
	%u422 = add i32 %u420, %u421
	%u423 = load i32* %n
	%u424 = add i32 %u422, %u423
	%u425 = load i32* %o
	%u426 = add i32 %u424, %u425
	%u427 = load i32* %p
	%u428 = add i32 %u426, %u427
	%u429 = load i32* %q
	%u430 = add i32 %u428, %u429
	%u431 = load i32* %r
	%u432 = add i32 %u430, %u431
	%u433 = load i32* %s
	%u434 = add i32 %u432, %u433
	%u435 = load i32* %t
	%u436 = add i32 %u434, %u435
	%u437 = load i32* %u
	%u438 = add i32 %u436, %u437
	%u439 = load i32* %v
	%u440 = add i32 %u438, %u439
	%u441 = load i32* %w
	%u442 = add i32 %u440, %u441
	%u443 = load i32* %x
	%u444 = add i32 %u442, %u443
	%u445 = load i32* %y
	%u446 = add i32 %u444, %u445
	%u447 = load i32* %z
	%u448 = add i32 %u446, %u447
	store i32 %u448, i32* %_retval_
	br label %LU40
LU40:
	%u449 = load i32* %_retval_
	ret i32 %u449
}

define i32 @hoisting()
{
LU42:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	%c = alloca i32
	%d = alloca i32
	%e = alloca i32
	%f = alloca i32
	%g = alloca i32
	%h = alloca i32
	%i = alloca i32
	br label %LU43
LU43:
	store i32 1, i32* %a
	store i32 2, i32* %b
	store i32 3, i32* %c
	store i32 4, i32* %d
	store i32 0, i32* %i
	br label %LU45
LU45:
	%u449 = load i32* %i
	%u450 = icmp slt i32 %u449, 1000000
	br i1 %u450, label %LU46, label %LU44
LU46:
	store i32 5, i32* %e
	%u451 = load i32* %a
	%u452 = load i32* %b
	%u453 = add i32 %u451, %u452
	%u454 = load i32* %c
	%u455 = add i32 %u453, %u454
	store i32 %u455, i32* %g
	%u456 = load i32* %c
	%u457 = load i32* %d
	%u458 = add i32 %u456, %u457
	%u459 = load i32* %g
	%u460 = add i32 %u458, %u459
	store i32 %u460, i32* %h
	%u461 = load i32* %i
	%u462 = add i32 %u461, 1
	store i32 %u462, i32* %i
	br label %LU45
LU47:
	%u463 = load i32* %b
	store i32 %u463, i32* %_retval_
	br label %LU44
LU44:
	%u464 = load i32* %_retval_
	ret i32 %u464
}

define i32 @doubleIf()
{
LU49:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	%c = alloca i32
	%d = alloca i32
	br label %LU50
LU50:
	store i32 1, i32* %a
	store i32 2, i32* %b
	store i32 3, i32* %c
	store i32 0, i32* %d
	%u464 = load i32* %a
	%u465 = icmp eq i32 %u464, 1
	br i1 %u465, label %LU52, label %LU56
LU52:
	store i32 20, i32* %b
	%u466 = load i32* %a
	%u467 = icmp eq i32 %u466, 1
	br i1 %u467, label %LU53, label %LU54
	br label %LU57
LU56:
	br label %LU57
LU53:
	store i32 200, i32* %b
	store i32 300, i32* %c
	br label %LU55
LU55:
	store i32 50, i32* %d
	br label %LU57
LU57:
	%u468 = load i32* %d
	store i32 %u468, i32* %_retval_
	br label %LU51
LU54:
	store i32 1, i32* %a
	store i32 2, i32* %b
	store i32 3, i32* %c
	br label %LU55
LU51:
	%u469 = load i32* %_retval_
	ret i32 %u469
}

define i32 @integerDivide()
{
LU59:
	%_retval_ = alloca i32
	%a = alloca i32
	br label %LU60
LU60:
	store i32 3000, i32* %a
	%u469 = load i32* %a
	%u470 = sdiv i32 %u469, 2
	store i32 %u470, i32* %a
	%u471 = load i32* %a
	%u472 = mul i32 %u471, 4
	store i32 %u472, i32* %a
	%u473 = load i32* %a
	%u474 = sdiv i32 %u473, 8
	store i32 %u474, i32* %a
	%u475 = load i32* %a
	%u476 = sdiv i32 %u475, 16
	store i32 %u476, i32* %a
	%u477 = load i32* %a
	%u478 = mul i32 %u477, 32
	store i32 %u478, i32* %a
	%u479 = load i32* %a
	%u480 = sdiv i32 %u479, 64
	store i32 %u480, i32* %a
	%u481 = load i32* %a
	%u482 = mul i32 %u481, 128
	store i32 %u482, i32* %a
	%u483 = load i32* %a
	%u484 = sdiv i32 %u483, 4
	store i32 %u484, i32* %a
	%u485 = load i32* %a
	store i32 %u485, i32* %_retval_
	br label %LU61
LU61:
	%u486 = load i32* %_retval_
	ret i32 %u486
}

define i32 @association()
{
LU63:
	%_retval_ = alloca i32
	%a = alloca i32
	br label %LU64
LU64:
	store i32 10, i32* %a
	%u486 = load i32* %a
	%u487 = mul i32 %u486, 2
	store i32 %u487, i32* %a
	%u488 = load i32* %a
	%u489 = sdiv i32 %u488, 2
	store i32 %u489, i32* %a
	%u490 = load i32* %a
	%u491 = mul i32 3, %u490
	store i32 %u491, i32* %a
	%u492 = load i32* %a
	%u493 = sdiv i32 %u492, 3
	store i32 %u493, i32* %a
	%u494 = load i32* %a
	%u495 = mul i32 %u494, 4
	store i32 %u495, i32* %a
	%u496 = load i32* %a
	%u497 = sdiv i32 %u496, 4
	store i32 %u497, i32* %a
	%u498 = load i32* %a
	%u499 = add i32 %u498, 4
	store i32 %u499, i32* %a
	%u500 = load i32* %a
	%u501 = sub i32 %u500, 4
	store i32 %u501, i32* %a
	%u502 = load i32* %a
	%u503 = mul i32 %u502, 50
	store i32 %u503, i32* %a
	%u504 = load i32* %a
	%u505 = sdiv i32 %u504, 50
	store i32 %u505, i32* %a
	%u506 = load i32* %a
	store i32 %u506, i32* %_retval_
	br label %LU65
LU65:
	%u507 = load i32* %_retval_
	ret i32 %u507
}

define i32 @tailRecursionHelper(i32 %_P_value, i32 %_P_sum)
{
LU67:
	%_retval_ = alloca i32
	%value = alloca i32
	store i32 %_P_value, i32* %value
	%sum = alloca i32
	store i32 %_P_sum, i32* %sum
	br label %LU68
LU68:
	%u507 = load i32* %value
	%u508 = icmp eq i32 %u507, 0
	br i1 %u508, label %LU70, label %LU71
LU70:
	%u509 = load i32* %sum
	store i32 %u509, i32* %_retval_
	br label %LU69
LU71:
	%u510 = load i32* %value
	%u511 = sub i32 %u510, 1
	%u512 = load i32* %sum
	%u513 = load i32* %value
	%u514 = add i32 %u512, %u513
	%u515 = call i32 @tailRecursionHelper(i32 %u511, i32 %u514)
	store i32 %u515, i32* %_retval_
	br label %LU69
LU72:
	br label %LU69
LU69:
	%u517 = load i32* %_retval_
	ret i32 %u517
}

define i32 @tailRecursion(i32 %_P_value)
{
LU74:
	%_retval_ = alloca i32
	%value = alloca i32
	store i32 %_P_value, i32* %value
	br label %LU75
LU75:
	%u517 = load i32* %value
	%u518 = call i32 @tailRecursionHelper(i32 %u517, i32 0)
	store i32 %u518, i32* %_retval_
	br label %LU76
LU76:
	%u520 = load i32* %_retval_
	ret i32 %u520
}

define i32 @unswitching()
{
LU78:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	br label %LU79
LU79:
	store i32 1, i32* %a
	store i32 2, i32* %b
	br label %LU81
LU81:
	%u520 = load i32* %a
	%u521 = icmp slt i32 %u520, 1000000
	br i1 %u521, label %LU85, label %LU80
LU82:
	%u522 = load i32* %b
	%u523 = icmp eq i32 %u522, 2
	br i1 %u523, label %LU83, label %LU84
LU83:
	%u524 = load i32* %a
	%u525 = add i32 %u524, 1
	store i32 %u525, i32* %a
	br label %LU85
LU84:
	%u526 = load i32* %a
	%u527 = add i32 %u526, 2
	store i32 %u527, i32* %a
	br label %LU85
LU85:
	br label %LU81
LU86:
	%u528 = load i32* %a
	store i32 %u528, i32* %_retval_
	br label %LU80
LU80:
	%u529 = load i32* %_retval_
	ret i32 %u529
}

define i32 @randomCalculation(i32 %_P_number)
{
LU88:
	%_retval_ = alloca i32
	%a = alloca i32
	%b = alloca i32
	%c = alloca i32
	%d = alloca i32
	%e = alloca i32
	%i = alloca i32
	%sum = alloca i32
	%number = alloca i32
	store i32 %_P_number, i32* %number
	br label %LU89
LU89:
	store i32 0, i32* %i
	store i32 0, i32* %sum
	br label %LU91
LU91:
	%u529 = load i32* %i
	%u530 = load i32* %number
	%u531 = icmp slt i32 %u529, %u530
	br i1 %u531, label %LU92, label %LU90
LU92:
	store i32 4, i32* %a
	store i32 7, i32* %b
	store i32 8, i32* %c
	%u532 = load i32* %a
	%u533 = load i32* %b
	%u534 = add i32 %u532, %u533
	store i32 %u534, i32* %d
	%u535 = load i32* %d
	%u536 = load i32* %c
	%u537 = add i32 %u535, %u536
	store i32 %u537, i32* %e
	%u538 = load i32* %sum
	%u539 = load i32* %e
	%u540 = add i32 %u538, %u539
	store i32 %u540, i32* %sum
	%u541 = load i32* %i
	%u542 = mul i32 %u541, 2
	store i32 %u542, i32* %i
	%u543 = load i32* %i
	%u544 = sdiv i32 %u543, 2
	store i32 %u544, i32* %i
	%u545 = load i32* %i
	%u546 = mul i32 3, %u545
	store i32 %u546, i32* %i
	%u547 = load i32* %i
	%u548 = sdiv i32 %u547, 3
	store i32 %u548, i32* %i
	%u549 = load i32* %i
	%u550 = mul i32 %u549, 4
	store i32 %u550, i32* %i
	%u551 = load i32* %i
	%u552 = sdiv i32 %u551, 4
	store i32 %u552, i32* %i
	%u553 = load i32* %i
	%u554 = add i32 %u553, 1
	store i32 %u554, i32* %i
	br label %LU91
LU93:
	%u555 = load i32* %sum
	store i32 %u555, i32* %_retval_
	br label %LU90
LU90:
	%u556 = load i32* %_retval_
	ret i32 %u556
}

define i32 @iterativeFibonacci(i32 %_P_number)
{
LU95:
	%_retval_ = alloca i32
	%previous = alloca i32
	%result = alloca i32
	%count = alloca i32
	%i = alloca i32
	%sum = alloca i32
	%number = alloca i32
	store i32 %_P_number, i32* %number
	br label %LU96
LU96:
	%u556 = sub i32 0, 1
	store i32 %u556, i32* %previous
	store i32 1, i32* %result
	store i32 0, i32* %i
	br label %LU98
LU98:
	%u557 = load i32* %i
	%u558 = load i32* %number
	%u559 = icmp slt i32 %u557, %u558
	br i1 %u559, label %LU99, label %LU97
LU99:
	%u560 = load i32* %result
	%u561 = load i32* %previous
	%u562 = add i32 %u560, %u561
	store i32 %u562, i32* %sum
	%u563 = load i32* %result
	store i32 %u563, i32* %previous
	%u564 = load i32* %sum
	store i32 %u564, i32* %result
	%u565 = load i32* %i
	%u566 = add i32 %u565, 1
	store i32 %u566, i32* %i
	br label %LU98
LU100:
	%u567 = load i32* %result
	store i32 %u567, i32* %_retval_
	br label %LU97
LU97:
	%u568 = load i32* %_retval_
	ret i32 %u568
}

define i32 @recursiveFibonacci(i32 %_P_number)
{
LU102:
	%_retval_ = alloca i32
	%number = alloca i32
	store i32 %_P_number, i32* %number
	br label %LU103
LU103:
	%u568 = load i32* %number
	%u569 = icmp sle i32 %u568, 0
	%u570 = load i32* %number
	%u571 = icmp eq i32 %u570, 1
	%u572 = or i1 %u569, %u571
	br i1 %u572, label %LU105, label %LU106
LU105:
	%u573 = load i32* %number
	store i32 %u573, i32* %_retval_
	br label %LU104
LU106:
	%u574 = load i32* %number
	%u575 = sub i32 %u574, 1
	%u576 = call i32 @recursiveFibonacci(i32 %u575)
	%u578 = load i32* %number
	%u579 = sub i32 %u578, 2
	%u580 = call i32 @recursiveFibonacci(i32 %u579)
	%u582 = add i32 %u576, %u580
	store i32 %u582, i32* %_retval_
	br label %LU104
LU107:
	br label %LU104
LU104:
	%u583 = load i32* %_retval_
	ret i32 %u583
}

define i32 @main()
{
LU109:
	%_retval_ = alloca i32
	%input = alloca i32
	%result = alloca i32
	%i = alloca i32
	br label %LU110
LU110:
	%u583 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u584 = load i32* @_scanned_
	store i32 %u584, i32* %input
	store i32 1, i32* %i
	br label %LU112
LU112:
	%u585 = load i32* %i
	%u586 = load i32* %input
	%u587 = icmp slt i32 %u585, %u586
	br i1 %u587, label %LU113, label %LU111
LU113:
	%u588 = call i32 @constantFolding()
	store i32 %u588, i32* %result
	%u590 = load i32* %result
	%u591 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u590)
	%u592 = call i32 @constantPropagation()
	store i32 %u592, i32* %result
	%u594 = load i32* %result
	%u595 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u594)
	%u596 = call i32 @deadCodeElimination()
	store i32 %u596, i32* %result
	%u598 = load i32* %result
	%u599 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u598)
	%u600 = call i32 @interProceduralOptimization()
	store i32 %u600, i32* %result
	%u602 = load i32* %result
	%u603 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u602)
	%u604 = call i32 @commonSubexpressionElimination()
	store i32 %u604, i32* %result
	%u606 = load i32* %result
	%u607 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u606)
	%u608 = call i32 @hoisting()
	store i32 %u608, i32* %result
	%u610 = load i32* %result
	%u611 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u610)
	%u612 = call i32 @doubleIf()
	store i32 %u612, i32* %result
	%u614 = load i32* %result
	%u615 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u614)
	%u616 = call i32 @integerDivide()
	store i32 %u616, i32* %result
	%u618 = load i32* %result
	%u619 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u618)
	%u620 = call i32 @association()
	store i32 %u620, i32* %result
	%u622 = load i32* %result
	%u623 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u622)
	%u624 = load i32* %input
	%u625 = sdiv i32 %u624, 1000
	%u626 = call i32 @tailRecursion(i32 %u625)
	store i32 %u626, i32* %result
	%u628 = load i32* %result
	%u629 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u628)
	%u630 = call i32 @unswitching()
	store i32 %u630, i32* %result
	%u632 = load i32* %result
	%u633 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u632)
	%u634 = load i32* %input
	%u635 = call i32 @randomCalculation(i32 %u634)
	store i32 %u635, i32* %result
	%u637 = load i32* %result
	%u638 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u637)
	%u639 = load i32* %input
	%u640 = sdiv i32 %u639, 5
	%u641 = call i32 @iterativeFibonacci(i32 %u640)
	store i32 %u641, i32* %result
	%u643 = load i32* %result
	%u644 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u643)
	%u645 = load i32* %input
	%u646 = sdiv i32 %u645, 1000
	%u647 = call i32 @recursiveFibonacci(i32 %u646)
	store i32 %u647, i32* %result
	%u649 = load i32* %result
	%u650 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u649)
	%u651 = load i32* %i
	%u652 = add i32 %u651, 1
	store i32 %u652, i32* %i
	br label %LU112
LU114:
	%u653 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 9999)
	store i32 0, i32* %_retval_
	br label %LU111
LU111:
	%u654 = load i32* %_retval_
	ret i32 %u654
}

declare i32 @scanf(i8*, ...)
declare i32 @printf(i8*, ...)
declare i8* @malloc(i32)
declare void @free(i8*)
@.println = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.print = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.read = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.read_scratch = common global i32 0, align 4
@_scanned_ = common global i32 0, align 4
