ORG 00h

main:
    MOV A, #01001101b ; move o valor 01001101b para o acumulador A
    MOV B, #10010101b ; move o valor 10010101b para o acumulador B

    ANL A, B ; AND logico

    RR A ; rotaciona para a direita em 1 bit
    RR A ; rotaciona para a direita em 1 bit

    CPL A ; complemento de A

    RL A ; rotaciona para a esquerda em 1 bit
    RL A ; rotaciona para a esquerda em 1 bit

    ORL A, B ; OR logico

    XRL A, B ; XOR logico

    SWAP A ; troca os nibbles de A

    JMP main ; loop infinito

END