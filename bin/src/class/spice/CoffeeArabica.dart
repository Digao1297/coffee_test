import '../../abstract/Beverage.dart';
import '../../abstract/Condiment.dart';

class CoffeeArabica extends ICondiment {
  IBeverage beverage;

  CoffeeArabica(IBeverage beverage) {
    this.beverage = beverage;
  }

  @override
  double cost() => beverage.cost() + 1.50;

  @override
  String getDescription() => '${beverage.getDescription()} with Coffee Arabica';
}
