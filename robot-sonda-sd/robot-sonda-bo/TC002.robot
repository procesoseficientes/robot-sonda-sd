*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
Login
    Open Browser    http://52.149.161.64:8091         chrome
    maximize browser window    
    Input Text      name=UiCalllbackPanel$txtUsuario    admin@cendalza
    Input Text      name=UiCalllbackPanel$txtPass            1237710
    Press Keys      name=UiCalllbackPanel$txtPass            ENTER
    Sleep    2
    Click Element    xpath=/html/body/form/div[5]/div/div[2]/div/table/tbody/tr[2]/td[1]/div
    Sleep    5
    Click Element   xpath=/html/body/form/div[3]/table/tbody/tr/td[1]/div/table/tbody/tr[2]/td/div/div/div/ul/li/span
    

*** Test Cases ***
#######################################################################################    
#                     ******************CATALOGOS******************
#######################################################################################

Catalogos-bodegas
    [Tags]    bodegas
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_0"]      
    #agregar bodegas
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxMenu4_DXI0_T"] 
    # Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxTextBox3_I"]     RP1
    # Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxTextBoxBarCode_I"]     No-posee
    # Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxMemo1_I"]     Bodega-creada-con-Robot-Framework
    # Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxMemoBdec_I"]     PruebasRobotFramework 
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxComboBox6_B-1"]  
    # sleep    2   
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxComboBox6_DDD_L_LBT"]/tbody/tr[3]
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxComboBox5_B-1"]
    # sleep    2
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxComboBox5_DDD_L_LBT"]/tbody/tr[2]
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxCmbERPBod_B-1"]
    # sleep    2
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxCmbERPBod_DDD_L_LBT"]/tbody/tr[56]
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxSpinEditGPSX_B-2"]
    # sleep    1
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxSpinEditGPSY_B-2"]
    # Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxMemoDirec_I"]     Guatemala
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_UiListaCentrosDeDistribucion_B-1"]
    # sleep    2
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_UiListaCentrosDeDistribucion_DDD_gv_DXDataRow0"]/td[1]
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_UIcheckbox_S_D"]   
    # sleep    1
    # Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout2_ASPxMenu4_DXI2_T"]
    # sleep    3
    Select frame    xpath=//*[@id="ASPxSplitter1_0_CC"]
    sleep    3
    Input Text    xpath=//*[@id="ASPxGridView1_DXFREditorcol1_I"]  BA003
    sleep    3
    Click element    xpath=//*[@id="ASPxGridView1_DXDataRow0"]/td[1]

Catalogos/SKUs
    [Tags]    sku
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_1"]
    sleep    1
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    1
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXFREditorcol1_I"]     1015
    sleep    2
    Click Element   xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXDataRow0"]/td[2]

Catalogos/clientes
    [Tags]    cliente
    Login 
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_2"]
    sleep    1
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    1
    #Seleccionar 
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXFREditorcol0_I"]     1001
    sleep    7
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXDataRow0"]
                                                    
    #Obtener dato de columna codigo para comparar con el siguiente   
    ${codigo} =  Execute Javascript    return document.getElementById("ASPxSplitter1_ASPxGridView1_DXDataRow0").getElementsByClassName("dxgv")[1].innerHTML
    #Obtener dato de input codigo para comparar con el anterior
    ${input_codigo} =    Execute Javascript    return document.getElementsByClassName("dxeEditArea_MetropolisBlue dxeEditAreaSys")[0].value
    

    #Obtener dato de la columna Nombre Cliente para comparar con el siguiente
    ${nombre_cliente} =    Execute Javascript    return document.getElementById("ASPxSplitter1_ASPxGridView1_DXDataRow0").getElementsByClassName("dxgv")[2].innerHTML
    #Obtener dato del input Nombre cliente para comparar con el anterior 
    
    # Validacion del campo codigo 
    IF    ${codigo} == ${input_codigo}
    Pass Execution    Los datos del campo codigo SI coinciden   
    ELSE 
    Fail    Los datos del campo codigo NO coinciden  
    END    

