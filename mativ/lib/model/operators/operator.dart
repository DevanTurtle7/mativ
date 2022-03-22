import 'package:mativ/model/operators/operable.dart';

abstract class Operator {
  Operable _operable;
  bool _hidden;

  Operator(Operable operable, bool hidden)
      : _operable = operable,
        _hidden = hidden;

  void setHidden(bool hidden) => _hidden = hidden;

  bool isHidden() => _hidden;
}
