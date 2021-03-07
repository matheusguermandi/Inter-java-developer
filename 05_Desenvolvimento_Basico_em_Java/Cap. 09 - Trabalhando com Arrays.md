# Trabalhando com arrays

### O que é um array?

- Arrays ou Matriz, é uma estrutura de dados que nos permite organizar valores na memória. Fazem parte da biblioteca java.util que é nativa do Java.
- Armazenam elementos do mesmo tipo.
- Podem ser unidimensionais ou multidimensionais.

### Detalhamento de um Array

- Cada item em um array é chamado de elemento.
  -vCada elemento é acessado pela posição numérica (índice).
- O índice inicia a partir de 0.
- Arrays não possuem tamanho estático

### Declaração de arrays

- dataType[ ] arrayName = new dataType[arraySize];
- dataType[ ] arrayName = {value0, value1, ..., valueN};

```
int [ ] meuArray = new int[7];
int [ ] meuArray = {12,32,54,6,8,89,64};
```

### Comprimento do array

- Para descobrir quantos elementos um array possui, use a propriedade length.

```
System.out.println(meuArray.length);
```

### Percorrendo arrays

- Para processar um array, devemos usar um laço de repetição (for, forEach, etc)

```
public class MyClass {
    public static void main(String[ ] args) {
        int [ ] meuArray = {12,32,54,6,8,89,64};
        for (int i=0; i<7; i++){
            System.out.println(meuArray[i]);
        }
    }
}
```

### Arrays multidimensionais

- Um array multidimensional é um array contendo um ou mais arrays internos.

```
int[ ] [ ] meuArrayMulti = { { 1,2,3,4}, {5,6,7} };
```

### Processando um array multidimensional

```
public class MyClass {
    public static void main(String[ ] args) {
        int [ ] [ ] meuArrayMulti = { {1,2,3,4}, {5,6,7} };
        for (int i=0; i< meuArrayMulti.length; ++i) {
            for (int j= 0; j < meuArrayMulti[i].length; ++j) {
                System.out.println(meuArrayMulti[i][j]);
            }
        }
    }
}
```
