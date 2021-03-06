# Lidando com arquivos .txt

### Editor de texto do linux - nano

- Para abrir esse programa basta digitar no terminal = nano arquivo.txt
- CTRL + G = Arquivo de ajuda do nano
- CTRL + X = Fechar o programa nano
- CTRL + O = Gravar no disco o arquivo
- CTRL + J = Justificar o texto
- CTRL + U = Colar um texto
- CTRL + T = Fazer a verificação da ortografia do texto
- CTRL + \ = Substituir alguma palavra do texto
- ALT + U = Desfazer uma ação
- ALT + E = Refazer uma ação
- ALT + A = Marcando o texto
- ALT + 6 = Copiar texto selecionado
- Para visualizar um arquivo .txt sem abrir o mesmo = cat arquivo.txt
- Para visualizar o arquivo .txt, porém com as linhas invertidas = tac arquivo.txt
- Para visualizar apenas as 10 primeiras linhas de um arquivo txt = head arquivo.txt
- Para visualizar apenas as 10 ultimas linhas de um arquivo txt = tail arquivo.txt

### Propriedades do arquivo .txt e comandos de datas

- Comando para adicionar uma informação dentro de um novo arquivo = tail arquivo.txt > arquivo.txt
- `>` esse comando cria uma informação dentro do arquivo.
- Comando para adicionar uma informação dentro de um arquivo já existente = date >> arquivo.txt
- `>>` esse comando adiciona uma informação dentro do arquivo.
- Comando para mostrar calendário do mês corrente = cal
- Comando para mostrar data atual = date
- Comando para buscar uma palavra dentro do texto = grep
- tail arquivo.txt | grep linux

### Comando de paginação de textos e criação de pastas

- Para facilitar a leitura de um arquivo muito grande podemos usar o comando more ou less = cat arquivo.txt | more
- Comando | = Envia a saída de um comando para entrada de outro comando permitindo a execução de dois comandos.
- Comando & = Este operador permite usar dois comandos e separar suas saídas no terminal
- Comando && = Usado para que dois comandos só sejam executados se o primeiro for executado com sucesso.
- Comando whatis = Usado para informar o que faz cada comando. ( whatis ls) (whatis find)
