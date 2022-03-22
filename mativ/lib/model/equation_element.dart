abstract class EquationElement {
  EquationElement? _left;
  EquationElement? _right;

  EquationElement(EquationElement? left, EquationElement? right)
      : _left = left,
        _right = right;

  void setLeft(EquationElement? left) => _left = left;
  void setRight(EquationElement? right) => _right = right;
  EquationElement? getLeft() => _left;
  EquationElement? getRight() => _right;
}
