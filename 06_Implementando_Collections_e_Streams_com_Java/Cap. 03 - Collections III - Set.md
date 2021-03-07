# java.util.Set

### Set

- Por padrão, não garante ordem
- Não permite itens repetidos
- Permite adição e remoção normalmente. Não possui busca por item e atualização. Para leitura, apenas navegação
- Não permite mudança de ordenação

### HashSet

- Quando Utilizar
  - Quando não é necessário manter uma ordenação
- Ordenação
  - Não é ordenado, e não permite valores repetidos.
- Performance
  - Por não ter repetição de valores e não ser ordenado, é a implementação mais performática

### LinkedHashSet

- Quando Utilizar
  - Quando é necessário manter a ordem de inserção dos elementos
- Ordenação
  - Mantém a ordem de inserção dos elementos
- Performance
  - É a implementação mais lenta por ser necessária manter a ordem

### TreeSet

- Quando Utilizar
  - Quando é necessário alterar a ordem através do uso de comparators
- Ordenação
  - Mantém ordem e pode ser reordenado
- Performance
  - E performático para leitura. Para modificação tem a necessidade de reordenar, sendo mais lento que o LinkedHashSet

### Códigos / ... Cap. 03.java