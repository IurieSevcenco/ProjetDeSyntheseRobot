*** Settings ***
Library    SeleniumLibrary
Variables     ../Locators/locatorsRQ2MesFichiersFichiersPartages.py
*** Variables ***
${vNomDossier}    Dossier Test
*** Keywords ***
Supprimer un dossier
    [Arguments]     ${vNomDossier}
    click element    ${MesFichier}
    click element    ${lnk_CheckBoxDeb}${vNomDossier}${lnk_CheckBoxFin}
    click element    ${btn_ElementsSelectionnes}
    click element    ${btn_Supprimer}
    click element    ${btn_SurpprimerDossierConfirmer}
    sleep    2s