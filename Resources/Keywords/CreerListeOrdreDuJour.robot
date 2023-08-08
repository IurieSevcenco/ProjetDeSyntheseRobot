*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ3Sites.py
*** Variables ***
${vNomSite}    SiteTestIurie
${vTypeListeDonnees}    Ordre du jour
${vTitreListeDonnees}    Titre Ordre du jur Iurie
${vDescriptListeDonnees}    Creation du Nouvel Element
*** Keywords ***

Creer une liste des donnees Ordre du Jour
#Permet de creer une liste des donnes dans un site deja cree
    [Arguments]    ${vNomSite}    ${vTypeListeDonnees}    ${vTitreListeDonnees}    ${vDescriptListeDonnees}
    #click sur le lien site
    Click Element    ${link_HeaderSites}
    #S'assurer que le menu Sites est affiché
    Wait Until Element Is Visible    ${mnu_MesSites}
    #Click sur le menu Mes Sites
    Click Element    ${mnu_MesSites}
    #S'assurer que le site  ${vNomSite} est affiché
    Wait Until Element Is Visible    ${Nom_Site_part1}${vNomSite}${Nom_Site_part2}
    #click sur le site ${vNomSite}
    Click Element    ${Nom_Site_part1}${vNomSite}${Nom_Site_part2}
    #S'assurer que le lien Plus est affiché
    #Wait Until Element Is Visible    ${link_Header_Site_More}
    #click sur le lien Plus
    #Click Element    ${link_Header_Site_More}
    #S'assurer que le menu Listes de données est affiché
    Wait Until Element Is Visible    ${mnu_More_ListeDonnees}
    #click sur le menu Listes de données
    Click Element    ${mnu_More_ListeDonnees}
    #S'assurer que le bouton Nouvelle Liste est affiché
    #Wait Until Element Is Visible    ${btn_NouvelleListeDonnees}
    #click sur le bouton Nouvelle Liste est affiché
    #Click Button    ${btn_NouvelleListeDonnees}
    #S'assurer que le lien de type de la liste des données est affiché
    Wait Until Element Is Visible    ${Type_ListeDonnees_part1}${vTypeListeDonnees}${Type_ListeDonnees_part2}
    #click sur un type de la liste des données
    Click Element    ${Type_ListeDonnees_part1}${vTypeListeDonnees}${Type_ListeDonnees_part2}
    #Saisie du titre
    Input Text    ${input_TitreListeDonnees}    ${vTitreListeDonnees}
    #Saisie du description
    Input Text    ${input_DescriptionListeDonnees}    ${vDescriptListeDonnees}
    #click sur Enregistrer
    Click Button    ${btn_EnregistrerListeDonnes}
    #raffraichir la page
    Reload Page
    #S'assurer que la liste des données est affiché
    Wait Until Element Is Visible    ${NomAffListeListDonn_part1}${vTitreListeDonnees}${NomAffListeListDonn_part2}
    sleep     3s
