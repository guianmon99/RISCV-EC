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
	.file	"mat_mult.c"
	.text
	.align	2
	.global	matrix_multiply
	.arch armv7-a
	.arch_extension mp
	.arch_extension sec
	.syntax unified
	.arm
	.fpu vfpv3
	.type	matrix_multiply, %function
matrix_multiply:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L7:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L3
.L6:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	mov	r1, #0
	str	r1, [r3, r2, lsl #2]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L4
.L5:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	ldr	r0, [r3, r2, lsl #2]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldr	r2, [fp, #-16]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #2]
	mul	r1, r3, r1
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, r2
	add	r1, r0, r1
	ldr	r2, [fp, #-12]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L5
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	cmp	r3, #2
	ble	.L6
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L7
	nop
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	matrix_multiply, .-matrix_multiply
	.section	.rodata
	.align	2
.LC0:
	.word	1
	.word	2
	.word	4
	.word	3
	.word	4
	.word	6
	.word	5
	.word	6
	.word	7
	.align	2
.LC1:
	.word	7
	.word	8
	.word	9
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #112
	movw	r3, #:lower16:.LC0
	movt	r3, #:upper16:.LC0
	sub	ip, fp, #40
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	movw	r3, #:lower16:.LC1
	movt	r3, #:upper16:.LC1
	sub	ip, fp, #76
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	sub	r2, fp, #112
	sub	r1, fp, #76
	sub	r3, fp, #40
	mov	r0, r3
	bl	matrix_multiply
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
