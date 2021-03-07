# Classes, Tipos, Modificadores de acesso, Interfaces, Enums

### Tipos Primitivos

- http://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html
- Não aceitam NULL e possuem valores default
- Data type: byte - Default Value: 0
- Data type: short - Default Value: 0
- Data type: int - Default Value: 0
- Data type: long - Default Value: 0L
- Data type: float - Default Value: 0.0f
- Data type: double - Default Value: 0.0d
- Data type: char - Default Value: '\u0000'
- Data type: String (or any object) - Default Value: null
- Data type: boolean - Default Value: false

### Wrappers

- São objetos que representam os primitivos
- Auto-boxing e Unboxing

### Não Primitivos

- http://docs.oracle.com/javase/8/docs/api/java/lang/String.html
- String
- Number
- Object
- Qualquer outros objetos

### Tipagem forte e estática

- var - Inferência de tipo

### Modificadores de acesso - Public

- public pode ser acessado de qualquer lugar por qualquer entidade que possa visualizar a classe a que ela pertence.

### Modificadores de acesso - Private

- Os métodos e atributos da classe definidos como privados não podem ser acessados ou usados por nenhuma outra classe. Esses atributos e métodos também não podem ser visualizados pelas classes herdadas.

### Modificadores de acesso - Protected

- Torna o membro acessível às classes do mesmo pacote ou através de herança, seus membros herdados não são acessíveis a outras classes fora do pacote em que foram declarados.

### Modificadores de acesso - Default

- A classe e/ou seus membros são acessíveis somente por classes do mesmo pacote, na sua declaração não é definido nenhum tipo de modificador, sendo este identificado pelo compilador.

### Modificadores de acesso - Abstract

- Esse modificador não é aplicado nas variáveis, apenas em classes e métodos. Uma classe abstrata não pode ser instanciada. Se houver alguma declaração de um método como abstract (abstrato), a classe também deve ser marcada como abstract.

### Modificadores de acesso - Static

- É usado para a criação de uma variável que poderá ser acessada por todas as instâncias de objetos desta classe como uma variável comum, ou seja, a variável criada será a mesma em todas as instâncias e quando seu conteúdo é modificado numa das instâncias, a modificação ocorre em todas as demais. E nas declarações de métodos ajudam no acesso direto à classe, portanto não é necessários instanciar um objeto para acessar o método.

### Modificadores de acesso - Final

- Quando é aplicado na classe, não permite estender, nos métodos impede que o mesmo seja sobrescrito (overriding) na subclasse, e nos valores de variáveis não pode ser alterado depois que já tenha sido atribuído um valor.

### Interfaces:

- Métodos abstratos
- Devem ser implementados por todos
- Novos métodos quebram as implementações

### Métodos default

- São herdados a todos que implementam
- Novo métodos não quebram as implementações

### Enums:

- Basicamente é um dicionários de dados imutável.
- Não é permitido criar novas instâncias.
- O construtor é sempre declarado como private.
- Por convenção, por serem objetos constantes e imutáveis (static final), os nomes são em MAIÚSCULOS.

### Link Projeto da Aula:

- https://github.com/andrelugomes/digital-innovation-one/tree/master/caracteristicas-da-linguagem-java
