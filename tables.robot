*** Settings ***
Test Setup         Nova sessão
Test Teardown      Encerrar sessão
Resource           base.robot

*** Test Cases ***
verificar o valor ao informar o numero 
    Go To    ${URL}/tables    
    Table Row Should Contain    id=actors    1    $ 10.000.000	