# Java - Instalação e Ambiente

### Instalando o Java (Linux)

- sudo add -apt-repository ppa:linuxuprising/java
- sudo apt install oracle-java10-installer
- java --version (para verificar a versão instalada)

### Instalando o Java (Windows)

- https://www.oracle.com/br/java/
- Entre no site e vá na aba "Faça o Download do Java" , depois desça a tela e vá na opção "JDK Download" e escolha a versão referente ao seu sistema operacional.
- Após baixar o arquivo, faça a instalação do mesmo e estará pronto.

### Gradle (Linux)

- https://gradle.org
- Versão 4.7 - Ganhando popularidade (Android Studio)
- Usa linguagem de programação Groovy
- mkdir /opt/gradle
- cd Global\ labs\ Academy
- unzip -d /opt/gradle gradle-7.7-bin.zip
- ls /opt/gradle/gradle-4.7
- export PATH=$PATH:/opt/gradle/gradle-4.7/bin
- sudo apt purge gradle //old versions
- gradle -v

### Gradle (Windows)

- https://gradle.org/
- Entre no site e vá na seção "1.Install Gradle" , depois desça a tela e vá na opção "Installing manually" e escolha a versão referente ao seu sistema operacional.
- Cria uma nova Pasta em C:\Gradle
- Dezipe o arquivo baixado dentro da pasta C:\Gradle
- Agora configure o Gradle no seu Sistema Operacional com os seguintes passos:
  - Dê um clique direito com o mouse em no ícone (seu computador) e vá em Propriedades → Configurações avançadas do sistema → Variáveis de Ambiente
  - Em Variáveis do Sistema selecione (PATH) e clique em Editar.
    Adicione a entrada C:\Gradle\gradle-6.8.2\bin e clique em salvar.
  - Para verificar a versão instalada, abra o seu command prompt e digite = gradle -v

### Maven (Linux)

- https://maven.apache.org/
- Versão 3.5.3 - Legados do ANT
- Baseado em XML
- unzip -d /opt/maven apache-maven-3.5.3-bin.zip
- ls /opt/maven/apache-maven-3.5.3
- sudo apt purge maven //old versions
- export PATH=$PATH:/opt/maven/apache-maven-3.5.3/bin
- mvn -v

### Maven (Windows)

- https://maven.apache.org/
- Entre no site e vá na seção "Download" , "Files" e escolha o Link referente ao seu sistema de Zip.
- Cria uma nova Pasta em C:\Apache-Maven
- Dezipe o arquivo baixado dentro da pasta C:\Apache-Maven
- Agora configure o Gradle no seu Sistema Operacional com os seguintes passos:
  - Dê um clique direito com o mouse em no ícone (seu computador) e vá em Propriedades → Configurações avançadas do sistema → Variáveis de Ambiente
  - Em Variáveis do Sistema selecione (PATH) e clique em Editar.
    Adicione a entrada C:\Apache-Maven\apache-maven-3.6.3\bin e clique em salvar.
  - A mesma caixa de diálogo pode ser usada para definir JAVA_HOME para a localização de seu JDK, por exemplo, C: \ Arquivos de programas \ Java \ jdk1.7.0_51
  - Para verificar a versão instalada, abra o seu command prompt e digite = mvn -v

### IntelliJ IDEA (Linux)

- https://www.jetbrains.com/pt-br/idea/download/
- Escolha a versão referente ao seu sistema operacional e baixe a versão - Community que é grátis.
- cd ~/firefox
- ./firefox --new-instance --safe-mode
- https://www.jetbrains.com/idea/
- cd Global\ Labs\ Academy
- sudo tar -xzf ideaIC-2018.1.4.tar.gz
- cd idea-IC-181.5087.20/bin/
- ./idea.sh

### IntelliJ IDEA (Windows)

- https://www.jetbrains.com/pt-br/idea/download/
- Escolha a versão referente ao seu sistema operacional e baixe a versão Community que é grátis.
- Após baixar o arquivo, faça a instalação do mesmo e estará pronto.

- Observação: Ferramentas de Build garante a mesma versão para todos os desenvolvedores

### Wrapper

- https://github.com/takari/maven-wrapper
- https://docs.gradle.org/current/userguide/gradele_wrapper.html

### Gradle Wrapper

- ./gradlew -v
- mvn -N io.takari:maven:wrapper
- ./mvnw -v

### Java - Criação de Projetos

- Criação de Projeto Spring = https://start.spring.io/

- Gerar um projeto via Mavem com Java e Gradle com Java
- No campo Group = Nome da empresa (br.com.globallabs)
- Artifacts = Nome do projeto (exemplo-maven)
- Escolher Java Version = (Colocar a versão que você instalou)
- Packaging = Escolher a opção Jar
- Description = Colocar descrição do projeto (Primeiro exemplo usando Maven)
- Colocar Dependencies = Web
- Clicar em Generate Project e Salvar o arquivo
- Repetir esse processo, porém agora com a opção Gradle.

### Fazer Importação do Projeto Maven no IntelliJ IDEA

- Abrir o aplicativo do IDEA
- Import Project = Selecionar o diretório onde foi extraindo os download dos projetos criados no site da Spring Initializr e selecionar o arquivo pom.xml
- Marcar opção de Import projects automatically

### Detalhes arquivo pom.xml

- Arquivo que trás todas informações de configuração do projeto, tais como: grupo de trabalho, nome do projeto, versão, packaging, descrição do projeto, propriedades, linguagem e dependências.

### Instalar Projeto

- Basta clicar na opção "Install" no campo direito do IDEA no menu Profiles(Maven)

### Rodar Projeto via IDEA

- Basta clicar na opção "Spring-boot-run" no campo direito do IDEA no menu Plugins(Maven)
- Vai ser gerado um endereço localhost, basta abrir esse endereço no seu navegador

### Rodar Projeto via Terminal

- No terminal, basta ir na pasta do projeto e entrar dentro da pasta target
- Executar o arquivo exemplo-maven-0.0.1-SNAPSHOT.jar com o comando = java .jar target/exemplo-maven-0.0.1-SNAPSHOT.jar

### Fazer Importação do Projeto Gradle no IntelliJ IDEA

- Abrir o aplicativo do IDEA
- Import Project = Selecionar o diretório onde foi extraindo os download dos projetos criados no site da Spring Initializr e selecionar o arquivo build.gradle
- Marcar opção de use auto-import
- Escolher a versão da sua instalação do Java (JVM)

### Detalhes arquivo build-gradle

- Arquivo que trás todas informações de configuração do projeto, tais como: grupo de trabalho, nome do projeto, versão, packaging, descrição do projeto, propriedades, linguagem e dependências.

### Instalar Projeto

- Basta clicar na opção "Build" no campo direito do IDEA no menu Profiles(Gradle)

### Rodar Projeto via IDEA

- Basta clicar na opção "bootrun" no campo direito do IDEA no menu Tasks(Gradle)
- Vai ser gerado um endereço localhost, basta abrir esse endereço no seu navegador

### Rodar Projeto via Terminal

- No terminal, basta ir na pasta do projeto e entrar dentro da pasta build
- Executar o arquivo exemplo-maven-0.0.1-SNAPSHOT.jar com o comando = java .jar build/libs/exemplo-gradle-0.0.1-SNAPSHOT.jar
