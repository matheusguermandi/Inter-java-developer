# Controle de Usuários, Grupos e Permissões

### Adicionar usuários

- sudo adduser (nome do usuário)

### Trocar de usuário e alterar senha

- sudo su = Comando para trocar para o usuário root
- passwd = Comando para trocar senha do usuário = passwd (nome do usuário)

### Exibir informações de login e remover usuários

- lastlog = Comando para exibir informações de todos usuários do sistema
- last = Comando para exibir uma listagem de entrada e saída dos usuários do sistema
- logname = Comando para exibir o nome do usuário logado no sistema
- id = Comando para exibir os identificadores do usuário
- cat /etc/passwd = Comando para exibir todos os usuários
- userdel = Comando para remover um usuário = userdel (nome do usuário)
- userdel -r = Comando para remover um usuário e a Pasta Pessoal do mesmo = userdel -r (nome do usuário)

### Como Criar um Grupo e Gerenciar os Usuários

- cat /etc/group = Comando para visualizar todos os grupos do sistema
- groups = Comando para exibir todos os grupos de um usuário
- addgroup = Comando para criar um grupo = sudo addgroup - (nome do grupo)
- adduser = Comando para adicionar um usuário a um grupo = adduser (nome usuário) (nome do grupo)
- gpasswd -a = Comando para adicionar um usuário a um grupo = gpasswd -a (nome usuário) (nome do grupo)
- gpasswd -d = Comando para remover um usuário de um grupo = gpasswd -d (nome usuário) (nome do grupo)
- groupedel = Comando para remover um grupo

### Como gerenciar permissões em diretórios e o que é o modo octal

- Permissões em arquivos e diretórios servem para restringir acessos como: leitura, escrita e execução
- r = read (leitura)
- w - write (escrita)
- x - execution (execução)

### Verificar Permissões em um diretório

- ls -lh = Mostra informações detalhadas sobre a pasta atual e suas permissões
- 1º grupo (dono/usuário)
- 2º grupo (grupo)
- 3° grupo (outros)
- O símbolo (-) significa que não tem acesso
- chmod = Comando para mudar a permissão de um arquivo ou diretório

### Modo Octal

- A máscara octal é composta por números sob a base 8 ou seja de 0 a 7 onde:
- O primeiro dígito representa o dono do ficheiro/diretório (u)
- O segundo dígito representa o grupo (g)
- O terceiro dígito representa os outros (o)
- As permissões são especificadas para cada grupo
- Atribuição de r (read) = 4
- Atribuição de w (write) = 2
- Atribuição de x (execution) = 1
- Atribuição para não ter nenhuma permissão = 0

### Comando chmod

- Para colocar mais de uma situação ao arquivo/diretório, devemos somar os valores do grupo em que queremos alterar.
- Usando o comando = chmod 100 arquivo.txt
  - Significa que somente o grupo 1 (dono/usuário) possui permissão para executar
- Usando o comando = chmod 700 arquivo.txt
  - Significa que somente o grupo 1 (dono/usuário) possui permissão r/w/x 
- Usando o comando = chmod 755 arquivo.txt
  - Significa que o grupo 1 (dono/usuário) possui permissão r/w/x
  - Significa que o grupo 2 (grupo) possui permissão r/-/x
  - Significa que o grupo 3 (outro) possui permissão r/-/x
- Usando o comando = chmod 777 arquivo.txt
  - Significa que o grupo 1 (dono/usuário) possui permissão r/w/x
  - Significa que o grupo 2 (grupo) possui permissão r/w/x
  - Significa que o grupo 3 (outro) possui permissão r/w/x

