ORG 100h

reverse_string PROC
    PUSH AX
    PUSH CX

    XOR CX, CX              ; CX = character count

read_loop:
    LODSB                   ; AL = [SI], SI++
    CMP AL, 0               ; check null terminator
    JE reverse_loop
    PUSH AX                 ; push character onto stack
    INC CX                  ; increment length
    JMP read_loop

reverse_loop:
    POP AX                  ; pop characters (LIFO)
    STOSB                   ; store into destination
    LOOP reverse_loop

    MOV AL, 0               ; null-terminate destination
    STOSB

    POP CX
    POP AX
    RET
reverse_string ENDP


; Data section


source DB 'computer architecture', 0
destination DB 30 DUP(?)


; Program entry point


START:
    LEA SI, source
    LEA DI, destination
    CALL reverse_string
    RET
