*** Settings ***
Test Setup         Nova sessão
Test Teardown      Encerrar sessão
Resource           base.robot

*** Test Cases ***
Login com sucesso 
    Go To            ${URl}/login
    Input Text       css=input[name=username]    stark
    Input Text       css=input[name=password]    jarvis!
    Click Element    class=btn-login

    Page Should Contain    Olá, Tony Stark. Você acessou a área logada!

senha invalida 
    [Tags]           login_error
    Go To            ${URl}/login
    Input Text       css=input[name=username]    stark
    Input Text       css=input[name=password]    abcs
    Click Element    class=btn-login
    
    ${menssagem}=     Get WebElement        id=flash
    Should Contain    ${menssagem.text}     Senha é invalida!

Usuario nao existe 
    [Tags]           erro_cadastro
    Go To            ${URl}/login
    Input Text       css=input[name=username]    jorge
    Input Text       css=input[name=password]    abcs
    Click Element    class=btn-login
    
    ${menssagem}=     Get WebElement        id=flash
    Should Contain    ${menssagem.text}     O usuário informado não está cadastrado!
