# Conceitos de Integração de Sistemas e Mensageria

### Aprenda o que é, e como funciona Arquitetura em Mensageria

- O que é arquitetura em mensageria
- Comunicação assíncrona entre serviços
- Gerenciamento de erros

### O que é arquitetura em mensageria?

- Pros
  - Desacoplamento, Fácil plug & play, Comunicação assíncrona, Simples escalabilidade, Broadcasting, Permite Event Source
- Contras
  - Single point of failure, Difícil monitoramento

### Comunicação Assíncrona entre Serviços

- Modelo 1
  - Passo 1 = WebApp → Proxy HTTP → Serviço1 → Message Broker
  - Passo 2 = Message Broker → Serviço2 → Message Broker
  - Passo 3 = Message Broker → Serviço3
- Modelo 2
  - Passo 1 = Serviço1
  - Passo 2 = Serviço2 e Serviço3 → (Serviço1)
  - Passo 3 = Serviço4 e Serviço5 → (Serviço2) / Serviço6 e Serviço7 → (Serviço3)

### Gerenciando Erros em uma Arquitetura Assíncrona

- Dead letter queue (Filas de re-tentativas)
- Monitoramento entre serviços
- Rastreamento de fluxo

### Inconsistência de dados

- Passo 1 = WebApp → Proxy HTTP (Adicionar cartão de crédito) → Serviço de Carteira → Message Broker
- Passo 2 = WebApp → Proxy HTTP (Adquirir plano) → Serviço de Planos → Message Broker
- Passo 3 = Message Broker (Aquisição de plano) → Serviço de Cobrança → Banco de Dados
- Passo 4 = Message Broker (Aquisição de plano) → Serviço de Cobrança (Dead letter queue / Aquisição de plano)→ Banco de Dados

### Rastreamento de fluxo

- WebApp → Proxy HTTP → Serviço1 (log, logs, logs) → Message Broker → Serviço2 (logs, logs, logs) → Serviço3 (logs, logs, logs)
