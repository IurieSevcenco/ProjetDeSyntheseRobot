*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ7ProfilUtilisateur.py
*** Variables ***

*** Keywords ***

Vider la Corbeille
    # Click sur le nom de profil
    click element   ${link_HeaderUser}
    # S'assurer que le lien MonProfil est affiché
    wait until page contains element    ${link_MonProfil}
    # Click sur MonProfil
    click element    ${link_MonProfil}
    #wait until page contains element       ${NomPageMonProfil}
    # Click sur Corbeille
    click element      ${link_Corbeille}
    # Click sur supprimer qui corespond au dossier à supprimer
    click element       ${link_Supprimer}
    # S'assurer que le message de confirmation de suppression est affiché
    sleep    3s
    #wait until element is visible    ${txt_MsgConfirSupCorbeille}
    # click sur le bouton OK
    click element    ${btn_Login_OkSupCorbeille}
