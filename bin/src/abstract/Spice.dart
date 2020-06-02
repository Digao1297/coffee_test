import 'Beverage.dart';

/// Interface responsavel pelo contrato de cada Condimento, adicionais do Café
abstract class ISpice extends IBeverage {
  /// Sobreescrevendo o escopo do meodo/get para pegar descrição
  @override
  String getDescription();
}
