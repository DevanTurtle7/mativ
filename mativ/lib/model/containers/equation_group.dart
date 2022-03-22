import 'package:mativ/model/containers/equation_container.dart';
import 'package:mativ/model/equation_element.dart';
import 'package:mativ/model/operators/operator.dart';

class EquationGroup extends EquationContainer {
  EquationGroup(Operator operator, bool operatorHidden, EquationElement child,
      EquationContainer? left, EquationContainer? right)
      : super(operator, operatorHidden, child, left, right);
}
