*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${lnk_HeaderAdmin}   xpath=//a[@title="Outils admin"]
${lnk_GestMod}   //a[@title='Gestionnaire de modèles']
${lnk_ActionsDebut}     //span[contains(text(),'
${lnk_ActionsFin}   ')]/ancestor::tr/descendant::span[@class='alfresco-menus-AlfMenuBarPopup__text-wrapper']
#
 #link_ActionMenuPart1="//span[text()='"
 #link_ActionMenuPart2="']/ancestor::tr/td[4]//span[text()='Actions']"
 #link_ActionOptionPart1="//body/div/div/div/div/table/tbody/tr/td[text()='"
 #link_ActionOptionPart2="']"
 #"//body/div/div/div/div/table/tbody/tr/td[text()='"
${vNomOption}
# Activer, Modifier, Supprimer, Exporter, Désactiver
${lnk_OptionDebut}  //div[@class='dijitPopup Popup']//td[contains(text(),'
${lnk_OptionFin}    ')]
${vNomModele}



*** Keywords ***
Menu Actions
    [Arguments]   ${vNomModele}    ${vNonOption}
    wait until page contains element    ${lnk_HeaderAdmin}
    click element    ${lnk_HeaderAdmin}
    wait until page contains element    ${lnk_GestMod}
    click element    ${lnk_GestMod}
    wait until page contains    ${vNomModele}
    click element    ${lnk_ActionsDebut}${vNomModele}${lnk_ActionsFin}
    wait until page contains     ${lnk_OptionDebut}${vNonOption}${lnk_OptionFin}
    click element    ${lnk_OptionDebut}${vNomOption}${lnk_OptionFin}

