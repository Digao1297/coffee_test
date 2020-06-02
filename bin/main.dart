import 'src/abstract/Beverage.dart';
import 'src/class/spice/Milk.dart';
import 'src/class/spice/CoffeeArabica.dart';
import 'src/class/types/Capuccino.dart';
import 'src/class/types/DarkRoast.dart';

void main() {
  IBeverage darkRoast = DarkRoast();
  darkRoast = Milk(darkRoast);

  print(
      '\nChosen drink: ${darkRoast.getDescription()} \nDrink Price: ${darkRoast.cost()}\n\n');

  IBeverage capuccino = Capuccino();
  capuccino = Milk(capuccino);
  capuccino = CoffeeArabica(capuccino);

  print(
      '\nChosen drink: ${capuccino.getDescription()} \nDrink Price: ${capuccino.cost()}\n\n');
}
