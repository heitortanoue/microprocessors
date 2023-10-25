ORG 0x00

; Definição dos registradores
SW0     equ P2.0        ; SW0 está conectado ao pino P1.0
SW1     equ P2.1        ; SW1 está conectado ao pino P1.1
Display equ P1          ; Display de 7 segmentos está conectado ao Port 2

; Definição de constantes
Delay025s   equ 125     ; Delay para 0,25 segundos
Delay1s     equ 500    ; Delay para 1 segundo

; equivalente hexadecimal dos números a serem mostrados no display
ZERO	equ	0C0h
UM		equ	0F9h
DOIS	equ	0A4h
TRES	equ	0b0h
QUATRO	equ	99h
CINCO	equ	92h
SEIS	equ	82h
SETE	equ	0F8h
OITO	equ	80h
NOVE	equ	90h

; Inicialização
mov P2, #0xFF           ; Configura P1 como entrada com pull-up
mov Display, #0xFF      ; Desliga o display

MainLoop:
  mov R1, #0            ; Reseta o valor que vai para o display
  jmp CountLoop         ; Pula para a sub-rotina de contagem

CountLoop:
  mov A, R1             ; Move o valor de R1 para o acumulador
  acall DisplayNumber   ; Mostra o número no display
  inc R1                ; Incrementa o valor de R1
  acall Delay           ; Delay de x segundos

  cjne R1, #10, CountLoop ; Loop de contagem de 0 a 9
  sjmp MainLoop         ; Retorna para o loop principal

DisplayNumber:
  MOV Display, #0xff    ; Desliga o display
  cjne A, #0, T1        ; Verifica se o valor é 0
  mov Display, #ZERO    ; Mostra 0 no display
  RET                   ; Retorna para quem chamou a função

T1:
  cjne A, #1, T2        ; Verifica se o valor é 1
  mov Display, #UM      ; Mostra 1 no display
  RET

T2:
  cjne A, #2, T3        ; Verifica se o valor é 2
  mov Display, #DOIS    ; Mostra 2 no display
  RET

T3:
  cjne A, #3, T4        ; Verifica se o valor é 3
  mov Display, #TRES    ; Mostra 3 no display
  RET

T4:
  cjne A, #4, T5        ; Verifica se o valor é 4
  mov Display, #QUATRO  ; Mostra 4 no display
  RET

T5:
  cjne A, #5, T6        ; Verifica se o valor é 5
  mov Display, #CINCO   ; Mostra 5 no display
  RET

T6:
  cjne A, #6, T7        ; Verifica se o valor é 6
  mov Display, #SEIS    ; Mostra 6 no display
  RET

T7:
  cjne A, #7, T8        ; Verifica se o valor é 7
  mov Display, #SETE    ; Mostra 7 no display
  RET

T8:
  cjne A, #8, T9        ; Verifica se o valor é 8
  mov Display, #OITO    ; Mostra 8 no display
  RET

T9:
  mov Display, #NOVE    ; Mostra 9 no display
  RET

; Implementação da subrotina de Delay
Delay:                  
    JNB SW1, Inicio_1s    ; Vai para delay de 1s se o botão 1 estiver ativado
    MOV R4, #2
    JNB SW0, Inicio_250ms ; Vai para delay de 250ms se o botão 0 estiver

Inicio_250ms:
    MOV R2, Delay025s     ; Armazena em R2 o valor do delay

Loop_250ms:
    MOV R3, #250          ; R3 armazena 250
    DJNZ R3, $            ; Decrementa 1 de R3 e só ignora caso seja 0
    DJNZ R2, Loop_250ms   ; Decrementa 1 de R2 e vai para Loop_250ms caso não seja 0
    DJNZ R4, Inicio_250ms ; Decrementa 1 de R4 e vai para Inicio_250ms caso não seja 0

    RET                   ; Volta para a linha a baixo do ultimo Call

Inicio_1s:
    MOV R4, #8            ; Armazena 8 em R4
    jmp Inicio_250ms      ; pula para Inicio_250ms


END
