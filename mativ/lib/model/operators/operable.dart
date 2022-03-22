import 'package:mativ/model/operators/operator.dart';

abstract class Operable {
  Operator _operator;

  Operable(Operator operator) : _operator = operator;

  Operator getOperator() => _operator;
}
