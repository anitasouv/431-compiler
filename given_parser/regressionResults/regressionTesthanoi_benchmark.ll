target triple="i686"
%struct.plate = type {i32, %struct.plate*};
@peg1 = common global %struct.plate* null, align 4
@peg2 = common global %struct.plate* null, align 4
@peg3 = common global %struct.plate* null, align 4
@numMoves = common global i32 0, align 4
define void @move(i32 %_P_from, i32 %_P_to)
{
LU2:
	%plateToMove = alloca %struct.plate*
	%from = alloca i32
	store i32 %_P_from, i32* %from
	%to = alloca i32
	store i32 %_P_to, i32* %to
	br label %LU3
LU3:
	%u0 = load i32* %from
	%u1 = icmp eq i32 %u0, 1
	br i1 %u1, label %LU5, label %LU6
LU5:
	%u2 = load %struct.plate** @peg1
	store %struct.plate* %u2, %struct.plate** %plateToMove
	%u3 = load %struct.plate** @peg1
	%u4 = getelementptr %struct.plate* %u3, i1 0, i32 1
	%u5 = load %struct.plate** %u4
	store %struct.plate* %u5, %struct.plate** @peg1
	br label %LU10
LU6:
	%u6 = load i32* %from
	%u7 = icmp eq i32 %u6, 2
	br i1 %u7, label %LU7, label %LU8
	br label %LU10
LU10:
	%u16 = load i32* %to
	%u17 = icmp eq i32 %u16, 1
	br i1 %u17, label %LU11, label %LU12
LU11:
	%u18 = load %struct.plate** @peg1
	%u19 = load %struct.plate** %plateToMove
	%u20 = getelementptr %struct.plate* %u19, i1 0, i32 1
	store %struct.plate* %u18, %struct.plate** %u20
	%u21 = load %struct.plate** %plateToMove
	store %struct.plate* %u21, %struct.plate** @peg1
	br label %LU16
LU12:
	%u22 = load i32* %to
	%u23 = icmp eq i32 %u22, 2
	br i1 %u23, label %LU13, label %LU14
	br label %LU16
LU16:
	%u32 = load i32* @numMoves
	%u33 = add i32 %u32, 1
	store i32 %u33, i32* @numMoves
	br label %LU4
LU13:
	%u24 = load %struct.plate** @peg2
	%u25 = load %struct.plate** %plateToMove
	%u26 = getelementptr %struct.plate* %u25, i1 0, i32 1
	store %struct.plate* %u24, %struct.plate** %u26
	%u27 = load %struct.plate** %plateToMove
	store %struct.plate* %u27, %struct.plate** @peg2
	br label %LU15
LU15:
	br label %LU16
LU14:
	%u28 = load %struct.plate** @peg3
	%u29 = load %struct.plate** %plateToMove
	%u30 = getelementptr %struct.plate* %u29, i1 0, i32 1
	store %struct.plate* %u28, %struct.plate** %u30
	%u31 = load %struct.plate** %plateToMove
	store %struct.plate* %u31, %struct.plate** @peg3
	br label %LU15
LU7:
	%u8 = load %struct.plate** @peg2
	store %struct.plate* %u8, %struct.plate** %plateToMove
	%u9 = load %struct.plate** @peg2
	%u10 = getelementptr %struct.plate* %u9, i1 0, i32 1
	%u11 = load %struct.plate** %u10
	store %struct.plate* %u11, %struct.plate** @peg2
	br label %LU9
LU9:
	br label %LU10
LU8:
	%u12 = load %struct.plate** @peg3
	store %struct.plate* %u12, %struct.plate** %plateToMove
	%u13 = load %struct.plate** @peg3
	%u14 = getelementptr %struct.plate* %u13, i1 0, i32 1
	%u15 = load %struct.plate** %u14
	store %struct.plate* %u15, %struct.plate** @peg3
	br label %LU9
LU4:
	ret void
}

define void @hanoi(i32 %_P_n, i32 %_P_from, i32 %_P_to, i32 %_P_other)
{
LU18:
	%n = alloca i32
	store i32 %_P_n, i32* %n
	%from = alloca i32
	store i32 %_P_from, i32* %from
	%to = alloca i32
	store i32 %_P_to, i32* %to
	%other = alloca i32
	store i32 %_P_other, i32* %other
	br label %LU19
LU19:
	%u34 = load i32* %n
	%u35 = icmp eq i32 %u34, 1
	br i1 %u35, label %LU21, label %LU22
LU21:
	%u36 = load i32* %from
	%u37 = load i32* %to
	call void @move(i32 %u36, i32 %u37)
	br label %LU23
LU22:
	%u39 = load i32* %n
	%u40 = sub i32 %u39, 1
	%u41 = load i32* %from
	%u42 = load i32* %other
	%u43 = load i32* %to
	call void @hanoi(i32 %u40, i32 %u41, i32 %u42, i32 %u43)
	%u45 = load i32* %from
	%u46 = load i32* %to
	call void @move(i32 %u45, i32 %u46)
	%u48 = load i32* %n
	%u49 = sub i32 %u48, 1
	%u50 = load i32* %other
	%u51 = load i32* %to
	%u52 = load i32* %from
	call void @hanoi(i32 %u49, i32 %u50, i32 %u51, i32 %u52)
	br label %LU23
LU23:
	br label %LU20
LU20:
	ret void
}

