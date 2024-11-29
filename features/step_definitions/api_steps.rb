require 'httparty'
require 'json'

# Define o endpoint de consulta da API
Given('que eu tenha o endpoint de consulta') do
  @url = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
end

# Realiza uma requisição GET para o endpoint especificado e obtenho a resposta do mesmo
When('realizo a consulta através do endpoint de enumerations') do
  @response = HTTParty.get(@url)
  @json = JSON.parse(@response.body)
end

# Verifica se o JSON retornado contém a chave especificada
Then('o JSON retornado deve conter a chave {string}') do |chave|
  @chave = chave
  expect(@json).to have_key(@chave)
end

# Imprime um tipo de estabelecimento aleatório do JSON retornado
Then('um tipo de estabelecimento aleatório deve ser impresso') do
  tipos = @json["typeOfEstablishment"]
  tipo_aleatorio = tipos.sample
  puts "Tipo de estabelecimento aleatório: #{tipo_aleatorio}"
end