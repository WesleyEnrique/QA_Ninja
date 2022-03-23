*** Settings ***
Library            SeleniumLibrary
Resource           base.robot
Test Setup         Nova sessão    
Test Teardown      Encerrar sessão

*** Variables ***
${THOR}           id=thor
${IRON_MAN}       css:input[value='iron-man']
${PANTERA}        xpath=//*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com ID
    Go To                            ${URL}/checkboxes   
    Select Checkbox                  ${THOR}
    Checkbox Should Be Selected      ${THOR}


Marcando opção com CSS seletor 
    [Tags]     iron man
    Go To                            ${URL}/checkboxes   
    Select Checkbox                  ${IRON_MAN}
    Checkbox Should Be Selected      ${IRON_MAN}

Marcando opção com Xpath
    [Tags]     pantera 
    Go To                            ${URL}/checkboxes   
    Select Checkbox                  ${PANTERA}
    Checkbox Should Be Selected      ${PANTERA}     

             