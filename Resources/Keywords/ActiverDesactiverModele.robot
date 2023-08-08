*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vNomModele}    NomTestModele
*** Keywords ***
Activer Un modele
    [Arguments]   ${vNomModele}
    wait until page contains element    ${lnk_HeaderAdmin}
    click element    ${lnk_HeaderAdmin}
    wait until page contains element    ${lnk_GestMod}
    click element    ${lnk_GestMod}
    wait until page contains    ${vNomModele}
    click element    ${lnk_ActionsDebut}${vNomModele}${lnk_ActionsFin}
    wait until page contains     Activer
    click element    ${lnk_Activer}
    wait until element is visible    ${lnk_ActionsDebut}${vNomModele}${lnk_StatusActif}

Desactiver Un Modele
    [Arguments]   ${vNomModele}
    wait until page contains    ${vNomModele}
    click element    ${lnk_ActionsDebut}${vNomModele}${lnk_ActionsFin}
    wait until page contains     Désactiver
    click element    ${lnk_Desactiver}
    wait until element is visible   ${lnk_ActionsDebut}${vNomModele}${lnk_StatusInactif}
