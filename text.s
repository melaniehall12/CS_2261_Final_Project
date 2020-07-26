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
	.file	"text.c"
	.text
	.align	2
	.global	drawChar3
	.type	drawChar3, %function
drawChar3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1
	mov	r6, r0
	sub	sp, sp, #12
	ldr	r1, .L13
	mov	r9, r3
	add	r3, r0, #8
	add	r2, r2, r2, lsl #1
	str	r3, [sp, #4]
	ldr	r8, .L13+4
	add	r7, r1, r2, lsl #4
	add	fp, r10, #6
.L2:
	mov	r4, r10
	mov	r5, r7
	b	.L4
.L3:
	add	r4, r4, #1
	cmp	fp, r4
	beq	.L12
.L4:
	ldrb	r2, [r5], #1	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L3
	mov	r1, r4
	mov	r2, r9
	mov	r0, r6
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	fp, r4
	bne	.L4
.L12:
	ldr	r3, [sp, #4]
	add	r6, r6, #1
	cmp	r6, r3
	add	r7, r7, #6
	bne	.L2
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	fontdata_6x8
	.word	setPixel3
	.size	drawChar3, .-drawChar3
	.align	2
	.global	drawChar4
	.type	drawChar4, %function
drawChar4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1
	mov	r6, r0
	sub	sp, sp, #12
	ldr	r1, .L26
	mov	r9, r3
	add	r3, r0, #8
	add	r2, r2, r2, lsl #1
	str	r3, [sp, #4]
	ldr	r8, .L26+4
	add	r7, r1, r2, lsl #4
	add	fp, r10, #6
.L16:
	mov	r4, r10
	mov	r5, r7
	b	.L18
.L17:
	add	r4, r4, #1
	cmp	fp, r4
	beq	.L25
.L18:
	ldrb	r2, [r5], #1	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L17
	mov	r1, r4
	mov	r2, r9
	mov	r0, r6
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	fp, r4
	bne	.L18
.L25:
	ldr	r3, [sp, #4]
	add	r6, r6, #1
	cmp	r6, r3
	add	r7, r7, #6
	bne	.L16
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	fontdata_6x8
	.word	setPixel4
	.size	drawChar4, .-drawChar4
	.align	2
	.global	drawString3
	.type	drawString3, %function
drawString3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L28
	mov	r7, r0
	mov	r4, r1
	mov	r6, r3
.L30:
	mov	r1, r4
	mov	r3, r6
	mov	r0, r7
	bl	drawChar3
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	add	r4, r4, #6
	bne	.L30
.L28:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	drawString3, .-drawString3
	.align	2
	.global	drawString4
	.type	drawString4, %function
drawString4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L34
	mov	r7, r0
	mov	r4, r1
	mov	r6, r3
.L36:
	mov	r1, r4
	mov	r3, r6
	mov	r0, r7
	bl	drawChar4
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	add	r4, r4, #6
	bne	.L36
.L34:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	drawString4, .-drawString4
	.ident	"GCC: (devkitARM release 45) 5.3.0"
