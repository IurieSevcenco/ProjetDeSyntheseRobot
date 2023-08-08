*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py
Variables    ../Resources/Locators/locatorsRQ6OutilsAdmin.py


Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/CreerModele.robot
Resource    ../Resources/Keywords/ModifierModele.robot
Resource    ../Resources/Keywords/SupprimerModele.robot

*** Variables ***
*** Test Cases ***
Modifier Un modele
    Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Creer un modele     ${vEspacenom}     ${vPrefix}    ${vNomModele}     ${vCreateur}        ${vDescription}
    Modifier Un modele     ${vEspacenom}    ${vPrefix}    ${vNomModele}    ${vCreateur}    ${vDescription}    ${vNewModele}
    Supprimer le modele     ${vNomModele}
    Logout