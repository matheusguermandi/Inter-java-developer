# java.util.Queue

### Queue

- Garante ordem de inserção
- Permite adição, leitura e remoção considerando a regra básica de uma fila: Primeiro que entra, primeiro que sai.
- Não permite mudança de ordenação

### Métodos:

- poll ( );
  - Retorna e remove a cabeça (primeiro elemento da fila).
  - Retorna null se a fila estiver vazia.
- element ( );
  - Retorna e não remove o primeiro elemento da fila.
  - Se a fila estiver vazia, ele retorna uma exceção (NoSuchElementException)
- peek ( );
  - Retorna mas não remove o primeiro elemento da fila.
  - Retorna null se a fila estiver vazia.

### Códigos / ... Cap. 02.java