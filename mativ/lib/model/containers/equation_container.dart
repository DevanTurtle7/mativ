import 'package:mativ/model/operators/operable.dart';
import 'package:mativ/model/operators/operator.dart';

abstract class EquationContainer extends Operable {
  EquationContainer(Operator operator) : super(operator);
}