*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***
LoginSondaBO
    [Tags]    login 
    
    Open Browser    http://190.149.249.218:8088         chrome
    maximize browser window    
    Input Text      name=UiCalllbackPanel$txtUsuario    gerente@diprocom
    Input Text      name=UiCalllbackPanel$txtPass            1237710
    Press Keys      name=UiCalllbackPanel$txtPass            ENTER
    Sleep    2
    #Select Frame    id=UiPopupConfirmacion_PW-1

    Click Element    xpath=/html/body/form/div[5]/div/div[2]/div/table/tbody/tr[2]/td[1]/div
    Sleep    5
    Click Element   xpath=/html/body/form/div[3]/table/tbody/tr/td[1]/div/table/tbody/tr[2]/td/div/div/div/ul/li/span
    #Close Browser
    
 Catalogos-ListaPrecios
    [Tags]    precios
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    5
    Click Element    id=ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_7   
    sleep    12  
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI0_T"]
    Input Text    id=split_pgcDet_ASPxFormLayout1_txtCodigo_I     123
    Input Text      xpath=//*[@id="split_pgcDet_ASPxFormLayout1_txtNombre_I"]          11111
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_memComentario_I"]        PruebasAutomaticasConRobotFramework
    sleep    1
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI2_T"]
      
Catalogos-bodegas
    [Tags]    bodegas
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_0"]                   
    sleep    12
     
    #no funciona    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxMenu4"]  
                        
    
    
Catalogos-portafolioProductos
    [Tags]    portafolio
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    

    
Catalogos-SeguridadYRoles
    [Tags]    seguridad
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    




    
    
    
