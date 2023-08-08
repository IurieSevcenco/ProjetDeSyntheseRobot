*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ3Sites.py
*** Variables ***
${vNomSite}    SiteTestIurie
${vReference}    Referance test NE
${vTitre}    Titre NE
${vDesc}    Description NE
${vTemps}    10min
${vPropr}    Iurie
*** Keywords ***

Creer Un Nouvel Element De Liste Ordre Du Jour
    [Arguments]    ${vNomSite}    ${vReference}    ${vTitre}    ${vDesc}    ${vTemps}    ${vPropr}
    Click Element    ${link_HeaderSites}
    #S'assurer que le menu Sites est affiché
    Wait Until Element Is Visible    ${mnu_MesSites}
    #Click sur le menu Mes Sites
    Click Element    ${mnu_MesSites}
    #S'assurer que le site  ${vNomSite} est affiché
    Wait Until Element Is Visible    ${Nom_Site_part1}${vNomSite}${Nom_Site_part2}
    #click sur le site ${vNomSite}
    Click Element    ${Nom_Site_part1}${vNomSite}${Nom_Site_part2}
    #S'assurer que le menu Listes de données est affiché
    Wait Until Element Is Visible    ${mnu_More_ListeDonnees}
    #click sur le menu Listes de données
    Click Element    ${mnu_More_ListeDonnees}
    wait until element is visible    ${Lnk_List}
    click element    ${lnk_List}
    wait until element is visible     ${lnk_NuvelElement}
    click element    ${lnk_NuvelElement}
    wait until element is visible    ${input_Reference}
    click element    ${input_Reference}
    input text    ${input_Reference}    ${vReference}
    input text    ${input_Titre}    ${vTitre}
    input text    ${input_Desc}    ${vDesc}
    input text    ${input_Temps}    ${vTemps}
    input text    ${input_Propr}    ${vPropr}
    click element    ${btn_EnregistrerElem}
    element should not be visible    ${lnk_ElemDeb}${vReference}${lnk_ElemFin}




