*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Locators/locatorsRQ1Accueil.py

Resource    ../Resources/Keywords/Login.robot
Resource    ../Resources/Keywords/Logout.robot
Resource    ../Resources/Keywords/LogoutSansTiredown.robot
Resource    ../Resources/Keywords/LoginDansLaMemeFenetre.robot
Resource    ../Resources/Keywords/CreerUtilisateur.robot
Resource    ../Resources/Keywords/DemarerSuivi.robot
Resource    ../Resources/Keywords/VerifierLaListeDeSuivi.robot
Resource    ../Resources/Keywords/FinirSuivi.robot

*** Variables ***
${TIMEOUT}      5s
*** Test Cases ***
Voir La Liste Me Suit
    Login   ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Creer un utilisateur    ${Prenom}   ${Nom}    ${Email}    ${UserNamePers}    ${Password}
    Logout
    Login         ${vURL}    ${vBrowser}    ${UserNamePers}    ${Password}
    Demarrer le suivi    ${vUserNameHost}
    Logout sans teardown
    Login dans la meme fenetre    ${vUsername}    ${vPassword}
    Vérifier la liste de suivi    ${Prenom}    ${Nom}
    Logout sans teardown
    Login dans la meme fenetre    ${UserNamePers}    ${Password}
    Finir le suivi    ${vUserNameHost}
    Logout sans teardown
    Close Browser
