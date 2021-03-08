# Modularização do java

### Jigsaw

- Há muito tempo se diz sobre modularizar a plataforma Java. É um plano que começou desde antes do Java 7, foi possibilidade no Java 8 e por fim, para permitir mais tempo de desenvolvimento, revisão e testes, foi movido para o Java 9.
- O projeto Jigsaw, como foi chamado, é composto por uma série de JEPs. Algumas delas inclusive já disponíveis no Java 8, como os conhecidos Compact Profiles. A ideia por trás do projeto não é só criar um sistema de módulos, que poderemos usar em nossos projetos, mas também aplicá-lo em toda a plataforma e JDK em busca de melhor organização e desempenho.
- Por padrão, todo sistema modular já vem com o módulo java.base , java.util e demais pacotes muitas vezes essenciais para a esmagadora maioria dos projetos.
