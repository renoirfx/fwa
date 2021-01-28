# umm yeah, at&t syntax

.globl main
.type main, @function

main:
	push %rbp  # push base pointer
	mov %rsp, %rbp  # move stack pointer to base pointer
	mov $0, %rax  # move 0 to rax
	pop %rbp  # pop base pointer
	ret  # return value
