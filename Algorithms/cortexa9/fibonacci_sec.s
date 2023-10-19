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
	.file	"fibonacci_sec.c"
	.text
	.align	2
	.global	main
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 808
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #812
	sub	r3, fp, #812
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #-8]
	sub	r3, fp, #812
	mov	r1, r3
	mov	r2, #1
	mov	r3, #0
	strd	r2, [r1]
	mov	r3, #2
	str	r3, [fp, #-16]
	b	.L2
.L3:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	sub	r2, fp, #812
	lsl	r3, r3, #3
	add	r3, r2, r3
	sub	r3, r3, #8
	ldrd	r0, [r3]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #2
	sub	r2, fp, #812
	lsl	r3, r3, #3
	add	r3, r2, r3
	sub	r3, r3, #8
	ldrd	r2, [r3]
	adds	r4, r0, r2
	adc	r5, r1, r3
	sub	r3, fp, #812
	mov	r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	add	r3, r2, r3
	sub	r3, r3, #8
	strd	r4, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L3
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	bx	lr
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
