.text

.section .rodata
.fmt:
	.string "10 + 10 = %d\n"

.text
.globl main

# printf("10 + 10 = %d\n", 10 + 10);
main:
	pushq %rbp
	movq %rsp, %rbp
	movq $10, %rsi
	addq %rsi, %rsi
	leaq .fmt(%rip), %rdi
	call printf
	movq $0, %rax
	popq %rbp
	ret
