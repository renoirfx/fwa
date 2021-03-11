# Fun with Assembly (x86-64 or amd64) on GNU/Linux

### Repository
This repository is to track myself while learning assembly.<br/>
For now i'm using `AT&T` syntax and `GCC` to compile the code, a bit of
weird, next time i'll use `GAS (GNU assembler)` and link against `libc`
for C function.<br/>
And last, `Intel` syntax with `NASM` *or still use GAS?*.

### Files
```
.
└── src/
    ├── bin/
    │   └── clear.s
    ├── libc/
    │   └── printf.s
    ├── if-else.s
    ├── linux-syscall/
    │   └── write.s
    └── return.s
```

## Notes

### Flags
```
ZF = Zero flag
SF = Sign flag
CF = Carry Flag
OF = Overflow flag
```

### General Purpose Registers
```
rsp = Stack pointer
rax = Return value
rdi = 1st argument
rsi = 2nd argument
rdx = 3rd argument
rcx = 4th argument
r8 = 5th argument
r9 = 6th argument
r10, r11 = Callee-owned
rbx, rbp, r12 - r15 = Caller-owned
```

### Instruction suffixes
```
b = byte
w = word
l = doubleword
q = quadword
```

### Intel syntax with GAS
```asm
.intel_syntax noprefix

; your code here
```
