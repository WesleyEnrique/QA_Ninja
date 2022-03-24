*** Settings ***
Test Setup         Nova sessão
Test Teardown      Encerrar sessão
Resource           base.robot

*** Test Cases ***
Selecionar por ID    
    Go To                            ${URL}/radios
    Select Radio Button              movies    cap
    Radio Button Should Be Set To    movies    cap    

Selecionando por Value    
    Go To                            ${URL}/radios
    Select Radio Button              movies    guardians
    Radio Button Should Be Set To    movies    guardians 