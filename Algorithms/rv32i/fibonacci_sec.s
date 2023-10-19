	.file	"fibonacci_sec.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-832
	sw	s0,828(sp)
	addi	s0,sp,832
	li	a5,0
	li	a6,0
	sw	a5,-824(s0)
	sw	a6,-820(s0)
	li	a4,1
	li	a5,0
	sw	a4,-816(s0)
	sw	a5,-812(s0)
	li	a5,2
	sw	a5,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	addi	a5,a5,-1
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-808(a5)
	lw	a5,-804(a5)
	lw	a3,-20(s0)
	addi	a3,a3,-2
	slli	a3,a3,3
	addi	a3,a3,-16
	add	a3,a3,s0
	lw	a0,-808(a3)
	lw	a1,-804(a3)
	add	a2,a4,a0
	mv	a6,a2
	sltu	a6,a6,a4
	add	a3,a5,a1
	add	a5,a6,a3
	mv	a3,a5
	lw	a5,-20(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a2,-808(a5)
	sw	a3,-804(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L3
	li	a5,0
	mv	a0,a5
	lw	s0,828(sp)
	addi	sp,sp,832
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g1ea978e3066) 12.1.0"
