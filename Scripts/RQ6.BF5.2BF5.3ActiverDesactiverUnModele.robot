*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py
Variables    ../Resources/Locators/locatorsRQ6OutilsAdmin.py

Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/CreerModele.robot
Resource    ../Resources/Keywords/ActiverDesactiverModele.robot
Resource    ../Resources/Keywords/SupprimerModele.robot
*** Variables ***

*** Test Cases ***
Activer Desactiver un modele
    Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Creer un modele     ${vEspacenom}     ${vPrefix}    ${vNomModele}     ${vCreateur}        ${vDescription}
    Activer Un modele    ${vNomModele}
    Desactiver Un Modele    ${vNomModele}
    Supprimer le modele     ${vNomModele}
    Logout