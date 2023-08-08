*** Settings ***
Resource    Login.robot
Resource    SupprimerModele.robot
Resource    Logout.robot
Resource    DDTCreerModele.robot
*** Variables ***

*** Keywords ***
AvantTestDonnees
    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    Login    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}


ApresTestDonnees
    [Arguments]
    Logout


