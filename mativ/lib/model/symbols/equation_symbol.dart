import 'package:mativ/model/operators/operator.dart';

abstract class EquationSymbol {
  Operator _operator;

  EquationSymbol(Operator operator) : _operator = operator;

  Operator getOperator() => _operator;
}