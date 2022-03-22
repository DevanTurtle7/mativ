import 'package:mativ/model/operators/operator.dart';
import 'package:mativ/model/symbols/equation_symbol.dart';

class VariableSymbol extends EquationSymbol {
  String _variable;

  VariableSymbol(String variable) : _variable = variable;

  void getString() => _variable;
}
