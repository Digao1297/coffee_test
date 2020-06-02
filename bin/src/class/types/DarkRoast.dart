import '../../abstract/Beverage.dart';

///
/// Cafe torado
///
class DarkRoast extends IBeverage {
  DarkRoast() {
    description = 'Coffee dark roast';
  }

  @override
  double cost() => 3.60;
}
