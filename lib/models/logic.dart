enum Operation { Division, Multiplication, Sum, Subtraction, Result }

class Logic {
  String _value = '0';

  String get value {
    return _value;
  }

  // String get multiplication {
  //   int newValue = int.parse(value);
  //   return newValue.toString();
  // }

  applyCalculator(String value, Operation op) {
    final newValue = (int.parse(value) + 5);

    /*precisa pegar o primeiro valor, ao clicar no segundo numero ele limpa o display e adiciona o novo numero,
      ao receber os 2 valores será necessário q o usuario clique em um botão de operação, ao clicar no botão de operação
      o calculo sera feito e printado o resultado na tela
    */

    // if (int.parse(value) is int) {
    //   return value;
    // } else {
    //   value = '0';
    // }

    // print(value);
    final firstValue = value;
    final secondValue = firstValue;
    //final newValue = int.parse(firstValue) + int.parse(secondValue);
    //print(newValue);  
    // //final newValue;

    // final int newValue = (int.parse(firstValue) + int.parse(value));
    // print(newValue);
    Operation operation = op;

    try {
      switch (operation) {
        case Operation.Sum:
          //newValue = (int.parse(firstValue) + int.parse(secondValue));
          break;
        case Operation.Subtraction:
          //newValue = (int.parse(value) - 10);
          break;
        case Operation.Multiplication:
          //newValue = (int.parse(value) * 2);
          break;
        case Operation.Division:
          //newValue = (int.parse(value) / 2);
          break;
        case Operation.Result:
          //newValue = (int.parse(value));
          break;
      }
      return newValue;
      //return newValue.toString();
    } catch (error) {
      return print(error.toString());
    }
  }
}
