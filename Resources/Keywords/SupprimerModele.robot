*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vNomModele}    NomTestModele
*** Keywords ***
Supprimer le modele
    [Arguments]    ${vNomModele}
     Wait Until Page Contains Element    ${lnk_HeaderAdmin}
     Click Element    ${lnk_HeaderAdmin}
     Wait Until Page Contains Element    ${lnk_GestMod}
     Click Element    ${lnk_GestMod}
     Wait Until Page Contains  ${vNomModele}
     Sleep    3s
     Click Element    ${lnk_ActionsDebut}${vNomModele}${lnk_ActionsFin}
     Sleep    3s
     Click Element    ${lnk_Supprimer}
     sleep    3s
     Click Element    ${deleteConfirmation}

