# Programa em Assembly para 8051 - Contador com Display de 7 Segmentos

Este é um programa em Assembly para o microcontrolador 8051 que implementa um contador com um display de 7 segmentos. O programa atende aos seguintes requisitos:

- Ao pressionar o botão/chave SW0, o display de 7 segmentos mostrará a contagem de 0 a 9 em loop, com um intervalo de tempo de 0,25 segundos entre cada número.
- Ao pressionar o botão/chave SW1, o intervalo de tempo para a contagem é alterado para 1 segundo, tornando a contagem mais rápida.
- Pressionando novamente SW0, a contagem retorna ao intervalo de 0,25 segundos, mantendo a execução do programa em loop.
- O programa não inicia automaticamente quando executado pela primeira vez; o display está desligado. A contagem começa apenas quando SW0 ou SW1 é pressionado.
- O programa utiliza sub-rotinas de delay para criar os intervalos de tempo e instruções condicionais para verificar o acionamento das chaves.
- Um display de 7 segmentos e dois botões (SW0 e SW1) disponíveis no simulador EdSim51 são usados.

### Instruções de Uso:

1. Carregue o programa no simulador EdSim51.
2. Execute o programa.
3. Pressione o botão SW0 para iniciar a contagem com um intervalo de tempo de 0,25 segundos.
4. Pressione o botão SW1 para alternar para um intervalo de tempo de 1 segundo.
5. Pressione novamente SW0 para retornar ao intervalo de 0,25 segundos.
6. O contador continuará em loop.

### Configuração de Hardware:

- O botão SW0 deve estar conectado ao pino P2.0.
- O botão SW1 deve estar conectado ao pino P2.1.
- O display de 7 segmentos deve estar conectado ao Port 1 (P1).

### Observações:

- Este código é um esboço geral e pode precisar de adaptações específicas para funcionar no simulador EdSim51 e com seu hardware.
- Certifique-se de ler a documentação do simulador EdSim51 para entender como configurar os pinos de entrada e saída.

## Autores
👤 [Beatriz Cardoso de Oliveira](https://github.com/trizcard) - NUSP: 12566400

👤 [Heitor Tanoue de Mello](https://github.com/heitortanoue) - NUSP: 12547260

👤 [Guilherme Augusto Moreira](https://github.com/GuilhermeAMoreira) - NUSP: 12547281