Catalogos/Rutas
    [Tags]    rutas
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    5
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_3"]
    Sleep    5
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    #agregar
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI0_T"]
    sleep    1
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox1_I"]     423
    Input text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox2_I"]     Ruta423
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox3_I"]     Ninguna
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMemo1_I"]        RutaPruebaAutomaticaConRobotFramework
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI2_T"]
    sleep    5
    #Seleccionar
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXFREditorcol0_I"]     423
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXDataRow0"]/td[1]
    #Editar
    Input text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox2_I"]     Ruta423Editada
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMemo1_I"]        RutaConRobotFramework modificada
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI2_T"]
    sleep    5
    #Eliminar

Catalogos/Clasificaciones
    [Tags]    clasificacion
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_7"]
    sleep    1
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI0_T"]
    sleep    1
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox1_I"]     pruebaTestAutomatico
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxSpinEdit1_B-2"]
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxTextBox2_I"]     prueba con robot framework 
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI2_T"]
    
Catalogos/Usuarios
    [Tags]    usuario
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_9"]
    sleep    1
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    2
    #Agregar un nuevo usuario 
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_T0T"]
    sleep    2
    Input Text    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiTxtLoginUsuario_I"]    Prueba
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiComboTipo_B-1"]
    sleep    2
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiComboTipo_DDD_L_LBI1T0"]
    Input Text    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiTxtNombreUsuario_I"]    Juan Ramirez
    Input Text    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiTxtPasswordUsuario_I"]    231
    sleep    2
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiListaTipoUsuario_B-1"]
    sleep    2
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiListaTipoUsuario_DDD_gv_DXDataRow2"]/td[1]
    sleep    2
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiListaRolUsuario_B-1"]
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiUsuariosPageControl_ASPxFormLayout3_UiListaRolUsuario_DDD_gv_DXDataRow3"]/td[2]
    sleep    3
    Click Element    xpath=//*[@id="splitUser_ASPxFormLayout2_UiMenuOpcionesUsuario_DXI3_T"]
    # Buscar usuario
    Input Text    xpath=//*[@id="splitUser_ASPxFormLayout1_UiVistaUsuario_DXFREditorcol0_I"]    1020

Catalogos-Etiquetas
    [Tags]    etiquetas
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_4"]
    sleep    1
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    2
    #Agregar Etiqueta
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI0_T"]
    sleep    1
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_EditorColores_B-1"]
    sleep    3
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_EditorColores_DDD_CNC_CT_C17"]
    sleep    2
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_SpinPriority_B-2"]
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_MemoComments_I"]      prueba de comentario
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_TxtValueText_I"]      prueba robot framework
    sleep    4
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI2_T"]
    #Buscar etiqueta
    sleep    3
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXFREditorcol0_I"]    prueba
    sleep    10
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXDataRow1"]/td[2] 
    #Editar etiqueta
    sleep    3
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_MemoComments_I"]      cambio de comentario
    sleep    1
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_UiListaTipo_B-1"]
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_UiListaTipo_DDD_L_LBI1T0"]
    sleep    2
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI2_T"]
    #Eliminar etiqueta
    sleep    3
    Input Text    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXFREditorcol0_I"]    prueba
    sleep    2
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxGridView1_DXDataRow1"]/td[2] 
    sleep    1
    click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxPageControl1_ASPxFormLayout1_ASPxMenu3_DXI1_T"]
    sleep    2
    click Element    xpath=//*[@id="ASPxPopupControl2_ASPxButton2"]
    
    

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
    sleep    5
    Click Element    xpath=//*[@id="split_pgcDet_T0T"]
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI0_T"]
    Input Text    id=split_pgcDet_ASPxFormLayout1_txtCodigo_I     000321
    Input Text      xpath=//*[@id="split_pgcDet_ASPxFormLayout1_txtNombre_I"]          11111
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_memComentario_I"]        PruebasAutomaticasConRobotFramework
    sleep    3
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI2_T"]
    sleep    6
    #busqueda de precio
    Input Text    xpath=//*[@id="split_gridPriceList_DXFREditorcol0_I"]     000321             
    sleep    40
    Click Element    xpath=//*[@id="split_gridPriceList_DXDataRow0"]/td[1]
    #ingreso de cliente
    sleep    2
    Click Element    xpath=//*[@id="split_pgcDet_T1T"]                 
    sleep    13
    Click Element    xpath=//*[@id="split_pgcDet_gridLookCustomer_B-1"]    
    sleep    18          
    Click Element    xpath=//*[@id="split_pgcDet_gridLookCustomer_DDD_gv_DXDataRow1"]/td[1]          
    sleep    2            
    Click Element    xpath=//*[@id="split_pgcDet_gridLookCustomer_DDD_gv_StatusBar_btnAceptarCustumer_0"]  
    sleep    1
    #ingreso de producto
    Click Element    xpath=//*[@id="split_pgcDet_T2T"]
    sleep    8
    Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_B-1"]
    #sleep    10
        #Fallo
    #Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_DDD_gv_DXDataRow0"]/td[1]
    #sleep    1
    #Click Element    xpath=//*[@id="split_pgcDet_gridLookSku_DDD_gv_StatusBar_btnAceptarSku_0"]
    
