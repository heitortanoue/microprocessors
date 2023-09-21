# Atividade prática de uso de set de instruções
> Heitor Tanoue de Mello - 12547260

## Exercício 1

**a.** O tempo total gasto foi de 20 $\mu$s, exceto a ultima instrução de `JMP`

**b.** Como cada ciclo de máquina leva o tempo de 1 $\mu$s, então o programa contém 20 ciclos de máquina

**c.** Os 8 bits individuais de P1 foram encaminhados para o ACC como um valor composto por 2 bytes. Este valor foi estabelecido como FFh, uma vez que as portas 0 a 3 são inicializadas automaticamente com o padrão binário `11111111b`.

**d.** O valor movido era o valor que estava contido no endereço `51h`, que era o que anteriormente estava em R0, que era o valor `FFh`

**e.** O DPTR é composto por dois registradores, DPH e DPL, ambos de 1 byte cada. Quando vamos inserir 4 hexadecimais em DPTR, são colocados 2 desses números em cada um desses registradores.
Dessa forma, o maior valor que pode ser passado é `FFFFh`

## Exercício 2

O bit menos significativo (mais à direita) do PSW era igual a `1` quando ACC era igual a 4 e `0` quando ACC era igual a 3. Isso mostra o comportamento da flag de paridade (P):
- Quando o número contido em ACC é par, $P = 1$
- Quando o número contido em ACC é ímpar, $P = 0$