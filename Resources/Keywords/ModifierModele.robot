*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vEspacenom}      TestModele
${vPrefix}      PrefixTestModele
${vNomModele}    NomTestModele
${vCreateur}        Testeur QA logiciels
${vDescription}     Description Test
${vNewModele}    Modifie
*** Keywords ***
Modifier Un modele
    [Arguments]   ${vEspacenom}    ${vPrefix}    ${vNomModele}    ${vCreateur}    ${vDescription}    ${vNewModele}
    wait until page contains element    ${lnk_HeaderAdmin}
    click element    ${lnk_HeaderAdmin}
    wait until page contains element    ${lnk_GestMod}
    click element    ${lnk_GestMod}
    wait until page contains    ${vNomModele}
    #wait until element is visible   ${lnk_ActionsDebut}${vNomModele}${lnk_StatusInactif}
    click element    ${lnk_ActionsDebut}${vNomModele}${lnk_ActionsFin}
    wait until page contains     Modifier
    click element    ${lnk_Modifier}
    wait until element is visible   ${lbl_Modifier}
    input text    ${txt_Champs_EspNome}   ${vEspacenom}${vNewModele}
    input text    ${txt_Champs_Prefix}      ${vPrefix}${vNewModele}
    input text    ${txt_Champs_Author}      ${vCreateur}${vNewModele}
    input text    ${txt_Champs_Description}    ${vNomModele}${vNewModele}
    click element   ${btn_Enregistrer}
    wait until element is visible    ${lnk_ActionsDebut}${vNomModele}${lnk_Verific1}${vNewModele}${lnk_Verific2}