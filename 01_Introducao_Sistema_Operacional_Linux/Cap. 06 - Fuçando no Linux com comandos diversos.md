# Fuçando no Linux com comandos diversos

### Comandos history, alias e outras interações com arquivos .txt

- nl = Conta o número de linhas de um arquivo: nl arquivo.txt
- wc -l = Também conta o número de linhas, porém conta as linhas em branco: wc -l arquivo.txt
- wc -w = Conta o número de palavras dentro de um arquivo txt: wc -w arquivo.txt
- wc -c = Conta o número de bits do arquivo: wc -c arquivo.txt
- wc -m = Conta o número de caracteres: wc -m arquivo.txt
- ls -a = Mostra os arquivos e diretório ocultos (serão mostrados com um ponto antes: .local)
- ls -F = Mostra os diretórios com o / no fim
- cmp = Comparar dois arquivos txt: cmp arquivo.txt arquivo2.txt
- diff = Gera outra diferença entre arquivos txt: diff arquivo.txt arquivo2.txt
- sort -n = Organiza a saída do arquivo em ordem numérica
- sort = Organiza a saída do arquivo em ordem alfabética
- whereis = Exibe o caminho do programa e seu manual
- which = Exibe o caminho de programa
- history -c = Apagar histórico de comandos utilizados no Terminal
- alias = Dá um nome para outro comando (alias hh='history')
- logout = Finaliza uma Sessão

### Comandos last reboot, route, time, cowsay e cmatrix

- last reboot = Comando para mostrar todas as informações sobre a reinicialização do sistema
- route -n = Mostra todas as tabelas de roteamento e ip do Kernel
- time = Mostra o tempo de um processo leva para ser processado (time traceroute www.google.com)
- uptime = Mostra o tempo que o sistema está rodando
- Comando cowsay = Para instalar = sudo apt install cowsay - Desenho Vaquinha
- cowsay "Linux é Bom" = Mostra uma vaquinha com a frase
- cowsay -d "Linux" = Mostra uma vaquinha com a frase com outro rostinho
- cowsay -g "Linux" = Mostra uma vaquinha com a frase com outro rostinho
- cowsay -f = Mostra vários outros bichinhos
- Comando cmatrix = Para instalar = sudo apt install cmatrix - Imita Efeito Filme Matrix
- Comando xcowsay = Para instalar = sudo apt install xcowsay - Desenho Vaquinha 3D

### Comandos para desligar o sistema operacional

- init 0 = Desliga a maquina de imediato
- telinit 0 = Desliga a maquina de imediato
- halt = Desliga a maquina, mas pede uma autenticação
- seq = Imprimi uma sequência de números: (seq 1 10)
