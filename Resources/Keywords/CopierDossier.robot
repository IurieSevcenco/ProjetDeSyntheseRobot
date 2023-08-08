*** Settings ***
Library    SeleniumLibrary
Variables     ../Locators/locatorsRQ2MesFichiersFichiersPartages.py
Variables     ../Locators/locatorsRQ3Sites.py
*** Variables ***
${vNomDossier}    Dossier Test
${vNomDossier}    Dossier Test
${vNomSite}    SiteTestIurie
${TIMEOUT}      5s

*** Keywords ***
Copier le Dossier
    [Arguments]     ${vNomDossier}
    Set Selenium Timeout    ${TIMEOUT}
    click element    ${MesFichier}
    wait until page contains element     ${NomPage}
    sleep    10s
    wait until element is visible    ${lnk_CheckBoxDeb}${vNomDossier}${lnk_CheckBoxFin}
    click element    ${lnk_CheckBoxDeb}${vNomDossier}${lnk_CheckBoxFin}
    wait until page contains element    ${lnk_ElemSel}
    click element       ${lnk_ElemSel}
    wait until page contains element       ${lnk_CopyTo}
    click element    ${lnk_CopyTo}
    wait until element is visible       ${btn_TousSite}
    click button    ${btn_TousSite}
    wait until element is visible        ${lnk_SitDeb}${vNomSite}${lnk_SitFin}
    click element    ${lnk_SitDeb}${vNomSite}${lnk_SitFin}
    wait until page contains element   ${lnk_Documents}
    click element     ${lnk_Documents}
    wait until page contains element    ${btn_Copier}
    click button    ${btn_Copier}
    wait until page contains element    ${lnk_HeaderSitesMenu}
    # Cliquer sur le bouton Sites
    click element    ${lnk_HeaderSitesMenu}
    # Verifier que la page est affichee
    wait until page contains element    ${lnk_MesSites}
    # Cliquer sur le lien Mes Sites
    click element    ${lnk_MesSites}
    # Verifier que la page est affichee
    wait until page contains element    ${lnk_SiteTest1}${vNomSite}${lnk_SiteTest2}
    # Cliquer sur Catégorie racine
    click element    ${lnk_SiteTest1}${vNomSite}${lnk_SiteTest2}
    sleep    5s
    wait until page contains element    ${lnk_EspDoc}
    click element    ${lnk_EspDoc}
    wait until element is visible      ${lnk_CopyConfDeb}${vNomDossier}${lnk_CopyConfFin}