# O que precisamos saber sobre Java

### O que é Java?

- Java é uma linguagem de programação e plataforma computacional lançada em 1995 pela Sun Microsystems, por um time comandado por James Gosling. Anos depois foi adquirida pela Oracle.
- Diferente de outras linguagens de programação, que são compiladas para código nativo, o Java é compilado para um bytecode que é interpretado por uma máquina virtual.

### O que é o compilador?

- Um compilador é um programa que, a partir de um código fonte, cria um programa semanticamente equivalente, porém escrito em outra linguagem, código objeto. Um compilador traduz um programa de uma linguagem textual para uma linguagem de máquina, específica para um processador e sistema operacional.
- O nome compilador é usado principalmente para os programas que traduzem o código fonte de uma linguagem de programação de alto nível para uma linguagem de programação de baixo nível (por exemplo, Assembly ou código de máquina).

### O que é o bytecode?

- É o código originado da compilação de programas Java.
- O bytecode é o programa interpretado e executado pela Máquina Virtual Java, JVM.

### O que é a JVM?

- Uma Máquina Virtual, ou Virtual Machine, é um software que simula uma máquina física e consegue executar vários programas, gerenciar processos, memória e arquivos. Tudo isso faz parte de uma plataforma com memória, processador e outros recursos totalmente virtuais, sem dependência do hardware.
- A JVM é uma máquina virtual que executa programas Java, executando os bytecodes em linguagem de máquina para cada sistema operacional.
- Em linguagens compiladas diretamente para um sistema operacional (SO) específico, esse programa não irá executar em outro SO, havendo a necessidade de compilar uma versão do software para cada SO.
- Com o Java, compilamos para a JVM, o bytecode será executado pela máquina virtual, e não diretamente pelo SO, assim, o software escrito em Java possui portabilidade para qualquer sistema operacional, porém, cada JVM deve ser construída para um SO específico.

### O que é a JRE?

- JRE significa Java Runtime Envirnment, ou Ambiente de Execução do Java, é composto pela Java Virtual Machine (JVM), bibliotecas e APIs da linguagem Java e outros componentes para suporte da plataforma Java.
- Ele represente a parte responsável pela execução do software Java.
- Exemplo: sudo apt-get install openjdk-8-jre

### O que é a JDK?

- Java Development Kit (JDK), Kit de Desenvolvimento Java, é um conjunto de utilitários que permitem criar software para a plataforma Java. É composto pelo compilador Java, bibliotecas da linguagem, ferramentas e a JRE.
- Exemplo: sudo apt-get install openjdk-8-jdk

### O que é a Java SE?

- Java Standard Edition (SE), é a distribuição mínima da plataforma de desenvolvimento de aplicações Java.
- OpenJDK é a implementação de referência opensource da Plataforma Java, JavaSE, que ainda é mantida pela Oracle.

### O que é a Java EE?

- Java Enterprise Edition, é uma extensão da Java SE que possui suporte a desenvolvimento de sistemas corporativos.
- Além do mínimo da plataforma, o Java EE possui diversas especificações de partes da infra estrutura de aplicações, como acesso a banco de dados, mensageria, serviços web, parser de arquivos e outras.
- Servidores de Aplicações JavaEE, sabem seguir essas especificações e implementar os recursos para os usuários.
- Exemplo: JBoss (RedHat), Weblogic (Oracle), WebSphere (IBM)
- Glassfish = Implementação de Referência Opensource: https://javaee.github.io/glassfish

### O que é a Jakarta EE?

- Com a falta de investimento da Oracle no Java, ela cedeu todo o código, implementações e especificações do JavaEE para a Eclipse Foundation, mas como o nome JavaEE é uma marca registrada, foi escolhido o nome JakartaEE.
- Agora a evolução da especificações e padrões do Java será feito sobre o nome JakartaEE, com compatibilidade com o JavEE.
