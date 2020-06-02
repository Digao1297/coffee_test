import 'package:test/test.dart';
import '../bin/src/abstract/Beverage.dart';
import '../bin/src/class/types/DarkRoast.dart';
import '../bin/src/class/types/Capuccino.dart';
import '../bin/src/class/spice/CoffeeArabica.dart';
import '../bin/src/class/spice/Milk.dart';

/// -- Arquivo principal de Testes Unitários --
///
/// -> Disponibilizamos uma 'suite' de testes, as informações para como rodar cada um dos testes a baixo
/// estará discrita no Github do projeto, aqui se iremos descrever o que cada função realiza em cada metodo ou classe.
///
/// ->Lembrando que utilizamos o Pattern Decoretor para implementar uma simples Cafeteria, onde temos dois tipos de Café e
/// dois tipos de Condimentos.
///
/// -> A biblioteca de testes escolhida e a padão do Dart Lang segue link da mesma: https://pub.dev/packages/test
///
void main() {
  /// Um Grupo de testes que irá realizar os testes na Classe DarkRoast, aqui usamos o tipo de Interface para
  /// declarar a instâcia da classe, pois isso facilita os testes unitários e segue as boas práticas do 'Clean Code'.
  /// Os testes podem ser agrupados usando a função do grupo(). A descrição de cada grupo é adicionada ao início
  /// das descrições de seu teste.
  /// Onde o:
  /// 1° Parâmetro e uma breve descrição do grupo (descrição do que aquele grupo irá testar)
  /// 2° Parâmetro e uma função Anônima
  /// Os mesmos aspecto dos parâmetros acima se aplicam em cada teste de forma individual
  ///
  group('Dark Roasted Coffee Test', () {
    /// -> Os testes são especificados usando a função de teste de nível test()
    /// e as afirmações de teste são feitas usando expect():
    ///
    /// -> O teste a baixo e responsável por testar o tipo de café Dark Roasted Coffee,
    /// o mesmo tem (2 parâmetros), o primeiro uma pequena descrição do que será testado,
    /// o segundo e uma função anônima, dentro do teste temos a lógica/regra de negócio
    /// do teste, seguido da função de nível superior expect(): essa função recebe um método
    /// da classe real nesse caso o Método .cost() (Método de Contrato da interface) e
    /// como segundo parâmetro o valor a ser esperado.
    ///
    /// -> Ou seja passamos um método que calcula um preço e logo após passamos o preço esperado,
    /// seguindo os princípios do TDD implementamos primeiro os testes, rodamos os mesmos após falha
    /// implementamos as funções/classe de forma genérica e rodamos os testes novamente, tornando
    /// esse ciclo automatizado para testes.
    ///
    test('Testing the cost of Dark Roasted Coffee', () {
      IBeverage darkRoast = DarkRoast();
      darkRoast = Milk(darkRoast);

      /// -> Aqui a execução do método de nivel superior expect() recebe os parâmetros o método
      /// que irá gerar calcular o preço e o valor que esperamos desta função!
      expect(darkRoast.cost(), 4.1);
    });

    test('Testing the description of Dark Roasted Coffee', () {
      IBeverage darkRoast = DarkRoast();
      darkRoast = Milk(darkRoast);

      expect(darkRoast.getDescription(), equals('Coffee Dark Roast with Milk'));
    });
  });

  /// Os demais teste seguem o mesmo padrão já descrito...
  /// O interesante que se utilizarmos a ferramenta (IDE) VSCode o mesmo nós permite
  /// executar teste a teste de forma única, ou executar a suite de teste de forma completa
  /// pelo terminal imbutido, assim temos um controle maior.
  group('Capuccino Test', () {
    test('Testing the cost of Capuccino', () {
      IBeverage capuccino = Capuccino();
      capuccino = Milk(capuccino);
      capuccino = CoffeeArabica(capuccino);

      expect(capuccino.cost(), 8.6);
    });

    test('Testing the description of Capuccino', () {
      IBeverage capuccino = Capuccino();
      capuccino = Milk(capuccino);
      capuccino = CoffeeArabica(capuccino);

      expect(capuccino.getDescription(),
          equals('Capuccino with Milk with Coffee Arabica'));
    });
  });
}
