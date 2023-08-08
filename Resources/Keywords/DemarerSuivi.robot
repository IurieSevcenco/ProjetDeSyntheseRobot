*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ1Accueil.py
*** Variables ***
${vUserNameHost}    Iurie
*** Keywords ***
Demarrer le suivi
    [Arguments]      ${vUserNameHost}
    wait until page contains element    ${lnk_SearchBox}
    click element    ${lnk_SearchBox}
    input text    ${lnk_SearchBox}    ${vUserNameHost}
    wait until element is visible    ${lnk_Result}
    click element    ${lnk_Result}
    wait until page contains element   ${btn_Foll}
    click element    ${btn_Foll}
    Reload Page