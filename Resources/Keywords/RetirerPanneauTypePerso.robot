*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vPrefixeNomModele}    PrefixTestModele
${vNomModele}    NomTestModele
${vNomTypePerso}    NomeTestTypePerso
*** Keywords ***
Retirer Panneau Dans Un Type Personnalise
    [Arguments]
    go to    ${url_TypePersoCocept}
    wait until element is visible    ${lbl_CoseptTypPerso1}${vNomModele} - ${vNomTypePerso}${lbl_CoseptTypPerso2}
    mouse over    ${img_MenuDaction}
    click element    ${lnk_DelPanneau}
    element should not be visible    ${img_MenuDaction}
