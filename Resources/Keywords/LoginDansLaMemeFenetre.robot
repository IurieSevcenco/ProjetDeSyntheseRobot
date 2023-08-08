*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ1Accueil.py
*** Variables ***
${UserNamePers}    FreddyKrueger
${Password}    12345678
${vUsername}    6171310
${vPassword}    12345678
*** Keywords ***
Login dans la meme fenetre

    [Arguments]   ${vUsername}    ${vPassword}
    sleep    3s
    Input text    ${txt_UserName}   ${vUsername}
    # Saisie du mot de passe
    Input text    ${txt_Password}    ${vPassword}
    # Click sur le bouton Connexion
    Click Button   ${btn_Login}
    # S'assurer que la page est chargee
    Wait Until Element Is Visible    ${lblTitle}
    # S'assurer que l'utilisateur est connecte et que le tableau de bord est affiche
    Element Should Contain     ${lblTitle}    Tableau de bord de
