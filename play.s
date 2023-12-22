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
	.file	"play.c"
	.text
	.align	2
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L30
	ldrh	r1, [r3, #2]
	tst	r1, #32
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L2
	ldr	r1, .L30+4
	ldr	r3, [r1]
	ldr	r0, .L30+8
	cmp	r3, #59
	str	r3, [r0]
	addle	r3, r3, #1
	strgt	r2, [r1]
	strle	r3, [r1]
.L2:
	ldr	r3, .L30
	ldrh	r3, [r3, #2]
	tst	r3, #64
	beq	.L4
	ldr	r2, .L30+12
	ldr	r3, [r2]
	cmp	r3, #59
	movgt	r3, #0
	addle	r3, r3, #1
	str	r3, [r2]
.L4:
	ldr	r3, .L30
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L6
	ldr	r3, .L30+16
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L8
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	blt	.L8
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L27
	ldr	r0, .L30+20
	ldr	r1, .L30+24
	ldr	r0, [r0]
	str	r2, [r3, #8]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L8:
	ldr	r3, .L30+28
	ldr	r2, [r3, #8]
	cmp	r2, #0
	bne	.L28
.L12:
	ldr	r2, .L30+32
	ldr	r3, [r2]
	cmp	r3, #100
	movgt	r3, #0
	addle	r3, r3, #1
	str	r3, [r2]
.L6:
	mov	r1, #1
	ldr	r3, .L30
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L28:
	add	r1, r3, #16
	ldm	r1, {r1, r2}
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #20]
	blt	.L12
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L29
	ldr	r0, .L30+20
	ldr	r1, .L30+24
	ldr	r0, [r0]
	str	r2, [r3, #8]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
	b	.L12
.L27:
	ldm	r3, {r0, r1}
	ldr	r3, .L30+36
	mov	lr, pc
	bx	r3
	b	.L8
.L29:
	ldm	r3, {r0, r1}
	ldr	r3, .L30+40
	mov	lr, pc
	bx	r3
	b	.L12
.L31:
	.align	2
.L30:
	.word	67109376
	.word	second
	.word	prevSecond
	.word	minute
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	ticks
	.word	playSoundA
	.word	playSoundB
	.size	interruptHandler, .-interruptHandler
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"tsungi horn, by Iroh\000"
	.align	2
.LC1:
	.ascii	"Leaves from the Vine\000"
	.align	2
.LC2:
	.ascii	"Start\000"
	.align	2
.LC3:
	.ascii	"appa\000"
	.align	2
.LC4:
	.ascii	"endcredits\000"
	.align	2
.LC5:
	.ascii	"menu\000"
	.text
	.align	2
	.global	initTracks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTracks, %function
initTracks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	ldr	ip, [r3]
	ldr	r3, .L34+4
	push	{r4, r5, r6, lr}
	ldr	r1, .L34+8
	str	ip, [r3, #4]
	ldr	ip, .L34+12
	ldr	r1, [r1]
	str	ip, [r3]
	ldr	r4, .L34+16
	ldr	ip, .L34+20
	str	r1, [r3, #8]
	str	ip, [r3, #12]
	ldr	r5, [r4]
	ldr	r3, .L34+24
	ldr	lr, .L34+28
	str	r5, [r3, #4]
	ldr	r5, .L34+32
	ldr	lr, [lr]
	str	r5, [r3]
	ldr	r2, .L34+36
	ldr	r5, .L34+40
	str	lr, [r3, #8]
	str	r5, [r3, #12]
	ldr	r2, [r2]
	ldr	r3, .L34+44
	ldr	r0, .L34+48
	str	r2, [r3, #4]
	ldr	r2, .L34+52
	ldr	r4, [r0]
	str	r2, [r3]
	ldr	r0, .L34+56
	ldr	r2, .L34+60
	str	r4, [r3, #8]
	str	r2, [r3, #12]
	ldr	r0, [r0]
	ldr	r3, .L34+64
	ldr	r1, .L34+68
	str	r0, [r3, #4]
	ldr	r1, [r1]
	ldr	r2, .L34+72
	ldr	r0, .L34+76
	ldr	ip, .L34+80
	ldr	lr, .L34+84
	str	r2, [r3]
	ldr	lr, [lr]
	ldr	r2, .L34+88
	ldr	ip, [ip]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	ldr	r0, .L34+92
	ldr	r1, .L34+96
	ldr	r3, .L34+100
	str	lr, [r2, #8]
	str	ip, [r2, #4]
	str	r0, [r2]
	str	r1, [r2, #12]
	ldr	ip, .L34+104
	ldr	r0, .L34+108
	ldr	r1, .L34+112
	ldr	r2, .L34+116
	str	ip, [r3]
	str	r0, [r3, #12]
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r2, .L34+120
	stmib	r3, {r0, r1}
	mov	lr, pc
	bx	r2
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	tsungi_sampleRate
	.word	tsungi
	.word	tsungi_length
	.word	.LC0
	.word	loseSong_sampleRate
	.word	tsungi_data
	.word	leaves
	.word	loseSong_length
	.word	.LC1
	.word	start_sampleRate
	.word	loseSong_data
	.word	start
	.word	start_length
	.word	.LC2
	.word	appa_sampleRate
	.word	start_data
	.word	appa
	.word	appa_length
	.word	.LC3
	.word	appa_data
	.word	endcredits_sampleRate
	.word	endcredits_length
	.word	endcredits
	.word	.LC4
	.word	endcredits_data
	.word	menu
	.word	.LC5
	.word	menu_data
	.word	menu_sampleRate
	.word	menu_length
	.word	setupSounds
	.size	initTracks, .-initTracks
	.align	2
	.global	playTrack
	.syntax unified
	.arm
	.fpu softvfp
	.type	playTrack, %function
playTrack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	add	ip, sp, #16
	stmdb	ip, {r0, r1, r2, r3}
	mov	r2, #1
	ldr	r3, .L38
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	playSoundA
	.size	playTrack, .-playTrack
	.align	2
	.global	playSoundEffect
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundEffect, %function
playSoundEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	sub	sp, sp, #20
	add	ip, sp, #16
	stmdb	ip, {r0, r1, r2, r3}
	mov	r2, #0
	ldr	r3, .L42
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	lr, [sp], #4
	bx	lr
.L43:
	.align	2
.L42:
	.word	playSoundB
	.size	playSoundEffect, .-playSoundEffect
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r5, #49152
	mov	r4, #195
	mvn	r1, #59
	mov	lr, #196
	mov	r6, #67108864
	mov	r7, #8
	mov	ip, #97
	mov	r0, #1
	ldr	r3, .L46
	strh	r7, [r6, #4]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	strh	r5, [r3, #8]	@ movhi
	strh	r4, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldr	r2, .L46+4
	strh	lr, [r3, #14]	@ movhi
	ldr	r1, .L46+8
	ldr	r3, .L46+12
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	str	r3, [r1, #4092]
	bx	lr
.L47:
	.align	2
.L46:
	.word	67109120
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.comm	ticks,4,4
	.comm	prevSecond,4,4
	.comm	minute,4,4
	.comm	second,4,4
	.comm	menu,16,4
	.comm	endcredits,16,4
	.comm	appa,16,4
	.comm	start,16,4
	.comm	leaves,16,4
	.comm	tsungi,16,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
