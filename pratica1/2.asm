ORG 00h

main:
    MOV ACC, #02 ; mover imediato
    MOV B, #03 ; mover imediato

    MOV 50h, #7 ; mover imediato

    ADD A, 50h ; adicionar o valor de 50h ao acumulador

    SUBB A, #3 ; subtrair o valor imediato 3 do acumulador

    INC B ; incrementar o valor de B

    SUBB A, B ; subtrair o valor de B do acumulador

    MUL AB ; multiplicar o acumulador por B

    INC B ; incrementar o valor de B
    INC B

    DIV AB ; dividir o acumulador por B

    MOV 51h, A ; mover o valor do acumulador para 51h
    MOV 52h, B ; mover o valor de B para 52h

    JMP main ; loop infinito

END
