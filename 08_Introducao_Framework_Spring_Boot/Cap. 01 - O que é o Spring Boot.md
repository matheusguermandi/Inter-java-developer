# O que é e quais problemas resolvem o Spring Boot?

### O que é o Spring Boot?

- Criado pela Spring Source em 2012.
- Facilita setup de projetos Spring.
- Sem necessidade de criar arquivos de configuração.
- Foco em produtividade.
- Maior tempo no desenvolvimento de valor.

### Quais problemas resolve?

- Produtividade: setup simplificado de projeto
- Starters: dependências auto configuráveis pelo Spring Boot
- Execução simplificada: sem deploy em servidor externo.
- Configuração: arquivo externo para configuração.
- Valor: maior tempo em desenvolvimento.

### Configuração Manual

- Múltiplos arquivos XML.
- Configuração manual do Spring MVC: Dispatcher Servlet, web.xml, spring-mvc.xml.
- Configuração manual dos beans Spring.
- Aplicado também ao Spring Data, Spring Security, etc.

### Auto Configuration

- Starters: dependências simplificadas e auto configuráveis.
- Identificação e configuração automática da dependência.
- Spring Boot detecta as dependências e configura para nós!
- Projeto simplificado e pronto para foco no valor!

### Exercício Juntos

- Adicionar propriedade debug=true no application.properties.
- Executar projeto no terminal e analisar o log.
- Identificar e visualizar o auto configuration do spring mvc.
- Visualizar a dependência do auto configuration no projeto.

### Antes do Spring Boot

- Spring tradicional: war precisa de servidor de aplicação.
- Dependência de um container web ou servidor de aplicação.
- Complexidade para configurações.
- Atualizações frequentes, junto com versão do projeto.
- Gerenciamento manual de configurações.

### FatJar / UberJar

- Artefato do projeto pronto para execução.
- Container web embutido na geração e execução (TomCat).
- Deploy embarcado com outros containers são opcionais.
- Dependências principais do projeto embarcado.
- Execução direta através de um único java -jar
  Exemplo: mvn package java -jar target/spring-boot-example-0.1.0.jar
- Podemos também gerar o war tradicional.

### Exercícios juntos

- Fazer o build do projeto.
- Explorar conteúdo do arquivo .jar gerado.
- Executar o projeto no terminal com java -jar.
- Trocar o formato do artefato para .war e executar no TomCat.

### Comandos utilizados

- mvn clean package = (fazer limpeza e empacotamento).
- arquivo e gerado por padrão na pasta target. (springboot.jar).
- java -jar springboot.jar = (subir projeto).
- jar tf springboot.jar | less = (mostrar o conteúdo do arquivo).
- mv target/springboot.war apache-tomcat-9.0.26/webapps = (mover arquivo para o TomCat).
- ll apache-tomcat-9.0.26/webapps = (listar arquivos do tomcat)
- cd apache-tomcat-9.0.26 = (entrar na pasta tomcat)
- cd bin = (entrar na pasta bin do tomcat)
- ./startup.sh = (subir projeto).
- Caminho localhost no tomcat = localhost:8080/springboot
- mvn spring-boot:run = Iniciar projeto
