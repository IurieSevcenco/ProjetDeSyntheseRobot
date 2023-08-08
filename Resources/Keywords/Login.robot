*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ1Accueil.py
*** Variables ***

${vURL}    http://localhost:8089/share/page/
#http://192.168.0.183/share/page/
#http://localhost:8089/share/page/
${vBrowser}   chrome
${vUsername}   6171310
#admin
#6171310
${vPassword}   12345678
#dkYknQvTiz7d
#12345678
${TIMEOUT}      5s
*** Keywords ***
Login
    # vURL contient l'adresse URL de la page web
    # vBrowser contient l'identifiant du navigateur cible
    # vUsername contient le login
    # vPassword contient le mot de passe
    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    # Definir la valeur de timeout pour le cas de test
    Set Selenium Timeout    ${TIMEOUT}
    # Ouvrir le navigateur en precisant l'URL et le navigateur
    Open Browser    ${vURL}    ${vBrowser}
    # Maximiser la fenetre du navigateur
    Maximize Browser Window
    # Saisie du login
    Input text    ${txt_UserName}    ${vUsername}
    # Saisie du mot de passe
    Input text    ${txt_Password}    ${vPassword}
    # Click sur le bouton Connexion
    Click Button   ${btn_Login}
    # S'assurer que la page est chargee
    Wait Until Element Is Visible    ${lblTitle}
    # S'assurer que l'utilisateur est connecte et que le tableau de bord est affiche
    Element Should Contain     ${lblTitle}    Tableau de bord de