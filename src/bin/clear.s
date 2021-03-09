/* clear terminal screen */

.text
.section .rodata
.msg:
	.string "\033[H\033[J"

.text
.globl main

main:
	pushq %rbp
	movq %rsp, %rbp
	movq $6, %rdx
	leaq .msg(%rip), %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	movq $0, %rax
	popq %rbp
	ret
