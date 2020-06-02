import '../../abstract/Beverage.dart';

/// Café que implementa pattern decorator sobre um
/// contrato co a interface de IBeverage => cafés
class Capuccino extends IBeverage {
  Capuccino() {
    description = 'Capuccino';
  }

  @override
  double cost() => 6.60;
}
