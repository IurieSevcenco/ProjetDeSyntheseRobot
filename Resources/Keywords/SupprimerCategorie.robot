*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vNomCategorie1}   CategorieEditee
#${vNomCategorie}   CategorieTest
*** Keywords ***
Supprimer une categorie
    [Arguments]    ${vNomCategorie}
    click link         ${lnk_outilAdmin}
    # Attendre le chargement de la page application
    wait until location contains      ${url_application}
    click link      ${lnk_categorie}
    wait until element is visible     ${lnk_nomCategorie_deb}${vNomCategorie1}${lnk_nomCategorie_fin}
    mouse over       ${lnk_nomCategorie_deb}${vNomCategorie1}${lnk_nomCategorie_fin}
    wait until element is visible      ${lnk_supprimerCategorie}      timeout=10s
    click element       ${lnk_supprimerCategorie}
    wait until element is visible     ${btn_supprimerCategorie}         timeout=10s
    click element         ${btn_supprimerCategorie}
# Vérifier message de confirmation de suppression
    sleep   3s
    page should contain    ${lbl_msgConfirmCatSupp}
    sleep   10s
    element should not be visible    ${lnk_nomCategorie_deb}${vNomCategorie1}${lnk_nomCategorie_fin}