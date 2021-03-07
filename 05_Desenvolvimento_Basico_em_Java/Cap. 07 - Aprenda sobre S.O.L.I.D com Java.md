# Princípios do SOLID

### O que é SOLID?

- SOLID é um acrônimo dos princípios da programação orientada a objetos descritas por Robert C. Martin ("Uncle Bob") Auxiliam o programador a escrever códigos mais limpos, facilitando a refatoração e estimulando o reaproveitamento do código.

### SOLID

- S.R.P (Princípio da Responsabilidade Única)
- O.C.P (Princípio Aberto Fechado)
- L.S.P (Princípio da Substituição de Liskov)
- I.S.P (Princípio da Segregação da Interface)
- D.I.P (Princípio da Inversão da Dependência)

### Conceito Single Responsibility Principle (S.R.P)

- "A class should have one, and only one, reason to change." (Uma classe deve ter um, e somente um, motivo para mudar)
- A classe deve possuir uma única responsabilidade dentro do software.

### Conceito Open Closed Principle (O.C.P)

- "You should be able to extend a classes behavior, without modifying it."
- Objetos devem estar abertos para extensão, mas fechados para modificação.
- Quando novos comportamentos precisam ser adicionados no software, devemos estender e não alterar o código fonte original.

### Conceito Liskov Substitution Principle (L.S.P)

- "Derived classes must be substitutable for their base classes."
- O princípio da substituição de Liskov foi introduzido por Barbara Liskov em 1987: "Se para cada objeto o1 do tipo S há um objeto o2 do tipo T de forma que, para todos os programas P, o comportamento de P é inalterado quando o1 é substituído por o2, então S é um subtipo de T."

### Conceito Interface Segregation Principle (I.S.P)

- "Make fine grained interfaces that are cliente specific."
- Uma classe não deve ser forçada a implementar interfaces e métodos que não serão utilizados.
- É melhor criar interfaces mais específicas ao invés de termos uma única interface genérica.

### Conceito Dependency Inversion Principle (D.I.P)

- "Depende on astractions, not on concretions."
- Um módulo de alto nível não deve depender de módulos de baixo nível, ambos devem depender da abstração.
