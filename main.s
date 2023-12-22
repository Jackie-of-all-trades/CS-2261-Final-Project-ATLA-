	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	setInstructs
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setInstructs, %function
setInstructs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r5, #256
	mov	r1, #67108864
	mov	r3, #0
	mov	r0, #4864
	strh	r3, [r1, #24]	@ movhi
	ldr	r4, .L4+4
	strh	r5, [r1]	@ movhi
	mov	r2, #100663296
	strh	r0, [r1, #8]	@ movhi
	ldr	r3, .L4+8
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L4+28
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	waitForVBlank
	.word	DMANow
	.word	4576
	.word	InstructsTiles
	.word	100702208
	.word	InstructsMap
	.word	InstructsPal
	.word	state
	.size	setInstructs, .-setInstructs
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Time: %d minutes %d seconds\012\000"
	.text
	.align	2
	.global	setStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	setStart, %function
setStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r3, .L8
	ldr	r2, .L8+4
	ldr	ip, .L8+8
	ldr	r1, [r3]
	ldr	r2, [r2]
	ldr	r0, .L8+12
	ldr	r3, .L8+16
	str	r5, [ip]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+24
	mov	lr, pc
	bx	r3
	mov	ip, #24064
	mov	r0, #67108864
	mov	r3, #5888
	mov	r2, #6656
	mov	r1, #23552
	ldr	r4, .L8+28
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #16384
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #100663296
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L8+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+36
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L8+44
	ldr	r1, .L8+48
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L8+52
	ldr	r1, .L8+56
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+60
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+64
	ldr	r1, .L8+68
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+72
	ldr	r1, .L8+76
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+80
	ldr	r4, .L8+84
	ldm	r3, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+88
	strb	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	minute
	.word	second
	.word	wasPaused
	.word	.LC0
	.word	mgba_printf
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	tilesetTiles
	.word	100716544
	.word	titlesMap
	.word	100720640
	.word	mountainsMap
	.word	100724736
	.word	skyMap
	.word	tilesetPal
	.word	100728832
	.word	menuspritesTiles
	.word	83886592
	.word	menuspritesPal
	.word	start
	.word	playTrack
	.word	state
	.size	setStart, .-setStart
	.align	2
	.global	setWorldMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	setWorldMap, %function
setWorldMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	ldr	r2, .L12+8
	ldr	r1, [r3]
	ldr	r2, [r2]
	ldr	r0, .L12+12
	ldr	r3, .L12+16
	mov	lr, pc
	bx	r3
	mov	r6, #0
	mov	ip, #67108864
	mov	r2, #4352
	mov	r1, #2048
	strh	r6, [ip, #24]	@ movhi
	ldr	r4, .L12+20
	strh	r2, [ip]	@ movhi
	mov	r0, #3
	strh	r1, [ip, #8]	@ movhi
	mov	r2, #100663296
	strh	r6, [ip, #16]	@ movhi
	ldr	r3, .L12+24
	strh	r6, [ip, #18]	@ movhi
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+32
	ldr	r1, .L12+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+44
	ldr	r1, .L12+48
	mov	lr, pc
	bx	r4
	ldr	r5, .L12+52
	mov	r0, #3
	ldr	r2, .L12+56
	ldr	r1, .L12+60
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+64
	mov	lr, pc
	bx	r3
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	mov	lr, #3
	mov	r0, #40
	ldr	r3, .L12+68
	strb	r6, [r3]
	ldr	r3, .L12+72
	ldr	ip, .L12+76
	ldr	r1, .L12+80
	strb	r2, [r3]
	strh	lr, [r5]	@ movhi
	strh	ip, [r5, #2]	@ movhi
	strh	r0, [r5, #8]	@ movhi
	strh	r1, [r5, #10]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	waitForVBlank
	.word	minute
	.word	second
	.word	.LC0
	.word	mgba_printf
	.word	DMANow
	.word	4208
	.word	worldmapTiles
	.word	100679680
	.word	worldmapMap
	.word	worldmapPal
	.word	100728832
	.word	mapspritesheetTiles
	.word	shadowOAM
	.word	83886592
	.word	mapspritesheetPal
	.word	hideSprites
	.word	level
	.word	state
	.word	16476
	.word	16522
	.size	setWorldMap, .-setWorldMap
	.align	2
	.global	setGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	setGame, %function
setGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L18
	ldr	r4, .L18+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+8
	mov	lr, pc
	bx	r3
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #4
	ldr	r3, .L18+12
	movne	r1, #1
	ldrb	r0, [r3]	@ zero_extendqisi2
	moveq	r1, #0
	ldr	r3, .L18+16
	mov	lr, pc
	bx	r3
	mov	r3, #3
	strb	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	waitForVBlank
	.word	state
	.word	hideSprites
	.word	level
	.word	setLevel
	.size	setGame, .-setGame
	.align	2
	.global	setup
	.syntax unified
	.arm
	.fpu softvfp
	.type	setup, %function
setup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	mov	ip, #24064
	mov	r0, #67108864
	mov	r3, #5888
	mov	r2, #6656
	mov	r1, #23552
	mov	r5, #0
	ldr	r4, .L22+4
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	mov	r3, #16384
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #100663296
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L22+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L22+12
	ldr	r1, .L22+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L22+20
	ldr	r1, .L22+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L22+28
	ldr	r1, .L22+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L22+40
	ldr	r1, .L22+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L22+48
	ldr	r1, .L22+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+56
	mov	lr, pc
	bx	r3
	ldr	r2, .L22+60
	ldr	r3, .L22+64
	ldrh	r1, [r2, #48]
	ldr	r2, .L22+68
	ldr	r4, .L22+72
	ldr	ip, .L22+76
	ldr	r6, .L22+80
	strh	r1, [r2]	@ movhi
	ldm	r3, {r0, r1, r2, r3}
	str	r5, [ip]
	strb	r5, [r4]
	mov	lr, pc
	bx	r6
	strb	r5, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	mgba_open
	.word	DMANow
	.word	tilesetTiles
	.word	100716544
	.word	titlesMap
	.word	100720640
	.word	mountainsMap
	.word	100724736
	.word	skyMap
	.word	tilesetPal
	.word	100728832
	.word	menuspritesTiles
	.word	83886592
	.word	menuspritesPal
	.word	hideSprites
	.word	67109120
	.word	start
	.word	buttons
	.word	state
	.word	wasPaused
	.word	playTrack
	.size	setup, .-setup
	.align	2
	.global	initMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMap, %function
initMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #0
	mov	ip, #3
	mov	r1, #40
	ldr	r2, .L26
	ldr	r3, .L26+4
	strb	lr, [r2]
	ldr	r0, .L26+8
	ldr	r2, .L26+12
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L27:
	.align	2
.L26:
	.word	level
	.word	shadowOAM
	.word	16476
	.word	16522
	.size	initMap, .-initMap
	.align	2
	.global	updateMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMap, %function
updateMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L42
	ldr	r0, .L42+4
	ldr	r2, .L42+8
	strh	r0, [r3, #10]	@ movhi
	ldrb	r0, [r2]	@ zero_extendqisi2
	mov	r2, #0
	mov	ip, #40
	mov	r4, #3
	ldr	r1, .L42+12
	ldrb	r1, [r1]	@ zero_extendqisi2
	ldr	lr, .L42+16
	cmp	r1, r2
	strh	lr, [r3, #2]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	mov	lr, #192
	mov	r6, #12416
	mov	r7, #128
	mov	ip, #8256
	mov	r5, #64
	strh	r4, [r3]	@ movhi
	ble	.L29
.L40:
	cmp	r0, r2
	moveq	r4, #4160
	strheq	r5, [r3, #4]	@ movhi
	beq	.L31
	strh	ip, [r3, #4]	@ movhi
.L34:
	cmp	r2, #1
	add	r3, r3, #8
	beq	.L39
.L36:
	mov	r2, #1
	cmp	r1, r2
	bgt	.L40
.L29:
	beq	.L41
	cmp	r0, r2
	strh	lr, [r3, #4]	@ movhi
	bne	.L34
	mov	r4, #4288
.L31:
	cmp	r2, #1
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #8
	bne	.L36
.L39:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L41:
	cmp	r0, r1
	moveq	r4, #4224
	strheq	r7, [r3, #4]	@ movhi
	beq	.L31
	strh	r6, [r3, #4]	@ movhi
	b	.L34
.L43:
	.align	2
.L42:
	.word	shadowOAM
	.word	16522
	.word	level
	.word	progress
	.word	16476
	.size	updateMap, .-updateMap
	.align	2
	.global	setPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPause, %function
setPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L46
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L46+4
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L46+8
	ldr	r1, .L46+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+16
	ldr	r1, .L46+20
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r3, #4352
	mov	r2, #2304
	strh	r3, [r5]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #16384
	ldr	r2, .L46+24
	ldr	r1, .L46+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L46+32
	mov	r3, #256
	ldr	r2, .L46+36
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L46+40
	strh	r3, [r5, #16]	@ movhi
	strh	r3, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	lr, #4
	ldr	r3, .L46+44
	ldr	ip, .L46+48
	ldr	r4, .L46+52
	ldm	r3, {r0, r1, r2, r3}
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	DMANow
	.word	pausePal
	.word	6096
	.word	pauseTiles
	.word	100681728
	.word	pauseMap
	.word	100728832
	.word	menuspritesTiles
	.word	menuspritesPal
	.word	83886592
	.word	hideSprites
	.word	tsungi
	.word	state
	.word	playTrack
	.size	setPause, .-setPause
	.align	2
	.global	setWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	setWin, %function
setWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #100663296
	ldr	r4, .L50
	mov	r0, #3
	ldr	r3, .L50+4
	ldr	r1, .L50+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L50+12
	ldr	r1, .L50+16
	mov	lr, pc
	bx	r4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L50+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L50+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #256
	mov	r1, #0
	mov	r0, #4864
	mov	lr, #6
	strh	r2, [r3]	@ movhi
	ldr	r2, .L50+32
	ldr	ip, .L50+36
	strh	r0, [r3, #8]	@ movhi
	ldr	r4, .L50+40
	strh	r1, [r3, #24]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	ldm	r2, {r0, r1, r2, r3}
	strb	lr, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	DMANow
	.word	9456
	.word	winTiles
	.word	100702208
	.word	winMap
	.word	winPal
	.word	hideSprites
	.word	shadowOAM
	.word	endcredits
	.word	state
	.word	playTrack
	.size	setWin, .-setWin
	.align	2
	.global	setLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	setLose, %function
setLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L54
	mov	lr, pc
	bx	r3
	ldr	r5, .L54+4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L54+8
	ldr	r1, .L54+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L54+16
	ldr	r1, .L54+20
	mov	lr, pc
	bx	r5
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L54+24
	mov	lr, pc
	bx	r5
	mov	r4, #0
	mov	r3, #67108864
	mov	r0, #256
	mov	r1, #4992
	strh	r4, [r3, #20]	@ movhi
	ldr	r2, .L54+28
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L54+32
	mov	lr, pc
	bx	r5
	mov	r1, #5
	ldr	r2, .L54+36
	ldr	r3, .L54+40
	ldr	r5, .L54+44
	strb	r1, [r2]
	ldm	r3, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r5
	ldr	r3, .L54+48
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	waitForVBlank
	.word	DMANow
	.word	18464
	.word	loseTiles
	.word	100702208
	.word	loseMap
	.word	losePal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.word	leaves
	.word	playTrack
	.word	tearOffset
	.size	setLose, .-setLose
	.align	2
	.global	manageGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	manageGame, %function
manageGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L169
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L56
.L59:
	.word	.L65
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L58
.L88:
	ldr	r5, .L169+4
	ldr	r3, .L169+8
	ldrb	r0, [r5]	@ zero_extendqisi2
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L89
	ldr	r6, .L169+12
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldrb	r2, [r6]	@ zero_extendqisi2
	cmp	r3, r2
	addeq	r3, r3, #1
	strbeq	r3, [r6]
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L91
	bl	setWin
.L92:
	ldr	r3, .L169+20
	ldrb	r0, [r5]	@ zero_extendqisi2
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L93
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L162
.L93:
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L169+28
	ldr	r4, .L169+32
	mov	lr, pc
	bx	r4
.L56:
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	mov	r3, #67108864
	mov	r2, #0
	mov	r1, #4864
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	ldr	r1, .L169+36
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L169+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L56
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L56
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
.L161:
	pop	{r4, r5, r6, lr}
	b	setStart
.L65:
	ldr	r4, .L169+40
	ldrh	r2, [r4]
	tst	r2, #32
	beq	.L158
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	ands	ip, r3, #32
	beq	.L156
.L158:
	ldr	r5, .L169+44
.L66:
	tst	r2, #16
	beq	.L67
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L163
.L67:
	ldrb	r0, [r5]	@ zero_extendqisi2
	ldr	r3, .L169+28
	ldr	r1, .L169+48
	ldr	ip, .L169+52
	cmp	r0, #0
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	movne	ip, #4352
	moveq	ip, #256
	strh	r1, [r3, #8]	@ movhi
	movne	r1, #0
	moveq	r1, #4096
	ldr	lr, .L169+56
	tst	r2, #8
	strh	lr, [r3, #2]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	beq	.L70
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L164
.L70:
	ldr	r2, .L169+60
	ldr	r3, .L169+64
	ldr	r2, [r2]
	smull	r1, r3, r2, r3
	ldr	ip, .L169+68
	asr	r1, r2, #31
	rsb	r3, r1, r3, asr #1
	ldr	r0, [ip]
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3
	lslne	r3, r0, #16
	lsrne	r3, r3, #16
	bne	.L74
	cmp	r0, #272
	addle	r3, r0, #1
	strle	r3, [ip]
	strgt	r3, [ip]
	lslle	r3, r3, #16
	lsrle	r3, r3, #16
.L74:
	ldr	r0, .L169+64
	smull	ip, r0, r2, r0
	rsb	r1, r1, r0, asr #2
	ldr	r0, .L169+72
	add	r1, r1, r1, lsl #2
	subs	r2, r2, r1, lsl #1
	ldr	r1, [r0]
	lslne	r2, r1, #16
	lsrne	r2, r2, #16
	bne	.L77
	cmp	r1, #272
	addle	r2, r1, #1
	strle	r2, [r0]
	strgt	r2, [r0]
	lslle	r2, r2, #16
	lsrle	r2, r2, #16
.L77:
	mov	r1, #67108864
	pop	{r4, r5, r6, lr}
	strh	r3, [r1, #20]	@ movhi
	strh	r2, [r1, #24]	@ movhi
	bx	lr
.L64:
	ldr	r3, .L169+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L56
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L56
	ldr	r3, .L169+76
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L161
	pop	{r4, r5, r6, lr}
	b	setPause
.L63:
	ldr	r4, .L169+40
	ldrh	r3, [r4]
	tst	r3, #64
	beq	.L82
	ldr	r2, .L169+24
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L82
.L83:
	ldr	r1, .L169+4
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldr	r2, .L169+80
	sub	r3, r3, #1
.L159:
	and	r3, r3, #1
	strb	r3, [r1]
	ldr	r5, .L169+84
	ldm	r2, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r5
.L85:
	bl	updateMap
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L56
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L56
	ldr	r2, .L169+4
	ldr	r3, .L169+12
	ldrb	r2, [r2]	@ zero_extendqisi2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L56
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	setGame
.L62:
	ldr	r4, .L169+40
	ldrh	r3, [r4]
	tst	r3, #4
	bne	.L88
	mov	r3, #67108864
	mov	r2, #1024
	strh	r2, [r3]	@ movhi
	b	.L56
.L61:
	mov	r2, #2304
	mov	r0, #1
	mov	r3, #67108864
	ldr	r1, .L169+76
	ldr	r4, .L169+40
	str	r0, [r1]
	strh	r2, [r3, #8]	@ movhi
	ldrh	r1, [r4]
	ldr	r5, .L169+44
	tst	r1, #64
	ldrb	r2, [r5]	@ zero_extendqisi2
	beq	.L96
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L165
.L96:
	tst	r1, #128
	beq	.L97
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L166
.L97:
	cmp	r2, #0
	beq	.L167
	mov	r0, #0
	ldr	r3, .L169+28
	ldr	ip, .L169+88
	strh	r0, [r3, #4]	@ movhi
	ldr	r0, .L169+92
	cmp	r2, #1
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	bne	.L100
	mov	ip, #4224
	strh	r0, [r3, #10]	@ movhi
	ldr	r0, .L169+96
	strh	ip, [r3, #12]	@ movhi
	strh	r0, [r3, #8]	@ movhi
.L101:
	mov	lr, #256
	cmp	r2, #3
	moveq	ip, #4480
	movne	ip, #384
	ldr	r0, .L169+100
	ldr	r2, .L169+92
	strh	lr, [r3, #20]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
.L102:
	ldr	r0, .L169+104
	ldr	r2, .L169+92
	tst	r1, #8
	strh	ip, [r3, #28]	@ movhi
	strh	r0, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	beq	.L56
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L56
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
	ldrb	r2, [r5]	@ zero_extendqisi2
	ldr	r3, .L169+108
	pop	{r4, r5, r6, lr}
	ldr	r3, [r3, r2, lsl #2]
	bx	r3	@ indirect register sibling call
.L60:
	mov	r3, #67108864
	mov	r2, #256
	mov	r1, #4992
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r2, .L169+36
	mov	lr, pc
	bx	r2
	ldr	r3, .L169+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L94
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L168
.L94:
	ldr	r2, .L169+60
	ldr	r3, .L169+64
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r1, r3, r3, lsl #2
	cmp	r2, r1, lsl #1
	bne	.L56
	ldr	r0, .L169+112
	ldr	r2, [r0]
	tst	r3, #1
	lsl	r3, r2, #1
	add	r3, r3, #83886080
	bne	.L95
	mov	ip, #83886080
	ldr	r1, .L169+116
	add	r2, r2, #1
	smull	lr, r1, r2, r1
	ldrh	lr, [ip, #42]
	sub	r1, r1, r2, asr #31
	strh	lr, [ip, #44]	@ movhi
	add	r1, r1, r1, lsl #1
	ldrh	lr, [r3, #32]
	sub	r2, r2, r1
	ldrh	r1, [ip, #44]
	strh	lr, [ip, #42]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	str	r2, [r0]
	b	.L56
.L82:
	tst	r3, #32
	beq	.L84
	ldr	r2, .L169+24
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L83
.L84:
	tst	r3, #128
	beq	.L86
	ldr	r2, .L169+24
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L86
.L87:
	ldr	r1, .L169+4
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldr	r2, .L169+80
	add	r3, r3, #1
	b	.L159
.L86:
	tst	r3, #16
	beq	.L85
	ldr	r3, .L169+24
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L85
	b	.L87
.L100:
	mov	lr, #128
	ldr	ip, .L169+96
	cmp	r2, #2
	strh	r0, [r3, #10]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	bne	.L101
	mov	ip, #4352
	ldr	r2, .L169+100
	strh	ip, [r3, #20]	@ movhi
	strh	r0, [r3, #18]	@ movhi
	mov	ip, #384
	strh	r2, [r3, #16]	@ movhi
	b	.L102
.L164:
	cmp	r0, #0
	bne	.L71
	bl	setWorldMap
.L72:
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
	b	.L70
.L95:
	mov	r2, #83886080
	ldrh	r0, [r3, #32]
	ldrh	r1, [r2, #42]
	strh	r0, [r2, #44]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	ldrh	r3, [r2, #44]
	strh	r3, [r2, #42]	@ movhi
	b	.L56
.L156:
	ldr	r3, .L169+80
	ldr	r5, .L169+44
	ldm	r3, {r0, r1, r2, r3}
	ldr	r6, .L169+84
	strb	ip, [r5]
	mov	lr, pc
	bx	r6
	ldrh	r2, [r4]
	b	.L66
.L165:
	ldr	r3, .L169+80
	sub	r2, r2, #1
.L160:
	and	ip, r2, #3
	ldr	r6, .L169+84
	ldm	r3, {r0, r1, r2, r3}
	strb	ip, [r5]
	mov	lr, pc
	bx	r6
	ldrh	r1, [r4]
	ldrb	r2, [r5]	@ zero_extendqisi2
	b	.L97
.L168:
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
	bl	setStart
	b	.L94
.L163:
	mov	ip, #1
	ldr	r3, .L169+80
	ldr	r6, .L169+84
	ldm	r3, {r0, r1, r2, r3}
	strb	ip, [r5]
	mov	lr, pc
	bx	r6
	ldrh	r2, [r4]
	b	.L67
.L166:
	ldr	r3, .L169+80
	add	r2, r2, #1
	b	.L160
.L167:
	mov	r0, #4096
	mov	ip, #128
	ldr	r3, .L169+28
	strh	r0, [r3, #4]	@ movhi
	ldr	r0, .L169+88
	strh	ip, [r3, #12]	@ movhi
	strh	r0, [r3]	@ movhi
	ldr	ip, .L169+96
	ldr	r0, .L169+92
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	b	.L101
.L71:
	bl	setInstructs
	b	.L72
.L89:
	ldrb	r0, [r5]	@ zero_extendqisi2
	ldr	r3, .L169+120
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	beq	.L92
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
	bl	setLose
	b	.L92
.L91:
	bl	setWorldMap
	b	.L92
.L162:
	ldr	r3, .L169+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L169+124
	mov	lr, pc
	bx	r3
	bl	setPause
	b	.L93
.L170:
	.align	2
.L169:
	.word	state
	.word	level
	.word	winCheck
	.word	progress
	.word	stopSounds
	.word	updateLevels
	.word	oldButtons
	.word	shadowOAM
	.word	DMANow
	.word	hideSprites
	.word	buttons
	.word	item
	.word	16484
	.word	-16334
	.word	-16264
	.word	ticks
	.word	1717986919
	.word	hOff
	.word	hOff2
	.word	wasPaused
	.word	menu
	.word	playSoundEffect
	.word	16388
	.word	-16214
	.word	16428
	.word	16468
	.word	16508
	.word	option
	.word	tearOffset
	.word	1431655766
	.word	lossCheck
	.word	waitForVBlank
	.size	manageGame, .-manageGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	ldr	r3, .L174
	mov	lr, pc
	bx	r3
	ldr	r3, .L174+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L174+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L174+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L174+16
	ldr	r0, .L174+20
	ldr	r1, .L174+24
	ldr	r2, .L174+28
	ldr	ip, .L174+32
	stmib	r3, {r0, r1, r2}
	str	ip, [r3]
	ldr	r10, .L174+36
	ldr	r4, .L174+40
	ldr	r9, .L174+44
	ldr	r8, .L174+48
	ldr	r7, .L174+52
	ldr	r6, .L174+56
	ldr	r5, .L174+60
.L172:
	ldrh	r3, [r4]
	strh	r3, [r10]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r5
	mov	r0, #3
	mov	lr, pc
	bx	r7
	b	.L172
.L175:
	.align	2
.L174:
	.word	setupInterrupts
	.word	initTracks
	.word	initFPtrs
	.word	setup
	.word	option
	.word	setGame
	.word	setInstructs
	.word	setStart
	.word	setWorldMap
	.word	oldButtons
	.word	buttons
	.word	manageGame
	.word	waitForVBlank
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.size	main, .-main
	.text
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #512
	ldr	r4, .L178
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L178+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L179:
	.align	2
.L178:
	.word	DMANow
	.word	shadowOAM
	.size	draw, .-draw
	.comm	time,4,4
	.comm	vBlankCount,4,4
	.comm	shadowOAM,1024,4
	.comm	prevTearOffset,4,4
	.comm	tearOffset,4,4
	.comm	vOff,4,4
	.comm	hOff2,4,4
	.comm	hOff,4,4
	.comm	wasPaused,4,4
	.comm	map,24,4
	.comm	option,24,4
	.comm	level,1,1
	.comm	progress,1,1
	.comm	state,1,1
	.comm	item,1,1
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
