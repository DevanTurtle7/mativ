import 'package:mativ/model/operators/operable.dart';
import 'package:mativ/model/operators/operator.dart';

abstract class EquationSymbol extends Operable {

  EquationSymbol(Operator operator) : super(operator);

}