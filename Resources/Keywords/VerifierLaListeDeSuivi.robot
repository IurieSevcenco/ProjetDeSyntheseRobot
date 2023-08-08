*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ1Accueil.py
*** Variables ***
${Prenom}    Harceleur
${Nom}     Agressif
${TIMEOUT}      5s
*** Keywords ***
Vérifier la liste de suivi
    [Arguments]     ${Prenom}    ${Nom}
    Set Selenium Timeout    ${TIMEOUT}
    Wait Until Element Is Visible    ${link_HeaderUserMenu}
    Click Element    ${link_HeaderUserMenu}
    wait until page contains element    ${link_MonProfil}
    # Click sur MonProfil
    click element    ${link_MonProfil}
    wait until page contains element       //span[@title="Page Profil de l'utilisateur"]
    wait until page contains element    ${lnk_Foll}
    click element      ${lnk_Foll}
    wait until element is visible    ${lnk_VerDeb}${Prenom} ${Nom}${lnk_VerFin}