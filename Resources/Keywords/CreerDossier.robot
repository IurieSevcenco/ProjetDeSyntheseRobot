*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ2MesFichiersFichiersPartages.py

*** Variables ***
${vNomDossier}    Dossier Test
${vTitreDossier}    Titre Test
${vDescriptonDossier}    Description
${TIMEOUT}      5s

*** Keywords ***
Creer un Dossier
    [Arguments]    ${vNomDossier}    ${vTitreDossier}    ${vDescriptonDossier}
    Set Selenium Timeout    ${TIMEOUT}
    click element    ${MesFichier}
    wait until page contains element     ${NomPage}
    click button    ${Creer}
    wait until page contains element    ${PageCreer}
    click element    ${CreerDossier}
    wait until page contains element    ${PageCreerDossier}
    input text    ${lnk_ChampNom}    ${vNomDossier}
    input text    ${lnk_ChampTitre}    ${vTitreDossier}
    input text    ${lnk_ChampDescripton}    ${vDescriptonDossier}
    click button    ${Enregistrer}
    reload page
