import 'package:test/test.dart';
import '../bin/src/abstract/Beverage.dart';
import '../bin/src/class/types/DarkRoast.dart';
import '../bin/src/class/types/Capuccino.dart';
import '../bin/src/class/spice/CoffeeArabica.dart';
import '../bin/src/class/spice/Milk.dart';

void main() {
  group('Dark roasted coffee test', () {
    test('testing the cost of dark roasted coffee', () {
      IBeverage darkRoast = DarkRoast();
      darkRoast = Milk(darkRoast);

      expect(darkRoast.cost(), 4.1);
    });

    test('testing the description of dark roasted coffee', () {
      IBeverage darkRoast = DarkRoast();
      darkRoast = Milk(darkRoast);

      expect(darkRoast.getDescription(), equals('Coffee dark roast with milk'));
    });
  });

  group('Capuccino test', () {
    test('testing the cost of capuccino', () {
      IBeverage capuccino = Capuccino();
      capuccino = Milk(capuccino);
      capuccino = CoffeeArabica(capuccino);

      expect(capuccino.cost(), 8.6);
    });

    test('testing the description of capuccino', () {
      IBeverage capuccino = Capuccino();
      capuccino = Milk(capuccino);
      capuccino = CoffeeArabica(capuccino);

      expect(capuccino.getDescription(),
          equals('Capuccino with milk with Coffee Arabica'));
    });
  });
}
