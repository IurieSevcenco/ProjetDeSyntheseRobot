# locators Creer Un Categorie
lnk_HeaderAdmin = "xpath=//a[@title='Outils admin']"
lnk_GestCat = "xpath=//a[contains(text(), 'Gestionnaire de catégories')]"
lnk_CatRacine = "xpath=//span[contains(text(), 'Catégorie racine')]"
btn_PlusCat = "xpath=//span[@title='Ajouter une catégorie']"
lbl_AjoutCat = "//div[@id='userInput_h']"
txt_Champs_NomCat = "xpath=//input[@type='text']"
btn_OkCreateCat = "xpath=//button[contains(text(), 'OK')]"
lnk_NewCat1 = "xpath=//span[contains(text(), '"
lnk_NewCat2 = "')]"

#locators Editer Categorie
lnk_outilAdmin = "xpath://a[@href='/share/page/console/admin-console/application']"
url_application = "/share/page/console/admin-console/application"
lnk_categorie = "xpath://a[@href='category-manager']"
lnk_nomCategorie_deb = "//span[normalize-space()='"
lnk_nomCategorie_fin = "']"
lnk_editerCategorie = "//span[@class='insitu-edit-category' and @style='visibility: visible; opacity: 1;']"
txt_nomCategorie = "//input[@name='name']"
lnk_enregistrerCategorie = "//a[normalize-space()='Enregistrer']"
lbl_msgConfirmCatMod = "Nom de la catégorie modifié avec succès"

# locators Supprimer Categorie
lnk_outilAdmin = "xpath://a[@href='/share/page/console/admin-console/application']"
url_application = "/share/page/console/admin-console/application"
lnk_categorie = "xpath://a[@href='category-manager']"
lnk_nomCategorie_deb = "//span[normalize-space()='"
lnk_nomCategorie_fin = "']"
lnk_supprimerCategorie = "//span[@class='insitu-delete-category' and @style='visibility: visible; opacity: 1;']"
btn_supprimerCategorie = "(//div[@id='prompt']//button)[1]"
lbl_msgConfirmCatSupp = "Catégorie supprimée avec succès"

# Locators Creer Modele
# Localisateur du lien Outils admin
lnk_HeaderAdmin = "xpath=//a[@title='Outils admin']"
# Label de l'entete de la page Outils admin
lbl_TitreOutilsAdmin = "xpath=//span[@title='Outils admin']"
# Lien de Gestionnaire de modèle
lnk_GestMod = "//a[@title='Gestionnaire de modèles']"
# Le text modèles doit étre apparaitre
txt_MenuModele = "xpath=//h3[text()='Modèles']"
# Bouton créer modèle
btn_cliqueModele = "xpath=//span[text()='Créer un modèle']"
# Champ de saisie d'espace de nom
txt_Champs_EspNome = "xpath=//input[@name='namespace']"
# Champ de saisie de préfixe
txt_Champs_Prefix = "xpath=//input[@name='prefix']"
# Champ de saisie de nom
txt_Champ_Nom = "//input[@name='name']"
# Champ de saisie de créateur
txt_Champs_Author = "xpath=//input[@name='author']"
# Champ de saisie de la description
txt_Champs_Description = "xpath=//textarea[@class='dijitTextBox dijitTextArea']"
# Bouton créer
btn_cliqueCreer = "xpath=//span[text()='Créer']"
txt_nomModeleP1 = "xpath=//span[contains(text(),'"
txt_nomModeleP2 = "')]"

#locators Activer Desactiver Modele
lnk_HeaderAdmin = "xpath=//a[@title='Outils admin']"
lnk_GestMod = "//a[@title='Gestionnaire de modèles']"
lnk_ActionsDebut = "//span[contains(text(),'"
lnk_ActionsFin = "')]/ancestor::tr/descendant::span[@class='alfresco-menus-AlfMenuBarPopup__text-wrapper']"
lnk_Activer = "//div[@class='dijitPopup Popup']//td[contains(text(),'Activer')]"
lnk_Desactiver = "//div[@class='dijitPopup Popup']//td[contains(text(),'Désactiver')]"
lnk_StatusActif = "')]/ancestor::tr/descendant::span[contains(text(),'Actif')]"
lnk_StatusInactif = "')]/ancestor::tr/descendant::span[contains(text(),'Inactif')]"

#locators Supprimer Modele

lnk_HeaderAdmin = "xpath=//a[@title='Outils admin']"
titreOutilAdmin = "//span[@title='Outils admin']"
lnk_GestMod = "//a[@title='Gestionnaire de modèles']"
titregestionModele = "//a[normalize-space()='Gestionnaire de modèles']"
lnk_ActionsDebut = "//span[contains(text(),'"
lnk_ActionsFin = "')]/ancestor::tr/descendant::span[@class='alfresco-menus-AlfMenuBarPopup__text-wrapper']"
lnk_Supprimer = "//div[@class='dijitPopup Popup']//td[contains(text(),'Supprimer')]"
deleteConfirmation = "//div[@id='CMM_DELETE_MODEL_DIALOG']//span[text()='Supprimer']"

