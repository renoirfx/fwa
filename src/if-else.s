.text

.section .rodata
.eq_fmt:
	.string "equal\n"
.gt_fmt:
	.string "greather than\n"
.lt_fmt:
	.string "less than\n"

.text
.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$9, -4(%rbp)
	cmpq	$1, -4(%rbp) # == ?
	jne	.L2 # no
	leaq	.eq_fmt(%rip), %rdi
	call	printf
	movq	$1, %rax
	jmp	.L3
.L2: # > ?
	cmpq	$1, -4(%rbp)
	jle	.L4 # no
	leaq	.gt_fmt(%rip), %rdi
	call	printf
	movq	$0, %rax
	jmp	.L3
.L4:
	leaq	.lt_fmt(%rip), %rdi
	call	printf
	movq	$0, %rax
.L3:
	popq	%rbp
	ret
