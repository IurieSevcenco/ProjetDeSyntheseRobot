*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py
Variables    ../Resources/Locators/locatorsRQ3Sites.py
Variables    ../Resources/Locators/locatorsRQ7ProfilUtilisateur.py

Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/CreerSite.robot
Resource    ../Resources/Keywords/AjouterUnModuleAUnSite.robot
Resource    ../Resources/Keywords/CreerListeOrdreDuJour.robot
Resource    ../Resources/Keywords/CreerUnNuvelElementOrdreDuJour.robot
Resource    ../Resources/Keywords/SupprimerSite.robot
Resource    ../Resources/Keywords/ViderCorbeille.robot

*** Variables ***
*** Test Cases ***
Creer Un Element De Liste Ordre Du Jour
    Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Creer site    ${vTypeSite}  ${vNomSite}  ${vUrlSite}   ${vDescriptionSite}     ${vVisibiliteSite}
    Ajouter Module Listes de données a Un Site    ${vNomSite}    ${VModuleListeDeDonnees}
    Creer une liste des donnees Ordre du Jour   ${vNomSite}    ${vTypeListeDonnees}    ${vTitreListeDonnees}    ${vDescriptListeDonnees}
    Creer Un Nouvel Element De Liste Ordre Du Jour   ${vNomSite}    ${vReference}    ${vTitre}    ${vDesc}    ${vTemps}    ${vPropr}
    Supprimer un site    ${vNomSite}
    Vider la Corbeille
