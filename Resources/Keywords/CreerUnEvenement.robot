*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ3Sites.py
*** Variables ***
${vNomSite}    SiteTestIurie
${vQuoiNonEven}  Deplacer evenement
${vOu}    En mod Jour
${vDescription}    Plus tard
${vTags}    Test
*** Keywords ***
Creer un Evenement

    [Arguments]     ${vNomSite}     ${vQuoi}    ${vOu}   ${vDescription}    ${vTags}
    click element    ${Sites}
    wait until page contains element     ${NomListe}
    click element    ${MesSites}
    #wait until page contains element    ${NomPageMesSites}
    click element    ${MonSite}${vNomSite}${FinMonSite}
    wait until page contains element    ${MenuMonSite}${vNomSite}${FinMenuMonSite}
    click element    ${ClickCalendrier}
    wait until page contains element    ${NomCalendrier}
    click element    ${NomCalendrier}
    wait until page contains element  ${PageFormulaire}
    input text    ${Quoi}   ${vQuoiNonEven}
    input text    ${Ou}     ${vOu}
    input text    ${Descritption}   ${vDescription}
    input text    ${Tags}   ${vTags}
    #click element    ${AjoutTag}
    click button    ${Enregistrer}
    reload page