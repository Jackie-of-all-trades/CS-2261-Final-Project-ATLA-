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
	.file	"mode0.c"
	.text
	.align	2
	.global	drawCharM0
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCharM0, %function
drawCharM0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, r1, lsl #5
	lsl	r3, r3, #11
	lsl	r0, r0, #1
	add	r3, r3, #100663296
	add	r2, r2, #648
	strh	r2, [r3, r0]	@ movhi
	bx	lr
	.size	drawCharM0, .-drawCharM0
	.align	2
	.global	drawStringM0
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStringM0, %function
drawStringM0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r2]	@ zero_extendqisi2
	cmp	ip, #0
	bxeq	lr
	add	r0, r0, r1, lsl #5
	lsl	r3, r3, #11
	add	r3, r3, r0, lsl #1
	add	r3, r3, #100663296
.L5:
	sub	ip, ip, #32
	and	ip, ip, #255
	add	ip, ip, #648
	strh	ip, [r3], #2	@ movhi
	ldrb	ip, [r2, #1]!	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L5
	bx	lr
	.size	drawStringM0, .-drawStringM0
	.ident	"GCC: (devkitARM release 53) 9.1.0"
