import 'package:mativ/model/operators/operator.dart';
import 'package:mativ/model/symbols/equation_symbol.dart';

class Divide extends Operator {
  Divide(EquationSymbol? left, EquationSymbol? right, bool first, bool hidden)
      : super(left, right, first, hidden);
}
