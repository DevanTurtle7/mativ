import 'package:mativ/model/operators/operable.dart';
import 'package:mativ/model/operators/operator.dart';

abstract class EquationContainer extends Operable {
  Operable _child;
  EquationContainer? _left;
  EquationContainer? _right;

  EquationContainer(Operator operator, Operable child, EquationContainer? left,
      EquationContainer? right)
      : _child = child,
        _left = left,
        _right = right,
        super(operator);

  void setLeft(EquationContainer? left) => _left = left;
  void setRight(EquationContainer? right) => _right = right;

  EquationContainer? getLeft() => _left;
  EquationContainer? getRight() => _right;
}