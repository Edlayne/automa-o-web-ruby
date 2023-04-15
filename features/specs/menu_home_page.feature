#language: pt
#O Cucumber possui um analisador de linguagem simples chamado Gherkin.
#Ele permite que os comportamentos esperados seja especificado em um idioma lógico
#Para que os clientes possam entender, e ele já foi utilizado de forma exclusiva para 
#O teste do Ruby como complemento à estrutura BDD Rspec.


Funcionalidade: Menu Home Page

Esquema do Cenario: Validar menu home page

Dado que eu esteja na página home
Quando eu clico no botão "<btn_name>"
Então sou direcionado para a sessão "<sessao_name>"

Exemplos:
| btn_name      | sessao_name                          |
| sobre-nos     | Sobre nós                            |
| depoimentos   | O Qa.Coders é feito para os alunos   | 
| parceiros     | Parceiros                            |
| faleConosco  | Fale Conosco                         |