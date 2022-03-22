import 'package:mativ/model/symbols/equation_symbol.dart';

abstract class Operator {
  EquationSymbol? _left;
  EquationSymbol? _right;
  bool _first;
  bool _hidden;

  Operator(
      EquationSymbol? left, EquationSymbol? right, bool first, bool hidden)
      : _left = left,
        _right = right,
        _first = first,
        _hidden = hidden;
  
  void setLeft(EquationSymbol? left) => _left = left;
  void setRight(EquationSymbol? right) => _right = right;
  void setFirst(bool first) => _first = first;
  void setHidden(bool hidden) => _hidden = hidden;

  EquationSymbol? getLeft() => _left;
  EquationSymbol? getRight() => _right;
  bool isFirst() => _first;
  bool isHidden() => _hidden;
}