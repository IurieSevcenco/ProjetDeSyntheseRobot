*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ2MesFichiersFichiersPartages.py
*** Variables ***
${vNomDossier}    Dossier Test
${vTxtCom}   Commentaire test
${TIMEOUT}      5s
*** Keywords ***
Ajouter un commentaire
    [Arguments]    ${vTxtCom}
    Set Selenium Timeout    ${TIMEOUT}
    wait until element is visible    ${lnk_ComDebut}${vNomDossier}${lnk_ComFin}
    #
    click element    ${lnk_ComDebut}${vNomDossier}${lnk_ComFin}
    #

    wait until element is visible    ${lbl_AjCom}
    #
    select frame    ${frm_AjCom}
    #
    click element    ${txt_AjCom}
    #
    input text        ${txt_AjCom}    ${vTxtCom}
    #
    unselect frame
    #
    wait until element is visible   ${btn_AjCom}
    #
    click element    ${btn_AjCom}
    #
    wait until element is visible   ${lbl_Com}
    #
    wait until element is visible    ${lnk_VerComDebut}${vTxtCom}${lnk_VerComFin}

    sleep    5s