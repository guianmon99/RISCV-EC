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
	.file	"mat_mult.c"
	.text
	.align	1
	.global	matrix_multiply
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	matrix_multiply, %function
matrix_multiply:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L2
.L7:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L3
.L6:
	ldr	r2, [r7, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, r2
	ldr	r2, [r7, #24]
	lsls	r2, r2, #2
	movs	r1, #0
	str	r1, [r2, r3]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L4
.L5:
	ldr	r2, [r7, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, r2
	ldr	r2, [r7, #24]
	lsls	r2, r2, #2
	ldr	r0, [r2, r3]
	ldr	r2, [r7, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, r2
	ldr	r2, [r7, #20]
	lsls	r2, r2, #2
	ldr	r1, [r2, r3]
	ldr	r2, [r7, #20]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #8]
	adds	r3, r3, r2
	ldr	r2, [r7, #24]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	muls	r1, r3
	ldr	r2, [r7, #28]
	movs	r3, r2
	lsls	r3, r3, #1
	adds	r3, r3, r2
	lsls	r3, r3, #2
	movs	r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, r2
	adds	r1, r0, r1
	ldr	r2, [r7, #24]
	lsls	r2, r2, #2
	str	r1, [r2, r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L4:
	ldr	r3, [r7, #20]
	cmp	r3, #2
	ble	.L5
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L3:
	ldr	r3, [r7, #24]
	cmp	r3, #2
	ble	.L6
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L2:
	ldr	r3, [r7, #28]
	cmp	r3, #2
	ble	.L7
	nop
	nop
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r7, pc}
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
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #116
	add	r7, sp, #0
	movs	r0, #76
	adds	r3, r7, r0
	ldr	r2, .L10
	ldmia	r2!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r2!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r2!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	movs	r1, #40
	adds	r3, r7, r1
	ldr	r2, .L10+4
	ldmia	r2!, {r4, r5, r6}
	stmia	r3!, {r4, r5, r6}
	ldmia	r2!, {r4, r5, r6}
	stmia	r3!, {r4, r5, r6}
	ldmia	r2!, {r4, r5, r6}
	stmia	r3!, {r4, r5, r6}
	adds	r2, r7, #4
	adds	r1, r7, r1
	adds	r3, r7, r0
	movs	r0, r3
	bl	matrix_multiply
	movs	r3, #0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L11:
	.align	2
.L10:
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