define void @printPeg(%struct.plate* %_P_peg)
{
LU25:
	%aPlate = alloca %struct.plate*
	%peg = alloca %struct.plate*
	store %struct.plate* %_P_peg, %struct.plate** %peg
	br label %LU26
LU26:
	%u54 = load %struct.plate** %peg
	store %struct.plate* %u54, %struct.plate** %aPlate
	br label %LU28
LU28:
	%u55 = load %struct.plate** %aPlate
	%u56 = icmp ne %struct.plate* %u55, null
	br i1 %u56, label %LU29, label %LU27
LU29:
	%u57 = load %struct.plate** %aPlate
	%u58 = getelementptr %struct.plate* %u57, i1 0, i32 0
	%u59 = load i32* %u58
	%u60 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u59)
	%u61 = load %struct.plate** %aPlate
	%u62 = getelementptr %struct.plate* %u61, i1 0, i32 1
	%u63 = load %struct.plate** %u62
	store %struct.plate* %u63, %struct.plate** %aPlate
	br label %LU28
LU30:
	br label %LU27
LU27:
	ret void
}

define i32 @main()
{
LU32:
	%_retval_ = alloca i32
	%count = alloca i32
	%numPlates = alloca i32
	%aPlate = alloca %struct.plate*
	br label %LU33
LU33:
	store %struct.plate* null, %struct.plate** @peg1
	store %struct.plate* null, %struct.plate** @peg2
	store %struct.plate* null, %struct.plate** @peg3
	store i32 0, i32* @numMoves
	%u64 = call i32 (i8*, ... )*  @scanf(i8* getelementptr inbounds ([4 x i8]*@.read, i32 0, i32 0), i32* @_scanned_)
	%u65 = load i32* @_scanned_
	store i32 %u65, i32* %numPlates
	%u66 = load i32* %numPlates
	%u67 = icmp sge i32 %u66, 1
	br i1 %u67, label %LU35, label %LU42
LU35:
	%u68 = load i32* %numPlates
	store i32 %u68, i32* %count
	br label %LU36
LU42:
	br label %LU43
LU36:
	%u69 = load i32* %count
	%u70 = icmp ne i32 %u69, 0
	br i1 %u70, label %LU37, label %LU34
LU37:
	%u71 = call i8* @malloc(i32 8)
	%u72 = bitcast i8* %u71 to %struct.plate*
	store %struct.plate* %u72, %struct.plate** %aPlate
	%u73 = load i32* %count
	%u74 = load %struct.plate** %aPlate
	%u75 = getelementptr %struct.plate* %u74, i1 0, i32 0
	store i32 %u73, i32* %u75
	%u76 = load %struct.plate** @peg1
	%u77 = load %struct.plate** %aPlate
	%u78 = getelementptr %struct.plate* %u77, i1 0, i32 1
	store %struct.plate* %u76, %struct.plate** %u78
	%u79 = load %struct.plate** %aPlate
	store %struct.plate* %u79, %struct.plate** @peg1
	%u80 = load i32* %count
	%u81 = sub i32 %u80, 1
	store i32 %u81, i32* %count
	br label %LU36
LU38:
	%u82 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	%u83 = load %struct.plate** @peg1
	call void @printPeg(%struct.plate* %u83)
	%u85 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 2)
	%u86 = load %struct.plate** @peg2
	call void @printPeg(%struct.plate* %u86)
	%u88 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 3)
	%u89 = load %struct.plate** @peg3
	call void @printPeg(%struct.plate* %u89)
	%u91 = load i32* %numPlates
	call void @hanoi(i32 %u91, i32 1, i32 3, i32 2)
	%u93 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 1)
	%u94 = load %struct.plate** @peg1
	call void @printPeg(%struct.plate* %u94)
	%u96 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 2)
	%u97 = load %struct.plate** @peg2
	call void @printPeg(%struct.plate* %u97)
	%u99 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 3)
	%u100 = load %struct.plate** @peg3
	call void @printPeg(%struct.plate* %u100)
	%u102 = load i32* @numMoves
	%u103 = call i32 (i8*, ... )* @printf(i8* getelementptr inbounds ([5 x i8]*@.println,i32 0, i32 0), i32 %u102)
	br label %LU39
LU39:
	%u104 = load %struct.plate** @peg3
	%u105 = icmp ne %struct.plate* %u104, null
	br i1 %u105, label %LU40, label %LU34
LU40:
	%u106 = load %struct.plate** @peg3
	store %struct.plate* %u106, %struct.plate** %aPlate
	%u107 = load %struct.plate** @peg3
	%u108 = getelementptr %struct.plate* %u107, i1 0, i32 1
	%u109 = load %struct.plate** %u108
	store %struct.plate* %u109, %struct.plate** @peg3
	br label %LU39
LU41:
	br label %LU43
LU43:
	store i32 0, i32* %_retval_
	br label %LU34
LU34:
	%u110 = load i32* %_retval_
	ret i32 %u110
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
