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
	.file	"level2.c"
	.text
	.align	2
	.global	initLevel2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel2, %function
initLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r1, #3
	mov	r5, #24
	mov	r4, #12
	mov	lr, #1
	mov	r0, #16
	mov	ip, #45
	ldr	r3, .L4
	strb	r2, [r3, #64]
	stmib	r3, {r4, lr}
	str	r5, [r3]
	str	ip, [r3, #44]
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #56]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	playerL2
	.size	initLevel2, .-initLevel2
	.align	2
	.global	initPlayerL2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerL2, %function
initPlayerL2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initLevel2
	.size	initPlayerL2, .-initPlayerL2
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayerL2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerL2, %function
updatePlayerL2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	ldr	r4, .L56
	ldr	r3, .L56+4
	ldr	ip, [r4]
	ldr	r2, [r4, #20]
	ldr	lr, [r4, #4]
	ldr	r0, [r4, #24]
	ldrh	r3, [r3]
	add	r2, ip, r2
	add	r0, lr, r0
	ands	r6, r3, #64
	str	r5, [r4, #36]
	sub	r2, r2, #1
	sub	r0, r0, #1
	bne	.L8
	mov	r7, #1
	ldr	r1, [r4, #12]
	ldr	r5, .L56+8
	sub	r1, lr, r1
	add	r8, r5, ip
	ldrb	r8, [r8, r1, lsl #8]	@ zero_extendqisi2
	cmp	r8, #0
	str	r7, [r4, #36]
	beq	.L9
	add	r5, r5, r2
	ldrb	r5, [r5, r1, lsl #8]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L9
	cmp	r1, #0
	movlt	r1, r6
	str	r1, [r4, #4]
.L9:
	mov	r1, #3
	str	r1, [r4, #32]
.L8:
	tst	r3, #128
	bne	.L11
	mov	r6, #1
	ldr	r5, [r4, #12]
	ldr	r1, .L56+8
	add	r7, r5, r0
	add	r8, r1, ip
	ldrb	r8, [r8, r7, lsl #8]	@ zero_extendqisi2
	cmp	r8, #0
	str	r6, [r4, #36]
	ldr	r6, [r4, #4]
	beq	.L12
	add	r1, r1, r2
	ldrb	r1, [r1, r7, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L12
	add	r5, r5, r6
	str	r5, [r4, #4]
.L13:
	mov	r1, #0
	str	r1, [r4, #32]
.L11:
	ands	r6, r3, #32
	bne	.L14
	mov	r7, #1
	ldr	r1, [r4, #8]
	ldr	r5, .L56+8
	sub	r1, ip, r1
	add	ip, r5, lr, lsl #8
	ldrb	ip, [ip, r1]	@ zero_extendqisi2
	cmp	ip, #0
	str	r7, [r4, #36]
	beq	.L15
	add	r5, r5, r0, lsl #8
	ldrb	ip, [r5, r1]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L15
	cmp	r1, #0
	movlt	r1, r6
	str	r1, [r4]
.L15:
	mov	r1, #1
	str	r1, [r4, #32]
.L14:
	tst	r3, #16
	bne	.L17
	mov	r6, #1
	ldr	r5, [r4, #8]
	ldr	ip, .L56+8
	add	r2, r5, r2
	add	r1, ip, lr, lsl #8
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	cmp	r1, #0
	str	r6, [r4, #36]
	beq	.L18
	add	r0, ip, r0, lsl #8
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L18
	ldr	r1, [r4]
	add	r2, r1, #15
	add	r2, r2, r5
	cmp	r2, #256
	movgt	r2, #256
	addle	r5, r5, r1
	strgt	r2, [r4]
	strle	r5, [r4]
.L18:
	mov	r2, #2
	str	r2, [r4, #32]
.L17:
	tst	r3, #1
	bne	.L20
	ldr	r3, [r4, #44]
	cmp	r3, #0
	movle	r3, #45
	strle	r3, [r4, #44]
	ble	.L22
	cmp	r3, #14
	sub	r2, r3, #1
	strle	r2, [r4, #44]
	bgt	.L54
.L22:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r4, #28]
	cmp	r3, #0
	ldr	r0, [r4, #52]
	ble	.L55
	sub	r3, r3, #1
	str	r3, [r4, #28]
	add	r0, r0, #6
	b	.L27
.L25:
	mov	r2, #10
	mov	r0, #6
	str	r3, [r4, #52]
	str	r2, [r4, #28]
.L27:
	ldr	r2, .L56+12
	ldr	ip, [r4, #32]
	ldr	r3, [r4]
	ldr	r5, [r2]
	ldr	r1, [r4, #4]
	ldr	lr, .L56+16
	ldrb	r2, [r4, #64]	@ zero_extendqisi2
	add	r0, r0, ip, lsl #5
	lsl	r3, r3, #23
	ldr	ip, .L56+20
	sub	r1, r1, r5
	lsr	r3, r3, #23
	lsl	r4, r2, #3
	and	r1, r1, #255
	add	r2, lr, r2, lsl #3
	orr	r3, r3, #16384
	and	r0, ip, r0, lsl #1
	strh	r1, [lr, r4]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L12:
	cmp	r6, #512
	addge	r5, r5, r6
	strge	r5, [r4, #4]
	b	.L13
.L55:
	mov	r2, #10
	ldr	r3, .L56+24
	ldr	r1, [r4, #56]
	str	r2, [r4, #28]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #52]
	add	r0, r1, #6
	b	.L27
.L20:
	mov	r3, #83886080
	ldr	r2, .L56+28
	strh	r2, [r3, #6]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	b	.L22
.L54:
	cmp	r3, #29
	mov	r3, #83886080
	ldrle	r1, .L56+28
	ldrgt	r0, .L56+32
	ldrgt	r1, .L56+36
	strle	r2, [r4, #44]
	strgt	r2, [r4, #44]
	strhle	r1, [r3, #6]	@ movhi
	strhgt	r0, [r3, #6]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	b	.L22
.L57:
	.align	2
.L56:
	.word	playerL2
	.word	buttons
	.word	colMapL2Bitmap
	.word	vOffL2
	.word	shadowOAM
	.word	1022
	.word	__aeabi_idivmod
	.word	12028
	.word	10543
	.word	27482
	.size	updatePlayerL2, .-updatePlayerL2
	.align	2
	.global	offSetMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	offSetMap, %function
offSetMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L66
	ldr	r3, [r2]
	ldr	r0, .L66+4
	sub	r3, r3, #105
	cmp	r3, #0
	str	r3, [r0]
	movlt	r3, #0
	ldr	r2, [r2, #4]
	ldr	r1, .L66+8
	sub	r2, r2, #65
	str	r2, [r1]
	strlt	r3, [r0]
	blt	.L60
	cmp	r3, #16
	movgt	ip, #16
	movgt	r3, ip
	lslle	r3, r3, #16
	strgt	ip, [r0]
	lsrle	r3, r3, #16
.L60:
	cmp	r2, #0
	blt	.L65
	cmp	r2, #848
	bicle	r0, r2, #255
	addle	r0, r0, #3072
	mvnle	r0, r0, lsl #17
	movgt	ip, #864
	mvnle	r0, r0, lsr #17
	movgt	r2, #96
	movgt	r0, #36608
	strgt	ip, [r1]
	andle	r2, r2, #255
	andle	r0, r0, #65280
.L63:
	mov	r1, #67108864
	strh	r0, [r1, #8]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	strh	r2, [r1, #18]	@ movhi
	bx	lr
.L65:
	mov	r2, #0
	mov	r0, #35840
	str	r2, [r1]
	b	.L63
.L67:
	.align	2
.L66:
	.word	playerL2
	.word	hOffL2
	.word	vOffL2
	.size	offSetMap, .-offSetMap
	.align	2
	.global	updatelevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatelevel2, %function
updatelevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #4352
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #67108864
	strh	r2, [r3]	@ movhi
	bl	updatePlayerL2
	ldr	r3, .L79
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bgt	.L69
	mov	r1, #512
	ldr	r3, .L79+4
	strh	r1, [r3, #8]	@ movhi
.L70:
	mov	r1, #512
	strh	r1, [r3, #16]	@ movhi
.L72:
	cmp	r2, #2
	movle	r2, #512
	movgt	r0, #0
	movgt	r1, #12
	ldrgt	r2, .L79+8
	strhle	r2, [r3, #24]	@ movhi
	strhgt	r0, [r3, #24]	@ movhi
	strhgt	r1, [r3, #28]	@ movhi
	strhgt	r2, [r3, #26]	@ movhi
	ldr	r3, .L79+12
	ldrh	r3, [r3]
	tst	r3, #768
	bne	.L75
	ldr	lr, .L79+16
	add	r4, lr, #204
	mov	fp, r4
	ldr	r3, .L79+20
	ldr	r10, .L79+24
	ldr	r9, .L79+28
	ldr	r8, .L79+32
	ldr	r7, .L79+36
	add	r6, lr, #408
	add	r5, lr, #612
.L76:
	ldr	ip, [lr, #4]!
	ldr	r0, [r4, #4]!
	ldr	r1, [r6, #4]!
	ldr	r2, [r5, #4]!
	lsl	ip, ip, #1
	lsl	r0, r0, #1
	lsl	r1, r1, #1
	lsl	r2, r2, #1
	cmp	fp, lr
	strh	r10, [r3, ip]	@ movhi
	strh	r9, [r3, r0]	@ movhi
	strh	r8, [r3, r1]	@ movhi
	strh	r7, [r3, r2]	@ movhi
	bne	.L76
.L75:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	offSetMap
.L69:
	mov	r0, #0
	mov	r1, #12
	ldr	r3, .L79+4
	ldr	ip, .L79+40
	cmp	r2, #1
	strh	r0, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	beq	.L70
	ldr	ip, .L79+44
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	b	.L72
.L80:
	.align	2
.L79:
	.word	playerL2
	.word	shadowOAM
	.word	16608
	.word	buttons
	.word	.LANCHOR0-4
	.word	100687872
	.word	482
	.word	483
	.word	509
	.word	510
	.word	16576
	.word	16592
	.size	updatelevel2, .-updatelevel2
	.align	2
	.global	showTraps
	.syntax unified
	.arm
	.fpu softvfp
	.type	showTraps, %function
showTraps:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	lr, .L85
	add	r4, lr, #204
	mov	fp, r4
	ldr	r3, .L85+4
	ldr	r10, .L85+8
	ldr	r9, .L85+12
	ldr	r8, .L85+16
	ldr	r7, .L85+20
	add	r6, lr, #408
	add	r5, lr, #612
.L82:
	ldr	ip, [lr, #4]!
	ldr	r0, [r4, #4]!
	ldr	r1, [r6, #4]!
	ldr	r2, [r5, #4]!
	lsl	ip, ip, #1
	lsl	r0, r0, #1
	lsl	r1, r1, #1
	lsl	r2, r2, #1
	cmp	lr, fp
	strh	r10, [r3, ip]	@ movhi
	strh	r9, [r3, r0]	@ movhi
	strh	r8, [r3, r1]	@ movhi
	strh	r7, [r3, r2]	@ movhi
	bne	.L82
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	.LANCHOR0-4
	.word	100687872
	.word	482
	.word	483
	.word	509
	.word	510
	.size	showTraps, .-showTraps
	.align	2
	.global	hasLostL2
	.syntax unified
	.arm
	.fpu softvfp
	.type	hasLostL2, %function
hasLostL2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L98
	ldm	r5, {r1, r3}
	adds	r2, r3, #7
	ldr	lr, .L98+4
	addmi	r2, r3, #14
	adds	r3, r1, #7
	addmi	r3, r1, #14
	add	r4, lr, #204
	asr	r2, r2, #3
	asr	r3, r3, #3
	mov	r8, r4
	add	r3, r3, r2, lsl #5
	add	r0, lr, #408
	add	r1, lr, #612
	b	.L91
.L97:
	cmp	r6, r3
	beq	.L92
	cmp	ip, r3
	cmpne	r3, r7
	beq	.L95
	cmp	lr, r8
	beq	.L96
.L91:
	ldr	r2, [r4, #4]!
	cmp	r2, r3
	ldr	ip, [lr, #4]!
	ldr	r6, [r0, #4]!
	ldr	r7, [r1, #4]!
	bne	.L97
.L88:
	mov	r1, #24
	mov	lr, #12
	ldr	r0, [r5, #16]
	str	r1, [r5]
	str	lr, [r5, #4]
	ldr	r1, .L98+8
	ldr	lr, .L98+12
	lsl	ip, ip, #1
	sub	r0, r0, #1
	str	r0, [r5, #16]
	ldr	r4, .L98+16
	strh	lr, [r1, ip]	@ movhi
	ldr	ip, .L98+20
	lsl	r6, r6, #1
	lsl	r2, r7, #1
	add	lr, lr, #27
	lsl	r3, r3, #1
	strh	r4, [r1, r3]	@ movhi
	lsr	r0, r0, #31
	strh	lr, [r1, r6]	@ movhi
	strh	ip, [r1, r2]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L92:
	mov	r6, r3
.L95:
	mov	r3, r2
	b	.L88
.L96:
	ldr	r0, [r5, #16]
	pop	{r4, r5, r6, r7, r8, lr}
	lsr	r0, r0, #31
	bx	lr
.L99:
	.align	2
.L98:
	.word	playerL2
	.word	.LANCHOR0-4
	.word	100687872
	.word	482
	.word	483
	.word	510
	.size	hasLostL2, .-hasLostL2
	.align	2
	.global	hasWonL2
	.syntax unified
	.arm
	.fpu softvfp
	.type	hasWonL2, %function
hasWonL2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L101
	ldr	r0, [r3, #4]
	cmp	r0, #1024
	movle	r0, #0
	movgt	r0, #1
	bx	lr
.L102:
	.align	2
.L101:
	.word	playerL2
	.size	hasWonL2, .-hasWonL2
	.align	2
	.global	showLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	showLives, %function
showLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L110
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bgt	.L104
	mov	r1, #512
	ldr	r3, .L110+4
	strh	r1, [r3, #8]	@ movhi
.L105:
	mov	r1, #512
	strh	r1, [r3, #16]	@ movhi
.L107:
	cmp	r2, #2
	movle	r2, #512
	movgt	r0, #0
	movgt	r1, #12
	ldrgt	r2, .L110+8
	strhle	r2, [r3, #24]	@ movhi
	strhgt	r0, [r3, #24]	@ movhi
	strhgt	r1, [r3, #28]	@ movhi
	strhgt	r2, [r3, #26]	@ movhi
	bx	lr
.L104:
	mov	r0, #0
	mov	r1, #12
	ldr	r3, .L110+4
	ldr	ip, .L110+12
	cmp	r2, #1
	strh	r0, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	beq	.L105
	ldr	ip, .L110+16
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	strh	ip, [r3, #18]	@ movhi
	b	.L107
.L111:
	.align	2
.L110:
	.word	playerL2
	.word	shadowOAM
	.word	16608
	.word	16576
	.word	16592
	.size	showLives, .-showLives
	.global	index4
	.global	index3
	.global	index2
	.global	index1
	.comm	playerL2,68,4
	.comm	currentSB,4,4
	.comm	vOffL2,4,4
	.comm	hOffL2,4,4
	.comm	directionL2,1,1
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	index1, %object
	.size	index1, 204
index1:
	.word	1445
	.word	1525
	.word	1614
	.word	1626
	.word	1638
	.word	1665
	.word	1839
	.word	1927
	.word	1985
	.word	2010
	.word	2066
	.word	2154
	.word	2167
	.word	2180
	.word	2205
	.word	2267
	.word	2323
	.word	2411
	.word	2424
	.word	2437
	.word	2462
	.word	2612
	.word	2701
	.word	2713
	.word	2725
	.word	2752
	.word	2902
	.word	2926
	.word	3014
	.word	3072
	.word	3097
	.word	3153
	.word	3241
	.word	3254
	.word	3267
	.word	3292
	.word	3381
	.word	3470
	.word	3482
	.word	3494
	.word	3521
	.word	3671
	.word	3695
	.word	3783
	.word	3841
	.word	3866
	.word	3922
	.word	4010
	.word	4023
	.word	4036
	.word	4061
	.type	index2, %object
	.size	index2, 204
index2:
	.word	1446
	.word	1526
	.word	1615
	.word	1627
	.word	1639
	.word	1666
	.word	1840
	.word	1928
	.word	1986
	.word	2011
	.word	2067
	.word	2155
	.word	2168
	.word	2181
	.word	2206
	.word	2268
	.word	2324
	.word	2412
	.word	2425
	.word	2438
	.word	2463
	.word	2613
	.word	2702
	.word	2714
	.word	2726
	.word	2753
	.word	2903
	.word	2927
	.word	3015
	.word	3073
	.word	3098
	.word	3154
	.word	3242
	.word	3255
	.word	3268
	.word	3293
	.word	3382
	.word	3471
	.word	3483
	.word	3495
	.word	3522
	.word	3672
	.word	3696
	.word	3784
	.word	3842
	.word	3867
	.word	3923
	.word	4011
	.word	4024
	.word	4037
	.word	4062
	.type	index3, %object
	.size	index3, 204
index3:
	.word	1477
	.word	1557
	.word	1646
	.word	1658
	.word	1670
	.word	1697
	.word	1871
	.word	1959
	.word	2017
	.word	2042
	.word	2098
	.word	2186
	.word	2199
	.word	2212
	.word	2237
	.word	2299
	.word	2355
	.word	2443
	.word	2456
	.word	2469
	.word	2494
	.word	2644
	.word	2733
	.word	2745
	.word	2757
	.word	2784
	.word	2934
	.word	2958
	.word	3046
	.word	3104
	.word	3129
	.word	3185
	.word	3273
	.word	3286
	.word	3299
	.word	3324
	.word	3413
	.word	3502
	.word	3514
	.word	3526
	.word	3553
	.word	3703
	.word	3727
	.word	3815
	.word	3873
	.word	3898
	.word	3954
	.word	4042
	.word	4055
	.word	4068
	.word	4093
	.type	index4, %object
	.size	index4, 204
index4:
	.word	1478
	.word	1558
	.word	1647
	.word	1659
	.word	1671
	.word	1698
	.word	1872
	.word	1960
	.word	2018
	.word	2043
	.word	2099
	.word	2187
	.word	2200
	.word	2213
	.word	2238
	.word	2300
	.word	2356
	.word	2444
	.word	2457
	.word	2470
	.word	2495
	.word	2645
	.word	2734
	.word	2746
	.word	2758
	.word	2785
	.word	2935
	.word	2959
	.word	3047
	.word	3105
	.word	3130
	.word	3186
	.word	3274
	.word	3287
	.word	3300
	.word	3325
	.word	3414
	.word	3503
	.word	3515
	.word	3527
	.word	3554
	.word	3704
	.word	3728
	.word	3816
	.word	3874
	.word	3899
	.word	3955
	.word	4043
	.word	4056
	.word	4069
	.word	4094
	.ident	"GCC: (devkitARM release 53) 9.1.0"
