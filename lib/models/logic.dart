
class Logic {
  String _value = '0';

  void applyCommand(String value) {
    _value += value;
    switch (value) {
      case 'AC':
        _allClear();
        break;
      case '+':
        final newValue = int.tryParse(_value)! + int.tryParse(value)!;
        _value = newValue.toString();
        break;
      case '-':
        print('subtração');
        break;
      case 'x':
        print('multiplicação');
        break;
      case '=':
        print('resultado');
        break;
      case '/':
        print('divisão');
        break;
      case '%':
        print('porcentagem');
        break;
    }
  }

  void _allClear() {
    _value = '0';
  }

  String get value {
    return _value;
  }
}
