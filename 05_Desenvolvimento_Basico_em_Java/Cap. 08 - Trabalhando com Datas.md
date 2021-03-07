# Manipulação e Formatação de Datas

### O java.util.Date - Date( )

- Este construtor vai alocar um objeto da classe Date e o inicializará com o milissegundo mais próximo do período da sua execução.

```
    Date()
    Date(int year, int month, int date)
    Date(int year, int month, int date, int hrs, int min)
    Date(int year, int month, int date, int hrs, int min, int sec)
    Date(long date)
    Date(String s)

    Date data = new Date();
```

### Date (long date)

- Diferente do construtor anterior, esse construtor espera que você passe os milissegundos com base padrão de tempo (epoch) que usa como referência 1 de janeiro de 1970 00:00:00.
- "O epoch timestamp é um padrão largamente aceito para representar uma data como um inteiro 32-bits a partir do início do Unix Epoch..."

```
    Long currentTimeMillis = System.currentTimeMillis();

    Date data = new Date(currentTimeMillis);
```

### Métodos úteis

- Método: after(Date) - Retorno: boolean - Descrição: Checa se o objeto Data de referêmcia é posterior ao comparado
- Método: before(Date - Retorno: boolean - Descrição: Checa se o objeto de referência é anterior ao comparado
- Método: compareTo(Date) - Retorno: int - Descrição: Compara dois objetos Data
- Método: equals(Date) - Retorno: boolean - Descrição: Checa se os objetos são iguais
- Método: getTime( ) - Retorno: long - Descrição: Retorna a data em milissegundos
- Método: setTime(long) - Retorno: void - Descrição: Define uma data com basae em milissegundos
- Método: from(Instante) - Retorno: static Date - Descrição: Define uma data com base em um Instant
- Método: toInstant( ) - Retorno: Instant - Descrição: Retorna um instant com base em um Date

### Classe Instant

- Modela um ponto instantâneo de uma linha do tempo.
- Indicado para gravar marcações temporais em eventos da sua aplicação.
- Imutável e Thread safe.

```
    Long currentTimeMillis = System.currentTimeMillis();
    Date data = new Date(currentTimeMillis);

    Instant instant = date.ToInstant();
```

### java.util.Calendar

- Já na JDK 1.1 foi observada a necessidade de facilitar alguns recursos que a class Date oferecia. Sendo assim, a classe Calendar foi criada. Com isso uma série de métodos e construtores da classe Date foi depreciada. Por exemplo o contrutor Date(int year, int month, int date).
- Calendar é uma classe abstrata que provê métodos para converter data entre um instante específico.
- O Calendar possui alguns campos específicos para manipulação como MONTH, YEAR, HOUR etc.

```
    Calendar cal = Calendar.getInstance();

    cal.add((Calendar.DATE), 15);
    cal.add((Calendar.MOUNT), 4);
    cal.add((Calendar.YEAR), 9);

    Calendar future = Calendar.getInstance();
    Calendar past = Calendar.getInstance();
    future.set(Calendar.YEAR, 2022);
    past.set(Calendar.YEAR, 2019);

    if (future.after(cal))
    if (past.before(cal))
```

### java.text.DateFormat

- Nesse ponto em que estamos existem, basicamente, duas classes para formatação de datas. O DateFormat e o SimpleDateFormat. Ambos oferecem maneiras de formatar e parsear a saída das datas.

```
    Date date = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
    String strDate= formatter.format(date);
    System.out.println(strDate);
```

### LocalDate

- É uma classe imutável para representar uma data. Seu formato padrão é yyyy-MM-dd

### LocalTime

- É uma classe imutável que representa um padrão de hora-minuto-segundo. Pode ser representado até o nível de nanosegundos. 12:22:10:123212345

### LocalDateTime

- Funciona como uma espécie de junção entre o LocalTime e o LocalDate.
- Também é uma classe imutável e você consegue trabalhar com dia e hora de uma só vez.
- Você pode manipular a data e hora com precisão de nanosegundos. (2nd October 2007 at 13:45.30.123456789)
