import 'package:mativ/model/containers/equation_container.dart';
import 'package:mativ/model/operators/operable.dart';
import 'package:mativ/model/operators/operator.dart';

class EquationGroup extends EquationContainer {
  EquationGroup(Operator operator, Operable child, EquationContainer? left,
      EquationContainer? right)
      : super(operator, child, left, right);
}
