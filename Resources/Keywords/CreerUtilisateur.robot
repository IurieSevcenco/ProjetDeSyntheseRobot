*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${Prenom}    Agr
${Nom}     Harcel
${Email}    Harceleur@gmail.com
${UserNamePers}    FreddyKrueger
${Password}    12345678
*** Keywords ***
Creer un utilisateur
    #Creer un nouvel utilisateur / Si l utilisateur existe le teste ne passera pas : Changer le UserName
    [Arguments]     ${Prenom}   ${Nom}    ${Email}    ${UserNamePers}    ${Password}
    wait until page contains element    ${lnk_HeaderAdmin}
    # Cliquer sur le bouton Outils administrateur
    click element    ${lnk_HeaderAdmin}
    # Verifier que la page est affichee
    wait until page contains element    ${btn_User}
    # Cliquer sur le bouton Utilisateur
    click element    ${btn_User}
    # Cliquer sur Nouvel utilisateur
    click button    ${btn_NewUser}
    # Attendre que la page soit chargee
    wait until page contains element    ${txt_Champs}${CU_txt_Prenom}
    sleep    2
    # Entrer le prenom
    Input text    ${txt_Champs}${CU_txt_Prenom}     ${Prenom}
    # Entrer le nom
    Input text    ${txt_Champs}${CU_txt_UNom}    ${Nom}
    # Entre le courriel
    Input text    ${txt_Champs}${CU_txt_Email}    ${Email}
    # Entrer le nom d utilisateur
    Input text    ${txt_Champs}${CU_txt_UserName}    ${UserNamePers}
    # Entrer le mot de passe
    Input text    ${txt_Champs}${CU_txt_Password}    ${Password}
    # Reentre le mot de passe
    Input text    ${txt_Champs}${CU_txt_VerifyPassword}    ${Password}
    # Cliquer sur le bouton Creer
    click element    ${txt_Champs}${btn_UCreate}
    # S'assurer que la page est chargee
    Wait Until Element Is Visible    ${btn_NewUser}
    # S'assurer que l utilisateur est cree
    Element Should Contain    ${btn_NewUser}    Nouvel utilisateur