*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ3Sites.py
*** Variables ***
${vNomSite}    SiteTestIurie
*** Keywords ***
Supprimer un site
    #Supprimer un Site cree
    [Arguments]   ${vNomSite}
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
    sleep    3s
    # Attendre que la page soit chargee
    wait until page contains element    ${btn_SiteConfig}
    # Cliquer sur le bouton "+"
    click element    ${btn_SiteConfig}
    # Attendre que la page de creation soit chargee
    wait until page contains element    ${lnk_SuppSite}
    # Cliquer sur le bouton "+"
    click element    ${lnk_SuppSite}
    # Attendre que la page de creation soit chargee
    wait until page contains element    ${btn_OkSupp}
    # Cliquer sur le bouton "+"
    click element    ${btn_OkSupp}
    #S'assurer que le site est sepprime
    reload page
    click element    ${lnk_HeaderSitesMenu}
    wait until page contains element    ${lnk_MesSites}
    click element    ${lnk_MesSites}
    page should not contain    ${lnk_SiteTest1}${vNomSite}${lnk_SiteTest2}