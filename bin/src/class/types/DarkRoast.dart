import '../../abstract/Beverage.dart';

/// Café que implementa pattern decorator sobre um
/// contrato co a interface de IBeverage => cafés
class DarkRoast extends IBeverage {
  DarkRoast() {
    description = 'Coffee Dark Roast';
  }

  @override
  double cost() => 3.60;
}
