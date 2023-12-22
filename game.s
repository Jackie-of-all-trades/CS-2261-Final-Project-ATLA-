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
	.file	"game.c"
	.text
	.align	2
	.global	setLevel1
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setLevel1, %function
setLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #67108864
	mov	lr, #4864
	mov	r3, #0
	ldr	ip, .L4
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	ldr	r4, .L4+12
	strh	r3, [r0, #20]	@ movhi
	strh	r3, [r0, #24]	@ movhi
	strh	lr, [r0]	@ movhi
	mov	r3, #12096
	strh	r2, [r0, #8]	@ movhi
	strh	r1, [r0, #10]	@ movhi
	mov	r2, #100663296
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+56
	ldr	r1, .L4+60
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+64
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	4353
	.word	19458
	.word	3329
	.word	DMANow
	.word	level2tilesTiles
	.word	100687872
	.word	level1mapMap
	.word	100689920
	.word	appaHpMap
	.word	100698112
	.word	objectiveL1Map
	.word	level2tilesPal
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	shadowOAM
	.size	setLevel1, .-setLevel1
	.align	2
	.global	setLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	setLevel2, %function
setLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	mov	r3, #0
	mov	r2, #4352
	mov	r1, #35840
	ldr	ip, .L8
	push	{r4, lr}
	ldr	r4, .L8+4
	strh	r3, [r0, #24]	@ movhi
	strh	r2, [r0]	@ movhi
	mov	r3, #12096
	strh	r1, [r0, #8]	@ movhi
	mov	r2, #100663296
	strh	ip, [r0, #12]	@ movhi
	ldr	r1, .L8+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+32
	ldr	r1, .L8+36
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+40
	ldr	r1, .L8+44
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L8+48
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	4353
	.word	DMANow
	.word	level2tilesTiles
	.word	100687872
	.word	desertmapMap
	.word	100698112
	.word	objectiveL2Map
	.word	level2tilesPal
	.word	100728832
	.word	level2spritesheetTiles
	.word	83886592
	.word	level2spritesheetPal
	.word	shadowOAM
	.size	setLevel2, .-setLevel2
	.align	2
	.global	initFPtrs
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFPtrs, %function
initFPtrs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L12
	ldr	r1, .L12+4
	ldr	r0, .L12+8
	push	{r4, lr}
	ldr	r3, .L12+12
	str	r1, [r2]
	str	r0, [r2, #4]
	ldr	r1, .L12+16
	ldr	lr, .L12+20
	ldr	ip, .L12+24
	ldr	r4, .L12+28
	ldr	r0, .L12+32
	str	lr, [r3]
	str	ip, [r3, #4]
	ldr	r2, .L12+36
	ldr	lr, .L12+40
	str	r4, [r1]
	str	r0, [r1, #4]
	ldr	ip, .L12+44
	ldr	r3, .L12+48
	ldr	r0, .L12+52
	ldr	r1, .L12+56
	str	lr, [r2]
	stm	r3, {r0, r1}
	str	ip, [r2, #4]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	setLevels
	.word	setLevel1
	.word	setLevel2
	.word	initLevels
	.word	maintainLevels
	.word	initLevel1
	.word	initLevel2
	.word	updatelevel1
	.word	updatelevel2
	.word	hasLost
	.word	hasLostL1
	.word	hasLostL2
	.word	hasWon
	.word	hasWonL1
	.word	hasWonL2
	.size	initFPtrs, .-initFPtrs
	.align	2
	.global	setLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setLevel, %function
setLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, lr}
	mov	r4, r0
	ldrne	r3, .L20
	ldrne	r3, [r3, r0, lsl #2]
	movne	lr, pc
	bxne	r3
.L15:
	ldr	r3, .L20+4
	ldr	r3, [r3, r4, lsl #2]
	pop	{r4, lr}
	bx	r3	@ indirect register sibling call
.L21:
	.align	2
.L20:
	.word	initLevels
	.word	setLevels
	.size	setLevel, .-setLevel
	.align	2
	.global	updateLevels
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevels, %function
updateLevels:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	ldr	r3, .L25
	ldrgt	r3, [r3, #4]
	bxgt	r3	@ indirect register sibling call
.L24:
	ldr	r3, [r3, r0, lsl #2]
	bx	r3	@ indirect register sibling call
.L26:
	.align	2
.L25:
	.word	maintainLevels
	.size	updateLevels, .-updateLevels
	.align	2
	.global	lossCheck
	.syntax unified
	.arm
	.fpu softvfp
	.type	lossCheck, %function
lossCheck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L28
	ldr	r3, [r3, r0, lsl #2]
	bx	r3
.L29:
	.align	2
.L28:
	.word	hasLost
	.size	lossCheck, .-lossCheck
	.align	2
	.global	winCheck
	.syntax unified
	.arm
	.fpu softvfp
	.type	winCheck, %function
winCheck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L31
	ldr	r3, [r3, r0, lsl #2]
	bx	r3
.L32:
	.align	2
.L31:
	.word	hasWon
	.size	winCheck, .-winCheck
	.comm	hasLost,8,4
	.comm	hasWon,8,4
	.comm	maintainLevels,8,4
	.comm	initLevels,8,4
	.comm	setLevels,8,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