Catalogos-ListaDePrecios
    [Tags]   ListaPrecios
    Login
    
Catalogos-FormasDePago
    [Tags]    FormasPago
    Login
   

Catalogos-SeguridadYRoles    #pendiente
    [Tags]    seguridad
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    5
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_9I"]
    sleep    5
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    1
    #agregar
    Click Element    xpath=//*[@id="MainSplitter_FormEditRole_UiMenuRole_DXI0_T"]
    sleep    1
    Input Text    xpath=//*[@id="MainSplitter_FormEditRole_UiRoleName_I"]     prueba
    Input Text    xpath=//*[@id="MainSplitter_FormEditRole_UiRoleDescription_I"]     comentario prueba
    sleep    3
    Click Element    xpath=//*[@id="MainSplitter_FormEditRole_UiMenuRole_DXI2_T"]
    sleep    5
    #Seleccionar
    Input Text    xpath=//*[@id="MainSplitter_UiRole_DXFREditorcol2_I"]     prueba
    sleep    3
    Click Element    xpath=//*[@id="MainSplitter_UiRole_DXDataRow0"]/td[1]
    sleep    2    
    #Editar
    Input Text    xpath=//*[@id="MainSplitter_FormEditRole_UiRoleName_I"]     prueba-cambio
    Click Element    xpath=//*[@id="MainSplitter_FormEditRole_UiCallBackPanel_UiPrivilegios_N0_D"]
    sleep    3
    Click Element    xpath=//*[@id="MainSplitter_FormEditRole_UiMenuRole_DXI2_T"]
    sleep    2
    #Eliminar
    Click Element    xpath=//*[@id="MainSplitter_UiRole_DXDataRow0"]/td[2]
    sleep    2
    Click Element    xpath=//*[@id="MainSplitter_FormEditRole_UiMenuRole_DXI1_T"]
    sleep    1
    Click Element    xpath=//*[@id="uiDialogoEliminar_uiAceptarEliminarEncuesta_CD"]/span

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
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_txtCodigo_I"]     22221
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_txtNombre_I"]     22221
    Input Text    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_memComentario_I"]     pruebasAutomaticasConRobotFramework
    Click Element    xpath=//*[@id="split_pgcDet_ASPxFormLayout1_menOpciones_DXI2_T"]
    sleep    6
    Input Text    xpath=//*[@id="split_gridPoftfolio_DXFREditorcol0_I"]     22221
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
    

Catalogos-Resoluciones
    [Tags]    resoluciones
    Login 
    

Catalogos-Encuestas
    [Tags]    encuestas
    Login 

Catalogos-Frecuencias
    [Tags]    resoluciones
    Login
    
Catalogos-SecuenciasDeDocumentos
    [Tags]    SecuenciasDoc
    Login  
    
Catalogos-UsuariosPorRuta
    [Tags]    usuariosRuta
    Login 
    
Catalogos-CentrosDeDistribucion
    [Tags]    distribucion
    Login
    
Catalogos-Canales
    [Tags]    canales
    Login  
    
Catalogos-Moneda
    [Tags]    moneda
    Login 
            
Catalogos-Configuracion de Combos
    [Tags]    ConfCombos
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[1]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_0_19"]
    
