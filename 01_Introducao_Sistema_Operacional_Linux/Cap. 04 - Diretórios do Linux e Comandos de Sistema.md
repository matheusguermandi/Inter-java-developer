# Apresentação dos comandos de diretórios do linux

### Diretórios importantes

- /bin/ = Binários principais dos usiarios
- /boot/ = Arquivos do sistema de Boot
- /dev/ = Arquivos de dispositivos
- /etc/ = Arquivos de configurações do sistema
- /home/ = Diretório dos usuários comuns do sistema
- /lib/ = Bibliotecas essenciais do sistema e dos módulos do kernel
- /media/ = Diretório de montagem e dispositivos
- /mnt/ = Diretório de montagem de dispostivos - mesmo que media
- /opt/ = Instalação de programas não oficiais da distribuição por conta do usuário
- /sbin/ = Armazena arquivos executáveis que representam comandos administrativos
- /srv/ = Diretório para dados de serviços fornecidos pelo sistema
- /tmp/ = Diretório para arquivos temporários
- /usr/ = Segunda hierarquia do sistema, onde ficam os usuários comuns do sistema e programas.
- /var/ = Diretório com arquivos variaveis gerados pleos programas do sistema
- /root/ = Diretório do usuário root
- /proc/ = Diretório virtual controlado pelo Kernel

### Praticando no terminal os comandos de diretórios e sistema

- cat /proc/cpuinfo = Visualizar informações do processamento
- cat /proc/meminfo = Visualizar informações sobre memoria
- lspci = Visualizar informações sobre placas PCI conectadas no computador
- lsusb = Visualizar informações de dispositivos usb
- arch = Visualizar a arquitetura do sistema utilizada
- uname = Visualizar o nome do Kernel
- uname -r = Visualizar a versão do Kernel
- uname -m = Visualizar a arquitetura do Kernel
- free = Visualizar saída de memoria física e memória swape
- du -h ~ = Visualizar todo o diretório pessoal e quanto utiliza de espaço em hd
- cat /etc/passwd = Visualizar todos os usuários do sistema
- reboot = Reiniciar o sistema
- shutdown -h now = Desligar o sistema
- shutdown -r = Reiniciar o sistema
- lscpu = Visualizar todas as informações sobre o CPU
- lshw = Visualizar uma lista de todos os hardwares que o sistema encontrar
- lshw -short = mostrar o caminho de hardwares
