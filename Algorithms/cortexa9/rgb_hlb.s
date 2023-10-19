	.cpu cortex-a9
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"rgb_hlb.c"
	.text
	.align	2
	.global	RGBtoHSL
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	RGBtoHSL, %function
RGBtoHSL:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #60
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	ldrb	r3, [fp, #-56]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d17, s15
	vldr.64	d18, .L48
	vdiv.f64	d16, d17, d18
	vstr.64	d16, [fp, #-12]
	ldrb	r3, [fp, #-55]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d17, s15
	vldr.64	d18, .L48
	vdiv.f64	d16, d17, d18
	vstr.64	d16, [fp, #-20]
	ldrb	r3, [fp, #-54]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d17, s15
	vldr.64	d18, .L48
	vdiv.f64	d16, d17, d18
	vstr.64	d16, [fp, #-28]
	vldr.64	d17, [fp, #-12]
	vldr.64	d16, [fp, #-20]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	ble	.L39
	vldr.64	d17, [fp, #-12]
	vldr.64	d16, [fp, #-28]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	ble	.L40
	ldrd	r2, [fp, #-12]
	b	.L7
.L40:
	ldrd	r2, [fp, #-28]
	b	.L7
.L39:
	vldr.64	d17, [fp, #-20]
	vldr.64	d16, [fp, #-28]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	ble	.L41
	ldrd	r2, [fp, #-20]
	b	.L7
.L41:
	ldrd	r2, [fp, #-28]
.L7:
	strd	r2, [fp, #-36]
	vldr.64	d17, [fp, #-12]
	vldr.64	d16, [fp, #-20]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	bpl	.L42
	vldr.64	d17, [fp, #-12]
	vldr.64	d16, [fp, #-28]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	bpl	.L43
	ldrd	r2, [fp, #-12]
	b	.L16
.L43:
	ldrd	r2, [fp, #-28]
	b	.L16
.L42:
	vldr.64	d17, [fp, #-20]
	vldr.64	d16, [fp, #-28]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	bpl	.L44
	ldrd	r2, [fp, #-20]
	b	.L16
.L44:
	ldrd	r2, [fp, #-28]
.L16:
	strd	r2, [fp, #-44]
	vldr.64	d17, [fp, #-36]
	vldr.64	d16, [fp, #-44]
	vadd.f64	d17, d17, d16
	vmov.f64	d18, #2.0e+0
	vdiv.f64	d16, d17, d18
	ldr	r3, [fp, #-60]
	vstr.64	d16, [r3, #16]
	vldr.64	d17, [fp, #-36]
	vldr.64	d16, [fp, #-44]
	vcmp.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	bne	.L20
	ldr	r1, [fp, #-60]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #8]
	ldr	r1, [fp, #-60]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1]
	b	.L47
.L20:
	vldr.64	d17, [fp, #-36]
	vldr.64	d16, [fp, #-44]
	vsub.f64	d16, d17, d16
	vstr.64	d16, [fp, #-52]
	ldr	r3, [fp, #-60]
	vldr.64	d16, [r3, #16]
	vmov.f64	d17, #5.0e-1
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, FPSCR
	ble	.L45
	vmov.f64	d17, #2.0e+0
	vldr.64	d16, [fp, #-36]
	vsub.f64	d17, d17, d16
	vldr.64	d16, [fp, #-44]
	vsub.f64	d17, d17, d16
	vldr.64	d18, [fp, #-52]
	vdiv.f64	d16, d18, d17
	b	.L24
.L45:
	vldr.64	d17, [fp, #-36]
	vldr.64	d16, [fp, #-44]
	vadd.f64	d17, d17, d16
	vldr.64	d18, [fp, #-52]
	vdiv.f64	d16, d18, d17
.L24:
	ldr	r3, [fp, #-60]
	vstr.64	d16, [r3, #8]
	vldr.64	d17, [fp, #-36]
	vldr.64	d16, [fp, #-12]
	vcmp.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	bne	.L25
	vldr.64	d17, [fp, #-20]
	vldr.64	d16, [fp, #-28]
	vsub.f64	d18, d17, d16
	vldr.64	d17, [fp, #-52]
	vdiv.f64	d16, d18, d17
	vldr.64	d18, [fp, #-20]
	vldr.64	d17, [fp, #-28]
	vcmpe.f64	d18, d17
	vmrs	APSR_nzcv, FPSCR
	bpl	.L46
	vmov.f64	d17, #6.0e+0
	b	.L28
.L46:
	vldr.64	d17, .L48+8
.L28:
	vadd.f64	d16, d17, d16
	ldr	r3, [fp, #-60]
	vstr.64	d16, [r3]
	b	.L29
.L25:
	vldr.64	d17, [fp, #-36]
	vldr.64	d16, [fp, #-20]
	vcmp.f64	d17, d16
	vmrs	APSR_nzcv, FPSCR
	bne	.L30
	vldr.64	d17, [fp, #-28]
	vldr.64	d16, [fp, #-12]
	vsub.f64	d18, d17, d16
	vldr.64	d17, [fp, #-52]
	vdiv.f64	d16, d18, d17
	vmov.f64	d17, #2.0e+0
	vadd.f64	d16, d16, d17
	ldr	r3, [fp, #-60]
	vstr.64	d16, [r3]
	b	.L29
.L30:
	vldr.64	d17, [fp, #-12]
	vldr.64	d16, [fp, #-20]
	vsub.f64	d18, d17, d16
	vldr.64	d17, [fp, #-52]
	vdiv.f64	d16, d18, d17
	vmov.f64	d17, #4.0e+0
	vadd.f64	d16, d16, d17
	ldr	r3, [fp, #-60]
	vstr.64	d16, [r3]
.L29:
	ldr	r3, [fp, #-60]
	vldr.64	d17, [r3]
	vmov.f64	d18, #6.0e+0
	vdiv.f64	d16, d17, d18
	ldr	r3, [fp, #-60]
	vstr.64	d16, [r3]
.L47:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L49:
	.align	3
.L48:
	.word	0
	.word	1081073664
	.word	0
	.word	0
	.size	RGBtoHSL, .-RGBtoHSL
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	mvn	r3, #0
	strb	r3, [fp, #-8]
	mov	r3, #0
	strb	r3, [fp, #-7]
	mov	r3, #0
	strb	r3, [fp, #-6]
	sub	r3, fp, #36
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	RGBtoHSL
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
