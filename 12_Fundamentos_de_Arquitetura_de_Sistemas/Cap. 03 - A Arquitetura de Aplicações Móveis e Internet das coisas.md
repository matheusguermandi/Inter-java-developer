# A Arquitetura de Aplicações Móveis e Internet das coisas

### Por que conectar as coisas?

- Embutir sensores em objetos do dia-a-dia.
- Coletar dados dos sensores.
- Usar os dados para tomar decisões.
- Exemplos
  - Smart Building, Smart Home, Wearables, Agriculture, Smart Transportation, RFID Suplly Chain, Energy Efficiency.

### Computação Ubíqua

- A computação ubíqua é a terceira onda da computação que está apenas começando. Primeiro tivemos os mainframes compartilhados por várias pessoas. Estamos na era da computação pessoal, com pessoas e máquinas estranhando umas às outras. A seguir vem a computação ubíqua a era da tecnologia 'calma' quando a tecnologia recua para o pano de fundo de nossas vidas.
- As tecnologias mais importantes são aquelas que desaparecem. Elas se integram à vida do dia a dia ao nosso cotidiano até serem indistinguíveis dele.

### Desafios da Internet das Coisas

- Privacidade e Segurança.
- Quantidade exponencial de dispositivos conectadas na rede.
- Ser capaz de processar e armazenar uma enorme quantidade de informações.
- Gerar valor a partir dos dados coletados.

### Atributos a serem considerados

- Baixo consumo de energia, Rede de dados limitado, Resiliencia, Segurança, Customização, Baixo custo.

### Exemplos de Plataformas

- Arduino

  - Plataforma de Prototipagem, Com entradas/saídas, Desenvolvedor escreve em C/C++, Interface serial ou USB, Shields.

- Embarcados (MCUs)

  - Microcontrolador de chip único, Sistema operacional real time, Embarcado, Uso industrial, médico, militar, transporte.

- Minicomputadores (Raspberry Pi)
  - Computador completo, Hardware integrado em uma única placa, Roda SO Linux ou Windows, Uso doméstico e comercial.

### Protocolo MQTT

- Base na pilha do TCP/IP.
- Protocolo de mensagem assíncrona (M2M).
- Criado pela IBM para conectar sensores de pipelines de petróleo a satélites.
- Padrão OASIS suportado pelas linguagens de programação mais populares.

### Detalhamento da URI

- mqtt://broker.io/a6g319/gps/position
  - mqtt = Protocolo
  - broker io = Broker
  - a6g319 = User Identifier
  - gps = Sensor
  - position = Information Type

### Modelos de Subscribe

- mqtt://broker/user/gps/position
- mqtt://broker/user/gps/velocity
- mqtt://broker/user/accelerometer
- mqtt://broker/+/gps/position
- mqtt://broker/user/gps/+
- mqtt://broker/+/#

### Níveis Diferentes de Qualidade de Serviços

- QoS 0
  - Nível mínimo de menor esforço.
  - Sem garantia de entrega.
  - Mensagem não é retransmitida.
- QoS 1
  - Garante que a mensagem foi entregue no mínimo uma vez ao recebedor.
  - Mensagem pode ser retransmitida se não houver confirmação de entrega.
- QoS 2
  - Garante que a mensagem foi entregue no mínimo uma vez ao recebedor.
  - Mensagem pode ser retransmitida se não houve confirmação de entrega.

### Cloud

- Grande e cada vez maior número de devices conectados.
- TBs ou PBs de informações.
- Potencial de escala global.

### Estudo de Caso

### Prova de Conceito

- GPS - App Android
- Broker - Eclipse Mosquitto
- Worker - Node.js
- Data Store - Banco de Dados MySQL

### Mínimo Produto Viável

- Utilizando opções melhores para a aplicação (mais robustas).
  - GPS - GPS Embarcado
  - Broker - HiveMQ
  - Worker - Akka Scala JVM
  - Data Store - Banco de Dados noSQL

### Solução com a Nuvem (Cloud)

- Utilizando produtos da Amazon.
  - GPS - GPS Embarcado
  - Broker - AWS IoT Core
  - Worker - AWS Kinesis Firehose
  - Data Store - AWS S3

### IoT na prática

- GPS (MQTT) → Broker (MQTT) → Worker (TCP) → Cache (socket io)
- GPS Embarcado → AWS IoT Core → AWS Data Stream → AWS Lambda → AWS ElasticCacheRedis
- AWS ElasticCache Redis → AWS EC2 → FeathersJSBackend → Dashboard
