# O que são Redes, Protocolos e Interfaces de Rede

### O que é Rede ?

- Rede é um conjunto de equipamentos interligados de maneira a trocarem informações e compartilham recursos.

### Rede Wan

- Wide Area Network ou World Area Network é uma rede geograficamente distribuída

### Rede Man

- Metropolitan Area Network é uma rede metropolitana que interligam várias redes locais

### Rede Lan

- Local Area Network é uma rede local de uma forma geral em um único prédio ou campus

### Protocolos

- Protocolo é a "linguagem" usada pelos dispositivos de uma rede de modo que eles consigam se entender.

### Protocolo IP

- Protocolo de Internet - Endereço IP - Número que identificam seu computador em uma rede

### Protocolo ICMP (Internet Control Message Protocol)

- Tem por objetivo prover mensagens de controle na comunicação entre nós

### DNS (Domain Name Server)

- Esse protocolo de aplicação tem por função identificar endereços IPs e manter uma tabela com os endereços dos caminhos de algumas redes

### Interface de Rede

- Interface de rede é um software e/ou hardware que faz a comunicação em uma rede de computadores. As Interfaces de rede no linux estão localizadas no diretório /dev e a maioria é criada dinamicamente pelos softwares quando são requisitadas.

### Interface de Rede (Loopback)

- A interface loopback é um tipo especial de interface que permite fazer conexões com você mesmo, com ela, você pode testar vários programas de rede sem interferir em sua rede. O endereço padrão para o loopback é IP 127.0.0.1

### Comando ifconfig

- Comando para saber IP da maquina = ifconfig
- Comando para instalar o ifconfig = sudo apt install net-tools

### Comandos Hostname e ping

- hostname = Informações sobre o host da rede
- hostname -a = Nome do computador na rede
- hostname -I = Número de endereço IP
- hostname -i = Número de endereço loopback
- w = Fornece informações completas do usuário
- who = Fornece informações curtas do usuário: Nome, data e horário de como estamos logado
- whoami = Fornece o nome do usuário logado
- whois = Fornece informações completas sobre um site ( whois www.pudim.com.br )
- ping = Verifica se o host está ativo ( ping www.google.com.br ) (CTRL + Z para parar de pingar)
- diq = Fornece informações sobre DNS ( diq www.google.com )
- dig +short = Fornece somente o endereço DNS (dig www.google.com +short)

### Comandos Traceroute

- O comando traceroute traça a rota da nossa rede local até um determinado host
- Comando para instalar o traceroute = sudo apt install traceroute
- traceroute = Traça a rota de um host até outro host ( traceroute www.google.com )

### Comandos Finger

- O comando finger mostra todas as informações dos usuários que estão logados em nosso host
- Comando para instalar o finger = sudo apt install finger
- finger = Mostrar todos os usuários logados e informações, como nome, e tempo logado.
