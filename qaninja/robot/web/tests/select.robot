*** Settings ***
Test Setup         Nova sessão
Test Teardown      Encerrar sessão
Resource           base.robot


*** Test Cases ***
Selecionar por texto e validar pelo valor
    Go To    ${URL}/dropdown
    Select From List By Label   class=avenger-list          Scott Lang
    ${selected}=                Get Selected List Value     class=avenger-list
    Should Be Equal             ${selected}                 7

Selecionar pelo valor e validar pelo texto
    Go To                        ${URL}/dropdown 
    Select From List By Value    id=dropdown                 6
    ${selected}=                 Get Selected List Label     id=dropdown
    Should Be Equal              ${selected}                 Loki 