#locators Modifier Modele
lnk_HeaderAdmin = "xpath=//a[@title='Outils admin']"
lnk_GestMod = "//a[@title='Gestionnaire de modèles']"
lnk_ActionsDebut = "//span[contains(text(),'"
lnk_ActionsFin = "')]/ancestor::tr/descendant::span[@class='alfresco-menus-AlfMenuBarPopup__text-wrapper']"
lnk_Modifier = "//div[@class='dijitPopup Popup']//td[contains(text(),'Modifier')]"
lbl_Modifier = "//span[@id='CMM_EDIT_MODEL_DIALOG_title']"
txt_Champs_EspNome = "xpath=//input[@name='namespace']"
txt_Champs_Prefix = "xpath=//input[@name='prefix']"
txt_Champs_Author = "xpath=//input[@name='author']"
txt_Champs_Description = "xpath=//textarea[@class='dijitTextBox dijitTextArea']"
btn_Enregistrer = "xpath=//span[@id='CMM_EDIT_MODEL_DIALOG_OK_label']"
lnk_Verific1 = "')]/ancestor::tr/descendant::span[contains(text(),'"
lnk_Verific2 = "')]"
lnk_StatusInactif = "')]/ancestor::tr/descendant::span[contains(text(),'Inactif')]"

#locators Creer Utilisateur
lnk_HeaderAdmin = "xpath=//a[@title='Outils admin']"
btn_User = "xpath=//a[normalize-space()='Utilisateurs']"
btn_NewUser = "id=page_x002e_ctool_x002e_admin-console_x0023_default-newuser-button-button"
Pge_Admin = "xpath=//h3[normalize-space()='Utilisateurs et groupes']"
txt_Champs = "id=page_x002e_ctool_x002e_admin-console_x0023_default-create"
CU_txt_Prenom = "-firstname"
CU_txt_UNom = "-lastname"
CU_txt_Email = "-email"
CU_txt_UserName = "-username"
CU_txt_Password = "-password"
CU_txt_VerifyPassword = "-verifypassword"
btn_UCreate = "user-ok-button-button"


# Localisateurs : Outils Admin - Gestionnaire de Modeles - Creer un type personnalisé
lnk_outilAdmin__E = "xpath://a[@href='/share/page/console/admin-console/application']"
url_application__E = "/share/page/console/admin-console/application"
lnk_gestionnaireModeles__E = "xpath://a[@href='custom-model-manager']"
lnk_modele_deb__E = "xpath://tr/td[1]//span[contains(text(),'"
lnk_modele_fin__E ="')]"
btn_creerType__E = "xpath://span[normalize-space()='Créer un type personnalisé']"
dialog_creerType__E = "id=CMM_CREATE_TYPE_DIALOG"
txt_nomType__E = "//input[@name='name']"
txt_choixTypeParent__E = "//span[@role='option']"
#ou //input[@value='▼ ']
#ou    (//form/div[2])[2]//table
# ou (//form/div[2])[2]//table
lst_parentType__E = "//div[@role='region']"
opt_parentType_deb__E = "//div[@role='region']//td[contains(text(),'"
opt_parentType_fin__E = "')]"
txt_etiquetteType__E = "xpath://form/div[3]//input[@name='title']"
txt_descriptionType__E = "xpath://div[@class='control-row']//textarea[@name='description']"
btn_dialog_creerType__E = "xpath://span[@aria-labelledby='CMM_CREATE_TYPE_DIALOG_OK_label']"
rows_tableType__E = "xpath:(//tbody)[4]/tr/td[1]"
cell_typeCree__EE = "//span[text() ="

# Type Perso
lnk_NomModel = "//span[contains(text(),'NomTestModele')]"
Actions_TypePersonnalise_Debut = "//div[@class='alfresco-lists-AlfList__views rendered-view']/descendant::tr/descendant::span[contains(text(),'"
Actions_TypePersonnalise_Fin = "')]/ancestor::tr/descendant::td[5]/descendant::span[@class='alfresco-menus-AlfMenuBarPopup__text-wrapper']"
lnk_Concepteur = "//div[@class='dijitPopup Popup']//td[contains(text(),'Concepteur de disposition')]"
lbl_CoseptTypPerso1 = "//div[@aria-label='editor']//h1[contains(text(),'"
lbl_CoseptTypPerso2 = "')]"
lnk_DispParDefo = "//span[normalize-space()='Appliquer la disposition par défaut']"
lnk_Appliquer = "//span[normalize-space()='Appliquer']"
lnk_DelPanneau = "//div[@id='FORM_CANVAS']//span[@class='action delete']"
url_TypePersoCocept = "http://localhost:8089/share/page/console/admin-console/custom-model-manager#view=editor&model=NomTestModele&type=NomeTestTypePerso"
img_MenuDaction = "//body/div/div/div/div/div/div/div/div/div[@data-dojo-attach-point='containerNode']/div[@data-dojo-attach-point='containerNode']/div/div[@data-dojo-attach-point='containerNode']/div/div[@widgetid='CMM_PANE_CONTAINER']/div[@data-dojo-attach-point='containerNode']/div[@aria-label='editor']/div/div[@data-dojo-attach-point='containerNode']/div[@data-dojo-attach-point='parentNode']/div[@data-dojo-attach-point='containerNode']/div[@data-dojo-attach-point='leftWidgets']/div[@data-dojo-attach-point='containerNode']/div[@widgetid='FORM_EDITOR']/form[@data-dojo-attach-point='containerNode']/div[@data-dojo-attach-point='containerNode']/div/div[@data-dojo-attach-point='_controlNode']/div/div[@data-dojo-attach-point='previewNode']/div/div/span[5]/img[1]"