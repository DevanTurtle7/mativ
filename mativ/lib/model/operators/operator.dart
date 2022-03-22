import 'package:mativ/model/equation_element.dart';
import 'package:mativ/model/operators/operable.dart';

abstract class Operator extends EquationElement {
  bool _first;
  bool _hidden;

  Operator(Operable? left, Operable? right, bool first, bool hidden)
      : _first = first,
        _hidden = hidden,
        super(left, right);

  void setFirst(bool first) => _first = first;
  void setHidden(bool hidden) => _hidden = hidden;

  bool isFirst() => _first;
  bool isHidden() => _hidden;
}
