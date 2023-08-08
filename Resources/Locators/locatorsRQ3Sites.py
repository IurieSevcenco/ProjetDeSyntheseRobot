#locators Creer site
link_sites ="//span[@id='HEADER_SITES_MENU_text']"
link_creerSite ="//td[@id='HEADER_SITES_MENU_CREATE_SITE_text']"
title_site = "//span[@id='CREATE_SITE_DIALOG_title']"
liste_Type_site = "//td[@class='dijitReset dijitRight dijitButtonNode dijitArrowButton dijitDownArrowButton dijitArrowButtonContainer']"
choix_typeSiteDebut = "//td[contains(text(),'"
choix_typeSiteFin = "')]"
btn_CreateSite = "//span[@id='CREATE_SITE_DIALOG_OK_label']"
input_nomSite = "//input[@name='title' or @name='titre']"
input_descriptionSite = "//textarea[@name='description']"
liste_visibiliteSiteDebut = "//input[@name='visibility' and @value='"
liste_visibiliteSiteFin = "']"

#locators  Supprimer un site
#Lien Menu Sites
lnk_HeaderSitesMenu = "id=HEADER_SITES_MENU_text"
#Lien d'option Mes Sites
lnk_MesSites = "xpath=//a[text()='Mes sites']"
#Liens de la propriété du site
lnk_SiteTest1 = "xpath=//a[text()='"
lnk_SiteTest2 = "']"
#Bouton roue dentée configuration du site
btn_SiteConfig = "id=HEADER_SITE_CONFIGURATION_DROPDOWN"
#Bouton "X" Supprimer le site
lnk_SuppSite = "xpath=//td[@id='HEADER_DELETE_SITE_text']"
#Bouton "Ok" sur le pop up
btn_OkSupp = "xpath=//span[@id='ALF_SITE_SERVICE_DIALOG_CONFIRMATION_label']"
#Contient le nom du site

#locators Ajouter Un Module A Un Site

BTN_SITES = "id=HEADER_SITES_MENU_text"
BTN_CREERSITE = "id=HEADER_SITES_MENU_CREATE_SITE_text"
BTN_MESSITES = "//a[@title='Mes sites']"
LNK_SITE = "//a[normalize-space()='"
LNK_FIN = "']"
BTN_ROUEDENTEE = "//img[@title='Options de configuration de site']"
BTN_PERSONALISATIONSITE = "//a[@title='Personnaliser le site']"
LNK_MODULEADEPLACER = "//h3[contains(text(),'"
LNK_FINMODULEADEPLACER = "')]//ancestor::li"
LNK_ZONESITEPAGE = "//div[@class='page-list-wrapper current-pages theme-border-3']"
BTN_OKMODULE = "//button[normalize-space()='OK']"
LNK_BARREMENU = "//div[@class='navigation-menu']"

#locators creer un evenement
Sites = "//span[@id='HEADER_SITES_MENU_text']"
NomListe = "//img[@title='Recherche de sites']"
MesSites = "//a[normalize-space()='Mes sites']"
NomPageMesSites = "//span[@title='Listes des sites de l'utilisateur']"
MonSite = "//a[normalize-space()='"
FinMonSite = "']"
MenuMonSite = "//a[normalize-space()='"
FinMenuMonSite = "']"
ClickCalendrier = "//a[normalize-space()='Calendrier']"
NomCalendrier = "//button[@id='template_x002e_toolbar_x002e_calendar_x0023_default-addEvent-button-button']"
PageFormulaire = "//div[@id='eventEditPanel-dialog']//div[1]//h2[1]"
Quoi = "//input[@id='eventEditPanel-title']"
Ou = "//input[@id='eventEditPanel-location']"
Descritption = "//textarea[@id='eventEditPanel-description']"
JourneeE = "//input[@id='eventEditPanel-allday']"
Tags = "//input[@id='eventEditPanel-tag-input-field']"
AjoutTag = "//button[@id='eventEditPanel-add-tag-button-button']"
Enregistrer = "//button[@id='eventEditPanel-ok-button']"

# locators deplacer evenement
btn_ModJour = "//button[normalize-space()='Jour']"
lnk_EvenDeb = "//div[contains(text(),'"
lnk_EvenFin = "')]"
lnk_LocTarget = "//tr[contains(@class,'fc-slot32')]//div"

#locators Liste ordre du jour
link_HeaderAccueil = "id=HEADER_HOME_text"
link_HeaderSites = "id=HEADER_SITES_MENU_text"
mnu_MesSites = "xpath=//a[text()='Mes sites']"
Nom_Site_part1 = "xpath=//a[text()='"
Nom_Site_part2 = "']"
link_Header_Site_More = "id=HEADER_SITE_MORE_PAGES_text"
mnu_More_ListeDonnees = "xpath=//a[text()='Listes de données']"
btn_NouvelleListeDonnees = "xpath=//button[text()='Nouvelle liste']"
Type_ListeDonnees_part1 = "xpath=//a[text()='"
Type_ListeDonnees_part2 = "']"
input_TitreListeDonnees = "name=prop_cm_title"
input_DescriptionListeDonnees = "name=prop_cm_description"
btn_EnregistrerListeDonnes = "xpath=//button[text()='Enregistrer']"
NomAffListeListDonn_part1 = "xpath=//a[text()='"
NomAffListeListDonn_part2 = "']"

#locators Creer Un Nuvel Element Ordre Du Jour
lnk_List = "//a[@title='Creation du Nouvel Element']"
lnk_NuvelElement = "//span[@class='yui-button yui-push-button']//button[@type='button']"
input_Reference = "//input[@name='prop_dl_meetingAgendaRef']"
input_Titre = "//input[@title='Titre du contenu']"
input_Desc = "//textarea[@title='Description du contenu']"
input_Temps = "//input[@name='prop_dl_meetingAgendaTime']"
input_Propr = "//input[@name='prop_dl_meetingAgendaOwner']"
btn_EnregistrerElem = "//span[@class='yui-button yui-submit-button alf-primary-button']//button[@name='-']"
lnk_ElemDeb = "//div[contains(text(),'"
lnk_ElemFin = "')]"