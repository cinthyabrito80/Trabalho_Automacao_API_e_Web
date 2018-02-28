#language: pt

Funcionalidade: Login
    Para que somente eu possa ver os graficos
    Sendo um usuário
    Posso logar no sistema com meus dados

    Cenário: Login usuário
        Dado que eu acessei a pagina
        Quando faço login com "mamisumi@gmail.com" e "1234"
        Então sou autenticado com sucesso
        E vejo o painel com os gráficos

    Esquema do Cenário: Tentativa de login
        Dado que eu acessei a pagina
        Quando faço login com "<email>" e "<senha>"
        Então devo ver a mensagem "<alerta>"

        Exemplos:
            | email                      | senha  | alerta                       |
            | mamisumi@gmail.com         | abc123 | Usuário e/ou senha inválidos.|
            | mamisumi@gmail.com         |        | Usuário e/ou senha inválidos.|
            |                            | 1234   | Usuário e/ou senha inválidos.|