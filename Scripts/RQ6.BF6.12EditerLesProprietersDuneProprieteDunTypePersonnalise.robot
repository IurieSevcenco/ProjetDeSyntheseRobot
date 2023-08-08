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
       Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
       Creer un modele     ${vEspacenom}     ${vPrefix}    ${vNomModele}     ${vCreateur}        ${vDescription}
       Creer un type personnalise    ${vPrefixeNomModele}  ${vNomModele}
    ...    ${vNomTypePerso}   ${vTypeParent}   ${vEtiquette}  ${vDescription}
       Creer une propriete Dun Type Personnalise   ${vPropTypePers}
       Editer Les Proprietes Dune Propriete Dun Type Personnalise
       Retirer Panneau Dans Un Type Personnalise
       Supprimer le modele     ${vNomModele}
       Logout