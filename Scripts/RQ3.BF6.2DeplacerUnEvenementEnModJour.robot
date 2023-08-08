*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py
Variables    ../Resources/Locators/locatorsRQ3Sites.py
Variables    ../Resources/Locators/locatorsRQ7ProfilUtilisateur.py

Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/CreerSite.robot
Resource    ../Resources/Keywords/AjouterUnModuleAUnSite.robot
Resource    ../Resources/Keywords/CreerUnEvenement.robot
Resource    ../Resources/Keywords/DeplacerEvenimentJour.robot
Resource    ../Resources/Keywords/SupprimerSite.robot
Resource    ../Resources/Keywords/ViderCorbeille.robot

*** Variables ***

*** Test Cases ***
Deplacer Un Evinement En Mod Jour
    Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Creer site    ${vTypeSite}  ${vNomSite}  ${vUrlSite}  ${vDescriptionSite}  ${vVisibiliteSite}
    Ajouter Un Module A Un Site    ${vNomSite}    ${NomModule}
    Creer un Evenement    ${vNomSite}  ${vQuoiNonEven}    ${vOu}   ${vDescription}    ${vTags}
    Deplacer Un Evinement    ${vNomSite}   ${vQuoiNonEven}
    Supprimer un site   ${vNomSite}
    Vider la Corbeille
    Logout