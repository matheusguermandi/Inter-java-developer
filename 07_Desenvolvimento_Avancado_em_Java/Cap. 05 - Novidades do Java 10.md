### Aplicando os novos releases da linguagem na prática I

- Link do Docker = https://www.docker.com/get-started (escolha a versão equivalente ao seu sistema operacional).
- Link do video ensinando a fazer a instalação: https://www.youtube.com/watch?v=OweZAewo54A

### Aplicando os novos releases da linguagem na prática II - Algumas anotações sober o var

- Consegue

  - variáveis local inicializadas
  - variável suporte do enhaced for
  - variável suporte do for iterativo
  - variável try with resource

- Não consegue
  - var não pode ser utilizado em nível de classe
  - var não pode ser utilizado como parâmetro
  - var não pode ser utilizada em variáveis locais não inicializadas

### Aplicando os novos releases da linguagem na prática III

- docker = Verificar instalação
- docker container run -it -m512M --entrypoint bash openjdk:7-jdk (terminal da maquina JDK 7)
- java -XX:+PrintflagsFinal -version (Parâmetros de configuração do java)
- java -XX:+PrintflagsFinal -version | grep MaxHeapSize
- exit - sair da imagem
- docker run -it -m 512M --entrypoint bash openjdk:10-jdk (terminal da maquina JDK 10)
- java -XX:+PrintflagsFinal -version | grep MaxHeapSize
- docker container run -it --cpus 2 openjdk:10-jdk (entrar na pasta jshell)
- Runtime.getRuntime().availabeProcessors() - (Mostrar cpus disponiveis)

### Códigos da aula
- Códigos / Cod. 09 - Cap. 05 InferenciaExemplo.java 

### Referências
- https://docs.oracle.com/javase/10/language/