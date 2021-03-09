# Trabalhando com Profiles e Configurações

### Importância dos Profiles

- Múltiplos ambientes
- Ambientes para desenvolvimento, teste e produção.
- Bancos de dados para cada ambiente.
- Execução de testes unitários em ambiente local.
- Suíte de testes completas em ambiente de teste.
- Simulação do ambiente real em staging.
- Deploy simplificado em produção.

### Spring Boot Profiles

- Configurações próprias para cada ambiente.
- Ambientes com sua configuração: dev, production.

### Configurações com Properties

- Projeto com spring.initialzr e importar na IDE.
- Arquivos application.properties para dev e prod.
- Classe de configuração de BD e anotar com @Configuration.
- Mapear propriedades com @configurationProperties.
- Criar métodos para instanciar Beand de cada env.
- Criar classe anotada com @RestController.
- Injetar propriedade appMessage com @Value.
- Criar método que retorna a mensagem acima.
- Executar projeto no browser.

### Configurações com command line

- Propriedades do arquivo de configuração na linha de comando.
- Sobrescreve as propriedades definidas no arquivo de configurações padrão.
- Valores passados como argumento na execução do projeto.
- Exemplo: Passar como argumento a propriedade server.port=8085
  - mvn spring-boot:run -Dserver.port=8085

### Configurações com variáveis de ambiente

- Variável de ambiente pode ser injetada através da anotação @Value no projeto.
- Linux e Mac: export comum de variável
- Windows: padrão de variável de ambiente.
- Injeção com anotaçao @Value({NOME_VARIAVEL}).
- Definição de valor default quando não há variável.

```
  export ENV_DB_URL=jdbc:h2:mem:db;DB_CLOSE_DELAY=-1
```
