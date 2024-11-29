Feature: Produtos e estabelecimentos

  Scenario: Validar a chave typeOfEstablishment no JSON e imprimir um tipo de estabelecimento
    Given que eu tenha o endpoint de consulta
    When realizo a consulta através do endpoint de enumerations
    Then o JSON retornado deve conter a chave "typeOfEstablishment"
    And um tipo de estabelecimento aleatório deve ser impresso