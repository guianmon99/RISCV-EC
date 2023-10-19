	.cpu cortex-m0plus
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"rgb_hlb.c"
	.text
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_dcmpgt
	.global	__aeabi_dcmplt
	.global	__aeabi_dadd
	.global	__aeabi_dcmpeq
	.global	__aeabi_dsub
	.align	1
	.global	RGBtoHSL
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RGBtoHSL, %function
RGBtoHSL:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	str	r1, [r7]
	adds	r3, r7, #4
	ldrb	r3, [r3]
	movs	r0, r3
	bl	__aeabi_i2d
	movs	r2, #0
	ldr	r3, .L57
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	str	r2, [r7, #48]
	str	r3, [r7, #52]
	adds	r3, r7, #4
	ldrb	r3, [r3, #1]
	movs	r0, r3
	bl	__aeabi_i2d
	movs	r2, #0
	ldr	r3, .L57
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	str	r2, [r7, #40]
	str	r3, [r7, #44]
	adds	r3, r7, #4
	ldrb	r3, [r3, #2]
	movs	r0, r3
	bl	__aeabi_i2d
	movs	r2, #0
	ldr	r3, .L57
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	str	r2, [r7, #32]
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	__aeabi_dcmpgt
	subs	r3, r0, #0
	beq	.L45
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	__aeabi_dcmpgt
	subs	r3, r0, #0
	beq	.L46
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	b	.L7
.L46:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	b	.L7
.L45:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #44]
	bl	__aeabi_dcmpgt
	subs	r3, r0, #0
	beq	.L47
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	b	.L7
.L47:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
.L7:
	str	r2, [r7, #24]
	str	r3, [r7, #28]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	__aeabi_dcmplt
	subs	r3, r0, #0
	beq	.L48
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	__aeabi_dcmplt
	subs	r3, r0, #0
	beq	.L49
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	b	.L16
.L49:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	b	.L16
.L48:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #44]
	bl	__aeabi_dcmplt
	subs	r3, r0, #0
	beq	.L50
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	b	.L16
.L50:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
.L16:
	str	r2, [r7, #16]
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	movs	r0, r2
	movs	r1, r3
	movs	r2, #0
	movs	r3, #128
	lsls	r3, r3, #23
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	ldr	r1, [r7]
	str	r2, [r1, #16]
	str	r3, [r1, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	__aeabi_dcmpeq
	subs	r3, r0, #0
	beq	.L51
	ldr	r1, [r7]
	movs	r2, #0
	movs	r3, #0
	str	r2, [r1, #8]
	str	r3, [r1, #12]
	ldr	r1, [r7]
	movs	r2, #0
	movs	r3, #0
	str	r2, [r1]
	str	r3, [r1, #4]
	b	.L56
.L51:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	str	r2, [r7, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r0, [r3, #16]
	ldr	r1, [r3, #20]
	movs	r2, #0
	ldr	r3, .L57+4
	bl	__aeabi_dcmpgt
	subs	r3, r0, #0
	beq	.L52
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	movs	r0, #0
	movs	r1, #128
	lsls	r1, r1, #23
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	movs	r0, r2
	movs	r1, r3
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	b	.L25
.L52:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
.L25:
	ldr	r1, [r7]
	str	r2, [r1, #8]
	str	r3, [r1, #12]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	__aeabi_dcmpeq
	subs	r3, r0, #0
	beq	.L53
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #44]
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	movs	r0, r2
	movs	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	movs	r4, r2
	movs	r5, r3
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #44]
	bl	__aeabi_dcmplt
	subs	r3, r0, #0
	beq	.L54
	movs	r0, #0
	ldr	r1, .L57+8
	b	.L30
.L54:
	movs	r0, #0
	movs	r1, #0
.L30:
	movs	r2, r4
	movs	r3, r5
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	ldr	r1, [r7]
	str	r2, [r1]
	str	r3, [r1, #4]
	b	.L31
.L53:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	__aeabi_dcmpeq
	subs	r3, r0, #0
	beq	.L55
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #36]
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	movs	r0, r2
	movs	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	movs	r0, r2
	movs	r1, r3
	movs	r2, #0
	movs	r3, #128
	lsls	r3, r3, #23
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	ldr	r1, [r7]
	str	r2, [r1]
	str	r3, [r1, #4]
	b	.L31
.L55:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	__aeabi_dsub
	movs	r2, r0
	movs	r3, r1
	movs	r0, r2
	movs	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	movs	r0, r2
	movs	r1, r3
	movs	r2, #0
	ldr	r3, .L57+12
	bl	__aeabi_dadd
	movs	r2, r0
	movs	r3, r1
	ldr	r1, [r7]
	str	r2, [r1]
	str	r3, [r1, #4]
.L31:
	ldr	r3, [r7]
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	movs	r2, #0
	ldr	r3, .L57+8
	bl	__aeabi_ddiv
	movs	r2, r0
	movs	r3, r1
	ldr	r1, [r7]
	str	r2, [r1]
	str	r3, [r1, #4]
.L56:
	nop
	mov	sp, r7
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r7, pc}
.L58:
	.align	2
.L57:
	.word	1081073664
	.word	1071644672
	.word	1075314688
	.word	1074790400
	.size	RGBtoHSL, .-RGBtoHSL
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	movs	r1, #28
	adds	r3, r7, r1
	movs	r2, #255
	strb	r2, [r3]
	adds	r3, r7, r1
	movs	r2, #0
	strb	r2, [r3, #1]
	adds	r3, r7, r1
	movs	r2, #0
	strb	r2, [r3, #2]
	movs	r2, r7
	adds	r3, r7, r1
	movs	r1, r2
	ldr	r0, [r3]
	bl	RGBtoHSL
	movs	r3, #0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
