*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ1Accueil.py
*** Variables ***
${vUserNameHost}    Iurie
${TIMEOUT}      5s
*** Keywords ***
Finir le suivi
    [Arguments]      ${vUserNameHost}
    Set Selenium Timeout    ${TIMEOUT}
    wait until page contains element    ${lnk_SearchBox}
    click element    ${lnk_SearchBox}
    input text    ${lnk_SearchBox}    ${vUserNameHost}
    wait until element is visible    ${lnk_Result}
    click element    ${lnk_Result}
    wait until element is visible     ${btn_UnFoll}
    click element    ${btn_UnFoll}
    Reload Page