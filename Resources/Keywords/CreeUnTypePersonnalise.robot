*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vPrefixeNomModele}    PrefixTestModele
${vNomModele}    NomTestModele
${vNomTypePerso}    NomeTestTypePerso
${vTypeParent}     cm:content (Contenu)
${vEtiquette}    TestEtiquette
${vDescription}    TestDescription

*** Keywords ***
Creer un type personnalise
    [Arguments]    ${vPrefixeNomModele}  ${vNomModele}
    ...    ${vNomTypePerso}   ${vTypeParent}   ${vEtiquette}  ${vDescription}
    click link         ${lnk_outilAdmin__E}
    # Attendre le chargement de la page application
    wait until location contains      ${url_application__E}
    click link      ${lnk_gestionnaireModeles__E}
    wait until element is visible     ${lnk_modele_deb__E}${vNomModele}${lnk_modele_fin__E}
    click element       ${lnk_modele_deb__E}${vNomModele}${lnk_modele_fin__E}
    wait until element is visible       ${btn_creerType__E}
    click element       ${btn_creerType__E}
    wait until element is visible     ${dialog_creerType__E}
    input text    ${txt_nomType__E}     ${vNomTypePerso}
    wait until element is visible       ${txt_choixTypeParent__E}
    click element       ${txt_choixTypeParent__E}
# Répéter pour pouvoir afficher la liste
    wait until element is visible       ${txt_choixTypeParent__E}
    click element       ${txt_choixTypeParent__E}
    wait until element is visible    ${lst_parentType__E}
    click element       ${opt_parentType_deb__E}${vTypeParent}${opt_parentType_fin__E}
    wait until element is visible       ${txt_etiquetteType__E}
    input text       ${txt_etiquetteType__E}      ${vEtiquette}
    input text       ${txt_descriptionType__E}        ${vDescription}
    click element       ${btn_dialog_creerType__E}
    sleep   4s
    click element   ${Actions_TypePersonnalise_Debut}${vNomTypePerso}${Actions_TypePersonnalise_Fin}
    click element    ${lnk_Concepteur}
    #wait until element is visible    ${lbl_CoseptTypPerso1}${vNomModele} - ${vNomTypePerso}${lbl_CoseptTypPerso2}
    click element    ${lnk_DispParDefo}
    sleep    3s
    click element    ${lnk_Appliquer}
    click element    //span[normalize-space()='Enregistrer']
    #drag and drop    //div[@title='Panneau à une seule colonne']    //div[@class='alfresco-dnd-DragAndDropTarget']