import '../../abstract/Beverage.dart';
import '../../abstract/Condiment.dart';

class Milk extends ICondiment {
  IBeverage beverage;

  Milk(IBeverage beverage) {
    this.beverage = beverage;
  }

  @override
  double cost() => beverage.cost() + 0.50;

  @override
  String getDescription() => '${beverage.getDescription()} with milk';
}
