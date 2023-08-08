*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locatorsRQ3Sites.py
*** Variables ***
${NomModule}    Calendrier
${vNomSite}    SiteTestIurie
${VModuleListeDeDonnees}    Listes de données
*** Keywords ***
Ajouter Un Module A Un Site
    [Arguments]    ${NomSite}    ${NomModule}
    # Attendre et cliquer sur le bouton Sites
    wait until page contains element    ${BTN_SITES}    10
    click element    ${BTN_SITES}
    # Attendre et cliquer sur le bouton Mes sites
    wait until page contains element    ${BTN_MESSITES}    10
    click element    ${BTN_MESSITES}
    # Attendre que la page du site demandé soit chargée
    wait until page contains    ${NomSite}
    # Cliquer sur le site demandé
    click element    ${LNK_SITE}${NomSite}${LNK_FIN}
    # Cliquer sur la roue dentée des options
    click element    ${BTN_ROUEDENTEE}
    # Cliquer sur l'option personaliser
    click element    ${BTN_PERSONALISATIONSITE}
    # Sélectionner l'option voulue dans la zone des options visibles sur la page d'accueil
    drag and drop    ${LNK_MODULEADEPLACER}${NomModule}${LNK_FINMODULEADEPLACER}    ${LNK_ZONESITEPAGE}
    # Attendre 2 secondes
    sleep    2
    # Cliquer sur le bouton pour valider le choix
    click element    ${BTN_OKMODULE}
    # Attendre 2 secondes
    sleep    2
    # Vérifie que le bouton demandé est dans la zone des boutons à sélectionner
    element should contain    ${LNK_BARREMENU}    ${NomModule}

Ajouter Module Listes de données a Un Site
    [Arguments]    ${NomSite}    ${VModuleListeDeDonnees}
    # Attendre et cliquer sur le bouton Sites
    wait until page contains element    ${BTN_SITES}    10
    click element    ${BTN_SITES}
    # Attendre et cliquer sur le bouton Mes sites
    wait until page contains element    ${BTN_MESSITES}    10
    click element    ${BTN_MESSITES}
    # Attendre que la page du site demandé soit chargée
    wait until page contains    ${NomSite}
    # Cliquer sur le site demandé
    click element    ${LNK_SITE}${NomSite}${LNK_FIN}
    # Cliquer sur la roue dentée des options
    click element    ${BTN_ROUEDENTEE}
    # Cliquer sur l'option personaliser
    click element    ${BTN_PERSONALISATIONSITE}
    # Sélectionner l'option voulue dans la zone des options visibles sur la page d'accueil
    drag and drop    ${LNK_MODULEADEPLACER}${VModuleListeDeDonnees}${LNK_FINMODULEADEPLACER}    ${LNK_ZONESITEPAGE}
    # Attendre 2 secondes
    sleep    2
    # Cliquer sur le bouton pour valider le choix
    click element    ${BTN_OKMODULE}
    # Attendre 2 secondes
    sleep    2
    # Vérifie que le bouton demandé est dans la zone des boutons à sélectionner
    element should contain    ${LNK_BARREMENU}    ${VModuleListeDeDonnees}