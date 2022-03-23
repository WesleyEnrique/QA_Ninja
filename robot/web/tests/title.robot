*** Settings ***
Test Setup         Nova sessão
Test Teardown      Encerrar sessão
Resource           base.robot

*** Test Cases ***
Mostrar o titulo do site  
    Title Should Be     Training Wheels Protocol
