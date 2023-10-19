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
	.file	"fibonacci_sec.c"
	.text
	.align	1
	.global	main
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 808
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	ldr	r4, .L5
	add	sp, sp, r4
	add	r7, sp, #0
	ldr	r3, .L5
	movs	r0, #202
	lsls	r0, r0, #2
	adds	r3, r3, r0
	adds	r1, r3, r7
	movs	r2, #0
	movs	r3, #0
	str	r2, [r1]
	str	r3, [r1, #4]
	ldr	r3, .L5
	adds	r3, r3, r0
	adds	r1, r3, r7
	movs	r2, #1
	movs	r3, #0
	str	r2, [r1, #8]
	str	r3, [r1, #12]
	movs	r3, #2
	movs	r2, #201
	lsls	r2, r2, #2
	adds	r2, r7, r2
	str	r3, [r2]
	b	.L2
.L3:
	movs	r4, #201
	lsls	r4, r4, #2
	adds	r3, r7, r4
	ldr	r3, [r3]
	subs	r3, r3, #1
	ldr	r2, .L5
	movs	r5, #202
	lsls	r5, r5, #2
	adds	r2, r2, r5
	adds	r2, r2, r7
	lsls	r3, r3, #3
	adds	r3, r2, r3
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	adds	r3, r7, r4
	ldr	r3, [r3]
	subs	r3, r3, #2
	ldr	r2, .L5
	adds	r2, r2, r5
	adds	r2, r2, r7
	lsls	r3, r3, #3
	adds	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	adds	r2, r2, r0
	adcs	r3, r3, r1
	ldr	r1, .L5
	adds	r1, r1, r5
	adds	r0, r1, r7
	adds	r1, r7, r4
	ldr	r1, [r1]
	lsls	r1, r1, #3
	adds	r1, r0, r1
	str	r2, [r1]
	str	r3, [r1, #4]
	adds	r3, r7, r4
	ldr	r3, [r3]
	adds	r3, r3, #1
	adds	r2, r7, r4
	str	r3, [r2]
.L2:
	movs	r3, #201
	lsls	r3, r3, #2
	adds	r3, r7, r3
	ldr	r3, [r3]
	cmp	r3, #99
	ble	.L3
	movs	r3, #0
	movs	r0, r3
	mov	sp, r7
	movs	r3, #202
	lsls	r3, r3, #2
	add	sp, sp, r3
	@ sp needed
	pop	{r4, r5, r7, pc}
.L6:
	.align	2
.L5:
	.word	-808
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-4) 10.3.1 20210621 (release)"
