global _start

    section .data
    message: db 'hello, world!', 10

    section .text
    _start:
        mov rax, 1; system call number should be stored in rax
        mov rdi, 1; argument #1 in rdi: where to write
        mov rsi, message; argument #2 in rsi: where the string starts 
        mov rdx, 14; argument #3 in rdx: how many bytes to write
        syscall; invokes a system call

        mov rax, 60; 'exit' syscall number 
        xor rdi, rdi
        syscall 
