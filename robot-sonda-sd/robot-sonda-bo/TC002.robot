*** Settings ***

Library    SeleniumLibrary


*** Test Cases ***
Loggin
    Open Browser    http://190.149.249.218:8088         chrome
    
    Input Text      name=UiCalllbackPanel$txtUsuario    gerente@diprocom
    Input Text      name=UiCalllbackPanel$txtPass            1237710
    Press Keys      name=UiCalllbackPanel$txtPass            ENTER
    Sleep    2
    #Select Frame    id=UiPopupConfirmacion_PW-1

    Click Element    xpath=/html/body/form/div[5]/div/div[2]/div/table/tbody/tr[2]/td[1]/div
    Sleep    5
    Click Element   xpath=/html/body/form/div[3]/table/tbody/tr/td[1]/div/table/tbody/tr[2]/td/div/div/div/ul/li/span
    #Close Browser589
 
    

    
    
