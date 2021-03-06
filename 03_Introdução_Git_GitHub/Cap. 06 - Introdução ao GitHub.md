# Introdução ao GitHub

### Comando para configurar seu perfil no GIT

- git config --global --unset user.email (comando para limpar o seu email no perfil)
- git config --global --unset user.nickname (comando para limpar o seu user no perfil)
- git config --list (comando para ver a lista de configurações)
- git config --global user.email "seu email" (comando para adicionar o seu email no perfil)
- git config --global user.nickname "seu nome" (comando para adicionar o seu user no perfil)

### Criando uma conta no GitHub

- Criar uma conta no GitHub - https://github.com/
- Criar um repositório na Parte Repository / News
- Clicar em Creater Repository
- Criar ou não um arquivo README
- Marcar seu repositório como público ou privado
- Colocar uma descrição para o seu repositório
- Colocar um nome no seu repositório

### Configuração do seu Repositório no GIT

- Copiar o caminho html do seu repositório, que o GitHub vai dar e colocar no GIT
- git remote add origin (link do seu repositório GitHub) = comando para adicionar seu repositório GitHub a sua maquina local
- origin = apelido do seu link repositório
- git remote -v = Comando para listar seus repositórios cadastrados
- git push origin master = Comando para empurrar seu repositório local para o remoto
