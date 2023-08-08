*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py

*** Variables ***
${vNomCategorie}   CategorieTest
*** Keywords ***

Creer Un Categorie
    #Creer un nouveau categorie
    [Arguments]   ${vNomCategorie}
    wait until page contains element   ${lnk_HeaderAdmin}
    # Cliquer sur le bouton Outils administrateur
    click element    ${lnk_HeaderAdmin}
    # Verifier que la page est affichee
    wait until page contains element    ${lnk_GestCat}
    # Cliquer sur le bouton Gestionnaire de catégories
    click element    ${lnk_GestCat}
    # Verifier que la page est affichee
    wait until element is visible    ${lnk_CatRacine}
    # Cliquer sur Catégorie racine
    click element    ${lnk_CatRacine}
    sleep    3s
    # Attendre que la page soit chargee
    wait until element is visible    ${btn_PlusCat}
    # Cliquer sur le bouton "+"
    click element    ${btn_PlusCat}
    #Vérifier l'ouverture de la fenêtre "Ajouter une catégorie"
    wait until element is visible    ${lbl_AjoutCat}
    # Attendre que la page de creation soit chargee
    wait until page contains element    ${txt_Champs_NomCat}
    # Entrer Nome de la categotie
    Input text    ${txt_Champs_NomCat}    ${vNomCategorie}
    # Cliquer sur le bouton Ok
    click element    ${btn_OkCreateCat}

    sleep    15s
    #S'assurer que la categorie est chargee
    click element    ${lnk_HeaderAdmin}
    reload page
    wait until element is visible    ${lnk_GestCat}
    reload page
    click element    ${lnk_GestCat}
    reload page
    #Vérifier si la catégorie créée existe
    wait until element is visible     ${lnk_NewCat1}${vNomCategorie}${lnk_NewCat2}