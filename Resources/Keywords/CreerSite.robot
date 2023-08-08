*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ3Sites.py
*** Variables ***
${txt_siteId}    //input[@name='shortName']
${vTypeSite}     Site de Collaboration
${vNomSite}    SiteTestIurie
${vUrlSite}    site-test-iurie
${vDescriptionSite}     DescriptionSite Test
${vVisibiliteSite}      PUBLIC
${TIMEOUT}      5s
*** Keywords ***
Creer site
    #ce Keyword a besoin du type de site, le nom du site, l'url, la description et la visibilité du site pour s'exécuter
    [Arguments]    ${vTypeSite}  ${vNomSite}  ${vUrlSite}  ${vDescriptionSite}  ${vVisibiliteSite}
    Set Selenium Timeout    ${TIMEOUT}
    #Cliquer sur "Sites"
    click element    ${link_sites}
    sleep       2s
    #cliquer dans le menu sites sur "Créer site"
    click element    ${link_creerSite}
    #attendre jusqu'à ce que la page contienne la liste "Type"
    wait until page contains element    ${liste_Type_site}
    #cliquer sur la liste déroulate Type
    click element    ${liste_Type_site}
    #attendre que la liste contienne le type désiré
    wait until page contains element    ${choix_typeSiteDebut}${vTypeSite}${choix_typeSiteFin}
    #cliquer sur le type choisi
    click element    ${choix_typeSiteDebut}${vTypeSite}${choix_typeSiteFin}
    #remplir le champs Nom avec le nom passé en argument
    input text    ${input_nomSite}    ${vNomSite}
    #remplir le champs Site ID avec l'id passé en argument
    input text    ${txt_siteId}     ${vUrlSite}
    #remplir le champs description avec la description passée en argument
    input text    ${input_descriptionSite}    ${vDescriptionSite}
    #cliquer sur le type de visibilité choisie
    click element    ${liste_visibiliteSiteDebut}${vVisibiliteSite}${liste_visibiliteSiteFin}
    #cliquer sur le bouton céer
    sleep    3s
    click element    ${btn_CreateSite}
    sleep    3s
    wait until page contains    ${vNomSite}
    reload page