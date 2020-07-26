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
	.file	"main.c"
	.text
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L2
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L3:
	.align	2
.L2:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L6+8
	ldr	r2, [r2]
	ldr	r7, .L6+12
	mov	r9, r1
	mov	r8, r0
	mov	r10, r3
	str	r5, [r2, #20]
	mov	r1, r0
	ldr	r2, .L6+16
	mov	r3, #910163968
	mov	r0, #1
	ldr	r4, .L6+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #2]	@ movhi
	mov	r1, r6
	ldr	r3, .L6+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	ldr	r4, .L6+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	mov	r0, r9
	ldr	r7, .L6+32
	str	r9, [r4, #4]
	str	r6, [r4, #8]
	str	r8, [r4]
	str	r3, [r4, #12]
	str	r10, [r4, #16]
	mov	lr, pc
	bx	r7
	ldr	r8, .L6+36
	adr	r3, .L6
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L6+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L6+44
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	3
.L6:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109024
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r3, .L10+8
	ldr	r3, [r3]
	ldr	r7, .L10+12
	mov	r8, r1
	mov	r9, r0
	str	r5, [r3, #32]
	mov	r1, r0
	ldr	r2, .L10+16
	mov	r3, #910163968
	mov	r0, #2
	ldr	r4, .L10+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #6]	@ movhi
	mov	r1, r6
	ldr	r3, .L10+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	ldr	r4, .L10+28
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	strh	r0, [r7, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	mov	r0, r8
	ldr	r7, .L10+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	str	r3, [r4, #12]
	str	r5, [r4, #16]
	mov	lr, pc
	bx	r7
	ldr	r8, .L10+36
	adr	r3, .L10
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L10+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L10+44
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L11:
	.align	3
.L10:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L30
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L26
	ldr	r0, .L30+4
	ldr	r3, [r0, #12]
	cmp	r3, r2
	stmfd	sp!, {r4, lr}
	beq	.L15
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #28]
	ble	.L15
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L28
	ldr	r1, .L30+8
	ldr	r2, .L30+12
	ldr	r1, [r1]
	str	r3, [r0, #12]
	str	r3, [r1, #20]
	strh	r3, [r2, #2]	@ movhi
.L15:
	ldr	r0, .L30+16
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #28]
	ble	.L19
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L29
	ldr	r1, .L30+8
	ldr	r2, .L30+12
	ldr	r1, [r1]
	str	r3, [r0, #12]
	str	r3, [r1, #32]
	strh	r3, [r2, #6]	@ movhi
.L19:
	mov	r2, #1
	ldr	r3, .L30
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L30
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L26:
	mov	r2, #1
	ldr	r3, .L30
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L28:
	ldmia	r0, {r0, r1, r2}
	bl	playSoundA
	b	.L15
.L29:
	ldmia	r0, {r0, r1, r2}
	bl	playSoundB
	b	.L19
.L31:
	.align	2
.L30:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L33
	ldr	r0, .L33+4
	ldr	r1, .L33+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L34:
	.align	2
.L33:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L36
	ldr	ip, .L36+4
	ldr	r0, .L36+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L37:
	.align	2
.L36:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L39
	ldr	ip, .L39+4
	ldr	r1, [r2]
	ldr	r0, .L39+8
	ldr	r2, .L39+12
	str	r3, [r1, #20]
	str	r3, [ip, #12]
	str	r3, [r1, #32]
	str	r3, [r0, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L40:
	.align	2
.L39:
	.word	dma
	.word	soundA
	.word	soundB
	.word	67109120
	.size	stopSound, .-stopSound
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	stmfd	sp!, {r4, lr}
	mov	r4, #1
	ldr	r3, .L43
	ldrh	r1, [r0, #4]
	ldrh	r2, [r3]
	ldr	lr, .L43+4
	ldr	ip, .L43+8
	orr	r2, r2, r4
	orr	r1, r1, #8
	strh	r1, [r0, #4]	@ movhi
	strh	r4, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	str	lr, [ip, #4092]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	goToSplash
	.type	goToSplash, %function
goToSplash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #24064
	mov	r0, #1792
	ldr	ip, .L47
	ldr	r2, .L47+4
	stmfd	sp!, {r4, lr}
	strh	ip, [r3, #12]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	ldr	r0, .L47+8
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L47+12
	ldr	r4, .L47+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+20
	ldr	r2, .L47+24
	ldr	r1, .L47+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L47+32
	ldr	r1, .L47+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+40
	mov	r2, #100663296
	ldr	r1, .L47+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L47+48
	ldr	r1, .L47+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1760
	ldr	r2, .L47+56
	ldr	r1, .L47+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L47+64
	ldr	r1, .L47+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L47+72
	ldr	r1, .L47+76
	ldr	r0, .L47+80
	bl	playSoundA
	mov	r3, #0
	ldr	r0, .L47+84
	ldr	r1, .L47+88
	ldr	r2, .L47+92
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	23304
	.word	7428
	.word	startBack2Pal
	.word	loadPalette
	.word	DMANow
	.word	10400
	.word	100696064
	.word	startBack2Tiles
	.word	100718592
	.word	startBack2Map
	.word	7408
	.word	startBackTiles
	.word	100724736
	.word	startBackMap
	.word	100679680
	.word	splashTiles
	.word	100722688
	.word	splashMap
	.word	11025
	.word	1999872
	.word	TitleSong
	.word	hOff
	.word	vOff
	.word	state
	.size	goToSplash, .-goToSplash
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	ip, #128
	stmfd	sp!, {r4, r5, lr}
	mov	r4, #1
	mov	r5, #0
	ldr	r2, .L51
	ldr	lr, .L51+4
	ldrh	r1, [r2]
	ldrh	r0, [r3, #4]
	strh	ip, [r3, #132]	@ movhi
	strh	lr, [r3, #130]	@ movhi
	ldr	ip, .L51+8
	ldr	lr, .L51+12
	orr	r1, r1, r4
	orr	r0, r0, #8
	strh	r5, [r3, #128]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r4, [r2, #8]	@ movhi
	strh	r1, [r2]	@ movhi
	str	lr, [ip, #4092]
	ldmfd	sp!, {r4, r5, lr}
	b	goToSplash
.L52:
	.align	2
.L51:
	.word	67109376
	.word	-1266
	.word	50360320
	.word	interruptHandler
	.size	initialize, .-initialize
	.align	2
	.global	goToPrelude
	.type	goToPrelude, %function
goToPrelude:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L55
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L55+4
	strh	r2, [r3]	@ movhi
	mov	r0, #0
	ldr	r3, .L55+8
	ldr	r4, .L55+12
	mov	lr, pc
	bx	r3
	mov	r3, r5
	ldr	r2, .L55+16
	mov	r1, #92
	mov	r0, #10
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+20
	mov	r1, #10
	mov	r0, #25
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+24
	mov	r1, #23
	mov	r0, #35
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+28
	mov	r1, #10
	mov	r0, #45
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+32
	mov	r1, #10
	mov	r0, #55
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+36
	mov	r1, #15
	mov	r0, #65
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+40
	mov	r1, #10
	mov	r0, #75
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+44
	mov	r1, #28
	mov	r0, #85
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+48
	mov	r1, #7
	mov	r0, #95
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+52
	mov	r1, #7
	mov	r0, #105
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+56
	mov	r1, #31
	mov	r0, #115
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L55+60
	mov	r1, #43
	mov	r0, #135
	mov	lr, pc
	bx	r4
	ldr	r3, .L55+64
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L55+68
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	1027
	.word	32767
	.word	fillScreen3
	.word	drawString3
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	waitForVBlank
	.word	state
	.size	goToPrelude, .-goToPrelude
	.align	2
	.global	start
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L64
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L58
	ldr	r3, .L64+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
.L58:
	ldr	ip, .L64+12
	ldr	r2, [ip]
	cmp	r2, #0
	add	r1, r2, #3
	movge	r1, r2
	mov	r0, #67108864
	add	r3, r2, #1
	mov	r1, r1, asl #14
	mov	r1, r1, lsr #16
	add	r3, r3, r3, lsr #31
	strh	r1, [r0, #24]	@ movhi
	mov	r3, r3, asl #15
	ldr	r1, .L64+16
	mov	r3, r3, lsr #16
	add	r2, r2, #2
	str	r2, [ip]
	strh	r3, [r0, #20]	@ movhi
	ldrh	r3, [r1]
	ldmfd	sp!, {r4, lr}
	strh	r3, [r0, #18]	@ movhi
	bx	lr
.L63:
	bl	goToPrelude
	b	.L58
.L65:
	.align	2
.L64:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	vOff
	.size	start, .-start
	.align	2
	.global	goToInstruct
	.type	goToInstruct, %function
goToInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L68
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L68+4
	strh	r2, [r3]	@ movhi
	mov	r0, #0
	ldr	r3, .L68+8
	ldr	r4, .L68+12
	mov	lr, pc
	bx	r3
	mov	r3, r5
	ldr	r2, .L68+16
	mov	r1, #80
	mov	r0, #10
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+20
	mov	r1, #20
	mov	r0, #25
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+24
	mov	r1, #25
	mov	r0, #35
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+28
	mov	r1, #19
	mov	r0, #45
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+32
	mov	r1, #9
	mov	r0, #55
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+36
	mov	r1, #3
	mov	r0, #65
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+40
	mov	r1, #15
	mov	r0, #75
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+44
	mov	r1, #29
	mov	r0, #85
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+48
	mov	r1, #18
	mov	r0, #95
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+52
	mov	r1, #15
	mov	r0, #105
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+56
	mov	r1, #18
	mov	r0, #115
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+60
	mov	r1, #57
	mov	r0, #130
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L68+64
	mov	r1, #20
	mov	r0, #145
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+68
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L68+72
	ldmfd	sp!, {r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L69:
	.align	2
.L68:
	.word	1027
	.word	32767
	.word	fillScreen3
	.word	drawString3
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	waitForVBlank
	.word	state
	.size	goToInstruct, .-goToInstruct
	.align	2
	.global	prelude
	.type	prelude, %function
prelude:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L77
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
	ldr	r3, .L77+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
.L70:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L76:
	ldmfd	sp!, {r4, lr}
	b	goToInstruct
.L78:
	.align	2
.L77:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	prelude, .-prelude
	.align	2
	.global	goToGame
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L81
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L81+8
	mov	r3, #848
	mov	r2, #100663296
	ldr	r1, .L81+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L81+16
	ldr	r1, .L81+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L81+24
	ldr	r1, .L81+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #16384
	ldr	r2, .L81+32
	ldr	r1, .L81+36
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L81+40
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L81+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L81+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L81+52
	ldr	r1, .L81+56
	ldr	r0, .L81+60
	bl	playSoundA
	mov	r2, #3
	ldr	r3, .L81+64
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L82:
	.align	2
.L81:
	.word	gamebgPal
	.word	loadPalette
	.word	DMANow
	.word	gamebgTiles
	.word	100726784
	.word	gamebgMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	7937
	.word	hideSprites
	.word	shadowOAM
	.word	11025
	.word	2742336
	.word	GameSong
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	instruct
	.type	instruct, %function
instruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r2, .L90
	ldr	r4, .L90+4
	ldrh	r2, [r2]
	ldr	r3, [r4]
	tst	r2, #8
	add	r3, r3, #1
	str	r3, [r4]
	beq	.L83
	ldr	r3, .L90+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L89
.L83:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L89:
	bl	goToGame
	ldr	r0, [r4]
	ldr	r3, .L90+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+16
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	oldButtons
	.word	.LANCHOR0
	.word	buttons
	.word	srand
	.word	initGame
	.size	instruct, .-instruct
	.align	2
	.global	goToGame2
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L94
	ldr	r3, .L94+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L94+8
	mov	r3, #688
	mov	r2, #100663296
	ldr	r1, .L94+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L94+16
	ldr	r1, .L94+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L94+24
	ldr	r1, .L94+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L94+32
	ldr	r1, .L94+36
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L94+40
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L94+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L94+48
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L94+52
	mov	r3, #1
	add	r2, r2, #3088
	ldr	r0, .L94+56
	bl	playSoundA
	mov	r2, #5
	ldr	r3, .L94+60
	ldmfd	sp!, {r4, lr}
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
	.word	bossbgPal
	.word	loadPalette
	.word	DMANow
	.word	bossbgTiles
	.word	100726784
	.word	bossbgMap
	.word	83886592
	.word	spritesheet2Pal
	.word	100728832
	.word	spritesheet2Tiles
	.word	hideSprites
	.word	shadowOAM
	.word	7937
	.word	4393152
	.word	GameSong2
	.word	state
	.size	goToGame2, .-goToGame2
	.align	2
	.global	transition
	.type	transition, %function
transition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	goToGame2
	ldr	r3, .L98
	mov	lr, pc
	bx	r3
	ldmfd	sp!, {r4, lr}
	bx	lr
.L99:
	.align	2
.L98:
	.word	initGame2
	.size	transition, .-transition
	.align	2
	.global	goToPause
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #67108864
	ldrh	r3, [r4]
	ldr	r1, .L102
	ldr	r2, .L102+4
	orr	r3, r3, #512
	strh	r3, [r4]	@ movhi
	strh	r1, [r4, #80]	@ movhi
	strh	r2, [r4, #82]	@ movhi
	ldr	r5, .L102+8
	mov	r3, #960
	ldr	r2, .L102+12
	ldr	r1, .L102+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L102+20
	ldr	r1, .L102+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r0, #6
	ldr	r5, .L102+28
	ldr	lr, .L102+32
	ldr	r2, .L102+36
	ldr	ip, .L102+40
	ldr	r1, .L102+44
	strh	r5, [r4, #10]	@ movhi
	str	r3, [lr, #12]
	str	r3, [ip, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	strh	r3, [r4, #20]	@ movhi
	str	r0, [r1]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L103:
	.align	2
.L102:
	.word	4418
	.word	2056
	.word	DMANow
	.word	100679680
	.word	pauseTiles
	.word	100724736
	.word	pauseMap
	.word	7684
	.word	soundA
	.word	67109120
	.word	soundB
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L116
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L116+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L105
	ldr	r2, .L116+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L114
.L105:
	tst	r3, #4
	beq	.L104
	ldr	r3, .L116+8
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L115
.L104:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L115:
	ldr	r1, .L116+12
	ldr	r2, .L116+16
	ldr	r1, [r1]
	ldr	ip, .L116+20
	ldr	r0, .L116+24
	str	r3, [r1, #20]
	ldmfd	sp!, {r4, lr}
	str	r3, [r1, #32]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	b	goToSplash
.L114:
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L116+16
	ldr	ip, .L116+20
	ldr	r0, .L116+24
	strh	r1, [r2, #2]	@ movhi
	ldmfd	sp!, {r4, lr}
	strh	r1, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	b	goToGame
.L117:
	.align	2
.L116:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pause, .-pause
	.align	2
	.global	goToPause2
	.type	goToPause2, %function
goToPause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #67108864
	ldrh	r3, [r4]
	ldr	r1, .L120
	ldr	r2, .L120+4
	orr	r3, r3, #512
	strh	r3, [r4]	@ movhi
	strh	r1, [r4, #80]	@ movhi
	strh	r2, [r4, #82]	@ movhi
	ldr	r5, .L120+8
	mov	r3, #960
	ldr	r2, .L120+12
	ldr	r1, .L120+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L120+20
	ldr	r1, .L120+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r0, #7
	ldr	r5, .L120+28
	ldr	lr, .L120+32
	ldr	r2, .L120+36
	ldr	ip, .L120+40
	ldr	r1, .L120+44
	strh	r5, [r4, #10]	@ movhi
	str	r3, [lr, #12]
	str	r3, [ip, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	strh	r3, [r4, #20]	@ movhi
	str	r0, [r1]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	4418
	.word	2056
	.word	DMANow
	.word	100679680
	.word	pauseTiles
	.word	100724736
	.word	pauseMap
	.word	7684
	.word	soundA
	.word	67109120
	.word	soundB
	.word	state
	.size	goToPause2, .-goToPause2
	.align	2
	.global	pause2
	.type	pause2, %function
pause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L134
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L134+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L123
	ldr	r2, .L134+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L132
.L123:
	tst	r3, #4
	beq	.L122
	ldr	r3, .L134+8
	ldrh	r3, [r3]
	ands	r3, r3, #4
	beq	.L133
.L122:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L133:
	ldr	r1, .L134+12
	ldr	r2, .L134+16
	ldr	r1, [r1]
	ldr	ip, .L134+20
	ldr	r0, .L134+24
	str	r3, [r1, #20]
	ldmfd	sp!, {r4, lr}
	str	r3, [r1, #32]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	b	goToSplash
.L132:
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L134+16
	ldr	ip, .L134+20
	ldr	r0, .L134+24
	strh	r1, [r2, #2]	@ movhi
	ldmfd	sp!, {r4, lr}
	strh	r1, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	b	goToGame2
.L135:
	.align	2
.L134:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pause2, .-pause2
	.align	2
	.global	goToWin
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L138
	mov	lr, pc
	bx	r3
	ldr	r0, .L138+4
	ldr	r3, .L138+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L138+12
	mov	r3, #64
	mov	r2, #100663296
	ldr	r1, .L138+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L138+20
	ldr	r1, .L138+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #1024
	mov	r2, #7936
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	r1, .L138+28
	mov	r3, #1
	ldr	r2, .L138+32
	ldr	r0, .L138+36
	bl	playSoundA
	mov	r3, #0
	mov	r1, #8
	ldr	ip, .L138+40
	ldr	r0, .L138+44
	ldr	r2, .L138+48
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L139:
	.align	2
.L138:
	.word	waitForVBlank
	.word	winPal
	.word	loadPalette
	.word	DMANow
	.word	winTiles
	.word	100726784
	.word	winMap
	.word	1410624
	.word	11025
	.word	WinSong
	.word	hOff
	.word	vOff
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L142
	mov	lr, pc
	bx	r3
	ldr	r0, .L142+4
	ldr	r3, .L142+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L142+12
	mov	r3, #112
	mov	r2, #100663296
	ldr	r1, .L142+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L142+20
	ldr	r1, .L142+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #1024
	mov	r2, #7936
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	r1, .L142+28
	mov	r3, #1
	ldr	r2, .L142+32
	ldr	r0, .L142+36
	bl	playSoundA
	mov	r3, #0
	mov	r1, #9
	ldr	ip, .L142+40
	ldr	r0, .L142+44
	ldr	r2, .L142+48
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	ldmfd	sp!, {r4, lr}
	bx	lr
.L143:
	.align	2
.L142:
	.word	waitForVBlank
	.word	losePal
	.word	loadPalette
	.word	DMANow
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	2156255
	.word	11025
	.word	LoseSong
	.word	hOff
	.word	vOff
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L158
	mov	lr, pc
	bx	r3
	ldr	r3, .L158+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L158+8
	ldr	r3, .L158+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L158+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L158+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L145
	ldr	r2, .L158+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L156
.L145:
	tst	r3, #1
	beq	.L146
	ldr	r3, .L158+24
	ldrh	r3, [r3]
	ands	r3, r3, #1
	beq	.L157
.L146:
	ldr	r3, .L158+28
	ldr	r3, [r3]
	cmp	r3, #1
	moveq	r2, #4
	ldreq	r3, .L158+32
	streq	r2, [r3]
	ldr	r3, .L158+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L148
	ldr	r1, .L158+40
	ldr	r2, .L158+44
	ldr	r1, [r1]
	ldr	ip, .L158+48
	ldr	r0, .L158+52
	str	r3, [r1, #20]
	str	r3, [r1, #32]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	bl	goToLose
.L148:
	mov	r3, #67108864
	ldr	r2, .L158+56
	ldrh	r1, [r2]
	ldr	r2, .L158+60
	ldrh	r2, [r2]
	strh	r1, [r3, #18]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L157:
	ldr	r2, .L158+64
	ldr	r1, .L158+68
	ldr	r0, .L158+72
	bl	playSoundB
	b	.L146
.L156:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L145
.L159:
	.align	2
.L158:
	.word	updateGame
	.word	waitForVBlank
	.word	oldButtons
	.word	drawGame
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	bossStage
	.word	state
	.word	cinLives
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.word	vOff
	.word	hOff
	.word	11025
	.word	24608
	.word	fireSound
	.size	game, .-game
	.align	2
	.global	game2
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, .L175
	mov	lr, pc
	bx	r3
	ldr	r3, .L175+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L175+8
	ldr	r3, .L175+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L175+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L175+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L161
	ldr	r2, .L175+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L172
.L161:
	tst	r3, #1
	beq	.L162
	ldr	r3, .L175+24
	ldrh	r3, [r3]
	ands	r3, r3, #1
	beq	.L173
.L162:
	ldr	r3, .L175+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L174
.L163:
	ldr	r3, .L175+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L164
	ldr	r1, .L175+36
	ldr	r2, .L175+40
	ldr	r1, [r1]
	ldr	ip, .L175+44
	ldr	r0, .L175+48
	str	r3, [r1, #20]
	str	r3, [r1, #32]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	bl	goToLose
.L164:
	mov	r3, #67108864
	ldr	r2, .L175+52
	ldrh	r1, [r2]
	ldr	r2, .L175+56
	ldrh	r2, [r2]
	strh	r1, [r3, #18]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L174:
	ldr	r1, .L175+36
	ldr	r2, .L175+40
	ldr	r1, [r1]
	ldr	ip, .L175+44
	ldr	r0, .L175+48
	str	r3, [r1, #20]
	str	r3, [r1, #32]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	bl	goToWin
	b	.L163
.L173:
	ldr	r2, .L175+60
	ldr	r1, .L175+64
	ldr	r0, .L175+68
	bl	playSoundB
	b	.L162
.L172:
	bl	goToPause2
	ldrh	r3, [r4]
	b	.L161
.L176:
	.align	2
.L175:
	.word	updateGame2
	.word	waitForVBlank
	.word	oldButtons
	.word	drawGame2
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	bossHealth
	.word	cinLives
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.word	vOff
	.word	hOff
	.word	11025
	.word	24608
	.word	fireSound
	.size	game2, .-game2
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L184
	stmfd	sp!, {r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L184+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L178
	ldr	r3, .L184+8
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L183
.L178:
	mov	r3, #67108864
	mov	r2, #0
	ldmfd	sp!, {r4, lr}
	strh	r2, [r3, #26]	@ movhi
	strh	r2, [r3, #24]	@ movhi
	bx	lr
.L183:
	ldr	r1, .L184+12
	ldr	r2, .L184+16
	ldr	r1, [r1]
	ldr	ip, .L184+20
	ldr	r0, .L184+24
	str	r3, [r1, #20]
	str	r3, [r1, #32]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	bl	goToSplash
	b	.L178
.L185:
	.align	2
.L184:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r7, fp, lr}
	ldr	r3, .L203
	mov	lr, pc
	bx	r3
	ldr	r8, .L203+4
	ldr	r6, .L203+8
	ldr	r5, .L203+12
	ldr	fp, .L203+16
	ldr	r10, .L203+20
	ldr	r9, .L203+24
	ldr	r7, .L203+28
	ldr	r4, .L203+32
.L187:
	ldrh	r3, [r8]
	ldr	r2, [r6]
.L188:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L188
.L190:
	.word	.L189
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L194
	.word	.L195
	.word	.L196
	.word	.L197
	.word	.L199
	.word	.L199
.L199:
	mov	lr, pc
	bx	r7
	b	.L187
.L197:
	ldr	r3, .L203+36
	mov	lr, pc
	bx	r3
	b	.L187
.L196:
	ldr	r3, .L203+40
	mov	lr, pc
	bx	r3
	b	.L187
.L195:
	ldr	r3, .L203+44
	mov	lr, pc
	bx	r3
	b	.L187
.L194:
	ldr	r3, .L203+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L203+52
	mov	lr, pc
	bx	r3
	b	.L187
.L193:
	ldr	r3, .L203+56
	mov	lr, pc
	bx	r3
	b	.L187
.L192:
	mov	lr, pc
	bx	r9
	b	.L187
.L191:
	mov	lr, pc
	bx	r10
	b	.L187
.L189:
	mov	lr, pc
	bx	fp
	b	.L187
.L204:
	.align	2
.L203:
	.word	initialize
	.word	buttons
	.word	state
	.word	oldButtons
	.word	start
	.word	prelude
	.word	instruct
	.word	lose
	.word	67109120
	.word	pause2
	.word	pause
	.word	game2
	.word	goToGame2
	.word	initGame2
	.word	game
	.size	main, .-main
	.text
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	win, .-win
	.comm	shadowOAM,1024,4
	.comm	buffer,41,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.global	seed
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-Prelude-\000"
	.space	2
.LC1:
	.ascii	"Become Cin A. Mon, a renowned Whiskey\000"
	.space	2
.LC2:
	.ascii	"Warrior with the power to shoot\000"
.LC3:
	.ascii	"fireballs. Use Cin's fireball powers\000"
	.space	3
.LC4:
	.ascii	"to battle the forces of the infamous\000"
	.space	3
.LC5:
	.ascii	"Jack Daniels who wishes to destroy\000"
	.space	1
.LC6:
	.ascii	"every Whiskey Warrior so he can reign\000"
	.space	2
.LC7:
	.ascii	"supreme as \"The Whiskey Lord.\"\000"
	.space	1
.LC8:
	.ascii	"Fight through his army of Winter Jacks\000"
	.space	1
.LC9:
	.ascii	"and Tennessee Honeys to finally put an\000"
	.space	1
.LC10:
	.ascii	"end to the evil Jack Daniels.\000"
	.space	2
.LC11:
	.ascii	"Press 'Start' to Continue.\000"
	.space	1
.LC12:
	.ascii	"-How To Play-\000"
	.space	2
.LC13:
	.ascii	"Press 'A' to shoot fireballs. Cin\000"
	.space	2
.LC14:
	.ascii	"has an 'Ultimate Fireball' that\000"
.LC15:
	.ascii	"can only be used when you see the\000"
	.space	2
.LC16:
	.ascii	"words 'Ultimate Ready' on the screen.\000"
	.space	2
.LC17:
	.ascii	"This is a one hit kill for Winter Jacks\000"
.LC18:
	.ascii	"and Tennessee Honeys. Press 'B' to\000"
	.space	1
.LC19:
	.ascii	"use the 'Ultimate'. Dodge the\000"
	.space	2
.LC20:
	.ascii	"enemies' attacks or Cin will lose\000"
	.space	2
.LC21:
	.ascii	"a life. If Cin loses all his lives,\000"
.LC22:
	.ascii	"you lose. Defeat Jack and you win!\000"
	.space	1
.LC23:
	.ascii	"Become the Greatest...\000"
	.space	1
.LC24:
	.ascii	"Press 'Start' to Begin Your Quest\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	seed, %object
	.size	seed, 4
seed:
	.space	4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
