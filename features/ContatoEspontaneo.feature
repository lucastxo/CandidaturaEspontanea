#language: pt
Funcionalidade: Contato Espontaneo
    Sendo um visitante
    Posso fazer o cadastro de minhas informações
    Para poder concorrer uma vaga

    Contexto:Formulário
        Dado que eu estou no formulário de cadastro 
        
    #Cenário não automatizado inteiramente para não afetar Produção

    #Cenário:Cadastro simples
    #     E possuo os seguintes dados:
    #         | nome        | Lucas              |
    #         | DDI         | +55 (Brazil)       |
    #         | numeroTel   | 12345678           |
    #         | email       | lucastxo@gmail.com |
    #         | tecnologias | Cucumber           |
    #         | senioridade | Pleno              |
    #     Quando faço o meu cadastro
    #     Então vejo a mensagem 

    Cenário:Cadastro com numero invalido
        E possuo os seguintes dados:
            | nome        | Lucas              |
            | DDI         | +351 (Portugal)    |
            | numeroTel   | 1234567            |
            | email       | lucastxo@gmail.com |
            | tecnologias | Cucumber           |
            | senioridade | Pleno              |
        Quando faço o meu cadastro
        Então vejo a mensagem "Número de telemóvel inválido!"

    Cenário:Cadastro com email invalido
        E possuo os seguintes dados:
            | nome        | Lucas              |
            | DDI         | +351 (Portugal)    |
            | numeroTel   | 123456789          |
            | email       | lucastxogmail.com  |
            | tecnologias | Cucumber           |
            | senioridade | Pleno              |
        Quando faço o meu cadastro
        Então vejo a mensagem "Email inválido!"
    
    Esquema do Cenario: Campos obrigatórios

        E possuo os seguintes dados:
            | nome        | <nome>             |
            | DDI         | +351 (Portugal)    |
            | numeroTel   | <numeroTel>        |
            | email       | <email>            |
            | tecnologias | <tecnologias>      |
            | senioridade | Pleno              |
        Quando faço o meu cadastro 
        Então vejo a mensagem "<saida>"

        Exemplos:
            | nome  |numeroTel    | email              | tecnologias   | saida                              |
            |       | 123456789   | lucastxo@gmail.com | Cucumber      | Campos obrigatórios: Nome !        |
            | Lucas | 123456789   |                    | Cucumber      | Campos obrigatórios: Email !       |
            | Lucas |             | lucastxo@gmail.com | Cucumber      | Campos obrigatórios: Telemovel !   |
            | Lucas | 123456789   | lucastxo@gmail.com |               | Campos obrigatórios: Tecnologias ! |