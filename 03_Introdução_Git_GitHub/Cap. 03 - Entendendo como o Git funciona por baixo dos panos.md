# Entendendo como o Git funciona por baixo dos panos

### Tópicos fundamentais para entender o funcionamento do Git

- SHA1, Objetos Fundamentais, Sistema Distribuído, Segurança

### SHA1

- A sigla SHA significa Secure Hash Algorithm (Algoritmo de Hash Seguro), é um conjunto de funções hash criptográficas projetadas pela NSA (Agência de Segurança Nacional dos EUA). A encriptação gera conjunto de characteres identificador de 40 dígitos. É uma forma curta de representar um arquivo. Comando que gera o SHA1 = openssl sha1 (nome do arquivo.txt)
- Chave gerada = SHA1(arquivo.txt) = 476ad3f360ced25383c25d13eae57f59e30cecb9
- Quando você mudar a informação no arquivo e executa o comando ele muda a chave SHA1 = SHA1(arquivo.txt) = bf3bb2f68cdabbf6a27b73f876b350af80af6953
- Se você alterar a informação no arquivo para a que estava anteriormente e executar o comando SHA1 novamente, ele retorna para a chave anterior = SHA1(arquivo.txt)= 476ad3f360ced25383c25d13eae57f59e30cecb9
- Resultados Final Arquivo Versao1 = 476ad3f360ced25383c25d13eae57f59e30cecb9
- Arquivo Modificado = bf3bb2f68cdabbf6a27b73f876b350af80af6953
- Arquivo Modificado Versao1 = 476ad3f360ced25383c25d13eae57f59e30cecb9

### Objetos internos no Git - Blobs, Trees e Commits

- Blobs - Git gera SHA1 e armazena Meta-Dados (bloco básico de composição) Possuem o SHA1 do arquivo echo 'conteudo' | git hash-object --stdin = gera um SHA1 echo -e 'blob 9\0conteudo' | openssl sha1 = gera mesmo SHA1
- Trees - Armazenam Blobs (armazena e aponta para um tipo de blobs) E responsável por toda a estrutura por montar a estrutura de um arquivo Possuem o SHA1 dos meta-dados
- Commit - É o objeto mais importante, que junta tudo! Ele aponta para uma arvore, parente, autor, mensagem. O SHA1 desse commit é o hash de toda essa informação.

### Sistema Distribuido Seguro

- O Git foi projetado com a integridade do código-fonte gerenciado como uma prioridade. O conteúdo dos arquivos, bem como os verdadeiros relacionamentos entre arquivos e diretórios, versões, tags e commits, todos esses objetos no repositório do Git são protegidos com um algoritmo de hash de criptografia seguro chamado SHA1. Isso protege o código e o histórico de alterações contra alterações acidentais e maliciosas e garante que o histórico tenha rastreabilidade total.
