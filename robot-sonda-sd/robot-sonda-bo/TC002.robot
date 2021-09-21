*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
Login
    Open Browser    http://190.149.249.218:8088         chrome
    maximize browser window    
    Input Text      name=UiCalllbackPanel$txtUsuario    gerente04@diprocom
    Input Text      name=UiCalllbackPanel$txtPass            1237710
    Press Keys      name=UiCalllbackPanel$txtPass            ENTER
    Sleep    2
    Click Element    xpath=/html/body/form/div[5]/div/div[2]/div/table/tbody/tr[2]/td[1]/div
    Sleep    5
    Click Element   xpath=/html/body/form/div[3]/table/tbody/tr/td[1]/div/table/tbody/tr[2]/td/div/div/div/ul/li/span
    

*** Test Cases ***

 Catalogos-ListaPrecios
    [Tags]    precios
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    5
    Click Element    id=ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_7   
    sleep    7
    #agregar precio  
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI0_T"]
    Input Text    id=split_pgcDet_ASPxFormLayout1_txtCodigo_I     000321
    Input Text      xpath=//*[@id="split_pgcDet_ASPxFormLayout1_txtNombre_I"]          11111
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_memComentario_I"]        PruebasAutomaticasConRobotFramework
    sleep    3
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI2_T"]
    sleep    6
    #busqueda de precio
    Input Text    xpath=//*[@id="split_gridPriceList_DXFREditorcol0_I"]     000321             
    sleep    35
    Click Element    xpath=//*[@id="split_gridPriceList_DXDataRow0"]/td[1]
    #ingreso de cliente
    sleep    2
    Click Element    xpath=//*[@id="split_pgcDet_T1T"]                 
    sleep    14
    Click Element    xpath=//*[@id="split_pgcDet_gridLookCustomer_B-1"]    
    sleep    3          
    Click Element    xpath=//*[@id="split_pgcDet_gridLookCustomer_DDD_gv_DXDataRow1"]/td[1]          
    sleep    2            
    Click Element    xpath=//*[@id="split_pgcDet_gridLookCustomer_DDD_gv_StatusBar_btnAceptarCustumer_0"]  
    sleep    1
    #ingreso de producto
    Click Element    xpath=//*[@id="split_pgcDet_T2T"]
    sleep    1
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_B-1"]
    sleep    3
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_DDD_gv_DXDataRow0"]/td[1]
    sleep    1
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_DDD_gv_StatusBar_btnAceptarSku_0"]
    
          
    
     
Catalogos-bodegas
    [Tags]    bodegas
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_0"]                   
                        
    
    
Catalogos-portafolioProductos
    [Tags]    portafolio
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    5
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_10I"]
    sleep    2
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    2
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI0_"]
    sleep    2
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_txtCodigo_I"]     2222
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_txtNombre_I"]     2222
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_memComentario_I"]     pruebasAutomaticasConRobotFramework
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI2_T"]
    sleep    6
    Input Text    xpath=//*[@id="split_gridPoftfolio_DXFREditorcol0_I"]     2222
    sleep    10
    Click Element    xpath=//*[@id="split_gridPoftfolio_DXDataRow0"]/td[1]
    sleep    2
    #ingreso de vendedores
    Click Element    xpath=//*[@id="split_pgcDet_T1"]
    sleep    2
    Click Element    xpath=//*[@id="split_1_S_CB"]    #se agrando el apartado vendedores
    sleep    3
    Click Element    xpath=//*[@id="split_pgcDet_gridLoopVendedor_B-1"]
    sleep    1
    Click Element    xpath=//*[@id="split_pgcDet_gridLoopVendedor_DDD_gv_DXSelBtn0_D"]
    Click Element    xpath=//*[@id="split_pgcDet_gridLoopVendedor_DDD_gv_DXSelBtn4_D"]
    sleep    1
    Click Element    xpath=//*[@id="split_pgcDet_gridLoopVendedor_DDD_gv_StatusBar_btnAceptarSeller_0"]
    sleep    2
    Click Element    xpath=//*[@id="split_1_S_CF"]    #se encoge el apartado vendedores
    sleep    3
    #ingreso de productos
    Click Element    xpath=//*[@id="split_pgcDet_T2T"]
    Click Element    xpath=//*[@id="split_1_S"]/div/table/tbody/tr[1]    #se agrando el apartado productos
    sleep    1
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_B-1"]
    sleep    3
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_DDD_gv_DXDataRow0"]/td[1]
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_DDD_gv_DXSelBtn3_D"]
    sleep    2
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_DDD_gv_StatusBar_btnAceptarSku_0"]
    sleep    2
    Click Element    xpath=//*[@id="split_1_S_CF"]    #se encoge el apartado productos
    
Catalogos-SeguridadYRoles
    [Tags]    seguridad
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    Click Element    xpath=//*[@id="split_1_S_CB"]    
    
Catalogos/Rutas
    [Tags]    rutas
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    5
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_3"]
    Sleep    5
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI0_T"]
    sleep    1
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox1_I"]     423
    Input text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox2_I"]     Ruta423
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox3_I"]     Ninguna
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMemo1_I"]        RutaPruebaAutomaticaConRobotFramework
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI2_T"]
    sleep    5
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXFREditorcol0_I"]     423
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXDataRow0"]/td[1]
    
