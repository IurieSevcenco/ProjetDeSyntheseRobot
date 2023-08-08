*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py
Variables    ../Resources/Locators/locatorsRQ6OutilsAdmin.py

Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/CreerCategorie.robot
Resource    ../Resources/Keywords/EditerCategorie.robot
Resource    ../Resources/Keywords/SupprimerCategorie.robot


*** Variables ***

*** Test Cases ***
#Le test a été effectué sur la machine locale car le module de catégorie sur le serveur de test était cassé
Editer une catégorie créé par utilisateur
    Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Creer Un Categorie    ${vNomCategorie}
    Editer une categorie    ${vNomCategorie}     ${vNouveauNomCategorie}
    Supprimer une categorie    ${vNomCategorie}
    Logout