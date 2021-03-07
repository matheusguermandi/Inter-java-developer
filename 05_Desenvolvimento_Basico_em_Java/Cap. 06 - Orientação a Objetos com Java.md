# Paradigma Orientado a Objetos com Java:

### O Paradigma

- "A programação Orientada a Objetos impõe disciplina sobre a transferência indireta do Controle" - Robert "Uncle Bob" Martin - Livro Arquitetura Limpa
- "... a pilha de chamada funções... poderia ser movida para HEAP (área de memória não necessariamente ordenada - diferente da stack) possibilitando que as variáveis locais declaradas por uma função existissem muito depois que a função retornasse..." - Robert "Uncle Bob" Martin - Livro Arquitetura Limpa
- "A diferença entre um Código Procedural e um O.O é bem simples. Em códigos procedurais (...) escolher o melhor algoritmo é o mais importante (...) Já em linguagens orientado a objetos (...) pensar no projeto (...) como se encaixam (...) e como serão estendidas é o que mais importa." - Maurício Aniche - Livro Orientação a Objetos e SOLID para Ninjas

### Classe

- As classes de programação são receitas de um objeto, aonde têm características e comportamentos, permitindo assim armazenar propriedades e métodos dentro dela. Para construir uma classe é preciso utilizar o pilar da abstração. Uma classe geralmente representa um substantivo, por exemplo: uma pessoa, um lugar, algo que seja “abstrato”.

### Objeto

- Os objetos são características definidas pelas classes. Neles é permitido instanciar objetos da classe para inicializar os atributos e invocar os métodos.

### Atributos

- Atributos são as características de um objeto, essas características também são conhecidas como variáveis, utilizando o exemplo dos cães, temos alguns atributos, tais como: cor, peso, altura e nome.

### Métodos

- Métodos são as ações que os objetos podem exercer quando solicitados, onde podem interagir e se comunicarem com outros objetos, utilizando o exemplo dos cães, temos alguns exemplos: latir, correr, pular.

### Construtores

- O construtor é definido como um método cujo nome deve ser o mesmo nome da classe e sem indicação do tipo de retorno nem mesmo void. O construtor é unicamente invocado no momento da criação do objeto através do operador new.

### Encapsulamento

- O encapsulamento é uma forma de esconder detalhes de funcionamento do programa e também uma maneira de restringir o acesso a certas propriedades ou componentes. É fundamental para permitir que o programa seja suscetível a mudanças. Encapsulamento não é esconder os dados, mas o encapsulamento leva à ocultação de dados.

### Herança:

- Na Programação Orientada a Objetos o significado de herança tem o mesmo significado para o mundo real. Assim como um filho pode herdar alguma característica do pai, na Orientação a Objetos é permitido que uma classe herde atributos e métodos da outra, tendo apenas uma restrição para a herança. Os modificadores de acessos das classes, métodos e atributos só podem estar com visibilidade public e protected para que sejam herdados.

### Herança vs. Composição:

- Existe um vasto e antigo debate em relação a utilização de herança. Algumas bibliografias inclusive defendem que ela nunca deve ser utilizada. E o grande problema tem relação com o nosso tópico anterior: o encapsulamento.

### Polimorfismo:

- Assim como na biologia, o polimorfismo se refere à capacidade de assumir diferentes formas ou estágios. A JVM decide qual método invocar dependendo do objeto instanciado na memória.

### This

- Quando estamos trabalhando com o termo this, no Java, estamos, na verdade, fazendo uma auto referência. Esse conceito faz mais sentido quando estamos falando de construtores e métodos, exemplo:

### Super

- Analogamente ao This, quando falamos no Super, também estamos fazendo uma referência, mas dessa vez estamos fazendo referência a superclasse em um cenário de herança.

### Equals

- Equals serve para fazer comparações entre objetos. Por padrão, quando estamos comparando dois objetos, estamos comparando a referência deles. Então se instanciarmos dois carros, por mais que eles tenham exatamente as mesmas informações, o Java não é capaz de identificar.
- Mas poderíamos sobrescrever o método equals() para que nossa lógica funcione do jeito que gostaríamos. Tenha em mente que é uma boa prática sobrescrever este método.

### HashCode

- Quando falamos em hashCode, precisamos pensar em um código gerado que garanta um caráter único ao nosso objeto. Essa pode ser uma forma muito interessante para que possamos comparar se realmente um objeto é igual ao outro.
