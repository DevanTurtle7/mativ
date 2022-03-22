import 'package:mativ/model/operators/operator.dart';
import 'package:mativ/model/symbols/equation_symbol.dart';

class ValueSymbol extends EquationSymbol {
  double _value;

  ValueSymbol(double value) : _value = value;

  double getValue() => _value;
}
