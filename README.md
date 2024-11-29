# Projeto de Teste Backend VR

Os testes vão ser executados através do framework Ruby, para mais detalhes sobre a instalação da mesma, clique [here](https://www.ruby-lang.org/pt/documentation/installation/).

Após instalação do Ruby, seguir com os passos abaixo.


## Instalar as dependências do projeto

- Para instalar as dependências do projeto, execute o seguinte comando:
bundle install


## Executando os testes

- Para executar todos os testes do projeto, execute o comando abaixo:

bundle exec cucumber

- Se preferir executar somente uma feature específica, execute o comando abaixo:

cucumber .\features\remover_textos.feature

cucumber .\features\api_test.feature