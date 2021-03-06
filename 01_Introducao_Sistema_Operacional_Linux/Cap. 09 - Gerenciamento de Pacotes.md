# Instalação, Atualização e Remoção de Pacotes

### Pacotes
- Pacotes são programas colocados dentro de um arquivo identificados por sua extensão, e incluem arquivos necessários para a instalação de programa. Existem pacotes com extensão .deb , .rpm e outros

### Gerenciadores
- Gerenciadores de pacotes são sistemas que possuem resolução automática de dependências entre pacotes, método fácil de instalação de pacotes

### Gerenciador apt (nmap):
- sudo apt install (pacote) = Comando para instalação
- sudo apt upgrade (pacote) = Comando para atualizar um pacote
- sudo apt remove (pacote) = Comando para remover um pacote

### Atualização de Sistema e o comando dpkg
- sudo apt update && apt upgrade = Comando para dar um update e um upgrade (comando deve ser feito no root)

### Sites de Pacotes:
- pkgs.org
- rpm.pbone.net

### Como instalar e remover pacotes do tipo .deb:
- Entrar no site e baixar a versão do arquivo a ser instalado (.deb)
- Acessar a pasta onde foi salvo o arquivo (Usando o Terminal)
- sudo dpkg -i (nome do arquivo) = Comando para fazer a instalação
- sudo dpkg -I (pacote.deb) = Comando para ver a descrição do pacote
- sudo dpkf -r (nome do pacote) = Comando para remover o pacote do sistema 
- Lembrando que o nome do pacote é identificado no Package (docker-ce-cli)

### Introdução ao Fedora
- Link para instalação: getfedora.org/pt_BR/
- Versão Workstation = Versão para Desktop
- Adicionar a ISO baixada na seu programa de máquina virtual

### Comandos rpm e yum
- Entrar no site e baixar a versão do arquivo a ser instalado (.rpm)
- Acessar a pasta onde foi salvo o arquivo (Usando o Terminal)
- sudo rpm -ivh --nodeps (nome do arquivo) = Comando para fazer a instalação

### Como atualizar o pacote .rpm:
sudo rpm -U (nome do arquivo) = Comando para atualizar o pacote

### Como remover o pacote .rpm:
sudo rpm -e (nome do arquivo) = Comando para remover o pacote

### Como instalar o pacote do tipo .yum:
- sudo yum install (nome do pacote) = Comando para fazer a instalação - Lembrando que aqui é o nome do pacote e não o nome do arquivo baixado, pois ele baixa e instala o pacote via Terminal

### Como atualizar o pacote do tipo .yum:
- sudo yum update (nome do pacote) = Comando para fazer a atualização

### Como remover o pacote do tipo .yum:
- sudo yum remove (nome do pacote) = Comando para remover o pacote