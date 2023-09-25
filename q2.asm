section .text
global main
extern printf
extern scanf

main:
    push rbp
    mov rbp,rsp
   ; sub rsp,16

    xor eax,eax
    lea rdi,[msg1]
    call printf		;input prompt

    xor eax,eax
    lea rdi,[format1]
    lea esi,[integer]
    call scanf		;scanf("%d",n)

    xor eax,eax
    lea rdi,[msg2]
    call printf		;print "output"

    xor eax,eax
    lea rdi,[format1]
    mov esi,[integer]
    call printf

    xor eax,eax
    lea rdi,[msg3]	;input prompt
    call printf

    xor eax,eax
    lea rdi,[format2]
    lea rsi,[string]
    call scanf

    xor eax,eax
    lea rdi,[msg2]
    call printf 

    xor eax,eax
    lea rdi,[string]
    call printf   

   ; add rsp,16
    leave
    ret

section .data
    msg1: db "input integer : ",0
    msg2: db "output :",0
    msg3: db "input string : ",0
    format1: db "%d",0
    format2: db "%s",0

section .bss
    integer:    rest 5
    string:     rest 50
