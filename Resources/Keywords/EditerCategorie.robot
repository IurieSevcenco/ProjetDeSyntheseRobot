*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vNomCategorie}   CategorieTest
${vNouveauNomCategorie}    CategorieEditee
*** Keywords ***
Editer une categorie
    [Arguments]    ${vNomCategorie}     ${vNouveauNomCategorie}
    click link         ${lnk_outilAdmin}
    # Attendre le chargement de la page application
    wait until location contains      ${url_application}
    click link      ${lnk_categorie}
    wait until element is visible     ${lnk_nomCategorie_deb}${vNomCategorie}${lnk_nomCategorie_fin}
    mouse over       ${lnk_nomCategorie_deb}${vNomCategorie}${lnk_nomCategorie_fin}
    wait until element is visible      ${lnk_editerCategorie}      timeout=10s
    click element       ${lnk_editerCategorie}
    input text    ${txt_nomCategorie}       ${vNouveauNomCategorie}
    wait until element is visible     ${lnk_enregistrerCategorie}         timeout=10s
    click element         ${lnk_enregistrerCategorie}
    # Vérifier message de confirmation de modification
    sleep   3s
    page should contain    ${lbl_msgConfirmCatMod}
    capture page screenshot
    sleep   10s
    element should not be visible    ${lnk_nomCategorie_deb}${vNomCategorie}${lnk_nomCategorie_fin}