import 'package:mativ/model/operators/operator.dart';
import 'package:mativ/model/symbols/equation_symbol.dart';

class ValueSymbol extends EquationSymbol {
  int _value;

  ValueSymbol(Operator operator, int value) :
    _value = value,
    super(operator);

  int getValue() => _value;
}