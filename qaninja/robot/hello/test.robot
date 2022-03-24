*** Settings ***
Library        app.py

*** Test Cases ***
Deve retornar a mensagem de boas vindas 
    ${result}=     Welcome    Wesley
    Log To Console    ${result}
    Should Be Equal    ${result}    Olá Wesley, Bem vindo ao curso básico de robotframework