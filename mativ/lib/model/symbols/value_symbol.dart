import 'package:mativ/model/operators/operator.dart';
import 'package:mativ/model/symbols/symbol.dart';

class ValueSymbol extends Symbol {
  int _value;

  ValueSymbol(Operator operator, int value) :
    _value = value,
    super(operator);

  int getValue() => _value;
}