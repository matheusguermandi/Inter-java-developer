# Compactação, Descompactação e Arquivamento

### Comandos gzip, zip e bzip2

- Compactadores são programas que diminuem o tamanho de um arquivo ou diretório

### Extensões

- As extensões identificam o tipo de um arquivo e o programa necessário para manipular o mesmo, dezenas de extensões identificam arquivos compactados, quando um arquivo é compactado, uma extensão é adicionada ao nome do arquivo.

### Compactador Gzip:

- gzip = Comando para compactar = gzip (nome do arquivo.txt)
- gunzip = Comando para descompactar = gunzip (nome do arquivo.txt.gz)
- gzip -9 = Comando para compactar com taxa máxima = gzip -9 (nome do arquivo.txt)

### Compactador Zip:

- zip arquivo.zip arquivo.txt = Comando para compactar = zip (nome do arquivo.zip) (nome do arquivo.txt) , pode colocar vários arquivos dentro de um único arquivo zipado
- unzip arquivo.zip = Comando para descompactar = unzip (nome do arquivo.zip)

### Compactador Bzip2:

- bzip2 arquivo.txt = Comando para compactar = bzip2 (nome do arquivo.txt)
- bzip2 -d arquivo.txt.bz2 = Comando para descompactar = bzip2 -d (nome do arquivo.txt.bz2)

### Comandos rar e tar

- Esse comando necessita ser instalado na sua primeira utilização
- sudo apt install rar = Comando para instalar o rar
- rar a arquivo.rar arquivo = Comando para compactar = rar a (nome do arquivo.rar) (nome do arquivo.txt)
- rar -x arquivo.rar = Comando para descompactar = rar -x (nome do arquivo.rar)

### Arquivadores:

- Um arquivador junta vários arquivos em um só, mas pode ser usado em conjunto com um compactador para armazenar arquivos compactados;
- tar -cf arquivo.tar arquivo.txt = Comando para arquivar = tar -cf (nome arquivo.tar) (nome arquivo.txt) (nome arquivo.txt)

- Esse arquivo pode ser compactado por outros compactadores = tar -xvf arquivo.tar = Comando para descompactar = tar -xvf (nome do arquivo.tar.gz)

- Adicionar a opção -C (+ diretório) no final do comando, você consegue extrair esse arquivo para outra pasta = tar -xvf (nome arquivo.tar.gz) -C ~/Pasta
