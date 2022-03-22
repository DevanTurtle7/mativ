import 'package:mativ/model/operators/operator.dart';

abstract class Operable {
  Operator _operator;
  bool _operatorHidden;

  Operable(Operator operator, bool operatorHidden)
      : _operator = operator,
        _operatorHidden = operatorHidden;

  Operator getOperator() => _operator;
}
