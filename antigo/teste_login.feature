#language: pt

Funcionalidade: Login no Saucedemo

 Como usuario
 Quero logar no site
 Para fazer compras

Contexto: 

    Dado que eu acesse a página inicial do site Saucedemo

 Cenario: Autenticação valida

    Quando eu digitar o usuario "standard_user" 
    E digitar a senha "secret_source":
    Então deve ser exibida a seleção de produtos e o carrinho.

 Cenario: Autenticação invalida por usuario

    Quando eu digitar o usuario "qualquer_user" 
    E digitar a senha "secret_source":
    Então deve ser exibida "Epic sadface: Username and password do not match any user in this service"

 Cenario: Autenticação invalida por senha 

    Quando eu digitar o usuario "qualquer_user" 
    E digitar a senha "secret_source":
    Então deve ser exibida "Epic sadface: Username and password do not match any user in this service"

 Cenario: Autenticação com usuario bloqueado

    Quando eu digitar o usuario "locked_out_user" 
    E digitar a senha "secret_source":
    Então deve ser exibida "Epic sadface: Sorry, this user has been locked out"

 Esquema do Cenario: Logins inválido com tabela

 Quando eu digitar o <usuario>
 E a senha <senha>
 Então deve ser exibida a mensagem <mensagem>

 Exemplos:

   |usuario | senha | mensagem|
   |"user_user"| "secret_source" | "Epic sadface: Username and password do not match any user in this service" |
   |"standard_user"| "secret_inv"| "Epic sadface: Username and password do not match any user in this service"|
   |"standard_user" | "" | "Epic sadface: Password is required" |