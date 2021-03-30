# Introdução ao JDBC

### Instalar MySQL no Ubuntu

- Atualizar repositório: sudo apt update
- Instalar MySQL: sudo apt install mysql-server
- Verificar se instalação foi um sucesso: mysql --version

### Configurar Usuário e Senha

- Acessar banco de dados MySQL: sudo mysql
- Adicionar senha "password" ao usuário "root"

  ```
  ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
  ```

- Recarregar permissões de acesso ao banco de dados

  ```
  FLUSH PRIVILEGES;
  ```

- Sair do prompt do MySQL: quit;
- Para acessar o mysql deverá ser utilizado o comando abaixo com a senha: password

  ```
  mysql -u root -p
  ```

### Instalar MySQL Workbench

- Atualizar repositório: sudo apt update
- Instalar MySQL Workbench: sudo apt install mysql-workbench
- Executar MySQL Workbench: mysql-workbench

### Criar Banco de Dados

- Criar um banco de dados: CREATE database digital_innovation_one;
- Utilizar o banco recém criado: USE digital_innovation_one;

### Criar uma Tabela

```
CREATE TABLE aluno (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(80) NOT NULL,
idade INTEGER NOT NULL,
estado CHARACTER(2) NOT NULL
);
```

### Adicionar exemplos

```
INSERT INTO aluno(nome, idade, estado) VALUES ('Pedro', 20, 'RJ');
INSERT INTO aluno(nome, idade, estado) VALUES ('Maria', 35, 'AC');
INSERT INTO aluno(nome, idade, estado) VALUES ('Joao', 10, 'SC');
INSERT INTO aluno(nome, idade, estado) VALUES ('Ana', 51, 'GO');
```
