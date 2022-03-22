import 'package:mativ/model/containers/equation_group.dart';
import 'package:mativ/model/operators/operator.dart';
import 'package:mativ/model/symbols/value_symbol.dart';

void main() {
  ValueSymbol number1 = ValueSymbol(4);
  ValueSymbol number2 = ValueSymbol(1);

  EquationGroup parent = EquationGroup(Operator.add, true, number1, null, null);
  EquationGroup next = EquationGroup(Operator.subtract, true, number2, parent, null);

  print(parent.getRight());
}