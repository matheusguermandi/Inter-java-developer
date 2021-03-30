# Objetos e tipos de dados do PostgreSQL

### postgresql.conf

- Arquivo onde estão definidas e armazenadas todas as configurações do servidor PostgreSQL.
- Alguns parâmetros só podem ser alterados com uma reinicialização do banco de dados.
- A view pg_settings, acessada por dentro do banco de dados, guarda todas as configurações atuais.

### postgresql.conf

- Ao acessar a view pg_setting, é possível visualiar todas as configurações atuais:
  - SELECT name, setting
  - FROM pg_setting;
- Ou é possível usar o comando:
  - SHOW [parâmetro];
- Por padrão o arquivo postgresql.conf encontra-se dentro do diretório PGDATA definido no momento da inicialização do cluster de banco de dados.
- No sistema operacional Ubuntu, se o PostgreSQL foi inttalado a partir do repositório oficial, o local do arquivo postgresql.conf será diferente do diretório de dados.
  - /etc/postgresql/[versão]/[nome do cluster]/postgresql.conf

### pg_ident.conf

- Arquivo responsável por mapear os usuários do sistema operacional com os usuários do banco de dados.
- Localizado no diretório de dados PGDATA de sua instalação.
- A opção ident deve ser utilizada no arquivo pg_hba.conf

### pg_hba.conf

- Arquivo responsável pelo controle de autenticação dos usuários no servidos PostgreSQL.

### Configurações de conexão

- LISTEN_ADDRESSES
  - Endereço(s) TCP/IP das interfaces que o servidor PostgreSQL vai escutar/liberar conexões.
- PORT
  - A porta TCP que o servidor PostgreSQL vai ouvir. O padrão é 5432
- MAX_CONNECTIONS
  - Número máximo de conexões simultâneas no servidor PostgreSQL.
- SUPERUSER_RESERVED_CONNECTIONS
  - Número de conexões (slots) reservadas para conexões ao bando de dados super usuários.

### Configurações de autenticação

- AUTHENTICATION_TIMEOUT
  - Tempo máximo em segundos para o cliente conseguir uma conexão com o servidor.
- PASSWORD_ENCRYPTION
  - Algoritmo de criptografia das senhas dos novos usuários criados no banco de dados.
- SSL
  - Habilita a conexão criptografada por SSL ( Somente se o PostgreSQL foi compilado com suporte SSL)

### Configurações de memória

- SHARED_BUFFERS
  - Tamanho da memória compartilhada do servidor PostgreSQL para cache/buffer de tabelas, índices e demais relações.
- WORK_MEM
  - Tamanho da memória para operações de agrupamento e ordenação (ORDER BY, DISTINCT, MERGE JOINS).
- MAINTENANCE_WORK_MEM
  - Tamanho da memória para operações como VACUUM, INDEX, ALTER TABLE.

### Métodos de autenticação

- TRUST = conexão sem requisição de senha.
- REJECT = rejeitar conexões.
- MD5 = criptografia md5.
- PASSWORD = senha sem criptografia.
- GSS = generic securty service application program interface.
- SSPI = security support provider interface - somente Windows.
- KRB5 = kerberos V5.
- IDENT = utiliza o usuário do sistema operacional do cliente via ident server.
- PEER = utiliza o usuário do sistema operacional do cliente.
- LDAP = Idap server.
- RADIUS = radius server.
- CERT = autenticação via certificado ssl do cliente.
- PAM = pluggable authentication modules. O usuário precisar estar no banco de dados.

### Comandos administrativos

- Comandos no Ubuntu

  - pg_lsclusters = Lista todos os clusters PostgreSQL.
  - pg_createcluster <version> <cluster name> = Cria um novo cluster PostgreSQL.
  - pg_dropcluster <version> <cluster> = Apaga um cluster PostgreSQL
  - pg_ctlcluster <version> <cluster> <action> = Start, Stop, Status, Restart de clusters PostgreSQL.

- Comandos no CentOS

  - systemctl start postgresql-11 = Inicia o cluster PostgreSQL
  - systemctl status postgresql-11 = Mostra o status do cluster PostgreSQL
  - systemctl stop postgresql-11 = Para o cluster PostgreSQL
  - systemctl restart postgresql-11 = Reinicia o cluster PostgreSQL

### Binários do PostgreSQL

- createdb
- createuser
- dropdb
- initdb
- pg_ctl
- pg_basebackup
- pg_dump / pg_dumpall
- pg_restore
- psql
- reindexdb
- vacuumdb

### Conceitos users/roles/groups

- Roles (papéis ou funções), users (usuários) e grupo de usuários são "contas", perfis de atuação em um banco de dados, que possuem permissões em comum ou específicas.
- Nas versões anteriores do PostgreSQL 8.1, usuários e roles tinham comportamentos diferentes. Atualmente, roles e users são alias.

### Administrando users/roles/groups

- Comando para criar o usuário com regras e grupos
  - CREATE ROLE name [ [ WITH ] option [ ... ] ]
