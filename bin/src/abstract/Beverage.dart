/// Interface que será responsavel pelo contrato de Café
abstract class IBeverage {
  /// Descrição do Café
  String description = 'Unknown Drink';

  /// Get para pegar a descrição
  String getDescription() => description;

  /// Preço do Café sem os Condimento/Adicionais
  double cost();
}
