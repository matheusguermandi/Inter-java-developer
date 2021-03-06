# Ciclo de vida dos arquivos no Git

### Passo a passo no ciclo de vida - Untracked, Unmodified, Modifies, Staged

- Tracked são os arquivos que o GIT já tem ciência deles
- Untracked são arquivos que o GIT ainda não tem ciência deles
- Modified são os arquivos que foram modificados
- Staged são os arquivos que já foram adicionados no projetos e estão esperando o commit
- Arquivos dentro do Tracked são Unmodified, Modified e Staged
- Unmodified é o arquivo que não sofreu nenhuma alteração
- Modified é o arquivo que sofreu alguma alteração
- Staged é o conceito chave de onde ficam os arquivos que estão esperando o commit para serem finalizados no projeto
- Arquivo Untracked é o arquivo que você acabou de criar e o git ainda não tem ciência dele
- O Comando git add adiciona o arquivo para o modo Staged.
- Quando faz alterações no arquivo, o git confere a chave SHA1 desse arquivo, e caso tenha diferença nessa chave, ela muda de Unmodified para Modified, - sendo necessário usar o git add para mudar esse arquivo para o modo Staged
- Quando se deleta um arquivo, ele volta para o modo Untracked
- Quando o arquivo esta no modo Stage, ele está aguardando o Commit para finalizar o processo virando um arquivo commit
- O Comando commit, finaliza todo o processo, transformando os arquivos novamente em Unmodified

### Servidor

- Remote Repository (Quando você empurra um commit para um repositório)

### Ambiente de desenvolvimento

- Working Directory (Seu Computador)
- Staging Area (Quando criado, modificado ou adicionado um arquivo no Git)
- Local Repository (Quando é efetuado um Commit)
- Comando git status = Mostra as informações sobre a situação atual do seu repositório
