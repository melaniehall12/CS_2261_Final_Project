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
	.file	"game2.c"
	.text
	.align	2
	.type	drawHeart1s.part.0, %function
drawHeart1s.part.0:
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
	.size	drawHeart1s.part.0, .-drawHeart1s.part.0
	.align	2
	.type	drawHeart2s.part.1, %function
drawHeart2s.part.1:
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
	.size	drawHeart2s.part.1, .-drawHeart2s.part.1
	.align	2
	.type	drawHeart3s.part.2, %function
drawHeart3s.part.2:
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
	.size	drawHeart3s.part.2, .-drawHeart3s.part.2
	.align	2
	.type	drawHeart4s.part.3, %function
drawHeart4s.part.3:
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
	.size	drawHeart4s.part.3, .-drawHeart4s.part.3
	.align	2
	.type	drawHeart5s.part.4, %function
drawHeart5s.part.4:
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
	.size	drawHeart5s.part.4, .-drawHeart5s.part.4
	.align	2
	.type	drawCin2.part.6, %function
drawCin2.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L79
	ldr	r3, [r2, #4]
	mov	r3, r3, asl #23
	mvn	r3, r3, lsr #6
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #36]
	ldr	r1, .L79+4
	ldrb	ip, [r2]	@ zero_extendqisi2
	cmp	r0, #0
	strh	r3, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	bne	.L22
	ldr	r3, .L79+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L23
	ldr	r0, .L79+12
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L23
.L24:
	mov	r3, #5504
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L23:
	tst	r3, #2
	beq	.L25
	ldr	r3, .L79+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L25
	ldr	r3, .L79+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L24
.L25:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L22:
	cmp	r0, #1
	bne	.L27
	ldr	r3, .L79+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L28
	ldr	r0, .L79+12
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L28
.L29:
	ldr	r3, .L79+20
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L28:
	tst	r3, #2
	beq	.L30
	ldr	r3, .L79+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L30
	ldr	r3, .L79+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L29
.L30:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	add	r3, r3, #4
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L27:
	cmp	r0, #2
	bne	.L32
	ldr	r3, .L79+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L33
	ldr	r0, .L79+12
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L33
.L34:
	ldr	r3, .L79+24
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L33:
	tst	r3, #2
	beq	.L35
	ldr	r3, .L79+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L35
	ldr	r3, .L79+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L34
.L35:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	add	r3, r3, #8
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L32:
	cmp	r0, #3
	bne	.L78
	ldr	r3, .L79+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L36
	ldr	r0, .L79+12
	ldrh	r0, [r0]
	tst	r0, #1
	beq	.L37
.L36:
	tst	r3, #2
	beq	.L38
	ldr	r3, .L79+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L38
	ldr	r3, .L79+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L37
.L38:
	ldr	r3, [r2, #44]
	mov	r3, r3, asl #7
	add	r3, r3, #12
	orr	r3, r3, #5120
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L78:
	bx	lr
.L37:
	ldr	r3, .L79+28
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L80:
	.align	2
.L79:
	.word	cin
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	useUF
	.word	5508
	.word	5512
	.word	5516
	.size	drawCin2.part.6, .-drawCin2.part.6
	.align	2
	.type	updateUFireball2.part.7, %function
updateUFireball2.part.7:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L96
	ldr	r2, [r3]
	cmp	r2, #0
	stmfd	sp!, {r4, lr}
	ldr	r1, [r3, #4]
	ble	.L83
	ldr	r0, [r3, #24]
	ldr	ip, .L96+4
	add	r0, r1, r0
	cmp	r0, ip
	bgt	.L83
	ldr	r0, [r3, #28]
	add	r0, r2, r0
	cmp	r0, ip
	movle	r0, #1
	movgt	r0, #0
	cmp	r1, #0
	movle	r0, #0
	cmp	r0, #0
	beq	.L83
	ldr	r0, [r3, #44]
	cmp	r0, #6
	beq	.L94
	cmp	r0, #5
	beq	.L95
	cmp	r0, #8
	bne	.L88
	ldr	r0, [r3, #20]
	rsb	r1, r0, r1
	str	r1, [r3, #4]
	b	.L87
.L83:
	mov	r4, #512
	mov	ip, #0
	ldr	r0, [r3, #40]
	ldr	lr, .L96+8
	mov	r0, r0, asl #3
	strh	r4, [lr, r0]	@ movhi
	str	ip, [r3, #32]
.L87:
	ldr	ip, .L96+12
	ldr	r0, .L96+16
	ldr	ip, [ip]
	ldr	r0, [r0]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L94:
	ldr	r0, [r3, #16]
	rsb	r2, r0, r2
	str	r2, [r3]
.L85:
	ldr	r2, [r3]
	b	.L87
.L88:
	cmp	r0, #7
	bne	.L85
	ldr	r0, [r3, #20]
	add	r1, r1, r0
	str	r1, [r3, #4]
	b	.L87
.L95:
	ldr	r0, [r3, #16]
	add	r2, r2, r0
	str	r2, [r3]
	b	.L87
.L97:
	.align	2
.L96:
	.word	ultimate
	.word	257
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	updateUFireball2.part.7, .-updateUFireball2.part.7
	.align	2
	.type	drawUFireball2.part.8, %function
drawUFireball2.part.8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L116
	ldr	r3, [r2, #4]
	ldr	r1, [r2, #40]
	ldr	r0, [r2, #44]
	ldr	ip, .L116+4
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
	beq	.L111
	cmp	r0, #6
	beq	.L112
	cmp	r0, #7
	bne	.L105
	ldr	r3, [r2, #36]
	ldr	r1, .L116+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	beq	.L113
	ldr	r1, .L116+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L116+16
	streqh	r1, [lr, #4]	@ movhi
	b	.L108
.L112:
	ldr	r3, [r2, #36]
	ldr	r1, .L116+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	beq	.L114
	ldr	r1, .L116+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L116+20
	streqh	r1, [lr, #4]	@ movhi
	b	.L108
.L111:
	ldr	r3, [r2, #36]
	ldr	r1, .L116+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	beq	.L115
	ldr	r1, .L116+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L116+24
	streqh	r1, [lr, #4]	@ movhi
.L108:
	add	r3, r3, #1
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L115:
	ldr	r1, .L116+28
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L114:
	ldr	r1, .L116+32
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L113:
	ldr	r1, .L116+36
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L105:
	cmp	r0, #8
	ldr	r3, [r2, #36]
	bne	.L108
	ldr	r1, .L116+8
	smull	r0, r1, r3, r1
	mov	r0, r3, asr #31
	rsb	r1, r0, r1, asr #1
	add	r1, r1, r1, lsl #2
	cmp	r3, r1
	bne	.L109
	ldr	r1, .L116+40
	add	r3, r3, #1
	strh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L109:
	ldr	r1, .L116+12
	smull	ip, r1, r3, r1
	add	r1, r1, r3
	rsb	r0, r0, r1, asr #2
	rsb	r0, r0, r0, lsl #3
	cmp	r3, r0
	ldreq	r1, .L116+44
	add	r3, r3, #1
	streqh	r1, [lr, #4]	@ movhi
	str	r3, [r2, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L117:
	.align	2
.L116:
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
	.size	drawUFireball2.part.8, .-drawUFireball2.part.8
	.align	2
	.type	drawFireball2.part.9, %function
drawFireball2.part.9:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #40]
	ldr	r1, [r0, #44]
	ldr	ip, .L136
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
	beq	.L131
	cmp	r1, #6
	beq	.L132
	cmp	r1, #7
	bne	.L125
	ldr	r3, [r0, #36]
	ldr	r2, .L136+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L133
	ldr	r2, .L136+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L136+12
	streqh	r2, [lr, #4]	@ movhi
	b	.L128
.L132:
	ldr	r3, [r0, #36]
	ldr	r2, .L136+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L134
	ldr	r2, .L136+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L136+16
	streqh	r2, [lr, #4]	@ movhi
	b	.L128
.L131:
	ldr	r3, [r0, #36]
	ldr	r2, .L136+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L135
	ldr	r2, .L136+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L136+20
	streqh	r2, [lr, #4]	@ movhi
.L128:
	add	r3, r3, #1
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L135:
	ldr	r2, .L136+24
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L134:
	ldr	r2, .L136+28
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L133:
	ldr	r2, .L136+32
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L125:
	cmp	r1, #8
	ldr	r3, [r0, #36]
	bne	.L128
	ldr	r2, .L136+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	bne	.L129
	ldr	r2, .L136+36
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L129:
	ldr	r2, .L136+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L136+40
	add	r3, r3, #1
	streqh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L137:
	.align	2
.L136:
	.word	shadowOAM
	.word	1717986919
	.word	-1840700269
	.word	8284
	.word	9306
	.word	9304
	.word	9240
	.word	9242
	.word	9244
	.word	9246
	.word	9310
	.size	drawFireball2.part.9, .-drawFireball2.part.9
	.align	2
	.type	drawJackball.part.10, %function
drawJackball.part.10:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #44]
	ldr	r1, [r0, #40]
	ldr	ip, .L155
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
	beq	.L151
	cmp	r1, #6
	beq	.L152
	cmp	r1, #7
	bne	.L145
	ldr	r3, [r0, #36]
	ldr	r2, .L155+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L153
	ldr	r2, .L155+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L155+12
	streqh	r2, [lr, #4]	@ movhi
.L148:
	add	r3, r3, #1
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L152:
	ldr	r3, [r0, #36]
	ldr	r2, .L155+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	beq	.L154
	ldr	r2, .L155+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L155+16
	streqh	r2, [lr, #4]	@ movhi
	b	.L148
.L151:
	ldr	r3, [r0, #36]
	ldr	r2, .L155+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	moveq	r2, #26112
	streqh	r2, [lr, #4]	@ movhi
	beq	.L148
	ldr	r2, .L155+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L155+20
	streqh	r2, [lr, #4]	@ movhi
	b	.L148
.L154:
	ldr	r2, .L155+24
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L153:
	ldr	r2, .L155+28
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L145:
	cmp	r1, #8
	ldr	r3, [r0, #36]
	bne	.L148
	ldr	r2, .L155+4
	smull	r1, r2, r3, r2
	mov	r1, r3, asr #31
	rsb	r2, r1, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r3, r2
	bne	.L149
	ldr	r2, .L155+32
	add	r3, r3, #1
	strh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L149:
	ldr	r2, .L155+8
	smull	ip, r2, r3, r2
	add	r2, r2, r3
	rsb	r1, r1, r2, asr #2
	rsb	r1, r1, r1, lsl #3
	cmp	r3, r1
	ldreq	r2, .L155+36
	add	r3, r3, #1
	streqh	r2, [lr, #4]	@ movhi
	str	r3, [r0, #36]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	shadowOAM
	.word	1717986919
	.word	-1840700269
	.word	26180
	.word	26178
	.word	26176
	.word	26114
	.word	26116
	.word	26118
	.word	26182
	.size	drawJackball.part.10, .-drawJackball.part.10
	.align	2
	.global	initHearts2
	.type	initHearts2, %function
initHearts2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #60
	mov	ip, #61
	mov	r0, #30
	mov	r1, #62
	mov	r3, #8
	mov	r5, #1
	mov	fp, #10
	mov	r10, #20
	mov	r9, #40
	mov	r8, #63
	mov	r7, #50
	mov	r6, #64
	ldr	r4, .L159
	str	lr, [r4, #24]
	ldr	lr, .L159+4
	ldr	r2, .L159+8
	str	ip, [lr, #24]
	ldr	ip, .L159+12
	ldr	r2, [r2]
	str	r0, [ip, #12]
	str	r1, [ip, #24]
	ldr	r0, .L159+16
	ldr	r1, .L159+20
	add	r2, r2, #102
	str	r2, [r4, #8]
	str	fp, [r4, #12]
	str	r3, [r4, #16]
	str	r2, [lr, #8]
	str	r10, [lr, #12]
	str	r3, [r4, #20]
	str	r2, [ip, #8]
	str	r2, [r0, #8]
	str	r2, [r1, #8]
	str	r9, [r0, #12]
	str	r8, [r0, #24]
	str	r7, [r1, #12]
	str	r6, [r1, #24]
	str	r3, [lr, #16]
	str	r3, [lr, #20]
	str	r3, [ip, #16]
	str	r3, [ip, #20]
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	str	r5, [r4, #28]
	str	r5, [lr, #28]
	str	r5, [ip, #28]
	str	r5, [r0, #28]
	str	r5, [r1, #28]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L160:
	.align	2
.L159:
	.word	h1
	.word	h2
	.word	cin
	.word	h3
	.word	h4
	.word	h5
	.size	initHearts2, .-initHearts2
	.align	2
	.global	initGame2
	.type	initGame2, %function
initGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #228
	ldr	lr, .L167
	str	r9, [lr, #8]
	mov	r9, #120
	str	r9, [lr, #12]
	mov	r9, #3
	mov	r4, #1
	str	r9, [lr, #48]
	ldr	r9, .L167+4
	str	r4, [lr, #16]
	str	r4, [lr, #20]
	str	r4, [lr, #36]
	mov	r0, r4
	str	r4, [r9, #32]
	mov	r4, #64
	mov	r5, #0
	mov	fp, #18
	mov	r10, #24
	str	r4, [r9, #16]
	mov	r4, #32
	str	r5, [lr, #32]
	str	fp, [lr, #24]
	str	r10, [lr, #28]
	str	r5, [lr, #44]
	ldr	lr, .L167+8
	mov	r8, #47
	mov	r7, #100
	mov	r6, #83
	str	r4, [lr, #16]
	mov	r4, #2
	mov	r1, r5
	mov	r3, #4
	mov	r2, #16
	mvn	ip, #15
	str	r8, [lr, #20]
	str	r4, [lr, #32]
	str	r7, [lr, #8]
	str	r6, [lr, #12]
	str	r8, [r9, #20]
	str	r7, [r9, #8]
	str	r6, [r9, #12]
	ldr	lr, .L167+12
.L162:
	str	r3, [lr, #40]
	add	r3, r3, #1
	cmp	r3, #14
	str	r2, [lr, #28]
	str	r2, [lr, #24]
	str	ip, [lr]
	str	r1, [lr, #4]
	str	r0, [lr, #20]
	str	r0, [lr, #16]
	str	r1, [lr, #32]
	mov	r7, #16
	add	lr, lr, #48
	mvn	r8, #15
	mov	r4, #0
	mov	r6, #1
	bne	.L162
	mov	r2, #3
	mov	ip, r7
	mov	r5, r8
	mov	r0, r4
	mov	r1, r6
	ldr	lr, .L167+16
	str	r2, [lr, #40]
	ldr	r2, .L167+20
	str	r7, [lr, #28]
	str	r7, [lr, #24]
	str	r8, [lr]
	str	r4, [lr, #4]
	str	r6, [lr, #20]
	str	r6, [lr, #16]
	str	r4, [lr, #32]
	add	lr, r2, #960
.L163:
	str	r3, [r2, #44]
	str	ip, [r2, #28]
	str	ip, [r2, #24]
	str	r5, [r2, #8]
	str	r0, [r2, #12]
	str	r1, [r2, #20]
	str	r1, [r2, #16]
	str	r0, [r2, #32]
	add	r2, r2, #48
	cmp	r2, lr
	add	r3, r3, #1
	mov	r4, #0
	bne	.L163
	mov	r3, #34
	mov	r0, #25
	mov	r1, #98
	mov	lr, #149
	mov	ip, #35
	mov	r7, #64
	mov	r6, #85
	mov	r5, #28
	ldr	r2, .L167+24
	str	r3, [r2, #24]
	ldr	r3, .L167+28
	str	r0, [r2, #20]
	str	r4, [r2, #28]
	str	r7, [r2, #16]
	str	r6, [r2, #12]
	str	r1, [r2, #8]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r4, [r3, #28]
	str	r5, [r3, #16]
	str	lr, [r3, #12]
	str	ip, [r3, #24]
	mov	r5, #96
	bl	initHearts2
	mov	ip, #8
	mov	r1, #400
	ldr	lr, .L167+32
	ldr	r3, .L167+36
	ldr	r0, .L167+40
	ldr	r2, .L167+44
	str	r5, [lr]
	str	r4, [r3]
	str	ip, [r0]
	str	r1, [r2]
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L168:
	.align	2
.L167:
	.word	cin
	.word	jack
	.word	jack2
	.word	fireballs
	.word	ultimate
	.word	jackballs
	.word	uSprite
	.word	uSprite2
	.word	vOff
	.word	useUF
	.word	hOff
	.word	bossHealth
	.size	initGame2, .-initGame2
	.align	2
	.global	updateHeart1s
	.type	updateHeart1s, %function
updateHeart1s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L170
	ldr	r2, .L170+4
	ldr	r0, .L170+8
	ldr	ip, [r2]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	ldr	r0, [r0]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #4]
	str	r2, [r3]
	bx	lr
.L171:
	.align	2
.L170:
	.word	h1
	.word	hOff
	.word	vOff
	.size	updateHeart1s, .-updateHeart1s
	.align	2
	.global	updateHeart2s
	.type	updateHeart2s, %function
updateHeart2s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L175
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L173
	ldr	r2, .L175+4
	ldr	r2, [r2]
	cmp	r2, #1
	movle	r2, #0
	strle	r2, [r3, #28]
.L174:
	ldr	r1, .L175+8
	ldr	r2, .L175+12
	ldr	ip, [r1]
	ldr	r0, [r2]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #4]
	str	r2, [r3]
	bx	lr
.L173:
	mov	r0, #512
	ldr	r2, [r3, #24]
	ldr	r1, .L175+16
	mov	r2, r2, asl #3
	strh	r0, [r1, r2]	@ movhi
	b	.L174
.L176:
	.align	2
.L175:
	.word	h2
	.word	cinLives
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	updateHeart2s, .-updateHeart2s
	.align	2
	.global	updateHeart3s
	.type	updateHeart3s, %function
updateHeart3s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L180
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L178
	ldr	r2, .L180+4
	ldr	r2, [r2]
	cmp	r2, #2
	movle	r2, #0
	strle	r2, [r3, #28]
.L179:
	ldr	r1, .L180+8
	ldr	r2, .L180+12
	ldr	ip, [r1]
	ldr	r0, [r2]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #4]
	str	r2, [r3]
	bx	lr
.L178:
	mov	r0, #512
	ldr	r2, [r3, #24]
	ldr	r1, .L180+16
	mov	r2, r2, asl #3
	strh	r0, [r1, r2]	@ movhi
	b	.L179
.L181:
	.align	2
.L180:
	.word	h3
	.word	cinLives
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	updateHeart3s, .-updateHeart3s
	.align	2
	.global	updateHeart4s
	.type	updateHeart4s, %function
updateHeart4s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L185
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L183
	ldr	r2, .L185+4
	ldr	r2, [r2]
	cmp	r2, #3
	movle	r2, #0
	strle	r2, [r3, #28]
.L184:
	ldr	r1, .L185+8
	ldr	r2, .L185+12
	ldr	ip, [r1]
	ldr	r0, [r2]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #4]
	str	r2, [r3]
	bx	lr
.L183:
	mov	r0, #512
	ldr	r2, [r3, #24]
	ldr	r1, .L185+16
	mov	r2, r2, asl #3
	strh	r0, [r1, r2]	@ movhi
	b	.L184
.L186:
	.align	2
.L185:
	.word	h4
	.word	cinLives
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	updateHeart4s, .-updateHeart4s
	.align	2
	.global	updateHeart5s
	.type	updateHeart5s, %function
updateHeart5s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L190
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L188
	ldr	r2, .L190+4
	ldr	r2, [r2]
	cmp	r2, #4
	movle	r2, #0
	strle	r2, [r3, #28]
.L189:
	ldr	r1, .L190+8
	ldr	r2, .L190+12
	ldr	ip, [r1]
	ldr	r0, [r2]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #4]
	str	r2, [r3]
	bx	lr
.L188:
	mov	r0, #512
	ldr	r2, [r3, #24]
	ldr	r1, .L190+16
	mov	r2, r2, asl #3
	strh	r0, [r1, r2]	@ movhi
	b	.L189
.L191:
	.align	2
.L190:
	.word	h5
	.word	cinLives
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	updateHeart5s, .-updateHeart5s
	.align	2
	.global	drawHeart1s
	.type	drawHeart1s, %function
drawHeart1s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L195
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L194
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L195+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L194:
	b	drawHeart1s.part.0
.L196:
	.align	2
.L195:
	.word	h1
	.word	shadowOAM
	.size	drawHeart1s, .-drawHeart1s
	.align	2
	.global	drawHeart2s
	.type	drawHeart2s, %function
drawHeart2s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L200
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L199
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L200+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L199:
	b	drawHeart2s.part.1
.L201:
	.align	2
.L200:
	.word	h2
	.word	shadowOAM
	.size	drawHeart2s, .-drawHeart2s
	.align	2
	.global	drawHeart3s
	.type	drawHeart3s, %function
drawHeart3s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L205
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L204
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L205+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L204:
	b	drawHeart3s.part.2
.L206:
	.align	2
.L205:
	.word	h3
	.word	shadowOAM
	.size	drawHeart3s, .-drawHeart3s
	.align	2
	.global	drawHeart4s
	.type	drawHeart4s, %function
drawHeart4s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L210
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L209
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L210+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L209:
	b	drawHeart4s.part.3
.L211:
	.align	2
.L210:
	.word	h4
	.word	shadowOAM
	.size	drawHeart4s, .-drawHeart4s
	.align	2
	.global	drawHeart5s
	.type	drawHeart5s, %function
drawHeart5s:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L215
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L214
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L215+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L214:
	b	drawHeart5s.part.4
.L216:
	.align	2
.L215:
	.word	h5
	.word	shadowOAM
	.size	drawHeart5s, .-drawHeart5s
	.align	2
	.global	initReadyU2
	.type	initReadyU2, %function
initReadyU2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	ip, #25
	mov	r8, #64
	mov	r7, #85
	mov	r6, #34
	mov	r5, #28
	mov	r4, #149
	mov	lr, #35
	mov	r0, #0
	ldr	r3, .L219
	ldr	r1, [r3, #8]
	ldr	r2, .L219+4
	ldr	r3, .L219+8
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
.L220:
	.align	2
.L219:
	.word	cin
	.word	uSprite
	.word	uSprite2
	.size	initReadyU2, .-initReadyU2
	.align	2
	.global	launchReadyU2
	.type	launchReadyU2, %function
launchReadyU2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L223
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bxne	lr
	ldr	r2, .L223+4
	ldr	r1, [r2, #28]
	cmp	r1, #0
	moveq	r1, #1
	ldreq	r0, .L223+8
	streq	r1, [r3, #28]
	streq	r1, [r2, #28]
	streq	r1, [r0]
	bx	lr
.L224:
	.align	2
.L223:
	.word	uSprite
	.word	uSprite2
	.word	useUF
	.size	launchReadyU2, .-launchReadyU2
	.align	2
	.global	updateReadyU2
	.type	updateReadyU2, %function
updateReadyU2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L233
	ldr	r3, [r4, #60]
	cmp	r3, #500
	bge	.L232
	mov	ip, #512
	mov	r5, #0
	ldr	r6, .L233+4
	ldr	lr, .L233+8
	ldr	r1, [r6, #24]
	ldr	r2, [lr, #24]
	ldr	r0, .L233+12
	mov	r1, r1, asl #3
	mov	r2, r2, asl #3
	strh	ip, [r0, r1]	@ movhi
	str	r5, [r6, #28]
	str	r5, [lr, #28]
	strh	ip, [r0, r2]	@ movhi
	add	r3, r3, #1
.L228:
	str	r3, [r4, #60]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L232:
	ldr	r3, .L233+16
	mov	lr, pc
	bx	r3
	ldr	r2, .L233+4
	ldr	r3, .L233+8
	ldr	r0, .L233+20
	ldr	ip, .L233+24
	ldr	r1, .L233+28
	ldr	r5, [r0]
	ldr	ip, [ip]
	ldrh	r1, [r1]
	ldr	r0, [r3, #12]
	ldr	lr, [r2, #12]
	tst	r1, #2
	rsb	lr, ip, lr
	ldr	r1, [r3, #8]
	rsb	ip, ip, r0
	ldr	r0, [r2, #8]
	rsb	r1, r5, r1
	rsb	r0, r5, r0
	str	lr, [r2, #4]
	str	ip, [r3, #4]
	str	r0, [r2]
	str	r1, [r3]
	beq	.L229
	ldr	r3, .L233+32
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r3, #1
	beq	.L228
.L229:
	ldr	r3, [r4, #60]
	add	r3, r3, #1
	str	r3, [r4, #60]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L234:
	.align	2
.L233:
	.word	cin
	.word	uSprite
	.word	uSprite2
	.word	shadowOAM
	.word	launchReadyU
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.size	updateReadyU2, .-updateReadyU2
	.align	2
	.global	drawReadyU2
	.type	drawReadyU2, %function
drawReadyU2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L246
	ldr	r2, [r3, #28]
	cmp	r2, #0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r2, .L246+4
	beq	.L236
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L245
.L236:
	mov	r4, #512
	mov	ip, #0
	ldr	r0, [r3, #24]
	ldr	r1, [r2, #24]
	ldr	lr, .L246+8
	mov	r0, r0, asl #3
	mov	r1, r1, asl #3
	strh	r4, [lr, r0]	@ movhi
	str	ip, [r3, #28]
	strh	r4, [lr, r1]	@ movhi
	str	ip, [r2, #28]
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L245:
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
	ldr	r4, .L246+8
	ldrb	r6, [r2]	@ zero_extendqisi2
	mov	r3, r0, asl #3
	orr	r2, r5, #16384
	mov	r0, lr, asl #3
	ldr	r7, .L246+12
	ldr	lr, .L246+16
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
.L247:
	.align	2
.L246:
	.word	uSprite
	.word	uSprite2
	.word	shadowOAM
	.word	-32128
	.word	-32120
	.size	drawReadyU2, .-drawReadyU2
	.align	2
	.global	initCin2
	.type	initCin2, %function
initCin2:
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
	ldr	r3, .L250
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
.L251:
	.align	2
.L250:
	.word	cin
	.size	initCin2, .-initCin2
	.global	__aeabi_idivmod
	.align	2
	.global	moveCin2
	.type	moveCin2, %function
moveCin2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L266
	ldr	r3, .L266+4
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
	bne	.L253
	ldr	r0, [r4, #44]
	ldr	r3, .L266+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L253:
	ldr	r3, .L266+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L266+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L266+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L256
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	beq	.L259
.L258:
	add	r5, r5, #1
	str	r5, [r4, #32]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L256:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L265
.L259:
	mov	r3, #2
	str	r3, [r4, #36]
	b	.L258
.L265:
	ldr	r3, [r4, #36]
	cmp	r3, #4
	ldr	r3, .L266
	bne	.L258
	mov	r2, #0
	str	r6, [r3, #36]
	str	r2, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L267:
	.align	2
.L266:
	.word	cin
	.word	-2004318071
	.word	__aeabi_idivmod
	.word	67109120
	.size	moveCin2, .-moveCin2
	.align	2
	.global	updateCin2
	.type	updateCin2, %function
updateCin2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L338
	ldrh	r3, [r3, #48]
	tst	r3, #128
	sub	sp, sp, #20
	ldr	r5, .L338+4
	bne	.L325
	ldr	r0, [r5, #8]
	ldr	r2, [r5, #28]
	ldr	r3, [r5, #16]
	add	r2, r0, r2
	sub	r2, r2, #1
	ldr	r1, [r5, #12]
	add	r3, r2, r3
	add	r3, r1, r3, lsl #8
	ldr	r2, .L338+8
	mov	r1, r3, asl #1
	ldrh	r1, [r2, r1]
	cmp	r1, #0
	bne	.L328
.L325:
	ldr	r10, .L338+12
.L269:
	ldr	r3, .L338
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L271
	add	r2, r5, #8
	ldmia	r2, {r2, r3}
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	ldr	r1, .L338+8
	mov	r0, r3, asl #1
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	ldr	ip, .L338+4
	bne	.L329
.L271:
	ldr	r3, .L338
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L326
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	sub	r2, r2, #1
	add	r1, r2, r3, lsl #8
	ldr	ip, .L338+8
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	ldr	r0, .L338+4
	bne	.L330
.L326:
	ldr	fp, .L338+16
.L273:
	ldr	r3, .L338
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L275
	add	r1, r5, #20
	ldmia	r1, {r1, r3}
	ldr	r0, [r5, #12]
	add	r3, r0, r3
	sub	r3, r3, #1
	ldr	r2, [r5, #8]
	add	r3, r3, r1
	add	r1, r3, r2, lsl #8
	ldr	ip, .L338+8
	mov	r1, r1, asl #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	ldr	lr, .L338+4
	bne	.L331
.L275:
	ldr	r4, .L338+20
	ldrh	r2, [r4]
	tst	r2, #1
	bne	.L277
	ldr	r3, [r5, #56]
	add	r3, r3, #1
.L278:
	tst	r2, #2
	str	r3, [r5, #56]
	beq	.L283
	ldr	r3, .L338+24
	ldrh	r3, [r3]
	ands	r4, r3, #2
	beq	.L332
.L283:
	ldr	r6, [r5, #60]
	add	r6, r6, #1
.L282:
	ldr	r4, .L338+28
	str	r6, [r5, #60]
	mov	r9, #0
	ldr	r8, .L338+32
	ldr	r7, .L338+36
	add	r6, r4, #960
	b	.L287
.L285:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L333
.L287:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L285
	ldr	lr, [r4, #24]
	add	r0, r5, #8
	ldr	ip, [r4, #28]
	ldmia	r0, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r4, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #8]
	ldr	r3, [r5, #24]
	ldr	r2, [r5, #28]
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r7]
	strne	r9, [r4, #32]
	subne	r3, r3, #1
	add	r4, r4, #48
	strne	r3, [r7]
	cmp	r6, r4
	bne	.L287
.L333:
	ldr	r0, [fp]
	ldr	r1, [r10]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r5, #4]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	moveCin2
.L277:
	ldr	r3, .L338+24
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r5, #56]
	bne	.L327
	cmp	r3, #12
	bgt	.L280
.L327:
	add	r3, r3, #1
	b	.L278
.L332:
	ldr	r7, .L338+40
	ldr	r6, [r7]
	cmp	r6, #1
	bne	.L283
	ldr	r3, .L338+44
	mov	lr, pc
	bx	r3
	str	r4, [r7]
	b	.L282
.L331:
	ldr	r1, [lr, #28]
	add	r2, r2, r1
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L275
	add	r3, r1, r1, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [lr, #4]
	rsb	r3, r3, #120
	cmp	r2, r3
	beq	.L334
.L276:
	add	r0, r0, #1
	str	r0, [r5, #12]
	b	.L275
.L330:
	ldr	r1, [r0, #28]
	add	r3, r3, r1
	sub	r3, r3, #1
	add	r3, r2, r3, lsl #8
	mov	r3, r3, asl #1
	ldrh	r3, [ip, r3]
	cmp	r3, #0
	beq	.L326
	add	r3, r1, r1, lsr #31
	mov	r3, r3, asr #1
	ldr	r1, [r0, #4]
	rsb	r3, r3, #120
	cmp	r1, r3
	ldr	fp, .L338+16
	beq	.L335
.L274:
	str	r2, [r5, #12]
	b	.L273
.L329:
	ldr	r0, [ip, #24]
	add	r3, r3, r0
	add	r3, r1, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	beq	.L271
	add	r3, r0, r0, lsr #31
	mov	r3, r3, asr #1
	ldr	r1, [ip]
	rsb	r3, r3, #80
	cmp	r1, r3
	beq	.L336
.L272:
	str	r2, [r5, #8]
	b	.L271
.L328:
	ldr	r1, [r5, #24]
	add	r3, r3, r1
	add	r3, r2, r3, lsl #1
	ldrh	r3, [r3, #-2]
	cmp	r3, #0
	beq	.L325
	add	r3, r1, r1, lsr #31
	mov	r3, r3, asr #1
	ldr	r2, [r5]
	rsb	r3, r3, #80
	cmp	r2, r3
	ldr	r10, .L338+12
	beq	.L337
.L270:
	add	r0, r0, #1
	str	r0, [r5, #8]
	b	.L269
.L280:
	ldr	r3, .L338+48
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldrh	r2, [r4]
	b	.L278
.L334:
	ldr	r3, [fp]
	cmp	r3, #15
	ldr	ip, .L338+16
	bgt	.L276
	ldr	r7, .L338+52
	add	r3, r3, #1
	str	r3, [ip]
	ldr	r3, [r7, #12]
	ldr	r6, .L338+56
	add	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r6, #12]
	ldr	r1, .L338+60
	add	r3, r3, #1
	str	r3, [r6, #12]
	ldr	r3, [r1, #12]
	ldr	r2, .L338+64
	add	r3, r3, #1
	add	r0, r0, #1
	str	r3, [r1, #12]
	ldr	r3, [r2, #12]
	ldr	r4, .L338+68
	ldr	ip, .L338+72
	str	r0, [lr, #12]
	ldr	r0, .L338+76
	add	r3, r3, #1
	ldr	r1, [r4, #12]
	str	r3, [r2, #12]
	ldr	r2, [ip, #12]
	ldr	r3, [r0, #12]
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r1, [r4, #12]
	str	r2, [ip, #12]
	str	r3, [r0, #12]
	b	.L275
.L335:
	ldr	r3, [fp]
	cmp	r3, #0
	ble	.L274
	ldr	r7, .L338+52
	sub	r3, r3, #1
	str	r3, [fp]
	ldr	r3, [r7, #12]
	ldr	r6, .L338+56
	sub	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r6, #12]
	ldr	r1, .L338+60
	sub	r3, r3, #1
	str	r3, [r6, #12]
	ldr	r3, [r1, #12]
	ldr	r4, .L338+64
	sub	r3, r3, #1
	str	r3, [r1, #12]
	ldr	r3, [r4, #12]
	str	r2, [r0, #12]
	ldr	ip, .L338+68
	ldr	lr, .L338+72
	ldr	r0, .L338+76
	sub	r3, r3, #1
	ldr	r1, [ip, #12]
	ldr	r2, [lr, #12]
	str	r3, [r4, #12]
	ldr	r3, [r0, #12]
	sub	r1, r1, #1
	sub	r2, r2, #1
	sub	r3, r3, #1
	str	r1, [ip, #12]
	str	r2, [lr, #12]
	str	r3, [r0, #12]
	b	.L273
.L336:
	ldr	r3, [r10]
	cmp	r3, #0
	ldr	r0, .L338+12
	ble	.L272
	ldr	r7, .L338+52
	sub	r3, r3, #1
	str	r3, [r0]
	ldr	r3, [r7, #8]
	ldr	r6, .L338+56
	sub	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r6, #8]
	ldr	r1, .L338+60
	ldr	r4, .L338+64
	sub	r3, r3, #1
	str	r2, [ip, #8]
	str	r3, [r6, #8]
	ldr	r2, [r1, #8]
	ldr	r3, [r4, #8]
	ldr	lr, .L338+68
	ldr	r0, .L338+72
	ldr	ip, .L338+76
	sub	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [r1, #8]
	str	r3, [r4, #8]
	ldr	r1, [lr, #8]
	ldr	r2, [r0, #8]
	ldr	r3, [ip, #8]
	sub	r1, r1, #1
	sub	r2, r2, #1
	sub	r3, r3, #1
	str	r1, [lr, #8]
	str	r2, [r0, #8]
	str	r3, [ip, #8]
	b	.L271
.L337:
	ldr	r3, [r10]
	cmp	r3, #95
	bgt	.L270
	ldr	r7, .L338+52
	add	r3, r3, #1
	str	r3, [r10]
	ldr	r3, [r7, #8]
	ldr	r2, .L338+56
	add	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r2, #8]
	ldr	r1, .L338+60
	ldr	r6, .L338+64
	add	r3, r3, #1
	str	r3, [r2, #8]
	ldr	r2, [r1, #8]
	ldr	r3, [r6, #8]
	ldr	r4, .L338+68
	ldr	lr, .L338+72
	ldr	ip, .L338+76
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r1, #8]
	str	r3, [r6, #8]
	ldr	r1, [r4, #8]
	ldr	r2, [lr, #8]
	ldr	r3, [ip, #8]
	add	r0, r0, #1
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r0, [r5, #8]
	str	r1, [r4, #8]
	str	r2, [lr, #8]
	str	r3, [ip, #8]
	b	.L269
.L339:
	.align	2
.L338:
	.word	67109120
	.word	cin
	.word	collisionmap2Bitmap
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	jackballs
	.word	collision
	.word	cinLives
	.word	useUF
	.word	releaseUFireball
	.word	releaseFireball
	.word	h1
	.word	h2
	.word	h3
	.word	h4
	.word	h5
	.word	uSprite
	.word	uSprite2
	.size	updateCin2, .-updateCin2
	.align	2
	.global	drawCin2
	.type	drawCin2, %function
drawCin2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L345
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	drawCin2.part.6
.L344:
	ldr	r2, .L345+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L346:
	.align	2
.L345:
	.word	cin
	.word	shadowOAM
	.size	drawCin2, .-drawCin2
	.align	2
	.global	initUFireball2
	.type	initUFireball2, %function
initUFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r0, #16
	mvn	lr, #15
	mov	r1, #0
	mov	r2, #1
	mov	ip, #3
	ldr	r3, .L349
	str	lr, [r3]
	str	r0, [r3, #28]
	str	r0, [r3, #24]
	str	ip, [r3, #40]
	str	r1, [r3, #4]
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L350:
	.align	2
.L349:
	.word	ultimate
	.size	initUFireball2, .-initUFireball2
	.align	2
	.global	releaseUFireball2
	.type	releaseUFireball2, %function
releaseUFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L359
	ldr	r2, [r3, #32]
	cmp	r2, #0
	stmfd	sp!, {r4, r5, lr}
	bne	.L351
	ldr	r2, .L359+4
	ldr	r1, [r2, #36]
	cmp	r1, #1
	beq	.L358
	cmp	r1, #0
	bne	.L355
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
.L354:
	mov	r2, #1
	str	r2, [r3, #32]
.L351:
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L358:
	ldr	r0, [r2, #24]
	ldr	r1, [r3, #24]
	cmp	r0, #0
	add	ip, r0, #3
	movge	ip, r0
	cmp	r1, #0
	add	r0, r1, #3
	movge	r0, r1
	mov	r5, #6
	ldr	r1, [r2, #4]
	ldr	lr, [r3, #28]
	ldr	r4, [r2]
	add	lr, lr, lr, lsr #31
	add	r2, r1, ip, asr #2
	add	r2, r2, r0, asr #2
	add	lr, r4, lr, asr #1
	str	r2, [r3, #4]
	str	lr, [r3]
	str	r5, [r3, #44]
	b	.L354
.L355:
	cmp	r1, #3
	bne	.L356
	mov	lr, #8
	ldr	r1, [r3, #24]
	ldr	ip, [r2]
	add	r1, r1, r1, lsr #31
	ldr	r0, [r2, #4]
	mov	r2, r1, asr #1
	add	r1, ip, r2
	rsb	r2, r2, r0
	stmia	r3, {r1, r2}
	str	lr, [r3, #44]
	b	.L354
.L356:
	cmp	r1, #2
	bne	.L354
	mov	r4, #7
	ldr	ip, [r2, #24]
	ldr	r1, [r3, #24]
	ldr	r0, [r2, #4]
	add	r1, r1, r1, lsr #31
	ldr	lr, [r2]
	add	ip, ip, ip, lsr #31
	mov	r2, r1, asr #1
	add	r1, r0, ip, asr #1
	add	r0, lr, r2
	add	r2, r1, r2
	stmia	r3, {r0, r2}
	str	r4, [r3, #44]
	b	.L354
.L360:
	.align	2
.L359:
	.word	ultimate
	.word	cin
	.size	releaseUFireball2, .-releaseUFireball2
	.align	2
	.global	updateUFireball2
	.type	updateUFireball2, %function
updateUFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L363
	ldr	r3, [r3, #32]
	cmp	r3, #0
	bxeq	lr
	b	updateUFireball2.part.7
.L364:
	.align	2
.L363:
	.word	ultimate
	.size	updateUFireball2, .-updateUFireball2
	.align	2
	.global	drawUFireball2
	.type	drawUFireball2, %function
drawUFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L367
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	drawUFireball2.part.8
.L366:
	mov	r1, #512
	ldr	r3, [r3, #40]
	ldr	r2, .L367+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L368:
	.align	2
.L367:
	.word	ultimate
	.word	shadowOAM
	.size	drawUFireball2, .-drawUFireball2
	.align	2
	.global	initFireball2
	.type	initFireball2, %function
initFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #4
	mov	ip, #16
	mvn	lr, #15
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L373
.L370:
	str	r2, [r3, #40]
	add	r2, r2, #1
	cmp	r2, #14
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	lr, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	bne	.L370
	ldr	lr, [sp], #4
	bx	lr
.L374:
	.align	2
.L373:
	.word	fireballs
	.size	initFireball2, .-initFireball2
	.align	2
	.global	releaseFireball2
	.type	releaseFireball2, %function
releaseFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L390
	mov	r3, #0
	mov	r2, r0
.L382:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L388
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bne	.L382
	bx	lr
.L388:
	ldr	r2, .L390+4
	ldr	r1, [r2, #36]
	cmp	r1, #1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	beq	.L389
	cmp	r1, #0
	bne	.L379
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
.L378:
	mov	r2, #1
	add	r3, r1, r3
	add	r0, r0, r3, lsl #4
	str	r2, [r0, #32]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L379:
	cmp	r1, #3
	bne	.L380
	mov	r7, #8
	mov	r1, r3, asl #1
	add	lr, r1, r3
	mov	lr, lr, asl #4
	add	r5, r0, lr
	ldr	r4, [r5, #24]
	ldr	ip, .L390+8
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
	b	.L378
.L389:
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
	b	.L378
.L380:
	cmp	r1, #2
	movne	r1, r3, asl #1
	bne	.L378
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
	b	.L378
.L391:
	.align	2
.L390:
	.word	fireballs
	.word	cin
	.word	1431655766
	.size	releaseFireball2, .-releaseFireball2
	.align	2
	.global	updateFireball2
	.type	updateFireball2, %function
updateFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	str	lr, [sp, #-4]!
	beq	.L394
	ldr	r2, [r0]
	cmp	r2, #0
	ble	.L395
	ldr	r1, [r0, #4]
	ldr	r3, [r0, #24]
	ldr	ip, .L408
	add	r3, r1, r3
	cmp	r3, ip
	bgt	.L395
	ldr	r3, [r0, #28]
	add	r3, r2, r3
	cmp	r3, ip
	movle	r3, #1
	movgt	r3, #0
	cmp	r1, #0
	movle	r3, #0
	cmp	r3, #0
	beq	.L395
	ldr	r3, [r0, #44]
	cmp	r3, #6
	beq	.L406
	cmp	r3, #5
	beq	.L407
	cmp	r3, #8
	bne	.L399
	ldr	r3, [r0, #20]
	rsb	r1, r3, r1
	str	r1, [r0, #4]
.L394:
	ldr	r1, .L408+4
	ldr	r2, .L408+8
	ldr	r3, .L408+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #480
.L400:
	ldr	r1, [r3]
	ldr	r2, [r3, #-4]
	rsb	r1, lr, r1
	rsb	r2, ip, r2
	str	r1, [r3, #8]
	str	r2, [r3, #4]
	add	r3, r3, #48
	cmp	r0, r3
	bne	.L400
	ldr	lr, [sp], #4
	bx	lr
.L395:
	mov	ip, #0
	mov	r1, #512
	ldr	r3, [r0, #40]
	ldr	r2, .L408+16
	mov	r3, r3, asl #3
	str	ip, [r0, #32]
	strh	r1, [r2, r3]	@ movhi
	b	.L394
.L406:
	ldr	r3, [r0, #16]
	rsb	r2, r3, r2
	str	r2, [r0]
	b	.L394
.L407:
	ldr	r3, [r0, #16]
	add	r2, r3, r2
	str	r2, [r0]
	b	.L394
.L399:
	cmp	r3, #7
	ldreq	r3, [r0, #20]
	addeq	r1, r3, r1
	streq	r1, [r0, #4]
	b	.L394
.L409:
	.align	2
.L408:
	.word	257
	.word	hOff
	.word	vOff
	.word	fireballs+4
	.word	shadowOAM
	.size	updateFireball2, .-updateFireball2
	.align	2
	.global	drawFireball2
	.type	drawFireball2, %function
drawFireball2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #32]
	cmp	r2, #0
	bne	drawFireball2.part.9
.L411:
	mov	r1, #512
	ldr	r3, [r0, #40]
	ldr	r2, .L412
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L413:
	.align	2
.L412:
	.word	shadowOAM
	.size	drawFireball2, .-drawFireball2
	.align	2
	.global	initJack
	.type	initJack, %function
initJack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #47
	mov	lr, #64
	mov	r0, #100
	mov	r1, #83
	mov	r2, #1
	ldr	r3, .L416
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L417:
	.align	2
.L416:
	.word	jack
	.size	initJack, .-initJack
	.align	2
	.global	initJack2
	.type	initJack2, %function
initJack2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #47
	mov	lr, #32
	mov	r0, #100
	mov	r1, #83
	mov	r2, #2
	ldr	r3, .L420
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L421:
	.align	2
.L420:
	.word	jack2
	.size	initJack2, .-initJack2
	.align	2
	.global	updateJack2
	.type	updateJack2, %function
updateJack2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L440
	sub	sp, sp, #16
	mov	r10, #0
	ldr	r5, .L440+4
	ldr	r8, .L440+8
	ldr	r7, .L440+12
	ldr	r9, .L440+16
	add	r6, r4, #480
	b	.L426
.L424:
	add	r4, r4, #48
	cmp	r6, r4
	beq	.L438
.L426:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L424
	ldr	ip, [r5, #20]
	smull	r3, r2, r8, ip
	ldr	lr, [r4, #24]
	rsb	r2, r2, ip, asr #31
	add	r2, r2, ip
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #16]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r9]
	strne	r10, [r4, #32]
	subne	r3, r3, #25
	add	r4, r4, #48
	strne	r3, [r9]
	cmp	r6, r4
	bne	.L426
.L438:
	ldr	r4, .L440+20
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L439
.L428:
	ldr	r2, .L440+24
	ldr	r3, .L440+28
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	str	r2, [r5, #4]
	str	r3, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L439:
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	ldr	r6, .L440+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L428
	mov	r1, #0
	ldr	r2, .L440+16
	ldr	r3, [r2]
	sub	r3, r3, #50
	str	r3, [r2]
	str	r1, [r4, #32]
	b	.L428
.L441:
	.align	2
.L440:
	.word	fireballs
	.word	jack2
	.word	1431655766
	.word	collision
	.word	bossHealth
	.word	ultimate
	.word	hOff
	.word	vOff
	.size	updateJack2, .-updateJack2
	.align	2
	.global	drawJack
	.type	drawJack, %function
drawJack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L454
	ldr	r1, [r0, #4]
	mov	r1, r1, asl #23
	mvn	r1, r1, lsr #5
	mvn	r1, r1, lsr #18
	ldr	r2, [r0, #24]
	ldr	r3, .L454+4
	smull	ip, r3, r2, r3
	stmfd	sp!, {r4, r5, r6, lr}
	mov	lr, r2, asr #31
	ldr	ip, [r0, #32]
	rsb	r3, lr, r3, asr #4
	ldr	r5, .L454+8
	add	r3, r3, r3, lsl #2
	mov	ip, ip, asl #3
	ldrb	r6, [r0]	@ zero_extendqisi2
	add	r3, r3, r3, lsl #2
	add	r4, r5, ip
	cmp	r2, r3, asl #1
	strh	r6, [r5, ip]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	beq	.L452
	ldr	r1, .L454+12
	smull	r3, r1, r2, r1
	rsb	r3, lr, r1, asr #4
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl #3
	beq	.L450
	ldr	r3, .L454+16
	smull	ip, r3, r2, r3
	add	r3, r3, r2
	rsb	r3, lr, r3, asr #4
	rsb	r3, r3, r3, lsl #4
	cmp	r2, r3, asl #1
	beq	.L453
	rsb	r3, lr, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, asl #2
	beq	.L450
	rsb	lr, lr, r1, asr #2
	add	lr, lr, lr, lsl #2
	cmp	r2, lr, asl #1
	ldreq	r3, .L454+20
	add	r2, r2, #1
	streqh	r3, [r4, #4]	@ movhi
	str	r2, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L450:
	ldr	r3, .L454+24
	add	r2, r2, #1
	strh	r3, [r4, #4]	@ movhi
	str	r2, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L452:
	mov	r2, #1
	ldr	r3, .L454+20
	strh	r3, [r4, #4]	@ movhi
	str	r2, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L453:
	ldr	r3, .L454+28
	add	r2, r2, #1
	strh	r3, [r4, #4]	@ movhi
	str	r2, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L455:
	.align	2
.L454:
	.word	jack
	.word	1374389535
	.word	shadowOAM
	.word	1717986919
	.word	-2004318071
	.word	29872
	.word	30128
	.word	30384
	.size	drawJack, .-drawJack
	.align	2
	.global	drawJack2
	.type	drawJack2, %function
drawJack2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L468
	ldr	r2, .L468+4
	ldr	r3, [r0, #4]
	ldr	r2, [r2, #16]
	ldrb	ip, [r0]	@ zero_extendqisi2
	add	r2, r3, r2
	mov	r2, r2, asl #23
	mvn	r2, r2, lsr #5
	mvn	ip, ip, asl #17
	mvn	r2, r2, lsr #18
	mvn	ip, ip, lsr #17
	ldr	r1, [r0, #24]
	ldr	r3, .L468+8
	stmfd	sp!, {r4, r5, r6, lr}
	smull	lr, r3, r1, r3
	mov	r4, r1, asr #31
	ldr	lr, [r0, #32]
	rsb	r3, r4, r3, asr #4
	ldr	r6, .L468+12
	add	r3, r3, r3, lsl #2
	mov	lr, lr, asl #3
	add	r3, r3, r3, lsl #2
	add	r5, r6, lr
	cmp	r1, r3, asl #1
	strh	ip, [r6, lr]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	beq	.L466
	ldr	r2, .L468+16
	smull	r3, r2, r1, r2
	rsb	r3, r4, r2, asr #4
	add	r3, r3, r3, lsl #2
	cmp	r1, r3, asl #3
	beq	.L464
	ldr	r3, .L468+20
	smull	ip, r3, r1, r3
	add	r3, r3, r1
	rsb	r3, r4, r3, asr #4
	rsb	r3, r3, r3, lsl #4
	cmp	r1, r3, asl #1
	beq	.L467
	rsb	r3, r4, r2, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r1, r3, asl #2
	beq	.L464
	rsb	r4, r4, r2, asr #2
	add	r4, r4, r4, lsl #2
	cmp	r1, r4, asl #1
	ldreq	r3, .L468+24
	streqh	r3, [r5, #4]	@ movhi
	add	r3, r1, #1
	str	r3, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L464:
	ldr	r2, .L468+28
	add	r3, r1, #1
	strh	r2, [r5, #4]	@ movhi
	str	r3, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L466:
	mov	r3, #1
	ldr	r2, .L468+24
	strh	r2, [r5, #4]	@ movhi
	str	r3, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L467:
	ldr	r2, .L468+32
	add	r3, r1, #1
	strh	r2, [r5, #4]	@ movhi
	str	r3, [r0, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L469:
	.align	2
.L468:
	.word	jack2
	.word	jack
	.word	1374389535
	.word	shadowOAM
	.word	1717986919
	.word	-2004318071
	.word	29880
	.word	30136
	.word	30392
	.size	drawJack2, .-drawJack2
	.align	2
	.global	drawGame2
	.type	drawGame2, %function
drawGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L502
	ldr	r3, [r3, #52]
	cmp	r3, #0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	beq	.L471
	ldr	r2, .L502+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L472:
	bl	drawJack
	bl	drawJack2
	ldr	r3, .L502+8
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	.L494
	mov	r1, #512
	ldr	r3, [r3, #40]
	ldr	r2, .L502+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L474:
	bl	drawReadyU2
	ldr	r3, .L502+12
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L495
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L502+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L476:
	ldr	r3, .L502+16
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L496
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L502+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L478:
	ldr	r3, .L502+20
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L497
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L502+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L480:
	ldr	r3, .L502+24
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L498
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L502+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L482:
	ldr	r3, .L502+28
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L499
	mov	r1, #512
	ldr	r3, [r3, #24]
	ldr	r2, .L502+4
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
.L485:
	ldr	r4, .L502+32
	ldr	r7, .L502+4
	add	r5, r4, #480
	mov	r6, #512
	b	.L484
.L486:
	ldr	r3, [r4, #40]
	add	r4, r4, #48
	mov	r3, r3, asl #3
	cmp	r4, r5
	strh	r6, [r7, r3]	@ movhi
	beq	.L500
.L484:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L486
	mov	r0, r4
	add	r4, r4, #48
	bl	drawFireball2.part.9
	cmp	r4, r5
	bne	.L484
.L500:
	ldr	r4, .L502+36
	mov	r7, #512
	ldr	r6, .L502+4
	add	r5, r4, #960
	b	.L490
.L488:
	ldr	r3, [r4, #44]
	add	r4, r4, #48
	mov	r3, r3, asl #3
	cmp	r5, r4
	strh	r7, [r6, r3]	@ movhi
	beq	.L501
.L490:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L488
	mov	r0, r4
	add	r4, r4, #48
	bl	drawJackball.part.10
	cmp	r5, r4
	bne	.L490
.L501:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L471:
	bl	drawCin2.part.6
	b	.L472
.L499:
	bl	drawHeart5s.part.4
	b	.L485
.L498:
	bl	drawHeart4s.part.3
	b	.L482
.L497:
	bl	drawHeart3s.part.2
	b	.L480
.L496:
	bl	drawHeart2s.part.1
	b	.L478
.L495:
	bl	drawHeart1s.part.0
	b	.L476
.L494:
	bl	drawUFireball2.part.8
	b	.L474
.L503:
	.align	2
.L502:
	.word	cin
	.word	shadowOAM
	.word	ultimate
	.word	h1
	.word	h2
	.word	h3
	.word	h4
	.word	h5
	.word	fireballs
	.word	jackballs
	.size	drawGame2, .-drawGame2
	.align	2
	.global	initJackball
	.type	initJackball, %function
initJackball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r2, #14
	mov	ip, #16
	mvn	r4, #15
	mov	r0, #0
	mov	r1, #1
	ldr	r3, .L508
	add	lr, r3, #960
.L505:
	str	r2, [r3, #44]
	str	ip, [r3, #28]
	str	ip, [r3, #24]
	str	r4, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r0, [r3, #32]
	add	r3, r3, #48
	cmp	r3, lr
	add	r2, r2, #1
	bne	.L505
	ldmfd	sp!, {r4, lr}
	bx	lr
.L509:
	.align	2
.L508:
	.word	jackballs
	.size	initJackball, .-initJackball
	.align	2
	.global	releaseJackball
	.type	releaseJackball, %function
releaseJackball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L532
	mov	r4, #0
	mov	r3, r5
.L526:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L531
	add	r4, r4, #1
	cmp	r4, #20
	add	r3, r3, #48
	bne	.L526
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L531:
	ldr	r7, .L532+4
	mov	lr, pc
	bx	r7
	mov	r3, r0, asr #31
	mov	r3, r3, lsr #30
	add	r0, r0, r3
	and	r0, r0, #3
	rsb	r3, r3, r0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L512
.L514:
	.word	.L513
	.word	.L515
	.word	.L516
	.word	.L517
.L517:
	mov	r2, #7
	mov	r6, r4, asl #1
	add	r3, r6, r4
	add	r3, r5, r3, lsl #4
	str	r2, [r3, #40]
.L529:
	mov	lr, pc
	bx	r7
	ldr	r3, .L532+8
	smull	r2, r3, r0, r3
	add	r2, r6, r4
	add	r1, r3, r0
	add	r2, r5, r2, lsl #4
	mov	r3, r0, asr #31
	ldr	ip, .L532+12
	rsb	r3, r3, r1, asr #5
	ldr	r1, [r2, #24]
	rsb	r3, r3, r3, lsl #5
	add	lr, ip, #12
	ldmia	lr, {ip, lr}
	add	ip, ip, lr
	sub	r3, r0, r3, asl #1
	add	r1, r1, r1, lsr #31
	add	r3, r3, #90
	add	r1, ip, r1, asr #1
	str	r3, [r2, #8]
	str	r1, [r2, #12]
.L524:
	mov	r3, #1
	add	r4, r6, r4
	add	r5, r5, r4, lsl #4
	str	r3, [r5, #32]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L516:
	mov	r2, #8
	mov	r6, r4, asl #1
	add	r3, r6, r4
	add	r3, r5, r3, lsl #4
	str	r2, [r3, #40]
.L528:
	mov	lr, pc
	bx	r7
	ldr	r2, .L532+8
	smull	r3, r2, r0, r2
	add	r1, r2, r0
	mov	r2, r0, asr #31
	rsb	r2, r2, r1, asr #5
	add	r3, r6, r4
	ldr	r1, .L532+16
	add	r3, r5, r3, lsl #4
	ldr	ip, [r1, #12]
	ldr	r1, [r3, #24]
	rsb	r2, r2, r2, lsl #5
	sub	r2, r0, r2, asl #1
	add	r1, r1, r1, lsr #31
	add	r2, r2, #90
	sub	r1, ip, r1, asr #1
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	ldr	r3, [r3, #40]
.L523:
	cmp	r3, #7
	bne	.L524
	b	.L529
.L515:
	mov	r2, #6
	mov	r6, r4, asl #1
	add	r3, r6, r4
	add	r3, r5, r3, lsl #4
	str	r2, [r3, #40]
.L519:
	mov	lr, pc
	bx	r7
	ldr	r1, .L532+20
	smull	r3, ip, r1, r0
	mov	r1, r0, asr #31
	rsb	r1, r1, ip, asr #5
	add	r2, r1, r1, lsl #2
	rsb	r1, r1, r2, lsl #4
	add	r3, r6, r4
	ldr	r2, .L532+16
	add	r3, r5, r3, lsl #4
	ldr	ip, [r2, #8]
	rsb	r2, r1, r0
	ldr	r1, [r3, #28]
	add	r1, r1, r1, lsr #31
	add	r2, r2, #88
	add	r1, ip, r1, asr #1
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	ldr	r3, [r3, #40]
.L522:
	cmp	r3, #8
	bne	.L523
	b	.L528
.L513:
	mov	r2, #5
	mov	r6, r4, asl #1
	add	r3, r6, r4
	add	r3, r5, r3, lsl #4
	str	r2, [r3, #40]
.L518:
	mov	lr, pc
	bx	r7
	ldr	r1, .L532+20
	smull	r3, r1, r0, r1
	mov	r3, r0, asr #31
	rsb	r1, r3, r1, asr #5
	add	r2, r1, r1, lsl #2
	rsb	r1, r1, r2, lsl #4
	add	r3, r6, r4
	ldr	r2, .L532+16
	add	r3, r5, r3, lsl #4
	ldr	ip, [r2, #8]
	rsb	r2, r1, r0
	ldr	r1, [r3, #28]
	add	r2, r2, #88
	add	r1, ip, r1
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	ldr	r3, [r3, #40]
.L521:
	cmp	r3, #6
	bne	.L522
	b	.L519
.L512:
	mov	r6, r4, asl #1
	add	r3, r6, r4
	add	r3, r5, r3, lsl #4
	ldr	r3, [r3, #40]
	cmp	r3, #5
	bne	.L521
	b	.L518
.L533:
	.align	2
.L532:
	.word	jackballs
	.word	rand
	.word	-2078209981
	.word	jack2
	.word	jack
	.word	1739733589
	.size	releaseJackball, .-releaseJackball
	.align	2
	.global	updateJack
	.type	updateJack, %function
updateJack:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L554
	sub	sp, sp, #16
	mov	r10, #0
	ldr	r5, .L554+4
	ldr	r8, .L554+8
	ldr	r7, .L554+12
	ldr	r9, .L554+16
	add	r6, r4, #480
	b	.L538
.L536:
	add	r4, r4, #48
	cmp	r4, r6
	beq	.L552
.L538:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L536
	ldr	ip, [r5, #20]
	smull	r3, r2, r8, ip
	ldr	lr, [r4, #24]
	rsb	r2, r2, ip, asr #31
	add	r2, r2, ip
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #16]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r9]
	strne	r10, [r4, #32]
	subne	r3, r3, #25
	add	r4, r4, #48
	strne	r3, [r9]
	cmp	r4, r6
	bne	.L538
.L552:
	ldr	r4, .L554+20
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L553
.L540:
	ldr	r3, [r5, #28]
	cmp	r3, #14
	addle	r3, r3, #1
	ble	.L543
	bl	releaseJackball
	mov	r3, #1
.L543:
	ldr	r1, .L554+24
	ldr	r2, .L554+28
	ldr	ip, [r1]
	ldr	r0, [r2]
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #8]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r3, [r5, #28]
	str	r1, [r5, #4]
	str	r2, [r5]
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L553:
	ldr	ip, [r5, #20]
	ldr	r2, .L554+8
	smull	r3, r2, ip, r2
	ldr	lr, [r4, #24]
	rsb	r2, r2, ip, asr #31
	add	r2, r2, ip
	ldr	ip, [r4, #28]
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r3, [r5, #16]
	ldmia	r5, {r0, r1}
	stmia	sp, {ip, lr}
	ldr	r6, .L554+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L540
	mov	r1, #0
	ldr	r2, .L554+16
	ldr	r3, [r2]
	sub	r3, r3, #50
	str	r3, [r2]
	str	r1, [r4, #32]
	b	.L540
.L555:
	.align	2
.L554:
	.word	fireballs
	.word	jack
	.word	1431655766
	.word	collision
	.word	bossHealth
	.word	ultimate
	.word	hOff
	.word	vOff
	.size	updateJack, .-updateJack
	.align	2
	.global	updateJackball
	.type	updateJackball, %function
updateJackball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	str	lr, [sp, #-4]!
	beq	.L558
	ldr	r2, [r0, #8]
	cmp	r2, #0
	ble	.L559
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #24]
	ldr	ip, .L572
	add	r3, r1, r3
	cmp	r3, ip
	bgt	.L559
	ldr	r3, [r0, #28]
	add	r3, r2, r3
	cmp	r3, ip
	movle	r3, #1
	movgt	r3, #0
	cmp	r1, #0
	movle	r3, #0
	cmp	r3, #0
	beq	.L559
	ldr	r3, [r0, #40]
	cmp	r3, #6
	beq	.L570
	cmp	r3, #5
	beq	.L571
	cmp	r3, #8
	bne	.L563
	ldr	r3, [r0, #20]
	rsb	r1, r3, r1
	str	r1, [r0, #12]
.L558:
	ldr	r1, .L572+4
	ldr	r2, .L572+8
	ldr	r3, .L572+12
	ldr	lr, [r1]
	ldr	ip, [r2]
	add	r0, r3, #960
.L564:
	ldr	r1, [r3]
	ldr	r2, [r3, #-4]
	rsb	r1, lr, r1
	rsb	r2, ip, r2
	str	r1, [r3, #-8]
	str	r2, [r3, #-12]
	add	r3, r3, #48
	cmp	r0, r3
	bne	.L564
	ldr	lr, [sp], #4
	bx	lr
.L559:
	mov	ip, #0
	mov	r1, #512
	ldr	r3, [r0, #44]
	ldr	r2, .L572+16
	mov	r3, r3, asl #3
	str	ip, [r0, #32]
	strh	r1, [r2, r3]	@ movhi
	b	.L558
.L571:
	ldr	r3, [r0, #16]
	add	r2, r3, r2
	str	r2, [r0, #8]
	b	.L558
.L570:
	ldr	r3, [r0, #16]
	rsb	r2, r3, r2
	str	r2, [r0, #8]
	b	.L558
.L563:
	cmp	r3, #7
	ldreq	r3, [r0, #20]
	addeq	r1, r3, r1
	streq	r1, [r0, #12]
	b	.L558
.L573:
	.align	2
.L572:
	.word	257
	.word	hOff
	.word	vOff
	.word	jackballs+12
	.word	shadowOAM
	.size	updateJackball, .-updateJackball
	.align	2
	.global	updateGame2
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	bl	updateCin2
	bl	updateJack
	bl	updateJack2
	ldr	r3, .L585
	ldr	r3, [r3, #32]
	cmp	r3, #0
	bne	.L584
.L575:
	bl	updateReadyU2
	ldr	r3, .L585+4
	ldr	r2, .L585+8
	ldr	r0, .L585+12
	ldr	ip, [r2]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	ldr	r0, [r0]
	rsb	r1, ip, r1
	rsb	r2, r0, r2
	str	r1, [r3, #4]
	str	r2, [r3]
	bl	updateHeart2s
	bl	updateHeart3s
	bl	updateHeart4s
	bl	updateHeart5s
	ldr	r4, .L585+16
	add	r5, r4, #480
.L576:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateFireball2
	cmp	r5, r4
	bne	.L576
	ldr	r4, .L585+20
	add	r5, r4, #960
.L577:
	mov	r0, r4
	add	r4, r4, #48
	bl	updateJackball
	cmp	r5, r4
	bne	.L577
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L584:
	bl	updateUFireball2.part.7
	b	.L575
.L586:
	.align	2
.L585:
	.word	ultimate
	.word	h1
	.word	hOff
	.word	vOff
	.word	fireballs
	.word	jackballs
	.size	updateGame2, .-updateGame2
	.align	2
	.global	drawJackball
	.type	drawJackball, %function
drawJackball:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #32]
	cmp	r2, #0
	bne	drawJackball.part.10
.L588:
	mov	r1, #512
	ldr	r3, [r0, #44]
	ldr	r2, .L589
	mov	r3, r3, asl #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L590:
	.align	2
.L589:
	.word	shadowOAM
	.size	drawJackball, .-drawJackball
	.comm	bossHealth,4,4
	.comm	useUF,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	jackballs,960,4
	.comm	fireballs,480,4
	.comm	cinLives,4,4
	.comm	h5,32,4
	.comm	h4,32,4
	.comm	h3,32,4
	.comm	h2,32,4
	.comm	h1,32,4
	.comm	uSprite2,32,4
	.comm	uSprite,32,4
	.comm	jack2,36,4
	.comm	jack,36,4
	.comm	ultimate,48,4
	.comm	cin,68,4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
