*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ6OutilsAdmin.py
*** Variables ***
${vEspacenom}      TestModele
${vPrefix}      PrefixTestModele
${vNomModele}    NomTestModele
${vCreateur}        Testeur QA logiciels
${vDescription}     Description Test
*** Keywords ***
Creer un modele
    [Arguments]     ${vEspacenom}      ${vPrefix}    ${vNomModele}     ${vCreateur}        ${vDescription}
     # Cliquer sur le lien Outils admin
     click element    ${lnk_HeaderAdmin}
     # Attendre jusqu'a le label de l'entete contient Outil admin
     wait until page contains element    ${lbl_TitreOutilsAdmin}
     # Cliquer sur le lien Gestionnaire de modèles
     click element    ${lnk_GestMod}
     # Attendre jusqu'a la page contient "Modèles"
     wait until page contains element    ${txt_MenuModele}
     # Cliquer sur le bouton "Créer un modèle"
     click element    ${btn_cliqueModele}
     # Attendre 3s
     sleep    3s
     # Remplir le champ "Espace de nom"
     input text       ${txt_Champs_EspNome}    ${vEspacenom}
     # Remplir le champ "Prefix"
     input text    ${txt_Champs_Prefix}     ${vPrefix}
     # Remplir le champ "Nom"
     input text     ${txt_Champ_Nom}        ${vNomModele}
     # Remplir le champ "Createur"
     input text    ${txt_Champs_Author}     ${vCreateur}
     # Remplir le champ "Description"
     input text    ${txt_Champs_Description}    ${vDescription}
     # Cliquer sur le bouton "Créer"
     click element      ${btn_cliqueCreer}
     # Vérifier que le modele cree existe
     sleep    3s
     wait until page contains element        ${txt_nomModeleP1}${vNomModele}${txt_nomModeleP2}