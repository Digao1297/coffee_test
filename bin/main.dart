import 'src/abstract/Beverage.dart';
import 'src/class/spice/Milk.dart';
import 'src/class/spice/CoffeeArabica.dart';
import 'src/class/types/Capuccino.dart';
import 'src/class/types/DarkRoast.dart';

void main() {
  IBeverage darkRoast = DarkRoast();
  darkRoast = Milk(darkRoast);

  print('${darkRoast.getDescription()}\n ${darkRoast.cost()}');

  IBeverage capuccino = Capuccino();
  capuccino = Milk(capuccino);
  capuccino = CoffeeArabica(capuccino);

  print('${capuccino.getDescription()}\n ${capuccino.cost()}');
}
