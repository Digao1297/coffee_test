import '../../abstract/Spice.dart';
import '../../abstract/Beverage.dart';

/// Condimento que implementa pattern decorator sobre um
/// contrato co a interface de ISpice => condimentos
class Milk extends ISpice {
  IBeverage beverage;

  Milk(IBeverage beverage) {
    this.beverage = beverage;
  }

  @override
  double cost() => beverage.cost() + 0.50;

  @override
  String getDescription() => '${beverage.getDescription()} with Milk';
}
