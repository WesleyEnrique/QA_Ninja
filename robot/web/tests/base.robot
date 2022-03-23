*** Settings *** 
Library        SeleniumLibrary


*** Variables ***
${URL}            https://training-wheels-protocol.herokuapp.com

*** Keywords ***    

Nova sessão 
    Open Browser        ${URL}        chrome
Encerrar sessão 
    Capture Page Screenshot
    Close Browser    