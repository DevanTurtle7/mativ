import 'package:mativ/model/operators/operator.dart';
import 'package:mativ/model/symbols/equation_symbol.dart';

class ValueSymbol extends EquationSymbol {
  double _value;

  ValueSymbol(Operator operator, double value) :
    _value = value,
    super(operator);

  double getValue() => _value;
}