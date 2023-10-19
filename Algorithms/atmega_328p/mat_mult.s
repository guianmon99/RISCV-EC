	.file	"mat_mult.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	matrix_multiply
	.type	matrix_multiply, @function
matrix_multiply:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
/* stack size = 14 */
.L__stack_usage = 14
	std Y+8,r25
	std Y+7,r24
	std Y+10,r23
	std Y+9,r22
	std Y+12,r21
	std Y+11,r20
	std Y+2,__zero_reg__
	std Y+1,__zero_reg__
	rjmp .L2
.L7:
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	rjmp .L3
.L6:
	ldd r18,Y+1
	ldd r19,Y+2
	movw r24,r18
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	lsl r24
	rol r25
	movw r18,r24
	ldd r24,Y+11
	ldd r25,Y+12
	add r18,r24
	adc r19,r25
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	st X+,__zero_reg__
	st X,__zero_reg__
	std Y+6,__zero_reg__
	std Y+5,__zero_reg__
	rjmp .L4
.L5:
	ldd r18,Y+1
	ldd r19,Y+2
	movw r24,r18
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	lsl r24
	rol r25
	movw r18,r24
	ldd r24,Y+11
	ldd r25,Y+12
	movw r20,r24
	add r20,r18
	adc r21,r19
	ldd r18,Y+1
	ldd r19,Y+2
	movw r24,r18
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	lsl r24
	rol r25
	movw r18,r24
	ldd r24,Y+11
	ldd r25,Y+12
	add r18,r24
	adc r19,r25
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r30,r24
	ld r22,Z
	ldd r23,Z+1
	ldd r18,Y+1
	ldd r19,Y+2
	movw r24,r18
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	lsl r24
	rol r25
	movw r18,r24
	ldd r24,Y+7
	ldd r25,Y+8
	add r18,r24
	adc r19,r25
	ldd r24,Y+5
	ldd r25,Y+6
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd r18,Y+5
	ldd r19,Y+6
	movw r24,r18
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	lsl r24
	rol r25
	movw r18,r24
	ldd r24,Y+9
	ldd r25,Y+10
	add r18,r24
	adc r19,r25
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	movw r26,r24
	ld r18,X+
	ld r19,X
	mul r30,r18
	movw r24,r0
	mul r30,r19
	add r25,r0
	mul r31,r18
	add r25,r0
	clr r1
	movw r18,r22
	add r18,r24
	adc r19,r25
	ldd r24,Y+3
	ldd r25,Y+4
	lsl r24
	rol r25
	add r24,r20
	adc r25,r21
	movw r30,r24
	std Z+1,r19
	st Z,r18
	ldd r24,Y+5
	ldd r25,Y+6
	adiw r24,1
	std Y+6,r25
	std Y+5,r24
.L4:
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,3
	brge .+2
	rjmp .L5
	ldd r24,Y+3
	ldd r25,Y+4
	adiw r24,1
	std Y+4,r25
	std Y+3,r24
.L3:
	ldd r24,Y+3
	ldd r25,Y+4
	sbiw r24,3
	brge .+2
	rjmp .L6
	ldd r24,Y+1
	ldd r25,Y+2
	adiw r24,1
	std Y+2,r25
	std Y+1,r24
.L2:
	ldd r24,Y+1
	ldd r25,Y+2
	sbiw r24,3
	brge .+2
	rjmp .L7
	nop
/* epilogue start */
	adiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	matrix_multiply, .-matrix_multiply
	.section	.rodata
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
.global	main
	.type	main, @function
main:
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,54
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 54 */
/* stack size = 56 */
.L__stack_usage = 56
	ldi r18,lo8(18)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r24,r28
	adiw r24,1
	movw r26,r24
	0:
	ld r0,Z+
	st X+,r0
	dec r18
	brne 0b
	ldi r24,lo8(18)
	ldi r30,lo8(.LC1)
	ldi r31,hi8(.LC1)
	movw r26,r28
	adiw r26,19
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	movw r18,r28
	subi r18,-37
	sbci r19,-1
	movw r24,r28
	adiw r24,19
	movw r20,r18
	movw r22,r24
	movw r24,r28
	adiw r24,1
	call matrix_multiply
	ldi r24,0
	ldi r25,0
/* epilogue start */
	adiw r28,54
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
.global __do_copy_data
