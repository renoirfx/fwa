.text
.section .rodata

.msg:
	.string "hello world\n"

.text
.globl main

main:
	pushq %rbp
	movq %rsp, %rbp
	movq $12, %rdx
	leaq .msg(%rip), %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall

	movq $0, %rax
	popq %rbp
	ret
