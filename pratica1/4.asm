ORG 00h
JMP main ; pula para main
ORG 33h ; endereço 33h

main:
    CLR A ; A = 0
    MOV R0, #01 ; R0 = 1

bloco1:
    JZ bloco2 ; se A = 0, pula para bloco2
    JNZ bloco3 ; se A != 0, pula para bloco3
    NOP ; espera 1 microsegundo

bloco2:
    MOV A, R0 ; A = R0
    JMP bloco1 ; pula para bloco1

bloco3:
    DJNZ R0, bloco3 ; decrementa R0 e pula para bloco3 se R0 != 0
    JMP main ; pula para main

END
