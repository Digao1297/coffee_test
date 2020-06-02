import '../../abstract/Spice.dart';
import '../../abstract/Beverage.dart';

/// Condimento que implementa pattern decorator sobre um
/// contrato co a interface de ISpice => condimentos
class CoffeeArabica extends ISpice {
  IBeverage beverage;

  CoffeeArabica(IBeverage beverage) {
    this.beverage = beverage;
  }

  @override
  double cost() => beverage.cost() + 1.50;

  @override
  String getDescription() => '${beverage.getDescription()} with Coffee Arabica';
}
