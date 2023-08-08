*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py
Variables    ../Resources/Locators/locatorsRQ6OutilsAdmin.py
Variables    ../Resources/Locators/locatorsRQ7ProfilUtilisateur.py

Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/CreerModele.robot
Resource    ../Resources/Keywords/CreeUnTypePersonnalise.robot
Resource    ../Resources/Keywords/RetirerPanneauTypePerso.robot
Resource    ../Resources/Keywords/SupprimerModele.robot
Resource    ../Resources/Keywords/ViderCorbeille.robot

*** Variables ***
*** Test Cases ***
Retirer Un Panneau Dans Un Type Personnalise
#Étant donné que le champ de concepteur est difficile à localiser, l'option disposition de panneau par défaut a été choisie.
       Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
       Creer un modele     ${vEspacenom}     ${vPrefix}    ${vNomModele}     ${vCreateur}        ${vDescription}
       Creer un type personnalise    ${vPrefixeNomModele}  ${vNomModele}
    ...    ${vNomTypePerso}   ${vTypeParent}   ${vEtiquette}  ${vDescription}
       Retirer Panneau Dans Un Type Personnalise
       Supprimer le modele     ${vNomModele}
       Logout