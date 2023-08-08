*** Settings ***
Documentation    Tests pilotes par les donnees

Library    SeleniumLibrary
Library        DataDriver        ../Resources/Datapool/donnees.csv
Resource    ../Resources/Keywords/DDTCreerModele.robot
Resource    ../Resources/Keywords/SetupTestDonnes.robot

Suite Setup    AvantTestDonnees    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
Suite Teardown    ApresTestDonnees
Test Template    TestsAvecDonnees
*** Variables ***
${vURL}    http://localhost:8089/share/page/
${vBrowser}   chrome
${vUsername}    6171310
${vPassword}    12345678

*** Test Cases ***
Tests avec donnees    ${vEspacenom}    ${vPrefix}    ${vNomModele}     ${vCreateur}    ${vDescription}

*** Keywords ***
TestsAvecDonnees
    [Arguments]  ${vEspacenom}    ${vPrefix}    ${vNomModele}     ${vCreateur}    ${vDescription}
    ${vNewModel} =    Creer un modele X    ${vEspacenom}    ${vPrefix}    ${vNomModele}    ${vCreateur}    ${vDescription}
