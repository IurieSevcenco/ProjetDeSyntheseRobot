*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ3Sites.py
*** Variables ***
${vNomSite}    SiteTestIurie
${vQuoiNonEven}    Deplacer evenement
*** Keywords ***
Deplacer Un Evinement
    [Arguments]    ${vNomSite}   ${vQuoiNonEven}
    click element    ${Sites}
    wait until page contains element     ${NomListe}
    click element    ${MesSites}
    #wait until page contains element    ${NomPageMesSites}
    click element    ${MonSite}${vNomSite}${FinMonSite}
    wait until page contains element    ${MenuMonSite}${vNomSite}${FinMenuMonSite}
    click element    ${ClickCalendrier}
    wait until element is visible   ${btn_ModJour}
    click element    ${btn_ModJour}
    capture page screenshot
    sleep    3s
    drag and drop    ${lnk_EvenDeb}${vQuoiNonEven}${lnk_EvenFin}    ${lnk_LocTarget}
    sleep    3s
    capture page screenshot
    drag and drop by offset    ${lnk_EvenDeb}${vQuoiNonEven}${lnk_EvenFin}    0    -200
    capture page screenshot