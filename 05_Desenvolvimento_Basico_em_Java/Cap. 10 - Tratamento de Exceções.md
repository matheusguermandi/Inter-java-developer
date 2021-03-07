# Funcionamento de Exceções em Java

### Tratamento de Exceções

- Exceções são todos os erros que ocorrem durante o processamento de um método que podem ser esperados ou não esperados. Como o termo já diz, "Exceptions" são exceções. Falhas que não devem ocorrer rotineiramente no fluxo de um sistema.

### Checked Exceptions

- São exceções esperadas, cujo fluxo ou método de um sistema foi preparado para receber. Um Bom exemplo é uma exceção de negócio, onde se deseja informar um erro caso a exceção esperada ocorra.

### Unchecked Exceptions

- São exceções não esperadas para o fluxo ou método de um sistema, um bom exemplo é a famosa NullPointException que ocorre quando se tenta acessar uma referência de memória vazia, ou recuperar uma instância que não existe, dentre outros motivos.

### Bloco Try catch

- O bloco try catch sempre é utilizado quando no processo que será executado dentro de um método é esperado um erro, então cria-se um bloco "protegido" onde qualquer erro que ocorra dentro do trecho "try" é direcionado para o trecho "catch" e sofrerá o devido tratamento de erro.

### Finally

- O finally é um bloco de código que pode ou não ser utilizado junto ao try catch, estre trecho de código sempre será executado independente se ocorrer erro ou não dentro do fluxo onde existe o try catch. Normalmente o finally é usado para liberar recursos ou para dar continuidade em um fluxo que deve ocorrer independente de erro.

```
    try {

    } catch (XException ex) {

    } catch (YException ey) {

    } finally {

    }
```

### Throws

Throws - É a assinatura do método que será retornado caso ocorra erro para o método que fez a chamada, dentro de um fluxo encadeado.

### Throw

- É usado para lançar a exceção desejada, juntamente com a mensagem de erro, para o método que fez a chamada.

```
static void main() throws ErroDoTipoX, ErroDoTipoY, ErroDoTipoZ{
  ...
  throw new ErroDoTipoX();
  ...
  throw new ErroDoTipoY();
  ...
  throw new ErroDoTipoZ();
}
```
