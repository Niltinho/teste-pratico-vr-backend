# Define a string de entrada que será processada
Given('a string de entrada {string}') do |entrada|
  @entrada = entrada
end

# Define um array de dois marcadores que serão usados para separar a string de entrada
Given('os marcadores [{string}, {string}]') do |valor1, valor2|
  @marcadores = [valor1, valor2]
end

# Define um array de quatro marcadores que serão usados para separar a string de entrada
Given('os marcadores [{string}, {string}, {string}, {string}]') do |valor1, valor2, valor3, valor4|
  @marcadores = [valor1, valor2, valor3, valor4]
end

# Verifica se a saída gerada corresponde à saída esperada
Then('a saída esperada é: {string}') do |saida_esperada|
  @saida = remover_texto_apos_simbolo(@entrada, @marcadores)
  expect(@saida).to eq(saida_esperada)
end

# Função auxiliar que remove o texto após os símbolos definidos nos marcadores
def remover_texto_apos_simbolo(entrada, marcadores)
  marcadores.each do |marcador|
    # Encontra a posição do marcador na string de entrada
    pos = entrada.index(marcador)

    # Se o marcador for encontrado, separa a string até a posição do marcador
    if pos
      entrada = entrada[0...pos].strip
      break
    end
  end
  entrada
end