import 'package:mativ/model/operators/operator.dart';

import '../equation_element.dart';

abstract class EquationContainer extends EquationElement {
  Operator _operator;
  EquationElement _child;
  EquationContainer? _left;
  EquationContainer? _right;

  EquationContainer(this._operator, this._child, this._left, this._right)
      : super() {
        _left?.addToRight(this);
        _right?.addToLeft(this);
  }

  void setLeft(EquationContainer? left) {
    _left = left;
  }

  void setRight(EquationContainer? right) {
    _right = right;
  }

  void addToLeft(EquationContainer left) {
    _left = left;
    left.setRight(this);
  }

  void addToRight(EquationContainer right) {
    _right = right;
    right.setLeft(this);
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

  bool operatorIsHidden() {
    // Add constant-variable relationship

    if (_operator == Operator.subtract) {
      return false;
    } else if (_left == null) {
      return true;
    } else {
      return false;
    }
  }
}
