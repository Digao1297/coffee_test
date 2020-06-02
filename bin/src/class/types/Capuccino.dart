import '../../abstract/Beverage.dart';

class Capuccino extends IBeverage {
  Capuccino() {
    description = 'Capuccino';
  }

  @override
  double cost() => 6.60;
}