Catalogos-Equipos de ventas
    [Tags]    equiposVentas
    Login 

Catalogos-MetasDeEquipo
    [Tags]    metas
    Login 
    
Catalogos-AdministrarLicencias
    [Tags]    licencias
    Login 

 #######################################################################################   
 #                     ******************SONDA******************
 #######################################################################################

Sonda-Vendedores-En-Ruta
    [Tags]    vendedores
    Login
    sleep    2
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_CD"]/ul/li/ul/li[2]/span/img
    sleep    3
    Click Element    xpath=//*[@id="ASPxSplitter1_ASPxSplitter2_ASPxTreeView1_N0_1_0"]
    sleep    2
    Select frame    xpath=//*[@id="ASPxSplitter1_ASPxSplitter3_1_CC"]
    sleep    2
    Click Element    xpath=//*[@id="UiMapaCbPanel_UiMapaSeparador_UiListaDeUsuarios_B-1"]
    sleep    2
    Click Element    xpath=//*[@id="UiMapaCbPanel_UiMapaSeparador_UiListaDeUsuarios_DDD_gv_DXDataRow0"]/td[1]
    sleep    5
    Click Element    xpath=//*[@id="UiMapaCbPanel_UiMapaSeparador_UiMapaMenu_DXI0_"]
    

Sonda-SeguimientoDeRuta
    [Tags]    seguimientoRuta
    Login    
Sonda-TransferenciaDeProductos
    [Tags]    transferenciaProducto
    Login
    
Sonda-CumplimientoDeRuta
    [Tags]    cumplimiento
    Login
    
Sonda-LiquidacionRuta
    [Tags]    liquidacion
    Login
    
Sonda-Microencuestas
    [Tags]    microencuestas
    Login

#######################################################################################    
#                     ******************CONSULTAS******************
#######################################################################################

Consultas-EnvioAErp
    [Tags]    envioERP
    Login
    
Consultas-Poligonos
    [Tags]    poligonos
    Login
    
Consultas-Facturacion
    [Tags]    facturacion
    Login
    
Consultas-PerformanceDeRuta
    [Tags]    performance
    Login
    
Consultas-Scouting
    [Tags]    scouting
    Login
    
Consultas-OrdenesDeVenta
    [Tags]    ordenesVenta
    Login
    
Consultas-TomaDeInventario
    [Tags]    tomaInventario
    Login
    
Consultas-TareasSinGestion
    [Tags]    tareaSinGestion
    Login
    
Consultas-EficienciaSemanalDeRuta
    [Tags]    eficiencia
    Login
    
Consultas-VentasPorSKU
    [Tags]    ventasSKU 
    Login
    
Consultas-CambiosEnClientes
    [Tags]    cambiosClientes
    Login
    
Consultas-PoligonosPorVendedor
    [Tags]    poligonosVendedor
    Login
    
Consultas-FacturacionPorSKU
    [Tags]    facturacionSKU
    Login
    
Consultas-ReporteDeEncuesta
    [Tags]    ReporteEncuesta
    Login
    
Consultas-RecibosEmitidos
    [Tags]    recibos
    Login

######################################################################################    
#                     ******************POLIGONOS******************
#######################################################################################

Poligonos-ModeladoDePoligonos
    [Tags]    modelado
    Login    

Poligonos-EstadisticasDePoligonos
    [Tags]    estadisticas
    Login
#######################################################################################    
#                     ******************BONIFICACIONES-DESCUENTOS******************
#######################################################################################

Bonificaciones/Descuentos-AcuerdosComerciales
    [Tags]    acuerdos
    Login
    
Bonificaciones/Descuentos-Bonificaciones
    [Tags]    bonificaciones
    Login
    
Bonificaciones/Descuentos-Descuentos
    [Tags]    descuentos
    Login
    
Bonificaciones/Descuentos-VentaMinima
    [Tags]    ventaMinima
    Login
    
Bonificaciones/Descuentos-PreciosEspeciales
    [Tags]    preciosEspeciales
    Login
    
Bonificaciones/Descuentos-BonificacionesPorComboFamilia
    [Tags]    comboFamilia
    Login
