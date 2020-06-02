abstract class IBeverage {
  String description = 'unknown drink';

  String getDescription() => description;

  double cost();
}
