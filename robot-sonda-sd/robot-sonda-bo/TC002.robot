*** Settings ***

Library    SeleniumLibrary


*** Test Cases ***
Loggin
    [Tags]    LoginSondaBO 
    Open Browser    http://190.149.249.218:8088         chrome
    
    Input Text      name=UiCalllbackPanel$txtUsuario    gerente@diprocom
    Input Text      name=UiCalllbackPanel$txtPass            1237710
    Press Keys      name=UiCalllbackPanel$txtPass            ENTER
    Sleep    2
    #Select Frame    id=UiPopupConfirmacion_PW-1

    Click Element    xpath=/html/body/form/div[5]/div/div[2]/div/table/tbody/tr[2]/td[1]/div
    Sleep    5
    Click Element   xpath=/html/body/form/div[3]/table/tbody/tr/td[1]/div/table/tbody/tr[2]/td/div/div/div/ul/li/span
    #Close Browser
    
 Catalogos-SKU
     [Tags]    sku
     Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
     Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_1"]

Catalogos-bodegas
    [Tags]    bodegas
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_0"]
    sleep    2
    #Click Image    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxMenu4_DXI0_Img"]
    
    
