	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"game.c"
	.text
	.align	2
	.type	drawHeart1.part.4, %function
drawHeart1.part.4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L3
	ldr	r3, [r1, #24]
	ldr	r2, [r1, #4]
	ldr	r0, .L3+4
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	ip, .L3+8
	add	r1, r0, r3
	bic	r2, r2, #65024
	strh	lr, [r0, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	h1
	.word	shadowOAM
	.word	8336
	.size	drawHeart1.part.4, .-drawHeart1.part.4
	.align	2
	.type	drawHeart2.part.5, %function
drawHeart2.part.5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L7
	ldr	r3, [r1, #24]
	ldr	r2, [r1, #4]
	ldr	r0, .L7+4
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	ip, .L7+8
	add	r1, r0, r3
	bic	r2, r2, #65024
	strh	lr, [r0, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	h2
	.word	shadowOAM
	.word	8336
	.size	drawHeart2.part.5, .-drawHeart2.part.5
	.align	2
	.type	drawHeart3.part.6, %function
drawHeart3.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L11
	ldr	r3, [r1, #24]
	ldr	r2, [r1, #4]
	ldr	r0, .L11+4
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	ip, .L11+8
	add	r1, r0, r3
	bic	r2, r2, #65024
	strh	lr, [r0, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	h3
	.word	shadowOAM
	.word	8336
	.size	drawHeart3.part.6, .-drawHeart3.part.6
	.align	2
	.type	drawHeart4.part.7, %function
drawHeart4.part.7:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L15
	ldr	r3, [r1, #24]
	ldr	r2, [r1, #4]
	ldr	r0, .L15+4
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	ip, .L15+8
	add	r1, r0, r3
	bic	r2, r2, #65024
	strh	lr, [r0, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	h4
	.word	shadowOAM
	.word	8336
	.size	drawHeart4.part.7, .-drawHeart4.part.7
	.align	2
	.type	drawHeart5.part.8, %function
drawHeart5.part.8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L19
	ldr	r3, [r1, #24]
	ldr	r2, [r1, #4]
	ldr	r0, .L19+4
	str	lr, [sp, #-4]!
	mov	r3, r3, asl #3
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	ip, .L19+8
	add	r1, r0, r3
	bic	r2, r2, #65024
	strh	lr, [r0, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	h5
	.word	shadowOAM
	.word	8336
	.size	drawHeart5.part.8, .-drawHeart5.part.8
	.align	2
	.type	updateRock.part.11, %function
updateRock.part.11:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L32
	ldr	r3, .L34+4
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L32
	ldr	r3, .L34+8
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L32
	ldr	r3, .L34+12
	ldr	r2, [r3, #60]
	ldr	r3, .L34+16
	cmp	r2, #0
	streq	r2, [r3, #28]
	b	.L22
.L32:
	ldr	r3, .L34+16
.L22:
	ldr	r1, .L34+20
	ldr	r2, .L34+24
	ldr	ip, [r1]
	ldr	r0, [r2]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #4]
	str	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
	.word	winter1
	.word	winter2
	.word	honeys1
	.word	honeys2
	.word	rock
	.word	hOff
	.word	vOff
	.size	updateRock.part.11, .-updateRock.part.11
	.align	2
	.type	drawRock.part.12, %function
drawRock.part.12:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L38
	ldr	r3, [r1, #4]
	ldr	r2, [r1, #24]
	ldr	r0, .L38+4
	mov	r3, r3, asl #23
	str	lr, [sp, #-4]!
	mov	r2, r2, asl #3
	ldrb	lr, [r1]	@ zero_extendqisi2
	mov	r3, r3, lsr #23
	ldr	ip, .L38+8
	add	r1, r0, r2
	orr	r3, r3, #16384
	strh	lr, [r0, r2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	rock
	.word	shadowOAM
	.word	-27495
	.size	drawRock.part.12, .-drawRock.part.12
	.align	2
	.type	drawCin.part.13, %function
drawCin.part.13:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L97
	ldr	r3, [r2, #4]
	mov	r3, r3, asl #23
	mvn	r3, r3, lsr #6
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #36]
	ldr	r1, .L97+4
	ldrb	ip, [r2]	@ zero_extendqisi2
	cmp	r0, #0
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	bne	.L41
	ldr	r3, .L97+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L42
	ldr	r0, .L97+12
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L42
.L43:
	mov	r3, #5504
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L42:
	tst	r3, #2
	beq	.L44
	ldr	r3, .L97+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L43
.L44:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L41:
	cmp	r0, #1
	bne	.L46
	ldr	r3, .L97+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L47
	ldr	r0, .L97+12
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L47
.L48:
	ldr	r3, .L97+16
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L47:
	tst	r3, #2
	beq	.L49
	ldr	r3, .L97+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L48
.L49:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	add	r3, r3, #4
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L46:
	cmp	r0, #2
	bne	.L51
	ldr	r3, .L97+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L52
	ldr	r0, .L97+12
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L52
.L53:
	ldr	r3, .L97+20
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L52:
	tst	r3, #2
	beq	.L54
	ldr	r3, .L97+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L53
.L54:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	add	r3, r3, #8
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L51:
	cmp	r0, #3
	bne	.L96
	ldr	r3, .L97+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L55
	ldr	r0, .L97+12
	ldrh	r0, [r0]
	tst	r0, #1
	beq	.L56
.L55:
	tst	r3, #2
	beq	.L57
	ldr	r3, .L97+12
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L56
.L57:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	add	r3, r3, #12
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L96:
	bx	lr
.L56:
	ldr	r3, .L97+24
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L98:
	.align	2
.L97:
	.word	cin
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	5508
	.word	5512
	.word	5516
	.size	drawCin.part.13, .-drawCin.part.13
	.align	2
	.type	releaseUFireball.part.14, %function
releaseUFireball.part.14:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L108
	ldr	r3, [r2, #36]
	cmp	r3, #1
	stmfd	sp!, {r4, r5, lr}
	beq	.L107
	cmp	r3, #0
	bne	.L102
	ldr	r3, .L108+4
	ldr	r0, [r2, #24]
	ldr	r1, [r3, #24]
	cmp	r0, #0
	add	ip, r0, #3
	movge	ip, r0
	cmp	r1, #0
	add	r0, r1, #3
	movge	r0, r1
	mov	r4, #5
	ldr	r1, [r2, #4]
	ldr	lr, [r2]
	ldr	r5, [r3, #28]
	add	r2, r1, ip, asr #2
	add	r2, r2, r0, asr #2
	add	r1, lr, r5
	stmia	r3, {r1, r2}
	str	r4, [r3, #44]
.L101:
	mov	r2, #1
	ldmfd	sp!, {r4, r5, lr}
	str	r2, [r3, #32]
	bx	lr
.L107:
	ldr	r3, .L108+4
	ldr	r0, [r2, #24]
	ldr	r1, [r3, #24]
	cmp	r0, #0
	add	ip, r0, #3
	movge	ip, r0
	cmp	r1, #0
	add	r0, r1, #3
	movge	r0, r1
	ldr	r1, [r2, #4]
	ldr	r4, [r2]
	add	r2, r1, ip, asr #2
	add	r2, r2, r0, asr #2
	mov	r5, #6
	str	r2, [r3, #4]
	mov	r2, #1
	ldr	lr, [r3, #28]
	add	lr, lr, lr, lsr #31
	add	lr, r4, lr, asr #1
	str	r5, [r3, #44]
	str	lr, [r3]
	str	r2, [r3, #32]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L102:
	cmp	r3, #3
	bne	.L103
	ldr	r3, .L108+4
	ldr	r1, [r3, #24]
	ldr	ip, [r2]
	add	r1, r1, r1, lsr #31
	ldr	r0, [r2, #4]
	mov	r2, r1, asr #1
	add	r1, ip, r2
	rsb	r2, r2, r0
	mov	lr, #8
	stmia	r3, {r1, r2}
	mov	r2, #1
	str	lr, [r3, #44]
	str	r2, [r3, #32]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L103:
	cmp	r3, #2
	ldrne	r3, .L108+4
	bne	.L101
	ldr	r3, .L108+4
	ldr	ip, [r2, #24]
	ldr	r1, [r3, #24]
	ldr	r0, [r2, #4]
	ldr	lr, [r2]
	add	r1, r1, r1, lsr #31
	add	ip, ip, ip, lsr #31
	mov	r2, r1, asr #1
	add	r1, r0, ip, asr #1
	add	r0, lr, r2
	add	r2, r1, r2
	mov	r4, #7
	stmia	r3, {r0, r2}
	mov	r2, #1
	str	r4, [r3, #44]
	str	r2, [r3, #32]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	cin
	.word	ultimate
	.size	releaseUFireball.part.14, .-releaseUFireball.part.14
	.align	2
	.type	drawUFireball.part.15, %function
drawUFireball.part.15:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L128
	ldr	r3, [r2, #4]
	ldr	r1, [r2, #40]
	ldr	r0, [r2, #44]
	ldr	ip, .L128+4
	mov	r3, r3, asl #23
	stmfd	sp!, {r4, lr}
	mov	r1, r1, asl #3
	ldrb	r4, [r2]	@ zero_extendqisi2
	mov	r3, r3, lsr #23
	orr	r3, r3, #16384
	add	lr, ip, r1
	cmp	r0, #5
	strh	r4, [ip, r1]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	beq	.L123
	cmp	r0, #6
	beq	.L124
	cmp	r0, #7
	bne	.L117
	ldr	r3, [r2, #36]
	ldr	r1, .L128+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	beq	.L125
	ldr	r1, .L128+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L128+16
	streqh	r1, [lr, #4]	@ movhi
	b	.L120
.L124:
	ldr	r3, [r2, #36]
	ldr	r1, .L128+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	beq	.L126
	ldr	r1, .L128+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L128+20
	streqh	r1, [lr, #4]	@ movhi
	b	.L120
.L123:
	ldr	r3, [r2, #36]
	ldr	r1, .L128+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	beq	.L127
	ldr	r1, .L128+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L128+24
	streqh	r1, [lr, #4]	@ movhi
.L120:
	add	r3, r3, #1
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L127:
	ldr	r1, .L128+28
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L126:
	ldr	r1, .L128+32
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L125:
	ldr	r1, .L128+36
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L117:
	cmp	r0, #8
	ldr	r3, [r2, #36]
	bne	.L120
	ldr	r1, .L128+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	bne	.L121
	ldr	r1, .L128+40
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L121:
	ldr	r1, .L128+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L128+44
	add	r3, r3, #1
	streqh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L129:
	.align	2
.L128:
	.word	ultimate
	.word	shadowOAM
	.word	1717986919
	.word	-1840700269
	.word	9300
	.word	9298
	.word	9296
	.word	9232
	.word	9234
	.word	9236
	.word	9238
	.word	9302
	.size	drawUFireball.part.15, .-drawUFireball.part.15
	.align	2
	.type	drawFireball.part.16, %function
drawFireball.part.16:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #40]
	ldr	r1, [r0, #44]
	ldr	ip, .L148
	mov	r3, r3, asl #23
	stmfd	sp!, {r4, lr}
	mov	r2, r2, asl #3
	ldrb	r4, [r0]	@ zero_extendqisi2
	mov	r3, r3, lsr #23
	orr	r3, r3, #16384
	add	lr, ip, r2
	cmp	r1, #5
	strh	r4, [ip, r2]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	beq	.L143
	cmp	r1, #6
	beq	.L144
	cmp	r1, #7
	bne	.L137
	ldr	r3, [r0, #36]
	ldr	r2, .L148+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L145
	ldr	r2, .L148+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L148+12
	streqh	r2, [lr, #4]	@ movhi
	b	.L140
.L144:
	ldr	r3, [r0, #36]
	ldr	r2, .L148+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L146
	ldr	r2, .L148+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L148+16
	streqh	r2, [lr, #4]	@ movhi
	b	.L140
.L143:
	ldr	r3, [r0, #36]
	ldr	r2, .L148+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L147
	ldr	r2, .L148+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L148+20
	streqh	r2, [lr, #4]	@ movhi
.L140:
	add	r3, r3, #1
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L147:
	ldr	r2, .L148+24
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L146:
	ldr	r2, .L148+28
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L145:
	ldr	r2, .L148+32
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L137:
	cmp	r1, #8
	ldr	r3, [r0, #36]
	bne	.L140
	ldr	r2, .L148+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	bne	.L141
	ldr	r2, .L148+36
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L141:
	ldr	r2, .L148+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L148+40
	add	r3, r3, #1
	streqh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L149:
	.align	2
.L148:
	.word	shadowOAM
	.word	1717986919
	.word	-1840700269
	.word	9308
	.word	9306
	.word	9304
	.word	9240
	.word	9242
	.word	9244
	.word	9246
	.word	9310
	.size	drawFireball.part.16, .-drawFireball.part.16
	.align	2
	.type	drawWinter1.part.17, %function
drawWinter1.part.17:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L165
	ldr	r3, [r2, #4]
	ldrb	r1, [r2]	@ zero_extendqisi2
	mov	r3, r3, asl #23
	mvn	r3, r3, lsr #6
	mvn	r1, r1, asl #17
	mvn	r3, r3, lsr #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #52]
	stmfd	sp!, {r4, lr}
	ldr	ip, [r2, #36]
	ldr	r4, .L165+4
	mov	r0, r0, asl #3
	add	lr, r4, r0
	cmp	ip, #9
	strh	r1, [r4, r0]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	beq	.L163
	cmp	ip, #10
	beq	.L164
	cmp	ip, #11
	bne	.L157
	ldr	r2, [r2, #64]
	ldr	r3, .L165+8
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	ldrne	r3, .L165+12
	ldrne	r3, [r3, #44]
	movne	r3, r3, asl #7
	addne	r3, r3, #516
	ldreq	r3, .L165+16
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
.L150:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L164:
	ldr	r2, [r2, #64]
	ldr	r3, .L165+8
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	ldrne	r3, .L165+12
	ldrne	r3, [r3, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #2
	ldreq	r3, .L165+20
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L163:
	ldr	r2, [r2, #64]
	ldr	r3, .L165+8
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	ldrne	r3, .L165+12
	ldrne	r3, [r3, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	ldreq	r3, .L165+24
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L157:
	cmp	ip, #12
	bne	.L150
	ldr	r2, [r2, #64]
	ldr	r3, .L165+8
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	ldrne	r3, .L165+12
	ldrne	r3, [r3, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #6
	ldreq	r3, .L165+28
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L166:
	.align	2
.L165:
	.word	winter1
	.word	shadowOAM
	.word	156180629
	.word	winter2
	.word	26500
	.word	26498
	.word	26496
	.word	26502
	.size	drawWinter1.part.17, .-drawWinter1.part.17
	.align	2
	.type	drawWinter2.part.19, %function
drawWinter2.part.19:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L182
	ldr	r3, [r2, #4]
	ldrb	r1, [r2]	@ zero_extendqisi2
	mov	r3, r3, asl #23
	mvn	r3, r3, lsr #6
	mvn	r1, r1, asl #17
	mvn	r3, r3, lsr #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #52]
	stmfd	sp!, {r4, lr}
	ldr	ip, [r2, #36]
	ldr	r4, .L182+4
	mov	r0, r0, asl #3
	add	lr, r4, r0
	cmp	ip, #9
	strh	r1, [r4, r0]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	beq	.L180
	cmp	ip, #10
	beq	.L181
	cmp	ip, #11
	bne	.L174
	ldr	r1, [r2, #64]
	ldr	r3, .L182+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	movne	r3, r3, asl #7
	addne	r3, r3, #516
	ldreq	r3, .L182+12
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
.L167:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L181:
	ldr	r1, [r2, #64]
	ldr	r3, .L182+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #2
	ldreq	r3, .L182+16
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L180:
	ldr	r1, [r2, #64]
	ldr	r3, .L182+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	ldreq	r3, .L182+20
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L174:
	cmp	ip, #12
	bne	.L167
	ldr	r1, [r2, #64]
	ldr	r3, .L182+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #6
	ldreq	r3, .L182+24
	orrne	r3, r3, #25600
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L183:
	.align	2
.L182:
	.word	winter2
	.word	shadowOAM
	.word	156180629
	.word	26500
	.word	26498
	.word	26496
	.word	26502
	.size	drawWinter2.part.19, .-drawWinter2.part.19
	.align	2
	.type	drawWinterball2.part.22, %function
drawWinterball2.part.22:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #36]
	ldr	r2, [r0, #4]
	ldr	r1, [r0, #44]
	ldr	ip, .L202
	stmfd	sp!, {r4, lr}
	mov	r3, r3, asl #3
	ldrb	r4, [r0]	@ zero_extendqisi2
	add	lr, ip, r3
	bic	r2, r2, #65024
	cmp	r1, #5
	strh	r4, [ip, r3]	@ movhi
	strh	r2, [lr, #2]	@ movhi
	beq	.L197
	cmp	r1, #6
	beq	.L198
	cmp	r1, #7
	bne	.L191
	ldr	r3, [r0, #40]
	ldr	r2, .L202+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L199
	ldr	r2, .L202+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L202+12
	streqh	r2, [lr, #4]	@ movhi
	b	.L194
.L198:
	ldr	r3, [r0, #40]
	ldr	r2, .L202+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L200
	ldr	r2, .L202+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L202+16
	streqh	r2, [lr, #4]	@ movhi
	b	.L194
.L197:
	ldr	r3, [r0, #40]
	ldr	r2, .L202+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L201
	ldr	r2, .L202+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L202+20
	streqh	r2, [lr, #4]	@ movhi
.L194:
	add	r3, r3, #1
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L201:
	ldr	r2, .L202+24
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L200:
	ldr	r2, .L202+28
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L199:
	ldr	r2, .L202+32
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L191:
	cmp	r1, #8
	ldr	r3, [r0, #40]
	bne	.L194
	ldr	r2, .L202+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	bne	.L195
	ldr	r2, .L202+36
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L195:
	ldr	r2, .L202+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L202+40
	add	r3, r3, #1
	streqh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L203:
	.align	2
.L202:
	.word	shadowOAM
	.word	1717986919
	.word	-1840700269
	.word	17587
	.word	17586
	.word	17585
	.word	17553
	.word	17554
	.word	17555
	.word	17556
	.word	17588
	.size	drawWinterball2.part.22, .-drawWinterball2.part.22
	.set	drawWinterball.part.21,drawWinterball2.part.22
	.align	2
	.type	drawHoneys1.part.23, %function
drawHoneys1.part.23:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L219
	ldr	r3, [r2, #4]
	ldrb	r1, [r2]	@ zero_extendqisi2
	mov	r3, r3, asl #23
	mvn	r3, r3, lsr #6
	mvn	r1, r1, asl #17
	mvn	r3, r3, lsr #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #56]
	stmfd	sp!, {r4, lr}
	ldr	ip, [r2, #36]
	ldr	r4, .L219+4
	mov	r0, r0, asl #3
	add	lr, r4, r0
	cmp	ip, #14
	strh	r1, [r4, r0]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	beq	.L217
	cmp	ip, #15
	beq	.L218
	cmp	ip, #16
	bne	.L211
	ldr	r1, [r2, #64]
	ldr	r3, .L219+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	movne	r3, r3, asl #7
	addne	r3, r3, #524
	ldreq	r3, .L219+12
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
.L204:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L218:
	ldr	r1, [r2, #64]
	ldr	r3, .L219+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #10
	ldreq	r3, .L219+16
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L217:
	ldr	r1, [r2, #64]
	ldr	r3, .L219+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	movne	r3, r3, asl #7
	addne	r3, r3, #520
	ldreq	r3, .L219+20
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L211:
	cmp	ip, #17
	bne	.L204
	ldr	r1, [r2, #64]
	ldr	r3, .L219+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #14
	ldreq	r3, .L219+24
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L220:
	.align	2
.L219:
	.word	honeys1
	.word	shadowOAM
	.word	156180629
	.word	22412
	.word	22410
	.word	22408
	.word	22414
	.size	drawHoneys1.part.23, .-drawHoneys1.part.23
	.align	2
	.type	drawHoneys2.part.25, %function
drawHoneys2.part.25:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L236
	ldr	r3, [r2, #4]
	ldrb	r1, [r2]	@ zero_extendqisi2
	mov	r3, r3, asl #23
	mvn	r3, r3, lsr #6
	mvn	r1, r1, asl #17
	mvn	r3, r3, lsr #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r2, #56]
	stmfd	sp!, {r4, lr}
	ldr	ip, [r2, #36]
	ldr	r4, .L236+4
	mov	r0, r0, asl #3
	add	lr, r4, r0
	cmp	ip, #14
	strh	r1, [r4, r0]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	beq	.L234
	cmp	ip, #15
	beq	.L235
	cmp	ip, #16
	bne	.L228
	ldr	r1, [r2, #64]
	ldr	r3, .L236+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	movne	r3, r3, asl #7
	addne	r3, r3, #524
	ldreq	r3, .L236+12
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
.L221:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L235:
	ldr	r1, [r2, #64]
	ldr	r3, .L236+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #10
	ldreq	r3, .L236+16
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L234:
	ldr	r1, [r2, #64]
	ldr	r3, .L236+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	movne	r3, r3, asl #7
	addne	r3, r3, #520
	ldreq	r3, .L236+20
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L228:
	cmp	ip, #17
	bne	.L221
	ldr	r1, [r2, #64]
	ldr	r3, .L236+8
	smull	ip, r0, r3, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	rsb	r0, r3, r3, lsl #3
	rsb	r3, r3, r0, lsl #3
	cmp	r1, r3
	ldrne	r3, [r2, #44]
	addne	r3, r3, #4
	movne	r3, r3, asl #7
	addne	r3, r3, #14
	ldreq	r3, .L236+24
	orrne	r3, r3, #21504
	strh	r3, [lr, #4]	@ movhi
	ldmfd	sp!, {r4, lr}
	bx	lr
.L237:
	.align	2
.L236:
	.word	honeys2
	.word	shadowOAM
	.word	156180629
	.word	22412
	.word	22410
	.word	22408
	.word	22414
	.size	drawHoneys2.part.25, .-drawHoneys2.part.25
	.align	2
	.type	drawHoneysball2.part.28, %function
drawHoneysball2.part.28:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #36]
	ldr	r2, [r0, #4]
	ldr	r1, [r0, #44]
	ldr	ip, .L256
	stmfd	sp!, {r4, lr}
	mov	r3, r3, asl #3
	ldrb	r4, [r0]	@ zero_extendqisi2
	add	lr, ip, r3
	bic	r2, r2, #65024
	cmp	r1, #5
	strh	r4, [ip, r3]	@ movhi
	strh	r2, [lr, #2]	@ movhi
	beq	.L251
	cmp	r1, #6
	beq	.L252
	cmp	r1, #7
	bne	.L245
	ldr	r3, [r0, #40]
	ldr	r2, .L256+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L253
	ldr	r2, .L256+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L256+12
	streqh	r2, [lr, #4]	@ movhi
	b	.L248
.L252:
	ldr	r3, [r0, #40]
	ldr	r2, .L256+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L254
	ldr	r2, .L256+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L256+16
	streqh	r2, [lr, #4]	@ movhi
	b	.L248
.L251:
	ldr	r3, [r0, #40]
	ldr	r2, .L256+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L255
	ldr	r2, .L256+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L256+20
	streqh	r2, [lr, #4]	@ movhi
.L248:
	add	r3, r3, #1
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L255:
	ldr	r2, .L256+24
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L254:
	ldr	r2, .L256+28
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L253:
	ldr	r2, .L256+32
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L245:
	cmp	r1, #8
	ldr	r3, [r0, #40]
	bne	.L248
	ldr	r2, .L256+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	bne	.L249
	ldr	r2, .L256+36
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L249:
	ldr	r2, .L256+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L256+40
	add	r3, r3, #1
	streqh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #40]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L257:
	.align	2
.L256:
	.word	shadowOAM
	.word	1717986919
	.word	-1840700269
	.word	13495
	.word	13494
	.word	13493
	.word	13461
	.word	13462
	.word	13463
	.word	13464
	.word	13496
	.size	drawHoneysball2.part.28, .-drawHoneysball2.part.28
	.set	drawHoneysball.part.27,drawHoneysball2.part.28
	.align	2
	.global	initHearts
	.type	initHearts, %function
initHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #8
	mov	r1, #3
	mov	ip, #1
	mov	r10, #60
	mov	r9, #13
	mov	r8, #61
	mov	r7, #23
	mov	r0, #62
	mov	r6, #33
	mov	r5, #63
	mov	r4, #43
	mov	lr, #64
	ldr	r2, .L260
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r10, [r2, #24]
	str	r1, [r2, #4]
	str	r1, [r2]
	str	ip, [r2, #28]
	ldr	r2, .L260+4
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r1, [r2]
	str	ip, [r2, #28]
	str	r9, [r2, #4]
	str	r8, [r2, #24]
	ldr	r2, .L260+8
	str	r0, [r2, #24]
	str	r3, [r2, #16]
	ldr	r0, .L260+12
	str	r3, [r2, #20]
	str	r1, [r2]
	str	ip, [r2, #28]
	str	r7, [r2, #4]
	ldr	r2, .L260+16
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	str	r1, [r0]
	str	ip, [r0, #28]
	str	r6, [r0, #4]
	str	r5, [r0, #24]
	str	r1, [r2]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	ip, [r2, #28]
	str	r4, [r2, #4]
	str	lr, [r2, #24]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L261:
	.align	2
.L260:
	.word	h1
	.word	h2
	.word	h3
	.word	h4
	.word	h5
	.size	initHearts, .-initHearts
	.align	2
	.global	initGame
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #1
	mov	fp, #18
	mov	r9, #24
	mov	r8, #228
	mov	r5, #120
	mov	r4, #3
	mov	r0, r1
	mov	r3, #2
	mov	r7, #14
	mov	r6, #10
	mvn	lr, #13
	ldr	r10, .L274
	mov	ip, r2
	str	r2, [r10, #16]
	str	r2, [r10, #20]
	str	r2, [r10, #36]
	str	fp, [r10, #24]
	str	r9, [r10, #28]
	str	r8, [r10, #8]
	str	r5, [r10, #12]
	str	r4, [r10, #48]
	str	r1, [r10, #32]
	str	r1, [r10, #44]
	ldr	r2, .L274+4
	sub	sp, sp, #12
.L263:
	str	r3, [r2, #40]
	add	r3, r3, #1
	cmp	r3, #12
	str	r7, [r2, #28]
	str	r6, [r2, #24]
	str	lr, [r2]
	str	r0, [r2, #4]
	str	ip, [r2, #20]
	str	ip, [r2, #16]
	str	r0, [r2, #32]
	mov	r5, #14
	add	r2, r2, #48
	mov	r4, #0
	mov	r1, #1
	bne	.L263
	mov	r2, #16
	ldr	r7, .L274+8
	str	r2, [r7, #28]
	str	r2, [r7, #24]
	mvn	r2, #15
	str	r1, [r7, #20]
	str	r1, [r7, #16]
	str	r4, [r7, #32]
	str	r2, [r7]
	str	r4, [r7, #4]
	str	r1, [r7, #40]
	ldr	r7, .L274+12
	str	r3, [r7, #52]
	mov	r3, #170
	str	r3, [r7, #8]
	mov	r3, #215
	mov	r2, #22
	str	r3, [r7, #12]
	ldr	r3, .L274+16
	str	r2, [r7, #24]
	str	r2, [r3, #24]
	mov	r2, #100
	str	r2, [r3, #8]
	mov	r2, #140
	str	r2, [r3, #12]
	mov	r2, #9
	mov	fp, #15
	mov	r9, #3
	mov	r8, #200
	str	r2, [r7, #36]
	str	r2, [r3, #36]
	mov	r2, #13
	str	fp, [r7, #28]
	str	r1, [r7, #20]
	str	r1, [r7, #16]
	str	r1, [r7, #56]
	str	r4, [r7, #32]
	str	r4, [r7, #44]
	str	fp, [r3, #28]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #56]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r9, [r7, #48]
	str	r9, [r3, #48]
	str	r5, [sp, #4]
	str	r8, [r7, #60]
	str	r2, [r3, #52]
	str	r8, [r3, #60]
	mov	r3, #105
	mov	r2, #20
	ldr	r7, .L274+20
	str	r3, [r7, #12]
	mov	r3, #24
	str	r2, [r7, #24]
	mov	r2, #80
	str	r3, [r7, #56]
	ldr	r3, .L274+24
	str	r2, [r3, #8]
	mov	r2, #25
	str	r2, [r3, #56]
	mov	r2, #20
	str	r2, [r3, #24]
	mov	r2, #50
	mov	lr, r4
	str	r2, [r3, #12]
	str	r2, [r7, #8]
	mov	ip, r1
	mov	r0, #8
	mvn	r6, #7
	mov	r2, r5
	str	fp, [r3, #28]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #60]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r9, [r3, #48]
	str	r5, [r3, #36]
	str	r8, [r3, #52]
	str	fp, [r7, #28]
	str	r1, [r7, #20]
	str	r1, [r7, #16]
	str	r1, [r7, #60]
	str	r4, [r7, #32]
	str	r4, [r7, #44]
	str	r9, [r7, #48]
	str	r5, [r7, #36]
	str	r8, [r7, #52]
	ldr	r3, .L274+28
.L264:
	str	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #24
	str	r0, [r3, #28]
	str	r0, [r3, #24]
	str	r6, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #20]
	str	ip, [r3, #16]
	str	lr, [r3, #32]
	add	r3, r3, #48
	bne	.L264
	mov	r2, #26
	mov	ip, #8
	mvn	lr, #7
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L274+32
.L265:
	str	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #36
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	lr, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L265
	mov	ip, #8
	mvn	lr, #7
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L274+36
.L266:
	str	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #46
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	lr, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L266
	mov	lr, #8
	mvn	r6, #7
	mov	ip, #0
	mov	r0, #1
	ldr	r1, .L274+40
.L267:
	str	r2, [r1, #36]
	add	r2, r2, #1
	cmp	r2, #56
	str	lr, [r1, #28]
	str	lr, [r1, #24]
	str	r6, [r1, #8]
	str	ip, [r1, #12]
	str	r0, [r1, #20]
	str	r0, [r1, #16]
	str	ip, [r1, #32]
	mov	r5, #8
	add	r1, r1, #48
	mov	r4, #0
	mov	r3, #1
	bne	.L267
	mov	fp, #64
	ldr	r2, .L274+44
	mov	r0, #25
	str	fp, [r2, #16]
	mov	r1, #98
	mov	r9, #65
	mov	fp, #85
	mov	r8, #28
	mov	r7, #149
	mov	r6, #66
	str	r0, [r2, #20]
	str	r4, [r2, #28]
	str	fp, [r2, #12]
	str	r9, [r2, #24]
	str	r1, [r2, #8]
	ldr	r2, .L274+48
	str	r0, [r2, #20]
	str	r1, [r2, #8]
	str	r4, [r2, #28]
	str	r8, [r2, #16]
	str	r7, [r2, #12]
	str	r6, [r2, #24]
	ldr	r2, .L274+52
	str	r3, [r2, #28]
	mov	r3, #128
	mov	lr, #12
	mov	ip, #67
	mov	r1, #6
	str	r3, [r2, #12]
	mov	r3, #14
	str	r1, [r2, #8]
	str	r3, [r2, #16]
	str	lr, [r2, #20]
	str	ip, [r2, #24]
	bl	initHearts
	mov	r2, #5
	mov	lr, #96
	ldr	r3, .L274+56
	ldr	ip, .L274+60
	str	r2, [r3]
	ldr	r0, .L274+64
	ldr	r1, .L274+68
	ldr	r2, .L274+72
	ldr	r3, .L274+76
	str	r4, [r10, #60]
	str	lr, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r5, [r2]
	str	r4, [r3]
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L275:
	.align	2
.L274:
	.word	cin
	.word	fireballs
	.word	ultimate
	.word	winter1
	.word	winter2
	.word	honeys1
	.word	honeys2
	.word	winterballs
	.word	honeysballs
	.word	winterballs2
	.word	honeysballs2
	.word	uSprite
	.word	uSprite2
	.word	rock
	.word	cinLives
	.word	vOff
	.word	frames
	.word	bossStage
	.word	hOff
	.word	useUF
	.size	initGame, .-initGame
	.align	2
	.global	updateHeart2
	.type	updateHeart2, %function
updateHeart2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L279
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L277
	ldr	r2, .L279+4
	ldr	r2, [r2]
	cmp	r2, #1
	movle	r2, #0
	strle	r2, [r3, #28]
	bx	lr
.L277:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L279+8
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L280:
	.align	2
.L279:
	.word	h2
	.word	cinLives
	.word	shadowOAM
	.size	updateHeart2, .-updateHeart2
	.align	2
	.global	updateHeart3
	.type	updateHeart3, %function
updateHeart3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L284
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L282
	ldr	r2, .L284+4
	ldr	r2, [r2]
	cmp	r2, #2
	movle	r2, #0
	strle	r2, [r3, #28]
	bx	lr
.L282:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L284+8
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L285:
	.align	2
.L284:
	.word	h3
	.word	cinLives
	.word	shadowOAM
	.size	updateHeart3, .-updateHeart3
	.align	2
	.global	updateHeart4
	.type	updateHeart4, %function
updateHeart4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L289
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L287
	ldr	r2, .L289+4
	ldr	r2, [r2]
	cmp	r2, #3
	movle	r2, #0
	strle	r2, [r3, #28]
	bx	lr
.L287:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L289+8
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L290:
	.align	2
.L289:
	.word	h4
	.word	cinLives
	.word	shadowOAM
	.size	updateHeart4, .-updateHeart4
	.align	2
	.global	updateHeart5
	.type	updateHeart5, %function
updateHeart5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L294
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L292
	ldr	r2, .L294+4
	ldr	r2, [r2]
	cmp	r2, #4
	movle	r2, #0
	strle	r2, [r3, #28]
	bx	lr
.L292:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L294+8
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L295:
	.align	2
.L294:
	.word	h5
	.word	cinLives
	.word	shadowOAM
	.size	updateHeart5, .-updateHeart5
	.align	2
	.global	drawHeart1
	.type	drawHeart1, %function
drawHeart1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L299
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L298
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L299+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L298:
	b	drawHeart1.part.4
.L300:
	.align	2
.L299:
	.word	h1
	.word	shadowOAM
	.size	drawHeart1, .-drawHeart1
	.align	2
	.global	drawHeart2
	.type	drawHeart2, %function
drawHeart2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L304
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L303
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L304+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L303:
	b	drawHeart2.part.5
.L305:
	.align	2
.L304:
	.word	h2
	.word	shadowOAM
	.size	drawHeart2, .-drawHeart2
	.align	2
	.global	drawHeart3
	.type	drawHeart3, %function
drawHeart3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L309
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L308
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L309+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L308:
	b	drawHeart3.part.6
.L310:
	.align	2
.L309:
	.word	h3
	.word	shadowOAM
	.size	drawHeart3, .-drawHeart3
	.align	2
	.global	drawHeart4
	.type	drawHeart4, %function
drawHeart4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L314
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L313
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L314+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L313:
	b	drawHeart4.part.7
.L315:
	.align	2
.L314:
	.word	h4
	.word	shadowOAM
	.size	drawHeart4, .-drawHeart4
	.align	2
	.global	drawHeart5
	.type	drawHeart5, %function
drawHeart5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L319
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L318
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L319+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L318:
	b	drawHeart5.part.8
.L320:
	.align	2
.L319:
	.word	h5
	.word	shadowOAM
	.size	drawHeart5, .-drawHeart5
	.align	2
	.global	initReadyU
	.type	initReadyU, %function
initReadyU:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	ip, #25
	mov	r8, #64
	mov	r7, #85
	mov	r6, #65
	mov	r5, #28
	mov	r4, #149
	mov	lr, #66
	mov	r0, #0
	ldr	r3, .L323
	ldr	r1, [r3, #8]
	ldr	r2, .L323+4
	ldr	r3, .L323+8
	sub	r1, r1, #130
	str	r8, [r2, #16]
	str	r7, [r2, #12]
	str	r6, [r2, #24]
	str	r5, [r3, #16]
	str	r4, [r3, #12]
	str	lr, [r3, #24]
	str	r1, [r2, #8]
	str	r1, [r3, #8]
	str	ip, [r2, #20]
	str	ip, [r3, #20]
	str	r0, [r2, #28]
	str	r0, [r3, #28]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L324:
	.align	2
.L323:
	.word	cin
	.word	uSprite
	.word	uSprite2
	.size	initReadyU, .-initReadyU
	.align	2
	.global	launchReadyU
	.type	launchReadyU, %function
launchReadyU:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L327
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bxne	lr
	ldr	r2, .L327+4
	ldr	r1, [r2, #28]
	cmp	r1, #0
	moveq	r1, #1
	ldreq	r0, .L327+8
	streq	r1, [r3, #28]
	streq	r1, [r2, #28]
	streq	r1, [r0]
	bx	lr
.L328:
	.align	2
.L327:
	.word	uSprite
	.word	uSprite2
	.word	useUF
	.size	launchReadyU, .-launchReadyU
	.align	2
	.global	updateReadyU
	.type	updateReadyU, %function
updateReadyU:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L339
	ldr	r3, [r1, #60]
	cmp	r3, #500
	stmfd	sp!, {r4, r5, r6, lr}
	blt	.L330
	ldr	r2, .L339+4
	ldr	r0, [r2, #28]
	cmp	r0, #0
	ldr	r0, .L339+8
	bne	.L331
	ldr	ip, [r0, #28]
	cmp	ip, #0
	moveq	ip, #1
	ldreq	lr, .L339+12
	streq	ip, [r2, #28]
	streq	ip, [r0, #28]
	streq	ip, [lr]
.L331:
	ldr	lr, .L339+16
	ldr	r4, .L339+20
	ldr	ip, .L339+24
	ldr	r6, [lr]
	ldr	r4, [r4]
	ldrh	ip, [ip]
	ldr	lr, [r0, #12]
	ldr	r5, [r2, #12]
	tst	ip, #2
	rsb	r5, r4, r5
	ldr	ip, [r0, #8]
	rsb	r4, r4, lr
	ldr	lr, [r2, #8]
	rsb	ip, r6, ip
	rsb	lr, r6, lr
	str	r5, [r2, #4]
	str	r4, [r0, #4]
	str	lr, [r2]
	str	ip, [r0]
	beq	.L338
	ldr	r2, .L339+28
	ldrh	r2, [r2]
	tst	r2, #2
	moveq	r3, #1
	beq	.L333
.L338:
	add	r3, r3, #1
	str	r3, [r1, #60]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L330:
	mov	lr, #512
	mov	r5, #0
	ldr	r6, .L339+4
	ldr	r4, .L339+8
	ldr	r0, [r6, #24]
	ldr	r2, [r4, #24]
	ldr	ip, .L339+32
	mov	r0, r0, asl #3
	mov	r2, r2, asl #3
	strh	lr, [ip, r0]	@ movhi
	str	r5, [r6, #28]
	str	r5, [r4, #28]
	strh	lr, [ip, r2]	@ movhi
	add	r3, r3, #1
.L333:
	str	r3, [r1, #60]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L340:
	.align	2
.L339:
	.word	cin
	.word	uSprite
	.word	uSprite2
	.word	useUF
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	shadowOAM
	.size	updateReadyU, .-updateReadyU
	.align	2
	.global	drawReadyU
	.type	drawReadyU, %function
drawReadyU:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L352
	ldr	r2, [r3, #28]
	cmp	r2, #0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r2, .L352+4
	beq	.L342
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L351
.L342:
	mov	r4, #512
	mov	ip, #0
	ldr	r0, [r3, #24]
	ldr	r1, [r2, #24]
	ldr	lr, .L352+8
	mov	r0, r0, asl #3
	mov	r1, r1, asl #3
	strh	r4, [lr, r0]	@ movhi
	str	ip, [r3, #28]
	strh	r4, [lr, r1]	@ movhi
	str	ip, [r2, #28]
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L351:
	ldr	ip, [r3, #4]
	ldr	r1, [r2, #4]
	mov	ip, ip, asl #23
	mov	r1, r1, asl #23
	mvn	ip, ip, lsr #5
	mvn	r1, r1, lsr #6
	mvn	ip, ip, lsr #18
	mvn	r1, r1, lsr #17
	ldr	lr, [r2, #24]
	ldrb	r5, [r3]	@ zero_extendqisi2
	ldr	r0, [r3, #24]
	ldr	r4, .L352+8
	ldrb	r6, [r2]	@ zero_extendqisi2
	mov	r3, r0, asl #3
	orr	r2, r5, #16384
	mov	r0, lr, asl #3
	ldr	r7, .L352+12
	ldr	lr, .L352+16
	strh	r2, [r4, r3]	@ movhi
	add	r3, r4, r3
	add	r2, r4, r0
	strh	r7, [r3, #4]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r6, [r4, r0]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L353:
	.align	2
.L352:
	.word	uSprite
	.word	uSprite2
	.word	shadowOAM
	.word	-32560
	.word	-32552
	.size	drawReadyU, .-drawReadyU
	.align	2
	.global	drawGame
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L417
	ldr	r2, [r3, #28]
	cmp	r2, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bne	.L400
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+8
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L401
.L357:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+12
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L402
.L359:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+16
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L403
.L361:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+20
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L404
.L363:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+24
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L365
.L416:
	ldr	r2, .L417+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, .L417+28
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L405
.L367:
	mov	r1, #512
	ldr	r3, [r3, #52]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+32
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	.L406
.L369:
	mov	r1, #512
	ldr	r3, [r3, #52]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+36
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	.L407
.L371:
	mov	r1, #512
	ldr	r3, [r3, #40]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+40
	ldr	r2, [r3, #60]
	cmp	r2, #0
	bne	.L408
.L373:
	mov	r1, #512
	ldr	r3, [r3, #56]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L417+44
	ldr	r2, [r3, #60]
	cmp	r2, #0
	bne	.L409
.L375:
	mov	r1, #512
	ldr	r3, [r3, #56]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L376:
	bl	drawReadyU
	ldr	r3, .L417+48
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L410
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L417+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L379:
	ldr	r4, .L417+52
	ldr	r7, .L417+4
	add	r5, r4, #480
	mov	r6, #512
	b	.L378
.L380:
	ldr	r3, [r4, #40]
	add	r4, r4, #48
	mov	r3, r3, asl #3
	cmp	r5, r4
	strh	r6, [r7, r3]	@ movhi
	beq	.L411
.L378:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L380
	mov	r0, r4
	add	r4, r4, #48
	bl	drawFireball.part.16
	cmp	r5, r4
	bne	.L378
.L411:
	ldr	r4, .L417+56
	mov	r7, #512
	ldr	r6, .L417+4
	add	r5, r4, #480
	b	.L384
.L382:
	ldr	r3, [r4, #36]
	add	r4, r4, #48
	mov	r3, r3, asl #3
	cmp	r5, r4
	strh	r7, [r6, r3]	@ movhi
	beq	.L412
.L384:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L382
	mov	r0, r4
	add	r4, r4, #48
	bl	drawWinterball.part.21
	cmp	r5, r4
	bne	.L384
.L412:
	ldr	r4, .L417+60
	mov	r7, #512
	ldr	r6, .L417+4
	add	r5, r4, #480
	b	.L387
.L385:
	ldr	r3, [r4, #36]
	add	r4, r4, #48
	mov	r3, r3, asl #3
	cmp	r5, r4
	strh	r7, [r6, r3]	@ movhi
	beq	.L413
.L387:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L385
	mov	r0, r4
	add	r4, r4, #48
	bl	drawWinterball2.part.22
	cmp	r5, r4
	bne	.L387
.L413:
	ldr	r4, .L417+64
	mov	r7, #512
	ldr	r6, .L417+4
	add	r5, r4, #480
	b	.L390
.L388:
	ldr	r3, [r4, #36]
	add	r4, r4, #48
	mov	r3, r3, asl #3
	cmp	r5, r4
	strh	r7, [r6, r3]	@ movhi
	beq	.L414
.L390:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L388
	mov	r0, r4
	add	r4, r4, #48
	bl	drawHoneysball.part.27
	cmp	r5, r4
	bne	.L390
.L414:
	ldr	r4, .L417+68
	mov	r7, #512
	ldr	r6, .L417+4
	add	r5, r4, #480
	b	.L393
.L391:
	ldr	r3, [r4, #36]
	add	r4, r4, #48
	mov	r3, r3, asl #3
	cmp	r5, r4
	strh	r7, [r6, r3]	@ movhi
	beq	.L415
.L393:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L391
	mov	r0, r4
	add	r4, r4, #48
	bl	drawHoneysball2.part.28
	cmp	r5, r4
	bne	.L393
.L415:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L400:
	bl	drawHeart1.part.4
	ldr	r3, .L417+8
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L357
.L401:
	bl	drawHeart2.part.5
	ldr	r3, .L417+12
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L359
.L402:
	bl	drawHeart3.part.6
	ldr	r3, .L417+16
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L361
.L403:
	bl	drawHeart4.part.7
	ldr	r3, .L417+20
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L363
.L404:
	bl	drawHeart5.part.8
	ldr	r3, .L417+24
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L416
.L365:
	bl	drawCin.part.13
	ldr	r3, .L417+28
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L367
.L405:
	bl	drawWinter1.part.17
	ldr	r3, .L417+32
	ldr	r2, [r3, #56]
	cmp	r2, #0
	beq	.L369
.L406:
	bl	drawWinter2.part.19
	ldr	r3, .L417+36
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L371
.L407:
	bl	drawUFireball.part.15
	ldr	r3, .L417+40
	ldr	r2, [r3, #60]
	cmp	r2, #0
	beq	.L373
.L408:
	bl	drawHoneys1.part.23
	ldr	r3, .L417+44
	ldr	r2, [r3, #60]
	cmp	r2, #0
	beq	.L375
.L409:
	bl	drawHoneys2.part.25
	b	.L376
.L410:
	bl	drawRock.part.12
	b	.L379
.L418:
	.align	2
.L417:
	.word	h1
	.word	shadowOAM
	.word	h2
	.word	h3
	.word	h4
	.word	h5
	.word	cin
	.word	winter1
	.word	winter2
	.word	ultimate
	.word	honeys1
	.word	honeys2
	.word	rock
	.word	fireballs
	.word	winterballs
	.word	winterballs2
	.word	honeysballs
	.word	honeysballs2
	.size	drawGame, .-drawGame
	.align	2
	.global	initRock
	.type	initRock, %function
initRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	ip, #14
	mov	r4, #6
	mov	lr, #128
	mov	r0, #12
	mov	r1, #67
	mov	r2, #1
	ldr	r3, .L421
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L422:
	.align	2
.L421:
	.word	rock
	.size	initRock, .-initRock
	.align	2
	.global	updateRock
	.type	updateRock, %function
updateRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L425
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	updateRock.part.11
.L424:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L425+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L426:
	.align	2
.L425:
	.word	rock
	.word	shadowOAM
	.size	updateRock, .-updateRock
	.align	2
	.global	drawRock
	.type	drawRock, %function
drawRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L430
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L429
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L430+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L429:
	b	drawRock.part.12
.L431:
	.align	2
.L430:
	.word	rock
	.word	shadowOAM
	.size	drawRock, .-drawRock
	.align	2
	.global	initCin
	.type	initCin, %function
initCin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r2, #1
	mov	r5, #18
	mov	r4, #24
	mov	lr, #228
	mov	r1, #0
	mov	ip, #120
	mov	r0, #3
	ldr	r3, .L434
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #48]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #36]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L435:
	.align	2
.L434:
	.word	cin
	.size	initCin, .-initCin
	.global	__aeabi_idivmod
	.align	2
	.global	moveCin
	.type	moveCin, %function
moveCin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L450
	ldr	r3, .L450+4
	ldr	r5, [r4, #32]
	smull	r2, r3, r5, r3
	mov	r2, r5, asr #31
	add	r3, r3, r5
	rsb	r3, r2, r3, asr #3
	ldr	r6, [r4, #36]
	rsb	r3, r3, r3, lsl #4
	cmp	r5, r3
	str	r6, [r4, #40]
	str	r1, [r4, #36]
	bne	.L437
	ldr	r0, [r4, #44]
	ldr	r3, .L450+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L437:
	ldr	r3, .L450+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L450+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L450+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L440
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	beq	.L443
.L442:
	add	r5, r5, #1
	str	r5, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L440:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L449
.L443:
	mov	r3, #2
	str	r3, [r4, #36]
	b	.L442
.L449:
	ldr	r3, [r4, #36]
	cmp	r3, #4
	ldr	r3, .L450
	bne	.L442
	mov	r2, #0
	str	r6, [r3, #36]
	str	r2, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L451:
	.align	2
.L450:
	.word	cin
	.word	-2004318071
	.word	__aeabi_idivmod
	.word	67109120
	.size	moveCin, .-moveCin
	.align	2
	.global	drawCin
	.type	drawCin, %function
drawCin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L457
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	drawCin.part.13
.L456:
	ldr	r2, .L457+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L458:
	.align	2
.L457:
	.word	cin
	.word	shadowOAM
	.size	drawCin, .-drawCin
	.align	2
	.global	initUFireball
	.type	initUFireball, %function
initUFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	mov	r0, #16
	mov	r1, #0
	mvn	ip, #15
	ldr	r3, .L460
	str	r0, [r3, #28]
	str	r0, [r3, #24]
	str	ip, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #40]
	bx	lr
.L461:
	.align	2
.L460:
	.word	ultimate
	.size	initUFireball, .-initUFireball
	.align	2
	.global	releaseUFireball
	.type	releaseUFireball, %function
releaseUFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L464
	ldr	r3, [r3, #32]
	cmp	r3, #0
	bxne	lr
	b	releaseUFireball.part.14
.L465:
	.align	2
.L464:
	.word	ultimate
	.size	releaseUFireball, .-releaseUFireball
	.align	2
	.global	updateUFireball
	.type	updateUFireball, %function
updateUFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L484
	ldr	r2, [r3, #32]
	cmp	r2, #0
	stmfd	sp!, {r4, lr}
	ldr	r0, [r3, #4]
	beq	.L480
	ldr	r2, [r3, #24]
	ldr	lr, [r3, #20]
	add	r2, r0, r2
	sub	r2, r2, #1
	ldr	r1, [r3]
	add	r2, r2, lr
	add	ip, r2, r1, lsl #8
	ldr	r4, .L484+4
	mov	ip, ip, asl #1
	ldrh	ip, [r4, ip]
	cmp	ip, #0
	bne	.L481
.L469:
	mov	r4, #512
	mov	ip, #0
	ldr	r2, [r3, #40]
	ldr	lr, .L484+8
	mov	r2, r2, asl #3
	strh	r4, [lr, r2]	@ movhi
	str	ip, [r3, #32]
.L468:
	ldr	ip, .L484+12
	ldr	r2, .L484+16
	ldr	ip, [ip]
	ldr	r2, [r2]
	rsb	r0, ip, r0
	rsb	r1, r2, r1
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L481:
	ldr	ip, [r3, #28]
	add	ip, r1, ip
	sub	ip, ip, #1
	add	r2, r2, ip, lsl #8
	mov	r2, r2, asl #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	beq	.L469
	ldr	r2, [r3, #44]
	cmp	r2, #6
	beq	.L482
	cmp	r2, #5
	beq	.L483
	cmp	r2, #8
	bne	.L472
	rsb	r0, lr, r0
	str	r0, [r3, #4]
	b	.L468
.L480:
	ldr	r1, [r3]
	b	.L468
.L472:
	cmp	r2, #7
	addeq	r0, r0, lr
	streq	r0, [r3, #4]
	b	.L468
.L483:
	ldr	r2, [r3, #16]
	add	r1, r1, r2
	str	r1, [r3]
	b	.L468
.L482:
	ldr	r2, [r3, #16]
	rsb	r1, r2, r1
	str	r1, [r3]
	b	.L468
.L485:
	.align	2
.L484:
	.word	ultimate
	.word	collisionmapBitmap
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	updateUFireball, .-updateUFireball
	.align	2
	.global	drawUFireball
	.type	drawUFireball, %function
drawUFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L488
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	drawUFireball.part.15
.L487:
	mov	r1, #512
	ldr	r3, [r3, #40]
	ldr	r2, .L488+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L489:
	.align	2
.L488:
	.word	ultimate
	.word	shadowOAM
	.size	drawUFireball, .-drawUFireball
	.align	2
	.global	initFireball
	.type	initFireball, %function
initFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r2, #2
	mov	r4, #14
	mov	lr, #10
	mvn	ip, #13
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L494
.L491:
	str	r2, [r3, #40]
	add	r2, r2, #1
	cmp	r2, #12
	str	r4, [r3, #28]
	str	lr, [r3, #24]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L491
	ldmfd	sp!, {r4, lr}
	bx	lr
.L495:
	.align	2
.L494:
	.word	fireballs
	.size	initFireball, .-initFireball
	.align	2
	.global	releaseFireball
	.type	releaseFireball, %function
releaseFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L511
	mov	r3, #0
	mov	r2, r0
.L503:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L509
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bne	.L503
	bx	lr
.L509:
	ldr	r2, .L511+4
	ldr	r1, [r2, #36]
	cmp	r1, #1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	beq	.L510
	cmp	r1, #0
	bne	.L500
	mov	r1, r3, asl #1
	add	r5, r1, r3
	mov	r5, r5, asl #4
	ldr	lr, [r2, #24]
	add	r4, r0, r5
	ldr	ip, [r4, #24]
	cmp	lr, #0
	add	r9, lr, #3
	movge	r9, lr
	cmp	ip, #0
	add	r7, ip, #3
	movge	r7, ip
	mov	r6, #5
	ldmia	r2, {r8, ip}
	ldr	lr, [r4, #28]
	add	r2, ip, r9, asr #2
	add	r2, r2, r7, asr #2
	add	ip, lr, #4
	add	ip, ip, r8
	add	r2, r2, #2
	str	ip, [r0, r5]
	str	r6, [r4, #44]
	str	r2, [r4, #4]
.L499:
	mov	r2, #1
	add	r3, r1, r3
	add	r0, r0, r3, lsl #4
	str	r2, [r0, #32]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L500:
	cmp	r1, #3
	bne	.L501
	mov	r7, #8
	mov	r1, r3, asl #1
	add	lr, r1, r3
	mov	lr, lr, asl #4
	add	r5, r0, lr
	ldr	r4, [r5, #24]
	ldr	ip, .L511+8
	smull	r6, ip, r4, ip
	ldr	r8, [r2]
	ldr	r6, [r2, #4]
	add	r9, r4, r4, lsr #31
	rsb	r2, ip, r4, asr #31
	add	r2, r6, r2
	add	ip, r8, r9, asr #1
	str	ip, [r0, lr]
	str	r7, [r5, #44]
	str	r2, [r5, #4]
	b	.L499
.L510:
	mov	r1, r3, asl #1
	add	r6, r1, r3
	mov	r6, r6, asl #4
	ldr	lr, [r2, #24]
	add	r5, r0, r6
	ldr	ip, [r5, #24]
	cmp	lr, #0
	add	r4, lr, #3
	movge	r4, lr
	cmp	ip, #0
	add	lr, ip, #3
	movge	lr, ip
	mov	r8, #6
	ldmia	r2, {r9, ip}
	ldr	r7, [r5, #28]
	add	r2, ip, r4, asr #2
	add	r7, r7, r7, lsr #31
	add	r2, r2, lr, asr #2
	add	r7, r9, r7, asr #1
	add	r2, r2, #2
	str	r7, [r0, r6]
	str	r8, [r5, #44]
	str	r2, [r5, #4]
	b	.L499
.L501:
	cmp	r1, #2
	movne	r1, r3, asl #1
	bne	.L499
	mov	r5, #7
	mov	r1, r3, asl #1
	add	lr, r1, r3
	mov	lr, lr, asl #4
	add	r4, r0, lr
	ldr	r6, [r2, #24]
	ldr	ip, [r4, #24]
	ldr	r7, [r2]
	ldr	r2, [r2, #4]
	add	ip, ip, ip, lsr #31
	add	r6, r6, r6, lsr #31
	mov	ip, ip, asr #1
	add	r2, r2, r6, asr #1
	add	r2, r2, ip
	add	r2, r2, #2
	add	ip, r7, ip
	str	ip, [r0, lr]
	str	r2, [r4, #4]
	str	r5, [r4, #44]
	b	.L499
.L512:
	.align	2
.L511:
	.word	fireballs
	.word	cin
	.word	1431655766
	.size	releaseFireball, .-releaseFireball
	.align	2
	.global	updateCin
	.type	updateCin, %function
updateCin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	lr, .L789
	ldrh	r3, [lr, #48]
	tst	r3, #128
	sub	sp, sp, #20
	ldr	r4, .L789+4
	beq	.L514
	ldr	r8, .L789+8
	ldr	r0, [r4, #8]
.L515:
	ldr	r3, .L789
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L759
.L527:
	ldr	lr, .L789
	ldrh	r3, [lr, #48]
	tst	r3, #64
	bne	.L532
	ldr	r1, [r4, #12]
	sub	r2, r0, #1
	add	r2, r1, r2, lsl #8
	ldr	ip, .L789+12
	mov	r3, r2, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	ldr	r5, .L789+4
	beq	.L533
	ldr	r3, [r5, #24]
	add	r2, r2, r3
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	beq	.L534
	ldr	ip, .L789+16
	ldr	r2, [ip, #56]
	cmp	r2, #0
	bne	.L760
	ldrh	r2, [lr, #48]
	tst	r2, #64
	bne	.L546
.L547:
	ldr	r2, [ip, #56]
	cmp	r2, #0
	beq	.L548
	ldr	r2, .L789+20
	ldr	r2, [r2, #56]
	cmp	r2, #0
	beq	.L548
	ldr	r2, .L789+24
	ldr	r2, [r2, #60]
	cmp	r2, #0
	beq	.L548
	ldr	r2, .L789+28
	ldr	r2, [r2, #60]
	cmp	r2, #0
	beq	.L548
	ldr	ip, .L789+32
	ldr	r2, [ip, #28]
	cmp	r2, #0
	bne	.L549
	ldr	lr, [ip, #16]
	ldr	r5, [ip, #20]
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r2, [r4, #28]
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	ldr	r5, .L789+36
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldr	r3, .L789+4
	bne	.L550
	ldr	r0, [r3, #8]
.L546:
	ldr	lr, .L789
	ldrh	r3, [lr, #48]
	tst	r3, #32
	beq	.L552
.L770:
	ldr	r2, [r4, #28]
	ldr	r7, .L789+80
.L553:
	ldr	r3, .L789
	ldrh	r3, [r3, #48]
	tst	r3, #32
	beq	.L761
.L565:
	ldr	lr, .L789
	ldrh	r3, [lr, #48]
	tst	r3, #16
	bne	.L569
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #24]
	ldr	r5, [r4, #20]
	add	ip, r1, r3
	sub	ip, ip, #1
	add	ip, ip, r5
	add	r5, ip, r0, lsl #8
	ldr	r6, .L789+12
	mov	r5, r5, asl #1
	ldrh	r5, [r6, r5]
	cmp	r5, #0
	ldr	r5, .L789+4
	beq	.L570
	add	r9, r0, r2
	sub	r9, r9, #1
	add	ip, ip, r9, lsl #8
	mov	ip, ip, asl #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L571
	ldr	ip, .L789+16
	ldr	r6, [ip, #56]
	cmp	r6, #0
	bne	.L762
	ldrh	r3, [lr, #48]
	tst	r3, #16
	bne	.L581
.L582:
	ldr	r3, [ip, #56]
	cmp	r3, #0
	beq	.L583
	ldr	r3, .L789+20
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L763
.L583:
	add	r3, r2, r2, lsr #31
	mov	r3, r3, asr #1
	ldr	r0, [r4, #4]
	rsb	r3, r3, #120
	cmp	r0, r3
	ldr	r3, .L789+4
	beq	.L764
.L584:
	add	r1, r1, #1
	str	r1, [r4, #12]
	ldr	r0, [r4, #8]
.L581:
	add	r3, r2, #3
	cmp	r2, #0
	movlt	r2, r3
	ldr	r5, .L789+40
	add	r0, r0, r2, asr #2
	cmp	r0, #1
	ldreq	r3, .L789+44
	ldrh	r2, [r5]
	streq	r0, [r3]
	tst	r2, #1
	bne	.L586
	ldr	r3, [r4, #56]
	add	r3, r3, #1
.L587:
	tst	r2, #2
	str	r3, [r4, #56]
	beq	.L592
	ldr	r3, .L789+48
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L765
.L592:
	ldr	r6, [r4, #60]
	add	r6, r6, #1
.L591:
	ldr	r5, .L789+52
	str	r6, [r4, #60]
	mov	fp, #0
	ldr	r9, .L789+36
	ldr	r10, .L789+56
	add	r6, r5, #480
	b	.L597
.L595:
	add	r5, r5, #48
	cmp	r6, r5
	beq	.L766
.L597:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	beq	.L595
	ldr	lr, [r5, #24]
	add	r0, r4, #8
	ldr	ip, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r5, #12]
	str	ip, [sp, #8]
	ldr	ip, [r5, #8]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r10]
	strne	fp, [r5, #32]
	subne	r3, r3, #1
	add	r5, r5, #48
	strne	r3, [r10]
	cmp	r6, r5
	bne	.L597
.L766:
	ldr	r5, .L789+60
	mov	fp, #0
	ldr	r9, .L789+36
	ldr	r10, .L789+56
	add	r6, r5, #480
	b	.L601
.L599:
	add	r5, r5, #48
	cmp	r6, r5
	beq	.L767
.L601:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	beq	.L599
	ldr	lr, [r5, #24]
	add	r0, r4, #8
	ldr	ip, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r5, #12]
	str	ip, [sp, #8]
	ldr	ip, [r5, #8]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r10]
	strne	fp, [r5, #32]
	subne	r3, r3, #1
	add	r5, r5, #48
	strne	r3, [r10]
	cmp	r6, r5
	bne	.L601
.L767:
	ldr	r5, .L789+64
	mov	fp, #0
	ldr	r9, .L789+36
	ldr	r10, .L789+56
	add	r6, r5, #480
	b	.L605
.L603:
	add	r5, r5, #48
	cmp	r6, r5
	beq	.L768
.L605:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	beq	.L603
	ldr	lr, [r5, #24]
	add	r0, r4, #8
	ldr	ip, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r5, #12]
	str	ip, [sp, #8]
	ldr	ip, [r5, #8]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r10]
	strne	fp, [r5, #32]
	subne	r3, r3, #1
	add	r5, r5, #48
	strne	r3, [r10]
	cmp	r6, r5
	bne	.L605
.L768:
	ldr	r5, .L789+68
	mov	fp, #0
	ldr	r9, .L789+36
	ldr	r10, .L789+56
	add	r6, r5, #480
	b	.L609
.L607:
	add	r5, r5, #48
	cmp	r5, r6
	beq	.L769
.L609:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	beq	.L607
	ldr	lr, [r5, #24]
	add	r0, r4, #8
	ldr	ip, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r5, #12]
	str	ip, [sp, #8]
	ldr	ip, [r5, #8]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrne	r3, [r10]
	strne	fp, [r5, #32]
	subne	r3, r3, #1
	add	r5, r5, #48
	strne	r3, [r10]
	cmp	r5, r6
	bne	.L609
.L769:
	ldr	r0, [r7]
	ldr	r1, [r8]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r4, #4]
	str	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	moveCin
.L783:
	ldr	lr, [ip, #24]
	add	r0, r5, #8
	ldr	r7, [ip, #28]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r7, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L543
	ldr	ip, .L789+24
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L543
	ldr	lr, [ip, #24]
	add	r0, r5, #8
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r0, {r0, r1}
	ldr	r5, [ip, #28]
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L543
	ldr	ip, .L789+28
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L543
	ldr	lr, [ip, #24]
	add	r0, r4, #8
	ldr	r5, [ip, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r3, [r4, #24]
	str	r5, [sp, #8]
	ldr	r2, [r4, #28]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldr	r5, .L789+4
	ldr	r6, .L789+36
	bne	.L543
	ldr	ip, .L789+32
	ldr	r3, [ip, #28]
	cmp	r3, #0
	beq	.L543
	ldr	lr, [ip, #16]
	add	r0, r5, #8
	ldr	r7, [ip, #20]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r7, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L544
	ldr	r0, [r5, #8]
.L532:
	ldr	r3, .L789
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L546
	ldr	r1, [r4, #12]
	sub	r2, r0, #1
	add	r2, r1, r2, lsl #8
	ldr	ip, .L789+12
	mov	r3, r2, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	ldr	r3, .L789+4
	beq	.L546
	ldr	r3, [r3, #24]
	add	r2, r2, r3
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	ldrne	ip, .L789+16
	bne	.L547
.L549:
	ldr	lr, .L789
	ldrh	r3, [lr, #48]
	tst	r3, #32
	ldr	r0, [r4, #8]
	bne	.L770
.L552:
	ldr	r1, [r4, #12]
	sub	r3, r1, #1
	add	r2, r3, r0, lsl #8
	ldr	r6, .L789+12
	mov	r2, r2, asl #1
	ldrh	r2, [r6, r2]
	cmp	r2, #0
	ldr	r5, .L789+4
	beq	.L554
	ldr	r2, [r5, #28]
	add	ip, r0, r2
	sub	ip, ip, #1
	add	ip, r3, ip, lsl #8
	mov	ip, ip, asl #1
	ldrh	ip, [r6, ip]
	cmp	ip, #0
	beq	.L555
	ldr	ip, .L789+16
	ldr	r6, [ip, #56]
	cmp	r6, #0
	bne	.L771
	ldrh	r1, [lr, #48]
	tst	r1, #32
	ldreq	r7, .L789+80
	bne	.L754
.L566:
	ldr	r1, [ip, #56]
	cmp	r1, #0
	beq	.L567
	ldr	r1, .L789+20
	ldr	r1, [r1, #56]
	cmp	r1, #0
	bne	.L772
.L567:
	add	r1, r2, r2, lsr #31
	mov	r1, r1, asr #1
	ldr	r0, [r4, #4]
	rsb	r1, r1, #120
	cmp	r0, r1
	ldr	r1, .L789+4
	beq	.L773
.L568:
	str	r3, [r4, #12]
	b	.L755
.L782:
	ldr	lr, [ip, #24]
	add	r0, r5, #8
	ldr	r9, [ip, #28]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r9, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L578
	ldr	ip, .L789+24
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L578
	ldr	lr, [ip, #24]
	add	r0, r5, #8
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r0, {r0, r1}
	ldr	r5, [ip, #28]
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L578
	ldr	ip, .L789+28
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L578
	ldr	lr, [ip, #24]
	add	r0, r4, #8
	ldr	r5, [ip, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	ldr	r3, .L789+4
	cmp	r0, #0
	ldr	r2, [r3, #28]
	bne	.L756
	add	r1, r2, r2, lsr #31
	mov	r1, r1, asr #1
	ldr	r0, [r3, #4]
	rsb	r1, r1, #120
	cmp	r0, r1
	beq	.L774
.L580:
	ldr	r3, [r4, #12]
	add	r3, r3, #1
	str	r3, [r4, #12]
	ldr	r0, [r4, #8]
.L569:
	ldr	r3, .L789
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L581
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #24]
	ldr	ip, [r4, #20]
	add	r3, r1, r3
	sub	r3, r3, #1
	add	r3, r3, ip
	add	ip, r3, r0, lsl #8
	ldr	lr, .L789+12
	mov	ip, ip, asl #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L581
	add	r0, r0, r2
	sub	r0, r0, #1
	add	r3, r3, r0, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [lr, r3]
	cmp	r3, #0
	bne	.L775
.L757:
	ldr	r0, [r4, #8]
	b	.L581
.L586:
	ldr	r3, .L789+48
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #56]
	bne	.L758
	cmp	r3, #12
	bgt	.L589
.L758:
	add	r3, r3, #1
	b	.L587
.L514:
	ldr	r0, [r4, #8]
	ldr	r2, [r4, #28]
	ldr	ip, [r4, #16]
	add	r3, r0, r2
	sub	r3, r3, #1
	ldr	r1, [r4, #12]
	add	ip, r3, ip
	add	ip, r1, ip, lsl #8
	ldr	r5, .L789+12
	mov	r3, ip, asl #1
	ldrh	r3, [r5, r3]
	cmp	r3, #0
	beq	.L516
	ldr	r3, [r4, #24]
	add	ip, ip, r3
	add	ip, r5, ip, lsl #1
	ldrh	ip, [ip, #-2]
	cmp	ip, #0
	beq	.L517
	ldr	ip, .L789+16
	ldr	r5, [ip, #56]
	cmp	r5, #0
	bne	.L776
	ldrh	r2, [lr, #48]
	tst	r2, #128
	ldreq	r8, .L789+8
	bne	.L753
.L528:
	ldr	r2, [ip, #56]
	cmp	r2, #0
	beq	.L529
	ldr	r2, .L789+20
	ldr	r2, [r2, #56]
	cmp	r2, #0
	bne	.L777
.L529:
	add	r3, r3, r3, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [r4]
	rsb	r3, r3, #80
	cmp	r2, r3
	ldr	r3, .L789+4
	beq	.L778
.L531:
	add	r0, r0, #1
	str	r0, [r4, #8]
	b	.L527
.L761:
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	add	r1, r3, r0, lsl #8
	ldr	ip, .L789+12
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L565
	add	r1, r0, r2
	sub	r1, r1, #1
	add	r1, r3, r1, lsl #8
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	bne	.L779
.L755:
	ldr	r0, [r4, #8]
	b	.L565
.L759:
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #16]
	add	r3, r0, r3
	sub	r3, r3, #1
	add	r2, r3, r2
	ldr	ip, [r4, #12]
	mov	r2, r2, asl #8
	add	r3, r2, ip
	ldr	r1, .L789+12
	mov	r3, r3, asl #1
	ldrh	r3, [r1, r3]
	cmp	r3, #0
	ldr	r3, .L789+4
	beq	.L527
	ldr	r3, [r3, #24]
	add	r2, r3, r2
	add	r2, r2, ip
	add	r2, r1, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	ldrne	ip, .L789+16
	bne	.L528
.L530:
	ldr	r0, [r4, #8]
	b	.L527
.L554:
	ldrh	r3, [lr, #48]
	ldr	r2, [r5, #28]
	ldr	r7, .L789+80
	b	.L565
.L516:
	ldrh	r3, [lr, #48]
	ldr	r8, .L789+8
	b	.L527
.L570:
	ldrh	r3, [lr, #48]
	b	.L581
.L533:
	ldrh	r3, [lr, #48]
	b	.L546
.L765:
	ldr	r5, .L789+72
	ldr	r6, [r5]
	cmp	r6, #1
	bne	.L592
	ldr	r3, .L789+76
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L780
.L593:
	mov	r3, #0
	str	r3, [r5]
	b	.L591
.L555:
	ldrh	r3, [lr, #48]
	tst	r3, #32
	ldreq	r7, .L789+80
	beq	.L755
.L754:
	ldr	r7, .L789+80
	b	.L565
.L517:
	ldrh	r3, [lr, #48]
	tst	r3, #128
	ldreq	r8, .L789+8
	beq	.L530
.L753:
	ldr	r8, .L789+8
	b	.L527
.L534:
	ldrh	r3, [lr, #48]
	tst	r3, #64
	bne	.L546
	b	.L549
.L571:
	ldrh	r3, [lr, #48]
	tst	r3, #16
	bne	.L581
	b	.L757
.L589:
	bl	releaseFireball
	mov	r3, #1
	ldrh	r2, [r5]
	b	.L587
.L550:
	ldr	r3, [r3, #24]
.L548:
	add	r3, r3, r3, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [r4]
	rsb	r3, r3, #80
	cmp	r2, r3
	ldr	r3, .L789+4
	beq	.L781
.L551:
	ldr	r0, [r4, #8]
	sub	r0, r0, #1
	str	r0, [r4, #8]
	b	.L546
.L763:
	ldr	r3, .L789+24
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L583
	ldr	r3, .L789+28
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L757
	b	.L583
.L777:
	ldr	r2, .L789+24
	ldr	r2, [r2, #60]
	cmp	r2, #0
	beq	.L529
	ldr	r2, .L789+28
	ldr	r2, [r2, #60]
	cmp	r2, #0
	bne	.L530
	b	.L529
.L772:
	ldr	r1, .L789+24
	ldr	r1, [r1, #60]
	cmp	r1, #0
	beq	.L567
	ldr	r1, .L789+28
	ldr	r1, [r1, #60]
	cmp	r1, #0
	bne	.L755
	b	.L567
.L762:
	add	r6, ip, #24
	ldmia	r6, {r6, lr}
	str	r6, [sp, #12]
	ldr	r6, [ip, #12]
	ldr	ip, [ip, #8]
	stmib	sp, {r6, lr}
	str	ip, [sp]
	ldr	r6, .L789+36
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L578
	ldr	ip, .L789+20
	ldr	r3, [ip, #56]
	cmp	r3, #0
	bne	.L782
.L578:
	ldr	r2, [r4, #28]
	ldr	r0, [r4, #8]
	b	.L569
.L760:
	ldr	lr, [ip, #24]
	ldr	r6, [ip, #28]
	ldr	r2, [r5, #28]
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r6, [sp, #8]
	stmia	sp, {ip, lr}
	ldr	r6, .L789+36
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L543
	ldr	ip, .L789+20
	ldr	r3, [ip, #56]
	cmp	r3, #0
	bne	.L783
.L543:
	ldr	r0, [r4, #8]
	b	.L532
.L776:
	ldr	lr, [ip, #24]
	ldr	r5, [ip, #28]
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r6, .L789+36
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L524
	ldr	ip, .L789+20
	ldr	r3, [ip, #56]
	cmp	r3, #0
	bne	.L784
.L524:
	ldr	r0, [r4, #8]
	ldr	r8, .L789+8
	b	.L515
.L771:
	ldr	lr, [ip, #24]
	ldr	r6, [ip, #28]
	ldr	r3, [r5, #24]
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r6, [sp, #8]
	stmia	sp, {ip, lr}
	ldr	r6, .L789+36
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L562
	ldr	ip, .L789+20
	ldr	r3, [ip, #56]
	cmp	r3, #0
	bne	.L785
.L562:
	ldr	r2, [r4, #28]
	ldr	r0, [r4, #8]
	ldr	r7, .L789+80
	b	.L553
.L779:
	ldr	ip, .L789+16
	b	.L566
.L775:
	ldr	ip, .L789+16
	b	.L582
.L764:
	ldr	r0, [r7]
	cmp	r0, #15
	ldr	ip, .L789+80
	bgt	.L584
	ldr	r6, .L789+88
	ldr	r5, .L789+92
	add	r0, r0, #1
	str	r0, [ip]
	ldr	lr, [r6, #12]
	ldr	ip, [r5, #12]
	add	r1, r1, #1
	add	lr, lr, #1
	add	ip, ip, #1
	str	r1, [r3, #12]
	ldr	r0, [r3, #8]
	str	lr, [r6, #12]
	str	ip, [r5, #12]
	b	.L581
.L778:
	ldr	r2, [r8]
	cmp	r2, #95
	ldr	ip, .L789+8
	bgt	.L531
	ldr	r5, .L789+88
	ldr	lr, .L789+92
	add	r2, r2, #1
	ldr	r1, [r5, #8]
	str	r2, [ip]
	ldr	r2, [lr, #8]
	add	r0, r0, #1
	add	r1, r1, #1
	add	r2, r2, #1
	str	r0, [r3, #8]
	str	r1, [r5, #8]
	str	r2, [lr, #8]
	b	.L527
.L773:
	ldr	r0, [r7]
	cmp	r0, #0
	ldr	ip, .L789+80
	ble	.L568
	ldr	r6, .L789+88
	ldr	r5, .L789+92
	sub	r0, r0, #1
	str	r0, [ip]
	ldr	lr, [r6, #12]
	ldr	ip, [r5, #12]
	sub	lr, lr, #1
	sub	ip, ip, #1
	str	r3, [r1, #12]
	ldr	r0, [r1, #8]
	str	lr, [r6, #12]
	str	ip, [r5, #12]
	b	.L565
.L781:
	ldr	r2, [r8]
	cmp	r2, #0
	ldr	r0, .L789+8
	ble	.L551
	ldr	r5, .L789+88
	ldr	lr, .L789+92
	sub	r2, r2, #1
	ldr	ip, [r5, #8]
	ldr	r1, [lr, #8]
	str	r2, [r0]
	ldr	r0, [r3, #8]
	sub	ip, ip, #1
	sub	r1, r1, #1
	sub	r0, r0, #1
	str	ip, [r5, #8]
	str	r1, [lr, #8]
	str	r0, [r3, #8]
	b	.L546
.L780:
	bl	releaseUFireball.part.14
	b	.L593
.L785:
	ldr	lr, [ip, #24]
	add	r0, r5, #8
	ldr	r7, [ip, #28]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r7, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L562
	ldr	ip, .L789+24
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L562
	ldr	lr, [ip, #24]
	add	r0, r5, #8
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r0, {r0, r1}
	ldr	r5, [ip, #28]
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L562
	ldr	ip, .L789+28
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L562
	ldr	lr, [ip, #24]
	add	r0, r4, #8
	ldr	r5, [ip, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	ldr	r3, .L789+4
	cmp	r0, #0
	ldr	r2, [r3, #28]
	beq	.L563
	ldr	r0, [r3, #8]
	ldr	r7, .L789+80
	b	.L553
.L784:
	ldr	lr, [ip, #24]
	add	r0, r4, #8
	ldr	r5, [ip, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L524
	ldr	ip, .L789+24
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L524
	ldr	lr, [ip, #24]
	add	r0, r4, #8
	ldr	r5, [ip, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L524
	ldr	ip, .L789+28
	ldr	r3, [ip, #60]
	cmp	r3, #0
	beq	.L524
	ldr	lr, [ip, #24]
	add	r0, r4, #8
	ldr	r5, [ip, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	add	ip, ip, #8
	ldmia	ip, {ip, lr}
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	str	r5, [sp, #8]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldr	r2, .L789+4
	beq	.L525
	ldr	r0, [r2, #8]
	ldr	r8, .L789+8
	b	.L515
.L544:
	ldr	r3, [r5, #24]
	add	r3, r3, r3, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [r5]
	rsb	r3, r3, #80
	cmp	r2, r3
	beq	.L786
.L545:
	ldr	r0, [r4, #8]
	sub	r0, r0, #1
	str	r0, [r4, #8]
	b	.L532
.L790:
	.align	2
.L789:
	.word	67109120
	.word	cin
	.word	vOff
	.word	collisionmapBitmap
	.word	winter1
	.word	winter2
	.word	honeys1
	.word	honeys2
	.word	rock
	.word	collision
	.word	oldButtons
	.word	bossStage
	.word	buttons
	.word	winterballs
	.word	cinLives
	.word	winterballs2
	.word	honeysballs
	.word	honeysballs2
	.word	useUF
	.word	ultimate
	.word	hOff
	.word	vOff
	.word	uSprite
	.word	uSprite2
.L774:
	ldr	r1, [r7]
	cmp	r1, #15
	ldr	r0, .L789+80
	bgt	.L580
	ldr	lr, .L789+88
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r1, [lr, #12]
	ldr	ip, .L789+92
	add	r1, r1, #1
	ldr	r0, [ip, #12]
	str	r1, [lr, #12]
	ldr	r1, [r3, #12]
	add	r0, r0, #1
	add	r1, r1, #1
	str	r0, [ip, #12]
	str	r1, [r3, #12]
.L756:
	ldr	r0, [r3, #8]
	b	.L569
.L786:
	ldr	r3, [r8]
	cmp	r3, #0
	ldr	r0, .L789+84
	ble	.L545
	ldr	lr, .L789+88
	ldr	ip, .L789+92
	sub	r3, r3, #1
	ldr	r1, [lr, #8]
	ldr	r2, [ip, #8]
	str	r3, [r0]
	ldr	r0, [r5, #8]
	sub	r1, r1, #1
	sub	r2, r2, #1
	sub	r0, r0, #1
	str	r1, [lr, #8]
	str	r2, [ip, #8]
	str	r0, [r5, #8]
	b	.L532
.L563:
	add	r1, r2, r2, lsr #31
	mov	r1, r1, asr #1
	ldr	r0, [r3, #4]
	rsb	r1, r1, #120
	cmp	r0, r1
	ldr	r7, .L789+80
	beq	.L787
.L564:
	ldr	r3, [r4, #12]
	sub	r3, r3, #1
	str	r3, [r4, #12]
	ldr	r0, [r4, #8]
	b	.L553
.L525:
	ldr	r3, [r2, #24]
	add	r3, r3, r3, lsr #31
	mov	r3, r3, asr #1
	ldr	r1, [r2]
	rsb	r3, r3, #80
	cmp	r1, r3
	ldr	r8, .L789+84
	beq	.L788
.L526:
	ldr	r0, [r4, #8]
	add	r0, r0, #1
	str	r0, [r4, #8]
	b	.L515
.L787:
	ldr	r1, [r7]
	cmp	r1, #0
	ble	.L564
	ldr	r5, .L789+88
	ldr	lr, .L789+92
	sub	r1, r1, #1
	ldr	ip, [r5, #12]
	ldr	r0, [lr, #12]
	str	r1, [r7]
	ldr	r1, [r3, #12]
	sub	r0, r0, #1
	sub	ip, ip, #1
	sub	r1, r1, #1
	str	r0, [lr, #12]
	str	ip, [r5, #12]
	str	r1, [r3, #12]
	ldr	r0, [r3, #8]
	b	.L553
.L788:
	ldr	r3, [r8]
	cmp	r3, #95
	bgt	.L526
	ldr	r5, .L789+88
	ldr	lr, .L789+92
	ldr	ip, [r5, #8]
	ldr	r1, [lr, #8]
	ldr	r0, [r2, #8]
	add	r3, r3, #1
	add	ip, ip, #1
	add	r1, r1, #1
	add	r0, r0, #1
	str	r3, [r8]
	str	ip, [r5, #8]
	str	r1, [lr, #8]
	str	r0, [r2, #8]
	b	.L515
	.size	updateCin, .-updateCin
	.align	2
	.global	updateFireball
	.type	updateFireball, %function
updateFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	stmfd	sp!, {r4, lr}
	beq	.L793
	ldr	r1, [r0, #4]
	ldr	r3, [r0, #24]
	ldr	ip, [r0, #20]
	add	r3, r1, r3
	sub	r3, r3, #1
	ldr	lr, [r0]
	add	r3, r3, ip
	add	r2, r3, lr, lsl #8
	ldr	r4, .L810
	mov	r2, r2, asl #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	beq	.L794
	ldr	r2, [r0, #28]
	add	r2, lr, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [r4, r3]
	cmp	r3, #0
	beq	.L794
	ldr	r3, [r0, #44]
	cmp	r3, #6
	beq	.L808
	cmp	r3, #5
	beq	.L809
	cmp	r3, #8
	bne	.L798
	rsb	r1, ip, r1
	str	r1, [r0, #4]
.L793:
	ldr	r1, .L810+4
	ldr	r2, .L810+8
	ldr	r3, .L810+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #480
.L799:
	ldr	r1, [r3]
	ldr	r2, [r3, #-4]
	rsb	r1, lr, r1
	rsb	r2, ip, r2
	str	r1, [r3, #8]
	str	r2, [r3, #4]
	add	r3, r3, #48
	cmp	r0, r3
	bne	.L799
	ldmfd	sp!, {r4, lr}
	bx	lr
.L794:
	mov	ip, #0
	mov	r1, #512
	ldr	r3, [r0, #40]
	ldr	r2, .L810+16
	mov	r3, r3, asl #3
	str	ip, [r0, #32]
	strh	r1, [r2, r3]	@ movhi
	b	.L793
.L798:
	cmp	r3, #7
	addeq	r1, r1, ip
	streq	r1, [r0, #4]
	b	.L793
.L809:
	ldr	r3, [r0, #16]
	add	lr, r3, lr
	str	lr, [r0]
	b	.L793
.L808:
	ldr	r3, [r0, #16]
	rsb	lr, r3, lr
	str	lr, [r0]
	b	.L793
.L811:
	.align	2
.L810:
	.word	collisionmapBitmap
	.word	hOff
	.word	vOff
	.word	fireballs+4
	.word	shadowOAM
	.size	updateFireball, .-updateFireball
	.align	2
	.global	drawFireball
	.type	drawFireball, %function
drawFireball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #32]
	cmp	r2, #0
	bne	drawFireball.part.16
.L813:
	mov	r1, #512
	ldr	r3, [r0, #40]
	ldr	r2, .L814
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L815:
	.align	2
.L814:
	.word	shadowOAM
	.size	drawFireball, .-drawFireball
	.align	2
	.global	initWinter1
	.type	initWinter1, %function
initWinter1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r2, #1
	mov	r8, #15
	mov	r7, #22
	mov	r6, #170
	mov	r5, #215
	mov	r4, #3
	mov	lr, #9
	mov	r1, #0
	mov	ip, #12
	mov	r0, #200
	ldr	r3, .L818
	str	r8, [r3, #28]
	str	r7, [r3, #24]
	str	r6, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #48]
	str	lr, [r3, #36]
	str	ip, [r3, #52]
	str	r0, [r3, #60]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #56]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L819:
	.align	2
.L818:
	.word	winter1
	.size	initWinter1, .-initWinter1
	.align	2
	.global	drawWinter1
	.type	drawWinter1, %function
drawWinter1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L822
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	drawWinter1.part.17
.L821:
	mov	r1, #512
	ldr	r3, [r3, #52]
	ldr	r2, .L822+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L823:
	.align	2
.L822:
	.word	winter1
	.word	shadowOAM
	.size	drawWinter1, .-drawWinter1
	.align	2
	.global	moveWinter1
	.type	moveWinter1, %function
moveWinter1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L837
	ldr	r3, .L837+4
	ldr	r1, [r4, #32]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #3
	rsb	r3, r3, r3, lsl #4
	cmp	r1, r3
	bne	.L825
	ldr	r0, [r4, #44]
	ldr	r3, .L837+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L825:
	ldr	r2, .L837+12
	ldr	r3, .L837+16
	ldr	r1, [r2]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #3
	cmp	r1, r3, asl #1
	beq	.L835
.L826:
	ldr	r3, [r4, #36]
	cmp	r3, #13
	ldr	r3, .L837
	beq	.L836
.L832:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L835:
	ldr	r3, .L837+20
	mov	lr, pc
	bx	r3
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r0, r0, r3
	and	r0, r0, #3
	rsb	r0, r3, r0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L826
.L828:
	.word	.L827
	.word	.L829
	.word	.L830
	.word	.L831
.L831:
	mov	r3, #10
	str	r3, [r4, #36]
	b	.L832
.L830:
	mov	r3, #12
	str	r3, [r4, #36]
	b	.L832
.L829:
	mov	r3, #11
	str	r3, [r4, #36]
	b	.L832
.L827:
	mov	r3, #9
	str	r3, [r4, #36]
	b	.L832
.L836:
	mov	r1, #0
	ldr	r2, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L838:
	.align	2
.L837:
	.word	winter1
	.word	-2004318071
	.word	__aeabi_idivmod
	.word	frames
	.word	-368140053
	.word	rand
	.size	moveWinter1, .-moveWinter1
	.align	2
	.global	initWinter2
	.type	initWinter2, %function
initWinter2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r2, #1
	mov	r8, #15
	mov	r7, #22
	mov	r6, #100
	mov	r5, #140
	mov	r4, #3
	mov	lr, #9
	mov	r1, #0
	mov	ip, #13
	mov	r0, #200
	ldr	r3, .L841
	str	r8, [r3, #28]
	str	r7, [r3, #24]
	str	r6, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #48]
	str	lr, [r3, #36]
	str	ip, [r3, #52]
	str	r0, [r3, #60]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #56]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L842:
	.align	2
.L841:
	.word	winter2
	.size	initWinter2, .-initWinter2
	.align	2
	.global	drawWinter2
	.type	drawWinter2, %function
drawWinter2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L845
	ldr	r2, [r3, #56]
	cmp	r2, #0
	bne	drawWinter2.part.19
.L844:
	mov	r1, #512
	ldr	r3, [r3, #52]
	ldr	r2, .L845+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L846:
	.align	2
.L845:
	.word	winter2
	.word	shadowOAM
	.size	drawWinter2, .-drawWinter2
	.align	2
	.global	moveWinter2
	.type	moveWinter2, %function
moveWinter2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L860
	ldr	r3, .L860+4
	ldr	r1, [r4, #32]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #3
	rsb	r3, r3, r3, lsl #4
	cmp	r1, r3
	bne	.L848
	ldr	r0, [r4, #44]
	ldr	r3, .L860+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L848:
	ldr	r2, .L860+12
	ldr	r3, .L860+16
	ldr	r1, [r2]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #3
	cmp	r1, r3, asl #1
	beq	.L858
.L849:
	ldr	r3, [r4, #36]
	cmp	r3, #13
	ldr	r3, .L860
	beq	.L859
.L855:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L858:
	ldr	r3, .L860+20
	mov	lr, pc
	bx	r3
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r0, r0, r3
	and	r0, r0, #3
	rsb	r0, r3, r0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L849
.L851:
	.word	.L850
	.word	.L852
	.word	.L853
	.word	.L854
.L854:
	mov	r3, #10
	str	r3, [r4, #36]
	b	.L855
.L853:
	mov	r3, #12
	str	r3, [r4, #36]
	b	.L855
.L852:
	mov	r3, #11
	str	r3, [r4, #36]
	b	.L855
.L850:
	mov	r3, #9
	str	r3, [r4, #36]
	b	.L855
.L859:
	mov	r1, #0
	ldr	r2, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L861:
	.align	2
.L860:
	.word	winter2
	.word	-2004318071
	.word	__aeabi_idivmod
	.word	frames
	.word	-368140053
	.word	rand
	.size	moveWinter2, .-moveWinter2
	.align	2
	.global	initWinterball
	.type	initWinterball, %function
initWinterball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #14
	mov	ip, #8
	mvn	lr, #7
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L866
.L863:
	str	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #24
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	lr, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L863
	ldr	lr, [sp], #4
	bx	lr
.L867:
	.align	2
.L866:
	.word	winterballs
	.size	initWinterball, .-initWinterball
	.align	2
	.global	releaseWinterball
	.type	releaseWinterball, %function
releaseWinterball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L884
	mov	r3, #0
	mov	r2, r0
.L875:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L881
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bne	.L875
	bx	lr
.L881:
	ldr	r1, .L884+4
	ldr	r2, [r1, #36]
	cmp	r2, #10
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L882
	cmp	r2, #9
	beq	.L883
	cmp	r2, #12
	bne	.L873
	mov	r6, #8
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	r4, [ip, #28]
	ldr	lr, [r1, #8]
	add	lr, r4, lr
	add	r4, r4, r4, lsr #31
	ldr	r5, [r1, #12]
	add	r1, lr, r4, asr #1
	ldr	lr, [ip, #24]
	rsb	lr, lr, r5
	str	r6, [ip, #44]
	str	r1, [ip, #8]
	str	lr, [ip, #12]
.L871:
	mov	r1, #1
	add	r3, r2, r3
	add	r0, r0, r3, lsl #4
	str	r1, [r0, #32]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L883:
	mov	r5, #5
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6, lsl #1
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L871
.L882:
	mov	r5, #6
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L871
.L873:
	cmp	r2, #11
	movne	r2, r3, asl #1
	bne	.L871
	mov	r5, #7
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #28]
	ldr	r4, [r1, #8]
	add	r4, lr, r4
	add	lr, lr, lr, lsr #31
	add	lr, r4, lr, asr #1
	ldr	r4, [r1, #12]
	ldr	r1, [r1, #24]
	add	r1, r4, r1
	str	r5, [ip, #44]
	str	lr, [ip, #8]
	str	r1, [ip, #12]
	b	.L871
.L885:
	.align	2
.L884:
	.word	winterballs
	.word	winter1
	.size	releaseWinterball, .-releaseWinterball
	.align	2
	.global	updateWinter1
	.type	updateWinter1, %function
updateWinter1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	ldr	r5, .L944
	ldr	r3, [r5, #56]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L887
	ldr	r3, [r5, #8]
	cmp	r3, #17
	bgt	.L938
.L905:
	ldr	r4, .L944+4
	mov	r9, #0
	ldr	r8, .L944
	ldr	r7, .L944+8
	add	r6, r4, #480
	b	.L896
.L894:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L939
.L896:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L894
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8, #60]
	strne	r9, [r4, #32]
	subne	r3, r3, #25
	add	r4, r4, #48
	strne	r3, [r8, #60]
	cmp	r6, r4
	bne	.L896
.L939:
	ldr	r4, .L944+12
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L940
.L898:
	ldr	r3, [r5, #60]
	ldr	r2, .L944
	cmp	r3, #0
	streq	r3, [r2, #56]
	ldr	r2, [r5, #64]
	ldr	r3, .L944+16
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	addne	r2, r2, #1
	beq	.L941
	str	r2, [r5, #64]
	b	.L903
.L887:
	mov	r1, #512
	ldr	r3, [r5, #52]
	ldr	r2, .L944+20
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L903:
	ldr	r2, .L944+24
	ldr	r3, .L944+28
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r5, #4]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	b	moveWinter1
.L938:
	ldr	r2, [r5, #28]
	add	r2, r3, r2
	cmp	r2, #240
	bgt	.L905
	ldr	r1, [r5, #12]
	cmp	r1, #17
	ble	.L905
	ldr	r0, [r5, #24]
	add	r0, r1, r0
	cmp	r0, #240
	bgt	.L905
	ldr	ip, [r5, #36]
	cmp	ip, #9
	beq	.L942
	cmp	ip, #11
	beq	.L943
	cmp	ip, #12
	bne	.L892
	ldr	r0, [r5, #20]
	rsb	r0, r0, r1
	add	r3, r0, r3, lsl #8
	ldr	ip, .L944+32
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L905
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #8
	mov	r3, r2, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	subne	r1, r1, #1
	strne	r1, [r5, #12]
	b	.L905
.L941:
	bl	releaseWinterball
	mov	r2, #1
	str	r2, [r5, #64]
	b	.L903
.L940:
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	ldr	r6, .L944+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #0
	ldr	r3, .L944
	strne	r2, [r4, #32]
	strne	r2, [r3, #56]
	b	.L898
.L942:
	ldr	ip, [r5, #16]
	sub	lr, r2, #1
	add	lr, lr, ip
	mov	ip, lr, asl #8
	add	r1, r1, ip
	ldr	r2, .L944+32
	mov	r1, r1, asl #1
	ldrh	r1, [r2, r1]
	cmp	r1, #0
	beq	.L905
	add	ip, r0, ip
	add	ip, r2, ip, lsl #1
	ldrh	r2, [ip, #-2]
	cmp	r2, #0
	addne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L905
.L943:
	ldr	lr, [r5, #20]
	add	ip, r0, lr
	add	r3, ip, r3, lsl #8
	ldr	ip, .L944+32
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L905
	sub	r3, r2, #1
	add	r3, r0, r3, lsl #8
	add	r3, r3, lr
	add	r3, ip, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	beq	.L905
	rsb	lr, lr, #240
	cmp	r1, lr
	addle	r1, r1, #1
	strle	r1, [r5, #12]
	b	.L905
.L892:
	cmp	ip, #10
	bne	.L905
	ldr	ip, [r5, #16]
	rsb	ip, ip, r3
	mov	r2, ip, asl #8
	add	r1, r1, r2
	ldr	ip, .L944+32
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L905
	add	r2, r0, r2
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	subne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L905
.L945:
	.align	2
.L944:
	.word	winter1
	.word	fireballs
	.word	collision
	.word	ultimate
	.word	156180629
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	collisionmapBitmap
	.size	updateWinter1, .-updateWinter1
	.align	2
	.global	updateWinterball
	.type	updateWinterball, %function
updateWinterball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	stmfd	sp!, {r4, lr}
	beq	.L948
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #24]
	ldr	ip, [r0, #20]
	add	r3, r1, r3
	sub	r3, r3, #1
	ldr	lr, [r0, #8]
	add	r3, r3, ip
	add	r2, r3, lr, lsl #8
	ldr	r4, .L965
	mov	r2, r2, asl #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	beq	.L949
	ldr	r2, [r0, #28]
	add	r2, lr, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [r4, r3]
	cmp	r3, #0
	beq	.L949
	ldr	r3, [r0, #44]
	cmp	r3, #6
	beq	.L963
	cmp	r3, #5
	beq	.L964
	cmp	r3, #8
	bne	.L953
	rsb	r1, ip, r1
	str	r1, [r0, #12]
.L948:
	ldr	r1, .L965+4
	ldr	r2, .L965+8
	ldr	r3, .L965+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #480
.L954:
	ldr	r1, [r3]
	ldr	r2, [r3, #-4]
	rsb	r1, lr, r1
	rsb	r2, ip, r2
	str	r1, [r3, #-8]
	str	r2, [r3, #-12]
	add	r3, r3, #48
	cmp	r0, r3
	bne	.L954
	ldmfd	sp!, {r4, lr}
	bx	lr
.L949:
	mov	ip, #0
	mov	r1, #512
	ldr	r3, [r0, #36]
	ldr	r2, .L965+16
	mov	r3, r3, asl #3
	str	ip, [r0, #32]
	strh	r1, [r2, r3]	@ movhi
	b	.L948
.L953:
	cmp	r3, #7
	addeq	r1, r1, ip
	streq	r1, [r0, #12]
	b	.L948
.L964:
	ldr	r3, [r0, #16]
	add	lr, r3, lr
	str	lr, [r0, #8]
	b	.L948
.L963:
	ldr	r3, [r0, #16]
	rsb	lr, r3, lr
	str	lr, [r0, #8]
	b	.L948
.L966:
	.align	2
.L965:
	.word	collisionmapBitmap
	.word	hOff
	.word	vOff
	.word	winterballs+12
	.word	shadowOAM
	.size	updateWinterball, .-updateWinterball
	.align	2
	.global	initWinterball2
	.type	initWinterball2, %function
initWinterball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #36
	mov	ip, #8
	mvn	lr, #7
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L971
.L968:
	str	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #46
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	lr, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L968
	ldr	lr, [sp], #4
	bx	lr
.L972:
	.align	2
.L971:
	.word	winterballs2
	.size	initWinterball2, .-initWinterball2
	.align	2
	.global	releaseWinterball2
	.type	releaseWinterball2, %function
releaseWinterball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L989
	mov	r3, #0
	mov	r2, r0
.L980:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L986
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bne	.L980
	bx	lr
.L986:
	ldr	r1, .L989+4
	ldr	r2, [r1, #36]
	cmp	r2, #10
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L987
	cmp	r2, #9
	beq	.L988
	cmp	r2, #12
	bne	.L978
	mov	r6, #8
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	r4, [ip, #28]
	ldr	lr, [r1, #8]
	add	lr, r4, lr
	add	r4, r4, r4, lsr #31
	ldr	r5, [r1, #12]
	add	r1, lr, r4, asr #1
	ldr	lr, [ip, #24]
	rsb	lr, lr, r5
	str	r6, [ip, #44]
	str	r1, [ip, #8]
	str	lr, [ip, #12]
.L976:
	mov	r1, #1
	add	r3, r2, r3
	add	r0, r0, r3, lsl #4
	str	r1, [r0, #32]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L988:
	mov	r5, #5
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6, lsl #1
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L976
.L987:
	mov	r5, #6
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L976
.L978:
	cmp	r2, #11
	movne	r2, r3, asl #1
	bne	.L976
	mov	r5, #7
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #28]
	ldr	r4, [r1, #8]
	add	r4, lr, r4
	add	lr, lr, lr, lsr #31
	add	lr, r4, lr, asr #1
	ldr	r4, [r1, #12]
	ldr	r1, [r1, #24]
	add	r1, r4, r1
	str	r5, [ip, #44]
	str	lr, [ip, #8]
	str	r1, [ip, #12]
	b	.L976
.L990:
	.align	2
.L989:
	.word	winterballs2
	.word	winter2
	.size	releaseWinterball2, .-releaseWinterball2
	.align	2
	.global	updateWinter2
	.type	updateWinter2, %function
updateWinter2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	ldr	r5, .L1049
	ldr	r3, [r5, #56]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L992
	ldr	r3, [r5, #8]
	cmp	r3, #17
	bgt	.L1043
.L1010:
	ldr	r4, .L1049+4
	mov	r9, #0
	ldr	r8, .L1049
	ldr	r7, .L1049+8
	add	r6, r4, #480
	b	.L1001
.L999:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L1044
.L1001:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L999
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8, #60]
	strne	r9, [r4, #32]
	subne	r3, r3, #25
	add	r4, r4, #48
	strne	r3, [r8, #60]
	cmp	r6, r4
	bne	.L1001
.L1044:
	ldr	r4, .L1049+12
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L1045
.L1003:
	ldr	r3, [r5, #60]
	ldr	r2, .L1049
	cmp	r3, #0
	streq	r3, [r2, #56]
	ldr	r2, [r5, #64]
	ldr	r3, .L1049+16
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	addne	r2, r2, #1
	beq	.L1046
	str	r2, [r5, #64]
	b	.L1008
.L992:
	mov	r1, #512
	ldr	r3, .L1049+20
	ldr	r3, [r3, #52]
	ldr	r2, .L1049+24
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L1008:
	ldr	r2, .L1049+28
	ldr	r3, .L1049+32
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r5, #4]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	b	moveWinter2
.L1043:
	ldr	r2, [r5, #28]
	add	r2, r3, r2
	cmp	r2, #240
	bgt	.L1010
	ldr	r1, [r5, #12]
	cmp	r1, #17
	ble	.L1010
	ldr	r0, [r5, #24]
	add	r0, r1, r0
	cmp	r0, #240
	bgt	.L1010
	ldr	ip, [r5, #36]
	cmp	ip, #9
	beq	.L1047
	cmp	ip, #11
	beq	.L1048
	cmp	ip, #12
	bne	.L997
	ldr	r0, [r5, #20]
	rsb	r0, r0, r1
	add	r3, r0, r3, lsl #8
	ldr	ip, .L1049+36
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L1010
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #8
	mov	r3, r2, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	subne	r1, r1, #1
	strne	r1, [r5, #12]
	b	.L1010
.L1046:
	bl	releaseWinterball2
	mov	r2, #1
	str	r2, [r5, #64]
	b	.L1008
.L1045:
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	ldr	r6, .L1049+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #0
	ldr	r3, .L1049
	strne	r2, [r4, #32]
	strne	r2, [r3, #56]
	b	.L1003
.L1047:
	ldr	ip, [r5, #16]
	sub	lr, r2, #1
	add	lr, lr, ip
	mov	ip, lr, asl #8
	add	r1, r1, ip
	ldr	r2, .L1049+36
	mov	r1, r1, asl #1
	ldrh	r1, [r2, r1]
	cmp	r1, #0
	beq	.L1010
	add	ip, r0, ip
	add	ip, r2, ip, lsl #1
	ldrh	r2, [ip, #-2]
	cmp	r2, #0
	addne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L1010
.L1048:
	ldr	r6, [r5, #20]
	add	ip, r0, r6
	add	ip, ip, r3, lsl #8
	ldr	r4, .L1049+36
	mov	ip, ip, asl #1
	ldrh	r3, [r4, ip]
	cmp	r3, #0
	beq	.L1010
	sub	lr, r2, #1
	add	r3, r0, lr, lsl #8
	add	r3, r3, r6
	add	r3, r4, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	addne	r1, r1, #1
	strne	r1, [r5, #12]
	b	.L1010
.L997:
	cmp	ip, #10
	bne	.L1010
	ldr	ip, [r5, #16]
	rsb	ip, ip, r3
	mov	r2, ip, asl #8
	add	r1, r1, r2
	ldr	ip, .L1049+36
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L1010
	add	r2, r0, r2
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	subne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L1010
.L1050:
	.align	2
.L1049:
	.word	winter2
	.word	fireballs
	.word	collision
	.word	ultimate
	.word	156180629
	.word	winter1
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	collisionmapBitmap
	.size	updateWinter2, .-updateWinter2
	.align	2
	.global	updateWinterball2
	.type	updateWinterball2, %function
updateWinterball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	stmfd	sp!, {r4, lr}
	beq	.L1053
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #24]
	ldr	ip, [r0, #20]
	add	r3, r1, r3
	sub	r3, r3, #1
	ldr	lr, [r0, #8]
	add	r3, r3, ip
	add	r2, r3, lr, lsl #8
	ldr	r4, .L1070
	mov	r2, r2, asl #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	beq	.L1054
	ldr	r2, [r0, #28]
	add	r2, lr, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [r4, r3]
	cmp	r3, #0
	beq	.L1054
	ldr	r3, [r0, #44]
	cmp	r3, #6
	beq	.L1068
	cmp	r3, #5
	beq	.L1069
	cmp	r3, #8
	bne	.L1058
	rsb	r1, ip, r1
	str	r1, [r0, #12]
.L1053:
	ldr	r1, .L1070+4
	ldr	r2, .L1070+8
	ldr	r3, .L1070+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #480
.L1059:
	ldr	r1, [r3]
	ldr	r2, [r3, #-4]
	rsb	r1, lr, r1
	rsb	r2, ip, r2
	str	r1, [r3, #-8]
	str	r2, [r3, #-12]
	add	r3, r3, #48
	cmp	r0, r3
	bne	.L1059
	ldmfd	sp!, {r4, lr}
	bx	lr
.L1054:
	mov	ip, #0
	mov	r1, #512
	ldr	r3, [r0, #36]
	ldr	r2, .L1070+16
	mov	r3, r3, asl #3
	str	ip, [r0, #32]
	strh	r1, [r2, r3]	@ movhi
	b	.L1053
.L1058:
	cmp	r3, #7
	addeq	r1, r1, ip
	streq	r1, [r0, #12]
	b	.L1053
.L1069:
	ldr	r3, [r0, #16]
	add	lr, r3, lr
	str	lr, [r0, #8]
	b	.L1053
.L1068:
	ldr	r3, [r0, #16]
	rsb	lr, r3, lr
	str	lr, [r0, #8]
	b	.L1053
.L1071:
	.align	2
.L1070:
	.word	collisionmapBitmap
	.word	hOff
	.word	vOff
	.word	winterballs2+12
	.word	shadowOAM
	.size	updateWinterball2, .-updateWinterball2
	.align	2
	.global	drawWinterball2
	.type	drawWinterball2, %function
drawWinterball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #32]
	cmp	r2, #0
	bne	drawWinterball2.part.22
.L1073:
	mov	r1, #512
	ldr	r3, [r0, #36]
	ldr	r2, .L1074
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L1075:
	.align	2
.L1074:
	.word	shadowOAM
	.size	drawWinterball2, .-drawWinterball2
	.align	2
	.global	drawWinterball
	.type	drawWinterball, %function
drawWinterball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawWinterball2
	.size	drawWinterball, .-drawWinterball
	.align	2
	.global	initHoneys1
	.type	initHoneys1, %function
initHoneys1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r2, #1
	mov	r8, #15
	mov	r7, #20
	mov	r6, #50
	mov	r5, #105
	mov	r4, #3
	mov	lr, #14
	mov	r1, #0
	mov	ip, #24
	mov	r0, #200
	ldr	r3, .L1079
	str	r8, [r3, #28]
	str	r7, [r3, #24]
	str	r6, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #48]
	str	lr, [r3, #36]
	str	ip, [r3, #56]
	str	r0, [r3, #52]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #60]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L1080:
	.align	2
.L1079:
	.word	honeys1
	.size	initHoneys1, .-initHoneys1
	.align	2
	.global	drawHoneys1
	.type	drawHoneys1, %function
drawHoneys1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1083
	ldr	r2, [r3, #60]
	cmp	r2, #0
	bne	drawHoneys1.part.23
.L1082:
	mov	r1, #512
	ldr	r3, [r3, #56]
	ldr	r2, .L1083+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L1084:
	.align	2
.L1083:
	.word	honeys1
	.word	shadowOAM
	.size	drawHoneys1, .-drawHoneys1
	.align	2
	.global	moveHoneys1
	.type	moveHoneys1, %function
moveHoneys1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L1098
	ldr	r3, .L1098+4
	ldr	r1, [r4, #32]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #3
	rsb	r3, r3, r3, lsl #4
	cmp	r1, r3
	bne	.L1086
	ldr	r0, [r4, #44]
	ldr	r3, .L1098+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L1086:
	ldr	r2, .L1098+12
	ldr	r3, .L1098+16
	ldr	r1, [r2]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #3
	cmp	r1, r3, asl #1
	beq	.L1096
.L1087:
	ldr	r3, [r4, #36]
	cmp	r3, #18
	ldr	r3, .L1098
	beq	.L1097
.L1093:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L1096:
	ldr	r3, .L1098+20
	mov	lr, pc
	bx	r3
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r0, r0, r3
	and	r0, r0, #3
	rsb	r0, r3, r0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L1087
.L1089:
	.word	.L1088
	.word	.L1090
	.word	.L1091
	.word	.L1092
.L1092:
	mov	r3, #15
	str	r3, [r4, #36]
	b	.L1093
.L1091:
	mov	r3, #17
	str	r3, [r4, #36]
	b	.L1093
.L1090:
	mov	r3, #16
	str	r3, [r4, #36]
	b	.L1093
.L1088:
	mov	r3, #14
	str	r3, [r4, #36]
	b	.L1093
.L1097:
	mov	r1, #0
	ldr	r2, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L1099:
	.align	2
.L1098:
	.word	honeys1
	.word	-2004318071
	.word	__aeabi_idivmod
	.word	frames
	.word	-368140053
	.word	rand
	.size	moveHoneys1, .-moveHoneys1
	.align	2
	.global	initHoneys2
	.type	initHoneys2, %function
initHoneys2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r2, #1
	mov	r8, #15
	mov	r7, #20
	mov	r6, #80
	mov	r5, #50
	mov	r4, #3
	mov	lr, #14
	mov	r1, #0
	mov	ip, #25
	mov	r0, #200
	ldr	r3, .L1102
	str	r8, [r3, #28]
	str	r7, [r3, #24]
	str	r6, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #48]
	str	lr, [r3, #36]
	str	ip, [r3, #56]
	str	r0, [r3, #52]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #60]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L1103:
	.align	2
.L1102:
	.word	honeys2
	.size	initHoneys2, .-initHoneys2
	.align	2
	.global	drawHoneys2
	.type	drawHoneys2, %function
drawHoneys2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1106
	ldr	r2, [r3, #60]
	cmp	r2, #0
	bne	drawHoneys2.part.25
.L1105:
	mov	r1, #512
	ldr	r3, [r3, #56]
	ldr	r2, .L1106+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L1107:
	.align	2
.L1106:
	.word	honeys2
	.word	shadowOAM
	.size	drawHoneys2, .-drawHoneys2
	.align	2
	.global	moveHoneys2
	.type	moveHoneys2, %function
moveHoneys2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L1121
	ldr	r3, .L1121+4
	ldr	r1, [r4, #32]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #3
	rsb	r3, r3, r3, lsl #4
	cmp	r1, r3
	bne	.L1109
	ldr	r0, [r4, #44]
	ldr	r3, .L1121+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L1109:
	ldr	r2, .L1121+12
	ldr	r3, .L1121+16
	ldr	r1, [r2]
	smull	r2, r3, r1, r3
	mov	r2, r1, asr #31
	add	r3, r3, r1
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #3
	cmp	r1, r3, asl #1
	beq	.L1119
.L1110:
	ldr	r3, [r4, #36]
	cmp	r3, #18
	ldr	r3, .L1121
	beq	.L1120
.L1116:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	str	r3, [r4, #32]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L1119:
	ldr	r3, .L1121+20
	mov	lr, pc
	bx	r3
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r0, r0, r3
	and	r0, r0, #3
	rsb	r0, r3, r0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L1110
.L1112:
	.word	.L1111
	.word	.L1113
	.word	.L1114
	.word	.L1115
.L1115:
	mov	r3, #15
	str	r3, [r4, #36]
	b	.L1116
.L1114:
	mov	r3, #17
	str	r3, [r4, #36]
	b	.L1116
.L1113:
	mov	r3, #16
	str	r3, [r4, #36]
	b	.L1116
.L1111:
	mov	r3, #14
	str	r3, [r4, #36]
	b	.L1116
.L1120:
	mov	r1, #0
	ldr	r2, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L1122:
	.align	2
.L1121:
	.word	honeys2
	.word	-2004318071
	.word	__aeabi_idivmod
	.word	frames
	.word	-368140053
	.word	rand
	.size	moveHoneys2, .-moveHoneys2
	.align	2
	.global	initHoneysball
	.type	initHoneysball, %function
initHoneysball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #26
	mov	ip, #8
	mvn	lr, #7
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L1127
.L1124:
	str	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #36
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	lr, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L1124
	ldr	lr, [sp], #4
	bx	lr
.L1128:
	.align	2
.L1127:
	.word	honeysballs
	.size	initHoneysball, .-initHoneysball
	.align	2
	.global	releaseHoneysball
	.type	releaseHoneysball, %function
releaseHoneysball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L1145
	mov	r3, #0
	mov	r2, r0
.L1136:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L1142
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bne	.L1136
	bx	lr
.L1142:
	ldr	r1, .L1145+4
	ldr	r2, [r1, #36]
	cmp	r2, #15
	stmfd	sp!, {r4, r5, r6, lr}
	beq	.L1143
	cmp	r2, #14
	beq	.L1144
	cmp	r2, #17
	bne	.L1134
	mov	r6, #8
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	r4, [ip, #28]
	ldr	lr, [r1, #8]
	add	lr, r4, lr
	add	r4, r4, r4, lsr #31
	ldr	r5, [r1, #12]
	add	r1, lr, r4, asr #1
	ldr	lr, [ip, #24]
	rsb	lr, lr, r5
	str	r6, [ip, #44]
	str	r1, [ip, #8]
	str	lr, [ip, #12]
.L1132:
	mov	r1, #1
	add	r3, r2, r3
	add	r0, r0, r3, lsl #4
	str	r1, [r0, #32]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L1144:
	mov	r5, #5
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6, lsl #1
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L1132
.L1143:
	mov	r5, #6
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L1132
.L1134:
	cmp	r2, #16
	movne	r2, r3, asl #1
	bne	.L1132
	mov	r5, #7
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #28]
	ldr	r4, [r1, #8]
	add	r4, lr, r4
	add	lr, lr, lr, lsr #31
	add	lr, r4, lr, asr #1
	ldr	r4, [r1, #12]
	ldr	r1, [r1, #24]
	add	r1, r4, r1
	str	r5, [ip, #44]
	str	lr, [ip, #8]
	str	r1, [ip, #12]
	b	.L1132
.L1146:
	.align	2
.L1145:
	.word	honeysballs
	.word	honeys1
	.size	releaseHoneysball, .-releaseHoneysball
	.align	2
	.global	updateHoneys1
	.type	updateHoneys1, %function
updateHoneys1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	ldr	r5, .L1205
	ldr	r3, [r5, #60]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L1148
	ldr	r3, [r5, #8]
	cmp	r3, #17
	bgt	.L1199
.L1166:
	ldr	r4, .L1205+4
	mov	r9, #0
	ldr	r8, .L1205
	ldr	r7, .L1205+8
	add	r6, r4, #480
	b	.L1157
.L1155:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L1200
.L1157:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L1155
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8, #52]
	strne	r9, [r4, #32]
	subne	r3, r3, #25
	add	r4, r4, #48
	strne	r3, [r8, #52]
	cmp	r6, r4
	bne	.L1157
.L1200:
	ldr	r4, .L1205+12
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L1201
.L1159:
	ldr	r3, [r5, #52]
	ldr	r2, .L1205
	cmp	r3, #0
	streq	r3, [r2, #60]
	ldr	r2, [r5, #64]
	ldr	r3, .L1205+16
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	addne	r2, r2, #1
	beq	.L1202
	str	r2, [r5, #64]
	b	.L1164
.L1148:
	mov	r1, #512
	ldr	r3, [r5, #56]
	ldr	r2, .L1205+20
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L1164:
	ldr	r2, .L1205+24
	ldr	r3, .L1205+28
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r5, #4]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	b	moveHoneys1
.L1199:
	ldr	r2, [r5, #28]
	add	r2, r3, r2
	cmp	r2, #240
	bgt	.L1166
	ldr	r1, [r5, #12]
	cmp	r1, #17
	ble	.L1166
	ldr	r0, [r5, #24]
	add	r0, r1, r0
	cmp	r0, #240
	bgt	.L1166
	ldr	ip, [r5, #36]
	cmp	ip, #14
	beq	.L1203
	cmp	ip, #16
	beq	.L1204
	cmp	ip, #17
	bne	.L1153
	ldr	r0, [r5, #20]
	rsb	r0, r0, r1
	add	r3, r0, r3, lsl #8
	ldr	ip, .L1205+32
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L1166
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #8
	mov	r3, r2, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	subne	r1, r1, #1
	strne	r1, [r5, #12]
	b	.L1166
.L1202:
	bl	releaseHoneysball
	mov	r2, #1
	str	r2, [r5, #64]
	b	.L1164
.L1201:
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	ldr	r6, .L1205+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #0
	ldr	r3, .L1205
	strne	r2, [r4, #32]
	strne	r2, [r3, #60]
	b	.L1159
.L1203:
	ldr	ip, [r5, #16]
	sub	lr, r2, #1
	add	lr, lr, ip
	mov	ip, lr, asl #8
	add	r1, r1, ip
	ldr	r2, .L1205+32
	mov	r1, r1, asl #1
	ldrh	r1, [r2, r1]
	cmp	r1, #0
	beq	.L1166
	add	ip, r0, ip
	add	ip, r2, ip, lsl #1
	ldrh	r2, [ip, #-2]
	cmp	r2, #0
	addne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L1166
.L1204:
	ldr	lr, [r5, #20]
	add	ip, r0, lr
	add	r3, ip, r3, lsl #8
	ldr	ip, .L1205+32
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L1166
	sub	r3, r2, #1
	add	r3, r0, r3, lsl #8
	add	r3, r3, lr
	add	r3, ip, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	beq	.L1166
	rsb	lr, lr, #240
	cmp	r1, lr
	addle	r1, r1, #1
	strle	r1, [r5, #12]
	b	.L1166
.L1153:
	cmp	ip, #15
	bne	.L1166
	ldr	ip, [r5, #16]
	rsb	ip, ip, r3
	mov	r2, ip, asl #8
	add	r1, r1, r2
	ldr	ip, .L1205+32
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L1166
	add	r2, r0, r2
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	subne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L1166
.L1206:
	.align	2
.L1205:
	.word	honeys1
	.word	fireballs
	.word	collision
	.word	ultimate
	.word	156180629
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	collisionmapBitmap
	.size	updateHoneys1, .-updateHoneys1
	.align	2
	.global	updateHoneysball
	.type	updateHoneysball, %function
updateHoneysball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	stmfd	sp!, {r4, lr}
	beq	.L1209
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #24]
	ldr	ip, [r0, #20]
	add	r3, r1, r3
	sub	r3, r3, #1
	ldr	lr, [r0, #8]
	add	r3, r3, ip
	add	r2, r3, lr, lsl #8
	ldr	r4, .L1226
	mov	r2, r2, asl #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	beq	.L1210
	ldr	r2, [r0, #28]
	add	r2, lr, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [r4, r3]
	cmp	r3, #0
	beq	.L1210
	ldr	r3, [r0, #44]
	cmp	r3, #6
	beq	.L1224
	cmp	r3, #5
	beq	.L1225
	cmp	r3, #8
	bne	.L1214
	rsb	r1, ip, r1
	str	r1, [r0, #12]
.L1209:
	ldr	r1, .L1226+4
	ldr	r2, .L1226+8
	ldr	r3, .L1226+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #480
.L1215:
	ldr	r1, [r3]
	ldr	r2, [r3, #-4]
	rsb	r1, lr, r1
	rsb	r2, ip, r2
	str	r1, [r3, #-8]
	str	r2, [r3, #-12]
	add	r3, r3, #48
	cmp	r0, r3
	bne	.L1215
	ldmfd	sp!, {r4, lr}
	bx	lr
.L1210:
	mov	ip, #0
	mov	r1, #512
	ldr	r3, [r0, #36]
	ldr	r2, .L1226+16
	mov	r3, r3, asl #3
	str	ip, [r0, #32]
	strh	r1, [r2, r3]	@ movhi
	b	.L1209
.L1214:
	cmp	r3, #7
	addeq	r1, r1, ip
	streq	r1, [r0, #12]
	b	.L1209
.L1225:
	ldr	r3, [r0, #16]
	add	lr, r3, lr
	str	lr, [r0, #8]
	b	.L1209
.L1224:
	ldr	r3, [r0, #16]
	rsb	lr, r3, lr
	str	lr, [r0, #8]
	b	.L1209
.L1227:
	.align	2
.L1226:
	.word	collisionmapBitmap
	.word	hOff
	.word	vOff
	.word	honeysballs+12
	.word	shadowOAM
	.size	updateHoneysball, .-updateHoneysball
	.align	2
	.global	initHoneysball2
	.type	initHoneysball2, %function
initHoneysball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #46
	mov	ip, #8
	mvn	lr, #7
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L1232
.L1229:
	str	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #56
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	lr, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L1229
	ldr	lr, [sp], #4
	bx	lr
.L1233:
	.align	2
.L1232:
	.word	honeysballs2
	.size	initHoneysball2, .-initHoneysball2
	.align	2
	.global	releaseHoneysball2
	.type	releaseHoneysball2, %function
releaseHoneysball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L1250
	mov	r3, #0
	mov	r2, r0
.L1241:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L1247
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bne	.L1241
	bx	lr
.L1247:
	ldr	r1, .L1250+4
	ldr	r2, [r1, #36]
	cmp	r2, #15
	stmfd	sp!, {r4, r5, r6, r7, lr}
	beq	.L1248
	cmp	r2, #14
	beq	.L1249
	cmp	r2, #17
	bne	.L1239
	mov	r6, #8
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	r4, [ip, #28]
	ldr	lr, [r1, #8]
	add	lr, r4, lr
	add	r4, r4, r4, lsr #31
	ldr	r5, [r1, #12]
	add	r1, lr, r4, asr #1
	ldr	lr, [ip, #24]
	rsb	lr, lr, r5
	str	r6, [ip, #44]
	str	r1, [ip, #8]
	str	lr, [ip, #12]
.L1237:
	mov	r1, #1
	add	r3, r2, r3
	add	r0, r0, r3, lsl #4
	str	r1, [r0, #32]
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L1249:
	mov	r5, #5
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6, lsl #1
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L1237
.L1248:
	mov	r5, #6
	mov	r2, r3, asl #1
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	lr, [ip, #24]
	ldr	r4, [r1, #8]
	ldr	r6, [ip, #28]
	ldr	r1, [r1, #12]
	add	lr, lr, lr, lsr #31
	add	r4, r4, r6
	add	lr, r1, lr, asr #1
	str	r5, [ip, #44]
	str	r4, [ip, #8]
	str	lr, [ip, #12]
	b	.L1237
.L1239:
	cmp	r2, #16
	movne	r2, r3, asl #1
	bne	.L1237
	mov	r6, #7
	mov	r2, r3, asl #1
	ldr	lr, .L1250+8
	add	ip, r2, r3
	add	ip, r0, ip, lsl #4
	ldr	r4, [ip, #28]
	ldr	r7, [lr, #24]
	ldr	lr, [r1, #8]
	ldr	r5, [r1, #12]
	add	lr, r4, lr
	add	r4, r4, r4, lsr #31
	add	r1, lr, r4, asr #1
	add	lr, r5, r7
	str	r6, [ip, #44]
	str	r1, [ip, #8]
	str	lr, [ip, #12]
	b	.L1237
.L1251:
	.align	2
.L1250:
	.word	honeysballs2
	.word	honeys2
	.word	honeys1
	.size	releaseHoneysball2, .-releaseHoneysball2
	.align	2
	.global	updateHoneys2
	.type	updateHoneys2, %function
updateHoneys2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	ldr	r5, .L1310
	ldr	r3, [r5, #60]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L1253
	ldr	r3, [r5, #8]
	cmp	r3, #17
	bgt	.L1304
.L1271:
	ldr	r4, .L1310+4
	mov	r9, #0
	ldr	r8, .L1310
	ldr	r7, .L1310+8
	add	r6, r4, #480
	b	.L1262
.L1260:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L1305
.L1262:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L1260
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8, #52]
	strne	r9, [r4, #32]
	subne	r3, r3, #25
	add	r4, r4, #48
	strne	r3, [r8, #52]
	cmp	r6, r4
	bne	.L1262
.L1305:
	ldr	r4, .L1310+12
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L1306
.L1264:
	ldr	r3, [r5, #52]
	ldr	r2, .L1310
	cmp	r3, #0
	streq	r3, [r2, #60]
	ldr	r2, [r5, #64]
	ldr	r3, .L1310+16
	smull	r0, r1, r3, r2
	mov	r3, r2, asr #31
	rsb	r3, r3, r1, asr #1
	rsb	r1, r3, r3, lsl #3
	rsb	r3, r3, r1, lsl #3
	cmp	r2, r3
	addne	r2, r2, #1
	beq	.L1307
	str	r2, [r5, #64]
	b	.L1269
.L1253:
	mov	r1, #512
	ldr	r3, [r5, #56]
	ldr	r2, .L1310+20
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L1269:
	ldr	r2, .L1310+24
	ldr	r3, .L1310+28
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r5, #4]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	b	moveHoneys2
.L1304:
	ldr	r2, [r5, #28]
	add	r2, r3, r2
	cmp	r2, #240
	bgt	.L1271
	ldr	r1, [r5, #12]
	cmp	r1, #17
	ble	.L1271
	ldr	r0, [r5, #24]
	add	r0, r1, r0
	cmp	r0, #240
	bgt	.L1271
	ldr	ip, [r5, #36]
	cmp	ip, #14
	beq	.L1308
	cmp	ip, #16
	beq	.L1309
	cmp	ip, #17
	bne	.L1258
	ldr	r0, [r5, #20]
	rsb	r0, r0, r1
	add	r3, r0, r3, lsl #8
	ldr	ip, .L1310+32
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L1271
	sub	r2, r2, #1
	add	r2, r0, r2, lsl #8
	mov	r3, r2, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	subne	r1, r1, #1
	strne	r1, [r5, #12]
	b	.L1271
.L1307:
	bl	releaseHoneysball2
	mov	r2, #1
	str	r2, [r5, #64]
	b	.L1269
.L1306:
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #24]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	ldr	r6, .L1310+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #0
	ldr	r3, .L1310
	strne	r2, [r4, #32]
	strne	r2, [r3, #60]
	b	.L1264
.L1308:
	ldr	ip, [r5, #16]
	sub	lr, r2, #1
	add	lr, lr, ip
	mov	ip, lr, asl #8
	add	r1, r1, ip
	ldr	r2, .L1310+32
	mov	r1, r1, asl #1
	ldrh	r1, [r2, r1]
	cmp	r1, #0
	beq	.L1271
	add	ip, r0, ip
	add	ip, r2, ip, lsl #1
	ldrh	r2, [ip, #-2]
	cmp	r2, #0
	addne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L1271
.L1309:
	ldr	r6, [r5, #20]
	add	ip, r0, r6
	add	ip, ip, r3, lsl #8
	ldr	r4, .L1310+32
	mov	ip, ip, asl #1
	ldrh	r3, [r4, ip]
	cmp	r3, #0
	beq	.L1271
	sub	lr, r2, #1
	add	r3, r0, lr, lsl #8
	add	r3, r3, r6
	add	r3, r4, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	addne	r1, r1, #1
	strne	r1, [r5, #12]
	b	.L1271
.L1258:
	cmp	ip, #15
	bne	.L1271
	ldr	ip, [r5, #16]
	rsb	ip, ip, r3
	mov	r2, ip, asl #8
	add	r1, r1, r2
	ldr	ip, .L1310+32
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	beq	.L1271
	add	r2, r0, r2
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	subne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L1271
.L1311:
	.align	2
.L1310:
	.word	honeys2
	.word	fireballs
	.word	collision
	.word	ultimate
	.word	156180629
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	collisionmapBitmap
	.size	updateHoneys2, .-updateHoneys2
	.align	2
	.global	updateHoneysball2
	.type	updateHoneysball2, %function
updateHoneysball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	stmfd	sp!, {r4, lr}
	beq	.L1314
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #24]
	ldr	ip, [r0, #20]
	add	r3, r1, r3
	sub	r3, r3, #1
	ldr	lr, [r0, #8]
	add	r3, r3, ip
	add	r2, r3, lr, lsl #8
	ldr	r4, .L1331
	mov	r2, r2, asl #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	beq	.L1315
	ldr	r2, [r0, #28]
	add	r2, lr, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [r4, r3]
	cmp	r3, #0
	beq	.L1315
	ldr	r3, [r0, #44]
	cmp	r3, #6
	beq	.L1329
	cmp	r3, #5
	beq	.L1330
	cmp	r3, #8
	bne	.L1319
	rsb	r1, ip, r1
	str	r1, [r0, #12]
.L1314:
	ldr	r1, .L1331+4
	ldr	r2, .L1331+8
	ldr	r3, .L1331+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #480
.L1320:
	ldr	r1, [r3]
	ldr	r2, [r3, #-4]
	rsb	r1, lr, r1
	rsb	r2, ip, r2
	str	r1, [r3, #-8]
	str	r2, [r3, #-12]
	add	r3, r3, #48
	cmp	r0, r3
	bne	.L1320
	ldmfd	sp!, {r4, lr}
	bx	lr
.L1315:
	mov	ip, #0
	mov	r1, #512
	ldr	r3, [r0, #36]
	ldr	r2, .L1331+16
	mov	r3, r3, asl #3
	str	ip, [r0, #32]
	strh	r1, [r2, r3]	@ movhi
	b	.L1314
.L1319:
	cmp	r3, #7
	addeq	r1, r1, ip
	streq	r1, [r0, #12]
	b	.L1314
.L1330:
	ldr	r3, [r0, #16]
	add	lr, r3, lr
	str	lr, [r0, #8]
	b	.L1314
.L1329:
	ldr	r3, [r0, #16]
	rsb	lr, r3, lr
	str	lr, [r0, #8]
	b	.L1314
.L1332:
	.align	2
.L1331:
	.word	collisionmapBitmap
	.word	hOff
	.word	vOff
	.word	honeysballs2+12
	.word	shadowOAM
	.size	updateHoneysball2, .-updateHoneysball2
	.align	2
	.global	updateGame
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1360
	ldr	r2, [r3, #28]
	cmp	r2, #0
	stmfd	sp!, {r4, r5, r6, lr}
	bne	.L1355
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L1360+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L1360+8
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L1356
.L1336:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L1360+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L1360+12
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L1357
.L1338:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L1360+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	ldr	r3, .L1360+16
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L1358
.L1340:
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L1360+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L1341:
	bl	updateCin
	bl	updateWinter1
	bl	updateWinter2
	bl	updateUFireball
	bl	updateHoneys1
	bl	updateHoneys2
	bl	updateReadyU
	ldr	r3, .L1360+20
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L1359
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L1360+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L1344:
	ldr	r4, .L1360+24
	add	r5, r4, #480
.L1343:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateFireball
	cmp	r5, r4
	bne	.L1343
	ldr	r4, .L1360+28
	add	r5, r4, #480
.L1345:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateWinterball
	cmp	r5, r4
	bne	.L1345
	ldr	r4, .L1360+32
	add	r5, r4, #480
.L1346:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateWinterball2
	cmp	r4, r5
	bne	.L1346
	ldr	r4, .L1360+36
	add	r5, r4, #480
.L1347:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateHoneysball
	cmp	r4, r5
	bne	.L1347
	ldr	r4, .L1360+40
	add	r5, r4, #480
.L1348:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateHoneysball2
	cmp	r4, r5
	bne	.L1348
	ldr	r2, .L1360+44
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L1355:
	ldr	r2, .L1360+48
	ldr	r2, [r2]
	cmp	r2, #1
	movle	r2, #0
	strle	r2, [r3, #28]
	ldr	r3, .L1360+8
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L1336
.L1356:
	ldr	r2, .L1360+48
	ldr	r2, [r2]
	cmp	r2, #2
	movle	r2, #0
	strle	r2, [r3, #28]
	ldr	r3, .L1360+12
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L1338
.L1357:
	ldr	r2, .L1360+48
	ldr	r2, [r2]
	cmp	r2, #3
	movle	r2, #0
	strle	r2, [r3, #28]
	ldr	r3, .L1360+16
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L1340
.L1358:
	ldr	r2, .L1360+48
	ldr	r2, [r2]
	cmp	r2, #4
	movle	r2, #0
	strle	r2, [r3, #28]
	b	.L1341
.L1359:
	bl	updateRock.part.11
	b	.L1344
.L1361:
	.align	2
.L1360:
	.word	h2
	.word	shadowOAM
	.word	h3
	.word	h4
	.word	h5
	.word	rock
	.word	fireballs
	.word	winterballs
	.word	winterballs2
	.word	honeysballs
	.word	honeysballs2
	.word	frames
	.word	cinLives
	.size	updateGame, .-updateGame
	.align	2
	.global	drawHoneysball2
	.type	drawHoneysball2, %function
drawHoneysball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #32]
	cmp	r2, #0
	bne	drawHoneysball2.part.28
.L1363:
	mov	r1, #512
	ldr	r3, [r0, #36]
	ldr	r2, .L1364
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L1365:
	.align	2
.L1364:
	.word	shadowOAM
	.size	drawHoneysball2, .-drawHoneysball2
	.align	2
	.global	drawHoneysball
	.type	drawHoneysball, %function
drawHoneysball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawHoneysball2
	.size	drawHoneysball, .-drawHoneysball
	.comm	useUF,4,4
	.comm	frames,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	bossStage,4,4
	.comm	cinLives,4,4
	.comm	honeysballs2,480,4
	.comm	winterballs2,480,4
	.comm	honeysballs,480,4
	.comm	winterballs,480,4
	.comm	fireballs,480,4
	.comm	h5,32,4
	.comm	h4,32,4
	.comm	h3,32,4
	.comm	h2,32,4
	.comm	h1,32,4
	.comm	honeys2,68,4
	.comm	honeys1,68,4
	.comm	winter2,72,4
	.comm	rock,32,4
	.comm	uSprite2,32,4
	.comm	uSprite,32,4
	.comm	ultimate,48,4
	.comm	winter1,72,4
	.comm	cin,68,4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
