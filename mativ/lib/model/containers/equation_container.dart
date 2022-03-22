import 'package:mativ/model/operators/operator.dart';

import '../equation_element.dart';

abstract class EquationContainer extends EquationElement {
  Operator _operator;
  bool _operatorHidden;
  EquationElement _child;
  EquationContainer? _left;
  EquationContainer? _right;

  EquationContainer(Operator operator, bool operatorHidden,
      EquationElement child, EquationContainer? left, EquationContainer? right)
      : _operator = operator,
        _operatorHidden = operatorHidden,
        _child = child,
        _left = left,
        _right = right,
        super() {
    _left?.setRight(this);
    _right?.setLeft(this);
  }

  void setLeft(EquationContainer? left) => _left = left;
  void setRight(EquationContainer? right) => _right = right;

  EquationContainer? getLeft() => _left;
  EquationContainer? getRight() => _right;
  Operator getOperator() => _operator;
}
