; Learning ASM by following DevDungeon tutorial
; Define variables in the data section

SECTION .data
    hello: db 'Hello ugly dude named shane.',10
    len: equ $-hello

; Define code in the text section
SECTION .text
    GLOBAL _start

_start:
    mov eax,4 ; 'write' system call = 4
    mov ebx,1 ; file descriptor 1 = stdout
    mov ecx,hello ; string to write
    mov edx,len ; length of string to write
    int 80h

    ; Terminate the program
    mov eax,1 ; 'exit' system call
    mov ebx,0 ; exit with error code 0
    int 80h
