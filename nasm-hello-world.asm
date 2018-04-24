; Writes "最近怎么样？" to the console only using system calls.
; Write in terminal: nasm -fmacho64 nasm-hello-world.asm && ld nasm-hello-world.o && ./a.out

            global  start

            section     .text
start:
            mov         rax, 0x02000004
            mov         rdi, 1
            mov         rsi, message
            mov         rdx, 19
            syscall
            mov         rax, 0x02000001
            xor         rdi, rdi
            syscall

            section     .data
message:    db         '最近怎么样?', 0xa