- Opções disponiveis
  - SUPERUSER | NOSUPERUSER
  - CREATEDB | NOCREATEDB
  - CREATEROLE | NOCREATEROLE
  - INHERIT | NOINHERIT
  - LOGIN | NOLOGIN
  - REPLICATION | NOREPLICATION
  - BYPASSRLS | NOBYPASSRLS
  - CONNECTION LIMIT connlimit
  - [ ENCRYPTED ] PASSWORD 'password' | PASSWORD NULL
  - VALID UNTIL 'timestamp'
  - IN ROLE role_name [, ...]
  - IN GROUP role_name [, ...]
  - ROLE role_name [, ...]
  - ADMIN role_name [, ...]
  - USER role_name [, ...]
  - SYSID uid

### Associação entre roles

- Quando uma role assume as permissões de outra role.
- Necessário a opção INHERIT.
- No momento de criação da role:
  - IN ROLE (passa a pertencer a role informada).
  - ROLE (a role informada passa a pertencer a nova role).
- Ou após a criação da role:
  - GRANT [role a ser concedida] TO [role a assumir as permissões]

### Desassociar membros entre roles

- REVOKE [role que será revogada] FROM [role que terá suas permissões revogadas]
- Exemplo: REVOKE professores FROM daniel;

### Alterando uma role

- ALTER ROLE role_specification [ WHIT ] option [ ...]

### Excluindo uma role

- DROP ROLE role_specification;

### Administrando acessos (GRANT)

- São os privilégios de acesso ao objetos do banco de dados.

### Privilégios:

- Tabela, coluna, sequence, database, domain, foreign data wrapper, foreign server, function, language, large object, schema, tablespace, type

### Revogando todas as permissões (Simplificado)

- REVOKE ALL ON ALL TABLES IN SCHEMA [schema] FROM [role];
- REVOKE ALL ON SCHEMA [schema] FROM [role];
- REVOKE ALL ON DATABASE [database] FROM [role;

### Database

- É o banco de dados.
- Grupo de schemas e seus objetos como tabelas, types, views, funções, entre outros.
- Seus schemas e objetos não podem ser compartilhados entre si.
- Cada database é separado um do outro compartilhando apenas usuários/roles e configurações do cluster PostgreSQL.

### Schemas

- É um grupo de objetos, como tabelas, types, views, funções, entre outros.
- É possível relacionar objetos entre diversos schemas.

### Objetos

- São as tabelas, views, funções, types, sequences, entre outros, pertencentes ao schemas

### Tabelas, Colunas e Tipos de dados

- Conjuntos de dados dispostos em colunas e linhas referentes a um objetivo comum.
- As colunas são consideradas como "campos de tabela", como atributos da tabela.
- As linhas de uma tabela são chamadas também de tuplas, e é onde estão contidos os valores, os dados.

### Primary Key / Chave Primária / PK

- No conceito de modelo de dados relacional e obedecendo as regras de normalização, uma PK é um conjunto de um ou mais campos que nunca se repetem em uma tabela e que seus valores garantem a integridade do dado único e a utilização do mesmo como referência para o relacionamento entre demais tabela.
- não pode haver duas ocorrências de uma mesma entidade com o mesmo conteúdo na PK.
- A chave primária não pode ser composta por atributo opcional, ou seja, atributo que aceite nulo.
- Os atributos identificadores devem ser o conjunto mínimo que pode identificar cada instância de uma entidade.
- Não devem ser usadas chaves externas.
- Não deve conter informação volátil.

### Foreign Key / Chave Estrangeira / FK

- Campo, ou conjunto de campos que são referências de chaves primárias de outras tabelas ou da mesma tabela.
- Sua principal função é garantir a integridade referencial entre tabelas.

### DML (Data Manipulation Language)

- Linguagem de manipulação de dados
- INSERT, UPDATE, DELETE, SELECT
- O SELECT, alguns consideram como DML, outros como DQL, que significa data query language, ou linguagem de consulta de dados.

### DDL (Data Definition Language)

- Linguagem de definição de dados.
- CREATE, ALTER, DROP

### CREATE / ALTER / DROP

- CREATE [objeto] [nome do objeto] [opções]
- ALTER [objeto] [nome do objeto] [opções]
- DROP [objeto] [nome do objeto] [opções]

### INSERT

- Modelo 1:

```
INSERT INTO [nome da tabela] ([campos da tabela,])
VALUES ([valores de acordo com a ordem dos campos acima,]);
```

- Modelo 2:

```
INSERT INTO [nome da tabela] ([campos da tabela,])
SELECT [valores de acordo com a ordem dos campos acima,]
```

### UPDATE

```
UPDATE [nome da tabela] SET
[campo1] = [novo valor do campo1],
[campo2] = [novo valor do campo2],
...
[WHERE + condições]
```

- Atenção: Muito cuidado com os updates. Sempre utilize-os com condição.

### DELETE

```
DELETE FROM [nome da tabela]
[WHERE + condições]
```

- Atenção: Muito cuidado com os deletes. Sempre utilize-os com condição.

### SELECT

```
SELECT [campos da tabela]
FROM [nome da tabela]
[WHERE + condições]
```
