org 0000h ;endereço de origem

main:
    MOV A, #10h         ;mover de forma imediata     (2 us)
    MOV A, #00h         ;mover de forma imediata     (2 us)

    MOV R0, #04h        ;mover de forma imediata     (1 us)
    MOV B, #13h         ;mover de forma imediata     (2 us)

    MOV 50h, P1         ;mover de forma direta       (2 us)

    SETB PSW.3          ;banco 1                     (1 us)
    MOV R0, 50h         ;mover de forma direta       (2 us)

    MOV 51h, R0         ;mover de forma direta       (2 us)

    MOV R1, #51h        ;mover de forma imediata     (1 us)
    MOV A, @R1          ;mover de forma indireta     (2 us)

    MOV DPTR, #9A5Bh    ;mover de forma imediata     (2 us)
    NOP                 ;consumir tempo de 1 us      (1 us)

    JMP $               ;loop infinito               (2 us)

end ;Fim do programa