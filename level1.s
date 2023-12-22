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
	.file	"level1.c"
	.text
	.align	2
	.global	drawHealth
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth, %function
drawHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, lr}
	mov	r4, #648
	mov	lr, r3
	ldr	r2, .L8
	ldr	r1, .L8+4
	ldr	r2, [r2, #16]
	smull	r0, r1, r2, r1
	ldr	ip, .L8+8
	asr	r2, r2, #31
	rsb	r1, r2, r1, asr #2
.L4:
	cmp	r1, r3
	add	r2, r3, #65
	lsl	r0, r2, #1
	add	r3, r3, #1
	lslle	r2, r2, #1
	strhgt	lr, [ip, r0]	@ movhi
	strhle	r4, [ip, r2]	@ movhi
	cmp	r3, #10
	bne	.L4
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.word	1717986919
	.word	100689920
	.size	drawHealth, .-drawHealth
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, lr}
	mov	r1, #1
	mov	r7, #24
	mov	r6, #12
	mov	r5, #3
	mov	r4, #64
	mov	lr, #100
	mov	ip, #32
	mov	r0, #6
	ldr	r3, .L12
	strb	r2, [r3, #64]
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #12]
	str	r4, [r3, #20]
	str	lr, [r3, #16]
	str	ip, [r3, #24]
	str	r0, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #28]
	str	r1, [r3, #8]
	str	r1, [r3, #32]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	push	{r4, r5, lr}
	mov	r0, r2
	mov	r1, #0
	mov	ip, #220
	mov	r5, #40
	mov	r4, #16
	mov	lr, #32
	ldr	r3, .L20
	b	.L15
.L17:
	tst	r2, #1
	movne	ip, #190
	moveq	ip, #220
	add	r2, r2, #1
	add	r3, r3, #60
	add	r1, r1, #30
.L15:
	cmp	r2, #7
	str	ip, [r3]
	str	r5, [r3, #16]
	str	r1, [r3, #4]
	str	r0, [r3, #12]
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r0, [r3, #8]
	strb	r2, [r3, #56]
	bne	.L17
	pop	{r4, r5, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	enemies
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initFireball
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFireball, %function
initFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r1, #8
	mov	r4, #1
	mov	lr, #16
	mov	ip, #32
	mov	r0, #0
	mov	r8, #4
	mov	r7, #10
	ldr	r2, .L26
	ldr	r3, .L26+4
.L23:
	add	r6, r1, #1
	strb	r1, [r2, #48]
	add	r5, r1, #30
	and	r1, r6, #255
	cmp	r1, #23
	str	r4, [r2, #12]
	str	lr, [r2, #20]
	str	ip, [r2, #24]
	str	r0, [r2, #8]
	str	r4, [r3, #12]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	str	r0, [r3, #8]
	str	r0, [r3, #40]
	str	r8, [r3, #44]
	str	r7, [r3, #28]
	strb	r5, [r3, #48]
	add	r2, r2, #52
	add	r3, r3, #52
	bne	.L23
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	air
	.word	fire
	.size	initFireball, .-initFireball
	.align	2
	.global	initLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel1, %function
initLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r2, #0
	mov	lr, #100
	mov	r1, #1
	mov	ip, #32
	mov	r0, #6
	mov	r7, #24
	mov	r6, #12
	mov	r5, #3
	mov	r4, #64
	ldr	r3, .L30
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #12]
	str	r4, [r3, #20]
	str	lr, [r3, #16]
	str	r2, [r3, #60]
	str	r2, [r3, #28]
	strb	r2, [r3, #64]
	str	ip, [r3, #24]
	str	r0, [r3, #56]
	str	r1, [r3, #8]
	str	r1, [r3, #32]
	bl	initEnemies
	bl	initFireball
	mov	r2, #15
	ldr	r3, .L30+4
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	player
	.word	fireDelay
	.size	initLevel1, .-initLevel1
	.global	__aeabi_idivmod
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L63
	ldrh	r3, [r3]
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L63+4
	ands	r0, r3, #64
	str	r2, [r4, #36]
	ldr	r2, [r4, #4]
	bne	.L33
	ldr	r1, [r4, #12]
	mov	ip, #1
	subs	r2, r2, r1
	movmi	r2, r0
	str	ip, [r4, #36]
	strmi	r0, [r4, #4]
	strpl	r2, [r4, #4]
.L33:
	ands	r1, r3, #128
	bne	.L58
	mov	r0, #1
	ldr	ip, [r4, #12]
	add	r2, r2, ip
	cmp	r2, #160
	str	r0, [r4, #36]
	ble	.L37
	mov	r2, r1
	str	r1, [r4, #4]
	ands	r1, r3, #32
	mov	r5, #16384
	ldr	r6, [r4]
	beq	.L59
.L38:
	tst	r3, #16
	moveq	r1, #1
	ldreq	r0, [r4, #8]
	addeq	r6, r6, r0
	moveq	ip, r1
	ldrne	ip, [r4, #36]
	streq	r6, [r4]
	streq	r1, [r4, #36]
	streq	r1, [r4, #32]
	tst	r3, #768
	bne	.L42
	ldr	r1, [r4, #16]
	cmp	r1, #74
	addle	r1, r1, #25
	strle	r1, [r4, #16]
.L42:
	ands	r3, r3, #1
	bne	.L44
	ldr	r1, [r4, #44]
	cmp	r1, #0
	subgt	r1, r1, #1
	strgt	r1, [r4, #44]
	ble	.L60
.L44:
	cmp	ip, #0
	beq	.L49
	ldr	r3, [r4, #28]
	cmp	r3, #0
	ldr	r0, [r4, #52]
	ble	.L61
	sub	r3, r3, #1
	lsl	r0, r0, #7
	str	r3, [r4, #28]
	and	r0, r0, #896
	b	.L51
.L37:
	str	r2, [r4, #4]
.L58:
	and	r5, r2, #255
	ands	r1, r3, #32
	ldr	r6, [r4]
	orr	r5, r5, #16384
	bne	.L38
.L59:
	mov	ip, #1
	ldr	r0, [r4, #8]
	subs	r6, r6, r0
	movmi	r6, r1
	str	r1, [r4, #32]
	str	ip, [r4, #36]
	strmi	r1, [r4]
	strpl	r6, [r4]
	b	.L38
.L49:
	mov	r3, #10
	mov	r0, ip
	str	ip, [r4, #52]
	str	r3, [r4, #28]
.L51:
	ldrb	r1, [r4, #64]	@ zero_extendqisi2
	ldr	ip, [r4, #32]
	ldr	r2, .L63+8
	lsl	r3, r6, #23
	lsr	r3, r3, #23
	orr	r3, r3, #49152
	cmp	ip, #0
	add	ip, r2, r1, lsl #3
	lsl	r1, r1, #3
	strh	r3, [ip, #2]	@ movhi
	strh	r5, [r2, r1]	@ movhi
	orrne	r3, r3, #4096
	add	r2, r2, r1
	strhne	r3, [ip, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L61:
	mov	r2, #10
	ldr	r3, .L63+12
	ldr	r1, [r4, #56]
	str	r2, [r4, #28]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	lsl	r0, r1, #7
	str	r1, [r4, #52]
	and	r0, r0, #896
	b	.L51
.L60:
	mov	r0, #15
	ldr	lr, .L63+16
	mov	r1, lr
	str	r0, [r4, #44]
.L47:
	ldr	r0, [r1, #8]
	cmp	r0, #0
	beq	.L62
	add	r3, r3, #1
	cmp	r3, #15
	add	r1, r1, #52
	bne	.L47
	b	.L44
.L62:
	mov	r0, #1
	ldr	r1, [r4, #24]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr r0
	add	r1, r3, r3, lsl r0
	add	r1, r3, r1, lsl #2
	ldr	r3, [r4, #20]
	add	r7, lr, r1, lsl #2
	add	r3, r3, r6
	str	r2, [r7, #4]
	str	r0, [r7, #8]
	str	r3, [lr, r1, lsl #2]
	b	.L44
.L64:
	.align	2
.L63:
	.word	buttons
	.word	player
	.word	shadowOAM
	.word	__aeabi_idivmod
	.word	air
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L87
	ldr	r5, .L87+4
	ldr	r10, .L87+8
	ldr	r8, .L87+12
	ldr	r7, .L87+16
	ldr	r9, .L87+20
	ldr	fp, .L87+24
	sub	sp, sp, #28
	add	r6, r4, #420
.L76:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #12]
	subs	r1, r3, r1
	movmi	r3, #240
	movmi	r1, r3
	movmi	r0, #272
	ldr	r2, [r5, #4]
	strmi	r3, [r4, #4]
	addpl	r0, r1, #32
	strpl	r1, [r4, #4]
	cmp	r2, r1
	movlt	r3, #0
	movge	r3, #1
	cmp	r2, r0
	movgt	r3, #0
	cmp	r3, #0
	bne	.L69
.L86:
	ldr	r0, [r4]
.L70:
	mov	r3, #32
	mov	ip, #64
	str	r2, [sp, #4]
	ldr	r2, [r5]
	str	r3, [sp, #12]
	str	r2, [sp]
	str	ip, [sp, #8]
	mov	r2, #16
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r5, #60]
	ldr	r3, [r4]
	ldrb	r2, [r4, #56]	@ zero_extendqisi2
	and	r3, r3, r9
	add	r0, r8, r2, lsl #3
	orr	r3, r3, r7
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L87+28
	lsl	r2, r2, #3
	orr	r1, r1, r7
	strh	r1, [r8, r2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
.L66:
	add	r4, r4, #60
	cmp	r4, r6
	bne	.L76
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L69:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #40]
	bgt	.L86
	mov	r0, #40
	mov	r3, #0
	str	r0, [r4, #40]
	ldr	r0, .L87+24
	b	.L73
.L72:
	add	r3, r3, #1
	cmp	r3, #15
	add	r0, r0, #52
	beq	.L86
.L73:
	ldr	ip, [r0, #8]
	cmp	ip, #0
	bne	.L72
	ldr	ip, [r4, #24]
	add	r0, r3, r3, lsl #1
	add	r3, r3, r0, lsl #2
	add	ip, ip, ip, lsr #31
	add	ip, r1, ip, asr #1
	add	lr, fp, r3, lsl #2
	ldr	r0, [r4]
	str	ip, [lr, #4]
	ldr	ip, [r4, #20]
	add	ip, r0, ip
	str	ip, [sp, #20]
	mov	ip, #1
	str	ip, [lr, #8]
	ldr	ip, [sp, #20]
	str	ip, [fp, r3, lsl #2]
	b	.L70
.L88:
	.align	2
.L87:
	.word	enemies
	.word	player
	.word	collision
	.word	shadowOAM
	.word	-32768
	.word	511
	.word	fire
	.word	12296
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updatePlayerProjectiles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerProjectiles, %function
updatePlayerProjectiles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L107
	ldr	r7, .L107+4
	ldr	r8, .L107+8
	sub	sp, sp, #20
	add	r6, r5, #780
	b	.L96
.L90:
	add	r5, r5, #52
	cmp	r5, r6
	beq	.L106
.L96:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L90
	ldr	r2, [r5, #12]
	ldr	r3, [r5]
	add	r3, r3, r2
	cmp	r3, #240
	str	r3, [r5]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	movgt	r2, #0
	mvn	r3, r3, lsr #17
	strgt	r2, [r5, #8]
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	ldr	ip, .L107+12
	ldr	r4, .L107+16
	add	r0, r7, r2, lsl #3
	orr	r1, r1, #16384
	lsl	r2, r2, #3
	mov	r10, #32
	mov	r9, #16
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r7, r2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	add	fp, r4, #420
	b	.L95
.L93:
	add	r4, r4, #60
	cmp	r4, fp
	beq	.L90
.L95:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L93
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	stmib	sp, {r2, r9, r10}
	str	r3, [sp]
	mov	r2, #32
	mov	r3, #16
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L93
	mov	r0, #0
	mov	r1, #512
	ldr	r3, [r4, #16]
	sub	r3, r3, #5
	cmp	r3, r0
	str	r3, [r4, #16]
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	ldrble	r3, [r4, #56]	@ zero_extendqisi2
	lsl	r2, r2, #3
	lslle	r3, r3, #3
	strh	r1, [r7, r2]	@ movhi
	str	r0, [r5, #8]
	strle	r0, [r4, #8]
	strhle	r1, [r7, r3]	@ movhi
	b	.L93
.L106:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L108:
	.align	2
.L107:
	.word	air
	.word	shadowOAM
	.word	collision
	.word	16398
	.word	enemies
	.size	updatePlayerProjectiles, .-updatePlayerProjectiles
	.align	2
	.global	updateEnemyProjectiles
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyProjectiles, %function
updateEnemyProjectiles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L126
	ldr	r5, .L126+4
	ldr	r6, .L126+8
	ldr	r9, .L126+12
	ldr	r8, .L126+16
	ldr	r10, .L126+20
	sub	sp, sp, #20
	add	r7, r4, #780
	b	.L118
.L112:
	sub	r3, r3, #1
	str	r3, [r4, #28]
	ldr	r1, [r4, #40]
.L113:
	ldr	r3, [r4]
	ldr	r0, [r4, #12]
	sub	r0, r3, r0
	sub	r3, r0, #32
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L126+24
	lsl	r1, r1, #6
	ldrb	lr, [r4, #48]	@ zero_extendqisi2
	add	r1, r1, #10
	ldr	ip, [r6]
	and	r2, r2, r1
	add	fp, r5, lr, lsl #3
	ldr	r1, [r4, #4]
	orr	r2, r2, #4096
	strh	r2, [fp, #4]	@ movhi
	sub	r2, ip, #16
	strh	r3, [fp, #2]	@ movhi
	bic	r2, r2, r2, asr #31
	and	r3, r1, #255
	cmp	r0, r2
	orr	r3, r3, #16384
	lsl	lr, lr, #3
	movlt	r2, #0
	strh	r3, [r5, lr]	@ movhi
	movlt	r3, #512
	strlt	r2, [r4, #8]
	strhlt	r3, [r5, lr]	@ movhi
	mov	r2, #32
	mov	r3, #64
	str	ip, [sp]
	ldr	ip, [r6, #4]
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	mov	r3, #16
	str	ip, [sp, #4]
	str	r0, [r4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L124
.L111:
	add	r4, r4, #52
	cmp	r4, r7
	beq	.L125
.L118:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bgt	.L112
	mov	r3, #10
	ldr	r1, [r4, #40]
	str	r3, [r4, #28]
	add	r0, r1, #1
	ldr	r1, [r4, #44]
	mov	lr, pc
	bx	r10
	str	r1, [r4, #40]
	b	.L113
.L124:
	ldm	r8, {r0, r1, r2, r3}
	ldr	ip, .L126+28
	mov	lr, pc
	bx	ip
	ldr	r3, [r6, #16]
	cmp	r3, #0
	movle	r3, #1
	mov	r2, #0
	mov	r1, #512
	subgt	r3, r3, #3
	strgt	r3, [r6, #16]
	strle	r3, [r6, #60]
	ldrb	r3, [r4, #48]	@ zero_extendqisi2
	str	r2, [r4, #8]
	add	r4, r4, #52
	lsl	r3, r3, #3
	cmp	r4, r7
	strh	r1, [r5, r3]	@ movhi
	bne	.L118
.L125:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	fire
	.word	shadowOAM
	.word	player
	.word	collision
	.word	appa
	.word	__aeabi_idivmod
	.word	1022
	.word	playSoundEffect
	.size	updateEnemyProjectiles, .-updateEnemyProjectiles
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Update Level 1 run: %d test %d test\012\000"
	.text
	.align	2
	.global	updatelevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatelevel1, %function
updatelevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	mov	r3, #67108864
	mov	r1, #4864
	push	{r4, lr}
	ldr	r0, .L134
	strh	r1, [r3]	@ movhi
	mov	r1, r2
	ldr	r3, .L134+4
	mov	lr, pc
	bx	r3
	bl	updatePlayer
	bl	updateEnemies
	bl	updatePlayerProjectiles
	bl	updateEnemyProjectiles
	mov	r3, #0
	mov	r4, #648
	mov	lr, r3
	ldr	r2, .L134+8
	ldr	r1, .L134+12
	ldr	r2, [r2, #16]
	smull	r0, r1, r2, r1
	ldr	ip, .L134+16
	asr	r2, r2, #31
	rsb	r1, r2, r1, asr #2
.L131:
	cmp	r1, r3
	add	r2, r3, #65
	lsl	r0, r2, #1
	add	r3, r3, #1
	lslle	r2, r2, #1
	strhgt	lr, [ip, r0]	@ movhi
	strhle	r4, [ip, r2]	@ movhi
	cmp	r3, #10
	bne	.L131
	pop	{r4, lr}
	bx	lr
.L135:
	.align	2
.L134:
	.word	.LC0
	.word	mgba_printf
	.word	player
	.word	1717986919
	.word	100689920
	.size	updatelevel1, .-updatelevel1
	.align	2
	.global	blast
	.syntax unified
	.arm
	.fpu softvfp
	.type	blast, %function
blast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, .L143
	mov	r3, #0
	mov	r2, lr
.L139:
	ldr	ip, [r2, #8]
	cmp	ip, #0
	beq	.L142
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #52
	bne	.L139
	ldr	lr, [sp], #4
	bx	lr
.L142:
	mov	ip, #1
	add	r2, r3, r3, lsl ip
	add	r3, r3, r2, lsl #2
	add	r2, lr, r3, lsl #2
	str	r0, [lr, r3, lsl #2]
	stmib	r2, {r1, ip}
	ldr	lr, [sp], #4
	bx	lr
.L144:
	.align	2
.L143:
	.word	air
	.size	blast, .-blast
	.align	2
	.global	aiBlast
	.syntax unified
	.arm
	.fpu softvfp
	.type	aiBlast, %function
aiBlast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, .L152
	mov	r3, #0
	mov	r2, lr
.L148:
	ldr	ip, [r2, #8]
	cmp	ip, #0
	beq	.L151
	add	r3, r3, #1
	cmp	r3, #15
	add	r2, r2, #52
	bne	.L148
	ldr	lr, [sp], #4
	bx	lr
.L151:
	mov	ip, #1
	add	r2, r3, r3, lsl ip
	add	r3, r3, r2, lsl #2
	add	r2, lr, r3, lsl #2
	str	r0, [lr, r3, lsl #2]
	stmib	r2, {r1, ip}
	ldr	lr, [sp], #4
	bx	lr
.L153:
	.align	2
.L152:
	.word	fire
	.size	aiBlast, .-aiBlast
	.align	2
	.global	hasLostL1
	.syntax unified
	.arm
	.fpu softvfp
	.type	hasLostL1, %function
hasLostL1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L155
	ldr	r0, [r3, #60]
	bx	lr
.L156:
	.align	2
.L155:
	.word	player
	.size	hasLostL1, .-hasLostL1
	.align	2
	.global	hasWonL1
	.syntax unified
	.arm
	.fpu softvfp
	.type	hasWonL1, %function
hasWonL1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L163
	ldr	r3, [r3]
	cmp	r3, #224
	bgt	.L160
	ldr	r3, .L163+4
	add	r1, r3, #420
.L159:
	ldr	r2, [r3, #8]
	cmp	r2, #0
	add	r3, r3, #60
	bne	.L161
	cmp	r3, r1
	bne	.L159
.L160:
	mov	r0, #1
	bx	lr
.L161:
	mov	r0, #0
	bx	lr
.L164:
	.align	2
.L163:
	.word	player
	.word	enemies
	.size	hasWonL1, .-hasWonL1
	.comm	fireDelay,4,4
	.comm	air,780,4
	.comm	fire,780,4
	.comm	enemies,420,4
	.comm	player,68,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
