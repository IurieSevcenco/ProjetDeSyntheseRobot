*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py
Variables    ../Resources/Locators/locatorsRQ2MesFichiersFichiersPartages.py
Variables    ../Resources/Locators/locatorsRQ7ProfilUtilisateur.py

Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/AjouterCommentaiere.robot
Resource    ../Resources/Keywords/CreerDossier.robot
Resource    ../Resources/Keywords/SupprimerDossier.robot
Resource    ../Resources/Keywords/ViderCorbeille.robot

*** Variables ***

*** Test Cases ***
Ajouter Un Commentaire a la dossier
    Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Creer un Dossier    ${vNomDossier}    ${vTitreDossier}    ${vDescriptonDossier}
    Ajouter un commentaire  ${vTxtCom}
    Supprimer un dossier     ${vNomDossier}
    Vider la Corbeille
    Logout







