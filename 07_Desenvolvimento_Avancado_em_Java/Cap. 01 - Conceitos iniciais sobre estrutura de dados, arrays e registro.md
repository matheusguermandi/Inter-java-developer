# Paradigma Funcional no Java

### Paradigma Funcional no Java

- Programação funcional é o processo de construir software através de composição de funções puras, evitando compartilhamento de estados, dados mutáveis e efeitos colaterais. É declarativa ao invés de imperativa, essa é uma definição de Eric Elliott.
- Paradigma Imperativo: É aquele que expressa o código através de comandos ao computador, nele é possível ter controle de estado dos objetos.
- Paradigma Funcional: Damos uma regra, uma declaração de como queremos que o programa se comporte.

### Conceitos fundamentais da programação funcional

- Composição de funções: É criar uma nova função através da composição de outras. Por exemplo, vamos criar uma função que vai filtrar um array, filtrando somente os números pares e multiplicando por dois.
- Funções Puras: É chamada de pura quando invocada mais de uma vez produz exatamente o mesmo resultado.
- Imutabilidade: Significa que uma vez uma variável que recebeu um valor, vai possuir esse valor para sempre, ou quando criamos um objeto ele não pode ser modificado.

### Imperativo x Declarativo:

- É muito comum aprender a programar de forma imperativa, onde mandamos alguém fazer algo, Busque o usuário 15 no banco de dados. Valide essas informações do usuário.
- Na programação funcional tentamos programar de forma declarativa, onde declaramos o que desejamos, sem explicitar como será feito. Qual o usuário 15? Quais os erros dessas informações?

### Lambda no Java

- As lambdas obedecem o conceito do paradigma funcional, com eles podemos facilitar legibilidade do nosso código, além disso com a nova API Funcional do Java podemos ter uma alta produtividade para lidar com objetos.
  Primeiramente, devemos entender o que são interfaces funcionais.
- Interfaces funcionais: São interfaces que possuem apenas um método abstrato, Exemplo: public interface Funcao { String gerar (String valor); }
- Geralmente as interfaces funcionais possuem uma anotação em nível de classe (@FunctionalInterface), para forçar o compilador a apontar um erro se a interface não estiver do acordo com as regras de uma interface funcional. Esta anotação não obrigatória, pois o compilador consegue reconhecer uma interface em tempo de compilação.
- Antes do Java 8, se quiséssemos implementar um comportamento especifico para uma única classe deveríamos utilizar uma classe anônima para implementar este comportamento. Agora que sabemos como se define uma interface funcional podemos, aprender como se define uma lambda.
- Estrutura de uma lambda
  ```
  InterfaceFuncional nomeVariavel = parametro → logica
  ```

### Recursividade

- Na recursividade, uma função chama a si mesma repetidamente, até atingir uma condição de parada. No caso de Java, um método chama a si mesmo, passando para si objetos primitivos. Cada chamada gera uma nova entrada na pilha de execução, e alguns dados podem ser disponibilizados em um escopo global ou local, através de parâmetros em um escopo global ou local.
- Recursividade tem um papel importante em programação funcional, facilitando que evitemos estados mutáveis e matenhamos nosso programa mais declarativo, e menos imperativo.

### Tail Call

- Recursão em cauda é uma recursão onde não há nenhuma linha de código após a chamada do próprio método e, sendo assim, não há nenhum tipo de processamento a ser feito após a chamada recursiva.
- Observação: A JVM não suporta a recursão em cauda, ele lança um estouro de pilha (StackOverFlow).

### Memorization

- É uma técnica de otimização que consiste no cache do resultado de uma função, baseado nos parâmetros de entrada. Com isso, nas seguintes execuções conseguimos ter uma resposta mais rápida.
