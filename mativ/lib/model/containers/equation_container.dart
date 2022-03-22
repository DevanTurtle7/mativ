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
          setLeft(left);
          setRight(right);
  }

  void setLeft(EquationContainer? left) {
    _left = left;
    _left?.setRight(this);
  }

  void setRight(EquationContainer? right) {
    _right = right;
    _right?.setLeft(this);
  }

  void clearNeighbors() {
    _left?.setRight(_right);
    _right?.setLeft(_left);

    _left = null;
    _right = null;
  }

  EquationContainer? getLeft() => _left;
  EquationContainer? getRight() => _right;
  Operator getOperator() => _operator;
}
