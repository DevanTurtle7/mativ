import 'package:mativ/model/operators/operator.dart';

abstract class Symbol {
  Operator _operator;

  Symbol(Operator operator) : _operator = operator;

  Operator getOperator() => _operator;
}