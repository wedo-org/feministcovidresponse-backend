TypeItem.destroy_all
CountryItem.destroy_all
Item.destroy_all
Page.destroy_all
Progressive.destroy_all
Country.destroy_all
Type.destroy_all
Category.destroy_all
User.destroy_all

TypeItem.reset_pk_sequence
CountryItem.reset_pk_sequence
Page.reset_pk_sequence
Progressive.reset_pk_sequence
Item.reset_pk_sequence
Type.reset_pk_sequence
Category.reset_pk_sequence
User.reset_pk_sequence
Country.reset_pk_sequence


############# PAGES ############# 
pages = ["response-tracker", "online-dialogues", "resources"]
pages.each{|c| Page.create!(name: c)}

puts "cat done"

############# TYPES ############# 
types = ["observed response", "temporary measure", "policy or law", "feminist statement or analysis", "scientific data", "mutual aid resource", "organizing tool"]
types.each{|t| Type.create!(name: t)}

puts "types done"


############# CATEGORIES ############# 
categories = ["SRHR", "punitive", "digital surveillance", "healthcare", "education", "economy", "childcare", "labor", "food", "gendered health impacts", "gender-based violence","disability", "race", "misinformation", "water", "democratic institutions"]
categories.each{|t| Category.create!(name: t)}

puts "categories done"

############## PROGRESSIVES ###########
prog = ["progressive", "regressive", "need to watch", "test"]
prog.each{|p| Progressive.create!(name: p)}

puts "prog done"


############### USERS ###############
annie = User.create!(username: "annie2020", email:"annie2020@gmail.com", password_digest: "Annie2020")
sylwia = User.create!(username: "sylwia2020", email:"sylwia2020@gmail.com", password_digest: "Sylwia2020")

puts "users done"


############### ITEMS ###############
# firstItem = Item.create!(title: "test", description: "desc", link: "link", date:50920, progressive_id:Progressive.all[0].id, page_id: Page.all[0].id)

# secondItem = Item.create!(title: "test2", description: "desc2", link: "link2", date:50920, progressive_id:Progressive.all[1].id, page_id: Page.all[1].id)

puts "items done"


############### TYPE_ITEMS ###############
# firstTI = TypeItem.create!(type_id: Type.all[0].id, item_id: firstItem.id )

# secondTI = TypeItem.create!(type_id: Type.all[1].id, item_id: firstItem.id )

puts "type items done"


############# COUNTRIES ##################
    countries = ["Afghanistan",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
    "British Indian Ocean Territory",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cape Verde",
    "Cayman Islands",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos (Keeling) Islands",
    "Colombia",
    "Comoros",
    "Congo",
    "Cook Islands",
    "Costa Rica",
    "Ivory Coast",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "East Timor",
    "Ecuador",
    "Egypt",
    "England",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands",
    "Faroe Islands",
    "Fiji Islands",
    "Finland",
    "France",
    "French Guiana",
    "French Polynesia",
    "French Southern territories",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Global",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Heard Island and McDonald Islands",
    "Holy See (Vatican City State)",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Isle of Man",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libyan Arab Jamahiriya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "North Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia (Federated States of)",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "North Korea",
    "Northern Ireland",
    "Northern Mariana Islands",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reunion",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Helena",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Pierre and Miquelon",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Scotland",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Georgia and the South Sandwich Islands",
    "South Korea",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Eswatini",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "United States Minor Outlying Islands",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela",
    "Vietnam",
    "Virgin Islands, British",
    "Virgin Islands, U.S.",
    "Wales",
    "Wallis and Futuna",
    "Western Sahara",
    "Yemen",
    "Yugoslavia",
    "Zambia",
    "Zimbabwe",
    "Asia-Pacific",
    "Pacific Islands",
    "Anglophone Africa",
    "Francophone Africa",
    "Europe",
    "Latin America and the Caribbean",
    "Middle East and North Africa",
]

countries.each{|c| Country.create!(name: c)}

puts "countries done"

############# COUNTRIES_ITEMS ##################
# firstCI = CountryItem.create!(item_id: Item.first.id, country_id: Country.all[100].id)
# secondCI = CountryItem.create!(item_id: Item.first.id, country_id: Country.all[90].id)
# thirdCI = CountryItem.create!(item_id: Item.second.id, country_id: Country.all[80].id)

puts "country items done"

################# EXCEL - ROUND 1 ################


response_data = [
#     {
#         "title_en": "Support to women fleeing gender-based violence",
#         "description_en": "Canada will give $40 million to Women and Gender Equality Canada (WAGE), up to $30 million of which will address immediate needs of shelters and sexual assault centres.",
        
#         "title_fr": "Aide aux femmes fuyant la violence sexiste",
#         "description_fr": "Le Canada accordera 40 millions de dollars à Women and Gender Equality Canada (WAGE), dont jusqu'à 30 millions de dollars répondront aux besoins immédiats des refuges et des centres d'agression sexuelle.",
#         "titleses": "Apoyo a las mujeres que huyen de la violencia de género",
#         "descriptionses": "Canadá otorgará $ 40 millones a Mujeres e Igualdad de Género de Canadá (WAGE), de los cuales hasta $ 30 millones cubrirán las necesidades inmediatas de refugios y centros de agresión sexual",


#         "link": "https://www.canada.ca/en/employment-social-development/news/2020/04/canada-announces-support-to-those-experiencing-homelessness-and-women-fleeing-gender-based-violence-during-the-coronavirus-disease-covid-19-pandemic.html",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Canada",
#       },
#       {
#         "title_en": "Jump in domestic violence cases",
#         "description_en": "Russia's little resources for DV victims become even more strained w/ rise of cases",
        
#         "title_fr": "Sautez dans les affaires de violence domestique",
#         "description_fr": "Les petites ressources de la Russie pour les victimes de DV deviennent encore plus tendues avec l'augmentation des cas",
#         "titleses": "Saltar en casos de violencia doméstica",
#         "descriptionses": "Los escasos recursos de Rusia para las víctimas de DV se vuelven aún más tensos con el aumento de los casos",


#         "link": "https://www.wilsoncenter.org/blog-post/womens-choice-covid-19-or-abusive-partner",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Russia",
#       },
#     {
#         "title_en": "NGOs ask Government to provide assistance for DV victims",
#         "description_en": "Nine Russian organizations are asking the government to take urgent measures to provide assistance to victims in quarantine.",

#         "title_fr": "Les ONG demandent au gouvernement de fournir une assistance aux victimes de DV",
#         "description_fr": "Neuf organisations russes demandent au gouvernement de prendre d'urgence des mesures pour venir en aide aux victimes en quarantaine.",       
#         "titleses": "Las ONG piden al gobierno que brinde asistencia a las víctimas de DV",
#         "descriptionses": "Nueve organizaciones rusas están pidiendo al gobierno que tome medidas urgentes para brindar asistencia a las víctimas en cuarentena",


#         "link": "https://www.kommersant.ru/doc/4310901?fbclid=IwAR3bHlWrDg6XXW2pn3JScientific Data5-fV8a8lqKwIrVnPSBpkxMugUwrAk-pcEWSzTo",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Russia",
#       },
#       {
#         "title_en": "Coronavirus takes a serious turn in Russia, and Putin no longer radiates confidence",
#         "description_en": "Russia had record rise in cases, 2,558, even with tight restrictions in place",
        
#         "title_fr": "Le coronavirus prend un sérieux tournant en Russie, et Poutine ne rayonne plus de confiance",
#         "description_fr": "La Russie a enregistré une augmentation record du nombre de cas, 2 558, même avec des restrictions strictes",
#         "titleses": "El coronavirus da un giro serio en Rusia y Putin ya no irradia confianza",
#         "descriptionses": "Rusia tuvo un aumento récord en los casos, 2,558, incluso con restricciones estrictas",


#         "link": "https://www.cnn.com/2020/04/14/europe/russia-coronavirus-putin-response-intl/index.html",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Russia",
#       },
#       {
#         "title_en": "Putin's Bleak Covid-19 Admission: 'We Don't Have Much to Brag About'",
#         "description_en": "Putin admits that Russia is vulnerable to Covid after making claims of Russia's invincibility",
        
# "title_fr": "Admission sombre de Poutine Covid-19: Nous n'avons pas grand-chose à nous vanter",
# "description_fr": "Poutine admet que la Russie est vulnérable à Covid après avoir revendiqué l'invincibilité de la Russie",
#         "titleses": "Admisión de Putin Bleak Covid-19: 'No tenemos mucho de qué alardear'",
#         "descriptionses": "Putin admite que Rusia es vulnerable a Covid después de reclamar la invencibilidad de Rusia",


#         "link": "https://www.nytimes.com/2020/04/13/world/europe/coronavirus-russia-putin.html",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Russia",
#       },
#       {
#         "title_en": "Putin recently ordered broad policy shifts to soften the pandemic's economic effects",
#         "description_en": "Shifts include suggestion to raise the cap on most unemployment benefits by around 50%, and 6 month moratorium on bankruptcy",
        
# "title_fr": "Poutine a récemment ordonné de vastes changements de politique pour atténuer les effets économiques de la pandémie",
# "description_fr": "Les changements comprennent une suggestion de relever le plafond de la plupart des prestations de chômage d'environ 50% et un moratoire de 6 mois sur la faillite",
#         "titleses": "Putin ordenó recientemente amplios cambios de política para suavizar los efectos económicos de la pandemia",
#         "descriptionses": "Los cambios incluyen sugerencias para aumentar el límite de la mayoría de las prestaciones por desempleo en alrededor del 50% y una moratoria de 6 meses en caso de quiebra",


#         "link": "https://www.npr.org/sections/coronavirus-live-updates/2020/04/02/825859574/putin-extends-no-work-order-for-russia-until-may-in-over-covid-19-pandemic",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Russia",
#       },
#       {
#         "title_en": "Moscow's Intrusive Online Regime Proposal for COVID-19 Prevention",
#         "description_en": "Authorities can use residents' geolocation data and financial transactions to track movements and ensure compliance with the lockdown.",
        
# "title_fr": "Proposition de régime intrusif en ligne de Moscou pour la prévention du COVID-19",
# "description_fr": "Les autorités peuvent utiliser les données de géolocalisation des résidents et les transactions financières pour suivre les mouvements et garantir le respect du verrouillage.",
#         "titleses": "Propuesta intrusiva del régimen en línea de Moscú para la prevención COVID-19",
#         "descriptionses": "Las autoridades pueden utilizar los datos de geolocalización de los residentes y las transacciones financieras para rastrear movimientos y garantizar el cumplimiento del bloqueo",


#         "link": "https://www.hrw.org/news/2020/04/01/moscows-intrusive-proposal-covid-19-prevention",
#         "progressive": "need to watch",
#         "category": "digital surveillance, punitive",
#         "type": "temporary measure",
#         "country": "Russia",
#       },
#       {
#         "title_en": "Coronavirus: Peru cancels gender separation lockdown measure",
#         "description_en": "Peru cancelled a controversial measure restricting public movement by gender",
        
# "title_fr": "Coronavirus: le Pérou annule la mesure de verrouillage de la séparation des sexes",
# "description_fr": "Le Pérou a annulé une mesure controversée restreignant les mouvements publics par sexe",
#         "titleses": "Coronavirus: Perú cancela la medida de bloqueo de separación de género",
#         "descriptionses": "Perú canceló una medida controvertida que restringe el movimiento público por género",


#         "link": "https://www.straitstimes.com/world/americas/coronavirus-peru-cancels-gender-separation-lockdown-measure",
#         "progressive": "need to watch",
#         "category": "punitive",
#         "type": "temporary measure",
#         "country": "Peru",
#       },
#       {
#         "title_en": "Coronavirus: Malaysian men in shopping muddle amid lockdown",
#         "description_en": "Malasian men are unexpectedly finding themselves responsible for the grocery shopping.",
        
# "title_fr": "Coronavirus: des hommes malaisiens font leurs courses dans un contexte de verrouillage",
# "description_fr": "Des hommes malasiens se retrouvent de façon inattendue responsables de l'épicerie.",
#         "titleses": "Coronavirus: hombres malayos en problemas de compras en medio del encierro",
#         "descriptionses": "Los hombres de Malasia se encuentran inesperadamente responsables de las compras de comestibles",


#         "link": "https://www.bbc.com/news/blogs-news-from-elsewhere-52040256",
#         "progressive": "need to watch",
#         "category": "food",
#         "type": "observed response",
#         "country": "Malaysia",
#       },
#       {
#         "title_en": "Tajik Workers Face Dire Future As Russia Closes Borders Over Coronavirus",
#         "description_en": "Concerns over finanical repurcussions of extended border closure",
        
# "title_fr": "Les travailleurs tadjiks font face à un avenir sombre alors que la Russie ferme ses frontières sur le coronavirus",
# "description_fr": "Préoccupations concernant les répercussions financières de la fermeture prolongée des frontières",
#         "titleses": "Los trabajadores tayikos se enfrentan al futuro terrible a medida que Rusia cierra las fronteras sobre el coronavirus",
#         "descriptionses": "Preocupaciones por las repeticiones financieras de un cierre fronterizo extendido",


#         "link": "https://www.rferl.org/a/tajik-workers-face-dire-future-as-russia-closes-borders-over-coronavirus/30495815.html",
#         "progressive": "need to watch",
#         "category": "economy, labor",
#         "type": "observed response, temporary measure",
#         "country": "Tajikistan",
#       },
#       {
#         "title_en": "Economic Slowdown for 2020 and 2021",
#         "description_en": "Impacts already on trade, investment projects, tourism, revenue, national currency, labormigration",
        
# "title_fr": "Ralentissement économique pour 2020 et 2021",
# "description_fr": "Impacts déjà sur le commerce, les projets d'investissement, le tourisme, les revenus, la monnaie nationale, les migrations de main-d'œuvre",
#         "titleses": "Desaceleración económica para 2020 y 2021",
#         "descriptionses": "Impactos ya en el comercio, proyectos de inversión, turismo, ingresos, moneda nacional, migración laboral",


#         "link": "https://www.adb.org/news/tajikistan-economy-slow-down-sharply-2020-and-2021-weighed-covid-19-pandemic-adb",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Tajikistan",
#       },
#       {
#         "title_en": "Turkmenistan is denying the existence of Covid cases",
#         "description_en": "Turkmen have been arrested for discussing the pandemic in public and can't get reliable information from their government",
        
# "title_fr": "Le Turkménistan nie l'existence des affaires Covid",
# "description_fr": "Des Turkmènes ont été arrêtés pour avoir discuté de la pandémie en public et n'ont pas pu obtenir d'informations fiables de leur gouvernement",
#         "titleses": "Turkmenistán niega la existencia de casos Covid",
#         "descriptionses": "Los turcomanos han sido arrestados por discutir la pandemia en público y no pueden obtener información confiable de su gobierno",


#         "link": "https://thediplomat.com/2020/04/did-turkmenistan-really-ban-the-word-coronavirus/",
#         "progressive": "regressive",
#         "category": "healthcare, economy",
#         "type": "temporary measure, observed response",
#         "country": "Turkmenistan",
#       },
#       {
#         "title_en": "World Health Day in Turkmenistan",
#         "description_en": "State media reported that festivities were held as usual, but sources say that they were cancelled",
        
# "title_fr": "Journée mondiale de la santé au Turkménistan",
# "description_fr": "Les médias d'État ont rapporté que les festivités se déroulaient comme d'habitude, mais des sources disent qu'elles ont été annulées",
#         "titleses": "Día Mundial de la Salud en Turkmenistán",
#         "descriptionses": "Los medios estatales informaron que las festividades se realizaban como de costumbre, pero las fuentes dicen que fueron canceladas",


#         "link": "https://thediplomat.com/2020/04/turkmenistan-celebrates-world-health-day-unwisely/",
#         "progressive": "regressive",
#         "category": "healthcare, economy",
#         "type": "temporary measure, observed response",
#         "country": "Turkmenistan",
#       },
#       {
#         "title_en": "Kazakhstan Experiments With Surveillance Technology to Battle Coronavirus Pandemic",
#         "description_en": "Government is using SmartAstana tracking app and 'Sergek' video surveillance technology",
        
# "title_fr": "Le Kazakhstan expérimente une technologie de surveillance pour combattre la pandémie de coronavirus",
# "description_fr": "Le gouvernement utilise l'application de suivi SmartAstana et la technologie de surveillance vidéo Sergek",
#         "titleses": "Kazajstán experimenta con tecnología de vigilancia para combatir la pandemia de coronavirus",
#         "descriptionses": "El gobierno está utilizando la aplicación de seguimiento SmartAstana y la tecnología de videovigilancia 'Sergek'",


#         "link": "https://jamestown.org/program/kazakhstan-experiments-with-surveillance-technology-to-battle-coronavirus-pandemic/",
#         "progressive": "regressive",
#         "category": "digital surveillance, healthcare",
#         "type": "temporary measure",
#         "country": "Kazakhstan",
#       },
#       {
#         "title_en": "Government puts more pressure on Kazakh Civil Rights Activists amid covid spread",
#         "description_en": "Government concern of spotlight on covid response leads them to silence protesters",
        
# "title_fr": "Le gouvernement met davantage de pression sur les militants kazakhs des droits civiques au milieu de la propagation de la convoitise",
# "description_fr": "Les inquiétudes du gouvernement face à la réponse convoitée les conduisent à faire taire les manifestants",
#         "titleses": "El gobierno ejerce más presión sobre los activistas de derechos civiles de Kazajstán en medio de una propagación codiciosa",
#         "descriptionses": "La preocupación del gobierno por destacar las respuestas codiciosas los lleva a silenciar a los manifestantes",


#         "link": "https://www.rferl.org/a/kazakhstan-kazakh-activists-coronavirus-human-rights-economy/30542645.html",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "temporary measure, observed response",
#         "country": "Kazakhstan",
#       },
#       {
#         "title_en": "Kazakhstan announces $10bn economic package",
#         "description_en": "Government aims to help stave off impact of coronavirus as oil price war between Saudi Arabia and Russia makes it harder to stabilise economy.",
        
# "title_fr": "Le Kazakhstan annonce un paquet économique de 10 milliards de dollars",
# "description_fr": "Le gouvernement vise à aider à conjurer l'impact du coronavirus, car la guerre des prix du pétrole entre l'Arabie saoudite et la Russie rend plus difficile la stabilisation de l'économie.",
#         "titleses": " Kazajstán anuncia paquete económico de $ 10 mil millones",
#         "descriptionses": "El gobierno tiene como objetivo ayudar a evitar el impacto del coronavirus ya que la guerra de precios del petróleo entre Arabia Saudita y Rusia dificulta la estabilización de la economía",


#         "link": "https://www.aljazeera.com/news/2020/03/kazakhstan-announces-10bn-economic-package-200328091921790.html",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "temporary measure",
#         "country": "Kazakhstan",
#       },
#       {
#         "title_en": "Kazakhstan plans to increase monthly export quotas for wheat and flour",
#         "description_en": "Kazakhstan opted to limit exports last month to ensure steady domestic supply amid border closures and lockdowns",
        
# "title_fr": "Le Kazakhstan prévoit d'augmenter les quotas d'exportation mensuels de blé et de farine",
# "description_fr": "Le Kazakhstan a choisi de limiter ses exportations le mois dernier pour garantir un approvisionnement intérieur stable malgré les fermetures et les fermetures de frontières",
#         "titleses": "Kazajstán planea aumentar las cuotas mensuales de exportación de trigo y harina",
#         "descriptionses": "Kazajstán optó por limitar las exportaciones el mes pasado para garantizar un sumini,stro interno estable en medio de cierres y cierres de fronteras",


#         "link": "https://www.reuters.com/article/kazakhstan-grains-export-quotas/kazakhstan-to-increase-wheat-flour-export-quotas-in-coming-months-idUSL8N2BW317",
#         "progressive": "need to watch",
#         "category": "economy, food",
#         "type": "temporary measure",
#         "country": "Kazakhstan",
#       },
#       {
#         "title_en": "Lack of Refuge for Kazakhstan's Domestic Violence Survivors",
#         "description_en": "Most shelters stopped accepting new survivors due to the mandatory quarantine measures",
        
# "title_fr": "Absence de refuge pour les survivants de la violence domestique au Kazakhstan",
# "description_fr": "La plupart des refuges ont cessé d'accepter de nouveaux survivants en raison des mesures de quarantaine obligatoires",
#         "titleses": "Falta de refugio para los sobrevivientes de violencia doméstica de Kazajstán",
#         "descriptionses": "La mayoría de los refugios dejaron de aceptar nuevos sobrevivientes debido a las medidas de cuarentena obligatorias",


#         "link": "https://www.hrw.org/news/2020/04/09/lack-refuge-kazakhstans-domestic-violence-survivors",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "temporary measure, observed response",
#         "country": "Kazakhstan",
#       },
#       {
#         "title_en": "Weakened Legal Enforcement for Domestic Violence Cases",
#         "description_en": "Quarantine measures inhibit enforcement of laws that to begin with weren't well enforced",
        
# "title_fr": "Affaiblissement de l'application des lois pour les cas de violence domestique",
# "description_fr": "Les mesures de quarantaine empêchent l'application de lois qui, au départ, n'étaient pas bien appliquées",
#         "titleses": "Aplicación legal debilitada para casos de violencia doméstica",
#         "descriptionses": "Las medidas de cuarentena inhiben la aplicación de las leyes que, para empezar, no se aplicaron bien",


#         "link": "https://www.unwomen.org/en/news/stories/2020/4/from-where-i-stand-dina-smailova-on-covid-19",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "temporary measure, observed response",
#         "country": "Kazakhstan",
#       },
#       {
#         "title_en": "Kyrgyzstan has proposed measures to help economy but warns funds are limited",
#         "description_en": "Even with foreign aid government announces that it will not be able to respond like more developed countries have",

# "title_en": "Kyrgyzstan has proposed measures to help economy but warns funds are limited",
# "description_en": "Even with foreign aid government announces that it will not be able to respond like more developed countries have",
#         "titleses": "Kirguistán ha propuesto medidas para ayudar a la economía pero advierte que los fondos son limitados",
#         "descriptionses": "Incluso con ayuda exterior, el gobierno anuncia que no podrá responder como lo han hecho los países más desarrollados",


#         "link": "https://eurasianet.org/kyrgyzstan-government-promises-help-but-warns-of-limited-options",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "temporary measure",
#         "country": "Kyrgyzstan",
#       },
#       {
#         "title_en": "Curfew makes it more difficult to escape Domestic Violence",
#         "description_en": "",
        
# "title_fr": "Le couvre-feu, il est plus difficile d'échapper à la violence domestique",
# "description_fr": "",
#         "titleses": "El toque de queda hace que sea más difícil escapar de la violencia doméstica",
#         "descriptionses": "",


#         "link": "https://www.hrw.org/news/2020/04/08/women-risk-domestic-violence-during-kyrgyzstans-lockdown",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "temporary measure, observed response",
#         "country": "Kyrgyzstan",
#       },
#       {
#         "title_en": "MP raises issue of growth of domestic violence in quarantine",
#         "description_en": "",
        
# "title_fr": "Un député soulève la question de l'augmentation de la violence domestique en quarantaine",
# "description_fr": "",
#         "titleses": "MP plantea la cuestión del crecimiento de la violencia doméstica en cuarentena",
#         "descriptionses": "",


#         "link": "https://kaktus.media/doc/409757_depytat:_razreshaetsia_li_vyhodit_iz_doma_jertvam_semeynogo_nasiliia_pri_ygroze_jizni_video.html",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "temporary measure, observed response",
#         "country": "Kyrgyzstan",
#       },
#       {
#         "title_en": "Adopted Strict Regulations to Fight COVID-19",
#         "description_en": "country's law enforcement bodies and armed forces have been imbued with renewed powers",
        
# "title_fr": "Adoption d'un règlement strict pour lutter contre le COVID-19",
# "description_fr": "les forces de l'ordre et les forces armées du pays ont été dotés de pouvoirs renouvelés",
#         "titleses": "Adoptado un reglamento estricto para combatir COVID-19",
#         "descriptionses": "los cuerpos policiales y las fuerzas armadas del país han recibido poderes renovados",


#         "link": "https://thediplomat.com/2020/04/uzbekistan-adopts-strict-regulations-to-fight-covid-19/",
#         "progressive": "need to watch",
#         "category": "punitive, healthcare",
#         "type": "temporary measure",
#         "country": "Uzbekistan",
#       },
#       {
#         "title_en": "USAID has announced an additional contribution to Uzbekistan's efforts to combat COVID-19",
#         "description_en": "For priority areas to provide support for the needs of Uzbekistan's citizens, health professionals, and government",
        
# "title_fr": "L'USAID a annoncé une contribution supplémentaire aux efforts de l'Ouzbékistan pour lutter contre le COVID-19",
# "description_fr": "Pour les domaines prioritaires destinés à répondre aux besoins des citoyens, des professionnels de la santé et du gouvernement de l'Ouzbékistan",
#         "titleses": "USAID ha anunciado una contribución adicional a los esfuerzos de Uzbekistán para combatir COVID-19",
#         "descriptionses": "Para áreas prioritarias que brinden apoyo a las necesidades de los ciudadanos, profesionales de la salud y el gobierno de Uzbekistán",


#         "link": "https://www.usaid.gov/uzbekistan/press-releases/apr-2-2020-usaid-announces-850000-support-uzbekistan-efforts-covid-19",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Uzbekistan",
#       },
#       {
#         "title_en": "In Panama, coronavirus lockdown means separating men and women",
#         "description_en": "Statement describing Panamas gender segergation to limit number of individuals outside at once",
        
# "title_fr": "Au Panama, le verrouillage des coronavirus signifie la séparation des hommes et des femmes",
# "description_fr": "Déclaration décrivant la ségrégation sexuelle de Panamas pour limiter le nombre d'individus à l'extérieur à la fois",
#         "titleses": "En Panamá, el bloqueo del coronavirus significa separar hombres y mujeres",
#         "descriptionses": "Declaración que describe la segregación de género en Panamá para limitar el número de personas afuera a la vez",


#         "link": "https://www.cnn.com/2020/04/01/world/panama-coronavirus-sex-intl/index.html",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "temporary measure",
#         "country": "Panama",
#       },
#       {
#         "title_en": "The Socialist Party wants better support for women",
#         "description_en": "Socialist Party encourages national economic launch focus on female dominated professions to protect essential work.",
        
# "title_fr": "Le Parti socialiste veut un meilleur soutien aux femmes",
# "description_fr": "Le Parti socialiste encourage le lancement économique national sur les professions à prédominance féminine afin de protéger le travail essentiel.",
#         "titleses": "El Partido Socialista quiere un mejor apoyo para las mujeres",
#         "descriptionses": "El Partido Socialista alienta el enfoque de lanzamiento económico nacional en profesiones dominadas por mujeres para proteger el trabajo esencial",


#         "link": "https://www.24heures.ch/suisse/ps-veut-meilleur-soutien-femmes/story/10231664",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Switzerland",
#       },
#       {
#         "title_en": "Due to Coronavirus, the situation of the homeless becomes worrying",
#         "description_en": "Homelessness issues rise, women's shelter closed, gym offered as alternative, male shelter remains open.",
        
# "title_fr": "En raison du coronavirus, la situation des sans-abri devient préoccupante",
# "description_fr": "Les problèmes de sans-abrisme augmentent, le refuge pour femmes est fermé, le gymnase est proposé comme alternative, le refuge pour hommes reste ouvert.",
#         "titleses": "Debido a Coronavirus, la situación de las personas sin hogar se vuelve preocupante",
#         "descriptionses": "Los problemas de personas sin hogar aumentan, el refugio para mujeres está cerrado, el gimnasio se ofrece como alternativa, el refugio para hombres permanece abierto",


#         "link": "https://www.rts.ch/info/suisse/11205350-face-au-coronavirus-la-situation-des-sans-domicile-fixe-inquiete.html",
#         "progressive": "need to watch",
#         "category": "",
#         "type": "temporary measure",
#         "country": "Switzerland",
#       },
#       {
#         "title_en": "Consequences of the virus: Vulnerability for prostitutes with no revenue",
#         "description_en": "Sex workers banned from working, are left homeless, unknowing how to apply for welfare.",
        
# "title_fr": "Conséquences du virus: vulnérabilité pour les prostituées sans revenus",
# "description_fr": "Les travailleuses du sexe, interdites de travail, se retrouvent sans abri, sans savoir comment demander l'aide sociale.",
#         "titleses": "Consecuencias del virus: vulnerabilidad para las prostitutas sin ingresos",
#         "descriptionses": "A las trabajadoras sexuales se les prohíbe trabajar, quedan sin hogar, sin saber cómo solicitar asistencia social ofrecido como alternativa, el refugio masculino permanece abierto",


#         "link": "https://www.swissinfo.ch/fre/les-cons%C3%A9quences-de-la-pand%C3%A9mie_pr%C3%A9carit%C3%A9-ou-clandestinit%C3%A9-pour-des-prostitu%C3%A9es-sans-revenu/45679246",
#         "progressive": "regressive",
#         "category": "SRHR",
#         "type": "observed response",
#         "country": "Switzerland",
#       },
#       {
#         "title_en": "Isolation against the virus more difficult to control in prison",
#         "description_en": "No visits for prisoners, compensation: 20% salary bonus for prisoner workers and free postal services.",
        
# "title_fr": "L'isolement contre le virus plus difficile à contrôler en prison",
# "description_fr": "Pas de visites pour les prisonniers, compensation: 20% de bonus salarial pour les prisonniers et services postaux gratuits.",
#         "titleses": "El aislamiento contra el virus es más difícil de controlar en prisión",
#         "descriptionses": "No visitas para prisioneros, compensación: bonificación salarial del 20% para trabajadores presos y servicios postales gratuitos",


#         "link": "https://www.rts.ch/info/regions/vaud/11214097-l-isolement-contre-le-coronavirus-encore-plus-dur-a-gerer-en-prison.html",
#         "progressive": "progressive",
#         "category": "punitive",
#         "type": "temporary measure",
#         "country": "Switzerland",
#       },
#       {
#         "title_en": "Increase of home births due to Covid-19",
#         "description_en": "Augmented demand for home births from fears and hospital restrictions but needs lots of preparation.",
        
# "title_fr": "Augmentation des naissances à domicile en raison de Covid-19",
# "description_fr": "Augmentation de la demande d'accouchements à domicile due aux peurs et aux restrictions hospitalières mais nécessite beaucoup de préparation.",
#         "titleses": "Aumento de los nacimientos en el hogar debido a Covid-19",
#         "descriptionses": "Demanda aumentada de partos en el hogar por miedo y restricciones hospitalarias, pero necesita mucha preparación",


#         "link": "https://www.rts.ch/info/suisse/11191496-hausse-des-accouchements-a-domicile-en-raison-de-la-pandemie-de-covid-19.html",
#         "progressive": "need to watch",
#         "category": "SRHR",
#         "type": "observed response",
#         "country": "Switzerland",
#       },
#       {
#         "title_en": "Victims quarantined with their abuser, a nightmare",
#         "description_en": "Reports of domestic violence constant, but fears of increase encourages neighbour acting and call line.",
        
# "title_fr": "Les victimes mises en quarantaine avec leur agresseur, un cauchemar",
# "description_fr": "Les rapports de violence domestique sont constants, mais les craintes d'augmentation encouragent le voisin à agir et à appeler la ligne.",
#         "titleses": "Víctimas en cuarentena con su abusador, una pesadilla",
#         "descriptionses": "Los informes de violencia doméstica son constantes, pero el temor al aumento fomenta la actuación del vecino y la línea de llamada",


#         "link": "https://www.swissinfo.ch/fre/crise-du-coronavirus-_victimes-confin%C3%A9es-avec-leur-agresseur--le-cauchemar-/45646534",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Switzerland",
#       },
#       {
#         "title_en": "Domestic Violence: During Quarantine, Keep Dialogue Open at All Costs",
#         "description_en": "32% increase in DV, $1 million government expenditure for support centers and alerting in pharmacies.",
        
# "title_fr": "Violence domestique: pendant la quarantaine, gardez le dialogue ouvert à tout prix",
# "description_fr": "32% d'augmentation de la DV, 1 million de dollars de dépenses publiques pour les centres d'assistance et les alertes dans les pharmacies.",
#         "titleses": "Violencia doméstica: durante la cuarentena, mantener el diálogo abierto a toda costa",
#         "descriptionses": "aumento del 32% en DV, $ 1 millón de gastos gubernamentales para centros de apoyo y alertas en farmacias",


#         "link": "https://www.france24.com/fr/20200409-violences-conjugales-pendant-le-confinement-maintenir-%C3%A0-tout-prix-le-dialogue-avec-les-victimes",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response, temporary measure",
#         "country": "France",
#       },
#       {
#         "title_en": "Covid-19: What is planned for pregnant women during the quarantine?",
#         "description_en": "Strong encouragement of online medicine for pregnant women, with essential visits limited.",
        
# "title_fr": "Covid-19: Qu'est-ce qui est prévu pour les femmes enceintes pendant la quarantaine?",
# "description_fr": "Fort encouragement de la médecine en ligne pour les femmes enceintes, avec des visites essentielles limitées.",
#         "titleses": "Covid-19: ¿Qué se planea para las mujeres embarazadas durante la cuarentena?",
#         "descriptionses": "Fuerte promoción de la medicina en línea para mujeres embarazadas, con visitas esenciales limitadas",


#         "link": "https://www.liberation.fr/checknews/2020/03/19/covid-19-qu-est-il-prevu-pour-les-femmes-enceintes-pendant-le-confinement_1782158",
#         "progressive": "progressive",
#         "category": "SRHR, healthcare, gendered health impacts",
#         "type": "temporary measure",
#         "country": "France",
#       },
#       {
#         "title_en": "Corona Virus: A center will welcome infected mothers and babies",
#         "description_en": "Mother & Child Protection center will reform as a center for infected mothers and new babies",
        
# "title_fr": "Virus Corona: un centre accueillera les mères et les bébés infectés",
# "description_fr": "Le centre de protection de la mère et de l'enfant se transformera en centre pour les mères infectées et les nouveaux-nés",
#         "titleses": "Corona Virus: un centro dará la bienvenida a madres y bebés infectados",
#         "descriptionses": "El centro de protección maternoinfantil se reformará como un centro para madres infectadas y nuevos bebés",


#         "link": "https://www.ouest-france.fr/sante/virus/coronavirus/coronavirus-un-centre-pmi-de-l-essonne-va-accueillir-les-jeunes-meres-atteintes-de-covid-19-et-leurs-6805105",
#         "progressive": "progressive",
#         "category": "childcare",
#         "type": "temporary measure",
#         "country": "France",
#       },
#       {
#         "title_en": "Covid 19: Combining online work and child care, mission impossible?",
#         "description_en": "Parents finding childcare and online work impossible with government action being insuffient.",
        
# "title_fr": "Covid 19: Combiner travail en ligne et garde d'enfants, mission impossible?",
# "description_fr": "Les parents trouvent impossible la garde des enfants et le travail en ligne avec une action gouvernementale insuffisante.",
#         "titleses": "Covid 19: combinación de trabajo en línea y cuidado de niños, ¿misión imposible?",
#         "descriptionses": "Padres que consideran que el cuidado de niños y el trabajo en línea son imposibles debido a que la acción del gobierno es insuficiente",


#         "link": "https://france3-regions.francetvinfo.fr/auvergne-rhone-alpes/puy-de-dome/clermont-ferrand/coronavirus-covid-19-concilier-teletravail-garde-enfants-mission-impossible-1806632.html",
#         "progressive": "regressive",
#         "category": "childcare, economy",
#         "type": "observed response",
#         "country": "France",
#       },
#       {
#         "title_en": "Corona Virus: Quarantine and mental load",
#         "description_en": "Female employment at risk with no childcare available, male online work dominates in the household.",
        
# "title_fr": "Corona Virus: Quarantine and mental load",
# "description_fr": "Emploi féminin à risque sans garde d'enfants, le travail masculin en ligne domine dans le ménage.",
#         "titleses": "Virus Corona: Cuarentena y carga mental",
#         "descriptionses": "Empleo femenino en riesgo sin cuidado infantil disponible, el trabajo en línea masculino domina en el hogar",


#         "link": "https://www.forbes.fr/business/coronavirus-confinement-et-charge-mentale/?cn-reloaded=1",
#         "progressive": "regressive",
#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "France",
#       },
#       {
#         "title_en": "Covid-19: Caregivers are harassed by neighbours from fear of infection",
#         "description_en": "Medical workers receiving letters and threats from neighbours/landlords across the country from contamination fear",
        
# "title_fr": "Covid-19: les proches aidants sont harcelés par leurs voisins de peur d'être infectés",
# "description_fr": "Les travailleurs médicaux reçoivent des lettres et des menaces de voisins / propriétaires à travers le pays de peur de la contamination",
#         "titleses": "Covid-19: Los cuidadores son hostigados por vecinos por miedo a la infección",
#         "descriptionses": "Trabajadores médicos que reciben cartas y amenazas de vecinos / propietarios de todo el país por temor a la contaminación",


#         "link": "https://francais.rt.com/france/73558-covid-19-soignants-harceles-par-leurs-voisins-par-peur-contagion",
#         "progressive": "regressive",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "France",
#       },
#       {
#         "title_en": "France extends access to abortions during Covid-19 Pendemic",
#         "description_en": "Medical abortion pills may be prescribed over the phone or video consultation",
        
# "title_fr": "La France étend son accès aux avortements pendant la pendule Covid-19",
# "description_fr": "Des pilules pour l'avortement médicamenteux peuvent être prescrites par téléphone ou par vidéoconférence",
#         "titleses": "Francia extiende el acceso a los abortos durante la Península de Covid-19",
#         "descriptionses": "Las píldoras de aborto con medicamentos se pueden recetar por teléfono o por videoconferencia",


#         "link": "http://www.rfi.fr/en/france/20200411-france-extends-access-to-abortions-during-covid-19-pandemic",
#         "progressive": "progressive",
#         "category": "SRHR",
#         "type": "temporary measure",
#         "country": "France",
#       },
#       {
#         "title_en": "Against the coronavirus, women are mostly in the front line",
#         "description_en": "Although victims are majority male, fear female infection will rise from medical field female dominance.",
        
# "title_fr": "Contre le coronavirus, les femmes sont surtout en première ligne",
# "description_fr": "Bien que les victimes soient majoritairement des hommes, la crainte que l'infection féminine ne découle de la domination féminine dans le domaine médical.",
#         "titleses": "Contra el coronavirus, las mujeres están principalmente en primera línea",
#         "descriptionses": "Aunque las víctimas son mayoritariamente masculinas, el miedo a la infección femenina surgirá del dominio médico femenino en el campo",


#         "link": "https://www.bastamag.net/coronavirus-Covid19-femmes-soignantes-TheLancet-inegalites-epidemies-sante",
#         "progressive": "need to watch",
#         "category": "gendered health impacts",
#         "type": "observed response",
#         "country": "France",
#       },
#       {
#         "title_en": "Coronavirus in Belgium: Pharmacies as precious for domestic violence victims",
#         "description_en": "The city enforces pharmacy as safe locations for victims to reach the authorities.",
        
# "title_fr": "Coronavirus en Belgique: les pharmacies sont précieuses pour les victimes de violences domestiques",
# "description_fr": "La ville applique la pharmacie comme lieu sûr pour que les victimes atteignent les autorités.",
#         "titleses": "Coronavirus en Bélgica: las farmacias son preciosas para las víctimas de violencia doméstica",
#         "descriptionses": "La ciudad impone la farmacia como lugares seguros para que las víctimas lleguen a las autoridades",


#         "link": "https://www.rtl.be/info/belgique/societe/coronavirus-en-belgique-les-pharmacies-relais-precieux-pour-les-victimes-de-violences-conjugales-a-mons-1208638.aspx",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Belgium",
#       },
#       {
#         "title_en": "Women are strongly impacted by COVID-19: 4 explanations",
#         "description_en": "Increased domestic violence reports, front line dominated by women, higher financial consequences, longer work days.",
        
# "title_fr": "Les femmes sont fortement impactées par les explications de COVID-19: 4",
# "description_fr": "Augmentation du nombre de signalements de violences domestiques, ligne de front dominée par les femmes, conséquences financières plus élevées, journées de travail plus longues.",
#         "titleses": "Las explicaciones de COVID-19: 4 impactan fuertemente a las mujeres",
#         "descriptionses": "Aumento de los informes de violencia doméstica, primera línea dominada por mujeres, mayores consecuencias financieras, más días de trabajo",


#         "link": "https://www.solidaire.org/articles/les-femmes-durement-touchees-par-la-crise-du-coronavirus-la-preuve-par-4",
#         "progressive": "regressive",
#         "category": "labor, gendered health impacts, gender-based violence",
#         "type": "observed response",
#         "country": "Belgium",
#       },
#       {
#         "title_en": "Single mothers and quarantine: a challenge",
#         "description_en": "High numbers of single mothers makes practical and financial situations difficult.",
        
# "title_fr": "Mères célibataires et quarantaine: un défi",
# "description_fr": "Le nombre élevé de mères célibataires rend les situations pratiques et financières difficiles.",
#         "titleses": "Madres solteras y cuarentena: un desafío",
#         "descriptionses": "El elevado número de madres solteras dificulta las situaciones prácticas y financieras",


#         "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_meres-solo-et-confinement-la-galere?id=10462565",
#         "progressive": "regressive",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Belgium",
#       },
#       {
#         "title_en": "Coronavirus: Domestic violence risk increases due to quarantine",
#         "description_en": "Call line open for victims, but lack of spaces/shelters for women to leave abusers.",
        
# "title_fr": "Coronavirus: le risque de violence domestique augmente en raison de la quarantaine",
# "description_fr": "Ligne téléphonique ouverte pour les victimes, mais manque d'espaces / d'abris pour que les femmes quittent les agresseurs.",
#         "titleses": "Coronavirus: el riesgo de violencia doméstica aumenta debido a la cuarentena",
#         "descriptionses": "Línea de llamada abierta para víctimas, pero falta de espacios / refugios para que las mujeres dejen a los abusadores",


#         "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_coronavirus-le-risque-de-violences-conjugales-augmente-a-cause-du-confinement?id=10460606",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Belgium",
#       },
#       {
#         "title_en": "Latin America: Cut Prison Crowding to Fight COVID-19",
#         "description_en": "Human Rights Watch suggests alternatives to detention for pregnant women, girls, primary caregivers",
        
# "title_fr": "Amérique latine: réduire la surpopulation carcérale pour lutter contre le COVID-19",
# "description_fr": "Human Rights Watch propose des alternatives à la détention pour les femmes enceintes, les filles et les principaux dispensateurs de soins",
#         "titleses": "América Latina: reducir el hacinamiento en las cárceles para luchar contra COVID-19",
#         "descriptionses": "Human Rights Watch sugiere alternativas a la detención para mujeres embarazadas, niñas, cuidadores primarios",


#         "link": "https://www.hrw.org/news/2020/04/02/latin-america-cut-prison-crowding-fight-covid-19",
#         "progressive": "need to watch",
#         "category": "gendered health impacts",
#         "type": "observed response",
#         "country": "Latin America and the Caribbean",
#       },
#       {
#         "title_en": "Displaced women and girls in Latin America threatened by COVID-19",
#         "description_en": "Lack of rights-based health policies protecting group from hunger, homelessness, xenophobia, health services",
        
# "title_fr": "Des femmes et des filles déplacées en Amérique latine menacées par COVID-19",
# "description_fr": "Absence de politiques de santé fondées sur les droits protégeant le groupe contre la faim, le sans-abrisme, la xénophobie, les services de santé",
#         "titleses": "Mujeres y niñas desplazadas en América Latina amenazadas por COVID-19",
#         "descriptionses": "Falta de políticas de salud basadas en derechos que protejan al grupo del hambre, la falta de vivienda, la xenofobia, los servicios de salud",


#         "link": "https://www.opendemocracy.net/en/democraciaabierta/displaced-women-and-girls-latin-america-threatened-covid-19/",
#         "progressive": "regressive",
#         "category": "SRHR, gendered health impacts, race",
#         "type": "observed response",
#         "country": "Latin America and the Caribbean",
#       },
#       {
#         "title_en": "Quaratine: Alerts of increased cases of violence against young Feminist Statement or Analysis4kids",
#         "description_en": "Reaching and educating child violence victims through call lines and hashtags (mainly girls).",
        
# "title_fr": "Quaratine: Alertes d'augmentation des cas de violence contre les jeunes féministes Statement ou Analysis4kids",
# "description_fr": "Atteindre et éduquer les enfants victimes de violence par le biais de lignes téléphoniques et de hashtags (principalement des filles).",
#         "titleses": "Cuaratina: alertas de aumento de casos de violencia contra jóvenes feministas Declaración o Análisis4kids",
#         "descriptionses": "Llegar y educar a las víctimas de violencia infantil a través de líneas de llamada y hashtags (principalmente niñas)",


#         "link": "https://www.lanacion.com.ar/comunidad/cuarentena-alertan-aumento-casos-violencia-ninos-ninas-nid2352289",
#         "progressive": "progressive",
#         "category": "childcare, gender-based violence",
#         "type": "temporary measure",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Mitigating Risks and Adjusting to Isolation: How Argentina is Dealing",
#         "description_en": "Sixteen reported deaths of domestic violence in three weeks, violence reports up by 39%",
        
# "title_fr": "Atténuer les risques et s'adapter à l'isolement: comment l'Argentine s'en sort",
# "description_fr": "Seize personnes ont signalé des décès dus à la violence domestique en trois semaines, les rapports de violence ont augmenté de 39%",
#         "titleses": "Mitigación de riesgos y adaptación al aislamiento: cómo está lidiando Argentina",
#         "descriptionses": "Dieciséis reportaron muertes por violencia doméstica en tres semanas, la violencia reporta un aumento del 39%",


#         "link": "https://www.orfonline.org/expert-speak/mitigating-risks-and-adjusting-to-isolation-how-argentina-is-dealing-with-covid19-64567/",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Argentinian Justice suggests house arrest for COVID-19 for special prisoners",
#         "description_en": "Argentine Government recommends alternative measures for imprisoned pregnant women or women imprisoned with their children",
        
# "title_fr": "La justice argentine propose une assignation à résidence pour COVID-19 pour des prisonniers spéciaux",
# "description_fr": "Le gouvernement argentin recommande des mesures alternatives aux femmes enceintes incarcérées ou aux femmes incarcérées avec leurs enfants",
#         "titleses": "La justicia argentina sugiere arresto domiciliario por COVID-19 para presos especiales",
#         "descriptionses": "El gobierno argentino recomienda medidas alternativas para las mujeres embarazadas encarceladas o las mujeres encarceladas con sus hijos",


#         "link": "https://www.vistazo.com/seccion/mundo/actualidad-mundial/justicia-argentina-sugiere-prision-domiciliaria-por-covid-19-en",
#         "progressive": "need to watch",
#         "category": "gendered health impacts",
#         "type": "observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "What to do if you are pregnant during this epidemic?",
#         "description_en": "During pandemic, pregnancy, childbirth, newborn care are all classified as essential and must be maintained",
        
# "title_fr": "Que faire si vous êtes enceinte pendant cette épidémie?",
# "description_fr": "Pendant une pandémie, la grossesse, l'accouchement, les soins aux nouveau-nés sont tous classés comme essentiels et doivent être maintenus",
#         "titleses": "¿Qué hacer si está embarazada durante esta epidemia?",
#         "descriptionses": "Durante la pandemia, el embarazo, el parto, el cuidado del recién nacido se clasifican como esenciales y deben mantenerse",


#         "link": "https://www.animalpolitico.com/2020/04/que-hacer-epidemia-covid-si-estas-embarazada/",
#         "progressive": "progressive",
#         "category": "SRHR, gendered health impacts",
#         "type": "policy or law",
#         "country": "Mexico",
#       },
#       {
#         "title_en": "Mexico's prostitutes homeless as coronavirus keeps clients home, shuts hotels",
#         "description_en": "Hotels shutting leave sex workers hungry and on the street, highly vulnerable, insufficient government assistance",
        
# "title_fr": "Les prostituées mexicaines sans abri, car le coronavirus garde les clients à la maison et ferme les hôtels",
# "description_fr": "La fermeture d'hôtels laisse les travailleurs du sexe affamés et dans la rue, très vulnérables, aide gouvernementale insuffisante",
#         "titleses": "Las prostitutas de México sin hogar como coronavirus mantienen a los clientes en casa, cierran hoteles",
#         "descriptionses": "El cierre de los hoteles deja a las trabajadoras sexuales hambrientas y en la calle, muy vulnerables, asistencia gubernamental insuficiente",


#         "link": "https://www.reuters.com/article/us-health-coronavirus-mexico-sex-workers/mexicos-prostitutes-end-up-homeless-as-coronavirus-keeps-clients-at-home-shuts-hotels-idUSKCN21R26C",
#         "progressive": "regressive",
#         "category": "SRHR, economy, gendered health impacts",
#         "type": "observed response",
#         "country": "Mexico",
#       },
#       {
#         "title_en": "Colombian women's football suffers bigger cuts than men's game",
#         "description_en": "Only three clubs female players contracts, leaving remaining female players without social security during crisis.",
        
# "title_fr": "Le football féminin colombien subit des coupes plus importantes que le football masculin",
# "description_fr": "Seuls trois clubs de joueuses contractent, laissant les joueuses restantes sans sécurité sociale pendant la crise.",
#         "titleses": "El fútbol femenino colombiano sufre cortes mayores que el de los hombres",
#         "descriptionses": "Solo tres clubes contratan jugadoras, dejando a las jugadoras restantes sin seguridad social durante la crisis",


#         "link": "https://www.dw.com/en/colombian-womens-football-cries-foul-after-suffering-bigger-cuts-than-mens-game/a-53161998",
#         "progressive": "regressive",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "To beat the virus, Colombia tries separating men and women",
#         "description_en": "Men and women only allowed out on alternate days in Bogota to reduce crowds.",
        
# "title_fr": "Pour vaincre le virus, la Colombie essaie de séparer les hommes et les femmes",
# "description_fr": "Les hommes et les femmes ne sont autorisés à sortir que tous les deux jours à Bogota pour réduire la foule.",
#         "titleses": "Para vencer al virus, Colombia intenta separar a hombres y mujeres",
#         "descriptionses": "Los hombres y las mujeres solo pueden salir en días alternos en Bogotá para reducir las multitudes",


#         "link": "https://www.nytimes.com/2020/04/15/world/americas/virus-colombia-bogota-men-women.html",
#         "progressive": "need to watch",
#         "category": "",
#         "type": "temporary measure",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Lockdown in Colombia will affect the right to abortion",
#         "description_en": "Access to sexual and reproductive health services hindered for colombian and venezuelan women, mainly abortions.",
        
# "title_fr": "Le verrouillage en Colombie affectera le droit à l'avortement",
# "description_fr": "L'accès aux services de santé sexuelle et reproductive est entravé pour les femmes colombiennes et vénézuéliennes, principalement les avortements.",
#         "titleses": "El bloqueo en Colombia afectará el derecho al aborto",
#         "descriptionses": "El acceso a los servicios de salud sexual y reproductiva obstaculizó a las mujeres colombianas y venezolanas, principalmente los abortos",


#         "link": "https://Globalvoices.org/2020/04/03/lockdown-in-colombia-will-affect-the-right-to-abortion-says-human-rights-lawyer/",
#         "progressive": "regressive",
#         "category": "SRHR, gender-based violence",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "COVID-19 delays gender data collection on Colombian border",
#         "description_en": "Women's groups and organisations hindered data collection for womens empowerment, delaying gender equality advancement.",
        
# "title_fr": "COVID-19 retarde la collecte de données sur le genre à la frontière colombienne",
# "description_fr": "Les groupes et organisations de femmes ont entravé la collecte de données pour l'autonomisation des femmes, retardant la promotion de l'égalité des sexes.",
#         "titleses": "COVID-19 retrasa la recopilación de datos de género en la frontera colombiana",
#         "descriptionses": "Los grupos y organizaciones de mujeres obstaculizaron la recopilación de datos para el empoderamiento de las mujeres, retrasando el avance de la igualdad de género",


#         "link": "https://www.devex.com/news/covid-19-delays-gender-data-collection-on-colombian-border-96839",
#         "progressive": "regressive",
#         "category": "",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Three women murdered on first day of Colombia's Coronavirus lockdown",
#         "description_en": "Domestic violence reports have tripled since the quarantine, feminicides augmented.",
        
# "title_fr": "Trois femmes assassinées le premier jour de la fermeture du coronavirus en Colombie",
# "description_fr": "Les signalements de violences domestiques ont triplé depuis la mise en quarantaine, les féminicides ont augmenté.",
#         "titleses": "Tres mujeres asesinadas el primer día del encierro de Coronavirus en Colombia",
#         "descriptionses": "Los informes de violencia doméstica se han triplicado desde la cuarentena, los feminicidios aumentaron",


#         "link": "https://colombiareports.com/three-women-murdered-on-first-day-of-colombias-coronavirus-lockdown/",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Are women the most vulnerable to COVID-19?",
#         "description_en": "High percentage of female informal employment, causing financial instability, low incomes, low protection mechanisms",
        
# "title_fr": "Les femmes sont-elles les plus vulnérables au COVID-19?",
# "description_fr": "Pourcentage élevé d'emplois informels féminins, entraînant une instabilité financière, de faibles revenus, de faibles mécanismes de protection",
#         "titleses": "¿Son las mujeres las más vulnerables a COVID-19?",
#         "descriptionses": "Alto porcentaje de empleo informal femenino, que causa inestabilidad financiera, bajos ingresos, mecanismos de protección bajos",


#         "link": "https://www.telesurtv.net/news/mujeres-mas-vulnerables-pandemia-coronavirus-20200408-0051.html",
#         "progressive": "regressive",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "COVID-19 and its impacts on the lives of women",
#         "description_en": "Call for collective action for economic inclusion, strenghtened support, programs for women during crisis and future",
        
# "title_fr": "COVID-19 et ses impacts sur la vie des femmes",
# "description_fr": "Appel à une action collective pour l'inclusion économique, un soutien renforcé, des programmes pour les femmes en période de crise et d'avenir",
#         "titleses": "COVID-19 y sus impactos en la vida de las mujeres",
#         "descriptionses": "Llamado a la acción colectiva para la inclusión económica, apoyo reforzado, programas para mujeres durante la crisis y el futuro",


#         "link": "https://www.elespectador.com/opinion/covid-19-y-su-impacto-en-la-vida-de-las-mujeres-columna-911064",
#         "progressive": "progressive",
#         "category": "labor",
#         "type": "temporary measure",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Colombian organisations mobilise to help the most vulnerable",
#         "description_en": "Collective action initiatives, one by Trans Community Network to collect funds/food for sex workers",
        
# "title_fr": "Les organisations colombiennes se mobilisent pour aider les plus vulnérables",
# "description_fr": "Initiatives d'action collective, une par Trans Community Network pour collecter des fonds / de la nourriture pour les professionnel (le) s du sexe",
#         "titleses": "Las organizaciones colombianas se movilizan para ayudar a los más vulnerables",
#         "descriptionses": "Iniciativas de acción colectiva, una de Trans Community Network para recaudar fondos / alimentos para trabajadoras sexuales",


#         "link": "https://www.france24.com/es/20200321-covid19-colombia-organizaciones-ayuda-vulnerables",
#         "progressive": "progressive",
#         "category": "SRHR",
#         "type": "temporary measure",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Covid-19 subsidy in Chile: See how you can benefit",
#         "description_en": "Subsidy of aproximately $60USD to parents, caregivers and extended to pregnant women.",
        
# "title_fr": "Subvention Covid-19 au Chili: voyez comment vous pouvez en bénéficier",
# "description_fr": "Subvention d'environ 60 $ US aux parents, tuteurs et étendue aux femmes enceintes.",
#         "titleses": "Subsidio Covid-19 en Chile: vea cómo puede beneficiarse",
#         "descriptionses": "Subsidio de aproximadamente $ 60USD a padres, cuidadores y extendido a mujeres embarazadas",


#         "link": "https://libero.pe/ocio/1553605-bono-ayuda-familiar-covid-19-chile-2020-rut-revisa-beneficiario-dv-rut-ips-fecha-pago-familiar-banco",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "temporary measure",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Quarantine in Chile: Domestic violence cases increase by 70%",
#         "description_en": "Reported 70% increase in domestic violence reports after first week of quarantine, promoting call line.",
        
# "title_fr": "Quarantaine au Chili: les cas de violence domestique augmentent de 70%",
# "description_fr": "Une augmentation de 70% des signalements de violences domestiques a été signalée après la première semaine de quarantaine, faisant la promotion de la ligne téléphonique.",
#         "titleses": "Cuarentena en Chile: los casos de violencia doméstica aumentan en un 70%",
#         "descriptionses": "Se informó un aumento del 70% en los informes de violencia doméstica después de la primera semana de cuarentena, promoviendo la línea de llamada",


#         "link": "https://larepublica.pe/genero/2020/04/10/cuarentena-en-chile-denuncias-por-violencia-de-genero-aumentaron-en-un-70-atmp/",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Subsidy of 380 soles: And you could not receive it?",
#         "description_en": "Government subsidy to financially independent workers. Subsidy only receivable by woman of family.",
        
# "title_fr": "Subvention de 380 semelles: et vous ne pouviez pas la recevoir?",
# "description_fr": "Subvention gouvernementale aux travailleurs financièrement indépendants. Subvention à recevoir uniquement par la femme de la famille.",
#         "titleses": "Subsidio de 380 soles: ¿Y no pudo recibirlo?",
#         "descriptionses": "Subvención del gobierno a trabajadores económicamente independientes. Subvención que solo puede recibir una mujer de familia",


#         "link": "https://mag.elcomercio.pe/respuestas/bono-380-soles-que-hacer-si-mi-familiar-no-ha-podido-cobrar-bono-yo-me-quedo-en-casa-por-razones-de-fuerza-mayor-nnda-nnlt-noticia/",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "temporary measure",
#         "country": "Peru",
#       },
#       {
#         "title_en": "Peru is Quarantining Men and Women on Different Days",
#         "description_en": "Policy for gender-specific days to leave the home. Concerns for LGBTQ+ community.",
        
# "title_fr": "Le Pérou met des hommes et des femmes en quarantaine à des jours différents",
# "description_fr": "Politique concernant les jours spécifiques au sexe pour quitter le domicile. Préoccupations de la communauté LGBTQ +.",
#         "titleses": "Perú está poniendo en cuarentena a hombres y mujeres en diferentes días",
#         "descriptionses": "Política para días específicos de género para salir de la casa. Preocupaciones para la comunidad LGBTQ +",


#         "link": "https://www.businessinsider.com/peru-quarantining-men-and-women-different-days-2020-4",
#         "progressive": "need to watch",
#         "category": "",
#         "type": "temporary measure",
#         "country": "Peru",
#       },
#       {
#         "title_en": "Covid-19: How is the State Protecting Quaratined Domestic Violence Victims?",
#         "description_en": "Government declares DV victims can seek police intervention, call line #100 and 14 shelters provided.",
        
# "title_fr": "Covid-19: Comment l'État protège-t-il les victimes de violence domestique dans la quarantaine?",
# "description_fr": "Le gouvernement déclare que les victimes de DV peuvent demander l'intervention de la police, appeler la ligne n ° 100 et 14 abris fournis.",
#         "titleses": "Covid-19: ¿Cómo protege el Estado a las víctimas de violencia doméstica en cuarentena?",
#         "descriptionses": "El gobierno declara que las víctimas de DV pueden buscar intervención policial, llame a la línea # 100 y 14 refugios proporcionados",


#         "link": "https://rpp.pe/politica/estado/covid-19-en-medio-de-la-cuarentena-como-protege-el-estado-a-las-victimas-de-violencia-familiar-noticia-1254585?ref=rpp",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "policy or law",
#         "country": "Peru",
#       },
#       {
#         "title_en": "Transgender ID clash with police checks during gender restricted movements",
#         "description_en": "Police demands ID for transgender individuals during gender separated quarantine- high discrimination/ abuse of power.",
        
# "title_fr": "Affrontement entre personnes transgenres et contrôles de police lors de mouvements à caractère sexiste",
# "description_fr": "La police exige une pièce d'identité pour les personnes transgenres pendant une quarantaine séparée selon le sexe - forte discrimination / abus de pouvoir.",
#         "titleses": "Choque de ID transgénero con controles policiales durante los movimientos de género restringido",
#         "descriptionses": "La policía exige una identificación para las personas transgénero durante la cuarentena separada por género: alta discriminación / abuso de poder",


#         "link": "https://peru21.pe/lima/coronavirus-lgtb-peru-i-coronavirus-peru-policia-exige-dni-a-personas-transgenero-pese-a-aclaracion-del-presidente-martin-vizcarra-video-video-pandemia-coronavirus-covid-19-emergencia-sanitaria-estado-de-emergencia-nacional-noticia/",
#         "progressive": "regressive",
#         "category": "SRHR",
#         "type": "observed response",
#         "country": "Peru",
#       },
#       {
#         "title_en": "Protocol for Women in Ecuador who face a double pandemic",
#         "description_en": "Reports of DV have rapidly decreased, so safer call lines installed, 700 psycologists hired.",
        
# "title_fr": "Protocole pour les femmes en Équateur confrontées à une double pandémie",
# "description_fr": "Les rapports de DV ont rapidement diminué, donc des lignes d'appel plus sûres ont été installées, 700 psychologues ont été embauchés.",
#         "titleses": "Protocolo para mujeres en Ecuador que enfrentan una doble pandemia",
#         "descriptionses": "Los informes de DV han disminuido rápidamente, por lo que se instalaron líneas de llamada más seguras, se contrataron 700 psicólogos",


#         "link": "http://laoferta.com/2020/04/12/protocolo-de-auxilio-para-las-mujeres-en-ecuador-que-afrontan-una-doble-pandemia/",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "temporary measure, observed response",
#         "country": "Ecuador",
#       },
#       {
#         "title_en": "Corona virus: Cynthia Viteri donates her salary to pregnancy attention",
#         "description_en": "Mayor of Guayaquil donates salary to help pregnancies as the health system has collpased.",
        
# "title_fr": "Virus Corona: Cynthia Viteri fait don de son salaire à l'attention de la grossesse",
# "description_fr": "Le maire de Guayaquil fait don d'un salaire pour aider les grossesses alors que le système de santé s'est effondré.",
#         "titleses": "Virus Corona: Cynthia Viteri dona su salario para atención del embarazo",
#         "descriptionses": "El alcalde de Guayaquil dona un salario para ayudar a los embarazos a medida que el sistema de salud ha colapsado",


#         "link": "https://www.eluniverso.com/guayaquil/2020/04/12/nota/7812021/coronavirus-ecuador-alcaldesa-cynthia-viteri-donara-su-sueldo",
#         "progressive": "regressive",
#         "category": "healthcare, gendered health impacts",
#         "type": "temporary measure, observed response",
#         "country": "Ecuador",
#       },
#       {
#         "title_en": "More obstacles during pandemic for safe abortions in Latin America",
#         "description_en": "Legal abortions very difficult to obtain, organisations help communicate for access to termination medicine.",
        
# "title_fr": "Plus d'obstacles pendant la pandémie pour des avortements sans risque en Amérique latine",
# "description_fr": "Les avortements légaux sont très difficiles à obtenir, les organisations aident à communiquer pour accéder aux médicaments de terminaison.",
#         "titleses": "Más obstáculos durante la pandemia para abortos seguros en América Latina",
#         "descriptionses": "Los abortos legales son muy difíciles de obtener, las organizaciones ayudan a comunicarse para acceder a la medicina de terminación",


#         "link": "https://elpais.com/sociedad/2020-04-09/la-pandemia-obstaculiza-aun-mas-el-aborto-seguro-en-america-latina.html",
#         "progressive": "need to watch",
#         "category": "SRHR, healthcare",
#         "type": "observed response",
#         "country": "Ecuador",
#       },
#       {
#         "title_en": "Feminicide during the quarantine for pandemic in Panama",
#         "description_en": "Two women murdered, reported feminicides on the rise in 2020, fear the worst during quarantine.",
        
# "title_fr": "Féminicide pendant la quarantaine d'une pandémie au Panama",
# "description_fr": "Deux femmes assassinées, des féminicides signalés en hausse en 2020, craignent le pire pendant la quarantaine.",
#         "titleses": "Feminicidio durante la cuarentena por pandemia en Panamá",
#         "descriptionses": "Dos mujeres asesinadas, reportaron feminicidios en aumento en 2020, temen lo peor durante la cuarentena",


#         "link": "https://www.elmostrador.cl/braga/2020/04/20/asesinatos-de-mujeres-durante-confinamiento-por-pandemia-impactan-en-panama/",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Panama",
#       },
#       {
#         "title_en": "The new discrimination LGBTI by Covid-19",
#         "description_en": "Separated outdoor days by identity card sex, declares Minister of Health. Fear of LGBTI community.",
        
# "title_fr": "La nouvelle discrimination LGBTI par Covid-19",
# "description_fr": "Séjours extérieurs séparés par sexe sur la carte d'identité, déclare le ministre de la Santé. Peur de la communauté LGBTI.",
#         "titleses": "La nueva discriminación LGBTI por Covid-19",
#         "descriptionses": "Días separados al aire libre por sexo de la tarjeta de identidad, declara Ministro de Salud. Temor de la comunidad LGBTI",


#         "link": "https://www.lavanguardia.com/participacion/lectores-corresponsales/20200405/48284394819/panama-secregacion-sexo-cuarentena-covid-19-discriminacion-lgbti.html",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "temporary measure, observed response",
#         "country": "Panama",
#       },
#       {
#         "title_en": "How the gender restrictions will work in Panama",
#         "description_en": "Specific gender days and departure time based on ID number and sex to get essential goods.",
        
# "title_fr": "Comment les restrictions de genre fonctionneront au Panama",
# "description_fr": "Jours et heures de départ spécifiques au sexe en fonction du numéro d'identification et du sexe pour obtenir les biens essentiels.",
#         "titleses": "Cómo funcionarán las restricciones de género en Panamá",
#         "descriptionses": "Días específicos de género y hora de salida basados ​​en el número de identificación y sexo para obtener bienes esenciales",


#         "link": "https://peru21.pe/mundo/coronavirus-panamai-periodista-detalla-como-funciona-la-restriccion-de-transito-segun-el-sexo-en-panama-fotos-pandemia-coronavirus-covid-19-emergencia-sanitaria-estado-de-emergencia-nacional-lgtb-noticia/",
#         "progressive": "need to watch",
#         "category": "",
#         "type": "temporary measure",
#         "country": "Panama",
#       },
#       {
#         "title_en": "Pharmacy brings forward $3 million USD for maternal health",
#         "description_en": "Pharmacy $3 million USD to avoid maternal deaths, by improving pregnant women services during quarantine.",
        
# "title_fr": "La pharmacie avance 3 millions USD pour la santé maternelle",
# "description_fr": "Pharmacie 3 millions USD pour éviter les décès maternels, en améliorant les services aux femmes enceintes pendant la quarantaine.",
#         "titleses": "Farmacia adelanta $ 3 millones de dólares para la salud materna",
#         "descriptionses": "Farmacia $ 3 millones de dólares para evitar muertes maternas, al mejorar los servicios de mujeres embarazadas durante la cuarentena",


#         "link": "https://www.laestrella.com.pa/nacional/200420/farmaceutica-aportara-3-millones-atencion-critica-madres-covid-19",
#         "progressive": "progressive",
#         "category": "gendered health impacts",
#         "type": "temporary measure",
#         "country": "Costa Rica, El Salvador, Panama",
#       },
#       {
#         "title_en": "Women, reprecussions of quarantine and domestic violence",
#         "description_en": "Observed increased domestic violence, they question why Costa Rica has not implemented mechanisms for women.",
        
# "title_fr": "Les femmes, répercussions de la quarantaine et de la violence domestique",
# "description_fr": "Observés une augmentation de la violence domestique, ils se demandent pourquoi le Costa Rica n'a pas mis en place de mécanismes pour les femmes.",
#         "titleses": "Mujeres, represalias de cuarentena y violencia doméstica",
#         "descriptionses": "Se observó un aumento de la violencia doméstica, se preguntan por qué Costa Rica no ha implementado mecanismos para las mujeres",


#         "link": "https://www.elpais.cr/2020/04/17/mujeres-repercusiones-del-confinamiento-a-raiz-del-coronavirus-y-violencia-domestica/",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Costa Rica",
#       },
#       {
#         "title_en": "Pregnant, birth and lactaction in times of coronavirus",
#         "description_en": "Maternity services received advice for safe births. Although women are increasingly choosing home births.",
        
# "title_fr": "Enceinte, naissance et lactation en période de coronavirus",
# "description_fr": "Les services de maternité ont reçu des conseils pour des accouchements sans risque. Bien que les femmes choisissent de plus en plus les accouchements à domicile.",
#         "titleses": "Embarazada, nacimiento y lactancia en tiempos de coronavirus",
#         "descriptionses": "Los servicios de maternidad recibieron consejos para partos seguros. Aunque las mujeres cada vez eligen más partos en el hogar",


#         "link": "https://www.lostiempos.com/doble-click/vida/20200329/embarazo-parto-lactancia-tiempos-coronavirus",
#         "progressive": "need to watch",
#         "category": "SRHR",
#         "type": "temporary measure",
#         "country": "Costa Rica",
#       },
#       {
#         "title_en": "Cuban mother and daughters die in hands of former partner",
#         "description_en": "First reported feminicide in the midde of the Covid-19 pandemic, warns augmentation of domestic violence.",
        
# "title_fr": "Une mère et des filles cubaines meurent entre les mains de leur ancien partenaire",
# "description_fr": "Le premier féminicide signalé au milieu de la pandémie de Covid-19, met en garde contre l'augmentation de la violence domestique.",
#         "titleses": "Madre e hijas cubanas mueren en manos de su ex pareja",
#         "descriptionses": "El primer feminicidio denunciado en medio de la pandemia de Covid-19, advierte el aumento de la violencia doméstica",


#         "link": "https://diariodecuba.com/cuba/1587466942_16976.html",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Cuba",
#       },
#       {
#         "title_en": "Violence and Covid-19: disputed abuse",
#         "description_en": "Fear of increasing domestic violence, victim psycholocical and legal support via phone and mail available.",
        
# "title_fr": "Violence et Covid-19: abus contestés",
# "description_fr": "Peur de l'augmentation de la violence domestique, assistance psycholocale et juridique des victimes par téléphone et courrier disponible.",
#         "titleses": "Violencia y Covid-19: abuso en disputa",
#         "descriptionses": "Temor de aumentar la violencia doméstica, apoyo psicológico y legal a las víctimas por teléfono y correo disponible",


#         "link": "http://www.juventudrebelde.cu/suplementos/sexo-sentido/2020-04-14/violencia-y-covid-19-flagelos-en-disputa",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Cuba",
#       },
#       {
#         "title_en": "Latin America fights against domestic violence during Covid-19",
#         "description_en": "Two civil society initiatives: two independent online counseling platforms via phone, email and social media.",
        
# "title_fr": "L'Amérique latine lutte contre la violence domestique pendant Covid-19",
# "description_fr": "Deux initiatives de la société civile: deux plateformes de conseil en ligne indépendantes par téléphone, e-mail et médias sociaux.",
#         "titleses": "América Latina lucha contra la violencia doméstica durante Covid-19",
#         "descriptionses": "Dos iniciativas de la sociedad civil: dos plataformas independientes de asesoramiento en línea por teléfono, correo electrónico y redes sociales",


#         "link": "https://www.dw.com/es/am%C3%A9rica-latina-lucha-contra-la-violencia-de-g%C3%A9nero-en-tiempos-del-coronavirus/a-52971832",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Cuba",
#       },
#       {
#         "title_en": "Cambodia: COVID-19 Clampdown on Free Speech",
#         "description_en": "HRW has documented the arrests of 17 people since late January 2020 for sharing information about the coronavirus in Cambodia, including 5 women and one 14-year old girl.",
        
# "title_fr": "Cambodge: réduction de la liberté d'expression de COVID-19",
# "description_fr": "HRW a documenté l'arrestation de 17 personnes depuis fin janvier 2020 pour avoir partagé des informations sur le coronavirus au Cambodge, dont 5 femmes et une fille de 14 ans.",
#         "titleses": "Camboya: COVID-19 Reprimir la libertad de expresión",
#         "descriptionses": "HRW ha documentado las detenciones de 17 personas desde fines de enero de 2020 por compartir información sobre el coronavirus en Camboya, incluidas 5 mujeres y una niña de 14 años",


#         "link": "https://www.hrw.org/news/2020/03/24/cambodia-covid-19-clampdown-free-speech#",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "observed response",
#         "country": "Cambodia",
#       },
#       {
#         "title_en": "Prioritize the needs of those at increased risk of gender-based violence in responding to the COVID-19 situation",
#         "description_en": "Civil society organiztions in Cambodia wrote open letter to government to express concern for gendered issues to be exacerbated during and after the current pandemic.",
        
# "title_fr": "Donner la priorité aux besoins des personnes exposées à un risque accru de violence sexiste dans la réponse à la situation COVID-19",
# "description_fr": "Les organisations de la société civile au Cambodge ont écrit une lettre ouverte au gouvernement pour exprimer leur inquiétude quant aux problèmes liés au genre à exacerber pendant et après la pandémie actuelle.",
#         "titleses": "Priorizar las necesidades de las personas con mayor riesgo de violencia de género al responder a la situación COVID-19",
#         "descriptionses": "Las organizaciones de la sociedad civil en Camboya escribieron una carta abierta al gobierno para expresar su preocupación por los problemas de género que se exacerbarán durante y después de la pandemia actual",


#         "link": "https://www.business-humanrights.org/en/cambodia-15-ngos-call-on-govt-to-prioritise-the-needs-of-people-at-increased-risk-of-gender-based-violence-in-responding-to-the-covid-19",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Cambodia",
#       },
#       {
#         "title_en": "Scared of Coronavirus, Pregnant Women Avoid Hospitals",
#         "description_en": "Large numbers of pregnant women are staying away from hospitals and cancel prenatal appointments because of fears of infection.",
        
# "title_fr": "Peur du coronavirus, les femmes enceintes évitent les hôpitaux",
# "description_fr": "Un grand nombre de femmes enceintes restent loin des hôpitaux et annulent les rendez-vous prénataux en raison de la crainte d'une infection.",
#         "titleses": "Miedo al coronavirus, las mujeres embarazadas evitan los hospitales",
#         "descriptionses": "Un gran número de mujeres embarazadas se mantienen alejadas de los hospitales y cancelan las citas prenatales por temor a la infección",


#         "link": "https://www.voacambodia.com/a/scared-of-coronavirus-pregnant-women-avoid-hospitals-/5368829.html",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Cambodia",
#       },
#       {
#         "title_en": "Myanmar Factory Uses COVID-19 to Union Bust",
#         "description_en": "Myan Mode garment factory permanently fired all 520 union members (mostly young women) and withheld March wages, citing a decrease in orders due to COVID-19",
        
# "title_fr": "Myanmar Factory utilise COVID-19 pour faire exploser l'Union",
# "description_fr": "L'usine de confection de Myan Mode a licencié en permanence les 520 membres du syndicat (principalement des jeunes femmes) et retenu les salaires de mars, invoquant une baisse des commandes en raison de COVID-19",
#         "titleses": "La fábrica de Myanmar utiliza COVID-19 para el busto de la Unión",
#         "descriptionses": "La fábrica de ropa Myan Mode despidió permanentemente a todos los 520 miembros del sindicato (en su mayoría mujeres jóvenes) y retuvo los salarios de marzo, citando una disminución en los pedidos debido a COVID-19",


#         "link": "https://www.solidaritycenter.org/myanmar-factory-uses-covid-19-to-union-bust/",
#         "progressive": "regressive",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "MSWRR to draw project plan for COVID-19 prevention, control at IDP camps",
#         "description_en": "Ministry of Social Welfare, Relief and Resettlement to draft project plan for prevention, control and treatment of the Coronavirus infection at IDP camps.",
        
# "title_fr": "MSWRR établira un plan de projet pour la prévention et le contrôle du COVID-19 dans les camps de déplacés",
# "description_fr": "Le Ministère de la protection sociale, des secours et de la réinstallation rédigera un plan de projet pour la prévention, le contrôle et le traitement de l'infection à coronavirus dans les camps de déplacés.",
#         "titleses": "MSWRR elaborará un plan de proyecto para la prevención, el control de COVID-19 en los campamentos de desplazados internos",
#         "descriptionses": "Ministerio de Bienestar Social, Socorro y Reasentamiento del borrador del plan del proyecto para la prevención, control y tratamiento de la infección por Coronavirus en los campamentos de desplazados internos",


#         "link": "https://www.Globalnewlightofmyanmar.com/mswrr-to-draw-project-plan-for-covid-19-prevention-control-at-idp-camps/",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "Melons rot, factories shutter: Myanmar's COVID-19 fallout",
#         "description_en": "Thousands of factory jobs (majority women-held) have been lost and border trade with China has been decimated as Myanmar reels from the impact of the coronavirus pandemic.",
        
# "title_fr": "Pourriture des melons, volet des usines: retombées du COVID-19 au Myanmar",
# "description_fr": "Des milliers d'emplois dans les usines (occupés en majorité par des femmes) ont été perdus et le commerce frontalier avec la Chine a été décimé alors que le Myanmar est sous le choc de la pandémie de coronavirus.",
#         "titleses": "Podredumbre de melones, obturación de fábricas: consecuencias de COVID-19 de Myanmar",
#         "descriptionses": "Se han perdido miles de empleos en las fábricas (en su mayoría controlados por mujeres) y el comercio fronterizo con China se ha diezmado a medida que Myanmar se tambalea por el impacto de la pandemia de coronavirus",


#         "link": "https://frontiermyanmar.net/en/melons-rot-factories-shutter-myanmars-covid-19-fallout",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "Myanmar lockdown leads to rise in domestic violence",
#         "description_en": "There has been a spike in the number of domestic violence complaints since the government began the lockdowns.",
        
# "title_fr": "L'isolement au Myanmar entraîne une augmentation de la violence domestique",
# "description_fr": "Il y a eu une augmentation du nombre de plaintes pour violence familiale depuis que le gouvernement a commencé les fermetures.",
#         "titleses": "El bloqueo de Myanmar provoca un aumento de la violencia doméstica",
#         "descriptionses": "Ha habido un aumento en el número de denuncias de violencia doméstica desde que el gobierno comenzó los bloqueos",


#         "link": "https://www.nst.com.my/world/region/2020/04/580944/myanmar-lockdown-leads-rise-domestic-violence",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "In Myanmar, Hunger Overshadows COVID-19 for Yangon's Poorest",
#         "description_en": "25,000 Myanmar garment workers from more than 40 factories lost their jobs because of the pandemic; mostly women, they face impending hunger during lockdown.",
        
# "title_fr": "Au Myanmar, la faim éclipse le COVID-19 pour les plus pauvres de Yangon",
# "description_fr": "25 000 travailleurs de l'habillement du Myanmar provenant de plus de 40 usines ont perdu leur emploi en raison de la pandémie; la plupart des femmes sont confrontées à une famine imminente pendant le verrouillage.",
#         "titleses": "En Myanmar, el hambre eclipsa COVID-19 para los más pobres de Yangon",
#         "descriptionses": "25,000 trabajadores de la confección de Myanmar de más de 40 fábricas perdieron sus empleos debido a la pandemia; en su mayoría mujeres, enfrentan un hambre inminente durante el encierro",


#         "link": "https://thediplomat.com/2020/04/in-myanmar-hunger-overshadows-covid-19-for-yangons-poorest/",
#         "progressive": "need to watch",
#         "category": "food",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "EU Pledges Support for Women Garment Factory Workers in Myanmar",
#         "description_en": "EU will provide 5 million euros (7.9 billion kyats) as an emergency fund to support female workers in Myanmar's garment sector who are impacted by COVID-19.",
        
# "title_fr": "L'UE promet son soutien aux travailleuses des usines de confection au Myanmar",
# "description_fr": "L'UE fournira 5 millions d'euros (7,9 milliards de kyats) en tant que fonds d'urgence pour soutenir les travailleuses du secteur de l'habillement du Myanmar touchées par COVID-19.",
#         "titleses": "La UE promete apoyo a las trabajadoras de la fábrica de prendas de vestir en Myanmar",
#         "descriptionses": "La UE proporcionará 5 millones de euros (7.900 millones de kyats) como fondo de emergencia para apoyar a las trabajadoras del sector de la confección de Myanmar que se ven afectadas por COVID-19",


#         "link": "https://www.irrawaddy.com/specials/myanmar-covid-19/eu-pledges-support-for-women-garment-factory-workers-in-myanmar.html",
#         "progressive": "progressive",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "Myanmar: 3 Charged for COVID-19 Street Art",
#         "description_en": "Myanmar's government charged three street artists (one woman) arrested for painting a mural that raises awareness about the coronavirus pandemic because it violates law criminalizing speech that 'insults' religion.",
        
# "title_fr": "Myanmar: 3 inculpés pour le street art COVID-19",
# "description_fr": "Le gouvernement du Myanmar a inculpé trois artistes de rue (une femme) arrêtés pour avoir peint une peinture murale qui sensibilise à la pandémie de coronavirus parce qu'elle viole la loi criminalisant le discours qui insulte la religion.",
#         "titleses": "Myanmar: 3 acusados ​​de arte callejero COVID-19",
#         "descriptionses": "El gobierno de Myanmar acusó a tres artistas callejeros (una mujer) arrestados por pintar un mural que crea conciencia sobre la pandemia de coronavirus porque viola la ley que criminaliza el discurso que insulta a la religión",


#         "link": "https://www.hrw.org/news/2020/04/08/myanmar-3-charged-covid-19-street-art",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "temporary measure",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "Covid-19 impact and responses: Myanmar",
#         "description_en": "Unemployed workers are to receive 6 months healthcare and some maternity benefits; pregnant workers not permitted in factories, but to receive some financial support.",
        
# "title_fr": "Impact de Covid-19 et réponses: Myanmar",
# "description_fr": "Les chômeuses doivent recevoir 6 mois de soins de santé et certaines prestations de maternité; les travailleuses enceintes ne sont pas autorisées dans les usines, mais reçoivent un soutien financier.",
#         "titleses": "Impacto de Covid-19 y respuestas: Myanmar",
#         "descriptionses": "Las trabajadoras desempleadas recibirán 6 meses de atención médica y algunos beneficios de maternidad; las trabajadoras embarazadas no están permitidas en las fábricas, pero recibirán algún tipo de apoyo financiero",


#         "link": "https://www.fairwear.org/covid-19-dossier/covid-19-guidance-for-production-countries/covid-19-impact-and-responses-myanmar/",
#         "progressive": "need to watch",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "Covid-19 (Indonesia): Union slams corona rapid test plan for House while workers still on the job",
#         "description_en": "Confederation of United Indonesian Workers criticised plan to carry out rapid test for Covid-19 on 575 members of the House of Representatives (DPR) but not workers (mostly women) who work in close proximity without protection.",
        
# "title_fr": "Covid-19 (Indonésie): le syndicat critique le plan de test rapide corona pour House alors que les travailleurs sont toujours au travail",
# "description_fr": "La Confédération des travailleurs indonésiens unis a critiqué le plan visant à effectuer un test rapide pour Covid-19 sur 575 membres de la Chambre des représentants (DPR) mais pas sur les travailleurs (principalement des femmes) qui travaillent à proximité sans protection.",
#         "titleses": "Covid-19 (Indonesia): el sindicato critica el plan de prueba rápida de corona para House mientras los trabajadores aún están en el trabajo",
#         "descriptionses": "La Confederación de Trabajadores Unidos de Indonesia criticó el plan de llevar a cabo una prueba rápida para Covid-19 en 575 miembros de la Cámara de Representantes (DPR) pero no en los trabajadores (en su mayoría mujeres) que trabajan en las proximidades sin protección",


#         "link": "http://www.europe-solidaire.org/spip.php?article52591",
#         "progressive": "need to watch",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Indonesia",
#       },
#       {
#         "title_en": "COVID-19: the gendered impacts of the outbreak",
#         "description_en": "Travel restrictions cause financial challenges and uncertainty for mostly female foreign domestic workers, many of whom travel in southeast Asia between the Philippines, Indonesia, Hong Kong, and Singapore.",
        
# "title_fr": "COVID-19: les impacts sexospécifiques de l'épidémie",
# "description_fr": "Les restrictions de voyage entraînent des difficultés financières et de l'incertitude pour la plupart des employées de maison étrangères, dont beaucoup voyagent en Asie du Sud-Est entre les Philippines, l'Indonésie, Hong Kong et Singapour.",
#         "titleses": "COVID-19: los impactos de género del brote",
#         "descriptionses": "Las restricciones de viaje causan desafíos financieros e incertidumbre para la mayoría de las trabajadoras domésticas extranjeras, muchas de las cuales viajan al sudeste asiático entre Filipinas, Indonesia, Hong Kong y Singapur",


#         "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30526-2/fulltext",
#         "progressive": "need to watch",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Indonesia",
#       },
#       {
#         "title_en": "Domestic violence rises amid coronavirus lockdowns in Asia",
#         "description_en": "Because gender disparity for household laboris high in Asia, National Commission on Violence Against Women warned that women face increased physical violence during partial lockdown, urged equal distribution of laborin families.",
        
# "title_fr": "La violence domestique s'intensifie au milieu des blocages de coronavirus en Asie",
# "description_fr": "Parce que la disparité entre les sexes pour le travail domestique est élevée en Asie, la Commission nationale sur la violence contre les femmes a averti que les femmes faisaient face à une violence physique accrue pendant le verrouillage partiel, a appelé à une répartition égale du travail dans les familles.",
#         "titleses": "La violencia doméstica aumenta en medio de los bloqueos de coronavirus en Asia",
#         "descriptionses": "Debido a que la disparidad de género en el trabajo doméstico es alta en Asia, la Comisión Nacional de Violencia contra la Mujer advirtió que las mujeres enfrentan un aumento de la violencia física durante el encierro parcial, exhortó a la distribución equitativa del trabajo en las familias",


#         "link": "https://www.dw.com/en/domestic-violence-rises-amid-coronavirus-lockdowns-in-asia/a-53077378",
#         "progressive": "need to watch",
#         "category": "childcare, labor",
#         "type": "observed response",
#         "country": "Indonesia",
#       },
#       {
#         "title_en": "Labour Plan Options for Enterprises Affected by COVID-19",
#         "description_en": "Based on the guidance from Ministry of Health of Vietnam: Garment workers (mostly women) will not pay penalties for missing work due to COVID-19; employees must negotiate severance in case of illness; empoyers can unilaterally terminate labour contracts but just give appropriate notice.",
        
# "title_fr": "Options du plan de travail pour les entreprises affectées par COVID-19",
# "description_fr": "D'après les directives du ministère de la Santé du Vietnam: les travailleurs de l'habillement (principalement des femmes) ne paieront pas de pénalité pour le travail manquant en raison de COVID-19; les employés doivent négocier une indemnité de départ en cas de maladie; les employeurs peuvent résilier unilatéralement les contrats de travail mais donnez juste un avis approprié.",
#         "titleses": "Opciones del plan laboral para empresas afectadas por COVID-19",
#         "descriptionses": "Basado en la guía del Ministerio de Salud de Vietnam: los trabajadores de la confección (en su mayoría mujeres) no pagarán multas por falta de trabajo debido a COVID-19; los empleados deben negociar la indemnización en caso de enfermedad; los poderes pueden rescindir unilateralmente los contratos laborales pero solo dale el aviso correspondiente",


#         "link": "https://betterwork.org/wp-content/uploads/2020/04/BWV-Guide-for-factories_07.04.pdf",
#         "progressive": "need to watch",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Vietnam",
#       },
#       {
#         "title_en": "Bangkok slum residents prepare for worst as virus grips Thailand",
#         "description_en": "Older people, especially women, often play a very important role looking after children and ill relatives. Those living in poverty in cramped slums may suffer disproportionately.",
        
# "title_fr": "Les habitants des bidonvilles de Bangkok se préparent au pire alors que le virus envahit la Thaïlande",
# "description_fr": "Les personnes âgées, en particulier les femmes, jouent souvent un rôle très important pour s'occuper des enfants et des parents malades. Ceux qui vivent dans la pauvreté dans des bidonvilles exigus peuvent souffrir de manière disproportionnée.",
#         "titleses": "Los residentes de los barrios bajos de Bangkok se preparan para lo peor mientras el virus se apodera de Tailandia",
#         "descriptionses": "Las personas mayores, especialmente las mujeres, a menudo juegan un papel muy importante cuidando a los niños y parientes enfermos. Los que viven en la pobreza en barrios marginales estrechos pueden sufrir de manera desproporcionada",


#         "link": "https://www.aljazeera.com/news/2020/03/bangkok-slum-residents-prepare-worst-virus-grips-thailand-200322074123038.html",
#         "progressive": "need to watch",
#         "category": "economy, childcare",
#         "type": "observed response",
#         "country": "Thailand",
#       },
#       {
#         "title_en": "MCO-linked domestic violence rises",
#         "description_en": "Data from the Women and Family Development Ministry shows Malaysia has seen a spike in the number of domestic violence cases following the Movement Control Order (MCO).",
        
# "title_fr": "La violence domestique liée à l'AGC augmente",
# "description_fr": "Les données du ministère du Développement de la femme et de la famille montrent que la Malaisie a constaté une augmentation du nombre de cas de violence domestique suite à l'ordonnance de contrôle des mouvements (MCO).",
#         "titleses": "aumenta la violencia doméstica vinculada a la MCO",
#         "descriptionses": "Los datos del Ministerio de Desarrollo de la Mujer y la Familia muestran que Malasia ha visto un aumento en el número de casos de violencia doméstica después de la Orden de Control de Movimiento (MCO)",


#         "link": "https://www.nst.com.my/news/exclusive/2020/04/581233/mco-linked-domestic-violence-rises",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Malaysia",
#       },
#       {
#         "title_en": "Don't Nag Your Husband During Lockdown, Malaysia's Government Advises Women",
#         "description_en": "The Women and Family Development Ministry created online posters urging women to refrain from sarcasm, dress for the office, not nag their husbands, and more to maintain family harmony (the ministry apologized the following day)",
        
# "title_fr": "Ne harcelez pas votre mari pendant le verrouillage, le gouvernement malaisien conseille les femmes",
# "description_fr": "Le ministère du Développement de la femme et de la famille a créé des affiches en ligne exhortant les femmes à s'abstenir de sarcasmes, à s'habiller pour le bureau, à ne pas harceler leur mari et à maintenir l'harmonie familiale (le ministère s'est excusé le lendemain)",
#         "titleses": "No regañe a su esposo durante el encierro, el gobierno de Malasia aconseja a las mujeres",
#         "descriptionses": "El Ministerio de Desarrollo de la Mujer y la Familia creó carteles en línea instando a las mujeres a abstenerse del sarcasmo, vestirse para la oficina, no molestar a sus esposos y más para mantener la armonía familiar (el ministerio se disculpó al día siguiente)",


#         "link": "https://www.npr.org/2020/04/01/825051317/dont-nag-your-husband-during-lock-down-malaysias-government-advises-women",
#         "progressive": "regressive",
#         "category": "gendered health impacts",
#         "type": "observed response",
#         "country": "Malaysia",
#       },
#       {
#         "title_en": "Service and untold sacrifices: Women on the Covid-19 frontline in Malaysia",
#         "description_en": "Several Bills, including the Sexual Harassment Bill, Anti-Discrimination Against Women Bill and anti-stalking laws, are scheduled to be tabled at the next Parliament sitting.",
        
# "title_fr": "Service et sacrifices indicibles: les femmes sur la ligne de front de Covid-19 en Malaisie",
# "description_fr": "Plusieurs projets de loi, dont le projet de loi sur le harcèlement sexuel, le projet de loi contre la discrimination à l'égard des femmes et les lois contre le harcèlement, devraient être déposés à la prochaine session du Parlement.",
#         "titleses": "Servicio y sacrificios incalculables: mujeres en la primera línea de Covid-19 en Malasia",
#         "descriptionses": "Varios proyectos de ley, incluido el proyecto de ley sobre el acoso sexual, el proyecto de ley contra la discriminación contra la mujer y las leyes contra el acoso, se presentarán en la próxima sesión del Parlamento",


#         "link": "https://www.malaymail.com/news/malaysia/2020/04/13/service-and-untold-sacrifices-women-on-the-covid-19-frontline-in-malaysia/1856067",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Malaysia",
#       },
#       {
#         "title_en": "East Timor: EU, UN reassign US$1 mln to combat violence against women during pandemic",
#         "description_en": "$1 million (€914,000) from their existing Spotlight programme in East Timor to respond to the risk of violence against women in the context of the Covid-19 pandemic.",
        
# "title_fr": "Timor oriental: l'UE et l'ONU réaffectent 1 million de dollars pour lutter contre la violence à l'égard des femmes pendant une pandémie",
# "description_fr": "1 million de dollars (914 000 €) provenant de leur programme Spotlight existant au Timor oriental pour répondre au risque de violence à l'égard des femmes dans le contexte de la pandémie de Covid-19.",
#         "titleses": "Timor Oriental: UE y ONU reasignan US $ 1 millón para combatir la violencia contra las mujeres durante la pandemia",
#         "descriptionses": "$ 1 millón (€ 914,000) de su programa Spotlight existente en Timor Oriental para responder al riesgo de violencia contra las mujeres en el contexto de la pandemia de Covid-19",


#         "link": "https://www.macaubusiness.com/east-timor-eu-un-reassign-us1-mln-to-combat-violence-against-women-during-pandemic/",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "East Timor",
#       },
#       {
#         "title_en": "How the COVID-19 pandemic affects vulnerable women in Singapore",
#         "description_en": "Article looks at how this disaster is playing out for five particularly vulnerable groups of women in Singapore.",
        
# "title_fr": "Comment la pandémie de COVID-19 affecte les femmes vulnérables à Singapour",
# "description_fr": "L'article examine comment cette catastrophe se déroule pour cinq groupes de femmes particulièrement vulnérables à Singapour.",
#         "titleses": "Cómo la pandemia de COVID-19 afecta a las mujeres vulnerables en Singapur",
#         "descriptionses": "El artículo analiza cómo se desarrolla este desastre para cinco grupos de mujeres particularmente vulnerables en Singapur",


#         "link": "https://www.aware.org.sg/2020/03/how-the-covid-19-pandemic-affects-vulnerable-women-in-singapore/",
#         "progressive": "regressive",
#         "category": "economy, labor, gendered health impacts, gender-based violence",
#         "type": "observed response",
#         "country": "Singapore",
#       },
#       {
#         "title_en": "Covid-19 and the increase in domestic violence in Asia Pacific",
#         "description_en": "Association of Women for Action and Research (AWARE) women's helpline saw a 33 percent increase in calls related to family violence in February compared to last February, evne though national data shows a decline in cases from 2016 to 2019.",
        
# "title_fr": "Covid-19 et l'augmentation de la violence domestique en Asie-Pacifique",
# "description_fr": "L'assistance téléphonique pour les femmes de l'Association of Women for Action and Research (AWARE) a enregistré une augmentation de 33% des appels liés à la violence familiale en février par rapport à février dernier, même si les données nationales indiquent une baisse du nombre de cas entre 2016 et 2019." ,
#         "titleses": "Covid-19 y el aumento de la violencia doméstica en Asia Pacífico",
#         "descriptionses": "La línea de ayuda para mujeres de la Asociación de Mujeres para la Acción y la Investigación (AWARE) experimentó un aumento del 33 por ciento en las llamadas relacionadas con la violencia familiar en febrero en comparación con febrero pasado, aunque los datos nacionales muestran una disminución en los casos de 2016 a 2019",


#         "link": "https://www.eco-business.com/news/covid-19-and-the-increase-in-domestic-violence-in-asia-pacific/",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Singapore",
#       },
#       {
#         "title_en": "Philippines: COVID-19 Response Plan (03 April 2020)",
#         "description_en": "The Humanitarian country Team (HCT) COVID-19 Response Plan does not appear to currently address the increase in gender-based violence.",
        
# "title_fr": "Philippines: Plan de réponse COVID-19 (03 avril 2020)",
# "description_fr": "Le plan de réponse COVID-19 de l'Équipe humanitaire des pays (HCT) ne semble pas s'attaquer actuellement à l'augmentation de la violence sexiste.",
#         "titleses": "Filipinas: Plan de respuesta COVID-19 (03 de abril de 2020)",
#         "descriptionses": "El Plan de Respuesta COVID-19 del Equipo Humanitario de País (HCT) no parece abordar actualmente el aumento de la violencia de género",


#         "link": "https://reliefweb.int/report/philippines/philippines-covid-19-response-plan-03-april-2020",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Philippines",
#       },
#       {
#         "title_en": "Philippines urged to combat escalating domestic violence cases amid virus lockdowns",
#         "description_en": "At least one woman or child is abused every 10 minutes in the Philippines, the Center for Women's Resources said in recent report, and quarantine measures make it harder for victims seek help.",
        
# "title_fr": "Les Philippines invitées à lutter contre l'escalade des cas de violence domestique dans un contexte de verrouillage des virus",
# "description_fr": "Au moins une femme ou un enfant est victime de violence toutes les 10 minutes aux Philippines, a déclaré le Center for Women's Resources dans un récent rapport, et les mesures de quarantaine compliquent la tâche des victimes qui demandent de l'aide.",
#         "titleses": "Filipinas instó a combatir la escalada de casos de violencia doméstica en medio de bloqueos de virus",
#         "descriptionses": "Al menos una mujer o niño es maltratado cada 10 minutos en Filipinas, dijo el Centro de Recursos para la Mujer en un informe reciente, y las medidas de cuarentena dificultan que las víctimas busquen ayuda",


#         "link": "https://www.philstar.com/headlines/2020/04/06/2005855/philippines-urged-combat-escalating-domestic-violence-cases-amid-virus-lockdowns",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Philippines",
#       },
#       {
#         "title_en": "Stay home' and work? Implications of COVID-19 and the UK Governmental",
#         "description_en": "Potential economic impact of COVID-19 on self-employed in the UK, how to possibly support self-employed women",
        
# "title_fr": "Rester à la maison et travailler? Implications de COVID-19 et du gouvernement britannique",
# "description_fr": "Impact économique potentiel de COVID-19 sur les travailleurs indépendants au Royaume-Uni, comment soutenir éventuellement les femmes indépendantes",
#         "titleses": "Quedarse en casa y trabajar? Implicaciones de COVID-19 y el gobierno del Reino Unido",
#         "descriptionses": "Impacto económico potencial de COVID-19 en los trabajadores por cuenta propia en el Reino Unido, cómo posiblemente apoyar a las mujeres que trabajan por cuenta propia",


#         "link": "https://isbegen.wordpress.com/2020/03/27/stay-home-and-work/",
#         "progressive": "regressive",
#         "category": "economy",
#         "type": "temporary measure, policy or law",
#         "country": "United Kingdom",
#       },
#       {
#         "title_en": "Most Brown and Black Americans are Exposing Themselves to Coronavirus",
#         "description_en": "Telework disparity disproportionately affects black and brown workers, particularly low-income work",
        
# "title_fr": "La plupart des Américains bruns et noirs s'exposent au coronavirus",
# "description_fr": "La disparité du télétravail affecte de manière disproportionnée les travailleurs noirs et bruns, en particulier les travailleurs à faible revenu",
#         "titleses": "La mayoría de los estadounidenses marrones y negros se exponen al coronavirus",
#         "descriptionses": "La disparidad del teletrabajo afecta desproporcionadamente a los trabajadores negros y marrones, particularmente el trabajo de bajos ingresos",


#         "link": "https://www.vice.com/en_us/article/xgqpyq/most-brown-and-black-americans-are-exposing-themselves-to-coronavirus-for-a-paycheck",
#         "progressive": "regressive",
#         "category": "economy",
#         "type": "observed response",
#         "country": "United States",
#       },
#       {
#         "title_en": "Low-paid women in UK at 'high risk' of Corona Exposure",
#         "description_en": "89% of nurses, 84% of care workers are women, some at highest risk are lowest paid",
        
# "title_fr": "Les femmes mal rémunérées au Royaume-Uni à risque élevé de Corona Exposure",
# "description_fr": "89% des infirmières, 84% des soignants sont des femmes, certaines à haut risque sont les moins bien payées",
#         "titleses": "Mujeres mal pagadas en el Reino Unido en 'alto riesgo' de exposición corona",
#         "descriptionses": "el 89% de las enfermeras, el 84% de los trabajadores de atención son mujeres, algunas de mayor riesgo tienen el salario más bajo",


#         "link": "https://www.theguardian.com/world/2020/mar/29/low-paid-women-in-uk-at-high-risk-of-coronavirus-exposure",
#         "progressive": "regressive",
#         "category": "economy",
#         "type": "observed response",
#         "country": "United Kingdom",
#       },
#       {
#         "title_en": "When Face-to-Face Interactions Become an Occupational Hazard: Jobs in the time of COVID-19",
#         "description_en": "The pattern of potential job losses during COVID-19 outbreak is likely to disproportionately affect vulnerable groups (women, low income)",

#         "title_en": "Quand les interactions en face à face deviennent un risque professionnel: des emplois à l'époque de COVID-19",
#         "description_en": "Le schéma des pertes d'emplois potentielles lors de l'épidémie de COVID-19 est susceptible d'affecter de manière disproportionnée les groupes vulnérables (femmes, faibles revenus)",
#         "title_es": "Cuando las interacciones cara a cara se convierten en un peligro laboral: trabajos en la época de COVID-19",
# "description_es": "Es probable que el patrón de posibles pérdidas de empleo durante el brote de COVID-19 afecte desproporcionadamente a los grupos vulnerables (mujeres, bajos ingresos)",

# "link": "https://wws.brookings.edu/blog/future-development/2020/03/30/when-face-to-face-interactions-become-an-occupational-hazard-jobs-in-the-time-of-covid-19/",
#         "progressive": "regressive",


#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "United States, Global",
#       },
#       {
#         "title_en": "Equal Pay Day more important than ever amid COVID-19",
#         "description_en": "NYC working against wage gap by creating a more supportive, family friendly workplace.",
        
# "title_fr": "La Journée de l'égalité salariale est plus importante que jamais au milieu de COVID-19",
# "description_fr": "NYC lutte contre l'écart salarial en créant un lieu de travail plus favorable aux familles.",
#         "titleses": "El día de igualdad de pago es más importante que nunca en medio de COVID-19",
#         "descriptionses": "Nueva York trabajando contra la brecha salarial mediante la creación de un lugar de trabajo más favorable y familiar",


#         "link": "https://thehill.com/opinion/civil-rights/490088-equal-pay-day-more-important-than-ever-amid-covid-19",
#         "progressive": "progressive",
#         "category": "economy, labor",
#         "type": "policy or law",
#         "country": "United States",
#       },
#       {
#         "title_en": "Lockdown:Domestic workers struggle to make ends meet as families refuse to pay",
#         "description_en": "Domestic workers in India are struggling since they cannot work and are therefore have no income",
        
# "title_fr": "Verrouillage: les travailleurs domestiques ont du mal à joindre les deux bouts alors que les familles refusent de payer",
# "description_fr": "Les travailleurs domestiques en Inde sont en difficulté car ils ne peuvent pas travailler et n'ont donc aucun revenu",
#         "titleses": "Bloqueo: las trabajadoras domésticas luchan para llegar a fin de mes mientras las familias se niegan a pagar",
#         "descriptionses": "Las trabajadoras domésticas en India están luchando porque no pueden trabajar y, por lo tanto, no tienen ingresos",


#         "link": "https://www.hindustantimes.com/mumbai-news/lockdown-domestic-workers-struggle-to-make-ends-meet-as-families-refuse-to-pay/story-aB6zzwdUyQYnivAJoCMtEJ.html",
#         "progressive": "regressive",
#         "category": "labor",
#         "type": "observed response",
#         "country": "India",
#       },
#       {
#         "title_en": "How the Corona Virus affects HR, Benefits and Retirement Professionals",
#         "description_en": "COVID-19 will make gender pay inequities worse",
        
# "title_fr": "Comment le virus Corona affecte les professionnels des RH, des avantages sociaux et de la retraite",
# "description_fr": "COVID-19 aggravera les inégalités de rémunération entre les sexes",
#         "titleses": "Cómo afecta el virus Corona a los profesionales de recursos humanos, beneficios y jubilación",
#         "descriptionses": "COVID-19 empeorará las desigualdades salariales de género",


#         "link": "https://www.benefitspro.com/2020/04/07/covid-19-will-make-gender-pay-inequities-worse/?cmp=share_twitter",
#         "progressive": "regressive",
#         "category": "",
#         "type": "",
#         "country": "",
#       },
#       {
#         "title_en": "COVID-19 worsening gender inequality, more women have lost jobs-UN",
#         "description_en": "UN Secretary General: although the virus might be killing more men than women, women at greater risk of falling into poverty",
        
# "title_fr": "COVID-19 aggravant les inégalités entre les sexes, davantage de femmes ont perdu leur emploi-ONU",
# "description_fr": "Secrétaire général de l'ONU: bien que le virus puisse tuer plus d'hommes que de femmes, les femmes risquent davantage de tomber dans la pauvreté",
#         "titleses": "COVID-19 empeora la desigualdad de género, más mujeres han perdido empleos-ONU",
#         "descriptionses": "Secretario General de la ONU: aunque el virus podría estar matando a más hombres que mujeres, las mujeres corren mayor riesgo de caer en la pobreza",


#         "link": "https://dailypost.ng/2020/04/10/covid-19-worsening-gender-inequality-more-women-have-lost-jobs-un/",
#         "progressive": "regressive",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Global",
#       },
#       {
#         "title_en": "Female frontline workers in China typical of coronavirus economic and domestic burden",
#         "description_en": "Women make up more than 90% of frontline health workers in Hubei province, disproportionately exposed.",
        
# "title_fr": "Les travailleuses de première ligne en Chine, typiques du fardeau économique et domestique des coronavirus",
# "description_fr": "Les femmes représentent plus de 90% des agents de santé de première ligne dans la province du Hubei, exposées de manière disproportionnée.",
#         "titleses": "Trabajadoras de primera línea en China, típicas de la carga económica y doméstica del coronavirus",
#         "descriptionses": "Las mujeres representan más del 90% de los trabajadores de salud de primera línea en la provincia de Hubei, expuestas desproporcionadamente",


#         "link": "https://amp-scmp-com.cdn.ampproject.org/c/s/amp.scmp.com/news/china/society/article/3079363/female-frontline-workers-china-typical-coronavirus-economic-and",
#         "progressive": "regressive",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Global, China",
#       },
#       {
#         "title_en": "The economic impact of coronavirus on women is 'devasting' and excarcerbating gender inequality",
#         "description_en": "The COVID-19 crisis is exacerbating structural inequities for women and women of color",
        
# "title_fr": "L'impact économique du coronavirus sur les femmes dévaste et exacerbe les inégalités entre les sexes",
# "description_fr": "La crise du COVID-19 aggrave les inégalités structurelles pour les femmes et les femmes de couleur",
#         "titleses": "El impacto económico del coronavirus en las mujeres es 'devastador' y excarcerba la desigualdad de género",
#         "descriptionses": "La crisis de COVID-19 está exacerbando las inequidades estructurales para las mujeres y las mujeres de color",


#         "link": "https://www.newsweek.com/economic-impact-coronavirus-women-devastating-exacerbating-gender-inequality-says-1497325",
#         "progressive": "regressive",
#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "United States",
#       },
#       {
#         "title_en": "Women on the frontlines of COVID-19",
#         "description_en": "Working class women have been left dramatically and disproportionately unprepared for the ensuing economic crisis",
        
# "title_fr": "Les femmes en première ligne de COVID-19",
# "description_fr": "Les femmes de la classe ouvrière n'ont pas été préparées de manière dramatique et disproportionnée à la crise économique qui a suivi",
#         "titleses": "Mujeres en primera línea de COVID-19",
#         "descriptionses": "Las mujeres de la clase trabajadora se han quedado dramáticamente y desproporcionadamente sin preparación para la crisis económica que sigue",


#         "link": "https://www.liberationnews.org/women-on-the-frontlines-of-covid-19/",
#         "progressive": "regressive",
#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "United States",
#       },
#       {
#         "title_en": "Gender Pay Gap poses 'shocking' pitfall if isolation goes on",
#         "description_en": "Gender pay gap is at heart of serious potential frontline worker deficiency, if isolation continues",
        
# "title_fr": "L'écart de rémunération entre les sexes pose un piège choquant si l'isolement se poursuit",
# "description_fr": "L'écart de rémunération entre hommes et femmes est au cœur de la grave carence potentielle des travailleurs de première ligne, si l'isolement se poursuit",
#         "titleses": "Gender Pay Gap poses 'shocking' pitfall if isolation goes on",
#         "descriptionses": "Gender pay gap is at heart of serious potential frontline worker deficiency, if isolation continues",


#         "link": "https://www.canberratimes.com.au/story/6721006/gender-pay-gap-poses-shocking-pitfall-if-isolation-goes-on/",
#         "progressive": "regressive",
#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "Australia",
#       },
#       {
#         "title_en": "Protecting women using DFS during the Pandemic",
#         "description_en": "Increased emphasis on online banking, training to prevent illiterate women from scams or 'loans'",
        
# "title_fr": "Protéger les femmes utilisant les DFS pendant la pandémie",
# "description_fr": "Accent accru sur les services bancaires en ligne, la formation pour empêcher les femmes analphabètes des arnaques ou des prêts", 
#         "titleses": "Protección de mujeres que usan DFS durante la pandemia",
#         "descriptionses": "Mayor énfasis en la banca en línea, capacitación para prevenir a las mujeres analfabetas de estafas o 'préstamos'",


#         "link": "https://www.siaedge.com/news/2020/3/27/protecting-women-using-dfs-during-the-pandemic",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Rwanda, Kenya, Ghana",
#       },
#       {
#         "title_en": "The Economic Devastation of COVID-19 is hitting Women Particularly Hard",
#         "description_en": "Women, especially black women, are losing the majority of jobs. If 2008 was a 'mancession', this is becoming a 'femcession'.",
        
# "title_fr": "La dévastation économique de COVID-19 frappe particulièrement les femmes",
# "description_fr": "Les femmes, en particulier les femmes noires, perdent la majorité des emplois. Si 2008 a été une mancession, cela devient une femcession.",
#         "titleses": "La devastación económica de COVID-19 está afectando especialmente a las mujeres",
#         "descriptionses": "Las mujeres, especialmente las mujeres negras, están perdiendo la mayoría de los empleos. Si 2008 fue una 'mancesión', esto se está convirtiendo en una 'femcesión'",


#         "link": "https://www.huffpost.com/entry/women-coronavirus-lost-jobs_n_5e90observed response63c5b685fbc7d4a557?",
#         "progressive": "regressive",
#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "United States",
#       },
#       {
#         "title_en": "The Impact of COVID-19 on Gender Equality",
#         "description_en": "A paper on the effects of COVID-19 on employment, child care needs, gender norms and policy options.",
        
# "title_fr": "L'impact de COVID-19 sur l'égalité des sexes",
# "description_fr": "Un document sur les effets de COVID-19 sur l'emploi, les besoins en matière de garde d'enfants, les normes de genre et les options politiques.",
#         "titleses": "El impacto de COVID-19 en la igualdad de género",
#         "descriptionses": "Un documento sobre los efectos de COVID-19 en el empleo, las necesidades de cuidado infantil, las normas de género y las opciones de política",


#         "link": "https://www.nber.org/papers/w26947",
#         "progressive": "regressive",
#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "United States",
#       },
#       {
#         "title_en": "How Millions of Women Became the Most Essential Workers in America",
#         "description_en": "The essential workers are more likely to be non-white women and are underpaid and undervalued",
        
# "title_fr": "Comment des millions de femmes sont devenues les travailleuses les plus essentielles en Amérique",
# "description_fr": "Les travailleurs essentiels sont plus susceptibles d'être des femmes non blanches et sont sous-payés et sous-évalués",
#         "titleses": "Cómo millones de mujeres se convirtieron en los trabajadores más esenciales en Estados Unidos",
#         "descriptionses": "Los trabajadores esenciales tienen más probabilidades de ser mujeres no blancas y están mal remunerados y subvalorados",


#         "link": "https://www.nytimes.com/2020/04/18/us/coronavirus-women-essential-workers.html",
#         "progressive": "regressive",
#         "category": "economy, labor",
#         "type": "observed response",
#         "country": "United States",
#       },
#       {
#         "title_en": "COVID-19 fuels domestic violence in China",
#         "description_en": "Domestic violence increases in China during COVID-19 pandemic, campaign has lead to more awareness",
        
# "title_fr": "COVID-19 alimente la violence domestique en Chine",
# "description_fr": "La violence domestique augmente en Chine pendant la pandémie de COVID-19, la campagne a permis de sensibiliser davantage",
#         "titleses": "COVID-19 alimenta la violencia doméstica en China",
#         "descriptionses": "La violencia doméstica aumenta en China durante la pandemia de COVID-19, la campaña ha llevado a una mayor conciencia",


#         "link": "https://supchina.com/2020/03/24/covid-19-fuels-domestic-violence-in-china/",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "China",
#       },
#       {
#         "title_en": "Ending Violence against Women in the Context of COVID-19",
#         "description_en": "UN Trust Fund to End Violence against Women (UN Trust Fund) remain committed to partners in the field",
        
# "title_fr": "Mettre fin à la violence contre les femmes dans le contexte de COVID-19",
# "description_fr": "Le Fonds d'affectation spéciale des Nations Unies pour mettre fin à la violence à l'égard des femmes (Fonds d'affectation spéciale des Nations Unies) reste attaché aux partenaires sur le terrain",
#         "titleses": "Poner fin a la violencia contra las mujeres en el contexto de COVID-19",
#         "descriptionses": "El Fondo Fiduciario de las Naciones Unidas para poner fin a la violencia contra la mujer (Fondo Fiduciario de las Naciones Unidas) sigue comprometido con sus asociados en el terreno",


#         "link": "https://www.unwomen.org/en/news/stories/2020/3/ending-violence-against-women-in-the-context-of-covid-19",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "India, Congo",
#       },
#       {
#         "title_en": "Increase in Domestic Violence Feared during Virus Lockdown",
#         "description_en": "Initial reports of increased domestic violence during COVID-19 crisis but full extent unlikely until post-crisis",
        
# "title_fr": "Augmentation de la violence domestique redoutée lors du verrouillage des virus",
# "description_fr": "Les premiers rapports faisant état d'une augmentation de la violence domestique pendant la crise COVID-19, mais dans une large mesure peu probable avant la sortie de la crise",
#         "titleses": "Aumento de la violencia doméstica temida durante el bloqueo de virus",
#         "descriptionses": "Informes iniciales de aumento de la violencia doméstica durante la crisis de COVID-19 pero totalmente improbable hasta después de la crisis",


#         "link": "https://www.axios.com/coronavirus-domestic-violence-de98Organizing Tool02-51f2-49ec-919c-c70052e29eef.html",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "United States",
#       },
#       {
#         "title_en": "Gender based Violence on the time of Corona",
#         "description_en": "The increase in gender based violence during corona lockdown is a Global problem, not unique to South Africa",
        
# "title_fr": "Violence basée sur le genre à l'époque de Corona",
# "description_fr": "L'augmentation de la violence basée sur le genre pendant le verrouillage corona est un problème mondial, qui n'est pas propre à l'Afrique du Sud",
#         "titleses": "Gender based Violence on the time of Corona",
#         "descriptionses": "The increase in gender based violence during corona lockdown is a Global problem, not unique to South Africa",


#         "link": "https://hsf.org.za/publications/hsf-briefs/gender-based-violence-in-the-time-of-corona",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Global, South Africa",
#       },
#       {
#         "title_en": "The pandemic is impacting women across Latin America",
#         "description_en": "High informal work make women more at risk of no revenue/savings as jobs cease.",
        
# "title_fr": "La pandémie affecte les femmes en Amérique latine",
# "description_fr": "Le travail informel élevé augmente le risque de perte de revenus / d'économies pour les femmes en raison de la suppression de leurs emplois.",
#         "titleses": "La pandemia está afectando a las mujeres en toda América Latina",
#         "descriptionses": "El trabajo informal alto hace que las mujeres corran más riesgo de no tener ingresos / ahorros a medida que cesa el trabajo",


#         "link": "https://www.france24.com/es/20200324-coronavirus-mujeres-latinas-violencia-trabajo-informal",
#         "progressive": "regressive",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Ecuador",
#       },
#       {
#         "title_en": "Tough times for French prostitutes as Covid-19 drives away customers",
#         "description_en": "Prostitutes unable to claim 1,500 euros in aid since no self employed status, risking health.",
        
# "title_fr": "Des temps difficiles pour les prostituées françaises alors que Covid-19 chasse les clients",
# "description_fr": "Les prostituées ne peuvent pas réclamer une aide de 1 500 euros car elles n'ont pas de statut d'indépendant, risquant de perdre la santé.",
#         "titleses": "Tiempos difíciles para las prostitutas francesas porque Covid-19 ahuyenta a los clientes",
#         "descriptionses": "Las prostitutas no pueden reclamar 1.500 euros en ayuda porque no tienen un empleo por cuenta propia y ponen en riesgo su salud",


#         "link": "https://www.thecitizen.co.tz/news/Tough-times-for-France-prostitutes-as-Covid-19-lockdown-/1840386-5504006-6aumcz/index.html",
#         "progressive": "regressive",
#         "category": "SRHR, economy",
#         "type": "observed response",
#         "country": "France",
#       },
#       {
#         "title_en": "Coronavirus: Hotel opens in Brussels for female domestic violence victims",
#         "description_en": "With all refuges and centers full, hotel welcomes 50 female domestic violence victims and children",
        
# "title_fr": "Coronavirus: ouverture d'un hôtel à Bruxelles pour les femmes victimes de violence domestique",
# "description_fr": "Tous les refuges et centres étant pleins, l'hôtel accueille 50 femmes et enfants victimes de violence domestique",
#         "titleses": "Coronavirus: Hotel abre en Bruselas para mujeres víctimas de violencia doméstica",
#         "descriptionses": "Con todos los refugios y centros llenos, el hotel da la bienvenida a 50 mujeres víctimas de violencia doméstica y niños",


#         "link": "https://www.rtbf.be/info/regions/bruxelles/detail_coronavirus-ouverture-a-bruxelles-d-un-hotel-pour-les-femmes-victimes-de-violences-familiales-ou-conjugales?id=10476521",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Belgium",
#       },
#       {
#         "title_en": "Coronavirus: Disabled women express their invisibility",
#         "description_en": "Disabled women, especially mothers, explain their lack of attention in goverment measures, creating difficult lifestyle.",
        
# "title_fr": "Coronavirus: les femmes handicapées expriment leur invisibilité",
# "description_fr": "Les femmes handicapées, en particulier les mères, expliquent leur manque d'attention dans les mesures gouvernementales, créant un mode de vie difficile.",
#         "titleses": "Coronavirus: las mujeres discapacitadas expresan su invisibilidad",
#         "descriptionses": "Las mujeres discapacitadas, especialmente las madres, explican su falta de atención en las medidas gubernamentales, creando un estilo de vida difícil",


#         "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_coronavirus-les-femmes-handicapees-s-expriment-contre-leur-invisibilite?id=10466980",
#         "progressive": "regressive",
#         "category": "disability",
#         "type": "observed response",
#         "country": "Belgium",
#       },
#       {
#         "title_en": "Draft Kingdom of Cambodia Royal Government of Cambodia Ministry of Health Cambodia COVID-19 Emergency Response Project",
#         "description_en": "The project contains provisions to prevent Sexual Sexual Exploitation and Abuse (SEA), gender-based violence (GBV)",
        
# "title_fr": "Projet du Royaume du Cambodge Gouvernement royal du Cambodge Ministère de la santé du Cambodge Projet d'intervention d'urgence COVID-19",
# "description_fr": "Le projet contient des dispositions visant à prévenir l'exploitation et les abus sexuels à caractère sexuel (ESE), la violence basée sur le genre (VBG)",
#         "titleses": "Proyecto de Reino de Camboya Gobierno Real de Camboya Ministerio de Salud Camboya COVID-19 Proyecto de Respuesta a Emergencias",
#         "descriptionses": "El proyecto contiene disposiciones para prevenir la Explotación y el Abuso Sexual (SEA), la violencia de género (VBG)",


#         "link": "http://documents.worldbank.org/curated/en/439691585153106101/pdf/Environmental-and-Social-Commitment-Plan-ESCP-Cambodia-COVID-19-Emergency-Response-Project-P173815.pdf",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Cambodia",
#       },
#       {
#         "title_en": "Myanmar: Displacement Camps Are COVID-19 Tinderboxes",
#         "description_en": "77% of 350,000 IDPs are women/children (Relief Web) and are trapped in overcrowded camps with substandard health care, lacking water, sanitation, and other services.",

# "title_en": "Myanmar: les camps de personnes déplacées sont des cartables COVID-19",
# "description_en": "77% des 350 000 déplacés internes sont des femmes / enfants (Relief Web) et sont piégés dans des camps surpeuplés avec des soins de santé de qualité inférieure, manquant d'eau, d'assainissement et d'autres services.",
#         "titleses": "Myanmar: los campamentos de desplazamiento son polvorines COVID-19",
# "description_es": "Es 77% de 350,000 desplazados internos son mujeres / niños (Relief Web) y están atrapados en campamentos superpoblados con atención médica deficiente, falta de agua, saneamiento y otros servicios",


# "link": "https://www.hrw.org/news/2020/03/30/myanmar-displacement-camps-are-covid-19-tinderboxes",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Myanmar",
#       },
#       {
#         "title_en": "Covid-19 impact and responses: Indonesia",
#         "description_en": "Garment workers (mostly women) to receive full pay if suspected infection; government has allocated funds for 'Pre-Working Card' to provide dismissed employees with funds for four months.",
        
# "title_fr": "Impact et réponses de Covid-19: Indonésie",
# "description_fr": "Les travailleurs de l'habillement (principalement des femmes) recevront le plein salaire en cas de suspicion d'infection; le gouvernement a alloué des fonds pour la Pre-Working Card afin de fournir aux employés licenciés des fonds pendant quatre mois.",
#         "titleses": "Impacto de Covid-19 y respuestas: Indonesia",
#         "descriptionses": "Los trabajadores de la confección (en su mayoría mujeres) recibirán el pago completo si sospechan infección; el gobierno ha asignado fondos para ' Tarjeta de trabajo previo 'para proporcionar fondos a los empleados despedidos durante cuatro meses",


#         "link": "https://www.fairwear.org/covid-19-dossier/covid-19-guidance-for-production-countries/covid-19-impact-and-responses-indonesia/",
#         "progressive": "need to watch",
#         "category": "labor",
#         "type": "observed response",
#         "country": "Indonesia",
#       },
#       {
#         "title_en": "Don't worry about being detained, just come forward for Covid-19 testing, please",
#         "description_en": "Defence department said the government's focus now was on combating Covid-19, refugees shouldn't fear detention if they come forward to be tested.",
        
# "title_fr": "Ne vous inquiétez pas d'être détenu, présentez-vous simplement aux tests de Covid-19, s'il vous plaît",
# "description_fr": "Le ministère de la Défense a déclaré que le gouvernement se concentrait désormais sur la lutte contre Covid-19, les réfugiés ne devraient pas craindre la détention s'ils se présentent pour subir un test.",
#         "titleses": "No se preocupe por ser detenido, solo preséntese para la prueba de Covid-19, por favor",
#         "descriptionses": "El departamento de Defensa dijo que el enfoque del gobierno ahora estaba en combatir a Covid-19, los refugiados no deberían temer la detención si se presentan para ser examinados",


#         "link": "https://www.nst.com.my/news/nation/2020/03/577004/dont-worry-about-being-detained-just-come-forward-covid-19-testing-please",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "temporary measure",
#         "country": "Malaysia",
#       },
#       {
#         "title_en": "Spike in domestic and sexual violence  in Nigeria",
#         "description_en": "Lagos State Domestica and Sexual violence team set up leveraged on technology to set up helplines to proivde rapid response and help to victims",
        
# "title_fr": "Augmentation de la violence domestique et sexuelle au Nigeria",
# "description_fr": "L'équipe de l'État de Lagos sur la violence domestique et sexuelle mise en place grâce à la technologie pour mettre en place des services d'assistance téléphonique pour fournir une réponse rapide et aider les victimes",
#         "titleses": "Aumento de la violencia doméstica y sexual en Nigeria",
#         "descriptionses": "El equipo de Domestica y violencia sexual del estado de Lagos creó una tecnología apalancada para establecer líneas de ayuda para proporcionar una respuesta rápida y ayuda a las víctimas",


#         "link": "https://guardian.ng/tag/domestic-violence/",
#         "progressive": "need to watch",
#         "category": "",
#         "type": "",
#         "country": "Nigeria",
#       },
#       {
#         "title_en": "Extra Judicial Killings and sexual harassment",
#         "description_en": "Law enforcement agencies phyiscially  citizens to enforce the stay at home and sexual molestation of women",
        
# "title_fr": "Assassinats extrajudiciaires et harcèlement sexuel",
# "description_fr": "Les organismes chargés de l'application des lois et les citoyens doivent faire respecter le séjour à la maison et les violences sexuelles sur les femmes",
#         "titleses": "Asesinatos extrajudiciales y acoso sexual",
#         "descriptionses": "Los organismos encargados de hacer cumplir la ley, especialmente ciudadanos para hacer cumplir la estancia en el hogar y el abuso sexual de las mujeres",


#         "link": "http://venturesafrica.com/security-agents-killed-more-nigerians-than-covid-19-during-lockdown/",
#         "progressive": "need to watch",
#         "category": "",
#         "type": "",
#         "country": "Nigeria",
#       },
#       {
#         "title_en": "9.5 million women will not access a safe abortion in 2020 due to the pandemic",
#         "description_en": "Colombia is one of the countries in the LAC region who will be most affected by funding cuts on SRHR",
        
# "title_fr": "9,5 millions de femmes n'auront pas accès à un avortement sécurisé en 2020 en raison de la pandémie",
# "description_fr": "La Colombie est l'un des pays de la région ALC qui sera le plus touché par les coupes budgétaires dans le domaine des SDSR",
#         "titleses": "9.5 millones de mujeres no accederán a un aborto seguro en 2020 debido a la pandemia",
#         "descriptionses": "Colombia es uno de los países de la región de ALC que se verá más afectado por los recortes de fondos para la SDSR",


#         "link": "https://www.france24.com/es/20200417-9-5-millones-de-mujeres-no-podr%C3%ADan-acceder-a-un-aborto-seguro-en-2020-por-la-pandemia",
#         "progressive": "regressive",
#         "category": "SRHR",
#         "type": "policy or law, temporary measure",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "$5 Cans of Tuna: Colombia Corruption Thrives During Coronavirus Outbreak",
#         "description_en": "Colombian authorities have detected widespread overcharging for food and medical supplies meant to help the Andean country deal with its coronavirus outbreak",
        
# "title_fr": "Boîtes de thon à 5 $: la corruption en Colombie prospère lors d'une épidémie de coronavirus",
# "description_fr": "Les autorités colombiennes ont détecté une surfacturation généralisée pour la nourriture et les fournitures médicales destinées à aider le pays andin à faire face à son épidémie de coronavirus",
#         "titleses": "$ 5 latas de atún: la corrupción en Colombia prospera durante el brote de coronavirus",
#         "descriptionses": "Las autoridades colombianas han detectado una sobrecarga generalizada de alimentos y suministros médicos destinados a ayudar al país andino a enfrentar su brote de coronavirus",


#         "link": "https://www.nytimes.com/reuters/2020/04/14/world/americas/14reuters-health-coronavirus-colombia-corruption.html",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Map of cases and deaths by coronavirus by department in Colombia",
#         "description_en": "Tracker of Covid-19 cases per region in Colombia",
        
# "title_fr": "Carte des cas et des décès par coronavirus par département en Colombie",
# "description_fr": "Suivi des cas de Covid-19 par région en Colombie",
#         "titleses": "Mapa de casos y muertes por coronavirus por departamento en Colombia",
#         "descriptionses": "Rastreador de casos de Covid-19 por región en Colombia",


#         "link": "https://colombia.as.com/colombia/2020/04/16/tikitakas/1587037898_987177.html?fbclid=IwAR2WZQTPaJB8S5_hQtIqPj8yaujO9lhD242gVVYff9Szb7L2ZTMk0h262zw",
#         "progressive": "need to watch",
#         "category": "digital surveillance",
#         "type": "temporary measure, observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "The challenges facing education during the Covid-19 pandemic",
#         "description_en": "Teachers and student challenges stories from the pandemic",
        
# "title_fr": "Les défis de l'éducation pendant la pandémie de Covid-19",
# "description_fr": "Les enseignants et les élèves défient les histoires de la pandémie",
#         "titleses": "Los desafíos que enfrenta la educación durante la pandemia de Covid-19",
#         "descriptionses": "Maestros y estudiantes desafían historias de la pandemia",


#         "link": "https://www.elespectador.com/coronavirus/los-retos-que-enfrenta-la-educacion-durante-la-pandemia-del-covid-19-articulo-912593",
#         "progressive": "regressive",
#         "category": "education",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Colombia asks for international support to assist Venezuelans in the midst of a coronavirus crisis",
#         "description_en": "Government made an urgent call to increase the resources allocated to the migrant population with possible contagion or infected by Covid-19",
        
# "title_fr": "La Colombie demande un soutien international pour venir en aide aux Vénézuéliens en pleine crise de coronavirus",
# "description_fr": "Le gouvernement a lancé un appel urgent pour accroître les ressources allouées à la population migrante susceptible de contagion ou infectée par Covid-19",
#         "titleses": "Colombia solicita apoyo internacional para ayudar a los venezolanos en medio de una crisis de coronavirus",
#         "descriptionses": "El gobierno hizo un llamado urgente para aumentar los recursos asignados a la población migrante con posible contagio o infectado por Covid-19",


#         "link": "https://www.elespectador.com/coronavirus/colombia-pide-apoyo-internacional-para-atender-venezolanos-en-medio-de-crisis-por-coronavirus-articulo-914347?fbclid=IwAR0f6P7rrzLpsAueUGR7D7BtIxDLNZOsKRi2kWNsg7UCxwUN60VEnSy-53E",
#         "progressive": "need to watch",
#         "category": "healthcare, economy",
#         "type": "temporary measure, observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Colombia, the virus and the always forgotten",
#         "description_en": "The government punishes those who breach quarantine, but has been unable to provide the conditions that would allow them to stay home without starving",
        
# "title_fr": "La Colombie, le virus et toujours oublié",
# "description_fr": "Le gouvernement punit ceux qui ne respectent pas la quarantaine, mais n'a pas été en mesure de fournir les conditions qui leur permettraient de rester chez eux sans mourir de faim",
#         "titleses": "Colombia, el virus y lo siempre olvidado",
#         "descriptionses": "El gobierno castiga a quienes violen la cuarentena, pero no ha podido proporcionar las condiciones que les permitan quedarse en casa sin morir de hambre",


#         "link": "https://www.nytimes.com/es/2020/04/17/espanol/opinion/coronavirus-colombia.html?fbclid=IwAR0jjP1Edv3MCkdvnVxRktzuSlMlaborwQZ9qhaT_Q6DztgseQoGrS7-BnxebE",
#         "progressive": "regressive",
#         "category": "punitive, economy",
#         "type": "policy or law, temporary measure, observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Coronavirus: To beat the virus, Colombia tries separating men and women",
#         "description_en": "On odd-numbered days, men can leave the house to seek out essentials. On even-numbered days, it's the women's turn.",
        
# "title_fr": "Coronavirus: pour vaincre le virus, la Colombie essaie de séparer les hommes et les femmes",
# "description_fr": "Les jours impairs, les hommes peuvent quitter la maison pour chercher l'essentiel. Les jours pairs, c'est le tour des femmes.",
#         "titleses": "Coronavirus: para vencer al virus, Colombia intenta separar a hombres y mujeres",
#         "descriptionses": "En los días impares, los hombres pueden salir de la casa para buscar lo esencial. En los días pares, es el turno de las mujeres",


#         "link": "https://www.straitstimes.com/world/americas/coronavirus-to-beat-the-virus-colombia-tries-separating-men-and-women?fbclid=IwAR3wthnzlzRgjVXMRpylXP1wUa4b7S-35v04HMjv7dP_-PFFtn9QUnp00TU",
#         "progressive": "need to watch",
#         "category": "healthcare, gender-based violence",
#         "type": "policy or law, temporary measure",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Colombia: Indigenous Peoples will die from COVID-19 or from hunger if the state does not act immediately",
#         "description_en": "Colombia must urgently take appropriate measures to guarantee the rights of Indigenous Peoples",
        
# "title_fr": "Colombie: les peuples autochtones mourront du COVID-19 ou de la faim si l'État n'agit pas immédiatement",
# "description_fr": "La Colombie doit prendre d'urgence des mesures appropriées pour garantir les droits des peuples autochtones",
#         "titleses": "Colombia: Indigenous Peoples will die from COVID-19 or from hunger if the state does not act immediately",
#         "descriptionses": "Colombia must urgently take appropriate measures to guarantee the rights of Indigenous Peoples",


#         "link": "https://www.amnesty.org/en/latest/news/2020/04/colombia-pueblos-indigenas-covid19-hambre/",
#         "progressive": "regressive",
#         "category": "healthcare, food, race",
#         "type": "policy or law, observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Facing the COVID-19 Outbreak City of Bogotá",
#         "description_en": "the report that summarizes the Measures to Contain COVID-19 implemented by the Mayor's Office of Bogotá",
        
# "title_fr": "Face à l'épidémie de COVID-19 de Bogotá",
# "description_fr": "le rapport qui résume les mesures visant à contenir le COVID-19 mises en œuvre par le bureau du maire de Bogotá",
#         "titleses": "Frente al brote de COVID-19 Ciudad de Bogotá",
#         "descriptionses": "el informe que resume las medidas para contener COVID-19 implementadas por la Alcaldía de Bogotá",


#         "link": "http://internacional.secretariageneral.gov.co/Facing_the_COVID-19_Outbreak_Bogota_City_Hall_eng",
#         "progressive": "progressive",
#         "category": "digital surveillance, healthcare, economy, food, gender-based violence, labor",
#         "type": "policy or law, temporary measure",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "We Need to Solve This: Colombia's Amazing race to Build a $1,000 Ventilator",
#         "description_en": "As COVID-19 bears down, a spontaneous alliance of techies and health professionals in Medellin making promising progress on an urgent medical problem.",
        
# "title_fr": "Nous devons résoudre ce problème: l'incroyable course en Colombie pour construire un ventilateur de 1 000 $",
# "description_fr": "Au fur et à mesure que COVID-19 s'effondre, une alliance spontanée de techniciens et de professionnels de la santé à Medellin fait des progrès prometteurs sur un problème médical urgent.",
#         "titleses": "Necesitamos resolver esto: la increíble carrera de Colombia para construir un ventilador de $ 1,000",
#         "descriptionses": "A medida que avanza COVID-19, una alianza espontánea de profesionales de la tecnología y la salud en Medellín logra avances prometedores en un problema médico urgente",


#         "link": "https://www.vanityfair.com/news/2020/04/colombias-amazing-race-to-build-a-1000-ventilator?fbclid=IwAR0wJapnFmiBVbuEQ7_pmwv922DALMLAdp4F75LQ34beasfkm5ZbZmnJLBA",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Government enables WhatsApp line to answer questions about coronavirus",
#         "description_en": "Whatsapp citizen response line for Covid-19",
        
# "title_fr": "Le gouvernement permet à la ligne WhatsApp de répondre aux questions sur le coronavirus",
# "description_fr": "Ligne de réponse citoyenne Whatsapp pour Covid-19",
#         "titleses": "El gobierno habilita la línea de WhatsApp para responder preguntas sobre el coronavirus",
#         "descriptionses": "Línea de respuesta ciudadana de Whatsapp para Covid-19",


#         "link": "https://www.publimetro.co/co/noticias/2020/04/15/gobierno-habilita-linea-whatsapp-atender-dudas-coronavirus.html?fbclid=IwAR3UZL2y7XZAvTY2DOEF9Uv_s-EqNeg0ka0x4xmwR4ZH2-Tht0IRzwK9orc",
#         "progressive": "progressive",
#         "category": "digital surveillance, healthcare",
#         "type": "temporary measure",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "New economic relief measures for the payment of basic services",
#         "description_en": "",
        
# "title_fr": "Nouvelles mesures d'allégement économique pour le paiement des services de base",
# "description_fr": "",
#         "titleses": "Nuevas medidas de ayuda económica para el pago de servicios básicos",
#         "descriptionses": "",


#         "link": "https://twitter.com/JoMalagon/status/1250946202356547584?s=20",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "policy or law",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "What the Peak and Gender Law Says About the Transgender population",
#         "description_en": "The measure is applied in Bogotá to control the agglomeration of people in supermarkets and banks within the framework of the national quarantine.",
        
# "title_fr": "Ce que dit la loi sur le pic et le genre au sujet de la population transgenre",
# "description_fr": "La mesure est appliquée à Bogotá pour contrôler l'agglomération des personnes dans les supermarchés et les banques dans le cadre de la quarantaine nationale.",
#         "titleses": "Lo que dice la Ley de Pico y Género sobre la población transgénero",
#         "descriptionses": "La medida se aplica en Bogotá para controlar la aglomeración de personas en supermercados y bancos en el marco de la cuarentena nacional",


#         "link": "https://colombia.as.com/colombia/2020/04/14/tikitakas/1586886106_102899.html?omnil=resscrlltit",
#         "progressive": "progressive",
#         "category": "gender-based violence, healthcare",
#         "type": "policy or law",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Gender Dimensions in the COVID-19 crisis in Colombia: Incorporating women and the gender equality approach in the response to COVID-19 is a priority.",
#         "description_en": "Men and women face different impacts in the face of the health emergency, and emotional overload due to uncertainty, isolation and the economic burden that grows due to the loss of jobs",
        
# "title_fr": "Les dimensions de genre dans la crise du COVID-19 en Colombie: Lintégration des femmes et lapproche de légalité des sexes dans la réponse au COVID-19 est une priorité.",
# "description_fr": "Les hommes et les femmes sont confrontés à des impacts différents face à l'urgence sanitaire et à la surcharge émotionnelle due à l'incertitude, à l'isolement et au fardeau économique qui augmente en raison de la perte d'emplois",
#         "titleses": "Dimensiones de género en la crisis de COVID-19 en Colombia: incorporar las mujeres y el enfoque de igualdad de género en la respuesta a COVID-19 es una prioridad",
#         "descriptionses": "Los hombres y las mujeres enfrentan diferentes impactos ante la emergencia de salud y la sobrecarga emocional debido a la incertidumbre, el aislamiento y la carga económica que aumenta debido a la pérdida de empleos",


#         "link": "https://www2.unwomen.org/-/media/field%20office%20colombia/documentos/publicaciones/2020/01/covid19_onu_mujeres-colombia.pdf?la=es&vs=1437",
#         "progressive": "need to watch",
#         "category": "punitive, childcare, economy, gendered health impacts",
#         "type": "policy or law, observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "For not complying with the quarantine there are 8,405 fines in Medellín",
#         "description_en": "Although the streets are empty, in some areas there are still crowds.",
        
# "title_fr": "Pour non-respect de la quarantaine, il y a 8 405 amendes à Medellín",
# "description_fr": "Bien que les rues soient vides, il y a encore du monde dans certaines zones.",
#         "titleses": "Por no cumplir con la cuarentena hay 8,405 multas en Medellín",
#         "descriptionses": "Aunque las calles están vacías, en algunas áreas todavía hay multitudes",


#         "link": "https://www.eltiempo.com/colombia/medellin/por-no-acatar-la-cuarentena-van-8-405-multas-en-medellin-y-su-area-metropolitana-480998",
#         "progressive": "progressive",
#         "category": "punitive",
#         "type": "policy or law",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "UN Colombia Envoy: Ex-Combatants Making Masks Amid Pandemic",
#         "description_en": "former combatants are now making face masks to respond to the new coronavirus pandemic, but COVID-19 hasn't stopped violence against social leaders, human rights defenders and ex-fighters",
        
# "title_fr": "Envoyé de l'ONU en Colombie: des ex-combattants fabriquent des masques en période de pandémie",
# "description_fr": "d'anciens combattants fabriquent maintenant des masques pour répondre à la nouvelle pandémie de coronavirus, mais COVID-19 n'a pas mis fin à la violence contre les dirigeants sociaux, les défenseurs des droits de l'homme et les anciens combattants",
#         "titleses": "UN Colombia Envoy: Ex-Combatants Making Masks Amid Pandemic",
#         "descriptionses": "former combatants are now making face masks to respond to the new coronavirus pandemic, but COVID-19 hasn't stopped violence against social leaders, human rights defenders and ex-fighters",


#         "link": "https://www.nytimes.com/aponline/2020/04/14/world/americas/ap-un-virus-outbreak-un-colombia.html",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "policy or law, temporary measure, observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "The odyssey of Venezuelan families to return to their country from Colombia and flee the coronavirus",
#         "description_en": "Migrants have been walking for many weeks to arrive to their country",
        
# "title_fr": "L'odyssée des familles vénézuéliennes de retourner dans leur pays depuis la Colombie et de fuir le coronavirus",
# "description_fr": "Les migrants marchent depuis plusieurs semaines pour arriver dans leur pays",
#         "titleses": "La odisea de las familias venezolanas para regresar a su país desde Colombia y huir del coronavirus",
#         "descriptionses": "Los migrantes han estado caminando durante muchas semanas para llegar a su país",


#         "link": "https://noticias.caracoltv.com/colombia/la-odisea-de-varias-familias-venezolanas-para-volver-su-pais-desde-colombia-y-huir-del-coronavirus-nid226373?fbclid=IwAR0ZnYvHEB9NM6far1u6OqCwZYSTABkMVoLNNyEWRdmLJkj2cUdSfQ6MDy8",
#         "progressive": "need to watch",
#         "category": "healthcare, economy, labor, gender-based violence",
#         "type": "observed response",
#         "country": "Colombia",
#       },
#       {
#         "title_en": "Chilbirth in Venezuela, Where Women's Deaths are a State Secret",
#         "description_en": "Few parts of that system have been as damaged as its maternity wards, where the most critical birthing tools have broken down or just disappeared, sometimes forcing doctors to turn women away.",
        
# "title_fr": "Chilbirth au Venezuela, où la mort des femmes est un secret d'État",
# "description_fr": "Peu de parties de ce système ont été aussi endommagées que ses maternités, où les outils d'accouchement les plus critiques sont tombés en panne ou ont tout simplement disparu, obligeant parfois les médecins à refuser les femmes.",
#         "titleses": "Nacimiento infantil en Venezuela, donde las muertes de mujeres son un secreto de estado",
#         "descriptionses": "Pocas partes de ese sistema han sido tan dañadas como sus salas de maternidad, donde las herramientas de parto más críticas se han estropeado o simplemente desaparecido, a veces obligando a los médicos a rechazar a las mujeres",


#         "link": "https://www.nytimes.com/2020/04/10/world/americas/venezuela-pregnancy-birth-death.html",
#         "progressive": "regressive",
#         "category": "SRHR, healthcare, gender-based violence, disability",
#         "type": "policy or law, observed response",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "US ignores calls to suspend Venezuela and Iran sanctions amid coronavirus pandemic",
#         "description_en": "Spread of coronavirus has not slowed drumbeat of successive layers of punitive measures imposed by the state department",
        
# "title_fr": "Les États-Unis ignorent les appels à suspendre les sanctions contre le Venezuela et l'Iran en raison de la pandémie de coronavirus",
# "description_fr": "La propagation du coronavirus n'a pas ralenti le rythme des couches successives de mesures punitives imposées par le département d'État",
#         "titleses": "Estados Unidos ignora los llamados a suspender las sanciones de Venezuela e Irán en medio de la pandemia de coronavirus",
#         "descriptionses": "La propagación del coronavirus no ha frenado el ritmo de las sucesivas capas de medidas punitivas impuestas por el departamento de estado",


#         "link": "https://www.theguardian.com/world/2020/mar/31/us-ignores-Global-appeals-suspend-sanctions-coronavirus-pandemic-iran-venezuela",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "policy or law, temporary measure, observed response",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "The unusual official figures of the Chavista regime on the coronavirus in Venezuela",
#         "description_en": "Maduro says his regime has done more diagnostic tests than any other country in the region",
        
# "title_fr": "Les chiffres officiels inhabituels du régime Chavista sur le coronavirus au Venezuela",
# "description_fr": "Maduro dit que son régime a fait plus de tests de diagnostic que tout autre pays de la région",
#         "titleses": "Las inusuales cifras oficiales del régimen chavista sobre el coronavirus en Venezuela",
#         "descriptionses": "Maduro dice que su régimen ha realizado más pruebas de diagnóstico que cualquier otro país de la región",


#         "link": "https://www.infobae.com/america/venezuela/2020/04/13/las-insolitas-cifras-oficiales-del-regimen-chavista-sobre-el-coronavirus-en-venezuela/",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "After Fleeing Crisis, Venezuelan Migrants Now Struggle In Coronavirus Lockdown",
#         "description_en": "immigrants in the country are struggling after the authorities passed measures to prevent the spread of the new coronavirus.",
        
# "title_fr": "Après avoir fui la crise, les migrants vénézuéliens se battent maintenant pour bloquer le coronavirus",
# "description_fr": "les immigrants dans le pays se débattent après que les autorités ont adopté des mesures pour empêcher la propagation du nouveau coronavirus.",
#         "titleses": "Después de huir de la crisis, los migrantes venezolanos ahora luchan contra el bloqueo del coronavirus",
#         "descriptionses": "los inmigrantes en el país están luchando después de que las autoridades aprobaron medidas para prevenir la propagación del nuevo coronavirus",


#         "link": "https://www.npr.org/2020/04/03/824004353/after-fleeing-crisis-venezuelan-migrants-now-struggle-in-coronavirus-lockdown",
#         "progressive": "regressive",
#         "category": "economy, labor, food",
#         "type": "policy or law, temporary measure",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "Coronavirus, sex and drugs: how privileged kids of Venezuela's elite still party in the pandemic",
#         "description_en": "The potential risk is high for the pandemic to overwhelm an already crippled health system, where hospitals lack water, electricity and supplies.",
        
# "title_fr": "Coronavirus, sexe et drogues: comment les enfants privilégiés de l'élite du Venezuela continuent de faire partie de la pandémie",
# "description_fr": "Le risque potentiel est élevé pour la pandémie de submerger un système de santé déjà paralysé, où les hôpitaux manquent d'eau, d'électricité et de fournitures.",
#         "titleses": "Coronavirus, sexo y drogas: cómo los niños privilegiados de la élite venezolana aún participan en la pandemia",
#         "descriptionses": "El riesgo potencial es alto para que la pandemia desborde un sistema de salud ya paralizado, donde los hospitales carecen de agua, electricidad y suministros",


#         "link": "https://www.scmp.com/news/world/americas/article/3078952/coronavirus-sex-and-drugs-how-privileged-kids-venezuelas-elite",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "observed response",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "Venezuela elderly feel 'sentenced to euthanasia' under coronavirus quarantine",
#         "description_en": "The plight of senior citizens was already acute in Venezuela following six years of brutal economic crisis and chronic problems with power and water services",
        
# "title_fr": "Les personnes âgées du Venezuela se sentent condamnées à l'euthanasie sous mise en quarantaine des coronavirus",
# "description_fr": "Le sort des personnes âgées était déjà aigu au Venezuela après six années de crise économique brutale et de problèmes chroniques avec les services d'électricité et d'eau",
#         "titleses": "Los ancianos de Venezuela se sienten 'sentenciados a eutanasia' bajo la cuarentena de coronavirus",
#         "descriptionses": "La difícil situación de las personas mayores ya era aguda en Venezuela luego de seis años de brutal crisis económica y problemas crónicos con los servicios de energía y agua",


#         "link": "https://www.reuters.com/article/us-health-coronavirus-venezuela-elderly/venezuela-elderly-feel-sentenced-to-euthanasia-under-coronavirus-quarantine-idUSKBN21O1EE",
#         "progressive": "regressive",
#         "category": "healthcare, disability, economy",
#         "type": "observed response",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "Returning Venezuelans face 'nightmare' coronavirus quarantine",
#         "description_en": "Advocates say migrants returning to Venezuela amid coronavirus lockdowns are forced into unsanitary gov't quarantine.",
        
# "title_fr": "Les Vénézuéliens de retour font face à une quarantaine de coronavirus cauchemardesque",
# "description_fr": "Les avocats disent que les migrants qui reviennent au Venezuela au milieu des blocages de coronavirus sont contraints à la quarantaine gouvernementale insalubre.",
#         "titleses": "Los venezolanos que regresan se enfrentan a la cuarentena de coronavirus 'pesadilla'",
#         "descriptionses": "Los defensores dicen que los migrantes que regresan a Venezuela en medio de encierros por coronavirus son forzados a la cuarentena sanitaria",


#         "link": "https://www.aljazeera.com/news/2020/04/returning-venezuelans-forced-stirring-pot-diseases-200408195801387.html",
#         "progressive": "regressive",
#         "category": "healthcare, economy, gender-based violence",
#         "type": "observed response",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "Many Venezuelan Hospitals Lack Basics To Function, Let Alone Handle COVID-19",
#         "description_en": "Venezuela faces catastrophic consequences from the new coronavirus pandemic, which threatens to overwhelm its crumbling health system.",
        
# "title_fr": "De nombreux hôpitaux vénézuéliens manquent de bases pour fonctionner, laissez seul gérer le COVID-19",
# "description_fr": "Le Venezuela fait face à des conséquences catastrophiques de la nouvelle pandémie de coronavirus, qui menace de submerger son système de santé en ruine.",
#         "titleses": "Muchos hospitales venezolanos carecen de elementos básicos para funcionar, solo manejen COVID-19",
#         "descriptionses": "Venezuela enfrenta consecuencias catastróficas de la nueva pandemia de coronavirus, que amenaza con desbordar su sistema de salud en ruinas",


#         "link": "https://www.npr.org/2020/04/10/831569313/many-venezuelan-hospitals-lack-basics-to-function-let-alone-handle-covid-19?utm_campaign=npr&utm_medium=social&utm_term=nprnews&utm_source=facebook.com&fbclid=IwAR0GWtjEwhULAGTHUG7DFeminist Statement or Analysis8bVDR84un1EtgqyNyPIIVJPvlho8-9OU6Xm00",
#         "progressive": "regressive",
#         "category": "healthcare, economy, disability",
#         "type": "observed response",
#         "country": "Venezuela",
#       },
#       {
#         "title_en": "Paraguay Has South America's Best Record on Coronavirus After Early Lockdown",
#         "description_en": "Paraguay did not wait imposing a strict lockdown in early March, before neighboring countries.",
        
# "title_fr": "Le Paraguay a le meilleur record d'Amérique du Sud sur le coronavirus après un verrouillage précoce",
# "description_fr": "Le Paraguay n'a pas attendu pour imposer un verrouillage strict début mars, devant les pays voisins.",
#         "titleses": "Paraguay tiene el mejor récord de Coronavirus en Sudamérica después del cierre anticipado",
#         "descriptionses": "Paraguay no esperó imponer un bloqueo estricto a principios de marzo, antes de los países vecinos",


#         "link": "https://www.nytimes.com/reuters/2020/04/14/world/americas/14reuters-health-coronavirus-paraguay.html",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "policy or law, observed response",
#         "country": "Paraguay",
#       },
#       {
#         "title_en": "Coronavirus in Paraguay: Face-to-face classes would not return this year",
#         "description_en": "",
        
# "title_fr": "Coronavirus au Paraguay: les cours en face à face ne reviendront pas cette année",
# "description_fr": "",
#         "titleses": "Coronavirus en Paraguay: las clases presenciales no volverían este año",
#         "descriptionses": "",


#         "link": "http://www.c9n.com.py/actualidad/coronavirus-en-paraguay-clases-presenciales-no-volver%C3%ADan-este-a%C3%Scientific Datao-73249?fbclid=IwAR148mL63y8xJSYhZ7hTQvEeC95EGFh42_1ABlefNf2z23wPQmfIx_0KhNE",
#         "progressive": "need to watch",
#         "category": "education",
#         "type": "policy or law, observed response",
#         "country": "Paraguay",
#       },
#       {
#         "title_en": "Paraguayans go hungry as coronavirus lockdown ravages livelihoods",
#         "description_en": "Early, aggressive measures seem to be controlling the disease but the pandemic has laid bare the country's social inequalities",
        
# "title_fr": "Les Paraguayens ont faim alors que le verrouillage des coronavirus ravage les moyens de subsistance",
# "description_fr": "Des mesures agressives précoces semblent maîtriser la maladie mais la pandémie a mis à nu les inégalités sociales du pays",
#         "titleses": "los paraguayos pasan hambre mientras el bloqueo del coronavirus destruye los medios de vida",
#         "descriptionses": "Las primeras medidas agresivas parecen estar controlando la enfermedad, pero la pandemia ha puesto al descubierto las desigualdades sociales del país",


#         "link": "https://www.theguardian.com/Global-development/2020/apr/12/paraguay-coronavirus-hungry-social-inequalities?fbclid=IwAR04_TPgFrvaXWK8gR0oyZRjUhSRHROP8RXzWMjlX5P2FD7PKoj0tG3jGurcI",
#         "progressive": "regressive",
#         "category": "economy, food",
#         "type": "policy or law, observed response",
#         "country": "Paraguay",
#       },
#       {
#         "title_en": "Violence and confinement: Services for victims continue to operate",
#         "description_en": "All institutions have registered increases in cases of family violence since the quarantine began",
        
# "title_fr": "Violence et séquestration: les services aux victimes continuent de fonctionner",
# "description_fr": "Toutes les institutions ont enregistré une augmentation des cas de violence familiale depuis le début de la quarantaine",
#         "titleses": "Violencia y confinamiento: los servicios para las víctimas continúan operando",
#         "descriptionses": "Todas las instituciones han registrado aumentos en los casos de violencia familiar desde que comenzó la cuarentena",


#         "link": "https://www.ultimahora.com/violencia-y-encierro-servicios-victimas-siguen-operando-n2878172.html",
#         "progressive": "regressive",
#         "category": "punitive, digital surveillance, gender-based violence",
#         "type": "observed response",
#         "country": "Paraguay",
#       },
#       {
#         "title_en": "Paraguay is away from Covid-19 worst case scenario",
#         "description_en": "A country like Paraguay, with a serious deficit in its health system, the quarantine was established in due course",
        
# "title_fr": "Le Paraguay est loin du pire scénario de Covid-19",
# "description_fr": "Un pays comme le Paraguay, avec un grave déficit de son système de santé, la quarantaine a été établie en temps voulu",
#         "titleses": "Paraguay está lejos del peor de los casos de Covid-19",
#         "descriptionses": "Un país como Paraguay, con un grave déficit en su sistema de salud, la cuarentena se estableció a su debido tiempo",


#         "link": "https://www.gender-based violence.cl/noticia/mundo/paraguay-se-aleja-del-peor-escenario-del-covid-19-segun-informo-gobierno",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Paraguay",
#       },
#       {
#         "title_en": "Paraguay: Solidarity dining rooms offer hope in times of Covid-19",
#         "description_en": "Solidarity arises as a balm of hope, when state assistance does not arrive.",
        
# "title_fr": "Paraguay: les salles à manger solidaires offrent de l'espoir à l'époque de Covid-19",
# "description_fr": "La solidarité se présente comme un baume d'espoir, lorsque l'aide de l'État n'arrive pas.",
#         "titleses": "Paraguay: los comedores solidarios ofrecen esperanza en tiempos de Covid-19",
#         "descriptionses": "La solidaridad surge como un bálsamo de esperanza, cuando la asistencia estatal no llega",


#         "link": "https://es.aleteia.org/2020/04/14/paraguay-comedores-solidarios-brindan-esperanza-en-tiempos-de-covid-19/?fbclid=IwAR1xsP1P4EHuW_636QjrluIYbJXnrw3EhGihu6cXTiN7dV-11aygTgDM6SE",
#         "progressive": "need to watch",
#         "category": "economy, labor, food",
#         "type": "temporary measure, observed response",
#         "country": "Paraguay",
#       },
#       {
#         "title_en": "Paraguay: Higher education is not a government priority, students denounce",
#         "description_en": "Minister of education calls for virtual classes until the end of the year and organizations denounce digital gap that makes it impossible for youth to study",

# "title_en": "Paraguay: l'enseignement supérieur n'est pas une priorité du gouvernement, dénoncent les étudiants",
# "description_en": "Le ministre de l'éducation appelle à des cours virtuels jusqu'à la fin de l'année et les organisations dénoncent le fossé numérique qui empêche les jeunes d'étudier",
#         "titleses": "Paraguay: la educación superior no es una prioridad del gobierno, los estudiantes denuncian",
# "description_es": "Es ministro de educación pide clases virtuales hasta fin de año y las organizaciones denuncian la brecha digital que hace imposible que los jóvenes estudien",


# "link": "https://www.nodal.am/2020/04/paraguay-ministro-de-educacion-pide-clases-virtuales-hasta-fin-de-ano-y-organizaciones-denuncian-brecha-digital-que-imposibilita-estudiar-a-miles-de-jovenes/",
#         "progressive": "need to watch",
#         "category": "education, economy, food",
#         "type": "policy or law, temporary measure, observed response",
#         "country": "Paraguay",
#       },
#       {
#         "title_en": "What will the impact of Covid-19 be on the economy according to the IDB and what measures does it suggest?",
#         "description_en": "More in the IDB 2020 macroeconomic report",

# "title_en": "Quel sera l'impact de Covid-19 sur l'économie selon la BID et quelles mesures propose-t-elle?",
# "description_en": "Plus d'informations dans le rapport macroéconomique de la BID 2020",
#         "titleses": "¿Cuál será el impacto de Covid-19 en la economía según el BID y qué medidas sugiere?",
# "description_es": "Mss en el informe macroeconómico BID 2020",


# "link": "https://negocios.elpais.com.uy/noticias/sera-impacto-coronavirus-economia-bid-medidas-sugiere.html",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law, observed response",
#         "country": "Latin America and the Caribbean",
#       },
#       {
#         "title_en": "Latin America: from the outbreak to the coronavirus",
#         "description_en": "The erosion of US hegemony and the debacle of the Bolivarian bloc produce an evident vacuum in regional leadership",

# "title_en": "Amérique latine: de l'épidémie au coronavirus",
# "description_en": "L'érosion de l'hégémonie américaine et la débâcle du bloc bolivarien créent un vide évident dans la direction régionale",
#         "titleses": "América Latina: del brote al coronavirus",
# "description_es": "Ls erosión de la hegemonía estadounidense y la debacle del bloque bolivariano producen un vacío evidente en el liderazgo regional",


# "link": "https://elpais.com/elpais/2020/04/03/opinion/1585883651_861157.html?ssm=FB_CC&fbclid=IwAR1Nd0c8s2i8i961A8ZnF17tkXVyuaC92Uqx7FZu0PEa4HWU0cPEVuDdcTw",
#         "progressive": "need to watch",
#         "category": "healthcare, economy",
#         "type": "observed response",
#         "country": "Latin America and the Caribbean",
#       },
#       {
#         "title_en": "Coronavirus does not discriminate, Inequalities do",
#         "description_en": "Vencer la pandemia requiere enfrentar las desigualdades",

# "title_en": "Le coronavirus ne fait pas de discrimination, les inégalités le font",
# "description_en": "Vaincre la pandémie nécessite de faire face aux inégalités",
#         "titleses": "Coronavirus does not discriminate, Inequalities do",
# "description_es": "Vsncer la pandemia requiere enfrentar las desigualdades",


# "link": "https://oi-files-d8-prod.s3.eu-west-2.amazonaws.com/s3fs-public/2020-03/Covid%2019%20en%20LAC_nota%20informativa_F_0.pdf",
#         "progressive": "need to watch",
#         "category": "healthcare, economy, labor, food",
#         "type": "policy or law, observed response",
#         "country": "Latin America and the Caribbean",
#       },
#       {
#         "title_en": "Coronavirus in Uruguay | The history of the Australian cruise ship with covid-19 rejected by several countries and the 'humanitarian corridor' that it found in Montevideo",
#         "description_en": "The situation on the ship owned by Aurore Expeditions was further complicated when 128 of 217 passengers and crew members tested positive for the virus.",

# "title_en": "Coronavirus en Uruguay | L'histoire du navire de croisière australien avec covid-19 rejeté par plusieurs pays et le couloir humanitaire qu'il a trouvé à Montevideo",
# "description_en": "La situation sur le navire appartenant à Aurore Expeditions s'est encore compliquée lorsque 128 des 217 passagers et membres d'équipage ont été testés positifs pour le virus.",
#         "titleses": "Coronavirus en Uruguay | La historia del crucero australiano con covid-19 rechazado por varios países y el 'corredor humanitario' que encontró en Montevideo",
# "description_es": "Ls situación en el barco propiedad de Aurore Expeditions se complicó aún más cuando 128 de 217 pasajeros y miembros de la tripulación dieron positivo por el virus",


# "link": "https://www.guatevision.com/internacionales/bbc-news-mundo-internacionales/coronavirus-en-uruguay-la-historia-del-crucero-australiano-con-covid-19-rechazado-por-varios-paises-y-el-corredor-humanitario-que-encontro-en-montevideo?fbclid=IwAR2O4mJtFrnHMZFeminist Statement or AnalysisEYBhAuHBl24cnwQ77Y7lE0HHLbgAC2DSgwszCEm-NsQ",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Uruguay",
#       },
#       {
#         "title_en": "Argentina and Uruguay, the best evaluated in their management of the coronavirus crisis",
#         "description_en": "According to a study carried out by the Ipsos pollster, both countries are at the top of the countries that have best responded to the appearance of Covid-19",
        
# "title_fr": "L'Argentine et l'Uruguay, les mieux évalués dans leur gestion de la crise des coronavirus",
# "description_fr": "Selon une étude réalisée par le sondeur Ipsos, les deux pays sont en tête des pays qui ont le mieux répondu à l'apparition de Covid-19",
#         "titleses": "Argentina y Uruguay, los mejor evaluados en su manejo de la crisis del coronavirus",
#         "descriptionses": "Según un estudio realizado por el encuestador Ipsos, ambos países están en la cima de los países que mejor han respondido a la aparición de Covid-19",


#         "link": "http://enfoquejujuy.com/argentina-y-uruguay-los-mejores-evaluados-en-su-gestion-de-la-crisis-por-el-coronavirus/?fbclid=IwAR10qAsSConVFXaQG1YwsMDVSU-7yIVDNMWVqoFW4erY_OtlnpK6JzJy8bg",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Uruguay",
#       },
#       {
#         "title_en": "Uruguay: the country that was ahead of the coronavirus and is taken as an example",
#         "description_en": "Since 2007, Uruguay has carried out the Ceibal Plan, a technology inclusion initiative that was rated 'unique in the world",
        
# "title_fr": "Uruguay: le pays qui était en avance sur le coronavirus et est pris en exemple",
# "description_fr": "Depuis 2007, l'Uruguay a mis en œuvre le Plan Ceibal, une initiative d'inclusion technologique classée unique au monde",
#         "titleses": "Uruguay: el país que estaba por delante del coronavirus y se toma como ejemplo",
#         "descriptionses": "Desde 2007, Uruguay ha llevado a cabo el Plan Ceibal, una iniciativa de inclusión de tecnología que fue calificada como 'única en el mundo",


#         "link": "https://www.infobae.com/educacion/2020/04/17/educacion-el-pais-vecino-que-se-adelanto-al-coronavirus-y-es-tomado-como-ejemplo/",
#         "progressive": "need to watch",
#         "category": "education",
#         "type": "policy or law, observed response",
#         "country": "Uruguay",
#       },
#       {
#         "title_en": "The Uruguayan Parliament agrees the approval of the 'Coronavirus Fund",
#         "description_en": "",
        
# "title_fr": "Le Parlement uruguayen approuve l'approbation du Coronavirus Fund",
# "description_fr": "",
#         "titleses": "El Parlamento uruguayo acuerda la aprobación del 'Fondo Coronavirus",
# "description_es": ""s


# "link": "https://www.efe.com/efe/america/economia/el-parlamento-uruguayo-acuerda-la-aprobacion-del-fondo-coronavirus/20000011-4212287",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Uruguay",
#       },
#       {
#         "title_en": "Toll-free COVID-19 emotional support line",
#         "description_en": "The phone line began operating this week for all those who feel affected by isolation and social distancing and require emotional support",
        
# "title_fr": "Ligne de soutien émotionnel COVID-19 sans frais",
# "description_fr": "La ligne téléphonique a commencé à fonctionner cette semaine pour tous ceux qui se sentent affectés par l'isolement et l'éloignement social et qui ont besoin d'un soutien émotionnel",
#         "titleses": "Línea gratuita de apoyo emocional COVID-19",
#         "descriptionses": "La línea telefónica comenzó a funcionar esta semana para todos aquellos que se sienten afectados por el aislamiento y el distanciamiento social y requieren apoyo emocional",


#         "link": "https://www.gub.uy/ministerio-salud-publica/comunicacion/noticias/0800-1920-linea-gratuita-apoyo-emocional-frente-covid-19",
#         "progressive": "need to watch",
#         "category": "digital surveillance",
#         "type": "temporary measure",
#         "country": "Uruguay",
#       },
#       {
#         "title_en": "Depression, the other epidemic that Uruguay faces besides the coronavirus",
#         "description_en": "The country has one of the highest suicide rates in the region and a general quarantine can have psychological effects on the entire population.",
        
# "title_fr": "La dépression, l'autre épidémie à laquelle l'Uruguay est confronté en plus du coronavirus",
# "description_fr": "Le pays a l'un des taux de suicide les plus élevés de la région et une quarantaine générale peut avoir des effets psychologiques sur l'ensemble de la population.",
#         "titleses": "Depresión, la otra epidemia que enfrenta Uruguay además del coronavirus",
#         "descriptionses": "El país tiene una de las tasas de suicidio más altas de la región y una cuarentena general puede tener efectos psicológicos en toda la población",


#         "link": "https://expansion.mx/mundo/2020/03/27/la-depresion-la-otra-epidemia-que-uruguay-enfrenta-ademas-del-coronavirus?fbclid=IwAR2uW7tDHobpi0j3nIOokzOPZzkXuU_xhvzd8ZgulfwlePSAK3u8vMgy9r4",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Uruguay",
#       },
#       {
#         "title_en": "Coronavirus and abortion: the right to termination of pregnancy is not quarantined",
#         "description_en": "Health crisis does not stop unwanted pregnancies, but access to abortion rights may be hampered",
        
# "title_fr": "Coronavirus et avortement: le droit à l'interruption de grossesse n'est pas mis en quarantaine",
# "description_fr": "La crise sanitaire n'arrête pas les grossesses non désirées, mais l'accès aux droits à l'avortement peut être entravé",
#         "titleses": "Coronavirus y aborto: el derecho a la interrupción del embarazo no está en cuarentena",
#         "descriptionses": "La crisis de salud no detiene los embarazos no deseados, pero el acceso a los derechos de aborto puede verse obstaculizado",


#         "link": "https://latfem.org/coronavirus-y-aborto-el-derecho-a-la-interrupcion-del-embarazo-no-esta-en-cuarentena/",
#         "progressive": "need to watch",
#         "category": "SRHR, healthcare",
#         "type": "policy or law, observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "14% of those infected with coronavirus in Argentina are health workers",
#         "description_en": "Among 14% of infected doctors, 33% have a history of travel or close contact with infected people",

# "title_en": "14% des personnes infectées par le coronavirus en Argentine sont des agents de santé",
# "description_en": "Parmi 14% des médecins infectés, 33% ont des antécédents de voyage ou de contacts étroits avec des personnes infectées",
#         "titleses": "14% de las personas infectadas con coronavirus en Argentina son trabajadores de la salud",
# "description_es": "Estre el 14% de los médicos infectados, el 33% tiene antecedentes de viajes o contacto cercano con personas infectadas",


# "link": "https://www.eldestapeweb.com/nota/el-14-de-los-infectados-de-coronavirus-en-argentina-son-trabajadores-de-la-salud-202041710160",
#         "progressive": "need to watch",
#         "category": "healthcare, gendered health impacts",
#         "type": "observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Coronavirus in Argentina: will students be evaluated while classes are suspended?",
#         "description_en": "Some provinces will seek to accompany without putting notes until they return to the classrooms and others will aim to prove the learning",
        
# "title_fr": "Coronavirus en Argentine: les élèves seront-ils évalués pendant la suspension des cours?",
# "description_fr": "Certaines provinces chercheront à accompagner sans mettre de notes jusqu'à leur retour en classe et d'autres viseront à prouver l'apprentissage",
#         "titleses": "Coronavirus en Argentina: ¿serán evaluados los estudiantes mientras se suspenden las clases?",
#         "descriptionses": "Algunas provincias buscarán acompañar sin poner notas hasta que regresen a las aulas y otras buscarán demostrar el aprendizaje",


#         "link": "https://www.infobae.com/educacion/2020/04/15/coronavirus-en-argentina-los-alumnos-seran-evaluados-mientras-las-clases-esten-suspendidas/",
#         "progressive": "need to watch",
#         "category": "education",
#         "type": "policy or law, observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Emergency family income",
#         "description_en": "The bond seeks to alleviate the impact of the health emergency on the economy of the most affected Argentine families.",
        
# "title_fr": "Revenu familial d'urgence",
# "description_fr": "Le lien vise à atténuer l'impact de l'urgence sanitaire sur l'économie des familles argentines les plus touchées.",
#         "titleses": "Ingresos familiares de emergencia",
#         "descriptionses": "El bono busca aliviar el impacto de la emergencia sanitaria en la economía de las familias argentinas más afectadas",


#         "link": "https://www.argentina.gob.ar/economia/medidas-economicas-COVID19/ingresofamiliardeemergencia",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "The request for help due to gender violence in Argentina increased during the COVID19 by 39%",
#         "description_en": "",
        
# "title_fr": "La demande d'aide due à la violence de genre en Argentine a augmenté de 39% pendant le COVID19",
# "description_fr": "",
#         "titleses": "La solicitud de ayuda por violencia de género en Argentina aumentó durante el COVID19 en un 39%",
#         "descriptionses": "",


#         "link": "https://www.onu.org.ar/se-incremento-un-39-el-pedido-de-ayuda-por-violencia-de-genero-en-argentina-durante-el-covid19/",
#         "progressive": "need to watch",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Coronavirus: how is the permit that those over 70 will need to circulate",
#         "description_en": "The city government will implement the measure to prevent the highest risk group from leaving their homes.",
        
# "title_fr": "Coronavirus: comment est autorisé le permis de circulation pour les plus de 70 ans",
# "description_fr": "Le gouvernement de la ville mettra en œuvre la mesure pour empêcher le groupe le plus à risque de quitter son domicile.",
#         "titleses": "Coronavirus: cómo es el permiso para que circulen los mayores de 70 años",
#         "descriptionses": "El gobierno de la ciudad implementará la medida para evitar que el grupo de mayor riesgo salga de sus hogares",


#         "link": "https://www.eldestapeweb.com/nota/coronavirus-como-es-el-permiso-que-necesitaran-los-mayores-de-70-anos-para-circular-por-caba-202041621530",
#         "progressive": "need to watch",
#         "category": "punitive, digital surveillance",
#         "type": "policy or law",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Coronavirus in Argentina, Alberto Fernández to some entrepreneurs: 'Boys, it's time to earn less",
#         "description_en": "The president stressed that they took a 'series of measures' for companies.",
        
# "title_fr": "Coronavirus en Argentine, Alberto Fernández à certains entrepreneurs: Les garçons, il est temps de gagner moins",
# "description_fr": "Le président a souligné qu'il avait pris une série de mesures pour les entreprises.",
#         "titleses": "Coronavirus en Argentina, Alberto Fernández para algunos empresarios: 'Chicos, es hora de ganar menos",
#         "descriptionses": "El presidente hizo hincapié en que tomaron una 'serie de medidas' para las empresas",


#         "link": "https://www.clarin.com/politica/coronavirus-argentina-alberto-fernandez-empresarios-muchachos-toco-hora-ganar-_0_GlMd13NhU.html",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law, observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Argentine government economic support package",
#         "description_en": "Government has ensured that no essential services be cut for retirees, social welfare recipients and households earning less than a combined 33,750 pesos (about $520) due to a lack of payment",
        
# "title_fr": "Paquet de soutien économique du gouvernement argentin",
# "description_fr": "Le gouvernement a veillé à ce qu'aucun service essentiel ne soit supprimé pour les retraités, les assistés sociaux et les ménages gagnant moins de 33 750 pesos (environ 520 dollars) en raison d'un manque de paiement",
#         "titleses": "paquete de apoyo económico del gobierno argentino",
#         "descriptionses": "El gobierno se ha asegurado de que no se reduzcan los servicios esenciales para jubilados, beneficiarios de asistencia social y hogares que ganan menos de 33,750 pesos combinados (alrededor de $ 520) debido a la falta de pago",


#         "link": "https://www.boletinoficial.gob.ar/detalleAviso/primera/227120/20200325",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Crisis lending surges as government obliges banks to assist",
#         "description_en": "Credit lending is making a comeback in Argentina as the country seeks to flood its streets with pesos to mitigate the effects of the coronavirus.",
        
# "title_fr": "Les prêts de crise augmentent alors que le gouvernement oblige les banques à apporter leur aide",
# "description_fr": "Le crédit est de retour en Argentine alors que le pays cherche à inonder ses rues de pesos pour atténuer les effets du coronavirus.",
#         "titleses": "Crisis lending surges as government obliges banks to assist",
#         "descriptionses": "Credit lending is making a comeback in Argentina as the country seeks to flood its streets with pesos to mitigate the effects of the coronavirus.",


#         "link": "https://www.batimes.com.ar/news/economy/crisis-lending-surges-as-government-obliges-banks-to-assist.phtml",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Alberto Fernández supported the creation of an extraordinary tax for large fortunes",
#         "description_en": "The project, which seeks to generate new resources to cope with the pandemic, runs counter to the one that drives Macrism to lower the high salaries of the 3 branches of the State by 30%.",
        
# "title_fr": "Alberto Fernández a soutenu la création d'une taxe extraordinaire pour les grandes fortunes",
# "description_fr": "Le projet, qui cherche à générer de nouvelles ressources pour faire face à la pandémie, va à l'encontre de celui qui pousse Macrism à baisser les salaires élevés des 3 branches de l'État de 30%.",
#         "titleses": "Alberto Fernández apoyó la creación de un impuesto extraordinario para grandes fortunas",
#         "descriptionses": "El proyecto, que busca generar nuevos recursos para hacer frente a la pandemia, va en contra del que impulsa al macrismo a reducir los altos salarios de las 3 ramas del Estado en un 30%",


#         "link": "https://www.minutouno.com/notas/5093975-alberto-fernandez-apoyo-la-creacion-un-impuesto-extraordinario-las-grandes-fortunas",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Teleworking barely reaches 3 million workers",
#         "description_en": "With the extension of the quarantine, there are several items that are unable to transfer their tasks to the virtual world",
        
# "title_fr": "Le télétravail atteint à peine 3 millions de travailleurs",
# "description_fr": "Avec l'extension de la quarantaine, plusieurs éléments sont incapables de transférer leurs tâches vers le monde virtuel",
#         "titleses": "El teletrabajo apenas llega a 3 millones de trabajadores",
#         "descriptionses": "Con la extensión de la cuarentena, hay varios elementos que no pueden transferir sus tareas al mundo virtual",


#         "link": "https://www.infobae.com/sociedad/2020/04/15/coronavirus-en-la-argentina-el-teletrabajo-apenas-alcanza-a-3-millones-de-trabajadores/?fbclid=IwAR3hDyJfUsnMUutHwDX02AmogRg8pSxr8FY5-QRpxScientific DataxuLb-xlNNwxCUCz4",
#         "progressive": "need to watch",
#         "category": "economy, food",
#         "type": "policy or law, temporary measure, observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Argentina, the first in the world in proportion of health personnel infected with Covid-19",
#         "description_en": "14% of health workers infected in the country",
        
# "title_fr": "L'Argentine, la première au monde en proportion de personnels de santé infectés par Covid-19",
# "description_fr": "14% des agents de santé infectés dans le pays",
#         "titleses": "Argentina, la primera en el mundo en proporción de personal de salud infectado con Covid-19",
#         "descriptionses": "14% de los trabajadores de salud infectados en el país",


#         "link": "http://www.laizquierdadiario.com/Argentina-primera-a-nivel-mundial-en-proporcion-de-personal-de-salud-infectado-con-Covid-19",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Argentina",
#       },
#       {
#         "title_en": "Plan of Action on Coronavirus",
#         "description_en": "Citizens guide for general Covid-19 response and government aid",
        
# "title_fr": "Plan d'action sur le coronavirus",
# "description_fr": "Guide des citoyens pour la réponse générale à Covid-19 et l'aide gouvernementale",
#         "titleses": "Plan de acción sobre coronavirus",
#         "descriptionses": "Guía de ciudadanos para la respuesta general de Covid-19 y la ayuda del gobierno",


#         "link": "https://www.gob.cl/coronavirus/plandeaccion/",
#         "progressive": "progressive",
#         "category": "punitive, digital surveillance, healthcare, education, labor, food",
#         "type": "policy or law, temporary measure",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Chile to issue coronavirus 'immunity' cards for those who recovered from disease",
#         "description_en": "Governmetn will soon begin distributing the world's first coronavirus immunity cards to those who have fully recovered from the disease",
        
# "title_fr": "Le Chili va délivrer des cartes d'immunité contre les coronavirus à ceux qui se sont remis d'une maladie",
# "description_fr": "Governmetn va bientôt commencer à distribuer les premières cartes d'immunité contre les coronavirus au monde à ceux qui se sont complètement remis de la maladie",
#         "titleses": "Chile emitirá tarjetas de inmunidad al coronavirus para quienes se recuperaron de la enfermedad",
#         "descriptionses": "Governmetn pronto comenzará a distribuir las primeras tarjetas de inmunidad de coronavirus del mundo a aquellos que se hayan recuperado completamente de la enfermedad",


#         "link": "https://www.nydailynews.com/coronavirus/ny-coronavirus-chile-to-give-out-immunity-cards-20200417-cjzrktfhqvezti5nay6vxqxl4m-story.html?fbclid=IwAR05wU2i7ggkLviOJ15E9observed responsezf4owDEwt9loIs3fiXr-digital surveillanceci6GViOtQMS6vQ",
#         "progressive": "need to watch",
#         "category": "digital surveillance, healthcare",
#         "type": "policy or law",
#         "country": "Chile",
#       },
#       {
#         "title_en": "In Chile, education in times of the coronavirus will be by open television signal",
#         "description_en": "",
        
# "title_fr": "Au Chili, l'éducation à l'époque du coronavirus se fera par signal de télévision ouvert",
# "description_fr": "",
#         "titleses": "En Chile, la educación en tiempos del coronavirus será por señal de televisión abierta",
#         "descriptionses": "",


#         "link": "https://www.eluniverso.com/noticias/2020/04/14/nota/7813446/chile-educacion-tiempos-coronavirus-sera-senal-abierta-television",
#         "progressive": "progressive",
#         "category": "education",
#         "type": "policy or law, temporary measure",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Chilean economy will fall 2% in 2020 due to coronavirus",
#         "description_en": "The Chilean economy will fall 2% in 2020 affected by the coronavirus pandemic, which will force higher public spending and drive a fiscal deficit of 8% GDP",
        
# "title_fr": "L'économie chilienne chutera de 2% en 2020 en raison du coronavirus",
# "description_fr": "L'économie chilienne chutera de 2% en 2020 affectée par la pandémie de coronavirus, ce qui obligera les dépenses publiques à augmenter et entraînera un déficit budgétaire de 8% du PIB",
#         "titleses": "La economía chilena caerá un 2% en 2020 debido al coronavirus",
#         "descriptionses": "La economía chilena caerá un 2% en 2020 afectada por la pandemia de coronavirus, lo que obligará a un mayor gasto público y generará un déficit fiscal del 8% del PIB",


#         "link": "https://www.infobae.com/america/agencias/2020/04/17/economia-chilena-caera-2-en-2020-golpeada-por-coronavirus-gobierno/",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Coronavirus in Chile: reports on gender violence increase 70%",
#         "description_en": "",
        
# "title_fr": "Coronavirus au Chili: les rapports sur la violence sexiste augmentent de 70%",
# "description_fr": "",
#         "titleses": "Coronavirus en Chile: informes sobre violencia de género aumentan 70%",
#         "descriptionses": "",


#         "link": "https://www.nodal.am/2020/04/chile-aumentan-70-las-denuncias-por-violencia-de-genero-durante-la-emergencia-sanitaria/",
#         "progressive": "need to watch",
#         "category": "punitive, gender-based violence",
#         "type": "observed response",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Migrants are trapped at the Chilean border due to coronavirus restrictions",
#         "description_en": "A thousand migrants, mainly Bolivians, are stranded in northern Chile after the sources of work in the country are exhausted and they cannot return to their homes due to the territorial closure",
        
# "title_fr": "Les migrants sont piégés à la frontière chilienne en raison des restrictions des coronavirus",
# "description_fr": "Un millier de migrants, principalement des Boliviens, sont bloqués dans le nord du Chili après que les sources de travail dans le pays sont épuisées et qu'ils ne peuvent pas rentrer chez eux en raison de la fermeture territoriale",
#         "titleses": "Los migrantes están atrapados en la frontera chilena debido a restricciones de coronavirus",
#         "descriptionses": "Un millar de migrantes, principalmente bolivianos, están varados en el norte de Chile después de que se agotaron las fuentes de trabajo en el país y no pueden regresar a sus hogares debido al cierre territorial",


#         "link": "https://translate.google.com/translate?hl=en&sl=es&u=https://lta.reuters.com/articulo/salud-coronavirus-chile-migrantes-idLTAKBN21Y3CT&prev=search",
#         "progressive": "need to watch",
#         "category": "economy, labor, disability, race",
#         "type": "temporary measure, observed response",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Main group of those infected in Chile is between 30 and 44 years old",
#         "description_en": "",
        
# "title_fr": "Le groupe principal des personnes infectées au Chili a entre 30 et 44 ans",
# "description_fr": "",
#         "titleses": "El grupo principal de personas infectadas en Chile tiene entre 30 y 44 años",
#         "descriptionses": "",


#         "link": "https://www.meganoticias.cl/nacional/298007-informe-epidemiologico-coronavirus-covid19-edad-contagiados-region-comuna.html",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Chile",
#       },
#       {
#         "title_en": "Bolivia approves electric anklets to control covid-19 suspects",
#         "description_en": "The use of 500 electric anklets that have a chip has been arranged to track possible infected covid-19",
        
# "title_fr": "La Bolivie approuve les bracelets électriques pour contrôler les suspects de Covid-19",
# "description_fr": "L'utilisation de 500 bracelets de cheville électriques dotés d'une puce a été prévue pour suivre d'éventuels covid-19 infectés",
#         "titleses": "Bolivia aprueba tobilleras eléctricas para controlar a los sospechosos de covid-19",
#         "descriptionses": "Se ha dispuesto el uso de 500 tobilleras eléctricas que tienen un chip para rastrear posibles covid-19 infectados",


#         "link": "https://andina.pe/agencia/noticia-bolivia-aprueba-tobilleras-electricas-para-controlar-sospechosos-covid19-792388.aspx?fbclid=IwAR1JcQCWXTAhJhwrMF-sBhq5tZYw5KSpQbJNO6LkHaFWkN63fCbZZRJ_dY0",
#         "progressive": "need to watch",
#         "category": "punitive, digital surveillance",
#         "type": "policy or law, observed response",
#         "country": "Bolivia",
#       },
#       {
#         "title_en": "Bolivia requests $ 320 million from the IMF to address the coronavirus pandemic",
#         "description_en": "Part of the financing would be used to pay the Universal Bond, which consists of granting 500 bolivianos (about $ 72) to four million people without income.",
        
# "title_fr": "La Bolivie demande 320 millions de dollars au FMI pour lutter contre la pandémie de coronavirus",
# "description_fr": "Une partie du financement serait utilisée pour payer la caution universelle, qui consiste à octroyer 500 bolivianos (environ 72 dollars) à quatre millions de personnes sans revenu.",
#         "titleses": "Bolivia solicita $ 320 millones al FMI para abordar la pandemia de coronavirus",
#         "descriptionses": "Parte del financiamiento se usaría para pagar el Bono Universal, que consiste en otorgar 500 bolivianos (aproximadamente $ 72) a cuatro millones de personas sin ingresos",


#         "link": "https://actualidad.rt.com/actualidad/350223-bolivia-solicitar-fmi-millones-bonos-coronavirus?fbclid=IwAR1SU6U78-JaLCAlI8lddqv23fwPNGIHBC_RYAl_r66ENVCjOe4k0lNKXfk",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law, temporary measure, observed response",
#         "country": "Bolivia",
#       },
#       {
#         "title_en": "Quarantine: 33 minors were raped and more than 1,200 women were victims of violence",
#         "description_en": "",
        
# "title_fr": "Quarantaine: 33 mineurs ont été violés et plus de 1 200 femmes ont été victimes de violences",
# "description_fr": "",
#         "titleses": "Cuarentena: 33 menores fueron violadas y más de 1.200 mujeres fueron víctimas de violencia",
#         "descriptionses": "",


#         "link": "https://www.atb.com.bo/seguridad/cuarentena-33-menores-fueron-violadas-y-m%C3%policy or laws-de-1200-mujeres-fueron-v%C3%ADctimas-de-violencia?fbclid=IwAR12bUpq0lDAj0CO4cdbX45kywVF5Z8Ml5RaYC09s2QAoVuHTusw-R_mlIk",
#         "progressive": "regressive",
#         "category": "gender-based violence",
#         "type": "observed response",
#         "country": "Bolivia",
#       },
#       {
#         "title_en": "Bolivia will distribute up to USD 500 million in bonds for COVID-19",
#         "description_en": "The aid impact low-income groups",
        
# "title_fr": "La Bolivie distribuera jusqu'à 500 millions de dollars d'obligations pour COVID-19",
# "description_fr": "L'aide affecte les groupes à faible revenu",
#         "titleses": "Bolivia distribuirá hasta USD 500 millones en bonos para COVID-19",
#         "descriptionses": "La ayuda afecta a los grupos de bajos ingresos",


#         "link": "https://www.dw.com/es/bolivia-repartir%C3%policy or law-hasta-usd-500-millones-en-bonos-por-covid-19/a-53141621",
#         "progressive": "progressive",
#         "category": "economy, disability",
#         "type": "policy or law",
#         "country": "Bolivia",
#       },
#       {
#         "title_en": "Bolivia: Ex-president to donate salary amid virus",
#         "description_en": "Evo Morales previously urged public officials who earn over $1,020 to donate their salaries to fight coronavirus pandemic",
        
# "title_fr": "Bolivie: un ancien président versera un salaire au milieu d'un virus",
# "description_fr": "Evo Morales a précédemment exhorté les fonctionnaires qui gagnent plus de 1 020 $ à donner leur salaire pour lutter contre la pandémie de coronavirus",
#         "titleses": "Bolivia: ex presidente donará salario en medio del virus",
#         "descriptionses": "Evo Morales instó previamente a los funcionarios públicos que ganan más de $ 1,020 a donar sus salarios para combatir la pandemia de coronavirus",


#         "link": "https://www.aa.com.tr/en/americas/bolivia-ex-president-to-donate-salary-amid-virus/1804629?fbclid=IwAR3XKckQPsKy1fN5oLAqfHWnStyftmrjgDfu03GMuCj4Xk33C6ElG9FScientific DataFk",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "observed response",
#         "country": "Bolivia",
#       },
#       {
#         "title_en": "Coronavirus leaves Bolivia's elections uncertain",
#         "description_en": "",
        
# "title_fr": "Le coronavirus laisse les élections boliviennes incertaines",
# "description_fr": "",
#         "titleses": "El coronavirus deja inciertas las elecciones bolivianas",
#         "descriptionses": "",


#         "link": "https://www.sandiegouniontribune.com/en-espanol/noticias/story/2020-04-08/coronavirus-deja-en-incertidumbre-elecciones-en-bolivia",
#         "progressive": "need to watch",
#         "category": "healthcare, economy",
#         "type": "observed response",
#         "country": "Bolivia",
#       },
#       {
#         "title_en": "Crackdown on feminist rallies and harrassment of former political prisoners",
#         "description_en": "Details cases of harrassment in March, part of continued state repression, while COVID responses emerging",
        
# "title_fr": "Répression des rassemblements féministes et harcèlement des anciennes détenues politiques",
# "description_fr": "Détaille les cas de harcèlement en mars, une partie de la répression continue de l'État, tandis que des réponses COVID émergent",
#         "titleses": "Represión de manifestaciones feministas y hostigamiento de ex presas políticas",
#         "descriptionses": "Detalla los casos de acoso en marzo, parte de la represión estatal continua, mientras surgen respuestas COVID",


#         "link": "https://monitor.civicus.org/updates/2020/04/08/crackdown-feminist-rallies-and-harassment-former-political-prisoners-nicaragua/",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "observed response",
#         "country": "Nicaragua",
#       },
#       {
#         "title_en": "El Salvador's Response To Covid-19 Excessively Restricts Fundamental Rights, Say CSOs",
#         "description_en": "Details online harrassment of human rights and feminist activists, government criticism, and censoring of journalists",
        
# "title_fr": "La réponse d'El Salvador à Covid-19 restreint excessivement les droits fondamentaux, disent les OSC",
# "description_fr": "Détaille le harcèlement en ligne des droits humains et des militantes féministes, les critiques du gouvernement et la censure des journalistes",
#         "titleses": "El Salvador's Response To Covid-19 Excessively Restricts Fundamental Rights, Say CSOs",
#         "descriptionses": "Details online harrassment of human rights and feminist activists, government criticism, and censoring of journalists",


#         "link": "https://monitor.civicus.org/updates/2020/04/07/el-salvadors-response-covid-19-has-excessively-restricted-fundamental-rights-say-csos/",
#         "progressive": "regressive",
#         "category": "punitive",
#         "type": "observed response",
#         "country": "El Salvador",
#       },
#       {
#         "title_en": "Victim Protection is Expanded During Coronavirus",
#         "description_en": "Expansion of support for HelpChat hotline for women and girls experiencing psychological, physical, and/sexual violence",
        
# "title_fr": "La protection des victimes est étendue pendant le coronavirus",
# "description_fr": "Extension du support de la hotline HelpChat pour les femmes et les filles victimes de violences psychologiques, physiques et / ou sexuelles",
#         "titleses": "La protección de la víctima se expande durante el coronavirus",
#         "descriptionses": "Expansión del apoyo a la línea de ayuda de HelpChat para mujeres y niñas que sufren violencia psicológica, física y / o sexual",


#         "link": "https://www.frauenring.at/opferschutz-corona-krise-ausgebaut",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "temporary measure",
#         "country": "Austria",
#       },
#       {
#         "title_en": "Bangladesh Sends food Aid to Brothels as Women Fight to Survive Lockdown",
#         "description_en": "Brief ddescription of food aid program within context of sex-work industry shut down, worker conditions",
        
# "title_fr": "Le Bangladesh envoie de l'aide alimentaire aux maisons closes alors que les femmes se battent pour survivre au verrouillage",
# "description_fr": "Brève description du programme d'aide alimentaire dans le contexte de la fermeture de l'industrie du sexe, des conditions de travail",
#         "titleses": "Bangladesh envía ayuda alimentaria a los burdeles mientras las mujeres luchan para sobrevivir el encierro",
#         "descriptionses": "Breve descripción del programa de ayuda alimentaria en el contexto del cierre de la industria del trabajo sexual, las condiciones de los trabajadores",


#         "link": "https://www.theguardian.com/Global-development/2020/apr/06/bangladesh-sends-food-aid-to-sex-workers-as-industry-goes-into-lockdown",
#         "progressive": "need to watch",
#         "category": "food",
#         "type": "temporary measure",
#         "country": "Bangladesh",
#       },
#       {
#         "title_en": "Women Mobilize to Prevent COVID-19 in Crowded Rohingya Refugee Camps",
#         "description_en": "Rohingya women leaders self-mobilized, forming networks and raising awareness on COVID-19 across all camps",
        
# "title_fr": "Des femmes se mobilisent pour empêcher le COVID-19 dans les camps de réfugiés Rohingya bondés",
# "description_fr": "Les femmes dirigeantes rohingyas se sont auto-mobilisées, formant des réseaux et sensibilisant à COVID-19 dans tous les camps",
#         "titleses": "Las mujeres se movilizan para prevenir COVID-19 en campamentos de refugiados rohingya llenos de gente",
#         "descriptionses": "Las mujeres líderes rohingya se auto movilizaron, formaron redes y crearon conciencia sobre COVID-19 en todos los campamentos",


#         "link": "https://reliefweb.int/report/bangladesh/women-mobilize-prevent-covid-19-crowded-rohingya-refugee-camps",
#         "progressive": "progressive",
#         "category": "healthcare, gendered health impacts, gender-based violence",
#         "type": "observed response",
#         "country": "Bangladesh",
#       },
#       {
#         "title_en": "#StayInYourTent: COVID-19 protective measures reach Sahara Desert",
#         "description_en": "Sahrawi people are fighting with all their resources against the spread of the virus",
        
# "title_fr": "#StayInYourTent: les mesures de protection COVID-19 atteignent le désert du Sahara",
# "description_fr": "Le peuple sahraoui se bat avec toutes ses ressources contre la propagation du virus",
#         "titleses": "#StayInYourTent: las medidas de protección de COVID-19 llegan al desierto del Sahara",
#         "descriptionses": "El pueblo saharaui está luchando con todos sus recursos contra la propagación del virus",


#         "link": "https://www.euronews.com/2020/04/10/stayinyourtent-covid-19-protective-measures-reach-sahara-desert",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Algeria",
#       },
#       {
#         "title_en": "Algeria's main lab anchors COVID-19 response",
#         "description_en": "Integrety and speed of COVID-19 testing has improved in Algeria's main lab",
        
# "title_fr": "Le principal laboratoire de l'Algérie ancre la réponse COVID-19",
# "description_fr": "L'intégrité et la rapidité des tests COVID-19 se sont améliorées dans le laboratoire principal d'Algérie",
#         "titleses": "El laboratorio principal de Argelia ancla la respuesta COVID-19",
#         "descriptionses": "La integridad y la velocidad de las pruebas COVID-19 han mejorado en el laboratorio principal de Argelia",


#         "link": "https://www.afro.who.int/news/algerias-main-lab-anchors-covid-19-response",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Algeria",
#       },
#       {
#         "title_en": "Bahrain launches electronic bracelets to keep track of active COVID-19 cases",
#         "description_en": "The Kingdom of Bahrain is keeping track of its active cases of COVID-19 via electronic bracelets.",
        
# "title_fr": "Bahreïn lance des bracelets électroniques pour suivre les cas COVID-19 actifs",
# "description_fr": "Le Royaume de Bahreïn surveille ses cas actifs de COVID-19 via des bracelets électroniques.",
#         "titleses": "Bahrein lanza pulseras electrónicas para realizar un seguimiento de los casos activos de COVID-19",
#         "descriptionses": "El Reino de Bahrein realiza un seguimiento de sus casos activos de COVID-19 a través de pulseras electrónicas",


#         "link": "https://www.mobihealthnews.com/news/europe/bahrain-launches-electronic-bracelets-keep-track-active-covid-19-cases",
#         "progressive": "progressive",
#         "category": "digital surveillance, healthcare",
#         "type": "policy or law, temporary measure",
#         "country": "Bahrain",
#       },
#       {
#         "title_en": "Government and institution measures in response to COVID-19.",
#         "description_en": "Bahrain has one of the highest testing rates per capita on the planet, obtaining the acknowledgment of the World Health Organization for its professional reaction",
        
# "title_fr": "Mesures gouvernementales et institutionnelles en réponse à COVID-19.",
# "description_fr": "Bahreïn a l'un des taux de dépistage par habitant les plus élevés de la planète, obtenant la reconnaissance de l'Organisation mondiale de la santé pour sa réaction professionnelle",
#         "titleses": "Medidas gubernamentales e institucionales en respuesta a COVID-19",
#         "descriptionses": "Bahrein tiene una de las tasas de prueba per cápita más altas del planeta, obteniendo el reconocimiento de la Organización Mundial de la Salud por su reacción profesional",


#         "link": "https://home.kpmg/xx/en/home/insights/2020/04/bahrain-government-and-institution-measures-in-response-to-covid.html",
#         "progressive": "progressive",
#         "category": "healthcare, economy, labor, food",
#         "type": "policy or law, temporary measure",
#         "country": "Bahrain",
#       },
#       {
#         "title_en": "Egypt's health sector races to scale up coronavirus readiness",
#         "description_en": "Egypt ordred manufacturers to channel medical protective equipment to public hospitals and announcing 1 billion Egyptian pounds",
        
# "title_fr": "Le secteur de la santé égyptien se précipite pour intensifier la préparation aux coronavirus",
# "description_fr": "L'Egypte a ordonné aux fabricants de canaliser des équipements de protection médicale vers les hôpitaux publics et d'annoncer 1 milliard de livres égyptiennes",
#         "titleses": "El sector de la salud de Egipto se apresura a ampliar la preparación para el coronavirus",
#         "descriptionses": "Egipto ordenó a los fabricantes que canalizaran equipos de protección médica a hospitales públicos y anunciaran mil millones de libras egipcias",


#         "link": "https://nationalpost.com/pmn/health-pmn/egypts-health-sector-races-to-scale-up-coronavirus-readiness",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "policy or law",
#         "country": "Egypt",
#       },
#       {
#         "title_en": "Launch of Phone Number during COVID-19",
#         "description_en": "without strong action by governments and mass media campaigns, we can expect an increase in the number of domestic workers forced to work",
        
# "title_fr": "Lancement du numéro de téléphone pendant COVID-19",
# "description_fr": "sans une action énergique des gouvernements et des campagnes médiatiques, nous pouvons nous attendre à une augmentation du nombre de travailleurs domestiques contraints de travailler",
#         "titleses": "Lanzamiento del número de teléfono durante COVID-19",
#         "descriptionses": "sin una fuerte acción de los gobiernos y las campañas de los medios de comunicación, podemos esperar un aumento en el número de trabajadoras domésticas obligadas a trabajar",


#         "link": "https://www.hrw.org/news/2020/04/06/domestic-workers-middle-east-risk-abuse-amid-covid-19-crisis",
#         "progressive": "need to watch",
#         "category": "healthcare, labor, race",
#         "type": "observed response",
#         "country": "Middle East and North Africa",
#       },
#       {
#         "title_en": "What Being on the Frontlines of Fighting for Gender Equality in Iraq Is Like During COVID-19",
#         "description_en": "The effect of COVID-19 on displaced women in the Kordistan region of Iraq",
        
# "title_fr": "À quoi ressemble la lutte en faveur de l'égalité des sexes en Irak pendant COVID-19",
# "description_fr": "L'effet de COVID-19 sur les femmes déplacées dans la région du Kordistan en Irak",
#         "titleses": "Cómo es estar en la primera línea de la lucha por la igualdad de género en Iraq durante COVID-19",
#         "descriptionses": "El efecto de COVID-19 en las mujeres desplazadas en la región de Kordistan en Iraq",


#         "link": "https://www.Globalcitizen.org/en/content/covid-19-womens-empowerment-iraq-syrian-conflict/",
#         "progressive": "need to watch",
#         "category": "education, economy, childcare, labor, race",
#         "type": "observed response",
#         "country": "Iraq",
#       },
#       {
#         "title_en": "Launch of Phone Number during covid",
#         "description_en": "To report Domestic Violences cases during Lockdown",
        
# "title_fr": "Lancement du numéro de téléphone pendant la convocation",
# "description_fr": "Pour signaler les cas de violence domestique pendant le verrouillage",
#         "titleses": "Lanzamiento del número de teléfono durante covid",
#         "descriptionses": "Para denunciar casos de violencia doméstica durante el bloqueo",


#         "link": "http://ncw.nic.in/",
#         "progressive": "progressive",
#         "category": "gender-based violence",
#         "type": "",
#         "country": "India",
#       },
#       {
#         "title_en": "App for Covid-19",
#         "description_en": "Government of India has launched Aarogya Setu app to take self assessment test, how to maintain social distancing, all information about Covid-19, to get all information about e-pass to be used only for the purpose of supplying essentials and also provides all updates of COVID-19",
        
# "title_fr": "App pour Covid-19",
# "description_fr": "Le gouvernement de l'Inde a lancé l'application Aarogya Setu pour passer un test d'auto-évaluation, comment maintenir la distance sociale, toutes les informations sur Covid-19, pour obtenir toutes les informations sur l'e-pass à utiliser uniquement dans le but de fournir l'essentiel et fournit également toutes les mises à jour de COVID-19",
#         "titleses": "Aplicación para Covid-19",
#         "descriptionses": "El Gobierno de la India lanzó la aplicación Aarogya Setu para realizar una prueba de autoevaluación, cómo mantener el distanciamiento social, toda la información sobre Covid-19, para obtener toda la información sobre el e-pass para ser utilizada únicamente con el fin de suministrar lo esencial y también proporciona todas las actualizaciones de COVID-19",


#         "link": "https://www.mygov.in/aarogya-setu-app/",
#         "progressive": "progressive",
#         "category": "digital surveillance, healthcare, education",
#         "type": "",
#         "country": "India",
#       },
#       {
#         "title_en": "With weekend lockdowns and age-specific restrictions, Turkey takes a different coronavirus approach",
#         "description_en": "Details Turkey's lockdown process and challenges with testing and underreporting",
        
# "title_fr": "Avec les blocages du week-end et les restrictions par âge, la Turquie adopte une approche différente pour les coronavirus",
# "description_fr": "Détaille le processus de verrouillage de la Turquie et les défis liés aux tests et à la sous-déclaration",
#         "titleses": "Con bloqueos de fin de semana y restricciones específicas por edad, Turquía adopta un enfoque diferente de coronavirus",
#         "descriptionses": "Detalla el proceso de cierre de Turquía y los desafíos con las pruebas y el subregistro",


#         "link": "https://www.cnn.com/2020/04/17/europe/turkey-coronavirus-lockdown-response-intl/index.html",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "Turkey's Coronavirus Crisis Grows as Infections Exceed China's",
#         "description_en": "Turkey has struggled to contain virus amid economic challenges and a botched curfew",
        
# "title_fr": "La crise des coronavirus en Turquie augmente à mesure que les infections dépassent celles de la Chine",
# "description_fr": "La Turquie a lutté pour contenir le virus au milieu des défis économiques et d'un couvre-feu bâclé",
#         "titleses": "La crisis del coronavirus de Turquía crece a medida que las infecciones superan a las de China",
#         "descriptionses": "Turquía ha luchado por contener virus en medio de desafíos económicos y un toque de queda fallido",


#         "link": "https://foreignpolicy.com/2020/04/20/turkeys-coronavirus-crisis-grows-as-infections-exceed-chinas/",
#         "progressive": "need to watch",
#         "category": "digital surveillance, healthcare, economy",
#         "type": "observed response",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "The Coronavirus Will Destroy Turkey's economy",
#         "description_en": "COVID is exacerbating macroeconomic crisis in Turkey; the government is not prepared and has few resources left",
        
# "title_fr": "Le coronavirus détruira l'économie turque",
# "description_fr": "COVID aggrave la crise macroéconomique en Turquie; le gouvernement n'est pas préparé et dispose de peu de ressources",
#         "titleses": "El coronavirus destruirá la economía de Turquía",
#         "descriptionses": "COVID está exacerbando la crisis macroeconómica en Turquía; el gobierno no está preparado y le quedan pocos recursos",


#         "link": "https://foreignpolicy.com/2020/04/08/the-coronavirus-will-destroy-turkeys-economy/",
#         "progressive": "regressive, need to watch",
#         "category": "healthcare, economy, labor",
#         "type": "policy or law, observed response",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "Brother Tayyip's Soup Kitchen",
#         "description_en": "Details how pandemic response is hampered by AKP's unwillingness to work with CHP mayors",
        
# "title_fr": "La soupe populaire du frère Tayyip",
# "description_fr": "détaille comment la réponse à la pandémie est entravée par la réticence de l'AKP à travailler avec les maires du CHP",
#         "titleses": "Cocina de sopa del hermano Tayyip",
#         "descriptionses": "Detalla cómo la respuesta pandémica se ve obstaculizada por la falta de voluntad de AKP para trabajar con los alcaldes de CHP",


#         "link": "https://foreignpolicy.com/2020/04/17/erdogan-turkey-coronavirus-relief-politics-akp-chp-brother-tayyip-soup-kitchen/",
#         "progressive": "regressive",
#         "category": "punitive, digital surveillance, healthcare, economy",
#         "type": "temporary measure, observed response",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "Turkey Releases Refugees from Quarantine Amid Coronavirus Lockdown",
#         "description_en": "Turkey is releasing refugees from quarantine in the middle of lockdown, with minimal resources",
        
# "title_fr": "La Turquie libère les réfugiés de la quarantaine au cours de la fermeture du coronavirus",
# "description_fr": "La Turquie libère les réfugiés de la quarantaine en pleine période de verrouillage, avec un minimum de ressources",
#         "titleses": "Turquía libera a los refugiados de la cuarentena en medio del bloqueo del coronavirus",
#         "descriptionses": "Turquía está liberando a los refugiados de la cuarentena en medio del cierre, con recursos mínimos",


#         "link": "https://www.voanews.com/europe/turkey-releases-refugees-quarantine-amid-coronavirus-lockdown",
#         "progressive": "regressive",
#         "category": "healthcare, labor",
#         "type": "temporary measure",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "Domestic violence rises in Turkey during COVID-19 pandemic",
#         "description_en": "Details rise in domestic violence in lockdown and failure of government to respond",
        
# "title_fr": "La violence domestique augmente en Turquie pendant la pandémie de COVID-19",
# "description_fr": "Les détails de la violence domestique grimpent en éclats et le gouvernement n'a pas répondu",
#         "titleses": "La violencia doméstica aumenta en Turquía durante la pandemia de COVID-19",
#         "descriptionses": "Los detalles aumentan la violencia doméstica en el cierre patronal y la falta de respuesta del gobierno",


#         "link": "https://www.dw.com/en/domestic-violence-rises-in-turkey-during-covid-19-pandemic/a-53082333",
#         "progressive": "regressive",
#         "category": "SRHR, gender-based violence",
#         "type": "observed response",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "Turkey Seeks Power to Control Social Media",
#         "description_en": "Further social media censorship authorities proposed in COVID-19 bill",
        
# "title_fr": "La Turquie cherche à contrôler les médias sociaux",
# "description_fr": "De nouvelles autorités de censure des médias sociaux sont proposées dans le projet de loi COVID-19",
#         "titleses": "Turquía busca poder para controlar las redes sociales",
#         "descriptionses": "Se propusieron más autoridades de censura de redes sociales en el proyecto de ley COVID-19",


#         "link": "https://www.hrw.org/news/2020/04/13/turkey-seeks-power-control-social-media",
#         "progressive": "regressive",
#         "category": "digital surveillance",
#         "type": "policy or law, temporary measure",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "Turkey to free one-third of its prisoners to curb coronavirus",
#         "description_en": "Turkey frees prisoners to protect them from virus's spread, but excludes government opponents imprisoned on terrorism charges",
        
# "title_fr": "La Turquie va libérer un tiers de ses prisonniers pour enrayer le coronavirus",
# "description_fr": "La Turquie libère des prisonniers pour les protéger de la propagation du virus, mais exclut les opposants au gouvernement emprisonnés pour terrorisme",
#         "titleses": "Turquía liberará a un tercio de sus prisioneros para frenar el coronavirus",
#         "descriptionses": "Turquía libera a los prisioneros para protegerlos de la propagación del virus, pero excluye a los opositores del gobierno encarcelados por cargos de terrorismo",


#         "link": "https://www.aljazeera.com/news/2020/04/turkey-free-prisoners-curb-coronavirus-200414062852220.html",
#         "progressive": "regressive",
#         "category": "healthcare, labor",
#         "type": "temporary measure",
#         "country": "Turkey",
#       },
#       {
#         "title_en": "COVID-19 preparedness an dresponse for NW-Syria",
#         "description_en": "Outlines WHO and humanitarian efforts to response to pandemic in NW Syria",
        
# "title_fr": "La préparation au COVID-19, une réponse pour le nord-ouest de la Syrie",
# "description_fr": "Décrit les efforts de l'OMS et humanitaires pour répondre à la pandémie dans le nord-ouest de la Syrie",
#         "titleses": "preparación de COVID-19 una respuesta para el NO-Siria",
#         "descriptionses": "Describe los esfuerzos humanitarios y de la OMS para responder a la pandemia en el noroeste de Siria",


#         "link": "https://reliefweb.int/sites/reliefweb.int/files/resources/health_task_force_nws_covid-19_sitrep_-_1_april_2020.pdf",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "temporary measure",
#         "country": "Syria",
#       },
#       {
#         "title_en": "Syria's civil war will make fighting coronavirus particularly difficult",
#         "description_en": "Details steps regime has taken and challenges of response in opposition-held areas and among displaced populations",
        
# "title_fr": "La guerre civile en Syrie rendra la lutte contre les coronavirus particulièrement difficile",
# "description_fr": "Détaille les mesures prises par le régime et les défis de la réponse dans les zones tenues par l'opposition et parmi les populations déplacées",
#         "titleses": "La guerra civil de Siria hará que la lucha contra el coronavirus sea particularmente difícil",
#         "descriptionses": "Detalla los pasos que ha tomado el régimen y los desafíos de la respuesta en las áreas controladas por la oposición y entre las poblaciones desplazadas",


#         "link": "https://www.washingtonpost.com/politics/2020/04/02/syrias-civil-war-will-make-fighting-coronavirus-particularly-difficult/",
#         "progressive": "need to watch",
#         "category": "healthcare, labor",
#         "type": "temporary measure, observed response",
#         "country": "Syria",
#       },
#       {
#         "title_en": "Syria, insisting it is coronavirus-free, takes broad steps to prevent spread",
#         "description_en": "Syrian government likely covering up cases to suppress COVID-19 numbers",
        
# "title_fr": "La Syrie, affirmant qu'elle est exempte de coronavirus, prend de larges mesures pour empêcher la propagation",
# "description_fr": "Le gouvernement syrien couvrira probablement des affaires pour supprimer les numéros COVID-19",
#         "titleses": "Siria, al insistir en que no contiene coronavirus, toma medidas amplias para evitar la propagación",
#         "descriptionses": "Es probable que el gobierno sirio encubra casos para suprimir los números COVID-19",


#         "link": "https://www.reuters.com/article/us-health-coronavirus-syria-idUSKBN2110SA",
#         "progressive": "regressive",
#         "category": "healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Syria",
#       },
#       {
#         "title_en": "Syria Acknowledges One Coronavirus Case",
#         "description_en": "Regime insisting numbers are low but shutting down intercity travel, closed borders, and closed newspaper printing",
        
# "title_fr": "La Syrie reconnaît un cas de coronavirus",
# "description_fr": "Le régime insiste sur le fait que les chiffres sont bas mais arrêtent les voyages interurbains, les frontières fermées et les journaux fermés",
#         "titleses": "Siria reconoce un caso de coronavirus",
#         "descriptionses": "Los números que insisten en el régimen son bajos pero cierran los viajes interurbanos, las fronteras cerradas y la impresión de periódicos cerrados",


#         "link": "https://www.voanews.com/science-health/coronavirus-outbreak/syria-acknowledges-one-coronavirus-case",
#         "progressive": "regressive",
#         "category": "healthcare, economy, labor",
#         "type": "temporary measure, observed response",
#         "country": "Syria",
#       },
#       {
#         "title_en": "Syria has confirmed its first cases of coronavirus. An outbreak there would be hell.",
#         "description_en": "Regime implemented curfew, closed businesses, launched disinfection campaign, but health system severely weakened",
        
# "title_fr": "La Syrie a confirmé ses premiers cas de coronavirus. Une épidémie y serait en enfer.",
# "description_fr": "Le régime a mis en place un couvre-feu, fermé des entreprises, lancé une campagne de désinfection, mais le système de santé est gravement affaibli",
#         "titleses": "Siria ha confirmado sus primeros casos de coronavirus. Un brote allí sería el infierno",
#         "descriptionses": "El régimen implementó el toque de queda, cerró negocios, lanzó una campaña de desinfección, pero el sistema de salud se debilitó severamente",


#         "link": "https://www.vox.com/world/2020/3/27/21195860/coronavirus-syria-idlib-covid-19-cases-outbreak-middle-east",
#         "progressive": "need to watch",
#         "category": "healthcare, economy, labor",
#         "type": "temporary measure, observed response",
#         "country": "Syria",
#       },
#       {
#         "title_en": "Syrian camps brace for potential COVID-19 outbreak",
#         "description_en": "Outlines opposition response in NW Syria and challenges of preventing spread in camps",
        
# "title_fr": "Les camps syriens se préparent à une éventuelle épidémie de COVID-19",
# "description_fr": "Décrit la réponse de l'opposition dans le nord-ouest de la Syrie et les défis de la prévention de la propagation dans les camps",
#         "titleses": "Los campamentos sirios se preparan para un posible brote de COVID-19",
#         "descriptionses": "Describe la respuesta de la oposición en el noroeste de Siria y los desafíos de prevenir la propagación en los campamentos",


#         "link": "https://www.al-monitor.com/pulse/originals/2020/04/syria-displaced-camps-aleppo-coronavirus-medical.html",
#         "progressive": "need to watch",
#         "category": "healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Syria",
#       },
#       {
#         "title_en": "W.H.O. Failed to Tell Syrian Kurds of Their First Coronavirus Death: Live Coverage",
#         "description_en": "Regime failed to share key infection information with Kurdish authorities in NE Syria",
        
# "title_fr": "W.H.O. n'a pas informé les Kurdes syriens de leur premier décès de coronavirus: couverture en direct",
# "description_fr": "Le régime n'a pas partagé les informations clés sur les infections avec les autorités kurdes du nord-est de la Syrie",
#         "titleses": "W.H.O. no pudo informar a los kurdos sirios de su primera muerte por coronavirus: cobertura en vivo",
#         "descriptionses": "El régimen no pudo compartir información clave sobre la infección con las autoridades kurdas en el noreste de Siria",


#         "link": "https://www.nytimes.com/2020/04/17/world/coronavirus-news-updates.html",
#         "progressive": "regressive",
#         "category": "healthcare",
#         "type": "observed response",
#         "country": "Syria",
#       },
#       {
#         "title_en": "COVID-19 Impact on Refugees is Also Political",
#         "description_en": "Governments are either covering up spread of COVID-19 or failing to respond",
        
# "title_fr": "L'impact du COVID-19 sur les réfugiés est également politique",
# "description_fr": "Les gouvernements dissimulent la propagation du COVID-19 ou ne répondent pas",
#         "titleses": "El impacto de COVID-19 en los refugiados también es político",
#         "descriptionses": "Los gobiernos están encubriendo la propagación de COVID-19 o no responden",


#         "link": "https://www.chathamhouse.org/expert/comment/covid-19-impact-refugees-also-political",
#         "progressive": "regressive",
#         "category": "healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Syria, Lebanon",
#       },
#       {
#         "title_en": "When Health Care Is Decimated By War: COVID-19 in the Middle East and North Africa",
#         "description_en": "Interview on the response of response of MENA governments to pandemic and need for a rights-based approach",
        
# "title_fr": "Quand les soins de santé sont décimés par la guerre: COVID-19 au Moyen-Orient et en Afrique du Nord",
# "description_fr": "Interview sur la réponse de la réponse des gouvernements de la région MENA à la pandémie et la nécessité d'une approche fondée sur les droits",
#         "titleses": "Cuando la atención médica es diezmada por la guerra: COVID-19 en el Medio Oriente y África del Norte",
#         "descriptionses": "Entrevista sobre la respuesta de la respuesta de los gobiernos de MENA a la pandemia y la necesidad de un enfoque basado en los derechos",


#         "link": "https://www.hrw.org/news/2020/04/16/when-health-care-decimated-war-covid-19-middle-east-and-north-africa",
#         "progressive": "regressive",
#         "category": "digital surveillance, healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Middle East and North Africa",
#       },
#       {
#         "title_en": "Coronavirus pandemic threatens crises-ravaged communities, UN appeals for Global support",
#         "description_en": "As governments implement lockdowns and movement restrictions, GBV is increasing",
        
# "title_fr": "La pandémie de coronavirus menace les communautés ravagées par les crises, l'ONU lance un appel au soutien mondial",
# "description_fr": "Alors que les gouvernements mettent en place des verrouillages et des restrictions de mouvement, la VBG augmente",
#         "titleses": "La pandemia de coronavirus amenaza a las comunidades devastadas por la crisis, las Naciones Unidas solicitan apoyo mundial",
#         "descriptionses": "A medida que los gobiernos implementan bloqueos y restricciones de movimiento, la violencia de género está aumentando",


#         "link": "https://news.un.org/en/story/2020/04/1061922",
#         "progressive": "regressive",
#         "category": "SRHR, gender-based violence",
#         "type": "temporary measure, observed response",
#         "country": "Global, Jordan",
#       },
#       {
#         "title_en": "COVID-19: Africa told to prepare for worst. What's the response?",
#         "description_en": "Details steps being taken by governments across Africa to limit spread and restrict movement",
        
# "title_fr": "COVID-19: l'Afrique a dit de se préparer au pire. Quelle est la réponse?",
# "description_fr": "Détaille les mesures prises par les gouvernements à travers l'Afrique pour limiter la propagation et restreindre les mouvements",
#         "titleses": "COVID-19: África dijo que se preparara para lo peor. ¿Cuál es la respuesta?",
#         "descriptionses": "Detalla los pasos que están tomando los gobiernos de África para limitar la propagación y restringir el movimiento",


#         "link": "https://www.aljazeera.com/news/2020/03/covid-19-africa-told-prepare-worst-response-200319085112877.html",
#         "progressive": "need to watch",
#         "category": "healthcare, economy, labor",
#         "type": "temporary measure, observed response",
#         "country": "Anglophone Africa, Francophone Africa",
#       },
#       {
#         "title_en": "African Government Responses to COVID-19",
#         "description_en": "Details 28 declarations of a state of emergency, national health emergency or national disaster in 37 countries in Africa",
        
# "title_fr": "Réponses du gouvernement africain à COVID-19",
# "description_fr": "Détaille 28 déclarations d'état d'urgence, d'urgence sanitaire nationale ou de catastrophe nationale dans 37 pays d'Afrique",
#         "titleses": "Respuestas del gobierno africano a COVID-19",
#         "descriptionses": "Detalla 28 declaraciones de estado de emergencia, emergencia sanitaria nacional o desastre nacional en 37 países de África",


#         "link": "https://www.icnl.org/post/analysis/african-government-response-to-covid-19",
#         "progressive": "regressive",
#         "category": "punitive, digital surveillance, healthcare, economy, labor",
#         "type": "policy or law, temporary measure, observed response",
#         "country": "Anglophone Africa, Francophone Africa",
#       },
#       {
#         "title_en": "East Africa regional body rolls out mobile Covid-19 testing centres",
#         "description_en": "Tanzania deploying mobile laboratories and testing kits in 4x4 vehicles",
        
# "title_fr": "Un organisme régional pour l'Afrique de l'Est déploie des centres de test mobiles Covid-19",
# "description_fr": "La Tanzanie déploie des laboratoires mobiles et des kits de test dans des véhicules 4x4",
#         "titleses": "El organismo regional de África Oriental lanza centros de pruebas móviles Covid-19",
#         "descriptionses": "Tanzania implementando laboratorios móviles y kits de prueba en vehículos 4x4",


#         "link": "http://www.rfi.fr/en/international/20200326-east-africa-regional-body-rolls-out-mobile-covid-19-testing-centres",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "temporary measure",
#         "country": "Anglophone Africa, Francophone Africa",
#       },
#       {
#         "title_en": "The Economic Impact of COVID-19 in Africa: A Round-Up of This Week's Analysis",
#         "description_en": "Details effects of lockdowns on economy and supply chains",
        
# "title_fr": "L'impact économique du COVID-19 en Afrique: résumé de l'analyse de cette semaine",
# "description_fr": "Détaille les effets des blocages sur l'économie et les chaînes d'approvisionnement",
#         "titleses": "El impacto económico de COVID-19 en África: un resumen del análisis de esta semana",
#         "descriptionses": "Detalla los efectos de los bloqueos en la economía y las cadenas de suministro",


#         "link": "https://www.cgdev.org/blog/economic-impact-covid-19-africa-weeks-latest-analysis",
#         "progressive": "need to watch",
#         "category": "healthcare, economy, food",
#         "type": "temporary measure, observed response",
#         "country": "Anglophone Africa, Francophone Africa",
#       },
#       {
#         "title_en": "Africa in the news: COVID-19 impacts African economies and daily lives; clashes in the Sahel",
#         "description_en": "Details macroeconomic steps being taken in Africa and consequences of pandemic for electoral systems",
        
# "title_fr": "L'Afrique dans l'actualité: le COVID-19 a un impact sur les économies et la vie quotidienne africaines; les affrontements au Sahel",
# "description_fr": "détaille les mesures macroéconomiques prises en Afrique et les conséquences de la pandémie sur les systèmes électoraux",
#         "titleses": "África en las noticias: COVID-19 impacta las economías africanas y la vida cotidiana; enfrentamientos en el Sahel",
#         "descriptionses": "Detalla los pasos macroeconómicos que se están tomando en África y las consecuencias de la pandemia para los sistemas electorales",


#         "link": "https://www.brookings.edu/blog/africa-in-focus/2020/04/11/africa-in-the-news-covid-19-impacts-african-economies-and-daily-lives-clashes-in-the-sahel/",
#         "progressive": "need to watch",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Anglophone Africa, Francophone Africa",
#       },
#       {
#         "title_en": "Africa turns to mobile payments as a tool to curb COVID-19",
#         "description_en": "Governments and startups are shifting transactions toward mobile money and away from cash to limit virus's spread",
        
# "title_fr": "L'Afrique se tourne vers les paiements mobiles comme outil pour freiner COVID-19",
# "description_fr": "Les gouvernements et les startups déplacent les transactions vers l'argent mobile et s'éloignent de l'argent liquide pour limiter la propagation du virus",
#         "titleses": "África recurre a los pagos móviles como una herramienta para frenar COVID-19",
#         "descriptionses": "Los gobiernos y las nuevas empresas están cambiando las transacciones hacia el dinero móvil y lejos del efectivo para limitar la propagación del virus",


#         "link": "https://techcrunch.com/2020/03/25/african-turns-to-mobile-payments-as-a-tool-to-curb-covid-19/",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "temporary measure, observed response",
#         "country": "Anglophone Africa, Francophone Africa",
#       },
#       {
#         "title_en": "Rwanda's successes and challenges in response to COVID-19",
#         "description_en": "Details how Rwandan government has implemented lockdown measures",
        
# "title_fr": "Les succès et les défis du Rwanda en réponse à COVID-19",
# "description_fr": "Détaille comment le gouvernement rwandais a mis en œuvre des mesures de verrouillage",
#         "titleses": "Los éxitos y desafíos de Ruanda en respuesta a COVID-19",
#         "descriptionses": "Detalla cómo el gobierno de Ruanda ha implementado medidas de bloqueo",


#         "link": "https://www.atlanticcouncil.org/blogs/africasource/rwandas-successes-and-challenges-in-response-to-covid-19/",
#         "progressive": "need to watch",
#         "category": "healthcare, economy",
#         "type": "temporary measure",
#         "country": "Rwanda",
#       },
#       {
#         "title_en": "Tanzania's mild response to COVID-19 and its implications for the 2020 elections",
#         "description_en": "Details concerns that Tanzanian President using virus to extend rule, push back elections",
        
# "title_fr": "La réponse modérée de la Tanzanie au COVID-19 et ses implications pour les élections de 2020",
# "description_fr": "Détaille le fait que le président tanzanien utilise un virus pour étendre le pouvoir et repousser les élections",
#         "titleses": "La leve respuesta de Tanzania al COVID-19 y sus implicaciones para las elecciones de 2020",
#         "descriptionses": "Detalles preocupa que el presidente de Tanzania use virus para extender la regla, retrasar las elecciones",


#         "link": "https://www.atlanticcouncil.org/blogs/africasource/tanzanias-mild-response-to-covid-19-and-its-implications-for-the-2020-elections/",
#         "progressive": "regressive",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Tanzania",
#       },
#       {
#         "title_en": "Tackling COVID-19 in Africa",
#         "description_en": "Details potential economic impacts of crisis across Africa and ways governments should respond",
        
# "title_fr": "S'attaquer au COVID-19 en Afrique",
# "description_fr": "Détaille les impacts économiques potentiels de la crise en Afrique et les façons dont les gouvernements devraient réagir",
#         "titleses": "Abordar COVID-19 en África",
#         "descriptionses": "Detalla los posibles impactos económicos de la crisis en África y las formas en que los gobiernos deberían responder",


#         "link": "https://www.mckinsey.com/featured-insights/middle-east-and-africa/tackling-covid-19-in-africa",
#         "progressive": "progressive",
#         "category": "economy",
#         "type": "policy or law, temporary measure",
#         "country": "Anglophone Africa, Francophone Africa",
#       },
#       {
#         "title_en": "In the Face of Coronavirus, African Countries Apply Lessons from Ebola Response",
#         "description_en": "Countries using advanced disease surveillance developed during Ebola outbreak to limit virus's spread",
        
# "title_fr": "Face au coronavirus, les pays africains appliquent les leçons de la réponse à Ebola",
# "description_fr": "Les pays utilisant une surveillance avancée des maladies développés pendant l'épidémie d'Ebola pour limiter la propagation du virus",
#         "titleses": "Ante el coronavirus, los países africanos aplican las lecciones de la respuesta al ébola",
#         "descriptionses": "Los países que utilizan vigilancia avanzada de enfermedades se desarrollaron durante el brote de Ébola para limitar la propagación del virus",


#         "link": "https://www.worldbank.org/en/news/feature/2020/04/03/in-the-face-of-coronavirus-african-countries-apply-lessons-from-ebola-response",
#         "progressive": "progressive",
#         "category": "healthcare",
#         "type": "temporary measure, observed response",
#         "country": "Anglophone Africa, Francophone Africa",
#       }
{
        "title_en": "Ongoing CHCC Preparedness Measures for COVID- 19 Pandemic (4/6/20)",
        "description_en": "Brief overview from the Northern Mariana government on their measures to protect against COVID-19",
        "title_es": "Medidas de preparación de CHCC en curso para la pandemia de COVID- 19 (4/6/20)",
        "description_es": "Breve descripción del gobierno de Mariana del Norte sobre sus medidas para proteger contra COVID-19",


        "title_en": "Mesures de préparation du CHCC en cours pour la pandémie de COVID-19 (4/6/20)",
        "description_en": "Bref aperçu du gouvernement de la Marianne du Nord sur ses mesures de protection contre le COVID-19",
        "link": "https://www.chcc.gov.mp/DocumentFiles/coronavirusinformation_142_1454553753.pdf",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "United States",
        "undefined": "Commonwealth Northern Mariana Islands"
    },
    {
        "title_en": "Marianas gets CARES Act aid",
        "description_en": "Details how US CARES Act provides direct benefits for CMNI",
        "title_es": "Marianas recibe ayuda de la Ley CARES",
        "description_es": "Detalla cómo la Ley US CARES brinda beneficios directos para CMNI",


        "title_en": "Marianas obtient l'aide de CARES Act",
        "description_en": "Détaille comment l'US CARES Act offre des avantages directs au CMNI",
        "link": "https://sablan.house.gov/marianas-gets-cares-act-aid",
        "progressive": "progressive",
        "category": "education, childcare, labor, food",
        "type": "policy or law",
        "country": "United States",
        "undefined": "Commonwealth Northern Mariana Islands"
    },
    {
        "title_en": "President Panuelo Meets with the Nation’s Governors to Discuss Social Distancing",
        "description_en": "Briefly outlines response to unemployment, economic stimulus, testing capacities, ventilators, and forthcoming social distancing measures",
        "title_es": "El presidente Panuelo se reúne con los gobernadores de la nación para discutir el distanciamiento social",
        "description_es": "Describe brevemente la respuesta al desempleo, el estímulo económico, las capacidades de prueba, los ventiladores y las próximas medidas de distanciamiento social",


        "title_en": "Le président Panuelo rencontre les gouverneurs de la nation pour discuter de l'éloignement social",
        "description_en": "Décrit brièvement la réponse au chômage, à la relance économique, aux capacités de test, aux ventilateurs et aux mesures de distanciation sociale à venir",
        "link": "https://gov.fm/index.php/component/content/article/35-pio-articles/news-and-updates/304-president-panuelo-meets-with-the-nation-s-governors-to-discuss-social-distancing-economic-stimulus-the-covid-19-response-framework-more?Itemid=177",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "policy or law",
        "country": "Micronesia (Federated States of)"
    },
    {
        "title_en": "U.S. Assistance to Federated States of Micronesia on COVID-19",
        "description_en": "Details of PPE, funding, testing, and emergency preparedness assistance from the US to FSIM",
        "title_es": "Asistencia de los Estados Unidos a los Estados Federados de Micronesia en COVID-19",
        "description_es": "Detalles de EPP, financiación, pruebas y asistencia de preparación para emergencias de EE. UU. a FSIM",


        "title_en": "Assistance américaine aux États fédérés de Micronésie sur COVID-19",
        "description_en": "Détails de l'EPI, du financement, des tests et de l'assistance de préparation aux situations d'urgence des États-Unis à la FSIM",
        "link": "https://fm.usembassy.gov/u-s-assistance-to-federated-states-of-micronesia-on-covid-19/",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "policy or law",
        "country": "Micronesia (Federated States of)"
    },
    {
        "title_en": "Coronavirus Information Fiji",
        "description_en": "Outlines preventative measures including travel restrictions, health screening checkpoints, and social gathering restrictions in Fiji",
        "title_es": "Información sobre el coronavirus en Fiji",
        "description_es": "Describe las medidas preventivas que incluyen restricciones de viaje, puntos de control de salud y restricciones de reunión social en Fiji",


        "title_en": "Coronavirus Information Fiji",
        "description_en": "Décrit les mesures préventives, y compris les restrictions de voyage, les points de contrôle de santé et les restrictions de rassemblement social aux Fidji",
        "link": "https://www.fiji.travel/covid-19",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Fiji Islands"
    },
    {
        "title_en": "Fear and misinformation go viral in Fiji",
        "description_en": "Spread of misinformation around spread of COVID-19 and cures in Fiji",
        "title_es": "El miedo y la desinformación se vuelven virales en Fiji",
        "description_es": "Difusión de información errónea sobre la propagación de COVID-19 y curas en Fiji",


        "title_en": "La peur et la désinformation deviennent virales aux Fidji",
        "description_en": "Diffusion d'informations erronées sur la propagation du COVID-19 et les traitements aux Fidji",
        "link": "https://www.newsroom.co.nz/2020/04/17/1131565/fear-and-misinformation-go-viral-in-fiji",
        "progressive": "regressive",
        "category": "misinformation",
        "type": "observed response",
        "country": "Fiji Islands"
    },
    {
        "title_en": "How French Polynesia Is Protecting Against Covid-19",
        "description_en": "Details the travel restrictions and bans put in place as preventative measures",
        "title_es": "Cómo protege la Polinesia Francesa contra Covid-19",
        "description_es": "Detalla las restricciones de viaje y las prohibiciones establecidas como medidas preventivas",


        "title_en": "Comment la Polynésie française se protège contre Covid-19",
        "description_en": "Détaille les restrictions et interdictions de voyager mises en place à titre préventif",
        "link": "https://www.forbes.com/sites/lauriewerner/2020/02/28/how-french-polynesia-is-protecting-against-covid-19/#7f09dd25c0bd",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "French Polynesia"
    },
    {
        "title_en": "Coronavirus COVID-19 - Travel Ban to French Polynesia",
        "description_en": "Details of temporary travel ban for all non residents of French Polynesia and repatriation guidance",
        "title_es": "Coronavirus COVID-19 - Prohibición de viajar a la Polinesia Francesa",
        "description_es": "Detalles de la prohibición de viaje temporal para todos los no residentes de la Polinesia Francesa y orientación de repatriación",


        "title_en": "Coronavirus COVID-19 - Interdiction de voyager en Polynésie française",
        "description_en": "Détails de l'interdiction temporaire de voyager pour tous les non-résidents de la Polynésie française et conseils de rapatriement",
        "link": "https://tahititourisme.com/en-us/covid-19/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "French Polynesia"
    },
    {
        "title_en": "Nauru joins multi-country pact to keep supply chains open",
        "description_en": "Nauru issued a joint statement with 9 other countries to maintain trade despite COVID-19",
        "title_es": "Nauru se une al pacto multipaís para mantener abiertas las cadenas de suministro",
        "description_es": "Nauru emitió una declaración conjunta con otros 9 países para mantener el comercio a pesar de COVID-19",


        "title_en": "Nauru rejoint le pacte multi-pays pour maintenir les chaînes d'approvisionnement ouvertes",
        "description_en": "Nauru a publié une déclaration conjointe avec 9 autres pays pour maintenir le commerce malgré COVID-19",
        "link": "https://www.rnz.co.nz/international/pacific-news/414999/nauru-joins-multi-country-pact-to-keep-supply-chains-open-despite-covid-19-pandemic",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law",
        "country": "Nauru"
    },
    {
        "title_en": "New Caledonia eases Covid 19 restrictions from Monday",
        "description_en": "Free movement allowed again and they will start opening businesses, social distancing recommended still",
        "title_es": "Nueva Caledonia alivia las restricciones de Covid 19 a partir del lunes",
        "description_es": "Se permite nuevamente la libre circulación y comenzarán a abrir negocios, se recomienda el distanciamiento social aún",


        "title_en": "La Nouvelle-Calédonie assouplit les restrictions de Covid 19 à partir de lundi",
        "description_en": "La libre circulation est de nouveau autorisée et ils commenceront à ouvrir des entreprises, la distanciation sociale est recommandée",
        "link": "https://www.rnz.co.nz/international/pacific-news/414480/new-caledonia-eases-covid-19-restrictions-from-monday",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "New Caledonia"
    },
    {
        "title_en": "New Zealand's Elimination Strategy is Unlikely to Work Other Places",
        "description_en": "Discusses New Zealand's border lockdown, their strict isolation policy, and its economic impact",
        "title_es": "Es improbable que la estrategia de eliminación de Nueva Zelanda funcione en otros lugares",
        "description_es": "Discute el bloqueo de la frontera de Nueva Zelanda, su estricta política de aislamiento y su impacto económico",


        "title_en": "La stratégie d'élimination de la Nouvelle-Zélande est peu susceptible de fonctionner ailleurs",
        "description_en": "Discute du verrouillage des frontières de la Nouvelle-Zélande, de sa politique d'isolement stricte et de son impact économique",
        "link": "https://time.com/5824042/new-zealand-coronavirus-elimination/",
        "progressive": "progressive",
        "category": "education, economy, labor",
        "type": "temporary measure, observed response",
        "country": "New Zealand"
    },
    {
        "title_en": "Debates Roil Sweden and New Zealand, Whose Pandemic Policies Are Opposite",
        "description_en": "Discusses differing responses across 6 countries and highlights race, class, and gender diaparities",
        "title_es": "Debates Roil Suecia y Nueva Zelanda, cuyas políticas pandémicas son opuestas",
        "description_es": "Discute diferentes respuestas en 6 países y destaca las disparidades de raza, clase y género",


        "title_en": "Débats sur la Suède et la Nouvelle-Zélande, dont les politiques en cas de pandémie sont opposées",
        "description_en": "Discute des réponses différentes dans 6 pays et met en évidence la race, la classe et le sexe",
        "link": "https://thetyee.ca/News/2020/04/20/Sweden-New-Zealand-Pandemic-Policies/",
        "progressive": "progressive (NZL, KOR, DEU), regressive (BRA, SWE, SAF)",
        "category": "healthcare, food, gendered health impacts, race",
        "type": "temporary measure, observed response",
        "country": "New Zealand, Sweden, South Korea, Germany, South Africa"
    },
    {
        "title_en": "Coronavirus Disease 2019 (COVID-19) Situation Report",
        "description_en": "Overview of protective measures and healthcare policy being taken in the country in their daily report",
        "title_es": "Informe de situación de la enfermedad por coronavirus 2019 (COVID-19)",
        "description_es": "Descripción general de las medidas de protección y la política de salud que se toman en el país en su informe diario",


        "title_en": "Coronavirus Disease 2019 (COVID-19) Situation Report",
        "description_en": "Aperçu des mesures de protection et de la politique de santé prises dans le pays dans leur rapport quotidien",
        "link": "http://www.palauhealth.org/2019nCoV_SitRep/MOH-COVID-19%20Daily%20Update.pdf",
        "progressive": "progressive",
        "category": "healthcare, education",
        "type": "policy or law",
        "country": "Palau"
    },
    {
        "title_en": "Solomon Islands extends state of emergency for 4 months amid COVID-19",
        "description_en": "Government to instill a weekend curfew during Stage 1 from Friday night until Sunday morning",
        "title_es": "Islas Salomón extiende el estado de emergencia por 4 meses en medio de COVID-19",
        "description_es": "El gobierno inculcará un toque de queda de fin de semana durante la Etapa 1 desde el viernes por la noche hasta el domingo por la mañana",


        "title_en": "Les Îles Salomon prolongent l'état d'urgence de 4 mois dans le cadre du COVID-19",
        "description_en": "Le gouvernement instaure un couvre-feu le week-end pendant l'étape 1 du vendredi soir au dimanche matin",
        "link": "http://www.xinhuanet.com/english/2020-04/09/c_138961225.htm",
        "progressive": "regressive",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Solomon Islands"
    },
    {
        "title_en": "Solomons officials face sack if critical of Covid-19 response",
        "description_en": "Government threatens public officials will be fired if they critique governent's COVID-19 response",
        "title_es": "Los funcionarios de Salomón se enfrentan al saqueo si critican la respuesta de Covid-19",
        "description_es": "El gobierno amenaza a los funcionarios públicos que serán despedidos si critican la respuesta COVID-19 del gobernador",


        "title_en": "Les responsables de Salomon risquent d'être licenciés s'ils critiquent la réponse de Covid-19",
        "description_en": "Le gouvernement menace de licencier des fonctionnaires s'ils critiquent la réponse COVID-19 du gouvernement",
        "link": "https://www.rnz.co.nz/international/pacific-news/413067/solomons-officials-face-sack-if-critical-of-covid-19-response",
        "progressive": "regressive",
        "category": "punitive",
        "type": "policy or law",
        "country": "Solomon Islands"
    },
    {
        "title_en": "Learn about Coronavirus",
        "description_en": "Homepage for all current government orders and resources dealing with COVID-19",
        "title_es": "Aprenda sobre el coronavirus",
        "description_es": "Página de inicio para todas las órdenes y recursos gubernamentales actuales relacionados con COVID-19",


        "title_en": "En savoir plus sur le coronavirus",
        "description_en": "Page d'accueil de tous les ordres et ressources gouvernementaux en cours concernant COVID-19",
        "link": "https://solomons.gov.sb/ministry-of-health-medical-services/essential-services/learn-about-coronavirus/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "policy or law, temporary measure",
        "country": "Solomon Islands"
    },
    {
        "title_en": "ADB boosts Covid-19 response in Tonga and Samoa",
        "description_en": "Discusses aid and briefly outlines responses' impacts on education, the economy, and healthcare capacity",
        "title_es": "ADB aumenta la respuesta de Covid-19 en Tonga y Samoa",
        "description_es": "Analiza la ayuda y describe brevemente los impactos de las respuestas sobre la educación, la economía y la capacidad de atención médica",


        "title_en": "La BAD renforce la réponse de Covid-19 aux Tonga et aux Samoa",
        "description_en": "Discute de l'aide et décrit brièvement les effets des réponses sur l'éducation, l'économie et la capacité des soins de santé",
        "link": "https://www.rnz.co.nz/international/pacific-news/414679/adb-boosts-covid-19-response-in-tonga-and-samoa",
        "progressive": "progressive",
        "category": "healthcare, education, economy",
        "type": "temporary measure, observed response",
        "country": "Tonga, Samoa"
    },
    {
        "title_en": "Cyclone Harold and coronavirus: Pacific Islands face battle on two fronts",
        "description_en": "Discusses how the recent tropical cyclone has impacted COVID-19 response",
        "title_es": "Ciclón Harold y coronavirus: las islas del Pacífico enfrentan una batalla en dos frentes",
        "description_es": "Discute cómo el reciente ciclón tropical ha impactado la respuesta COVID-19",


        "title_en": "Cyclone Harold et coronavirus: les îles du Pacifique se battent sur deux fronts",
        "description_en": "Discute de l'impact du récent cyclone tropical sur la réponse du COVID-19",
        "link": "https://www.bbc.com/news/world-asia-52268119",
        "progressive": "regressive",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Tonga, Fiji Islands, Vanuatu"
    },
    {
        "title_en": "Tuvalu supports Secretary-General's Call on gender-based violence and COVID-19",
        "description_en": "Tuvalu government echoes the importance of addressing gender based violence in COVID 19 response",
        "title_es": "Tuvalu apoya la Llamada del Secretario General sobre la violencia de género y COVID-19",
        "description_es": "El gobierno de Tuvalu se hace eco de la importancia de abordar la violencia de género en la respuesta COVID 19",


        "title_en": "Tuvalu soutient l'appel du Secrétaire général sur la violence sexiste et COVID-19",
        "description_en": "Le gouvernement de Tuvalu fait écho à l'importance de lutter contre la violence sexiste dans la réponse à COVID 19",
        "link": "https://www.un.int/tuvalu/fr/activities/tuvalu-supports-secretary-generals-call-gender-based-violence-and-covid-19",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "policy or law",
        "country": "Tuvalu"
    },
    {
        "title_en": "How is Tuvalu securing against COVID-19?",
        "description_en": "Details the current response and how it will change should a confirmed case arrive",
        "title_es": "¿Cómo se protege Tuvalu contra COVID-19?",
        "description_es": "Detalla la respuesta actual y cómo cambiará si llega un caso confirmado",


        "title_en": "Comment Tuvalu se protège-t-il contre COVID-19?",
        "description_en": "Détaille la réponse actuelle et comment elle changera si un cas confirmé arrivait",
        "link": "https://devpolicy.org/how-is-tuvalu-securing-against-covid-19-20200406/",
        "progressive": "need to watch",
        "category": "punitive, healthcare, education, economy, labor, food, misinformation",
        "type": "policy or law, temporary measure, observed response",
        "country": "Tuvalu"
    },
    {
        "title_en": "After a Devastating Cyclone, Vanuatu is Refusing Foreign Aid Workers",
        "description_en": "Discussion of government's initial response and how it has been threatened by the hurricane",
        "title_es": "Después de un devastador ciclón, Vanuatu se niega a los trabajadores de ayuda extranjera",
        "description_es": "Discusión de la respuesta inicial del gobierno y cómo ha sido amenazada por el huracán",


        "title_en": "Après un cyclone dévastateur, Vanuatu refuse les travailleurs étrangers",
        "description_en": "Discussion sur la réponse initiale du gouvernement et comment il a été menacé par l'ouragan",
        "link": "https://time.com/5820382/coronavirus-cyclone-harold-vanuatu/",
        "progressive": "regressive",
        "category": "healthcare, education",
        "type": "policy or law, temporary measure, observed response",
        "country": "Vanuatu"
    },
    {
        "title_en": "Life in one of the only countries without coronavirus",
        "description_en": "Explains the threat of COVID-19 to Vanuatu's healthcare system and economy and their current response",
        "title_es": "Vida en uno de los únicos países sin coronavirus",
        "description_es": "Explica la amenaza de COVID-19 para el sistema de salud y la economía de Vanuatu y su respuesta actual",


        "title_en": "La vie dans l'un des seuls pays sans coronavirus",
        "description_en": "Explique la menace du COVID-19 pour le système de santé et l'économie de Vanuatu et leur réponse actuelle",
        "link": "https://www.theguardian.com/world/2020/apr/08/if-it-comes-it-will-be-a-disaster-life-in-vanuatu-one-of-the-only-countries-without-coronavirus",
        "progressive": "regressive",
        "category": "healthcare, economy, race",
        "type": "temporary measure, observed response",
        "country": "Vanuatu"
    },
    {
        "title_en": "UN helps Pacific prepare for COVID-19 pandemic",
        "description_en": "Details how UNICEF has provided medical equipment and communication materials to aid COVID-19 response",
        "title_es": "La ONU ayuda al Pacífico a prepararse para la pandemia de COVID-19",
        "description_es": "Detalla cómo UNICEF ha proporcionado equipos médicos y materiales de comunicación para ayudar a la respuesta COVID-19",


        "title_en": "L'ONU aide le Pacifique à se préparer à la pandémie de COVID-19",
        "description_en": "Détaille comment l'UNICEF a fourni du matériel médical et du matériel de communication pour faciliter la réponse au COVID-19",
        "link": "https://news.un.org/en/story/2020/03/1060622",
        "progressive": "progressive",
        "category": "healthcare, education, misinformation",
        "type": "temporary measure",
        "country": "Pacific Islands"
    },
    {
        "title_en": "COVID-19 Awareness in Kiribati: A Multi-Level Partnership",
        "description_en": "Kiribati Health Champions have partned with the Public Health Department to spread communication materials",
        "title_es": "Conciencia de COVID-19 en Kiribati: una asociación multinivel",
        "description_es": "Kiribati Health Champions se ha asociado con el Departamento de Salud Pública para difundir materiales de comunicación",


        "title_en": "La sensibilisation au COVID-19 à Kiribati: un partenariat à plusieurs niveaux",
        "description_en": "Les champions de la santé de Kiribati se sont associés au Département de la santé publique pour diffuser du matériel de communication"
        "link": "https://reliefweb.int/report/kiribati/covid-19-awareness-kiribati-multi-level-partnership",
        "progressive": "progressive",
        "category": "healthcare, misinformation",
        "type": "observed response",
        "country": "Kiribati"
    },
    {
        "title_en": "World Bank Support for Marshall Islands’ COVID-19 Response",
        "description_en": "Aid given to Marshall Island to promote preventative measures and provide healthcare assistance",
        "title_es": "Apoyo del Banco Mundial a la respuesta COVID-19 de las Islas Marshall",
        "description_es": "Ayuda a la Isla Marshall para promover medidas preventivas y proporcionar asistencia sanitaria",


        "title_en": "Appui de la Banque mondiale à la réponse COVID-19 des Îles Marshall",
        "description_en": "Aide accordée à l'île Marshall pour promouvoir des mesures préventives et fournir une assistance médicale",
        "link": "https://www.worldbank.org/en/news/press-release/2020/04/20/world-bank-support-for-marshall-islands-covid-19-response",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "policy or law",
        "country": "Marshall Islands"
    },
    {
        "title_en": "Keeping COVID-19 at bay in the Marshall Islands",
        "description_en": "Details response measures taken including travel restrictions, healthcare preparations, and school closures",
        "title_es": "Manteniendo a raya a COVID-19 en las Islas Marshall",
        "description_es": "Detalla las medidas de respuesta tomadas, incluidas las restricciones de viaje, los preparativos de atención médica y el cierre de escuelas",


        "title_en": "Garder COVID-19 à distance aux Îles Marshall",
        "description_en": "Détaille les mesures d'intervention prises, y compris les restrictions de voyage, les préparatifs médicaux et les fermetures d'écoles"
        "link": "https://devpolicy.org/keeping-covid-19-at-bay-in-the-marshall-islands-202004",
        "progressive": "progressive",
        "category": "healthcare, education",
        "type": "temporary measure, observed response",
        "country": "Marshall Islands"
    },
    {
        "title_en": "What’s missing from COVID-19 management? Women.",
        "description_en": "Full recovery won't happen without including gender disparities that reveal women have been harder hit",
        "title_es": "¿Qué le falta a la administración de COVID-19? Mujeres",
        "description_es": "La recuperación completa no ocurrirá sin incluir las disparidades de género que revelan que las mujeres han sido más afectadas",


        "title_en": "Qu'est-ce qui manque à la gestion de COVID-19? Femmes.",
        "description_en": "Le rétablissement complet ne se fera pas sans inclure les disparités entre les sexes qui révèlent que les femmes ont été plus durement touchées",
        "link": "https://blogs.timesofisrael.com/whats-missing-from-covid-19-management-women/",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "observed response",
        "country": "Israel"
    },
    {
        "title_en": "Libya: COVID-19- Situation Report No.2, As of 21 April 2020",
        "description_en": "UN Women Libyan women survey- impacting female employment, health services, report promotes women in decision-making.",
        "title_es": "Libia: COVID-19- Informe de situación nº 2, a partir del 21 de abril de 2020",
        "description_es": "La encuesta de ONU Mujeres sobre mujeres libias, que afecta el empleo femenino, los servicios de salud, el informe promueve a las mujeres en la toma de decisiones",


        "title_en": "Libye: COVID-19- Rapport de situation n ° 2, au 21 avril 2020",
        "description_en": "Enquête d'ONU Femmes sur les femmes libyennes - impact sur l'emploi des femmes, les services de santé, le rapport encourage les femmes à prendre des décisions."
        "link": "https://reliefweb.int/report/libya/libya-covid-19-situation-report-no-2-21-april-2020",
        "progressive": "regressive",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Libyan Arab Jamahiriya"
    },
    {
        "title_en": "Women's organisation in Libya raises COVID-19 awareness",
        "description_en": "Libyan Women's Union have issued a booklet to raise awareness of COVID-19 to isolated families.",
        "title_es": "La organización de mujeres en Libia crea conciencia sobre COVID-19",
        "description_es": "La Unión de Mujeres de Libia ha publicado un folleto para sensibilizar sobre COVID-19 a las familias aisladas",


        "title_en": "Une organisation de femmes en Libye sensibilise COVID-19",
        "description_en": "L'Union des femmes libyennes a publié une brochure pour sensibiliser les familles isolées au COVID-19.",
        "link": "http://cmi.fi/2020/04/09/womens-organisation-in-libya-raises-covid-19-awareness/",
        "progressive": "progressive",
        "category": "gendered health impacts",
        "type": "temporary measure",
        "country": "Libyan Arab Jamahiriya"
    },
    {
        "title_en": "Coronavirus- Libya: Impact of COVID-19 prevention measures on humanitarian operations",
        "description_en": "Warn women are at increased risk of exposure and domestic violence, diminished female health services.",
        "title_es": "Coronavirus- Libia: impacto de las medidas de prevención de COVID-19 en las operaciones humanitarias",
        "description_es": "Advertir a las mujeres que tienen un mayor riesgo de exposición y violencia doméstica, servicios de salud femeninos disminuidos",


        "title_en": "Coronavirus - Libye: impact des mesures de prévention COVID-19 sur les opérations humanitaires",
        "description_en": "Les femmes sont exposées à un risque accru d'exposition et de violence domestique, et les services de santé des femmes ont diminué.",
        "link": "https://www.africanews.com/2020/04/24/coronavirus-libya-impact-of-covid-19-prevention-measures-on-humanitarian-operations-for-health-sector-in-libya/",
        "progressive": "need to watch",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "Libyan Arab Jamahiriya"
    },
    {
        "title_en": "HRW:COVID-19 biggest MENA human rights crisis since Arab Spring",
        "description_en": "Tunisia, Lebanon create 24-hour hotline for domestic abuse victims.",
        "title_es": "HRW: COVID-19 la mayor crisis de derechos humanos de MENA desde la Primavera Árabe",
        "description_es": "Túnez, Líbano crea una línea directa las 24 horas para víctimas de abuso doméstico",


        "title_en": "HRW: COVID-19, la plus grande crise des droits de l'homme dans la région MENA depuis le printemps arabe",
        "description_en": "La Tunisie et le Liban créent une permanence téléphonique 24h / 24 pour les victimes de violences domestiques.",
        "link": "https://www.moroccoworldnews.com/2020/04/299826/hrw-covid-19-is-biggest-mena-human-rights-crisis-since-arab-spring/",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Tunisia, Lebanon"
    },
    {
        "title_en": "Operation SALAMA to protect vulnerable Moroccan women from COVID-19",
        "description_en": "SALAMA initiative distributing hygiene kits to pregnant women, health professionals, especially midwives, and more vulnerable.",
        "title_es": "Operación SALAMA para proteger a las mujeres marroquíes vulnerables de COVID-19",
        "description_es": "Iniciativa SALAMA que distribuye kits de higiene a mujeres embarazadas, profesionales de la salud, especialmente parteras y más vulnerables",


        "title_en": "Opération SALAMA pour protéger les femmes marocaines vulnérables du COVID-19",
        "description_en": "Initiative SALAMA distribuant des kits d'hygiène aux femmes enceintes, aux professionnels de la santé, en particulier aux sages-femmes, et aux personnes plus vulnérables.",
        "link": "https://www.moroccoworldnews.com/2020/04/298419/operation-salama-to-protect-vulnerable-moroccan-women-from-covid-19/",
        "progressive": "progressive",
        "category": "gendered health impacts",
        "type": "temporary measure",
        "country": "Morocco"
    },
    {
        "title_en": "Morocco co-sponsors international initiative to protect women, girls during lockdown",
        "description_en": "Local NGOs listening and aid center reachable by phone, public phone application for safety.",
        "title_es": "Marruecos copatrocina la iniciativa internacional para proteger a las mujeres y las niñas durante el encierro",
        "description_es": "Centro de ayuda y atención a las ONG locales accesible por teléfono, aplicación de teléfono público para seguridad",


        "title_en": "Le Maroc co-parraine une initiative internationale pour protéger les femmes et les filles pendant le verrouillage",
        "description_en": "Centre local d'écoute et d'aide aux ONG locales accessible par téléphone, application téléphonique publique pour la sécurité.",
        "link": "https://northafricapost.com/39935-covid-19-morocco-co-sponsor-of-international-initiative-to-protect-women-girls-during-lockdown.html",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Morocco"
    },
    {
        "title_en": "Morocco joins initiative against domestic violence under lockdown",
        "description_en": "Morocco joins international cooperation against domestic violence during confinement.",
        "title_es": "Marruecos se une a la iniciativa contra la violencia doméstica bajo encierro",
        "description_es": "Marruecos se une a la cooperación internacional contra la violencia doméstica durante el parto",


        "title_en": "Le Maroc s'associe à une initiative de lutte contre la violence domestique",
        "description_en": "Le Maroc se joint à la coopération internationale contre la violence domestique pendant la détention.",
        "link": "https://www.moroccoworldnews.com/2020/04/299391/morocco-joins-un-initiative-against-domestic-violence-under-lockdown/",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Morocco"
    },
    {
        "title_en": "When health care is decimated by war",
        "description_en": "Acknowledges that female domestic workers and mothers may face harsher financial conditions",
        "title_es": "Cuando la salud diezma la guerra",
        "description_es": "Reconoce que las trabajadoras domésticas y las madres pueden enfrentar condiciones financieras más severas",


        "title_en": "Quand les soins de santé sont décimés par la guerre",
        "description_en": "reconnaît que les travailleuses domestiques et les mères de famille peuvent être confrontées à des conditions financières plus difficiles",
        "link": "https://www.hrw.org/news/2020/04/16/when-health-care-decimated-war-covid-19-middle-east-and-north-africa",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "United Arab Emirates, Lebanon, Jordan"
    },
    {
        "title_en": "Domestic violence in COVID-19: Palestinian women are dying",
        "description_en": "Increased domestic violence, feminicides- movement promotes protests and solidarity from balcony.",
        "title_es": "Violencia doméstica en COVID-19: las mujeres palestinas están muriendo",
        "description_es": "Aumento de la violencia doméstica, el movimiento feminicidios promueve protestas y solidaridad desde el balcón",


        "title_en": "Violence domestique à COVID-19: des Palestiniennes meurent",
        "description_en": "Augmentation de la violence domestique, les féminicides - le mouvement encourage les manifestations et la solidarité depuis le balcon.",
        "link": "https://egyptianstreets.com/2020/04/24/domestic-violence-in-covid-19-lockdown-palestinian-women-are-dying-at-an-alarming-rate/",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Palestine"
    },
    {
        "title_en": "Activists appeal to AU as abuse against women soars, Covid-19",
        "description_en": "Webinar claiming increase in forced marriages, and appeals financial support to Africa's women and girls.",
        "title_es": "Los activistas apelan a la UA a medida que aumenta el abuso contra las mujeres, Covid-19",
        "description_es": "Seminario web que reclama un aumento en los matrimonios forzados, y solicita apoyo financiero a las mujeres y niñas de África",


        "title_en": "Des militantes font appel à l'UA alors que la violence contre les femmes monte en flèche, Covid-19",
        "description_en": "Webinaire réclamant une augmentation des mariages forcés et faisant appel à un soutien financier pour les femmes et les filles africaines.",
        "link": "http://www.rfi.fr/en/africa/20200427-activists-appeal-to-au-as-abuse-against-women-girls-soars-under-covid-19",
        "progressive": "need to watch",
        "category": "SRHR, gendered health impacts, gender-based violence",
        "type": "observed response",
        "country": "Anglophone Africa, Francophone Africa"
    },
    {
        "title_en": "Zimbabwe’s Covid-19 lockdown: Ensuring the right to food for the poor",
        "description_en": "Impact of lockdown on informal workers, right to food, recommendations to reduce hardship",
        "title_es": "El bloqueo de Covid-19 de Zimbabwe: garantizar el derecho a la alimentación de los pobres",
        "description_es": "Impacto del encierro en los trabajadores informales, derecho a la alimentación, recomendaciones para reducir las dificultades",


        "title_en": "Verrouillage du Covid-19 au Zimbabwe: garantir le droit à l'alimentation des pauvres",
        "description_en": "Impact du verrouillage sur les travailleurs informels, droit à l'alimentation, recommandations pour réduire les difficultés",
        "link": "https://www.plaas.org.za/zimbabwes-covid-19-lockdown-ensuring-the-right-to-food-for-the-poor/",
        "progressive": "regressive",
        "category": "economy, labor, food",
        "type": "observed response",
        "country": "Zimbabwe"
    },
    {
        "title_en": "food in the time of coronavirus: Why we should be very, very afraid",
        "description_en": "Impact of lockdown on informal workers, right to food, recommendations to reduce hardship",
        "title_es": "comida en tiempos de coronavirus: por qué debemos tener mucho, mucho miedo",
        "description_es": "Impacto del encierro en los trabajadores informales, derecho a la alimentación, recomendaciones para reducir las dificultades",


        "title_en": "la nourriture au temps des coronavirus: pourquoi nous devrions avoir très, très peur",
        "description_en": "Impact du verrouillage sur les travailleurs informels, droit à l'alimentation, recommandations pour réduire les difficultés",
        "link": "https://www.plaas.org.za/food-in-the-time-of-the-coronavirus-why-we-should-be-very-very-afraid/",
        "progressive": "regressive",
        "category": "economy, labor, food",
        "type": "observed response",
        "country": "South Africa"
    },
    {
        "title_en": "SRHR SERVICES LIMITED AS COVID CRISIS CONTINUES",
        "description_en": "Impact of lockdown on SRHR for womxn",
        "title_es": "SERVICIOS DE SRHR LIMITADOS COMO CONTINÚA LA CRISIS COVIDA",
        "description_es": "Impacto del bloqueo en SRHR para womxn",


        "title_en": "SRHR SERVICES LIMITED TANT QUE LA CRISE COVIDE CONTINUE",
        "description_en": "Impact du verrouillage sur les SDSR pour womxn",
        "link": "https://genderlinks.org.za/news/access-to-srhr-services-limited-as-covid-crisis-continues/",
        "progressive": "regressive",
        "category": "SRHR, gendered health impacts",
        "type": "observed response",
        "country": "Zimbabwe"
    },
    {
        "title_en": "SADC: SAFEGUARDING WOMEN’S RIGHTS DURING COVID SHUTDOWN",
        "description_en": "Impact of covid on womxn's SRH rights",
        "title_es": "SADC: PROTEGER LOS DERECHOS DE LAS MUJERES DURANTE EL CIERRE DE COVID",
        "description_es": "Impacto de covid en los derechos de SSR de womxn",


        "title_en": "SADC: SAUVEGARDER LES DROITS DES FEMMES PENDANT L'ARRÊT DE COVID",
        "description_en": "Impact du covid sur les droits de SSR des femmes",
        "link": "https://genderlinks.org.za/news/safeguarding-womens-rights-during-the-covid-19-shutdown/",
        "progressive": "regressive",
        "category": "SRHR, gendered health impacts",
        "type": "observed response",
        "country": "South Africa"
    },
    {
        "title_en": "Covid-19 South Africa Resource Portal",
        "description_en": "South African govt portal on covid-19",
        "title_es": "Covid-19 South Africa Resource Portal",
        "description_es": "portal del gobierno sudafricano en covid-19",


        "title_en": "Covid-19 South Africa Resource Portal",
        "description_en": "Portail du gouvernement sud-africain sur covid-19",
        "link": "https://sacoronavirus.co.za/",
        "category": "gendered health impacts",
        "progressive": "Neutral",
        "type": "policy or law",
        "country": "South Africa"
    },
    {
        "title_en": "Covid threatens womens and girls rights",
        "description_en": "Challenge and fear of regression in SRH rights and services during covid response in Malawi",
        "title_es": "Covid amenaza los derechos de las mujeres y las niñas",
        "description_es": "Desafío y miedo a la regresión en los derechos y servicios de SSR durante la respuesta codiciosa en Malawi",


        "title_en": "Covid menace les droits des femmes et des filles",
        "description_en": "Défi et peur de la régression des droits et services de SSR lors de la réponse convoitée au Malawi",
        "link": "https://www.mwnation.com/covid-19-threatens-women-girls-rights/",
        "progressive": "regressive",
        "category": "SRHR",
        "type": "observed response",
        "country": "Malawi"
    },
    {
        "title_en": "Malawi to give vulnerable familieis cash transfer",
        "description_en": "Malawi government will provide temporay cash transfer to vulnerable families",
        "title_es": "Malawi entregará transferencias de efectivo a familias vulnerables",
        "description_es": "El gobierno de Malawi proporcionará transferencias temporales de efectivo a familias vulnerables",


        "title_en": "Le Malawi versera un transfert en espèces aux familles vulnérables",
        "description_en": "Le gouvernement du Malawi accordera temporairement des transferts en espèces aux familles vulnérables",
        "link": "https://www.mwnation.com/voices-are-ringing-malawi-to-give-vulnerable-families-cash-transfers/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Malawi"
    },
    {
        "title_en": "NGOs providing relief during lockdown",
        "description_en": "Relief being provided by various NGOs",
        "title_es": "ONG que brindan ayuda durante el bloqueo",
        "description_es": "Ayuda brindada por varias ONG",


        "title_en": "Des ONG fournissent des secours pendant le verrouillage",
        "description_en": "Des secours sont fournis par diverses ONG",
        "link": "https://www.investindia.gov.in/bip/resources/list-ngos-providing-relief-during-covid-19",
        "progressive": "progressive",
        "category": "healthcare, childcare, food, gendered health impacts, gender-based violence",
        "type": "policy or law, temporary measure, observed response",
        "country": "India"
    },
    {
        "title_en": "Social protection response is launched to aid families during Covid-19",
        "description_en": "Government of Madagascar launches programme to assist those in need by giving 100,000 ariary per household",
        "title_es": "Se lanza una respuesta de protección social para ayudar a las familias durante Covid-19",
        "description_es": "El gobierno de Madagascar lanza un programa para ayudar a los necesitados dando 100.000 ariarios por hogar",


        "title_en": "Une réponse de protection sociale est lancée pour aider les familles pendant Covid-19",
        "description_en": "Le gouvernement de Madagascar lance un programme pour aider les personnes dans le besoin en donnant 100 000 ariary par ménage",
        "link": "https://www.africanews.com/2020/04/28/coronavirus-in-madagascar-a-social-protection-response-is-launched-in-urban-and-suburban-areas-to-aid-families-and-their-children-during-covid-19-pandemic/",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Madagascar"
    },
    {
        "title_en": "Caribbean nations can't get U.S. masks, ventillartors for COVID-19 under Trump policy",
        "description_en": "Defense Production Act prevents Americans from shipping COVID-19 related supplies to other countries in need",
        "title_es": "Las naciones caribeñas no pueden obtener máscaras de EE. UU., Ventiladores para COVID-19 bajo la política de Trump",
        "description_es": "La Ley de Producción de Defensa evita que los estadounidenses envíen suministros relacionados con COVID-19 a otros países necesitados",


        "title_en": "Les pays des Caraïbes ne peuvent pas obtenir de masques américains, ni de ventillartors pour COVID-19 dans le cadre de la politique de Trump",
        "description_en": "Defence Production Act empêche les Américains d'expédier des fournitures liées au COVID-19 vers d'autres pays dans le besoin",
        "link": "https://www.miamiherald.com/news/nation-world/world/americas/haiti/article241922071.html",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "policy or law",
        "country": "Bahamas, Cayman Islands, Barbados"
    },
    {
        "title_en": "IMF approves a $200 million disbursement to Mali",
        "description_en": "Mali given financial aid to help amid pandemic",
        "title_es": "El FMI aprueba un desembolso de $ 200 millones a Malí",
        "description_es": "Malí recibió ayuda financiera para ayudar en medio de una pandemia",


        "title_en": "Le FMI approuve un décaissement de 200 millions de dollars au Mali",
        "description_en": "Le Mali reçoit une aide financière pour aider en période de pandémie",
        "link": "https://www.imf.org/en/News/Articles/2020/04/30/pr20196-mali-imf-executive-board-approves-disbursement-to-mali-to-address-the-covid-19-pandemic",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Mali"
    },
    {
        "title_en": "AS Monaco is mobilizing against COVID-19",
        "description_en": "Monaco's charity programme provides financial support to Monegasque Red Cross",
        "title_es": "AS Mónaco se está movilizando contra COVID-19",
        "description_es": "El programa de caridad de Mónaco brinda apoyo financiero a la Cruz Roja Monegasca",


        "title_en": "L'AS Monaco se mobilise contre COVID-19",
        "description_en": "Le programme caritatif de Monaco apporte un soutien financier à la Croix-Rouge monégasque",
        "link": "https://www.hellomonaco.com/news/sport/as-monaco-is-mobilizing-against-covid-19/",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Monaco"
    },
    {
        "title_en": "Niger to receive $13,95 million for COVID-19 response",
        "description_en": "The World Bank approved the distribution of $14 million to strengthen public health systems",
        "title_es": "Níger recibirá $ 13,95 millones por la respuesta COVID-19",
        "description_es": "El Banco Mundial aprobó la distribución de $ 14 millones para fortalecer los sistemas de salud pública",


        "title_en": "Le Niger recevra 13,95 millions de dollars pour la réponse COVID-19",
        "description_en": "La Banque mondiale a approuvé la distribution de 14 millions de dollars pour renforcer les systèmes de santé publique",
        "link": "https://reliefweb.int/report/niger/niger-receive-1395-million-covid-19-response",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Niger"
    },
    {
        "title_en": "Supporting vulnerable populations to fight COVID-19",
        "description_en": "The Fondation Lombard Odier provides support to those with disabilites, experiencing domestic violence, and hospitals",
        "title_es": "Apoyo a poblaciones vulnerables para luchar contra COVID-19",
        "description_es": "La Fundación Lombard Odier brinda apoyo a las personas con discapacidad, que sufren violencia doméstica y hospitales",


        "title_en": "Soutenir les populations vulnérables pour lutter contre COVID-19",
        "description_en": "La Fondation Lombard Odier apporte son soutien aux personnes handicapées, victimes de violence domestique et aux hôpitaux",
        "link": "https://www.lombardodier.com/contents/corporate-news/corporate/2020/april/supporting-vulnerable-population.html",
        "progressive": "progressive",
        "category": "healthcare, economy, disability",
        "type": "temporary measure",
        "country": "Luxembourg"
    },
    {
        "title_en": "Pakistan daily wagers struggle to survive in coronavirus lockdown",
        "description_en": "The daily workers in Pakistan suffer through the conditions of the COVID-19 lockdown",
        "title_es": "Las apuestas diarias de Pakistán luchan por sobrevivir en el bloqueo del coronavirus",
        "description_es": "Los trabajadores diarios en Pakistán sufren las condiciones del encierro de COVID-19",


        "title_en": "Les paris quotidiens pakistanais luttent pour survivre au blocage des coronavirus",
        "description_en": "Les travailleurs journaliers au Pakistan souffrent des conditions du blocage de COVID-19",
        "link": "https://www.aljazeera.com/news/2020/03/pakistan-daily-wagers-struggle-survive-coronavirus-lockdown-200325115143152.html",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "Pakistan"
    },
    {
        "title_en": "Inside Women's Taftan Quarantine Camp",
        "description_en": "The woman's Taftan camp on the Pakistan-Iran border has grown to become to epicentre of the virus here with awful conditions.",
        "title_es": "Dentro del campamento de cuarentena de mujeres de Taftan",
        "description_es": "El campamento de mujeres de Taftan en la frontera entre Pakistán e Irán se ha convertido en un epicentro del virus aquí con condiciones terribles",


        "title_en": "A l'intérieur du camp de quarantaine pour femmes Taftan",
        "description_en": "Le camp de Taftan pour femmes à la frontière entre le Pakistan et l'Iran est devenu un épicentre du virus ici dans des conditions épouvantables.",
        "link": "https://www.aljazeera.com/programmes/newsfeed/2020/03/coronavirus-pakistan-taftan-quarantine-camp-200323110255493.html?utm_source=website&utm_medium=article_page&utm_campaign=read_more_links",
        "progressive": "regressive",
        "category": "economy, labor, gendered health impacts",
        "type": "observed response",
        "country": "Pakistan"
    },
    {
        "title_en": "Pakistan Struggles to Enforce Social Distancing During Ramadan",
        "description_en": "Pakistan reaches an agreement to keep mosques open during the holy month of Ramadan",
        "title_es": "Pakistán lucha para hacer cumplir las distancias sociales durante el Ramadán",
        "description_es": "Pakistán llega a un acuerdo para mantener abiertas las mezquitas durante el mes sagrado del Ramadán",


        "title_en": "Le Pakistan se bat pour imposer la distance sociale pendant le Ramadan",
        "description_en": "Le Pakistan parvient à un accord pour maintenir les mosquées ouvertes pendant le mois sacré du Ramadan",
        "link": "https://foreignpolicy.com/2020/04/24/pakistan-ramadan-coronavirus-pandemic-mosques/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law",
        "country": "Pakistan"
    },
    {
        "title_en": "Pakistan eases aid restrictions as coronavirus cases rise",
        "description_en": "Pakistan has temporarily eased restrictions on national and international aid groups seeking to carry out relief work in the cash-strapped country as it confronts the deadly coronavirus.",
        "title_es": "Pakistán alivia las restricciones de ayuda a medida que aumentan los casos de coronavirus",
        "description_es": "Pakistán ha aliviado temporalmente las restricciones a los grupos de ayuda nacionales e internacionales que buscan llevar a cabo trabajos de ayuda en el país con problemas de liquidez mientras se enfrenta al mortal coronavirus",


        "title_en": "Le Pakistan assouplit les restrictions de l'aide à mesure que les cas de coronavirus augmentent",
        "description_en": "Le Pakistan a temporairement assoupli les restrictions imposées aux groupes d'aide nationaux et internationaux qui cherchent à effectuer des opérations de secours dans le pays à court d'argent alors qu'il affronte le coronavirus mortel.",
        "link": "https://www.thenewhumanitarian.org/news/2020/04/15/coronavirus-Pakistan-aid-access-NGO-restrictions",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Pakistan"
    },
    {
        "title_en": "Kuwait’s coordinated response to Covid-19",
        "description_en": "Kuwait’s experience of Middle East Respiratory Syndrome has stood it in good stead to respond effectively to the current Covid-19 pandemic.",
        "title_es": "Respuesta coordinada de Kuwait a Covid-19",
        "description_es": "La experiencia de Kuwait del Síndrome Respiratorio del Medio Oriente le ha servido para responder eficazmente a la pandemia actual de Covid-19",


        "title_en": "Réponse coordonnée du Koweït à Covid-19",
        "description_en": "L'expérience du Koweït en ce qui concerne le syndrome respiratoire du Moyen-Orient lui a permis de réagir efficacement à la pandémie actuelle de Covid-19.",
        "link": "https://oxfordbusinessgroup.com/news/kuwait-s-coordinated-response-covid-19",
        "progressive": "progressive",
        "category": "economy, childcare",
        "type": "temporary measure, policy or law",
        "country": "Kuwait"
    },
    {
        "title_en": "Updating Traditions: Saudi Arabia’s Coronavirus Response",
        "description_en": "Details Saudi Arabia's comprehensive response including providing healthcare, salary coverage, and suspending pilgramages",
        "title_es": "Actualización de tradiciones: respuesta al coronavirus de Arabia Saudita",
        "description_es": "Detalla la respuesta integral de Arabia Saudita, incluida la atención médica, la cobertura salarial y la suspensión de peregrinajes",


        "title_en": "Mise à jour des traditions: réponse du coronavirus de l'Arabie saoudite",
        "description_en": "détaille la réponse globale de l'Arabie saoudite, notamment la fourniture de soins de santé, la couverture salariale et la suspension des pèlerinages"
        "link": "https://carnegieendowment.org/2020/04/07/updating-traditions-saudi-arabia-s-coronavirus-response-pub-81481",
        "progressive": "progressive",
        "category": "punitive, healthcare, economy, labor, misinformation",
        "type": "policy or law, temporary measure",
        "country": "Saudi Arabia"
    },
    {
        "title_en": "Saudi king offers to pay for coronavirus patients' treatment",
        "description_en": "King Salman will cover any coronavirus related healthcare costs and the agricultural ministry is taking steps to boost food supplies",
        "title_es": "el rey saudí ofrece pagar el tratamiento de los pacientes con coronavirus",
        "description_es": "King Salman cubrirá los costos de atención médica relacionados con el coronavirus y el ministerio de agricultura está tomando medidas para impulsar el suministro de alimentos",


        "title_en": "Le roi saoudien propose de payer le traitement des patients atteints de coronavirus",
        "description_en": "Le roi Salman couvrira tous les frais de santé liés aux coronavirus et le ministère de l'Agriculture prend des mesures pour augmenter l'approvisionnement alimentaire",
        "link": "https://www.reuters.com/article/us-health-coronavirus-saudi/saudi-king-offers-to-pay-for-coronavirus-patients-treatment-idUSKBN21H29F",
        "progressive": "progressive",
        "category": "healthcare, food",
        "type": "policy or law",
        "country": "Saudi Arabia"
    },
    {
        "title_en": "Middle East cracks down on COVID-19 rumor mongers",
        "description_en": "Details the punitive measures that several Middle Eastern countries put in place to stop misinformation spread",
        "title_es": "Medio Oriente toma medidas enérgicas contra los rumores de COVID-19",
        "description_es": "Detalla las medidas punitivas que varios países del Medio Oriente implementaron para detener la propagación de información errónea",


        "title_en": "Le Moyen-Orient sévit contre les rumeurs de COVID-19",
        "description_en": "Détaille les mesures punitives que plusieurs pays du Moyen-Orient ont mises en place pour empêcher la propagation de la désinformation",
        "link": "https://www.arabnews.com/node/1649286/middle-east",
        "progressive": "need to watch",
        "category": "punitive, misinformation",
        "type": "policy or law",
        "country": "Saudi Arabia, Kuwait, United Arab Emirates, Jordan, Bahrain"
    },
    {
        "title_en": "U.N. says Saudi deportations of Ethiopian migrants risks spreading coronavirus",
        "description_en": "Saudi Arabia has been deporting migrants to Addis Adaba which could threaten Ethiopia's public health",
        "title_es": "La ONU dice que las deportaciones sauditas de migrantes etíopes corren el riesgo de propagar el coronavirus",
        "description_es": "Arabia Saudita ha estado deportando inmigrantes a Addis Adaba, lo que podría amenazar la salud pública de Etiopía",


        "title_en": "L'ONU dit que les déportations saoudiennes de migrants éthiopiens risquent de propager le coronavirus",
        "description_en": "L'Arabie saoudite expulse des migrants vers Addis-Abeba, ce qui pourrait menacer la santé publique de l'Éthiopie",
        "link": "https://www.reuters.com/article/us-health-coronavirus-ethiopia-migrants-idUSKCN21V1OT",
        "progressive": "regressive",
        "category": "punitive",
        "type": "policy or law",
        "country": "Saudi Arabia"
    },
    {
        "title_en": "How Saudi women’s organizations have risen to the coronavirus challenge",
        "description_en": "Women's organizations in Saudi Arabia have provided crucial community resources during the pandemic",
        "title_es": "Cómo las organizaciones de mujeres sauditas han superado el desafío del coronavirus",
        "description_es": "Las organizaciones de mujeres en Arabia Saudita han proporcionado recursos comunitarios cruciales durante la pandemia",


        "title_en": "Comment les organisations de femmes saoudiennes ont relevé le défi du coronavirus",
        "description_en": "Les organisations de femmes en Arabie saoudite ont fourni des ressources communautaires cruciales pendant la pandémie",
        "link": "https://www.arabnews.com/node/1668611/saudi-arabia",
        "progressive": "progressive",
        "category": "education, childcare, food",
        "type": "observed response",
        "country": "Saudi Arabia"
    },
    {
        "title_en": "Securitization and Politics in the Israeli COVID-19 response",
        "description_en": "The IDF has taken a prominent role in executing the COVID- 19 response and digital surveillance has increased",
        "title_es": "Titulización y política en la respuesta israelí COVID-19",
        "description_es": "La IDF ha desempeñado un papel destacado en la ejecución de la respuesta COVID-19 y la vigilancia digital ha aumentado",


        "title_en": "La titrisation et la politique dans la réponse israélienne au COVID-19",
        "description_en": "Tsahal a joué un rôle de premier plan dans l'exécution de la réponse COVID-19 et la surveillance numérique a augmenté",
        "link": "https://www.fpri.org/article/2020/04/securitization-and-politics-in-the-israeli-covid-19-response/",
        "progressive": "regressive",
        "category": "healthcare, gender-based violence",
        "type": "observed response",
        "country": "Israel"
    },
    {
        "title_en": "Israel deems women’s ritual baths essential, leaving some conflicted over virus risk",
        "description_en": "Certain Jewish women still required to partake in ritual baths, posing a health risk during the pandemic",
        "title_es": "Israel considera que los baños rituales de las mujeres son esenciales, dejando algunos conflictos por el riesgo de virus",
        "description_es": "Ciertas mujeres judías todavía debían participar en baños rituales, lo que representa un riesgo para la salud durante la pandemia",


        "title_en": "Israël estime que les bains rituels des femmes sont essentiels, laissant certains en conflit sur le risque de virus",
        "description_en": "Certaines femmes juives doivent encore participer à des bains rituels, ce qui pose un risque pour la santé pendant la pandémie",
        "link": "https://www.washingtonpost.com/world/middle_east/israel-deems-womens-ritual-baths-essential-leaving-some-conflicted-over-virus-risk/2020/04/28/a8544dbc-83e8-11ea-81observed response-9690c9881111_story.html",
        "progressive": "regressive",
        "category": "gendered health impacts",
        "type": "policy or law",
        "country": "Israel"
    },
    {
        "title_en": "Israel must release Palestinian prisoners in vulnerable situation, say UN experts",
        "description_en": "Israel has released Israeli prisoners as a COVID protection, but has kept Palestinian prisoners detained",
        "title_es": "Israel debe liberar a los prisioneros palestinos en situación vulnerable, dicen expertos de la ONU",
        "description_es": "Israel ha liberado a prisioneros israelíes como protección COVID, pero ha mantenido detenidos a prisioneros palestinos",


        "title_en": "Israël doit libérer les prisonniers palestiniens en situation vulnérable, disent les experts de l'ONU",
        "description_en": "Israël a libéré des prisonniers israéliens à titre de protection COVID, mais a maintenu en détention des prisonniers palestiniens",
        "link": "https://www.ohchr.org/EN/NewsEvents/Pages/DisplayNews.aspx?NewsID=25822&LangID=E",
        "progressive": "regressive",
        "category": "punitive, race",
        "type": "observed response",
        "country": "Israel"
    },
    {
        "title_en": "Herd Immunity, or Big 2nd Wave? Israel Antibody Testing Hopes to Find Out",
        "description_en": "Israel is conducting a nationwide survey of antibody tests to determine next steps in their response",
        "title_es": "Inmunidad de rebaño, o gran segunda ola? Israel Antibody Testing esperanzas de descubrir",
        "description_es": "Israel está realizando una encuesta nacional de pruebas de anticuerpos para determinar los próximos pasos en su respuesta",


        "title_en": "Immunité du troupeau, ou grande 2e vague? Israël veut tester les anticorps",
        "description_en": "Israël mène une enquête nationale sur les tests d'anticorps pour déterminer les prochaines étapes de sa réponse",
        "link": "https://www.nytimes.com/2020/05/05/world/middleeast/coronavirus-israel-antibody-testing.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Israel"
    },
    {
        "title_en": "To Track Coronavirus, Israel Moves to Tap Secret Trove of Cellphone Data",
        "description_en": "Israeli government using previously undisclosed counterterrorism surveillance and data trove to trace COVID-19",
        "title_es": "Para rastrear el coronavirus, Israel se mueve para aprovechar el secreto de los datos del teléfono celular",
        "description_es": "El gobierno israelí utiliza la vigilancia antiterrorista previamente no revelada y el tesoro de datos para rastrear COVID-19",


        "title_en": "Pour suivre le coronavirus, Israël s'apprête à exploiter des données secrètes sur les téléphones portables",
        "description_en": "Le gouvernement israélien utilise une surveillance antiterroriste et des données non divulguées pour retrouver COVID-19",
        "link": "https://www.nytimes.com/2020/03/16/world/middleeast/israel-coronavirus-cellphone-tracking.html",
        "progressive": "regressive",
        "category": "punitive, digital surveillance",
        "type": "policy or law",
        "country": "Israel"
    },
    {
        "title_en": "Abrupter Rückfall in alte Rollenmuster",
        "description_en": "Home office experiences encourage political reorganization of everyday work and men experience new things. (GE)",
        "title_es": "Caída abrupta en alte Rollenmuster",
        "description_es": "Las experiencias de oficina en casa fomentan la reorganización política del trabajo diario y los hombres experimentan cosas nuevas. (GE)",


        "title_en": "Abrupter Rückfall in alte Rollenmuster",
        "description_en": "Les expériences de bureau à domicile encouragent la réorganisation politique du travail quotidien et les hommes vivent de nouvelles choses. (GE)",
        "link": "https://www.gwi-boell.de/de/2020/04/28/abrupter-rueckfall-alte-rollenmuster",
        "progressive": "need to watch",
        "category": "economy, childcare",
        "type": "policy or law",
        "country": "Germany"
    },
    {
        "title_en": "Orderly Andorra has an unusual system for easing lockdown restrictions",
        "description_en": "Those who live in even-numbered homes are allowed to go out on even dates.",
        "title_es": "Andorra ordenada tiene un sistema inusual para aliviar las restricciones de bloqueo",
        "description_es": "Los que viven en hogares con números pares pueden salir en fechas pares",


        "title_en": "L'Andorre ordonnée a un système inhabituel pour assouplir les restrictions de verrouillage",
        "description_en": "Ceux qui vivent dans des maisons à nombre pair sont autorisés à sortir à des dates paires.",
        "link": "https://www.euronews.com/2020/04/21/orderly-andorra-has-an-unusual-system-for-easing-lockdown-restrictions",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Andorra"
    },
    {
        "title_en": "Authorities in Andorra eased restrictions related to COVID-19",
        "description_en": "Authorities in Andorra eased restrictions related to coronavirus disease (COVID-19) from April 16.",
        "title_es": "Las autoridades de Andorra redujeron las restricciones relacionadas con COVID-19",
        "description_es": "Las autoridades de Andorra redujeron las restricciones relacionadas con la enfermedad por coronavirus (COVID-19) a partir del 16 de abril",


        "title_en": "Les autorités d'Andorre ont assoupli les restrictions liées au COVID-19",
        "description_en": "Les autorités d'Andorre ont assoupli les restrictions liées à la maladie à coronavirus (COVID-19) à partir du 16 avril.",
        "link": "https://www.worldaware.com/covid-19-alert-andorra-eases-some-restrictions-april-16",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Andorra"
    },
    {
        "title_en": "Belarus Expels Russian Journalist Over ‘Fake’ Coronavirus Report: Media",
        "description_en": "A Russian journalist has been expelled from Belarus over a report that described the neighboring allied country’s dire coronavirus situation.",
        "title_es": "Bielorrusia expulsa a periodista ruso por informe 'falso' sobre coronavirus: medios de comunicación",
        "description_es": "Un periodista ruso fue expulsado de Bielorrusia por un informe que describía la grave situación de coronavirus del país vecino aliado",


        "title_en": "Le Bélarus expulse un journaliste russe pour un 'faux' rapport sur le coronavirus: médias",
        "description_en": "Un journaliste russe a été expulsé du Bélarus à cause d'un rapport décrivant la situation dramatique du coronavirus du pays allié voisin.",
        "link": "https://www.themoscowtimes.com/2020/05/07/belarus-expels-russian-journalist-over-fake-coronavirus-report-media-a70203",
        "progressive": "need to watch",
        "category": "punitive",
        "type": "observed response",
        "country": "Belarus"
    },
    {
        "title_en": "Lukashenka Hell-Bent On Holding Victory Day Celebration In Belarus, Coronavirus Be Damned",
        "description_en": "Belarus's longtime, strongman leader will go forward with World War II Victory Day celebrations.",
        "title_es": "Lukashenka empeñado en celebrar la celebración del Día de la Victoria en Bielorrusia, se condena el coronavirus",
        "description_es": "El líder fuerte de Bielorrusia de toda la vida continuará con las celebraciones del Día de la Victoria de la Segunda Guerra Mundial",


        "title_en": "Lukashenka Hell-Bent à l'occasion de la célébration du Jour de la Victoire au Bélarus, le coronavirus soit damné",
        "description_en": "Le chef de file de longue date du Bélarus poursuivra les célébrations du Jour de la Victoire de la Seconde Guerre mondiale.",
        "link": "https://www.rferl.org/a/lukashenka-hell-bent-on-holding-victory-day-celebration-in-belarus-coronavirus-be-damned/30597609.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Belarus"
    },
    {
        "title_en": "Belarus: Life as normal despite ravaging coronavirus epidemic",
        "description_en": "Citizens take up fight to contain spread in Belarus, which has one of Europe's highest per capita infection rates.",
        "title_es": "Bielorrusia: la vida normal a pesar de la devastadora epidemia de coronavirus",
        "description_es": "Los ciudadanos luchan para contener la propagación en Bielorrusia, que tiene una de las tasas de infección per cápita más altas de Europa",


        "title_en": "Biélorussie: une vie normale malgré une épidémie de coronavirus ravageuse",
        "description_en": "Les citoyens se battent pour contenir la propagation au Bélarus, qui a l'un des taux d'infection par habitant les plus élevés d'Europe.",
        "link": "https://www.aljazeera.com/indepth/features/belarus-life-normal-ravaging-coronavirus-epidemic-200507104734893.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Belarus"
    },
    {
        "title_en": "Who Will Do It, If We Don't?'",
        "description_en": "Belarusians Step Up As President Plays Down COVID-19 Threat",
        "title_es": "¿Quién lo hará, si no lo hacemos?",
        "description_es": "Los bielorrusos dan un paso al frente mientras el presidente enfrenta la amenaza COVID-19",


        "title_en": "Qui le fera, si nous ne le faisons pas? '",
        "description_en": "Les Biélorusses intensifient leurs efforts alors que le président dénonce la menace COVID-19",
        "link": "https://www.rferl.org/a/belarusians-colunteer-coronavirus-lukashenka-plays-down-covid-19-threat/30594557.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Belarus"
    },
    {
        "title_en": "Barbados accuses U.S. of blocking ventilators for coronavirus, then walks back allegation",
        "description_en": "Health Minister Lt. Col Jeffrey Bostic said that 20 ventilators purchased by a philanthropist had been “seized” in the U.S.",
        "title_es": "Barbados acusa a EE. UU. de bloquear los ventiladores para el coronavirus y luego rechaza la acusación",
        "description_es": "El Ministro de Salud, teniente coronel Jeffrey Bostic, dijo que 20 ventiladores comprados por un filántropo habían sido 'incautados' en los Estados Unidos",


        "title_en": "La Barbade accuse les États-Unis de bloquer les ventilateurs pour coronavirus, puis revient sur ses allégations",
        "description_en": "Le lieutenant-colonel Jeffrey Bostic, ministre de la Santé, a déclaré que 20 ventilateurs achetés par un philanthrope avaient été' saisis 'aux États-Unis",

        "link": "https://www.miamiherald.com/news/nation-world/world/americas/haiti/article241labor3756.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Barbados"
    },
    {
        "title_en": "Empty resorts spell long crisis for Caribbean as coronavirus hits",
        "description_en": "There are few places where the economic impact of the pandemic may be as immediate.",
        "title_es": "Los resorts vacíos significan una larga crisis para el Caribe cuando llega el coronavirus",
        "description_es": "Hay pocos lugares donde el impacto económico de la pandemia puede ser tan inmediato",


        "title_en": "Les centres de villégiature vides provoquent une longue crise pour les Caraïbes à la suite d'un coronavirus",
        "description_en": "Il existe peu d'endroits où l'impact économique de la pandémie peut être aussi immédiat.",
        "link": "https://www.reuters.com/article/us-health-coronavirus-caribbean-tourism/empty-resorts-spell-long-crisis-for-caribbean-as-coronavirus-hits-idUSKBN222189",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Barbados, Dominican Republic, Jamaica, Haiti, Cuba"
    },
    {
        "title_en": "Barbados: Over 200 staff of agency in quarantine over coronavirus",
        "description_en": "The Government of Barbados has placed their full staff in quarantine.",
        "title_es": "Barbados: más de 200 empleados de la agencia en cuarentena por coronavirus",
        "description_es": "El Gobierno de Barbados ha puesto a todo su personal en cuarentena",


        "title_en": "Barbade: plus de 200 employés de l'agence en quarantaine sur les coronavirus",
        "description_en": "Le gouvernement de la Barbade a mis son personnel en quarantaine.",
        "link": "https://www.stabroeknews.com/2020/04/26/news/regional/barbados/barbados-over-200-staff-of-agency-in-quarantine-over-coronavirus/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Barbados"
    },
    {
        "title_en": "Caribbean tourism has been decimated by COVID-19.",
        "description_en": "Argues that Caribbean governments will need private-sector help to fill the tourism gap.",
        "title_es": "El turismo caribeño ha sido diezmado por COVID-19",
        "description_es": "Argumenta que los gobiernos del Caribe necesitarán ayuda del sector privado para llenar la brecha turística",


        "title_en": "Le tourisme dans les Caraïbes a été décimé par COVID-19.",
        "description_en": "Affirme que les gouvernements des Caraïbes auront besoin de l'aide du secteur privé pour combler le déficit touristique.",
        "link": "https://www.weforum.org/agenda/2020/05/caribbean-tourism-has-been-decimated-by-covid-19-but-the-private-sector-can-cushion-the-blow/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Barbados, Belize, Bahamas, Aruba, Barbados, Dominican Republic, Jamaica, Mexico"
    },
    {
        "title_en": "Belize is Last Remaining Coronavirus-Free Country on American Continent",
        "description_en": "There are 23 nations spread across the North and South American continents, but only Belize has yet to report a known case of COVID-19.",
        "title_es": "Belice es el último país libre de coronavirus en el continente americano",
        "description_es": "Hay 23 naciones repartidas en los continentes de América del Norte y del Sur, pero solo Belice aún tiene que informar un caso conocido de COVID-19",


        "title_en": "Le Belize est le dernier pays exempt de coronavirus sur le continent américain",
        "description_en": "Il existe 23 nations réparties sur les continents nord et sud-américain, mais seul le Belize n'a pas encore signalé de cas connu de COVID-19.",
        "link": "https://www.rtmagazine.com/disorders-diseases/infectious-diseases/other-infections/belize-last-coronavirus-free-country-american-continent/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Belize"
    },
    {
        "title_en": "Belize Closes Borders in Coronavirus Fight",
        "description_en": "Belize’s borders are now closed both to foreign visitors and Belizeans seeking to re-enter the country.",
        "title_es": "Belice cierra fronteras en la lucha contra el coronavirus",
        "description_es": "Las fronteras de Belice ahora están cerradas tanto para los visitantes extranjeros como para los beliceños que desean reingresar al país",


        "title_en": "Le Belize ferme ses frontières dans la lutte contre les coronavirus",
        "description_en": "Les frontières du Belize sont désormais fermées tant aux visiteurs étrangers qu'aux Belize qui souhaitent rentrer dans le pays.",
        "link": "https://www.caribjournal.com/2020/04/06/belize-borders-coronavirus-fight/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Belize"
    },
    {
        "title_en": "Coronavirus - Benin goes on digital offensive against COVID-19",
        "description_en": "Benin has set up a range of digital platforms to help combat both the spread of the disease and health misinformation.",
        "title_es": "Coronavirus - Benin inicia una ofensiva digital contra COVID-19",
        "description_es": "Benin ha establecido una gama de plataformas digitales para ayudar a combatir tanto la propagación de la enfermedad como la información errónea sobre la salud",


        "title_en": "Coronavirus - Le Bénin passe à l'offensive numérique contre COVID-19",
        "description_en": "Le Bénin a mis en place une gamme de plateformes numériques pour lutter contre la propagation de la maladie et la désinformation sanitaire.",
        "link": "https://www.africanews.com/2020/04/10/coronavirus-benin-goes-on-digital-offensive-against-covid-19//",
        "progressive": "need to watch",
        "category": "misinformation",
        "type": "temporary measure",
        "country": "Benin"
    },
    {
        "title_en": "Bhutan bars tourists after first coronavirus case, India total hits 31",
        "description_en": "Bhutan will bar arriving tourists for two weeks after confirming its first case of the coronavirus.",
        "title_es": "Bután prohíbe a los turistas después del primer caso de coronavirus, el total de India llega a 31",
        "description_es": "Bután prohibirá a los turistas que lleguen durante dos semanas después de confirmar su primer caso del coronavirus",


        "title_en": "Le Bhoutan interdit les touristes après le premier cas de coronavirus, le total de l'Inde atteint 31",
        "description_en": "Le Bhoutan interdira les touristes qui arrivent pendant deux semaines après avoir confirmé son premier cas de coronavirus.",
        "link": "https://www.reuters.com/article/us-health-coronavirus-southasia/bhutan-bans-tourists-after-first-coronavirus-case-india-total-hits-31-idUSKBN20T0QB",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Bhutan, India"
    },
    {
        "title_en": "Political developments amidst Bosnia and Herzegovina coronavirus response",
        "description_en": "Corruption, political blockages, threaten international efforts to help Bosnia and Herzegovina weather coronavirus",
        "title_es": "Desarrollos políticos en medio de la respuesta al coronavirus de Bosnia y Herzegovina",
        "description_es": "La corrupción, los bloqueos políticos, amenazan los esfuerzos internacionales para ayudar a Bosnia y Herzegovina a combatir el coronavirus",


        "title_en": "Évolution politique au milieu de la réponse du coronavirus en Bosnie-Herzégovine",
        "description_en": "La corruption, les blocages politiques menacent les efforts internationaux pour aider la Bosnie-Herzégovine à surmonter le coronavirus",
        "link": "https://news.un.org/en/story/2020/05/1063432",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "Bosnia and Herzegovina"
    },
    {
        "title_en": "Bosnia reports sharp rise in coronavirus cases after relaxing lockdown",
        "description_en": "Bosnia reported on Wednesday its sharpest daily rise in new coronavirus infections this month.",
        "title_es": "Bosnia informa un fuerte aumento en los casos de coronavirus después de relajar el bloqueo",
        "description_es": "Bosnia informó el miércoles su mayor aumento diario de nuevas infecciones por coronavirus este mes",


        "title_en": "La Bosnie signale une forte augmentation des cas de coronavirus après avoir assoupli le verrouillage",
        "description_en": "La Bosnie a signalé mercredi sa plus forte augmentation quotidienne de nouvelles infections à coronavirus ce mois-ci.",
        "link": "https://www.reuters.com/article/us-health-coronavirus-bosnia-cases/bosnia-reports-sharp-rise-in-coronavirus-cases-after-relaxing-lockdown-idUSKBN22B2DB",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Bosnia and Herzegovina"
    },
    {
        "title_en": "Poachers kill more animals as coronavirus crushes tourism to Africa",
        "description_en": "In Botswana, at least six rhinos have been poached since the virus shut down tourism there.",
        "title_es": "Los cazadores furtivos matan más animales cuando el coronavirus aplasta el turismo en África",
        "description_es": "En Botswana, al menos seis rinocerontes han sido saqueados desde que el virus cerró el turismo allí",


        "title_en": "Les braconniers tuent plus d'animaux alors qu'un coronavirus écrase le tourisme en Afrique",
        "description_en": "Au Botswana, au moins six rhinocéros ont été braconnés depuis que le virus y a fermé le tourisme.",
        "link": "https://www.cnbc.com/2020/04/24/coronavirus-poachers-kill-more-animals-as-tourism-to-africa-plummets.html",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "Botswana, South Africa"
    },
    {
        "title_en": "Phased lockdown lifting starts May 8",
        "description_en": "Botswana will start a phased lifting of its lockdown staring May 8",
        "title_es": "El levantamiento por bloqueo gradual comienza el 8 de mayo",
        "description_es": "Botswana comenzará un levantamiento gradual de su bloqueo el 8 de mayo",


        "title_en": "La levée progressive du verrouillage commence le 8 mai",
        "description_en": "Le Botswana commencera une levée progressive de son verrouillage à compter du 8 mai",
        "link": "https://www.africanews.com/2020/05/06/botswana-president-in-self-isolation-after-namibia-trip/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Botswana"
    },
    {
        "title_en": "Botswana's entire parliament quarantined after coronavirus scare",
        "description_en": "All Botswana’s parliamentarians including President Mokgweetsi Masisi will be quarantined for 14 days.",
        "title_es": "Todo el parlamento de Botsuana se puso en cuarentena después del susto del coronavirus",
        "description_es": "Todos los parlamentarios de Botswana, incluido el presidente Mokgweetsi Masisi, serán puestos en cuarentena durante 14 días",


        "title_en": "L'ensemble du Parlement du Botswana mis en quarantaine après une alerte au coronavirus",
        "description_en": "Tous les parlementaires du Botswana, y compris le président Mokgweetsi Masisi, seront mis en quarantaine pendant 14 jours.",
        "link": "https://www.reuters.com/article/us-health-coronavirus-botswana/botswanas-entire-parliament-quarantined-after-coronavirus-scare-idUSKCN21R29I",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Botswana"
    },
    {
        "title_en": "Botswana President, Lawmakers End Quarantine After Testing Negative for Coronavirus",
        "description_en": "Botwana's lawmakers completed a two-week quarantine Thursday after testing negative for the new coronavirus.",
        "title_es": "Presidente de Botswana, legisladores terminan la cuarentena después de las pruebas negativas para el coronavirus",
        "description_es": "Los legisladores de Botwana completaron una cuarentena de dos semanas el jueves después de dar negativo para el nuevo coronavirus",


        "title_en": "Le président du Botswana, les législateurs mettent fin à la quarantaine après un test négatif pour le coronavirus",
        "description_en": "Les législateurs de Botwana ont achevé une quarantaine de deux semaines jeudi après avoir testé négatif pour le nouveau coronavirus.",
        "link": "https://www.voanews.com/covid-19-pandemic/botswana-president-lawmakers-end-quarantine-after-testing-negative-coronavirus",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Botswana"
    },
    {
        "title_en": "Brunei reports first coronavirus death",
        "description_en": "Brunei has reported 115 cases of the virus so far, some of which were linked to a religious gathering in Malaysia.",
        "title_es": "Brunei informa la primera muerte por coronavirus",
        "description_es": "Brunei ha reportado 115 casos del virus hasta ahora, algunos de los cuales estaban relacionados con una reunión religiosa en Malasia",


        "title_en": "Le Brunei signale le premier décès de coronavirus",
        "description_en": "Le Brunei a signalé 115 cas de virus à ce jour, dont certains étaient liés à un rassemblement religieux en Malaisie.",
        "link": "https://www.reuters.com/article/us-health-coronavirus-brunei/brunei-reports-first-coronavirus-death-idUSKBN21F02K",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Brunei, Malaysia"
    },
    {
        "title_en": "Bulgarian capital Sofia sealed off to contain spread of coronavirus",
        "description_en": "Health Minister Kiril Ananiev said travel to and from Sofia, home to some 2 million people, will be banned until further notice.",
        "title_es": "La capital búlgara, Sofía, cerrada para contener la propagación del coronavirus",
        "description_es": "El ministro de Salud, Kiril Ananiev, dijo que los viajes hacia y desde Sofía, hogar de unos 2 millones de personas, serán prohibidos hasta nuevo aviso",


        "title_en": "La capitale bulgare Sofia a été bouclée pour contenir la propagation du coronavirus",
        "description_en": "Le ministre de la Santé, Kiril Ananiev, a déclaré que les voyages à destination et en provenance de Sofia, où vivent quelque 2 millions de personnes, seront interdits jusqu'à nouvel ordre.",
        "link": "https://www.reuters.com/article/us-health-coronavirus-bulgaria-sofia/bulgarian-capital-sofia-sealed-off-to-contain-spread-of-coronavirus-idUSKBN21Y3D3",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Bulgaria"
    },
    {
        "title_en": "Bulgaria bans entry to foreigners from almost all the world over COVID-19",
        "description_en": "Bulgaria banned entry to its territory to citizens from around the globe except for 19 EU member states",
        "title_es": "Bulgaria prohíbe la entrada a extranjeros de casi todo el mundo a través de COVID-19",
        "description_es": "Bulgaria prohibió la entrada a su territorio a ciudadanos de todo el mundo, excepto 19 Estados miembros de la UE",


        "title_en": "La Bulgarie interdit l'entrée aux étrangers de presque tout le monde via COVID-19",
        "description_en": "La Bulgarie a interdit l'entrée sur son territoire aux citoyens du monde entier, à l'exception de 19 États membres de l'UE",
        "link": "https://www.euractiv.com/section/justice-home-affairs/news/bulgaria-bans-entry-to-foreigners-from-almost-all-the-world-over-covid-19/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Bulgaria"
    },
    {
        "title_en": "Bulgarian coronavirus cases pass 1,000, health ministry says",
        "description_en": "Bulgaria declared a state of national emergency on March 13 and extended it for a further month",
        "title_es": "Los casos de coronavirus búlgaros pasan 1,000, dice el ministerio de salud",
        "description_es": "Bulgaria declaró el estado de emergencia nacional el 13 de marzo y lo extendió por un mes más",


        "title_en": "Les cas de coronavirus bulgare dépassent 1 000, selon le ministère de la Santé",
        "description_en": "La Bulgarie a déclaré l'état d'urgence nationale le 13 mars et l'a prolongé d'un mois",
        "link": "https://www.reuters.com/article/us-health-coronavirus-bulgaria/bulgarian-coronavirus-cases-pass-1000-health-ministry-says-idUSKCN2240UJ",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Bulgaria"
    },
    {
        "title_en": "Burkina Faso unveils free and open online school as coronavirus pandemic affects system",
        "description_en": "A young man created the country’s first digital school, a free and online one which ensures pupils don’t fall behind.",
        "title_es": "Burkina Faso presenta una escuela en línea gratuita y abierta, ya que la pandemia de coronavirus afecta el sistema",
        "description_es": "Un joven creó la primera escuela digital del país, gratuita y en línea que garantiza que los alumnos no se queden atrás",


        "title_en": "Le Burkina Faso dévoile une école en ligne gratuite et ouverte alors que la pandémie de coronavirus affecte le système",
        "description_en": "Un jeune homme a créé la première école numérique du pays, une école gratuite et en ligne qui garantit que les élèves ne prennent pas de retard.",
        "link": "https://www.france24.com/en/video/20200507-burkina-faso-unveils-free-and-open-online-school-as-coronavirus-pandemic-affects-system",
        "progressive": "progressive",
        "category": "education",
        "type": "temporary measure",
        "country": "Burkina Faso"
    },
    {
        "title_en": "Burkina Faso comedians combat COVID-19 anxiety with humour",
        "description_en": "How comedians in Burkina Faso are using humour to raise awareness around coronavirus.",
        "title_es": "Los comediantes de Burkina Faso combaten la ansiedad de COVID-19 con humor",
        "description_es": "Cómo los cómicos en Burkina Faso están usando el humor para crear conciencia sobre el coronavirus",


        "title_en": "Les humoristes du Burkina Faso combattent l'anxiété avec COVID-19 avec humour",
        "description_en": "Comment les humoristes du Burkina Faso utilisent l'humour pour sensibiliser le public aux coronavirus.",
        "link": "https://www.aljazeera.com/news/2020/05/burkina-faso-comedians-combat-covid-19-anxiety-humour-200502104518662.html",
        "progressive": "progressive",
        "category": "economy",
        "type": "observed response",
        "country": "Burkina Faso"
    },
    {
        "title_en": "COVID-19 changed everything': Ramadan for IDPs in Burkina Faso",
        "description_en": "With pandemic disrupting supply chains, thousands displaced by war struggle with lack of food during Muslim holy month.",
        "title_es": "COVID-19 cambió todo ': Ramadán para desplazados internos en Burkina Faso",
        "description_es": "Con la pandemia interrumpiendo las cadenas de suministro, miles de desplazados por la guerra luchan por la falta de alimentos durante el mes sagrado musulmán",


        "title_en": "'COVID-19 a tout changé:' le Ramadan pour les PDI au Burkina Faso ",
        "description_en": "Avec une pandémie perturbant les chaînes d'approvisionnement, des milliers de personnes déplacées par la guerre luttent contre le manque de nourriture pendant le mois sacré musulman.",
        "link": "https://www.aljazeera.com/indepth/features/changed-ramadan-idps-burkina-faso-200502070210775.html",
        "progressive": "need to watch",
        "category": "food",
        "type": "observed response",
        "country": "Burkina Faso"
    },
    {
        "title_en": "COVID-19 is Coinciding with Dangerous Trends in Burundi's Democracy",
        "description_en": "As recent weeks brought news of the first recorded cases of the coronavirus in Burundi, they have also featured coverage of crowded campaign rallies",
        "title_es": "COVID-19 coincide con tendencias peligrosas en la democracia de Burundi",
        "description_es": "Como las últimas semanas trajeron noticias de los primeros casos registrados del coronavirus en Burundi, también han presentado cobertura de manifestaciones de campaña abarrotadas",


        "title_en": "COVID-19 coïncide avec des tendances dangereuses dans la démocratie burundaise",
        "description_en": "Alors que les dernières semaines ont fait part des premiers cas enregistrés de coronavirus au Burundi, ils ont également couvert les rassemblements électoraux surpeuplés",
        "link": "https://www.cfr.org/blog/covid-19-coinciding-dangerous-trends-burundis-democracy",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Burundi"
    },
    {
        "title_en": "Aid groups blocked from Burundi coronavirus quarantine sites",
        "description_en": "HRW reports humanitarian organisations have been blocked from providing assistance to hundreds of people.",
        "title_es": "Grupos de ayuda bloqueados de los sitios de cuarentena de coronavirus de Burundi",
        "description_es": "HRW informa que las organizaciones humanitarias han sido bloqueadas para proporcionar asistencia a cientos de personas",


        "title_en": "Groupes d'aide bloqués des sites de quarantaine des coronavirus du Burundi",
        "description_en": "HRW signale que les organisations humanitaires ont été empêchées de fournir une assistance à des centaines de personnes.",
        "link": "https://www.thenewhumanitarian.org/news/2020/04/02/burundi-coronavirus-aid",
        "progressive": "regressive",
        "category": "healthcare, food",
        "type": "observed response",
        "country": "Burundi"
    },
    {
        "title_en": "Masks, bans and questions: Inside Cameroon's COVID-19 response",
        "description_en": "President Biya has not addressed nation in weeks, raising questions, but gov't has taken series of steps to stem virus.",
        "title_es": "Máscaras, prohibiciones y preguntas: dentro de la respuesta COVID-19 de Camerún",
        "description_es": "El presidente Biya no se ha dirigido a la nación en semanas, planteando preguntas, pero el gobierno ha tomado una serie de pasos para detener el virus",


        "title_en": "Masques, interdictions et questions: à l'intérieur de la réponse COVID-19 du Cameroun",
        "description_en": "Le président Biya ne s'est pas adressé à la nation depuis des semaines, soulevant des questions, mais le gouvernement a pris une série de mesures pour endiguer le virus.",
        "link": "https://www.aljazeera.com/news/2020/04/masks-bans-questions-cameroon-covid-19-response-200422134140013.html",
        "progressive": "need to watch",
        "category": "healthcare, labor",
        "type": "temporary measure, observed response",
        "country": "Cameroon"
    },
    {
        "title_en": "In Cameroon, chloroquine therapy hailed by French expert becomes state protocol",
        "description_en": "Cameroon's scientific council proposed the widespread use of chloroquine treatment",
        "title_es": "En Camerún, la terapia con cloroquina aclamada por un experto francés se convierte en protocolo estatal",
        "description_es": "El consejo científico de Camerún propuso el uso generalizado del tratamiento con cloroquina",


        "title_en": "Au Cameroun, la chloroquine saluée par un expert français devient protocole d'État",
        "description_en": "Le conseil scientifique du Cameroun a proposé l'utilisation généralisée du traitement à la chloroquine",
        "link": "https://www.france24.com/en/20200503-covid-19-in-cameroon-a-chloroquine-therapy-hailed-by-french-expert-becomes-state-protocol",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Cameroon, France"
    },
    {
        "title_en": "Chad confirms first case of coronavirus: government statement",
        "description_en": "Chad confirmed its first case of coronavirus on Thursday, a Moroccan national who had traveled to the country from Cameroon",
        "title_es": "Chad confirma el primer caso de coronavirus: declaración del gobierno",
        "description_es": "Chad confirmó su primer caso de coronavirus el jueves, un ciudadano marroquí que había viajado al país desde Camerún",


        "title_en": "Le Tchad confirme le premier cas de coronavirus: déclaration du gouvernement",
        "description_en": "Le Tchad a confirmé jeudi son premier cas de coronavirus, un ressortissant marocain qui s'était rendu dans le pays depuis le Cameroun",
        "link": "https://www.reuters.com/article/us-health-coronavirus-chad/chad-confirms-first-case-of-coronavirus-government-statement-idUSKBN2162LO",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Chad"
    },
    {
        "title_en": "Chad: Town Criers, Troubadors Raise COVID-19 Awareness in Rural Chad",
        "description_en": "Concern in rural Chad of leaving them out of critical COVID-19 sensitization messages",
        "title_es": "Chad: los pregoneros de la ciudad, los trovadores aumentan la conciencia de COVID-19 en el Chad rural",
        "description_es": "Preocupación en Chad rural de dejarlos fuera de los mensajes críticos de sensibilización COVID-19",


        "title_en": "Tchad: Des crieurs publics et des troubadours sensibilisent au COVID-19 dans le Tchad rural",
        "description_en": "Préoccupation dans les zones rurales du Tchad de les exclure des messages critiques de sensibilisation au COVID-19",
        "link": "https://www.africanews.com/2020/04/24/coronavirus-chad-town-criers-troubadors-raise-covid-19-awareness-in-rural-chad//",
        "progressive": "need to watch",
        "category": "healthcare, misinformation",
        "type": "temporary measure, observed response",
        "country": "Chad"
    },
    {
        "title_en": "In Central African Republic, a colossal struggle against COVID-19",
        "description_en": "Experts warn coronavirus could tear through CAR at 'lightning spread' if the vulnerable country does not get support.",
        "title_es": "En la República Centroafricana, una lucha colosal contra COVID-19",
        "description_es": "Los expertos advierten que el coronavirus podría atravesar la RCA cuando se propague un rayo si el país vulnerable no recibe apoyo",


        "title_en": "En République centrafricaine, une lutte colossale contre COVID-19",
        "description_en": "Les experts avertissent que le coronavirus pourrait traverser la RCA en cas de 'propagation de la foudre' si le pays vulnérable n'obtenait pas d'aide.",
        "link": "https://www.aljazeera.com/indepth/features/central-african-republic-colossal-struggle-covid-19-200421142222924.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Central African Republic"
    },
    {
        "title_en": "Few Doctors, Fewer Ventilators",
        "description_en": "African Countries Fear They Are Defenseless Against Inevitable Spread of Coronavirus",
        "title_es": "Pocos médicos, menos ventiladores",
        "description_es": "Los países africanos temen que estén indefensos contra la propagación inevitable del coronavirus",


        "title_en": "Peu de médecins, moins de ventilateurs",
        "description_en": "Les pays africains craignent d'être sans défense contre la propagation inévitable du coronavirus",
        "link": "https://time.com/5816299/coronavirus-africa-ventilators-doctors/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Central African Republic, Zimbabwe, Lesotho, Liberia, Zambia, South Africa"
    },
    {
        "title_en": "Cape Verde Declares Nationwide State of Emergency",
        "description_en": "A nationwide state of emergency is ongoing in Cape Verde to halt the spread of COVID-19.",
        "title_es": "Cabo Verde declara el estado nacional de emergencia",
        "description_es": "Un estado de emergencia a nivel nacional está en curso en Cabo Verde para detener la propagación de COVID-19",


        "title_en": "Le Cap-Vert déclare l'état d'urgence dans tout le pays",
        "description_en": "Un état d'urgence à l'échelle nationale est en cours au Cap-Vert pour arrêter la propagation du COVID-19.",
        "link": "https://www.worldaware.com/covid-19-alert-cape-verde-declares-nationwide-state-emergency",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Cape Verde"
    },
    {
        "title_en": "Cabo Verde braces for plummeting tourism revenue",
        "description_en": "Disruptions to travel and trade present existential threats to the country’s economy.",
        "title_es": "Cabo Verde se prepara para derrumbar los ingresos del turismo",
        "description_es": "Las interrupciones en los viajes y el comercio presentan amenazas existenciales para la economía del país",


        "title_en": "Les accolades du Cabo Verde pour la chute des revenus touristiques",
        "description_en": "Les perturbations des voyages et du commerce présentent des menaces existentielles pour l'économie du pays.",
        "link": "https://www.atlanticcouncil.org/blogs/africasource/cabo-verde-braces-for-plummeting-tourism-revenue/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Cape Verde"
    },
    {
        "title_en": "Comoros verifies first confirmed coronavirus case",
        "description_en": "The case involves a man in his 50s who met someone with recent travel history to France, the president says.",
        "title_es": "Comoras verifica el primer caso confirmado de coronavirus",
        "description_es": "El caso involucra a un hombre de unos 50 años que conoció a alguien con un historial reciente de viajes a Francia', dice el presidente.",


        "title_en": "Les Comores vérifient le premier cas de coronavirus confirmé",
        "description_en": "L'affaire concerne un homme d'une cinquantaine d'années qui a rencontré une personne ayant récemment voyagé en France, a déclaré le président. ",
        "link": "https://www.aljazeera.com/news/2020/04/comoros-verifies-confirmed-coronavirus-case-200430155748926.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Comoros"
    },
    {
        "title_en": "Remote Pacific islands prepare for worst as coronavirus looms",
        "description_en": "People in the island nations have some of world's highest rates of diabetes and obesity, and health systems are weak.",
        "title_es": "Las islas remotas del Pacífico se preparan para lo peor a medida que se avecina el coronavirus",
        "description_es": "Las personas en las naciones isleñas tienen algunas de las tasas más altas de diabetes y obesidad en el mundo, y los sistemas de salud son débiles",


        "title_en": "Les îles isolées du Pacifique se préparent au pire alors que le coronavirus se profile",
        "description_en": "Les habitants des nations insulaires ont certains des taux de diabète et d'obésité les plus élevés au monde, et les systèmes de santé sont faibles.",
        "link": "https://www.aljazeera.com/news/2020/04/remote-pacific-islands-prepare-worst-coronavirus-looms-200403045004961.html",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "policy or law, temporary measure, observed response",
        "country": "Cook Islands, Papua New Guinea, Kiribati, Tuvalu, Solomon Islands, Fiji Islands, Micronesia (Federated States of), Vanuatu, Tonga, Niue, Nauru, Samoa, Palau"
    },
    {
        "title_en": "Coronavirus: Greece and Croatia acted fast, now need to save summer",
        "description_en": "Covers rising concerns as summer approaches and tourism industry will be impacted.",
        "title_es": "Coronavirus: Grecia y Croacia actuaron rápido, ahora necesitan salvar el verano",
        "description_es": "Cubre las crecientes preocupaciones a medida que se acerca el verano y la industria del turismo se verá afectada",


        "title_en": "Coronavirus: la Grèce et la Croatie ont agi rapidement, doivent maintenant sauver l'été",
        "description_en": "Couvre les inquiétudes croissantes à l'approche de l'été et de l'industrie touristique.",
        "link": "https://www.bbc.com/news/world-europe-52491204",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Croatia, Greece"
    },
    {
        "title_en": "Coronavirus: Czechs free to move again",
        "description_en": "The Czech Republic's ban on free movement, imposed to curb coronavirus, has been lifted.",
        "title_es": "Coronavirus: los checos pueden volver a moverse",
        "description_es": "La prohibición de la República Checa de la libre circulación, impuesta para frenar el coronavirus, se ha levantado",


        "title_en": "Coronavirus: les Tchèques sont libres de se déplacer à nouveau",
        "description_en": "L'interdiction imposée par la République tchèque à la libre circulation, imposée pour lutter contre les coronavirus, a été levée.",
        "link": "https://www.bbc.com/news/world-europe-52411989",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Czech Republic, Hungary, Belgium"
    },
    {
        "title_en": "Hearts and masks: Czech-Vietnamese solidarity during coronavirus",
        "description_en": "From sewing masks to providing free refreshments, the Czech Republic's third-largest minority has played a major role.",
        "title_es": "Corazones y máscaras: solidaridad checo-vietnamita durante el coronavirus",
        "description_es": "Desde coser máscaras hasta proporcionar refrescos gratuitos, la tercera minoría más grande de la República Checa ha desempeñado un papel importante",


        "title_en": "Coeurs et masques: solidarité tchéco-vietnamienne lors du coronavirus",
        "description_en": "Des masques de couture aux rafraîchissements gratuits, la troisième minorité de République tchèque a joué un rôle majeur.",
        "link": "https://www.aljazeera.com/indepth/features/hearts-masks-czech-vietnamese-solidarity-coronavirus-200407101254028.html",
        "progressive": "progressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "Czech Republic"
    },
    {
        "title_en": "Czech study shows very low COVID-19 incidence in population",
        "description_en": "A 'collective immunity study' testing the presence of COVID-19 antibodies has shown a very low incidence of the disease",
        "title_es": "El estudio checo muestra una incidencia muy baja de COVID-19 en la población",
        "description_es": "A 'estudio de inmunidad colectiva' que prueba la presencia de anticuerpos COVID-19 ha mostrado una incidencia muy baja de la enfermedad",


        "title_en": "Une étude tchèque montre une très faible incidence de COVID-19 dans la population",
        "description_en": "Une étude d'immunité collective testant la présence d'anticorps COVID-19 a montré une très faible incidence de la maladie",
        "link": "https://medicalxpress.com/news/2020-05-czech-covid-incidence-population.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Czech Republic"
    },
    {
        "title_en": "North Korea testing, quarantining for COVID-19, still says no cases",
        "description_en": "WHO said that North Korea had the capacity to test coronaviruses in its national reference laboratory",
        "title_es": "Las pruebas de Corea del Norte, en cuarentena para COVID-19, todavía dice que no hay casos",
        "description_es": "La OMS dijo que Corea del Norte tenía la capacidad de probar coronavirus en su laboratorio nacional de referencia",


        "title_en": "Les tests en Corée du Nord, la mise en quarantaine de COVID-19, ne disent toujours aucun cas",
        "description_en": "L'OMS a déclaré que la Corée du Nord avait la capacité de tester les coronavirus dans son laboratoire national de référence",
        "link": "https://www.reuters.com/article/us-health-coronavirus-northkorea/north-korea-testing-quarantining-for-covid-19-still-says-no-cases-who-representative-idUSKBN21P3C2",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "South Korea"
    },
    {
        "title_en": "Coronavirus surges in Djibouti as population ignores measures",
        "description_en": "Horn of Africa nation has imposed nationwide lockdown as number of coronavirus cases soars",
        "title_es": "El coronavirus aumenta en Djibouti cuando la población ignora las medidas",
        "description_es": "La nación del Cuerno de África ha impuesto un bloqueo nacional a medida que aumenta el número de casos de coronavirus",


        "title_en": "Le coronavirus augmente à Djibouti alors que la population ignore les mesures",
        "description_en": "La nation de la Corne de l'Afrique a imposé un verrouillage à l'échelle nationale alors que le nombre de cas de coronavirus augmente"
        "link": "https://www.aljazeera.com/news/2020/04/coronavirus-surges-djibouti-population-ignores-measures-200424100351031.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Djibouti"
    },
    {
        "title_en": "The Dominican Republic Responds to COVID-19 Locally",
        "description_en": "A health expert on Tuesday described the response strategy of the pandemic’s hardest-hit Caribbean nation",
        "title_es": "La República Dominicana responde localmente a COVID-19",
        "description_es": "Un experto en salud describió el martes la estrategia de respuesta de la nación caribeña más afectada por la pandemia",


        "title_en": "La République dominicaine répond localement au COVID-19",
        "description_en": "Un expert en santé a décrit mardi la stratégie de riposte de la nation caribéenne la plus touchée par la pandémie",
        "link": "https://www.usnews.com/news/best-countries/articles/2020-05-05/the-dominican-republic-responds-to-the-coronavirus-with-local-efforts",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Dominican Republic"
    },
    {
        "title_en": "Haitians are fleeing the Dominican Republic due to coronavirus",
        "description_en": "A daily exodus of Haitians fleeing the rapid increase of coronavirus cases in the neighboring Dominican Republic",
        "title_es": "Los haitianos están huyendo de la República Dominicana debido al coronavirus",
        "description_es": "Un éxodo diario de haitianos que huyen del rápido aumento de los casos de coronavirus en la vecina República Dominicana",


        "title_en": "Les Haïtiens fuient la République dominicaine à cause du coronavirus",
        "description_en": "Un exode quotidien d'Haïtiens fuyant l'augmentation rapide des cas de coronavirus en République dominicaine voisine",
        "link": "https://www.miamiherald.com/news/nation-world/world/americas/haiti/article241854611.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Dominican Republic, Haiti"
    },
    {
        "title_en": "Dominican Republic Delays Presidential Vote Over Coronavirus Concerns",
        "description_en": "The Dominican Republic, which had been set to go to the polls in a first round of presidential elections in May, will postpone the vote until July",
        "title_es": "República Dominicana retrasa voto presidencial sobre preocupaciones por coronavirus",
        "description_es": "La República Dominicana, que debía ir a las urnas en una primera ronda de elecciones presidenciales en mayo, pospondrá la votación hasta julio",


        "title_en": "La République dominicaine retarde le vote présidentiel sur les problèmes de coronavirus",
        "description_en": "La République dominicaine, qui devait se rendre aux urnes lors du premier tour des élections présidentielles en mai, reportera le vote jusqu'en juillet",
        "link": "https://www.npr.org/sections/coronavirus-live-updates/2020/04/14/833866572/dominican-republic-delays-presidential-vote-over-coronavirus-concerns",
        "progressive": "need to watch",
        "category": "healthcare, democratic institutions",
        "type": "temporary measure",
        "country": "Dominican Republic"
    },
    {
        "title_en": "World Bank to Strengthen Dominica’s COVID-19 Response with US$6.6 Million",
        "description_en": "The World Bank activated on April 15 US$6.6 million to provide immediate funding for Dominica’s emergency response",
        "title_es": "El Banco Mundial fortalecerá la respuesta COVID-19 de Dominica con US $ 6,6 millones",
        "description_es": "El Banco Mundial activó el 15 de abril US $ 6.6 millones para proporcionar financiamiento inmediato para la respuesta de emergencia de Dominica",


        "title_en": "La Banque mondiale va renforcer la réponse COVID-19 de la Dominique avec 6,6 millions de dollars",
        "description_en": "La Banque mondiale a activé le 15 avril 6,6 millions de dollars pour fournir un financement immédiat à la réponse d'urgence de la Dominique",
        "link": "https://www.worldbank.org/en/news/press-release/2020/04/20/world-bank-to-strengthen-dominicas-covid-19-response-with-us66-million",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Dominica"
    },
    {
        "title_en": "Madagascar donates anti-COVID-19 drug to Eq. Guinea",
        "description_en": "Equatorial Guinea is the first country to receive herbal concoction, touted to cure coronavirus patients",
        "title_es": "Madagascar dona un medicamento anti-COVID-19 a la Ec. Guinea",
        "description_es": "Guinea Ecuatorial es el primer país en recibir brebajes herbales, promocionado para curar pacientes con coronavirus",


        "title_en": "Madagascar fait don d'un médicament anti-COVID-19 à la Guinée équatoriale",
        "description_en": "La Guinée équatoriale est le premier pays à recevoir des préparations à base de plantes, destinées à soigner les patients atteints de coronavirus",
        "link": "https://www.aa.com.tr/en/africa/madagascar-donates-anti-covid-19-drug-to-eq-guinea/1825645",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Equatorial Guinea, Madagascar"
    },
    {
        "title_en": "Exxon Equatorial Guinea offshore workers test positive for coronavirus -sources",
        "description_en": "Thirty workers at an ExxonMobil-operated offshore oil platform in Equatorial Guinea have tested positive",
        "title_es": "Los trabajadores en alta mar de Guinea Ecuatorial de Exxon dan positivo por fuentes de coronavirus",
        "description_es": "Treinta trabajadores en una plataforma petrolera costa afuera operada por ExxonMobil en Guinea Ecuatorial han dado positivo",


        "title_en": "Les travailleurs offshore d'Exxon en Guinée équatoriale testent positifs pour les sources de coronavirus",
        "description_en": "Trente travailleurs d'une plate-forme pétrolière offshore exploitée par ExxonMobil en Guinée équatoriale se sont révélés positifs",
        "link": "https://www.reuters.com/article/us-health-coronavirus-exxon-equatorialgu/thirty-workers-on-equatorial-guinea-offshore-oil-platform-test-positive-for-coronavirus-sources-idUSKCN2291PP",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "observed response",
        "country": "Equatorial Guinea, Congo"
    },
    {
        "title_en": "Can Eritrea's government survive the coronavirus?",
        "description_en": "Eritrea's failure to efficiently respond to the pandemic could bring down its authoritarian government.",
        "title_es": "¿Puede el gobierno de Eritrea sobrevivir al coronavirus?",
        "description_es": "El hecho de que Eritrea no responda eficientemente a la pandemia podría derribar a su gobierno autoritario",


        "title_en": "Le gouvernement de l'Érythrée peut-il survivre au coronavirus?",
        "description_en": "L'incapacité de l'Érythrée à réagir efficacement à la pandémie pourrait faire tomber son gouvernement autoritaire.",
        "link": "https://www.aljazeera.com/indepth/opinion/eritrea-government-survive-coronavirus-200424113745581.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Eritrea"
    },
    {
        "title_en": "Why Estonia Was Poised to Handle How a Pandemic Would Change Everything",
        "description_en": "Argues Estonia was prepared for the consequences of the coronavirus pandemic, both economically and socially.",
        "title_es": "Por qué Estonia estaba preparada para manejar cómo una pandemia lo cambiaría todo",
        "description_es": "Argumenta que Estonia estaba preparada para las consecuencias de la pandemia de coronavirus, tanto económica como socialmente",


        "title_en": "Pourquoi l'Estonie a-t-elle été priée de gérer comment une pandémie changerait tout",
        "description_en": "Argues Estonie a été préparée aux conséquences de la pandémie de coronavirus, tant sur le plan économique que social.",
        "link": "https://www.newyorker.com/news/our-columnists/why-estonia-was-poised-to-handle-how-a-pandemic-would-change-everything",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Estonia"
    },
    {
        "title_en": "Life on Estonia's 'corona island', Saaremaa",
        "description_en": "Health officials estimate that half of the island's population have contracted the virus.",
        "title_es": "La vida en la 'isla corona' de Estonia, Saaremaa",
        "description_es": "Los funcionarios de salud estiman que la mitad de la población de la isla ha contraído el virus",


        "title_en": "La vie sur l'île corona <<d'Estonie, Saaremaa>>",
        "description_en": "Les autorités sanitaires estiment que la moitié de la population de l'île a contracté le virus.",
        "link": "https://www.bbc.com/news/av/world-europe-52282118/coronavirus-life-on-estonia-s-corona-island-saaremaa",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Estonia"
    },
    {
        "title_en": "Gabon begins lockdown",
        "description_en": "Describes Gabon's decision to curb spread of the new coronavirus.",
        "title_es": "Gabón comienza el bloqueo",
        "description_es": "Describe la decisión de Gabón de frenar la propagación del nuevo coronavirus",


        "title_en": "Le Gabon commence le verrouillage",
        "description_en": "Décrit la décision du Gabon de freiner la propagation du nouveau coronavirus.",
        "link": "https://www.africanews.com/2020/04/14/covid-19-gabon-begins-lockdown//",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Gabon"
    },
    {
        "title_en": "Gabon Declares State of Emergency Over Covid-19, Revises Outlook",
        "description_en": "Gabon has declared a state of emergency and adjusted its economic forecasts in light of the coronavirus outbreak.",
        "title_es": "Gabón declara el estado de emergencia sobre Covid-19, revisa Outlook",
        "description_es": "Gabón declaró el estado de emergencia y ajustó sus pronósticos económicos a la luz del brote de coronavirus",


        "title_en": "Le Gabon déclare l'état d'urgence sur Covid-19, révise les perspectives",
        "description_en": "Le Gabon a déclaré l'état d'urgence et ajusté ses prévisions économiques à la lumière de l'épidémie de coronavirus.",
        "link": "https://www.bloomberg.com/news/articles/2020-04-11/gabon-declares-state-of-emergency-over-covid-19-revises-outlook",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Gabon"
    },
    {
        "title_en": "Spain, France take drastic measures to fight coronavirus",
        "description_en": "Spain announced a nationwide lockdown as France moved to close all nonessential businesses",
        "title_es": "España, Francia toman medidas drásticas para combatir el coronavirus",
        "description_es": "España anunció un bloqueo nacional ya que Francia se movió para cerrar todos los negocios no esenciales",


        "title_en": "L'Espagne et la France prennent des mesures drastiques pour lutter contre les coronavirus",
        "description_en": "L'Espagne a annoncé un verrouillage national, la France ayant décidé de fermer toutes les entreprises non essentielles",
        "link": "https://www.washingtonpost.com/world/2020/03/14/coronavirus-latest-news/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Spain, France"
    },
    {
        "title_en": "Coronavirus spreads in Middle East and beyond: Live updates",
        "description_en": "Qatar's ruler Emir Sheikh Tamim bin Hamad al-Thani ordered the evacuation of Qatari and Kuwaiti citizens from Iran",
        "title_es": "El coronavirus se propaga en Medio Oriente y más allá: actualizaciones en vivo",
        "description_es": "El gobernante de Qatar, Emir Sheikh Tamim bin Hamad al-Thani, ordenó la evacuación de los ciudadanos de Qatar y Kuwait de Irán",


        "title_en": "Le coronavirus se propage au Moyen-Orient et au-delà: mises à jour en direct",
        "description_en": "Le souverain du Qatar, l'émir cheikh Tamim bin Hamad al-Thani, a ordonné l'évacuation d'Iran des citoyens qatariens et koweïtiens",
        "link": "https://www.aljazeera.com/news/2020/02/china-coronavirus-outbreak-latest-updates-200226003835539.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Qatar, Kuwait, Iran"
    },
    {
        "title_en": "Borders closing in Gambia leaves village split",
        "description_en": "Under state borders closing, village in Gambia is split down the middle with mobility challenges",
        "title_es": "El cierre de fronteras en Gambia deja la aldea dividida",
        "description_es": "Bajo el cierre de las fronteras estatales, la aldea en Gambia se divide por la mitad con desafíos de movilidad",


        "title_en": "La fermeture des frontières en Gambie laisse le village divisé",
        "description_en": "Sous la fermeture des frontières nationales, le village de Gambie est divisé en deux avec des problèmes de mobilité",
        "link": "https://www.washingtonpost.com/world/africa/borders-are-closing-to-fight-the-coronavirus-now-this-village-is-split-in-two/2020/04/01/d601cd4e-72c1-11ea-ae50-7148009252e3_story.html",
        "progressive": "need to watch",
        "category": "punitive",
        "type": "temporary measure, observed response",
        "country": "Gambia"
    },
    {
        "title_en": "Georgia reports first coronavirus in the country: health minister",
        "description_en": "Georgian citizen, who was travelling from Iran, crossed the border from neighbouring Azerbaijan.",
        "title_es": "Georgia informa primer coronavirus en el país: ministro de salud",
        "description_es": "ciudadano georgiano, que viajaba desde Irán, cruzó la frontera desde el vecino Azerbaiyán",


        "title_en": "La Géorgie signale le premier coronavirus du pays: ministre de la Santé",
        "description_en": "Un citoyen géorgien, qui venait d'Iran, a traversé la frontière avec l'Azerbaïdjan voisin.",
        "link": "https://www.aljazeera.com/news/2020/02/china-coronavirus-outbreak-latest-updates-200226003835539.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Georgia, Azerbaijan, Iran"
    },
    {
        "title_en": "Greece dodged Covid-19. Now it wants tourists",
        "description_en": "Greece avoided the first Covid-19 wave with an early lockdown. Now the prime minister wants to welcome tourists.",
        "title_es": "Grecia esquivó Covid-19. Ahora quiere turistas",
        "description_es": "Grecia evitó la primera ola Covid-19 con un cierre anticipado. Ahora el primer ministro quiere dar la bienvenida a los turistas",


        "title_en": "La Grèce a esquivé Covid-19. Maintenant, elle veut des touristes",
        "description_en": "La Grèce a évité la première vague de Covid-19 avec un verrouillage anticipé. Maintenant, le Premier ministre veut accueillir les touristes.",
        "link": "https://www.cnn.com/videos/world/2020/05/05/greece-coronavirus-nic-robertson.cnn",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Greece"
    },
    {
        "title_en": "Grenada Announces New Entry Requirements Amid Coronavirus",
        "description_en": "Grenada said it would refuse entry into the island to non-nationals visiting list of countries on watch.",
        "title_es": "Granada anuncia nuevos requisitos de ingreso en medio de coronavirus",
        "description_es": "Granada dijo que rechazaría la entrada en la isla a la lista de países que están de guardia que no son nacionales",


        "title_en": "La Grenade annonce de nouvelles conditions d'entrée au milieu des coronavirus",
        "description_en": "La Grenade a déclaré qu'elle refuserait l'entrée dans l'île aux non-ressortissants visitant la liste des pays sous surveillance.",
        "link": "http://jamaica-gleaner.com/article/caribbean/20200319/grenada-announces-new-entry-requirements-amid-coronavirus",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Grenada"
    },
    {
        "title_en": "COVID-19 compounds a long list of problems in Guatemala",
        "description_en": "Aid groups worry that Guatemala will be hit hard by the effects of COVID-19",
        "title_es": "COVID-19 compone una larga lista de problemas en Guatemala",
        "description_es": "Los grupos de ayuda temen que los efectos de COVID-19 afecten fuertemente a Guatemala",


        "title_en": "COVID-19 aggrave une longue liste de problèmes au Guatemala",
        "description_en": "Les groupes humanitaires craignent que le Guatemala ne soit durement touché par les effets du COVID-19",
        "link": "https://www.thenewhumanitarian.org/feature/2020/05/04/coronavirus-Guatemala-violence-drought-poverty",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Guatemala"
    },
    {
        "title_en": "Two Guinean government officials die after getting coronavirus",
        "description_en": "Guinean government officials die from coronavirus and country imposes measures",
        "title_es": "Dos funcionarios del gobierno guineano mueren después de contraer coronavirus",
        "description_es": "Los funcionarios del gobierno guineano mueren por coronavirus y el país impone medidas",


        "title_en": "Deux responsables du gouvernement guinéen meurent après avoir contracté un coronavirus",
        "description_en": "Des responsables du gouvernement guinéen meurent d'un coronavirus et le pays impose des mesures",
        "link": "https://www.bloomberg.com/news/articles/2020-04-19/two-guinean-government-officials-die-after-getting-coronavirus",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Guinea"
    },
    {
        "title_en": "WHO says Madagascar's herbal tonic against COVID-19 not a cure",
        "description_en": "Tanzania, Guinea-Bissau excited about herbal remedy purported to cure coronavirus.",
        "title_es": "La OMS dice que el tónico herbal de Madagascar contra COVID-19 no es una cura",
        "description_es": "Tanzania, Guinea-Bissau, entusiasmada con el remedio a base de hierbas para curar el coronavirus",


        "title_en": "L'OMS dit que le tonique à base de plantes de Madagascar contre COVID-19 n'est pas un remède",
        "description_en": "La Tanzanie et la Guinée-Bissau enthousiasmées par un remède à base de plantes censé guérir le coronavirus.",
        "link": "https://www.aljazeera.com/news/2020/05/madagascars-herbal-tonic-covid-19-cure-200504081212753.html",
        "progressive": "need to watch",
        "category": "healthcare, misinformation",
        "type": "temporary measure, observed response",
        "country": "Guinea-Bissau, Madagascar, Tanzania"
    },
    {
        "title_en": "Guinea-Bissau premier, 3 ministers contract COVID-19",
        "description_en": "Officials immediately quarantined at hotel in capital, says country's top doctor, spurs lockdown",
        "title_es": "primer ministro de Guinea-Bissau, contrato de 3 ministros COVID-19",
        "description_es": "Los funcionarios se pusieron en cuarentena inmediatamente en el hotel en la capital, dice el médico más importante del país, estimula el encierro",


        "title_en": "Premier ministre de la Guinée-Bissau, 3 ministres contractent COVID-19",
        "description_en": "Des fonctionnaires immédiatement mis en quarantaine dans un hôtel de la capitale, selon le meilleur médecin du pays, encouragent le verrouillage",
        "link": "https://www.aa.com.tr/en/africa/guinea-bissau-premier-3-ministers-contract-covid-19/1823380",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Guinea-Bissau"
    },
    {
        "title_en": "Coronavirus crisis exposes another pandemic in Honduras",
        "description_en": "Discussion of how corruption will exacerbate the implications of coronavirus",
        "title_es": "La crisis del coronavirus expone otra pandemia en Honduras",
        "description_es": "Discusión de cómo la corrupción exacerbará las implicaciones del coronavirus",


        "title_en": "La crise des coronavirus révèle une autre pandémie au Honduras",
        "description_en": "Discussion sur la manière dont la corruption aggravera les implications du coronavirus",
        "link": "https://www.aljazeera.com/news/2020/03/coronavirus-crisis-exposes-pandemic-honduras-analysts-200327183808256.html",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "Honduras"
    },
    {
        "title_en": "In already poor Honduras, coronavirus pushes some into homelessness",
        "description_en": "Informal economy workers in Tegucigalpa who can no longer afford the apartments they had previously been renting",
        "title_es": "En Honduras, que ya es pobre, el coronavirus empuja a algunos a quedarse sin hogar",
        "description_es": "Trabajadores de la economía informal en Tegucigalpa que ya no pueden pagar los apartamentos que habían estado alquilando anteriormente",


        "title_en": "Dans un Honduras déjà pauvre, le coronavirus pousse certains sans-abri",
        "description_en": "Les travailleurs de l'économie informelle à Tegucigalpa qui ne peuvent plus se payer les appartements qu'ils louaient auparavant",
        "link": "https://www.reuters.com/article/us-health-coronavirus-honduras-poverty/in-already-poor-honduras-coronavirus-pushes-some-into-homelessness-idUSKCN227006",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "Honduras"
    },
    {
        "title_en": "Honduras extends curfew by one week in fight against coronavirus",
        "description_en": "The government of Honduras on Sunday extended a curfew through April 26",
        "title_es": "Honduras extiende el toque de queda por una semana en la lucha contra el coronavirus",
        "description_es": "El gobierno de Honduras extendió el domingo el toque de queda hasta el 26 de abril",


        "title_en": "Le Honduras prolonge le couvre-feu d'une semaine pour lutter contre le coronavirus",
        "description_en": "Le gouvernement du Honduras a prolongé dimanche le couvre-feu jusqu'au 26 avril",
        "link": "https://www.reuters.com/article/us-health-coronavirus-honduras-curfew/honduras-extends-curfew-by-one-week-in-fight-against-coronavirus-idUSKBN2210SV",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Honduras"
    },
    {
        "title_en": "Poland and Hungary Use Coronavirus to Punish Opposition",
        "description_en": "EU seems helpless, even complicit, as authoritarian-minded governments cite the pandemic to consolidate their power",
        "title_es": "Polonia y Hungría usan el coronavirus para castigar a la oposición",
        "description_es": "La UE parece impotente, incluso cómplice, ya que los gobiernos de mentalidad autoritaria citan la pandemia para consolidar su poder",


        "title_en": "La Pologne et la Hongrie utilisent le coronavirus pour punir l'opposition",
        "description_en": "L'UE semble impuissante, voire complice, alors que des gouvernements autoritaires citent la pandémie pour consolider leur pouvoir",
        "link": "https://www.nytimes.com/2020/04/22/world/europe/poland-hungary-coronavirus.html",
        "progressive": "regressive",
        "category": "punitive, democratic institutions",
        "type": "policy or law",
        "country": "Hungary, Poland"
    },
    {
        "title_en": "Hungary’s 'coronavirus coup,' explained",
        "description_en": "What’s happened in Hungary over the past few weeks is a case study of how the pandemic threatens democracy.",
        "title_es": "'Golpe de coronavirus de Hungría ', explicó",
        "description_es": "Lo que sucedió en Hungría en las últimas semanas es un estudio de caso de cómo la pandemia amenaza la democracia",


        "title_en": "Le coup d'État contre les coronavirus de la Hongrie, a expliqué ",
        "description_en": "Ce qui s'est passé en Hongrie ces dernières semaines est une étude de cas sur la manière dont la pandémie menace la démocratie.",
        "link": "https://www.vox.com/policy-and-politics/2020/4/15/21193960/coronavirus-covid-19-hungary-orban-trump-populism",
        "progressive": "regressive",
        "category": "punitive, democratic institutions",
        "type": "policy or law",
        "country": "Hungary"
    },
    {
        "title_en": "What Iceland Can Teach the World About Minimizing COVID-19",
        "description_en": "Discussion of how early and frequent testing proved instrumental in controlling the virus",
        "title_es": "Lo que Islandia puede enseñarle al mundo sobre minimizar COVID-19",
        "description_es": "Discusión de cómo las pruebas tempranas y frecuentes resultaron fundamentales para controlar el virus",


        "title_en": "Ce que l'Islande peut enseigner au monde sur la réduction des émissions de COVID-19",
        "description_en": "Discussion sur la façon dont les tests précoces et fréquents se sont révélés essentiels pour contrôler le virus",
        "link": "https://www.usnews.com/news/best-countries/articles/2020-05-04/what-iceland-can-teach-the-world-about-minimizing-the-coronavirus",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Iceland"
    },
    {
        "title_en": "Iceland Has Tested 13% of Its Entire Population for Coronavirus",
        "description_en": "Authorities used a rigorous policy of testing and tracking to find and isolate infected people",
        "title_es": "Islandia ha probado el 13% de su población total para detectar coronavirus",
        "description_es": "Las autoridades utilizaron una política rigurosa de pruebas y seguimiento para encontrar y aislar a las personas infectadas",


        "title_en": "L'Islande a testé 13% de l'ensemble de sa population pour le coronavirus",
        "description_en": "Les autorités ont utilisé une politique rigoureuse de test et de suivi pour trouver et isoler les personnes infectées",
        "link": "https://time.com/5831580/iceland-coronavirus-tests/",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Iceland"
    },
    {
        "title_en": "We were behind the eight ball'",
        "description_en": "Papua New Guinea's health minister discusses regional responses to Covid-19",
        "title_es": "Estábamos detrás de la bola ocho",
        "description_es": "El ministro de salud de Papua Nueva Guinea analiza las respuestas regionales a Covid-19",


        "title_en": "Nous étions derrière le huitième ballon ",
        "description_en": "Le ministre de la Santé de Papouasie-Nouvelle-Guinée discute des réponses régionales à Covid-19",
        "link": "https://www.theguardian.com/world/2020/apr/30/papua-new-guinea-png-health-minister-covid-19-coronavirus-ppe",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Papua New Guinea"
    },
    {
        "title_en": "Parents Nervously Return to Work in Italy. Children Are Still at Home.",
        "description_en": "Schools and day care closed and grandparents are at risk as parents return to work",
        "title_es": "Los padres regresan nerviosamente al trabajo en Italia. Los niños todavía están en casa",
        "description_es": "Las escuelas y guarderías están cerradas y los abuelos están en riesgo cuando los padres regresan al trabajo",


        "title_en": "Les parents retournent nerveusement au travail en Italie. Les enfants sont toujours à la maison.",
        "description_en": "Les écoles et les garderies sont fermées et les grands-parents sont menacés lorsque les parents retournent au travail",
        "link": "https://www.nytimes.com/2020/05/06/world/europe/italy-coronavirus-reopening-parents.html",
        "progressive": "need to watch",
        "category": "healthcare, economy, childcare, labor",
        "type": "temporary measure",
        "country": "Italy"
    },
    {
        "title_en": "Can The U.S. Learn From Italy, Where Antibody Test Makers Are Fighting For A New Market?",
        "description_en": "Italy began to tentatively reopen certain businesses and put millions of citizens back to work on May 4.",
        "title_es": "¿Pueden los Estados Unidos aprender de Italia, donde los fabricantes de pruebas de anticuerpos están luchando por un nuevo mercado?",
        "description_es": "Italia comenzó a reabrir tentativamente ciertas empresas y puso a millones de ciudadanos a trabajar nuevamente el 4 de mayo",


        "title_en": "Les États-Unis peuvent-ils apprendre de l'Italie, où les fabricants de tests d'anticorps se battent pour un nouveau marché?",
        "description_en": "L'Italie a commencé à rouvrir provisoirement certaines entreprises et à remettre des millions de citoyens au travail le 4 mai.",
        "link": "https://www.forbes.com/sites/giacomotognini/2020/05/07/can-the-us-learn-from-italy-where-coronavirus-antibody-test-makers-are-fighting-for-a-new-market/#74416e4f4628",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "temporary measure",
        "country": "Italy"
    },
    {
        "title_en": "Women demand voice in Italy's coronavirus response dominated by men",
        "description_en": "Most of Italy’s doctors and nurses are women. Its official coronavirus response is dominated by men.",
        "title_es": "Las mujeres demandan voz en la respuesta del coronavirus de Italia dominada por los hombres",
        "description_es": "La mayoría de los médicos y enfermeras de Italia son mujeres. Su respuesta oficial al coronavirus está dominada por hombres",


        "title_en": "Les femmes exigent une voix dans la réponse du coronavirus en Italie dominée par les hommes",
        "description_en": "La plupart des médecins et infirmières italiens sont des femmes. Sa réponse officielle aux coronavirus est dominée par les hommes.",
        "link": "https://www.latimes.com/world-nation/story/2020-05-07/women-demand-voice-in-italy-virus-response-dominated-by-men",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Italy"
    },
    {
        "title_en": "Schools reopen in some parts of Japan after pandemic shutdown",
        "description_en": "Schools that had closed to prevent the spread of the coronavirus reopened Thursday in some regions of Japan",
        "title_es": "Las escuelas se vuelven a abrir en algunas partes de Japón después del cierre de una pandemia",
        "description_es": "Las escuelas que habían cerrado para evitar la propagación del coronavirus reabrieron el jueves en algunas regiones de Japón",


        "title_en": "Des écoles rouvrent dans certaines régions du Japon après la fermeture d'une pandémie",
        "description_en": "Les écoles qui avaient fermé pour empêcher la propagation du coronavirus ont rouvert jeudi dans certaines régions du Japon",
        "link": "https://english.kyodonews.net/news/2020/05/770242811ab7-schools-reopen-in-some-parts-of-japan-after-pandemic-shutdown.html",
        "progressive": "need to watch",
        "category": "education, economy",
        "type": "temporary measure, observed response",
        "country": "Japan"
    },
    {
        "title_en": "Coronavirus: Ivory Coast protesters target testing centre",
        "description_en": "Protesters in Ivory Coast's commercial capital, Abidjan, have destroyed a coronavirus centre",
        "title_es": "Coronavirus: centro de pruebas del objetivo de manifestantes de Costa de Marfil",
        "description_es": "Los manifestantes en la capital comercial de Costa de Marfil, Abidjan, han destruido un centro de coronavirus",


        "title_en": "Coronavirus: des manifestants ivoiriens ciblent un centre de test",
        "description_en": "Des manifestants à Abidjan, la capitale commerciale de la Côte d'Ivoire, ont détruit un centre de coronavirus",
        "link": "https://www.bbc.com/news/world-africa-52189144",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Ivory Coast"
    },
    {
        "title_en": "Coronavirus crisis changing Japan's work culture",
        "description_en": "The coronavirus pandemic is changing many aspects of the ways in which Japan works",
        "title_es": "La crisis del coronavirus está cambiando la cultura laboral de Japón",
        "description_es": "La pandemia de coronavirus está cambiando muchos aspectos de las formas en que funciona Japón",


        "title_en": "La crise des coronavirus change la culture du travail au Japon",
        "description_en": "La pandémie de coronavirus modifie de nombreux aspects du fonctionnement du Japon",
        "link": "https://www.dw.com/en/coronavirus-crisis-changing-japans-work-culture/a-53350759",
        "progressive": "need to watch",
        "category": "economy, labor",
        "type": "observed response",
        "country": "Japan"
    },
    {
        "title_en": "Claims of a Coronavirus-Free Laos Are Probably Fiction",
        "description_en": "The Laos government has yet to confirm a case of the virus, but likely untrue",
        "title_es": "Las afirmaciones de un Laos libre de coronavirus son probablemente ficción",
        "description_es": "El gobierno de Laos aún no ha confirmado un caso del virus, pero probablemente sea falso",


        "title_en": "Les revendications d'un Laos sans coronavirus sont probablement fictives",
        "description_en": "Le gouvernement du Laos n'a pas encore confirmé un cas de virus, mais probablement faux"
        "link": "https://foreignpolicy.com/2020/03/20/laos-coronavirus-free-claims-probably-fiction/",
        "progressive": "need to watch",
        "category": "misinformation",
        "type": "temporary measure, observed response",
        "country": "Laos"
    },
    {
        "title_en": "Latvian government promises to decide on gradual exit from COVID-19 state of emergency",
        "description_en": "Latvian government discusses potential responses and extension to state of emergency",
        "title_es": "El gobierno letón promete decidir sobre la salida gradual del estado de emergencia COVID-19",
        "description_es": "El gobierno letón analiza posibles respuestas y la extensión al estado de emergencia",


        "title_en": "Le gouvernement letton promet de décider de la sortie progressive de l'état d'urgence COVID-19",
        "description_en": "Le gouvernement letton examine les réponses potentielles et l'extension à l'état d'urgence",
        "link": "https://bnn-news.com/latvian-government-promises-to-decide-on-gradual-exit-from-covid-19-state-of-emergency-213010",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Latvia"
    },
    {
        "title_en": "Liechtenstein to provide citizens with biometric bracelets to contain coronavirus",
        "description_en": "Liechtenstein has introduced a tech program to provide biometric bracelets for its citizens to monitor COVID-19",
        "title_es": "Liechtenstein proporcionará a los ciudadanos pulseras biométricas para contener coronavirus",
        "description_es": "Liechtenstein ha introducido un programa tecnológico para proporcionar pulseras biométricas para que sus ciudadanos supervisen COVID-19",


        "title_en": "Le Liechtenstein fournira aux citoyens des bracelets biométriques pour contenir le coronavirus",
        "description_en": "Le Liechtenstein a introduit un programme technologique pour fournir des bracelets biométriques à ses citoyens afin de surveiller COVID-19",
        "link": "https://www.biometricupdate.com/202004/liechtenstein-to-provide-citizens-with-biometric-bracelets-to-contain-coronavirus",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Liechtenstein"
    },
    {
        "title_en": "South Asia coronavirus cases hit 22,000 as Maldives locks down capital",
        "description_en": "Maldives instates quarantine in capital city",
        "title_es": "Los casos de coronavirus en el sur de Asia alcanzaron los 22,000 mientras Maldivas bloquea el capital",
        "description_es": "Maldivas instala cuarentena en la ciudad capital",


        "title_en": "Les cas de coronavirus en Asie du Sud ont atteint 22 000 alors que les Maldives verrouillent leur capitale",
        "description_en": "Les Maldives instaurent la quarantaine dans la capitale",
        "link": "https://www.reuters.com/article/us-health-coronavirus-southasia/south-asia-coronavirus-cases-hit-22000-as-maldives-locks-down-capital-idUSKBN21Z1VA",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Maldives"
    },
    {
        "title_en": "Lithuania to ease coronavirus lockdown measures this week",
        "description_en": "Shops, open-air restaurants and many other services will be allowed to reopen in Lithuania in an easing of restrictions",
        "title_es": "Lituania para aliviar las medidas de bloqueo de coronavirus esta semana",
        "description_es": "Se permitirá la reapertura de tiendas, restaurantes al aire libre y muchos otros servicios en Lituania para aliviar las restricciones",


        "title_en": "La Lituanie va alléger les mesures de verrouillage des coronavirus cette semaine",
        "description_en": "Les magasins, les restaurants en plein air et de nombreux autres services seront autorisés à rouvrir en Lituanie en allégeant les restrictions",
        "link": "https://www.reuters.com/article/health-coronavirus-lithuania/lithuania-to-ease-coronavirus-lockdown-measures-this-week-idUSL5N2CA4DP",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Lithuania"
    },
    {
        "title_en": "Malta takes in migrants hours after announcing coronavirus ban",
        "description_en": "Maltese government said it could not guarantee further rescues as its resources have been strained by the pandemic.",
        "title_es": "Malta recibe a los inmigrantes horas después de anunciar la prohibición del coronavirus",
        "description_es": "El gobierno maltés dijo que no podía garantizar más rescates ya que sus recursos se vieron afectados por la pandemia",


        "title_en": "Malte accueille des migrants quelques heures après l'annonce de l'interdiction des coronavirus",
        "description_en": "Le gouvernement maltais a déclaré qu'il ne pouvait garantir de nouveaux sauvetages car ses ressources ont été mises à rude épreuve par la pandémie.",
        "link": "https://www.aljazeera.com/news/2020/04/malta-takes-migrants-hours-announcing-coronavirus-ban-200410160333984.html",
        "progressive": "need to watch",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Malta"
    },
    {
        "title_en": "Mauritius heads into coronavirus storm with strong social welfare buffers",
        "description_en": "Solid social protection system provides a strong foundation which government can use to expand support",
        "title_es": "Mauricio se dirige a la tormenta de coronavirus con fuertes amortiguadores de bienestar social",
        "description_es": "El sólido sistema de protección social proporciona una base sólida que el gobierno puede usar para ampliar el apoyo",


        "title_en": "Maurice entre dans une tempête de coronavirus avec de solides tampons de protection sociale",
        "description_en": "Un système de protection sociale solide fournit une base solide que le gouvernement peut utiliser pour étendre le soutien",
        "link": "https://theconversation.com/mauritius-heads-into-coronavirus-storm-with-strong-social-welfare-buffers-135702",
        "progressive": "progressive",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Mauritius"
    },
    {
        "title_en": "Moldova Struggles to Secure Church Respect for Coronavirus Restrictions",
        "description_en": "Moldova’s political leaders are treading a fine line when it comes to securing church adherence to restrictions",
        "title_es": "Moldavia lucha para asegurar el respeto de la Iglesia por las restricciones del coronavirus",
        "description_es": "Los líderes políticos de Moldavia están pisando una línea muy fina cuando se trata de asegurar la adhesión de la iglesia a las restricciones",


        "title_en": "La Moldavie se bat pour garantir le respect par l'Église des restrictions concernant les coronavirus",
        "description_en": "Les dirigeants politiques moldaves sont sur la bonne voie lorsqu'il s'agit de garantir le respect des restrictions par l'église",
        "link": "https://balkaninsight.com/2020/04/20/moldova-struggles-to-secure-church-respect-for-coronavirus-restrictions/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Moldova"
    },
    {
        "title_en": "Mongolia’s Small-Country Strategy for Containing COVID-19",
        "description_en": "Mongolia’s small population might be an asset in fighting the new pandemic",
        "title_es": "Estrategia de país pequeño de Mongolia para contener COVID-19",
        "description_es": "La pequeña población de Mongolia podría ser una ventaja en la lucha contra la nueva pandemia",


        "title_en": "Stratégie des petits pays de la Mongolie pour contenir le COVID-19",
        "description_en": "La petite population de la Mongolie pourrait être un atout pour lutter contre la nouvelle pandémie",
        "link": "https://thediplomat.com/2020/03/mongolias-small-country-strategy-for-containing-covid-19/",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Mongolia"
    },
    {
        "title_en": "Montenegro introduces lockdown to fight coronavirus",
        "description_en": "Montenegro introduced a lockdown on Monday to curb the spread of the coronavirus",
        "title_es": "Montenegro introduce el bloqueo para combatir el coronavirus",
        "description_es": "Montenegro introdujo un bloqueo el lunes para frenar la propagación del coronavirus",


        "title_en": "Le Monténégro introduit un verrouillage pour lutter contre les coronavirus",
        "description_en": "Le Monténégro a introduit lundi un verrouillage pour freiner la propagation du coronavirus",
        "link": "https://www.reuters.com/article/health-coronavirus-montenegro/montenegro-introduces-lockdown-to-fight-coronavirus-idUSL8N2BN88Z",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Montenegro"
    },
    {
        "title_en": "Namibia announces travel ban, partial lockdown after seventh coronavirus case",
        "description_en": "Travel into Namibia from all countries is banned with immediate effect for a period of 30 days",
        "title_es": "Namibia anuncia prohibición de viajar, cierre parcial después del séptimo caso de coronavirus",
        "description_es": "Está prohibido viajar a Namibia desde todos los países con efecto inmediato por un período de 30 días",


        "title_en": "La Namibie annonce une interdiction de voyager et un verrouillage partiel après le septième cas de coronavirus",
        "description_en": "Les voyages en Namibie de tous les pays sont interdits avec effet immédiat pour une période de 30 jours",
        "link": "https://www.reuters.com/article/us-health-coronavirus-namibia/namibia-announces-travel-ban-partial-lockdown-after-seventh-coronavirus-case-idUSKBN21B30R",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Namibia"
    },
    {
        "title_en": "Amid COVID-Related Cyber Threats, the Netherlands Leads UN Efforts",
        "description_en": "UN should play a leading role in further developing a global framework to ensure responsible behavior in cyberspace",
        "title_es": "En medio de las amenazas cibernéticas relacionadas con COVID, los Países Bajos lideran los esfuerzos de la ONU",
        "description_es": "La ONU debe desempeñar un papel de liderazgo en el desarrollo de un marco global para garantizar un comportamiento responsable en el ciberespacio",


        "title_en": "Au milieu des cybermenaces liées aux COVID, les Pays-Bas mènent les efforts des Nations Unies",
        "description_en": "L'ONU devrait jouer un rôle de premier plan dans la poursuite du développement d'un cadre mondial pour garantir un comportement responsable dans le cyberespace",
        "link": "https://www.cfr.org/blog/amid-covid-related-cyber-threats-netherlands-leads-un-efforts",
        "progressive": "need to watch",
        "category": "digital surveillance",
        "type": "temporary measure",
        "country": "Netherlands"
    },
    {
        "title_en": "Sweden has nearly 10 times the number of deaths than its Nordic neighbors",
        "description_en": "Sweden's cases have yet to plateau, while Norway's case count appears to be on a downslide",
        "title_es": "Suecia tiene casi 10 veces más muertes que sus vecinos nórdicos",
        "description_es": "Los casos de Suecia aún no se han estabilizado, mientras que el recuento de casos de Noruega parece estar a la baja",


        "title_en": "La Suède compte près de 10 fois plus de morts que ses voisins nordiques",
        "description_en": "Les cas de la Suède n'ont pas encore atteint un plateau, tandis que le nombre de cas en Norvège semble être en baisse",
        "link": "https://www.businessinsider.com/how-sweden-and-norway-handled-coronavirus-differently-2020-4",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Norway, Sweden"
    },
    {
        "title_en": "Coronavirus: Oman faces tough choices as crisis hits finances",
        "description_en": "Muscat is in a delicate phase of its economic diversification efforts, as oil reserves decline while debts increase",
        "title_es": "Coronavirus: Omán enfrenta decisiones difíciles cuando la crisis golpea las finanzas",
        "description_es": "Muscat se encuentra en una fase delicada de sus esfuerzos de diversificación económica, ya que las reservas de petróleo disminuyen mientras las deudas aumentan",


        "title_en": "Coronavirus: Oman fait face à des choix difficiles alors que la crise frappe les finances",
        "description_en": "Muscat est dans une phase délicate de ses efforts de diversification économique, alors que les réserves de pétrole diminuent tandis que les dettes augmentent",
        "link": "https://www.middleeasteye.net/opinion/coronavirus-will-oman-seek-financial-relief-gcc-neighbours",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Oman"
    },
    {
        "title_en": "Poland postpones presidential vote amid coronavirus lockdown",
        "description_en": "President Duda ahead in polls originally set on Sunday but pandemic left uncertainty about voting and his future.",
        "title_es": "Polonia pospone el voto presidencial en medio del bloqueo del coronavirus",
        "description_es": "El presidente Duda se adelantó en las encuestas originalmente programadas para el domingo pero la pandemia dejó incertidumbre sobre la votación y su futuro",


        "title_en": "La Pologne reporte le vote présidentiel en raison de la fermeture du coronavirus",
        "description_en": "Le président Duda en tête dans les sondages initialement prévus dimanche mais la pandémie a laissé des incertitudes sur le vote et son avenir.",
        "link": "https://www.aljazeera.com/news/2020/05/poland-postpones-presidential-vote-coronavirus-lockdown-200507011915451.html",
        "progressive": "need to watch",
        "category": "democratic institutions",
        "type": "temporary measure",
        "country": "Poland"
    },
    {
        "title_en": "A Migrant Model To Follow: Portugal’s Response to the Coronavirus",
        "description_en": "Migrants and asylum-seekers in the country provided the same full access to public services that permanent residents receive",
        "title_es": "Un modelo de migrante a seguir: la respuesta de Portugal al coronavirus",
        "description_es": "Los migrantes y solicitantes de asilo en el país proporcionaron el mismo acceso total a los servicios públicos que reciben los residentes permanentes",


        "title_en": "Un modèle de migrant à suivre: la réponse du Portugal au coronavirus",
        "description_en": "Les migrants et les demandeurs d'asile du pays ont eu le même accès complet aux services publics que les résidents permanents",
        "link": "https://www.americanprogress.org/issues/security/news/2020/04/10/482998/migrant-model-follow-portugals-response-coronavirus/",
        "progressive": "progressive",
        "category": "economy, childcare, labor",
        "type": "temporary measure",
        "country": "Portugal"
    },
    {
        "title_en": "Over 10,000 confirmed COVID-19 cases in Africa",
        "description_en": "Within Africa, Zimbabwe and South Sudan among most vulnerable",
        "title_es": "Más de 10,000 casos confirmados de COVID-19 en África",
        "description_es": "Dentro de África, Zimbabwe y Sudán del Sur entre los más vulnerables",


        "title_en": "Plus de 10 000 cas confirmés de COVID-19 en Afrique",
        "description_en": "En Afrique, au Zimbabwe et au Soudan du Sud parmi les plus vulnérables",
        "link": "https://news.un.org/en/story/2020/04/1061352",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "South Sudan, Zimbabwe"
    },
    {
        "title_en": "UNHCR warns of looming humanitarian crisis in South Sudan",
        "description_en": "Amidst ongoing fighting and coronavirus threat, South Sudan faces humanitarian challenges",
        "title_es": "ACNUR advierte sobre la inminente crisis humanitaria en Sudán del Sur",
        "description_es": "En medio de continuos combates y amenazas de coronavirus, Sudán del Sur enfrenta desafíos humanitarios",


        "title_en": "Le HCR met en garde contre une crise humanitaire imminente au Soudan du Sud",
        "description_en": "Au milieu des combats en cours et de la menace des coronavirus, le Soudan du Sud fait face à des défis humanitaires",
        "link": "https://www.unhcr.org/news/press/2020/4/5eaa991c4/unhcr-warns-looming-humanitarian-crisis-south-sudan-amidst-ongoing-fighting.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "South Sudan"
    },
    {
        "title_en": "Coronavirus: Romania hands out steep lockdown fines",
        "description_en": "Romania has issued 200,000 fines in under a month to people who failed to comply with restrictions",
        "title_es": "Coronavirus: Rumanía reparte fuertes multas de encierro",
        "description_es": "Rumania ha emitido 200,000 multas en menos de un mes a las personas que no cumplieron con las restricciones",


        "title_en": "Coronavirus: la Roumanie inflige de lourdes amendes pour verrouillage",
        "description_en": "La Roumanie a infligé 200 000 amendes en moins d'un mois à des personnes qui n'ont pas respecté les restrictions",
        "link": "https://www.bbc.com/news/world-europe-52370421",
        "progressive": "need to watch",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Romania"
    },
    {
        "title_en": "St Kitts and Nevis Extending State of Emergency",
        "description_en": "Government has extended the State of Emergency and its COVID-19 regulations, which include a 24-hour curfew, through April 25.",
        "title_es": "St Kitts y Nevis extiende el estado de emergencia",
        "description_es": "El gobierno ha extendido el estado de emergencia y sus reglamentos COVID-19, que incluyen un toque de queda de 24 horas, hasta el 25 de abril",


        "title_en": "Saint-Kitts-et-Nevis prorogeant l'état d'urgence",
        "description_en": "Le gouvernement a prolongé l'état d'urgence et ses réglementations COVID-19, qui incluent un couvre-feu de 24 heures, jusqu'au 25 avril.",
        "link": "https://www.caribjournal.com/2020/04/16/st-kitts-nevis-emergency-coronavirus/",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Saint Kitts and Nevis"
    },
    {
        "title_en": "All of St Lucia's COVID-19 patients have now recovered",
        "description_en": "Chief Medical Officer announced that all of the island's COVID-19 patients have now recovered.",
        "title_es": "Todos los pacientes con COVID-19 de Santa Lucía ya se han recuperado",
        "description_es": "El Director Médico anunció que todos los pacientes con COVID-19 de la isla ya se han recuperado",


        "title_en": "Tous les patients atteints de COVID-19 à Sainte-Lucie sont maintenant rétablis",
        "description_en": "Le médecin-chef a annoncé que tous les patients COVID-19 de l'île étaient maintenant rétablis.",
        "link": "https://www.loopjamaica.com/content/all-st-lucias-covid-19-patients-have-now-recovered-1",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Saint Lucia, Saint Vincent and the Grenadines"
    },
    {
        "title_en": "Can San Marino's 'aggressive' COVID-19 testing strategy save Europe?",
        "description_en": "Describes San Marino's extensive testing strategy and implementation",
        "title_es": "¿Puede la estrategia de prueba COVID-19 'agresiva' de San Marino salvar a Europa?",
        "description_es": "Describe la amplia estrategia e implementación de pruebas de San Marino",


        "title_en": "La stratégie de test COVID-19 'agressive' de Saint-Marin peut-elle sauver l'Europe?",
        "description_en": "Décrit la stratégie de test et la mise en œuvre étendues de Saint-Marin",
        "link": "https://www.euronews.com/2020/04/25/can-san-marino-s-aggressive-covid-19-testing-strategy-save-europe",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "San Marino"
    },
    {
        "title_en": "Serbia to end state of emergency as coronavirus infections slow",
        "description_en": "Serbia will end its state of emergency over the coronavirus next week, as the rate of infections has slowed sufficiently",
        "title_es": "Serbia pondrá fin al estado de emergencia ya que las infecciones por coronavirus disminuyen",
        "description_es": "Serbia terminará su estado de emergencia por el coronavirus la próxima semana, ya que la tasa de infecciones ha disminuido lo suficiente",


        "title_en": "La Serbie mettra fin à l'état d'urgence alors que les infections à coronavirus ralentissent",
        "description_en": "La Serbie mettra fin à son état d'urgence concernant le coronavirus la semaine prochaine, car le taux d'infections a suffisamment ralenti",
        "link": "https://www.reuters.com/article/us-health-coronavirus-serbia/serbia-to-end-state-of-emergency-as-coronavirus-infections-slow-idUSKBN22F0UT",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Serbia"
    },
    {
        "title_en": "Seychelles expresses gratitude to India for medical supplies in view of COVID-19 crisis",
        "description_en": "India sent first consignment of 4 tons of essential lifesaving medicine to Seychelles",
        "title_es": "Seychelles expresa su agradecimiento a la India por los suministros médicos en vista de la crisis de COVID-19",
        "description_es": "India envió el primer envío de 4 toneladas de medicamentos esenciales para salvar vidas a Seychelles",


        "title_en": "Les Seychelles expriment leur gratitude à l'Inde pour les fournitures médicales en raison de la crise du COVID-19",
        "description_en": "L'Inde a envoyé le premier lot de 4 tonnes de médicaments essentiels aux Seychelles",
        "link": "https://www.africanews.com/2020/04/15/coronavirus-seychelles-expresses-gratitude-to-india-for-medical-supplies-in-view-of-covid-19-crisis//",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Seychelles, India"
    },
    {
        "title_en": "How Slovakia Flattened the Curve",
        "description_en": "Without an intelligent quarantine in place, public trust and the media have been crucial to the country’s success",
        "title_es": "Cómo Eslovaquia aplastó la curva",
        "description_es": "Sin una cuarentena inteligente, la confianza pública y los medios de comunicación han sido cruciales para el éxito del país",


        "title_en": "Comment la Slovaquie aplatit la courbe",
        "description_en": "Sans une quarantaine intelligente en place, la confiance du public et des médias a été cruciale pour le succès du pays",
        "link": "https://foreignpolicy.com/2020/05/06/slovakia-coronavirus-pandemic-public-trust-media/",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Slovakia"
    },
    {
        "title_en": "Vietnam, Slovenia, and 3 other overlooked coronavirus success stories",
        "description_en": "They all followed a similar playbook that thus far has helped curb a larger coronavirus outbreak",
        "title_es": "Vietnam, Eslovenia y otras 3 historias de éxito de coronavirus pasadas por alto",
        "description_es": "Todos siguieron un libro de jugadas similar que hasta ahora ha ayudado a frenar un brote de coronavirus más grande",


        "title_en": "Vietnam, Slovénie et 3 autres réussites de coronavirus négligées",
        "description_en": "Ils ont tous suivi un livre de jeu similaire qui, jusqu'à présent, a contribué à freiner une plus grande épidémie de coronavirus",
        "link": "https://www.vox.com/2020/5/5/2124labor37/coronavirus-vietnam-slovenia-jordan-iceland-greece",
        "progressive": "progressive",
        "category": "healthcare, economy",
        "type": "policy or law, temporary measure, observed response",
        "country": "Slovenia, Vietnam, Jordan, Iceland"
    },
    {
        "title_en": "Kenya and Somalia to Jointly Investigate Cargo Plane Crash",
        "description_en": "Kenyan-registered private plane was carrying humanitarian supplies to use in the fight against the coronavirus",
        "title_es": "Kenia y Somalia investigarán conjuntamente el accidente de un avión de carga",
        "description_es": "el avión privado registrado en Kenia transportaba suministros humanitarios para su uso en la lucha contra el coronavirus",


        "title_en": "Le Kenya et la Somalie enquêtent conjointement sur l'écrasement d'un avion-cargo",
        "description_en": "Un avion privé immatriculé au Kenya transportait des fournitures humanitaires à utiliser dans la lutte contre le coronavirus",
        "link": "https://www.nytimes.com/2020/05/06/world/africa/somalia-kenya-coronavirus-aid-plane-crash.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Somalia, Kenya"
    },
    {
        "title_en": "Sri Lanka Uses Pandemic to Curtail Free Expression",
        "description_en": "Police Ordered to Arrest Critics in Military-Led COVID-19 Response",
        "title_es": "Sri Lanka utiliza la pandemia para reducir la expresión libre",
        "description_es": "La policía ordenó arrestar a los críticos en la respuesta COVID-19 dirigida por militares",


        "title_en": "Le Sri Lanka utilise une pandémie pour restreindre la liberté d'expression",
        "description_en": "La police a été ordonnée d'arrêter des détracteurs de la réponse du COVID-19 dirigée par des militaires",
        "link": "https://www.hrw.org/news/2020/04/03/sri-lanka-uses-pandemic-curtail-free-expression#",
        "progressive": "need to watch",
        "category": "punitive, digital surveillance",
        "type": "policy or law, temporary measure, observed response",
        "country": "Sri Lanka"
    },
    {
        "title_en": "Economic Crisis Prompts a Showdown, and a Shutdown, in Suriname",
        "description_en": "Interlinkages between he coronavirus pandemic, the business sector and increasingly authoritarian measures",
        "title_es": "La crisis económica provoca un enfrentamiento y un cierre en Surinam",
        "description_es": "Interrelaciones entre la pandemia de coronavirus, el sector empresarial y medidas cada vez más autoritarias",


        "title_en": "La crise économique invite à une confrontation et à un arrêt, au Suriname",
        "description_en": "Liens entre la pandémie de coronavirus, le secteur des entreprises et des mesures de plus en plus autoritaires",
        "link": "https://www.nytimes.com/2020/03/25/world/americas/suriname-economic-crisis.html",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "policy or law, temporary measure, observed response",
        "country": "Suriname"
    },
    {
        "title_en": "Government of Tiny eSwatini Refutes Reports of King’s Illness",
        "description_en": "The government of eSwatini is refuting media reports that the nation’s King Mswati II",
        "title_es": "El gobierno de Tiny eSwatini refuta los informes de la enfermedad del rey",
        "description_es": "El gobierno de eSwatini está refutando los informes de los medios de que el Rey Mswati II de la nación",


        "title_en": "Le gouvernement de Tiny eSwatini réfute les informations faisant état de la maladie du roi",
        "description_en": "Le gouvernement d'eSwatini réfute les informations des médias selon lesquelles le roi de la nation Mswati II",
        "link": "https://www.voanews.com/science-health/coronavirus-outbreak/government-tiny-eswatini-refutes-reports-kings-illness",
        "progressive": "need to watch",
        "category": "democratic institutions",
        "type": "policy or law",
        "country": "Eswatini"
    },
    {
        "title_en": "Trinidad and Tobago: Travel restrictions continue",
        "description_en": "Local containment and travel restrictions due to ongoing global coronavirus (COVID-19) pandemic remain in effect",
        "title_es": "Trinidad y Tobago: continúan las restricciones de viaje",
        "description_es": "La contención local y las restricciones de viaje debido a la actual pandemia mundial de coronavirus (COVID-19) siguen vigentes",


        "title_en": "Trinité-et-Tobago: les restrictions de voyage se poursuivent",
        "description_en": "Les restrictions locales de confinement et de déplacement en raison de la pandémie mondiale actuelle de coronavirus (COVID-19) restent en vigueur",
        "link": "https://www.garda.com/crisis24/news-alerts/329131/trinidad-and-tobago-travel-restrictions-continue-amid-covid-19-pandemic-april-3-update-2",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Trinidad and Tobago"
    },
    {
        "title_en": "Coronavirus in Africa: Whipping, shooting and snooping",
        "description_en": "Security officers in several African countries have been beating, harassing and, in some cases, killing people as they enforce measures",
        "title_es": "Coronavirus en África: azotes, disparos y espías",
        "description_es": "Los agentes de seguridad en varios países africanos han estado golpeando, hostigando y, en algunos casos, matando a personas mientras aplican medidas",


        "title_en": "Coronavirus en Afrique: fouetter, tirer et espionner",
        "description_en": "Les agents de sécurité de plusieurs pays africains ont battu, harcelé et, dans certains cas, tué des gens alors qu'ils appliquaient des mesures",
        "link": "https://www.bbc.com/news/world-africa-52214740",
        "progressive": "regressive",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Uganda, Kenya, Ghana, Malawi"
    },
    {
        "title_en": "Uganda Is Using Coronavirus Rules To Raid An LGBTQ Shelter And Jail Residents",
        "description_en": "The LGBTQ shelter had more than 10 residents, so the group was charged with facilitating the spread of an infectious disease.",
        "title_es": "Uganda está utilizando las reglas del coronavirus para atacar a un refugio LGBTQ y a los residentes de la cárcel",
        "description_es": "El refugio LGBTQ tenía más de 10 residentes, por lo que el grupo fue acusado de facilitar la propagación de una enfermedad infecciosa",


        "title_en": "L'Ouganda utilise les règles du coronavirus pour attaquer un refuge LGBTQ et des résidents de prison",
        "description_en": "Le refuge LGBTQ comptait plus de 10 résidents, le groupe a donc été accusé d'avoir facilité la propagation d'une maladie infectieuse.",
        "link": "https://www.buzzfeednews.com/article/lesterfeder/uganda-jails-lgbtq-people-coronavirus",
        "progressive": "regressive",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Uganda"
    },
    {
        "title_en": "#StayInYourTent: COVID-19 protective measures reach Sahara Desert",
        "description_en": "Sahrawi refugee camps, located a few kilometers from Tindouf, southern Algeria, battle COVID-19",
        "title_es": "#StayInYourTent: las medidas de protección de COVID-19 llegan al desierto del Sahara",
        "description_es": "Campamentos de refugiados saharauis, ubicados a pocos kilómetros de Tinduf, sur de Argelia, batalla COVID-19",


        "title_en": "#StayInYourTent: les mesures de protection COVID-19 atteignent le désert du Sahara",
        "description_en": "Camps de réfugiés sahraouis, situés à quelques kilomètres de Tindouf, sud de l'Algérie, bataille COVID-19",
        "link": "https://www.euronews.com/2020/04/10/stayinyourtent-covid-19-protective-measures-reach-sahara-desert",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Western Sahara, Algeria"
    },
    {
        "title_en": "Wife of jailed Sahrawi activist calls on Morocco to free political prisoners",
        "description_en": "Amid dangerously overcrowded prisons, Ghali Bani fears it will only be a matter of time before virus reaches her husband",
        "title_es": "La esposa del activista saharaui encarcelado llama a Marruecos a liberar a los presos políticos",
        "description_es": "En medio de prisiones peligrosamente abarrotadas, Ghali Bani teme que solo sea cuestión de tiempo antes de que el virus llegue a su marido",


        "title_en": "L'épouse d'un militant sahraoui emprisonné appelle le Maroc à libérer les prisonniers politiques",
        "description_en": "Au milieu de prisons dangereusement surpeuplées, Ghali Bani craint que ce ne soit qu'une question de temps avant que le virus n'atteigne son mari",
        "link": "https://www.middleeasteye.net/news/coronavirus-morocco-western-sahara-wife-sahrawi-activist-call-free-prisoners",
        "progressive": "need to watch",
        "category": "punitive, healthcare",
        "type": "observed response",
        "country": "Western Sahara"
    },
    {
        "title_en": "'The virus is now in Yemen,' and there's little left in the war-torn country to stop it.",
        "description_en": "Overview of how coronavirus and government response will be impacted by ongoing violence",
        "title_es": "'El virus ahora está en Yemen,' y queda poco en el país devastado por la guerra para detenerlo",
        "description_es": "Descripción general de cómo el coronavirus y la respuesta del gobierno se verán afectados por la violencia en curso",


        "title_en": "'Le virus est maintenant au Yémen', et il ne reste plus grand chose dans le pays déchiré par la guerre pour l'arrêter.",
        "description_en": "Vue d'ensemble de la façon dont le coronavirus et la réponse du gouvernement seront affectés par la violence en cours",
        "link": "https://www.cbsnews.com/news/yemen-war-coronavirus-little-left-to-stop-spread-of-covid-19-2020-05-04/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Yemen"
    }
  ]

  response_data.each{|it|
    puts "\n\n\n✨ ✨ ✨ ✨ this is the title: #{it[:title_en]}✨ ✨ ✨ "
    puts "🔺entering the progressive choice"
    if it[:progressive] == "progressive"
        prog = Progressive.all[0].id
    elsif it[:progressive] == "regressive"
        prog = Progressive.all[1].id
    else
        prog = Progressive.all[2].id
    end

    puts "🔺about to create item"
    item = Item.create!(
        title_en: it[:title_en], 
        description_en: it[:description_en], 
        title_es: it[:title_es],
        title_fr: it[:title_fr],
        description_es: it[:description_es],
        description_fr: it[:description_fr],
        link: it[:link], 
        date: nil, 
        progressive_id: prog, 
        page_id: Page.all[0].id
    )

    puts "🔺🔺🔺item created: #{item.id}: #{item.title_en}\n\n"
    puts "🔺about to create type item"
    if it[:type] != ""
        if it[:type].include?(",") 
            # binding.pry
            it[:type].split(', ').each{|t| TypeItem.create!(type_id: Type.find_by(name: t).id, item_id: item.id )
            puts "- createdTypeItem for #{t}!"}
        else
            TypeItem.create!(type_id: Type.find_by(name: it[:type]).id, item_id: item.id )
        end
    end

    puts "🔺about to create category item"
    # binding.pry
    if it[:category] != ""
        if it[:category].include?(",") 
            it[:category].split(', ').each{|t| CategoryItem.create!(category_id: Category.find_by(name: t).id, item_id: item.id )
            puts "- created CategoryItem for #{t}!"}
        else
            CategoryItem.create!(category_id: Category.find_by(name: it[:category]).id, item_id: item.id )
        end
    end

    puts "🔺about to create country item"
    # if it[:title] == "Pharmacy brings forward $3 million USD for maternal health"
    #     binding.pry
    # end
    if it[:country] != ""
        if it[:country].include?(",") 
            it[:country].split(', ').map{|t| CountryItem.create!(country_id: Country.find_by(name: t).id, item_id: item.id )
            puts "- created CountryItem for #{t}!"}
        else
            CountryItem.create!(country_id: Country.find_by(name: it[:country]).id, item_id: item.id )
        end
    end

    puts "/n/n/n/n ✅ ✅ ✅ ✅   #{item.title_en} is alive ✅ ✅ ✅ ✅ "

}

online_data = [
#     {
#         "title_en": "Webinar: Organizing Virtual Meetings Episode 1: planning & content",
#         "description_en": "Webinar on accessibility & planning content for virtual meetings in the time of COVID-19.",
        
# "title_fr": "Webinaire: Organisation de réunions virtuelles, épisode 1: planification et contenu",
# "description_fr": "Webinaire sur l'accessibilité et la planification du contenu des réunions virtuelles à l'époque de COVID-19.",
#         "titleses": "Seminario web: Organización de reuniones virtuales Episodio 1: planificación y contenido",
#         "descriptionses": "Seminario web sobre accesibilidad y contenido de planificación para reuniones virtuales en la época de COVID-19",


#         "link": "https://www.youtube.com/watch?v=beiWoi3I7_E&t=190s",
#         "country": "Global",
#         "month": "3",
#         "year": "2020",
#         "category": "disability"
#     },
#     {
#         "title_en": "Webinar: Organizing Virtual Meetings Episode 2:",
#         "description_en": "Webinar on nuts & bolts of Zoom for virtual meetings in the time of COVID-19.",
        
# "title_fr": "Webinaire: Organisation de réunions virtuelles, épisode 2:",
# "description_fr": "Webinaire sur les écrous et boulons de Zoom pour les réunions virtuelles à l'époque de COVID-19.",
#         "titleses": "Seminario web: Organización de reuniones virtuales Episodio 2:",
#         "descriptionses": "Seminario web sobre detalles básicos de Zoom para reuniones virtuales en la época de COVID-19",


#         "link": "https://www.youtube.com/watch?v=Jidn0_1oQyE&t=4s",
#         "country": "Global",
#         "month": "3",
#         "year": "2020",
#         "category": "misinformation"
#     },
#     {
#         "title_en": "Webinar: Caring for Our Communities: COVID-19 and our Health,\nConnections to Climate Preparedness, and Systemic Change",
#         "description_en": "Frontline women practitioners and advocates share best practices for caring for ourselves and communities, and provide political and cultural analysis to the COVID-19 pandemic. Presenters discuss vulnerabilities in our diverse communities, and how we can work to support each other in the coming months. Speakers include Rupa Marya, MD, Associate Professor of Medicine at UCSF; Linda Black Elk (Catawba Nation), Director of Food Sovereignty Programs at United Tribes Technical College; Jacqui Patterson, Director of the NAACP Environmental and Climate Justice Program; in conversation with Osprey Orielle Lake, Executive Director of WECAN International.",
        
# "title_fr": "Webinaire: Prendre soin de nos communautés: COVID-19 et notre santé, \ nConnexions à la préparation au changement climatique et au changement systémique",
# "description_fr": "Les pratiquantes et les militantes de première ligne partagent les meilleures pratiques pour prendre soin de nous-mêmes et des communautés, et fournissent une analyse politique et culturelle à la pandémie de COVID-19. Les présentatrices discutent des vulnérabilités dans nos diverses communautés et comment nous pouvons travailler pour nous soutenir mutuellement Les conférenciers incluent Rupa Marya, MD, professeur agrégé de médecine à l'UCSF; Linda Black Elk (Nation Catawba), directrice des programmes de souveraineté alimentaire au United Tribes Technical College; Jacqui Patterson, directrice du programme NAACP de justice environnementale et climatique ; en conversation avec Osprey Orielle Lake, directeur exécutif de WECAN International.",
#         "titleses": "Seminario web: Cuidando a nuestras comunidades: COVID-19 y nuestra salud, \ nConexiones a la preparación climática y al cambio sistémico",
#         "descriptionses": "Las mujeres profesionales y defensoras de primera línea comparten las mejores prácticas para cuidar de nosotras mismas y de las comunidades, y brindan análisis político y cultural a la pandemia de COVID-19. Los presentadores discuten vulnerabilidades en nuestras diversas comunidades y cómo podemos trabajar para apoyarnos mutuamente en los próximos meses, los oradores incluyen a Rupa Marya, MD, profesora asociada de medicina en la UCSF; Linda Black Elk (nación Catawba), directora de programas de soberanía alimentaria en el United Tribes Technical College; Jacqui Patterson, directora del programa de justicia ambiental y climática NAACP ; en conversación con Osprey Orielle Lake, Director Ejecutivo de WECAN International",


#         "link": "https://www.youtube.com/watch?v=OdtCyeZHh2E&feature=youtu.be",
#         "country": "United States",
#         "year": "2020",
#         "category": "healthcare, misinformation"
#     },
#     {
#         "title_en": "Teach-In: Movement Building in the Time of the Covid-19 Crisis",
#         "description_en": "A teach-in by The Rising Majority, supported by the Working Families Party, providing a left feminist perspective on 21st century racial capitalism in this moment. Featured speakers Angela Y. Davis—feminist, abolitionist, scholar, and activist, and Naomi Klein—author and activist, with Thenjiwe McHarris (BlackBird), Maurice Mitchell (Executive Director, Working Families Party), Cindy Wiesner (Director of Grassroots Global Justice), and Loan Tran (Co-Executive Director of Southern Visions Collective).",
        
# "title_fr": "Teach-In: la construction de mouvements au moment de la crise de Covid-19",
# "description_fr": "Un enseignement de The Rising Majority, soutenu par le Working Families Party, offrant une perspective féministe de gauche sur le capitalisme racial du 21e siècle en ce moment. et Naomi Klein - auteur et activiste, avec Thenjiwe McHarris (BlackBird), Maurice Mitchell (directeur exécutif, Working Families Party), Cindy Wiesner (directrice de Grassroots Global Justice) et Loan Tran (codirectrice générale de Southern Visions Collective) .",
#         "titleses": "Teach-In: construcción del movimiento en tiempos de la crisis de Covid-19",
#         "descriptionses": "Una enseñanza de The Rising Majority, apoyada por el Working Families Party, que proporciona una perspectiva feminista de izquierda sobre el capitalismo racial del siglo XXI en este momento. Oradores destacados Angela Y. Davis: feminista, abolicionista, académica y activista y Naomi Klein, autora y activista, con Thenjiwe McHarris (BlackBird), Maurice Mitchell (Director Ejecutivo, Working Families Party), Cindy Wiesner (Director de Grassroots Global Justice) y Loan Tran (Co-Director Ejecutivo del Southern Visions Collective)",


#         "link": "https://therisingmajority.com/events/movement-building/",
#         "country": "Global",
#         "month": "4",
#         "year": "2020",
#         "category": "healthcare, education, childcare, labor, gendered health impacts, gender-based violence, race, misinformation"
#     },
#     {
#         "title_en": "Webinar: Racial Justice Has No Borders",
#         "description_en": "Townhall discussion on war and militarization in the time of pandemic, organized by Racial Justice Has No Borders, a new, broad anti-war coalition that seeks to recenter the conversation about U.S. wars and militarization on the needs and leadership of those most impacted. With opening remarks by Rep. Ilhan Omar (MN-5), and hosted by Marc Lamont Hill, a powerful line-up of speakers from the anti-war movement working locally and Globally reflected on the broader context of the pandemic.",
        
# "title_fr": "Webinaire: La justice raciale n'a pas de frontières",
# "description_fr": "Discussion publique sur la guerre et la militarisation en temps de pandémie, organisée par Racial Justice Has No Borders, une nouvelle large coalition anti-guerre qui cherche à recentrer la conversation sur les guerres américaines et la militarisation sur les besoins et le leadership des Avec les remarques liminaires du représentant Ilhan Omar (MN-5), et animées par Marc Lamont Hill, une puissante liste de conférenciers du mouvement anti-guerre travaillant localement et mondialement a réfléchi sur le contexte plus large de la pandémie. .",
#         "titleses": "Seminario web: La justicia racial no tiene fronteras",
#         "descriptionses": "Debate del Ayuntamiento sobre la guerra y la militarización en tiempos de pandemia, organizado por Racial Justice Has No Borders, una nueva y amplia coalición contra la guerra que busca volver a centrar la conversación sobre las guerras y la militarización de EE. UU. sobre las necesidades y el liderazgo de los más impactados. Con los comentarios de apertura del representante Ilhan Omar (MN-5), y conducidos por Marc Lamont Hill, una poderosa formación de oradores del movimiento contra la guerra que trabaja local y globalmente reflexionó sobre el contexto más amplio de la pandemia",


#         "link": "https://www.facebook.com/InstituteforPolicyStudies/videos/261537221528594/UzpfSTIwMjM3ODc0NjU2OjEwMTU5OTAzOTE2NDk0NjU3/?link_id=0&can_id=8ba9ad5446018ce9d060eb7913742288&source=email-happening-now-join-the-townhall&email_referrer=email_775000___subject_1039377&email_subject=join-us-in-ending-the-aumfs",
#         "country": "Global",
#         "month": "4",
#         "year": "2020",
#         "category": "race"
#     },
#     {
#         "title_en": "Webinar: Court Response to Violence Against Women during COVID-19",
#         "description_en": "As part of the webinar series 'Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women hosted this discussion with Lori Flohaug, former prosecutor / Leech Lake Tribal Court Judge currently practicing family and criminal law; Natia Merebashvili, Deputy Prosecutor General of Georgia; Scott Miller, Executive Director of Domestic Abuse Intervention Programs ('the Duluth Model'); Erin Osborne, Staff Attorney, Central Minnesota Legal Services, Referee John Schulte, who presides over protective order and harassment restraining order court hearings. Emphases were on how court and advocacy practices have shifted, particularly around protective orders and challenges to victims.",
        
# "title_fr": "Webinaire: Réponse de la Cour aux violences faites aux femmes pendant COVID-19",
# "description_fr": "Dans le cadre de la série de webinaires Adapter les réponses juridiques et systémiques lors de la lutte contre la violence à l'égard des femmes par COVID-19 , Global Rights for Women a organisé cette discussion avec Lori Flohaug, ancienne procureure / juge de la Cour tribale de Leech Lake, actuellement en exercice auprès des familles et des familles. droit pénal; Natia Merebashvili, procureur général adjoint de Géorgie; Scott Miller, directeur exécutif des programmes d'intervention en cas de violence domestique (le modèle Duluth); Erin Osborne, avocate, Central Minnesota Legal Services, arbitre John Schulte, qui préside l'ordonnance de protection et les ordonnances de ne pas faire pour harcèlement.",
#         "titleses": "Seminario web: Respuesta judicial a la violencia contra las mujeres durante COVID-19",
#         "descriptionses": "Como parte de la serie de seminarios web 'Adaptando respuestas legales y sistémicas durante COVID-19 Abordar la violencia contra las mujeres', Global Rights for Women organizó esta discusión con Lori Flohaug, ex fiscal / Juez de la Corte Tribal de Leech Lake que actualmente ejerce la familia y derecho penal; Natia Merebashvili, Fiscal General Adjunto de Georgia; Scott Miller, Director Ejecutivo de Programas de Intervención de Abuso Doméstico ('el Modelo Duluth'); Erin Osborne, Abogada de Personal, Servicios Legales del Centro de Minnesota, Árbitro John Schulte, quien preside la orden de protección y el acoso restringiendo las audiencias de las órdenes judiciales. Se hizo hincapié en cómo las prácticas judiciales y de defensa han cambiado, en particular en torno a órdenes de protección y desafíos a las víctimas",


#         "link": "https://www.youtube.com/watch?v=9R3yO0WmK5o",
#         "country": "Global",
#         "month": "4",
#         "year": "2020",
#         "category": "gender-based violence"
#     },
#     {
#         "title_en": "Webinar: Part II: Courts’ Response to Violence Against Women during COVID-19",
#         "description_en": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women hosted this discussion with Judge Steve Aycock, Chief Judge Colville Confederated Tribes, Washington, United States; Iluta Lace, Director of Marta Center, Riga, Latvia; Judge Ilze Celmina, Regional Court, Riga, Latvia; Dusan Radakovic, Program Director of Advocacy Center for Democratic Culture; and Erin Osborne, Central Minnesota Legal Services. Similar questions to panelists as in part 1 of this topic, focused on court process changes and challenges, with recognition of the pandemic within the pandemic narrative emerging worldwide.",
        
# "title_fr": "Webinaire: Partie II: Réponse des tribunaux aux violences faites aux femmes pendant COVID-19",
# "description_fr": "Dans le cadre de la série de webinaires Adapter les réponses juridiques et systémiques lors de la lutte contre la violence à l'égard des femmes de COVID-19 , Global Rights for Women a organisé cette discussion avec le juge Steve Aycock, juge en chef Colville Confederated Tribes, Washington, États-Unis, Iluta Lace, directrice du Marta Center, Riga, Lettonie; juge Ilze Celmina, tribunal régional, Riga, Lettonie; Dusan Radakovic, directeur de programme du Advocacy Center for Democratic Culture; et Erin Osborne, Central Minnesota Legal Services. Questions similaires aux panélistes, en partie 1 de ce sujet, axé sur les changements et les défis du processus judiciaire, avec la reconnaissance de la pandémie dans le récit de la pandémie émergeant dans le monde entier.",
#         "titleses": "Seminario web: Parte II: Respuesta de los tribunales a la violencia contra las mujeres durante COVID-19",
#         "descriptionses": "Como parte de la serie de seminarios web Adaptación de respuestas legales y sistémicas durante COVID-19 para abordar la violencia contra las mujeres, 'Global Rights for Women organizó esta discusión con el juez Steve Aycock, el juez principal Colville Confederated Tribes, Washington, EE. UU.; Iluta Lace, Directora del Centro Marta, Riga, Letonia; Juez Ilze Celmina, Tribunal Regional, Riga, Letonia; Dusan Radakovic, Director del Programa del Centro de Defensa de la Cultura Democrática, y Erin Osborne, Servicios Legales del Centro de Minnesota. Preguntas similares a los panelistas en parte 1 de este tema, centrado en los cambios y desafíos del proceso judicial, con el reconocimiento de la pandemia dentro de la narrativa de la pandemia emergente en todo el mundo",


#         "link": "https://www.youtube.com/watch?v=RQvModky0Zk&feature=youtu.be",
#         "country": "Global",
#         "month": "4",
#         "year": "2020",
#         "category": "gender-based violence"
#     },
#     {
#         "title_en": "Webinar: Working with Perpetrators during COVID-19: Considerations for US Perpetrator Programs",
#         "description_en": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women, European Network for the Work with Perpetrators of Domestic Violence (WWP EN), Pathways to Family Peace, and Family Violence Project of Maine co-hosted this conversation. Speakers included Juan Carlos Arean, Melissa Petrangelo Scaia, Jon Heath, Rebecca Thomforde Hauser, Center for Court Innovation, and Lisa Young Larance. Webinar presented a draft guide and a “thoughtful first start and attempt” to work with perpetrators of domestic violence responsibly during this Global pandemic for United States perpetrator programs.",
        
# "title_fr": "Webinaire: Travailler avec les auteurs pendant COVID-19: Considérations pour les programmes des auteurs américains",
# "description_fr": "Dans le cadre de la série de webinaires Adapter les réponses juridiques et systémiques au cours de COVID-19 Lutter contre la violence à l'égard des femmes , Global Rights for Women, Réseau européen pour le travail avec les auteurs de violence domestique (WWP EN), Pathways to Family Le projet Peace and Family Violence Project of Maine a co-organisé cette conversation. Les conférenciers étaient Juan Carlos Arean, Melissa Petrangelo Scaia, Jon Heath, Rebecca Thomforde Hauser, Center for Court Innovation et Lisa Young Larance. Le webinaire a présenté un projet de guide et une premier départ et tentative de travailler de manière responsable avec les auteurs de violences domestiques pendant cette pandémie mondiale pour les programmes contre les États-Unis",
#         "titleses": "Seminario web: Trabajar con perpetradores durante COVID-19: Consideraciones para los programas de perpetradores de EE. UU.",
#         "descriptionses": "Como parte de la serie de seminarios web Adaptación de respuestas legales y sistémicas durante COVID-19 Abordar la violencia contra las mujeres, 'Derechos globales para las mujeres, Red europea para el trabajo con perpetradores de violencia doméstica (WWP EN), Pathways to Family El Proyecto de Paz y Violencia Familiar de Maine fue el anfitrión de esta conversación. Los oradores incluyeron a Juan Carlos Arean, Melissa Petrangelo Scaia, Jon Heath, Rebecca Thomforde Hauser, Center for Court Innovation y Lisa Young Larance. El seminario web presentó un borrador de guía y una reflexión primer comienzo e intento de trabajar responsablemente con los perpetradores de violencia doméstica durante esta pandemia mundial para los programas de perpetradores de los Estados Unidos",


#         "link": "https://www.youtube.com/watch?v=PJYUeducationJxsNI&feature=youtu.be",
#         "country": "United States",
#         "month": "4",
#         "year": "2020",
#         "category": "gender-based violence"
#     },
#     {
#         "title_en": "Webinar: Working with Perpetrators During COVID-19:  Lessons from Europe",
#         "description_en": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women, European Network for the Work with Perpetrators of Domestic Violence (WWP EN), Pathways to Family Peace, and Family Violence Project of Maine co-hosted this conversation. Speakers included Melissa Petrangelo Scaia, Jon Heath, and Alessandra Pauncz, representing the co-hosting organizations. The WWP EN guidelines on transition perpetrator work to an online format were shared with attention to the safety of victims.",
        
# "title_fr": "Webinaire: Travailler avec les auteurs pendant COVID-19: Leçons d'Europe",
# "description_fr": "Dans le cadre de la série de webinaires Adapter les réponses juridiques et systémiques au cours de COVID-19 Lutter contre la violence à l'égard des femmes, Global Rights for Women, Réseau européen pour le travail avec les auteurs de violence domestique (WWP EN), Pathways to Family Le projet Peace and Family Violence Project of Maine a co-organisé cette conversation. Melissa Petrangelo Scaia, Jon Heath et Alessandra Pauncz, qui représentaient les organisations co-organisatrices, ont été les orateurs. à la sécurité des victimes.",
#         "titleses": "Seminario web: Trabajando con perpetradores durante COVID-19: Lecciones de Europa",
#         "descriptionses": "Como parte de la serie de seminarios web Adaptación de respuestas legales y sistémicas durante COVID-19 Abordar la violencia contra las mujeres, 'Derechos globales para las mujeres, Red europea para el trabajo con perpetradores de violencia doméstica (WWP EN), Pathways to Family El Proyecto de Paz y Violencia Familiar de Maine fue el anfitrión de esta conversación. Los oradores incluyeron a Melissa Petrangelo Scaia, Jon Heath y Alessandra Pauncz, en representación de las organizaciones co-anfitrionas. Las pautas de WWP EN sobre el trabajo del autor de la transición a un formato en línea fueron compartidas con atención. a la seguridad de las víctimas",


#         "link": "https://www.youtube.com/watch?v=_3qVFWHXoUM&feature=youtu.be",
#         "country": "Europe",
#         "month": "4",
#         "year": "2020",
#         "category": "gender-based violence"
#     },
#     {
#         "title_en": "Teach-In: How to Beat Coronavirus Capitalism: Part I",
#         "description_en": "First round of Haymarket Books online teach-in with Naomi Klein, Astra Taylor, and Keeanga-Yamahtta Taylor, with a musical performance by Lia Rose, focusing on how ideas that were dismissed as too radical just a week ago are starting to seem like the only reasonable path to get out of this crisis and prevent future ones.",
        
# "title_fr": "Teach-In: Comment vaincre le capitalisme des coronavirus: Partie I",
# "description_fr": "Premier tour de formation en ligne de Haymarket Books avec Naomi Klein, Astra Taylor et Keeanga-Yamahtta Taylor, avec une performance musicale de Lia Rose, mettant l'accent sur la façon dont les idées qui ont été rejetées comme trop radicales il y a seulement une semaine sont commence à apparaître comme la seule voie raisonnable pour sortir de cette crise et en prévenir de futures.",
#         "titleses": "Teach-In: Cómo vencer al capitalismo del coronavirus: Parte I",
#         "descriptionses": "Primera ronda de enseñanza en línea de Haymarket Books con Naomi Klein, Astra Taylor y Keeanga-Yamahtta Taylor, con una actuación musical de Lia Rose, centrándose en cómo las ideas que fueron descartadas como demasiado radicales hace solo una semana son comienza a parecer el único camino razonable para salir de esta crisis y prevenir futuras y respuestas sistémicas durante COVID-19 Abordar la violencia contra las mujeres, 'Global Rights for Women, Red europea para el trabajo con perpetradores de violencia doméstica ( WWP EN), Pathways to Family Peace y Family Violence Project of Maine copatrocinaron esta conversación. Los oradores incluyeron a Melissa Petrangelo Scaia, Jon Heath y Alessandra Pauncz, en representación de las organizaciones co-anfitrionas. Las directrices de WWP EN sobre el trabajo de los autores de la transición a un formato en línea se compartieron con atención a la seguridad de las víctimas",


#         "link": "https://www.haymarketbooks.org/blogs/118-how-to-beat-coronavirus-capitalism",
#         "country": "United States",
#         "month": "3",
#         "year": "2020",
#         "category": "economy"
#     },
#     {
#         "title_en": "Teach-In: How to Beat Coronavirus Capitalism: Part II (After Bernie, Amidst Pandemic)",
#         "description_en": "Part two continuation of our online teach-in with Naomi Klein, Astra Taylor, and Keeanga-Yamahtta Taylor, hosted by Hari Kondabolu, and featuring a musical performance by Lia Rose, discussing how the current crisis is laying bare the extreme injustices and inequalities of our economic and social system.",
        
# "title_fr": "Teach-In: Comment vaincre le capitalisme des coronavirus: Partie II (après Bernie, au milieu d'une pandémie)",
# "description_fr": "Deuxième partie de notre apprentissage en ligne avec Naomi Klein, Astra Taylor et Keeanga-Yamahtta Taylor, animée par Hari Kondabolu, et mettant en vedette une performance musicale de Lia Rose, expliquant comment la crise actuelle met à nu la les injustices et les inégalités extrêmes de notre système économique et social.",
#         "titleses": "Teach-In: Cómo vencer al capitalismo del coronavirus: Parte II (después de Bernie, en medio de una pandemia)",
#         "descriptionses": "Parte dos, continuación de nuestra enseñanza en línea con Naomi Klein, Astra Taylor y Keeanga-Yamahtta Taylor, conducida por Hari Kondabolu, y presentando una actuación musical de Lia Rose, discutiendo cómo la crisis actual está dejando al descubierto injusticias y desigualdades extremas de nuestro sistema económico y social",


#         "link": "https://www.youtube.com/watch?v=6Gi5qGHRJ9c",
#         "country": "United States",
#         "month": "4",
#         "year": "2020",
#         "category": "economy"
#     },
#     {
#         "title_en": "COVID-19 And Men",
#         "description_en": "Webinar on how men are more affected by COVID-19 in terms of higher death rates.",
        
# "title_fr": "COVID-19 And Men",
# "description_fr": "Webinaire sur la façon dont les hommes sont davantage touchés par COVID-19 en termes de taux de mortalité plus élevés.",
#         "titleses": "COVID-19 y hombres",
#         "descriptionses": "Seminario web sobre cómo los hombres se ven más afectados por COVID-19 en términos de tasas de mortalidad más altas",


#         "link": "https://shop.menshealthforum.org.uk/products/webinar-men-covid-19-april-20-2020-2pm?_ga=2.146902195.506116164.1587597573-367827357.1587597573",
#         "country": "United Kingdom",
#         "year": "2020",
#         "category": "gendered health impacts"
#     },
{
        "title_en": "Webinar: Indigenous Women of United States, Canada, Turtle Island on the Frontlines",
        "description_en": "During the webinar, Indigenous women leaders discussed how COVID-19 is impacting their communities and how oil and gas pipelines are being fast-tracked in their lands— violating Indigenous rights and further putting Indigenous women at risk. In this wide-ranging discussion, presenters shared calls to action, stories and wisdom, immediate needs of their communities, community-care practices, and the latest updates from various campaigns and resistance movements, focusing on Keystone XL, Line 3 and Coastal GasLink pipelines, and tar sands extraction. Featuring activists Freda Huson (Chief Howihkat), Faith Spotted Eagle (Tunkan Inajin Win), Tara Houska, and Eriel Tchekwie Deranger.",
        "title_es": "Seminario web: Mujeres indígenas de Estados Unidos, Canadá, Turtle Island en primera línea",
        "description_es": "Durante el seminario web, las líderes indígenas discutieron cómo COVID-19 está afectando a sus comunidades y cómo los oleoductos y gasoductos están siendo acelerados en sus tierras, violando los derechos indígenas y poniendo aún más en riesgo a las mujeres indígenas. , los presentadores compartieron llamadas a la acción, historias y sabiduría, necesidades inmediatas de sus comunidades, prácticas de atención comunitaria y las últimas actualizaciones de varias campañas y movimientos de resistencia, centrándose en las tuberías Keystone XL, Line 3 y Coastal GasLink, y alquitrán extracción de arenas. Con los activistas Freda Huson (jefe Howihkat), Faith Spotted Eagle (Tunkan Inajin Win), Tara Houska y Eriel Tchekwie Deranger ",


        "link": "https://www.youtube.com/watch?v=FPqVs_2KWdM",
        "category": "democratic institutions",
        "country": "United States, Canada, Australia",
        "month": "4",
        "year": "2020",
    },
    {
        "title_en": "Webinar: Indigenous Women of Brazil and Ecuador on the Frontlines",
        "description_en": "Indigenous women leaders of the Ecuadorian and Brazilian Amazon united to discuss how the pandemic is impacting their communities, as they face ongoing deforestation, oil extraction, and Indigenous rights violations in their territories. As across Turtle Island, Indigenous peoples of the Global South are at higher risk of contracting COVID-19 due to lack of resources and health disparities brought on by centuries of colonial policies and environmental racism. These leaders shared their stories, analysis, wisdom, and advocacy for Indigenous rights, protection of forests, water, communities, and the global climate, and addressed the ongoing political and economic struggles affecting their Amazonian territories.",
        "title_es": "Seminario web: Mujeres indígenas de Brasil y Ecuador en primera línea",
        "description_es": "Mujeres líderes indígenas de la Amazonía ecuatoriana y brasileña se unieron para discutir cómo la pandemia está afectando a sus comunidades, ya que se enfrentan a la deforestación, la extracción de petróleo y las violaciones de los derechos indígenas en sus territorios. En Turtle Island, los pueblos indígenas de El Sur Global está en mayor riesgo de contraer COVID-19 debido a la falta de recursos y las disparidades de salud provocadas por siglos de políticas coloniales y racismo ambiental. Estos líderes compartieron sus historias, análisis, sabiduría y defensa de los derechos indígenas y la protección de los bosques. , el agua, las comunidades y el clima global, y abordaron las luchas políticas y económicas en curso que afectan a sus territorios amazónicos ",


        "link": "https://www.youtube.com/watch?v=g30ZrwcFgVY",
        "category": "democratic institutions",
        "country": "Latin America and the Caribbean",
        "month": "4",
        "year": "2020",
    },
    {
        "title_en": "Audio Call: Gender and COVID-19",
        "description_en": "Why do more men die from the virus than women? And why isn’t this fact impacting research into a vaccine in the U.S.? They’re two of the pandemic’s most pressing — and confounding — questions. Listen as the speakers dive deep into the role of gender and data in Covid-19. With special guest Caroline Criado Perez, author of the award-winning book 'Invisible Women.' Hosted by Francesca Donner, gender director at The Times and editor of the Times newsletter In Her Words; and Alisha Haridasani Gupta, gender reporter for In Her Words.",
        "title_es": "Llamada de audio: género y COVID-19",
        "description_es": "¿Por qué mueren más hombres por el virus que las mujeres? ¿Y por qué este hecho no afecta la investigación sobre una vacuna en los Estados Unidos? Son dos de las preguntas más apremiantes y confusas de la pandemia. Escuche como los oradores profundizan en el papel del género y los datos en Covid-19. Con la invitada especial Caroline Criado Perez, autora del galardonado libro 'Invisible Women'. Organizado por Francesca Donner, directora de género en The Times y editora del boletín de noticias In Her Words; y Alisha Haridasani Gupta, reportera de género de In Her Words ",


        "link": "https://www.youtube.com/watch?v=waD0Qe7RA50&feature=youtu.be",
        "category": "gendered health impacts",
        "country": "Global",
        "month": "4",
        "year": "2020",
    },
    {
        "title_en": "Webinar: Global Health Security: Delivered by Women During COVID-19 and Beyond",
        "description_en": "This webinar highlights perspectives on a people-centric and human rights-based approach to health security that is focused on delivering health for all through stronger health systems, a properly-equipped and financed health workforce, and responding to health crises while maintaining core women’s health services. Speakers shared recommendations and actions to propel advocacy to support investments in and commitments to women in the health workforce. Speakers included Michèle Boccoz, Howard Catton, Dr. Gvantsa Khizanishvili, Sarah Hillware, Susan Papp, and Mwenya Kasonde.",
        "title_es": "Seminario web: Seguridad sanitaria mundial: impartido por mujeres durante COVID-19 y más allá",
        "description_es": "Este seminario web resalta las perspectivas sobre un enfoque centrado en las personas y los derechos humanos para la seguridad de la salud que se enfoca en brindar salud para todos a través de sistemas de salud más fuertes, una fuerza laboral de salud adecuadamente equipada y financiada, y responder a las crisis de salud mientras se mantienen los servicios básicos de salud de la mujer. Los oradores compartieron recomendaciones y acciones para impulsar la defensa para apoyar las inversiones y los compromisos con las mujeres en la fuerza laboral de la salud. Los oradores incluyeron a Michèle Boccoz, Howard Catton, Dr. Gvantsa Khizanishvili, Sarah Hillware, Susan Papp y Mwenya Kasonde ",


        "link": "https://www.youtube.com/watch?v=9At0j07G7-o",
        "category": "healthcare",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Respond, Don't React: Gender-Responsive Programming in Times of Crisis",
        "description_en": "As part of the series, 'COVID-19 & Gender: Living up to the Challenge' hosted by International Gender Champions, this first session explored human rights threats and humanitarian and economic needs that should be forefront in our minds. How do we ensure women’s meaningful participation in shaping global and national policies, while raising their voices in the media? Featured Ms. Michelle Bachelet, UN High Commissioner for Human Rights; Ms. Sabra Bano, Director, Gender Concerns International; Mr. Martin Chungong, Secretary-General, Inter-Parliamentary Union; and Ms. Katja Iversen, President/CEO, Women Deliver. Moderated by H.E. Mr. Jürg Lauber, Permanent Representative of Switzerland to the UN.",
        "title_es": "Seminario web: responder, no reaccionar: programación sensible al género en tiempos de crisis",
        "description_es": "Como parte de la serie, 'COVID-19 & Gender: Living to the Challenge', organizado por International Gender Champions, esta primera sesión exploró las amenazas a los derechos humanos y las necesidades humanitarias y económicas que deben estar en primer plano en nuestras mentes ¿Cómo garantizamos la participación significativa de las mujeres en la configuración de las políticas mundiales y nacionales, al mismo tiempo que alzamos la voz en los medios de comunicación? Chungong, Secretario General, Unión Interparlamentaria, y la Sra. Katja Iversen, Presidenta / Directora Ejecutiva, Women Deliver. Moderada por SE Sr. Jürg Lauber, Representante Permanente de Suiza ante la ONU ",


        "link": "https://www.youtube.com/watch?v=F1B80cKEScc",
        "category": "gendered health impacts",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Approaching COVID-19 Risk and Response through a Gender Lens",
        "description_en": "By applying a gender lens to this pandemic, researchers and policy makers can better assess differential risks and target responses to ensure already-vulnerable populations don’t fall even farther behind. This discussion with CGD experts, external researchers, practitioners, and advocates focused on how a gender lens helps us better understand and respond to COVID-19. Featured speakers included Gary Barker, President and CEO, Promundo; Carleigh Krubiner, Policy Fellow, Center for Global Development; Amber Peterman, Associate Research Professor, UNC Chapel Hill; Crystal Simeoni, Economic Justice Lead, FEMNET; Clare Wenham, Assistant Professor of Global Health Policy, LSE; Olabukunola Williams, Executive Director, education as a Vaccine.",
        "title_es": "Seminario web: Aproximación al riesgo y respuesta de COVID-19 a través de una lente de género",
        "description_es": "Al aplicar una lente de género a esta pandemia, los investigadores y los encargados de formular políticas pueden evaluar mejor los riesgos diferenciales y las respuestas específicas para garantizar que las poblaciones ya vulnerables no se retrasen aún más. Esta discusión con expertos en CGD, investigadores externos, profesionales y los defensores se centraron en cómo una lente de género nos ayuda a comprender y responder mejor a COVID-19. Los oradores destacados incluyeron a Gary Barker, presidente y director ejecutivo de Promundo; Carleigh Krubiner, investigadora de políticas del Centro para el Desarrollo Global; Amber Peterman, profesora de investigación asociada, UNC Chapel Hill; Crystal Simeoni, Líder de Justicia Económica, FEMNET; Clare Wenham, Profesora Asistente de Política de Salud Global, LSE; Olabukunola Williams, Director Ejecutivo, educación como vacuna ",


        "link": "https://www.cgdev.org/event/approaching-covid-19-risk-and-response-through-gender-lens",
        "category": "gendered health impacts",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: COVID-19: A Gender Perspective",
        "description_en": "The UN has launched a major humanitarian response to mitigate COVID-19’s impact on the world’s most vulnerable communities. Women and girls are both uniquely impacted and critical to mitigation strategies during this humanitarian crisis. Featuring: Rt Hon David Miliband; Ms. Anita Bhatia; The Hon. Eric Schwartz; Ms. Mavic Cabrera-Balleza; and Dr. Orzala Nemat. Moderated by Ambassador Melanne Verveer. Hosted by the Georgetown Institute for Women, Peace and Security in partnership with The LSE Centre for Women, Peace and Security; Monash Gender, Peace and Security; The PRIO Centre on Gender, Peace and Security; and The Kofi Annan International Peacekeeping Training Centre.",
        "title_es": "Seminario web: COVID-19: Una perspectiva de género",
        "description_es": "La ONU ha lanzado una importante respuesta humanitaria para mitigar el impacto de COVID-19 en las comunidades más vulnerables del mundo. Las mujeres y las niñas tienen un impacto único y son críticas para las estrategias de mitigación durante esta crisis humanitaria. Con: Rt Hon David Miliband; Sra. Anita Bhatia; El Honorable Eric Schwartz; Sra. Mavic Cabrera-Balleza; y la Dra. Orzala Nemat. Moderada por la Embajadora Melanne Verveer. Organizada por el Instituto de Georgetown para Mujeres, Paz y Seguridad en colaboración con el Centro LSE para Mujeres, Paz y seguridad; Monash Género, paz y seguridad; El Centro PRIO sobre género, paz y seguridad; y el Centro internacional de capacitación para el mantenimiento de la paz Kofi Annan ",


        "link": "https://giwps.georgetown.edu/event/covid-19-a-gender-perspective-on-the-growing-humanitarian-crisis/",
        "category": "gendered health impacts",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: The Feminist Economics of COVID-19",
        "description_en": "Focusing on the household and the organisation of work – two central categories in feminist economic thinking – the talk sketches an analysis of how the situation was prior to the pandemic and how it has changed, postulating that the crisis is reinforcing the privatisation of social reproduction, with significant implications for gender, class and race inequalities. The pandemic is also reconfiguring what is considered to be essential work and its value and, although the essential workers are currently exposed to significant health risks, this bears a transformative potential that should inform feminist responses. Speaker Sara Stevano, Moderator Latifahaida Binti Abdul Latif.",
        "title_es": "Seminario web: La economía feminista de COVID-19",
        "description_es": "Centrándose en el hogar y la organización del trabajo - dos categorías centrales en el pensamiento económico feminista - la charla esboza un análisis de cómo era la situación antes de la pandemia y cómo ha cambiado, postulando que la crisis está reforzando la situación privatización de la reproducción social, con implicaciones significativas para las desigualdades de género, clase y raza. La pandemia también está reconfigurando lo que se considera trabajo esencial y su valor y, aunque los trabajadores esenciales están actualmente expuestos a riesgos de salud significativos, esto conlleva un potencial transformador eso debería informar las respuestas feministas. Ponente Sara Stevano, Moderadora Latifahaida Binti Abdul Latif ",


        "link": "https://www.youtube.com/watch?v=KF_jfLuQgbQ",
        "category": "economy",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "COVID-19 & US Sanctions on Iran: Webinar with Iranian-American Women/Gender-Nonconforming People",
        "description_en": "Fatemeh Kershavaz, Leila Zand, Salome, MC, Sima Shakhsari, Sussan Deyhim, and Sussan Tahmasebi discuss the crisis in Iran from a personal view: their connections to the nation, how this has affected their loved ones back home, how Iranians — the people and the government — are reacting; about the sanctions that are crippling Iran’s healthcare system; and suggestions for what people can do. Hosted by CODEPINK, a women-led grassroots organization working to end U.S. wars and militarism, support peace and human rights initiatives, and redirect our tax dollars into healthcare, education, green jobs and other life-affirming programs",
        "title_es": "COVID-19 y sanciones de Estados Unidos contra Irán: seminario web con mujeres iraníes-estadounidenses / personas no conformes con el género",
        "description_es": "Fatemeh Kershavaz, Leila Zand, Salome, MC, Sima Shakhsari, Sussan Deyhim y Sussan Tahmasebi discuten la crisis en Irán desde un punto de vista personal: sus conexiones con la nación, cómo esto ha afectado a sus seres queridos en casa, cómo reaccionan los iraníes, el pueblo y el gobierno, sobre las sanciones que están paralizando el sistema de salud de Irán y sugerencias sobre lo que la gente puede hacer. e iniciativas de derechos humanos, y redirigir nuestros impuestos a la salud, la educación, los empleos verdes y otros programas que afirman la vida ",


        "link": "https://www.youtube.com/watch?v=QucuOsj3qCw&t=533s",
        "category": "economy",
        "country": "United States, Iran",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Audio Call: African Feminist and Anti-Capitalist Responses to COVID-19: labor, Health and Ecological Questions",
        "description_en": "Ruth Nyambura is in conversation with Salimah Valiani, Max Ajl and Ruth Castel-Branco",
        "title_es": "Llamada de audio: respuestas feministas y anticapitalistas africanas a COVID-19: cuestiones laborales, de salud y ecológicas",
        "description_es": "Ruth Nyambura está conversando con Salimah Valiani, Max Ajl y Ruth Castel-Branco",


        "link": "https://anchor.fm/african-ecofeminisms/episodes/African-Feminist-and-Anti-Capitalist-Responses-to-COVID-19-labor--Health-and-Ecological-Questions-eca7o6",
        "category": "healthcare, economy, labor, democratic institutions",
        "country": "Anglophone Africa, Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Economic and Social Impacts of COVID-19",
        "description_en": "UN Chief Economist Elliott Harris and experts from UN DESA (Department of Economic and Social Affairs) share their latest findings on the social and economic impacts of COVID-19 as well as the policy recommendations.",
        "title_es": "Seminario web: Impactos económicos y sociales de COVID-19",
        "description_es": "El economista jefe de la ONU, Elliott Harris, y expertos del DESA (Departamento de Asuntos Económicos y Sociales) de la ONU comparten sus últimos hallazgos sobre los impactos sociales y económicos de COVID-19, así como las recomendaciones de política",


        "link": "https://www.facebook.com/joinundesa/videos/vb.121245281298034/2506983762950816/?type=2&theater",
        "category": "economy",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Climate Justice in the Time of COVID-19: 5 Lessons From Women and Girls Leading the Fight",
        "description_en": "Hosted by the Skoll Foundation, which canceled its 2020 World Forum with the planned theme of Collective Strength, this webinar featured Mary Robinson, former president of Ireland and UN High Commissioner for Human Rights;  Xiye Bastida, high school senior and leading youth climate activist; Hindou Oumarou Ibrahim, environmental activist and co-chair of the International Indigenous Peoples Forum on Climate Change; Dr. Katharine Wilkinson, Project Drawdown; and Megha Agrawal Sood, director of programs at Exposure Labs, the production company behind the Emmy Award-winning films Chasing Ice and Chasing Coral. Hosted in partnership with Connected Women Leaders and The Rockefeller Foundation.",
        "title_es": "Seminario web: Justicia climática en tiempos de COVID-19: 5 lecciones de mujeres y niñas liderando la lucha",
        "description_es": "Organizado por la Fundación Skoll, que canceló su Foro Mundial 2020 con el tema planeado de Fuerza Colectiva, este seminario web contó con Mary Robinson, ex presidenta de Irlanda y Alta Comisionada de las Naciones Unidas para los Derechos Humanos; Xiye Bastida, estudiante de último año de secundaria y activista climático juvenil líder; Hindou Oumarou Ibrahim, activista ambiental y copresidente del Foro Internacional de los Pueblos Indígenas sobre Cambio Climático; Dra. Katharine Wilkinson, Project Drawdown; y Megha Agrawal Sood, directora de programas en Exposure Labs, la compañía de producción detrás del Películas ganadoras de un Emmy Chasing Ice y Chasing Coral. Presentadas en asociación con Connected Women Leaders y The Rockefeller Foundation ",


        "link": "https://www.rockefellerfoundation.org/blog/climate-justice-in-the-time-of-covid-19-5-lessons-from-women-and-girls-leading-the-fight/",
        "category": "democratic institutions",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Impacts of COVID-19 on Women & Girls",
        "description_en": "One of six webinars in a series hosted by the GBV Area of Responsibility under the Inter-Agency Standing Committee cluster approach. The GBV AoR works collectively to improve the effectiveness and accountability of humanitarian response for the prevention, risk mitigation and response to all forms of gender-based violence, to ensure that the agency and capacity of survivors is recognised and reinforced and that primary prevention efforts are effectively employed to address underlying gender inequality. The GBV AoR Coordination Team and invited speakers shared expertise and best practices throughout the series. Each webinar was also offered in French.",
        "title_es": "Seminario web: Impactos de COVID-19 en mujeres y niñas",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de GBV bajo el enfoque de clúster del Comité Permanente Interinstitucional. El GBV AoR trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de las sobrevivientes sean reconocidas y reforzadas y que los esfuerzos de prevención primaria se empleen de manera efectiva para abordar la desigualdad de género subyacente. a lo largo de la serie. Cada seminario web también se ofreció en francés ",


        "link": "https://drive.google.com/file/d/19Ui3bZZsmdDZP7wWXRF7f6SQzpBfL-EJ/view",
        "category": "gender-based violence, healthcare, gendered health impacts",
        "country": "Global",
        "month": "3",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Remote GBV Assessments and Transitioning to Remote Service Delivery",
        "description_en": "One of six webinars in a series hosted by the GBV Area of Responsibility under the Inter-Agency Standing Committee cluster approach. The GBV AoR works collectively to improve the effectiveness and accountability of humanitarian response for the prevention, risk mitigation and response to all forms of gender-based violence, to ensure that the agency and capacity of survivors is recognised and reinforced and that primary prevention efforts are effectively employed to address underlying gender inequality. The GBV AoR Coordination Team and invited speakers shared expertise and best practices throughout the series. Each webinar was also offered in French.",
        "title_es": "Webinar: Evaluaciones remotas de GBV y transición a la prestación de servicios remotos",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de GBV bajo el enfoque de clúster del Comité Permanente Interinstitucional. El GBV AoR trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de las sobrevivientes sean reconocidas y reforzadas y que los esfuerzos de prevención primaria se empleen de manera efectiva para abordar la desigualdad de género subyacente. a lo largo de la serie. Cada seminario web también se ofreció en francés ",


        "link": "https://drive.google.com/file/d/1BK6c3D0Nic_Ih5NDCIyW92Sdfp_0XVvl/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "3",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Ensuring Continuity of Essential Health Services for GBV Survivors During the COVID-19 Crisis",
        "description_en": "One of six webinars in a series hosted by the GBV Area of Responsibility under the Inter-Agency Standing Committee cluster approach. The GBV AoR works collectively to improve the effectiveness and accountability of humanitarian response for the prevention, risk mitigation and response to all forms of gender-based violence, to ensure that the agency and capacity of survivors is recognised and reinforced and that primary prevention efforts are effectively employed to address underlying gender inequality. The GBV AoR Coordination Team and invited speakers shared expertise and best practices throughout the series. Each webinar was also offered in French.",
        "title_es": "Seminario web: garantizar la continuidad de los servicios de salud esenciales para los sobrevivientes de VG durante la crisis de COVID-19",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de GBV bajo el enfoque de clúster del Comité Permanente Interinstitucional. El GBV AoR trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de las sobrevivientes sean reconocidas y reforzadas y que los esfuerzos de prevención primaria se empleen de manera efectiva para abordar la desigualdad de género subyacente. a lo largo de la serie. Cada seminario web también se ofreció en francés ",


        "link": "https://drive.google.com/file/d/1Ca5GexYHqZpsGC1HNRmD-SzNSKL387ds/view",
        "category": "gender-based violence, healthcare, gendered health impacts",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Mobilizing Resources for GBV Programming and Coordination and the COVID-19 Response",
        "description_en": "One of six webinars in a series hosted by the GBV Area of Responsibility under the Inter-Agency Standing Committee cluster approach. The GBV AoR works collectively to improve the effectiveness and accountability of humanitarian response for the prevention, risk mitigation and response to all forms of gender-based violence, to ensure that the agency and capacity of survivors is recognised and reinforced and that primary prevention efforts are effectively employed to address underlying gender inequality. The GBV AoR Coordination Team and invited speakers shared expertise and best practices throughout the series. Each webinar was also offered in French.",
        "title_es": "Seminario web: Movilización de recursos para la programación y coordinación de violencia de género y la respuesta COVID-19",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de GBV bajo el enfoque de clúster del Comité Permanente Interinstitucional. El GBV AoR trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de las sobrevivientes sean reconocidas y reforzadas y que los esfuerzos de prevención primaria se empleen de manera efectiva para abordar la desigualdad de género subyacente. a lo largo de la serie. Cada seminario web también se ofreció en francés ",


        "link": "https://drive.google.com/file/d/1EPEvM84FkqudVNNGhIyIDmJZsxzk1evE/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Adapting GBV Case Management During COVID-19 Response",
        "description_en": "One of six webinars in a series hosted by the GBV Area of Responsibility under the Inter-Agency Standing Committee cluster approach. The GBV AoR works collectively to improve the effectiveness and accountability of humanitarian response for the prevention, risk mitigation and response to all forms of gender-based violence, to ensure that the agency and capacity of survivors is recognised and reinforced and that primary prevention efforts are effectively employed to address underlying gender inequality. The GBV AoR Coordination Team and invited speakers shared expertise and best practices throughout the series. Each webinar was also offered in French.",
        "title_es": "Seminario web: Adaptación de la gestión de casos de VG durante la respuesta COVID-19",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de GBV bajo el enfoque de clúster del Comité Permanente Interinstitucional. El GBV AoR trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de las sobrevivientes sean reconocidas y reforzadas y que los esfuerzos de prevención primaria se empleen de manera efectiva para abordar la desigualdad de género subyacente. a lo largo de la serie. Cada seminario web también se ofreció en francés ",


        "link": "https://drive.google.com/file/d/1FaedI6GEzF7rPJGAzUsJKbGp_0YsrnxH/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Emerging Practices for Localization on GBV Interventions in COVID-19 Response",
        "description_en": "One of six webinars in a series hosted by the GBV Area of Responsibility under the Inter-Agency Standing Committee cluster approach. The GBV AoR works collectively to improve the effectiveness and accountability of humanitarian response for the prevention, risk mitigation and response to all forms of gender-based violence, to ensure that the agency and capacity of survivors is recognised and reinforced and that primary prevention efforts are effectively employed to address underlying gender inequality. The GBV AoR Coordination Team and invited speakers shared expertise and best practices throughout the series. Each webinar was also offered in French.",
        "title_es": "Seminario web: prácticas emergentes para la localización de intervenciones de violencia de género en la respuesta COVID-19",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de GBV bajo el enfoque de clúster del Comité Permanente Interinstitucional. El GBV AoR trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de las sobrevivientes sean reconocidas y reforzadas y que los esfuerzos de prevención primaria se empleen de manera efectiva para abordar la desigualdad de género subyacente. a lo largo de la serie. Cada seminario web también se ofreció en francés ",


        "link": "https://drive.google.com/file/d/1H9CSRHReeYolUiHrXmp2v2OACIHoY95nz1/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinaire: L’impact du COVID-19 sur les Femmes et les Filles",
        "description_en": "L'un des six webinaires d'une série hébergés par la Zone de Responsabilité de la Violence liée au Sexe (AoR GBV) dans le cadre de l'approche par groupes du Comité permanent interorganisations. Le GBV travaille collectivement pour améliorer l'efficacité et la responsabilité de la réponse humanitaire pour la prévention, l'atténuation des risques et la réponse à toutes les formes de violence sexiste, afin de garantir que l'agence et la capacité des survivants soient reconnues et renforcées, et que les efforts de prévention primaire sont efficacement utilisés pour s'attaquer aux inégalités sous-jacentes entre les sexes. L'équipe de coordination de l'AoR sur la violence liée au sexe et les orateurs invités ont partagé leur expertise et leurs meilleures pratiques tout au long de la série.",
        "title_es": "Seminario web: El impacto de COVID-19 en las mujeres y las niñas",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de Violencia de Género (AoR GBV) como parte del enfoque grupal del Comité Permanente entre Agencias. El GBV trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de los sobrevivientes sean reconocidos y fortalecidos, y que Los esfuerzos de prevención primaria se utilizan efectivamente para abordar las desigualdades de género subyacentes. El equipo de coordinación de VG de AoR y los oradores invitados compartieron su experiencia y mejores prácticas a lo largo de la serie ",


        "link": "https://drive.google.com/file/d/19O-R-C9hydUoIhvhi9FY_z-dHGeVYvA9/view",
        "category": "gender-based violence, healthcare, gendered health impacts",
        "country": "Global",
        "month": "3",
        "year": "2020"
    },
    {
        "title_en": "Webinaire: évaluations à distance de la VBG et transition vers la prestation de services à distance - GBV AoR",
        "description_en": "L'un des six webinaires d'une série hébergés par la Zone de Responsabilité de la Violence liée au Sexe (AoR GBV) dans le cadre de l'approche par groupes du Comité permanent interorganisations. Le GBV travaille collectivement pour améliorer l'efficacité et la responsabilité de la réponse humanitaire pour la prévention, l'atténuation des risques et la réponse à toutes les formes de violence sexiste, afin de garantir que l'agence et la capacité des survivants soient reconnues et renforcées, et que les efforts de prévention primaire sont efficacement utilisés pour s'attaquer aux inégalités sous-jacentes entre les sexes. L'équipe de coordination de l'AoR sur la violence liée au sexe et les orateurs invités ont partagé leur expertise et leurs meilleures pratiques tout au long de la série.",
        "title_es": "Seminario web: evaluaciones remotas de GBV y transición a la prestación de servicios remotos - GBV AoR",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de Violencia de Género (AoR GBV) como parte del enfoque grupal del Comité Permanente entre Agencias. El GBV trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de los sobrevivientes sean reconocidos y fortalecidos, y que Los esfuerzos de prevención primaria se utilizan efectivamente para abordar las desigualdades de género subyacentes. El equipo de coordinación de VG de AoR y los oradores invitados compartieron su experiencia y mejores prácticas a lo largo de la serie ",


        "link": "https://drive.google.com/file/d/1BM6_k-aZ94U9MU6ohJk1UmgcR-iR2QID/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "3",
        "year": "2020"
    },
    {
        "title_en": "Webinaire: VBG et Covid-19: Comment Assurer la Continuite des Services Essentiels de Sante pour les Survivant(e)s des Violences Basees sur le Genre Pendant la Crise a Covid-19",
        "description_en": "L'un des six webinaires d'une série hébergés par la Zone de Responsabilité de la Violence liée au Sexe (AoR GBV) dans le cadre de l'approche par groupes du Comité permanent interorganisations. Le GBV travaille collectivement pour améliorer l'efficacité et la responsabilité de la réponse humanitaire pour la prévention, l'atténuation des risques et la réponse à toutes les formes de violence sexiste, afin de garantir que l'agence et la capacité des survivants soient reconnues et renforcées, et que les efforts de prévention primaire sont efficacement utilisés pour s'attaquer aux inégalités sous-jacentes entre les sexes. L'équipe de coordination de l'AoR sur la violence liée au sexe et les orateurs invités ont partagé leur expertise et leurs meilleures pratiques tout au long de la série.",
        "title_es": "Seminario web: VBG y Covid-19: Cómo garantizar servicios de salud esenciales continuos para sobrevivientes de violencia de género durante la crisis en Covid-19",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de Violencia de Género (AoR GBV) como parte del enfoque grupal del Comité Permanente entre Agencias. El GBV trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de los sobrevivientes sean reconocidos y fortalecidos, y que Los esfuerzos de prevención primaria se utilizan de manera efectiva para abordar las desigualdades de género subyacentes.El equipo de coordinación de VG de AoR y los oradores invitados compartieron su experiencia y mejores prácticas a lo largo de a lo largo de la serie ",


        "link": "https://drive.google.com/file/d/1Cb6kQKkYUFbawS9UfA7Z1kSFrmcgfzQW/view",
        "category": "gender-based violence, healthcare, gendered health impacts",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinaire: Mobilisation des Ressources pour les Programmes de Lutte Contre les VBG Coordination dans la Reponse Humanitaire liée au COVID-19",
        "description_en": "L'un des six webinaires d'une série hébergés par la Zone de Responsabilité de la Violence liée au Sexe (AoR GBV) dans le cadre de l'approche par groupes du Comité permanent interorganisations. Le GBV travaille collectivement pour améliorer l'efficacité et la responsabilité de la réponse humanitaire pour la prévention, l'atténuation des risques et la réponse à toutes les formes de violence sexiste, afin de garantir que l'agence et la capacité des survivants soient reconnues et renforcées, et que les efforts de prévention primaire sont efficacement utilisés pour s'attaquer aux inégalités sous-jacentes entre les sexes. L'équipe de coordination de l'AoR sur la violence liée au sexe et les orateurs invités ont partagé leur expertise et leurs meilleures pratiques tout au long de la série.",
        "title_es": "Seminario web: Movilización de recursos para la coordinación de programas de control de violencia de género en la respuesta humanitaria vinculada a COVID-19",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de Violencia de Género (AoR GBV) como parte del enfoque grupal del Comité Permanente entre Agencias. El GBV trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de los sobrevivientes sean reconocidos y fortalecidos, y que Los esfuerzos de prevención primaria se utilizan de manera efectiva para abordar las desigualdades de género subyacentes.El equipo de coordinación de VG de AoR y los oradores invitados compartieron su experiencia y mejores prácticas a lo largo de a lo largo de la serie ",


        "link": "https://drive.google.com/file/d/1VTlu6ODlrPrZdCnXFrtq_uZlKe80tug2/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinaire: COVID-19: comment adapter la gestion des cas de VBG?",
        "description_en": "L'un des six webinaires d'une série hébergés par la Zone de Responsabilité de la Violence liée au Sexe (AoR GBV) dans le cadre de l'approche par groupes du Comité permanent interorganisations. Le GBV travaille collectivement pour améliorer l'efficacité et la responsabilité de la réponse humanitaire pour la prévention, l'atténuation des risques et la réponse à toutes les formes de violence sexiste, afin de garantir que l'agence et la capacité des survivants soient reconnues et renforcées, et que les efforts de prévention primaire sont efficacement utilisés pour s'attaquer aux inégalités sous-jacentes entre les sexes. L'équipe de coordination de l'AoR sur la violence liée au sexe et les orateurs invités ont partagé leur expertise et leurs meilleures pratiques tout au long de la série.",
        "title_es": "Seminario web: COVID-19: ¿cómo adaptar la gestión de casos de violencia de género?",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de Violencia de Género (AoR GBV) como parte del enfoque grupal del Comité Permanente entre Agencias. El GBV trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de los sobrevivientes sean reconocidos y fortalecidos, y que Los esfuerzos de prevención primaria se utilizan efectivamente para abordar las desigualdades de género subyacentes. El equipo de coordinación de VG de AoR y los oradores invitados compartieron su experiencia y mejores prácticas a lo largo de la serie ",


        "link": "https://drive.google.com/file/d/1Fln-IgsSa942n04wRery-L8qD6hTlaborFe/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinaire: La Lutte Contre les VBG pendant la Réponse du COVID-19: Pratiques Prometteuses Nationales",
        "description_en": "L'un des six webinaires d'une série hébergés par la Zone de Responsabilité de la Violence liée au Sexe (AoR GBV) dans le cadre de l'approche par groupes du Comité permanent interorganisations. Le GBV travaille collectivement pour améliorer l'efficacité et la responsabilité de la réponse humanitaire pour la prévention, l'atténuation des risques et la réponse à toutes les formes de violence sexiste, afin de garantir que l'agence et la capacité des survivants soient reconnues et renforcées, et que les efforts de prévention primaire sont efficacement utilisés pour s'attaquer aux inégalités sous-jacentes entre les sexes. L'équipe de coordination de l'AoR sur la violence liée au sexe et les orateurs invités ont partagé leur expertise et leurs meilleures pratiques tout au long de la série.",
        "title_es": "Seminario web: La lucha contra la violencia de género durante la respuesta COVID-19: prácticas prometedoras nacionales",
        "description_es": "Uno de los seis seminarios web de una serie organizada por el Área de Responsabilidad de Violencia de Género (AoR GBV) como parte del enfoque grupal del Comité Permanente entre Agencias. El GBV trabaja colectivamente para mejorar la efectividad y la responsabilidad de la respuesta humanitaria para la prevención, mitigación de riesgos y respuesta a todas las formas de violencia de género, para garantizar que la agencia y la capacidad de los sobrevivientes sean reconocidos y fortalecidos, y que Los esfuerzos de prevención primaria se utilizan efectivamente para abordar las desigualdades de género subyacentes. El equipo de coordinación de VG de AoR y los oradores invitados compartieron su experiencia y mejores prácticas a lo largo de la serie ",


        "link": "https://drive.google.com/file/d/1HJDRcM2s4Y4UW0g0lavjVRyAuGo4fhbK/view",
        "category": "gender-based violence",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Covid-19: Girls’ Protection & gender-based violence during Lockdown in Nigeria",
        "description_en": "Hosted by the African Girls Empowerment Network (AGE Network), which works to advance gender equality through girls’ education, end child marriage, promote good health and well-being of women, and empower rape survivors, teenage mothers, victims of female genital mutilation, and economically disadvantaged women and girls in Africa, this webinar featured panelists Dr. Chris N Ugwu (Society for the Improvement of Rural People); Mrs. Priscilla Ingbian (Community Health Support & Empowerment Initiative), Mr. Kolawole Olatosimi (Children and Youth Protection Foundation), Margaret Onah (Safe Haven Development Initiative), and Olori Bimbo Kolawole (AGE).",
        "title_es": "Seminario web: Covid-19: Protección de las niñas y violencia de género durante el encierro en Nigeria",
        "description_es": "Organizado por la African Girls Empowerment Network (AGE Network), que trabaja para promover la igualdad de género a través de la educación de las niñas, terminar con el matrimonio infantil, promover la buena salud y el bienestar de las mujeres y empoderar a las sobrevivientes de violaciones, madres adolescentes, víctimas de mutilación genital femenina y mujeres y niñas económicamente desfavorecidas en África, este seminario web contó con los panelistas Dr. Chris N Ugwu (Sociedad para la Mejora de la Gente Rural); Sra. Priscilla Ingbian (Iniciativa de Apoyo y Empoderamiento Comunitario de Salud), Sr. Kolawole Olatosimi (Fundación para la Protección de Niños y Jóvenes), Margaret Onah (Iniciativa de Desarrollo Safe Haven) y Olori Bimbo Kolawole (AGE) ",


        "link": "https://www.youtube.com/playlist?list=PL5C1JNjZoJkltDnVdciGd-lUTKMFCjCo-",
        "category": "gender-based violence",
        "country": "Nigeria",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Feminists Leading Revolutions: Cross-Movement Sharing",
        "description_en": "Hosted by the Global Fund for Women, this webinar addressed how gender justice movements are responding to this crisis. As COVID-19 has laid bare systemic inequities, feminist solidarity, movement building, and healing justice are needed. The discussion on cross-movement learning, which tactics are working and where, and gender justice storytelling for change was moderated by Leila Hessini, featuring Maria Al Abdeh, Women Now, Syria; Rima Majed, American University of Beirut, Lebanon; Yanar Mohammed, Organization of Women’s Freedom in Iraq; Fahima Hashim, Salmmah Women’s Resource Center in Sudan; and Lina Abou Habib, Collective for Research and Training on Development Action, Lebanon.",
        "title_es": "Seminario web: Feministas liderando revoluciones: intercambio entre movimientos",
        "description_es": "Organizado por el Fondo Mundial para las Mujeres, este seminario web abordó cómo los movimientos de justicia de género están respondiendo a esta crisis. Como COVID-19 ha puesto al descubierto las desigualdades sistémicas, la solidaridad feminista, la construcción de movimientos y la curación de la justicia son necesarias. Leila Hessini, moderada por Maria Al Abdeh, Mujeres Ahora, Siria; Rima Majed, Universidad Americana de Beirut, Líbano; Yanar Mohammed, Organización de La libertad de las mujeres en Iraq; Fahima Hashim, Centro de recursos para mujeres de Salmmah en Sudán; y Lina Abou Habib, Colectivo para la investigación y la capacitación en acciones de desarrollo, Líbano ",


        "link": "https://globalfundforwomen.zoom.us/rec/play/7pZ_Ju6grz83HNyRtgSDCvRxW424J6Os0CgYrqVYzUu2AXdXYQambrcRM-XgbkrdZZvDCEiIBXGtk8PN?continueMode=true&_x_zm_rtaid=y3x16hi6RueX-sd392XBCg.1588108205113.4528629bb8d6bbc571d3546a871741b6&_x_zm_rhtaid=132",
        "category": "SRHR, healthcare, education, economy, childcare, labor, gendered health impacts, gender-based violence",
        "country": "Middle East and North Africa",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Covid-19’s Effect on South African Farm Workers",
        "description_en": "Hosted by PLAAS with Women on Farms, Nkuzi development Association and CSAAWU",
        "title_es": "Seminario web: el efecto de Covid-19 en los trabajadores agrícolas sudafricanos",
        "description_es": "Organizado por PLAAS con Women on Farms, Nkuzi Development Association y CSAAWU",


        "link": "https://www.plaas.org.za/plaas-webinar-covid-19s-effect-on-south-african-farm-workers/",
        "category": "labor, food",
        "country": "South Africa",
        "month": "5",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Build Back Better: Resilience of Vulnerable Populations and COVID-19",
        "description_en": "Join this WRI webinar to hear from a diverse group of speakers representing vulnerable communities on the frontlines and international aid agencies, along with Global Commission on Adaptation Co-Director and WRI Climate Resilience Practice Director Christina Chan.",
        "title_es": "Seminario web: Reconstruir mejor: resistencia de las poblaciones vulnerables y COVID-19",
        "description_es": "Únase a este seminario web de la IRG para escuchar a un grupo diverso de oradores que representan a comunidades vulnerables en primera línea y agencias de ayuda internacional, junto con la codirectora de la Comisión Global de Adaptación y directora de la Práctica de Resiliencia Climática de la IRG, Christina Chan",


        "link": "https://www.wri.org/events/2020/05/webinar-build-back-better-resilience-vulnerable-populations",
        "category": "economy, democratic institutions",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "COVID-19 in the Age of Extractivism and the Care economy – Voices From the South",
        "description_en": "What is the social and economic repercussions of COVID-19 for the global South? A Webinar presented by the the Peoples Dialogue. The Peoples Dialogue is a network of Southern Africa and Latin American formations promoting emancipatory alternatives.",
        "title_es": "COVID-19 en la era del extractivismo y la economía del cuidado - Voces del Sur",
        "description_es": "¿Cuáles son las repercusiones sociales y económicas de COVID-19 para el Sur global? Un seminario web presentado por el Diálogo de los Pueblos. El Diálogo de los Pueblos es una red de formaciones del sur de África y América Latina que promueven alternativas emancipadoras",


        "link": "https://www.youtube.com/watch?v=7TxlwD8_nR4&t=33s",
        "category": "punitive, digital surveillance, economy, childcare, gendered health impacts, misinformation",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Arundhati Roy: 'The Pandemic is a Portal'",
        "description_en": "Join the acclaimed author to discuss this essay and her recent writings on the existential threat posed to Indian democracy by an emboldened Hindu nationalism, India’s new citizenship laws that discriminate against Muslims and marginalized communities and could create a crisis of statelessness on a scale previously unknown, and the meaning of freedom in a world of growing authoritarianism.",
        "title_es": "Arundhati Roy: 'La pandemia es un portal'",
        "description_es": "Únase a la aclamada autora para debatir este ensayo y sus escritos recientes sobre la amenaza existencial planteada a la democracia india por un nacionalismo hindú envalentonado, las nuevas leyes de ciudadanía de la India que discriminan a los musulmanes y las comunidades marginadas y podrían crear una crisis de apatridia en una escala previamente desconocida, y el significado de libertad en un mundo de creciente autoritarismo ",


        "link": "https://www.haymarketbooks.org/blogs/130-arundhati-roy-the-pandemic-is-a-portal",
        "category": "punitive, digital surveillance, economy, childcare, gendered health impacts, misinformation",
        "country": "Global",
        "month": "4",
        "year": "2020"
    },
    {
        "title_en": "Webinar: Covid-19, Decarceration, and Abolition",
        "description_en": "How can we achieve urgently needed decarceration for the millions of people caged in jails, prisons, and immigration detention centers?",
        "title_es": "Seminario web: Covid-19, Decarceration y Abolition",
        "description_es": "¿Cómo podemos lograr el encarcelamiento que se necesita con urgencia para los millones de personas encerradas en cárceles, prisiones y centros de detención de inmigrantes?",


        "link": "https://www.youtube.com/watch?v=lyTOspzD1ZQ",
        "category": "punitive, economy",
        "country": "United States, Canada, Australia",
        "month": "4",
        "year": "2020"
    }
]

online_data.each{|it|
    puts "\n\n\n✨ ✨ ✨ ✨ this is the title: #{it[:title_en]}✨ ✨ ✨ "
    puts "🔺entering the date"
    if it[:month] == "" || !it[:month]
        month = "m"
    else 
        month = it[:month]
    end 

    if it[:year] == ""
        year = "yyyy"
    else
        year = it[:year]
    end

    date = month + "/" + year

    puts "🔺about to create item"
    item = Item.create!(
        title_en: it[:title_en], 
        description_en: it[:description_en], 
        title_es: it[:title_es],
        title_fr: it[:title_fr],
        description_es: it[:description_es],
        description_fr: it[:description_fr],
        link: it[:link], 
        date: date, 
        progressive_id: Progressive.all[-1].id, 
        page_id: Page.all[1].id
    )

    puts "🔺🔺🔺item created: #{item.id}: #{item.title_en}\n\n"

    puts "🔺about to create category item"
    # binding.pry
    if it[:category] != ""
        if it[:category].include?(",") 
            it[:category].split(', ').each{|t| CategoryItem.create!(category_id: Category.find_by(name: t).id, item_id: item.id )
            puts "- created CategoryItem for #{t}!"}
        else
            CategoryItem.create!(category_id: Category.find_by(name: it[:category]).id, item_id: item.id )
        end
    end

    puts "🔺about to create country item"
    # if it[:title] == "Pharmacy brings forward $3 million USD for maternal health"
    #     binding.pry
    # end
    if it[:country] != ""
        if it[:country].include?(",") 
            it[:country].split(', ').map{|t| CountryItem.create!(country_id: Country.find_by(name: t).id, item_id: item.id )
            puts "- created CountryItem for #{t}!"}
        else
            CountryItem.create!(country_id: Country.find_by(name: it[:country]).id, item_id: item.id )
        end
    end

    puts "/n/n/n/n✅ ✅ ✅ ✅  #{item.title_en} is alive ✅ ✅ ✅ ✅ "

}

resources_data = [
#     {
#         "title_en": "COVID-19: the gendered impacts of the outbreak",
#         "description_en": "Outlines to ways the extent to which disease outbreaks affect women and men differently.",
        
# "title_fr": "COVID-19: les impacts sexospécifiques de l'épidémie",
# "description_fr": "Indique dans quelle mesure les épidémies affectent différemment les femmes et les hommes.",
#         "titleses": "COVID-19: los impactos de género del brote",
#         "descriptionses": "Describe las formas en que los brotes de enfermedades afectan a mujeres y hombres de manera diferente",


#         "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30526-2/fulltext",
#         "country": "Global",
#         "category": "gendered health impacts",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Covid-19 responses: Why Femimist leadership matters",
#         "description_en": "Compares Global leadership from men and women leaders at this time",
        
# "title_fr": "Réponses Covid-19: Pourquoi le leadership féministe est important",
# "description_fr": "compare le leadership mondial des hommes et des femmes leaders en ce moment",
#         "titleses": "Respuestas de Covid-19: Por qué es importante el liderazgo feminista",
#         "descriptionses": "Compara el liderazgo global de hombres y mujeres líderes en este momento",


#         "link": "https://www.lowyinstitute.org/the-interpreter/covid-19-responses-why-feminist-leadership-matters-crisis",
#         "country": "Asia-Pacific",
#         "category": "gendered health impacts, gender-based violence",
#         "type": "feminist statement or analysis, organizing tool"
#     },
#     {
#         "title_en": "Gender Equality and Addressing(GBV) and COVID-19 Prevention, Protection and Response.",
#         "description_en": "The protection and promotion of the rights of women and girls should be prioritized in the face of Covid19",
        
# "title_fr": "Égalité des sexes et adressage (GBV) et COVID-19 Prévention, protection et réponse.",
# "description_fr": "La protection et la promotion des droits des femmes et des filles devraient être une priorité face à Covid19",
#         "titleses": "Igualdad de género y direccionamiento (GBV) y prevención, protección y respuesta de COVID-19",
#         "descriptionses": "La protección y la promoción de los derechos de las mujeres y las niñas deben priorizarse frente a Covid19",


#         "link": "https://www.unfpa.org/resources/gender-equality-and-addressing-gender-based-violence-gbv-and-coronavirus-disease-covid-19",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis, organizing tool"
#     },
#     {
#         "title_en": "Feminist Statement on Covid-19 Policy Making",
#         "description_en": "A call on governments to recall and act in accordance with human rights standards in their response to Covid-19",
        
# "title_fr": "Déclaration féministe sur l'élaboration des politiques de Covid-19",
# "description_fr": "Un appel aux gouvernements pour qu'ils se souviennent des normes relatives aux droits de l'homme et agissent conformément à ces normes dans leur réponse à Covid-19",
#         "titleses": "Declaración feminista sobre la formulación de políticas de Covid-19",
#         "descriptionses": "Un llamado a los gobiernos para que retiren y actúen de acuerdo con las normas de derechos humanos en su respuesta a Covid-19",


#         "link": "https://drive.google.com/file/d/10zH71NOzvo85MfJTTz8yTIsvoR5lU5iQ/view",
#         "country": "Global",
#         "category": "food, water, gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Global Health Security and Pandemics: COVID-19 and Gender Inequality",
#         "description_en": "General Analysis on the impacts of Covid on genders of all kinds due to social norms and facts",
        
# "title_fr": "Sécurité sanitaire mondiale et pandémies: COVID-19 et inégalité entre les sexes",
# "description_fr": "Analyse générale des impacts de Covid sur les genres de toutes sortes en raison des normes et des faits sociaux",
#         "titleses": "Seguridad sanitaria mundial y pandemias: COVID-19 y desigualdad de género",
#         "descriptionses": "Análisis general sobre los impactos de Covid en géneros de todo tipo debido a normas y hechos sociales",


#         "link": "https://www.youtube.com/watch?v=hc5clpUoKY8&feature=youtu.be",
#         "country": "Global",
#         "category": "healthcare, economy, childcare, labor, race",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19: Laying Down the Groundwork for Recovery with Gender at the Fore",
#         "description_en": "A call to focus on gender implications while working on a path to recovery",
        
# "title_fr": "COVID-19: Jeter les bases de la récupération avec le genre à l'avant-plan",
# "description_fr": "Un appel à se concentrer sur les implications de genre tout en travaillant sur la voie du rétablissement",
#         "titleses": "COVID-19: Sentando las bases para la recuperación con el género en primer plano",
#         "descriptionses": "Una llamada para centrarse en las implicaciones de género mientras se trabaja en un camino hacia la recuperación",


#         "link": "https://msmagazine.com/2020/03/31/covid-19-laying-down-the-groundwork-for-recovery-with-gender-at-the-fore/",
#         "country": "Global",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Women in Global Health Finland pre-launch workshop",
#         "description_en": "Collective Discussion about a plethora of Global policies, resources, and tools for genders provided by and participated by finland",
        
# "title_fr": "Atelier de pré-lancement de Women in Global Health Finland",
# "description_fr": "Discussion collective sur une pléthore de politiques, ressources et outils mondiaux pour les sexes fournis par la Finlande et auxquels elle a participé",
#         "titleses": "Taller previo al lanzamiento de Women in Global Health Finland",
#         "descriptionses": "Debate colectivo sobre una gran cantidad de políticas, recursos y herramientas globales para géneros proporcionados por Finlandia y participados por ellos",


#         "link": "https://www.youtube.com/watch?v=RgkDDLtRw9s",
#         "country": "Finland",
#         "category": "SRHR, race",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "FAMILY-FRIENDLY POLICIES AND OTHER GOOD WORKPLACE PRACTICES IN THE CONTEXT OF COVID-19:",
#         "description_en": "Recommendations made by UNICEF for employers",
        
# "title_fr": "POLITIQUES FAMILIALES ET AUTRES BONNES PRATIQUES EN MILIEU DE TRAVAIL DANS LE CONTEXTE DE COVID-19:",
# "description_fr": "Recommandations faites par l'UNICEF aux employeurs",
#         "titleses": "POLÍTICAS FAMILIARES Y OTRAS BUENAS PRÁCTICAS EN EL LUGAR DE TRABAJO EN EL CONTEXTO DE COVID-19:",
#         "descriptionses": "Recomendaciones hechas por UNICEF para empleadores",


#         "link": "https://www.unwomen.org/-/media/headquarters/attachments/sections/library/publications/2020/family-friendly-policies-and-other-good-workplace-practices-in-the-context-of-covid-19-en.pdf?la=en&vs=4828",
#         "country": "Global",
#         "category": "healthcare, childcare, labor",
#         "type": "organizing tool"
#     },
#     {
#         "title_en": "Buisness and Covid-19: Supporting the Most Vulnerable",
#         "description_en": "A COVID-19 Response Framework for how business can support the most vulnerable",
        
# "title_fr": "Buisness et Covid-19: soutenir les plus vulnérables",
# "description_fr": "Un cadre de réponse COVID-19 pour savoir comment les entreprises peuvent soutenir les plus vulnérables",
#         "titleses": "Buisness and Covid-19: Apoyando a los más vulnerables",
#         "descriptionses": "Un marco de respuesta COVID-19 sobre cómo las empresas pueden apoyar a los más vulnerables",


#         "link": "https://businessfightspoverty.org/articles/covid-19-response-framework/",
#         "country": "United Kingdom",
#         "category": "labor",
#         "type": "organizing tool"
#     },
#     {
#         "title_en": "Q&A: UN Women envisions a more gender-equal post-pandemic society",
#         "description_en": "Interview with Bhatia, deputy executive director at UN Women, about aftermath of Covid in regards to gender equality",
        
# "title_fr": "Questions et réponses: ONU Femmes envisage une société post-pandémique plus soucieuse de l'égalité des sexes",
# "description_fr": "Entretien avec Bhatia, directrice exécutive adjointe d'ONU Femmes, sur les conséquences de Covid en matière d'égalité des sexes",
#         "titleses": "Preguntas y respuestas: ONU Mujeres prevé una sociedad pospandémica más equitativa de género",
#         "descriptionses": "Entrevista con Bhatia, subdirectora ejecutiva de ONU Mujeres, sobre las secuelas de Covid en relación con la igualdad de género",


#         "link": "https://www.devex.com/news/q-a-un-women-envisions-a-more-gender-equal-post-pandemic-society-96929",
#         "country": "Global",
#         "category": "healthcare, economy, childcare, labor",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "Why WHO needs a feminist economic agenda",
#         "description_en": "Analysis on disparities of work-force and decision making viewing gender, how healthcare and economics are interlinked",
        
# "title_fr": "Pourquoi l'OMS a besoin d'un programme économique féministe",
# "description_fr": "Analyse des disparités de la main-d'œuvre et de la prise de décision concernant le genre, comment les soins de santé et l'économie sont liés",
#         "titleses": "Por qué la OMS necesita una agenda económica feminista",
#         "descriptionses": "Análisis sobre las disparidades de la fuerza laboral y la toma de decisiones en relación con el género, cómo se relacionan la salud y la economía",


#         "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30110-0/fulltext",
#         "country": "Global",
#         "category": "healthcare, economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Breaking Down Gendered Power Norms during the Pandemic and Beyond",
#         "description_en": "Suggestions on how to transform the current emegrency into an opportunity to restructure gender norms.",
        
# "title_fr": "Briser les normes de pouvoir sexospécifiques pendant la pandémie et au-delà",
# "description_fr": "Suggestions sur la façon de transformer l'urgence actuelle en une opportunité de restructurer les normes de genre.",
#         "titleses": "Romper las normas de poder de género durante la pandemia y más allá",
#         "descriptionses": "Sugerencias sobre cómo transformar la moneda actual en una oportunidad para reestructurar las normas de género",


#         "link": "https://www.Globalpolicyjournal.com/blog/02/04/2020/breaking-down-gendered-power-norms-during-pandemic-and-beyond",
#         "country": "Ireland",
#         "category": "education",
#         "type": "feminist statement or analysis, organizing tool"
#     },
#     {
#         "title_en": "Women’s Needs and Gender Equality in Lebanon’s COVID-19 Response",
#         "description_en": "Observation about needs and impacts on womens health",
        
# "title_fr": "Besoins des femmes et égalité des sexes dans la réponse COVID-19 du Liban",
# "description_fr": "Observation des besoins et des impacts sur la santé des femmes",
#         "titleses": "Necesidades de las mujeres e igualdad de género en la respuesta COVID-19 del Líbano",
#         "descriptionses": "Observación sobre necesidades e impactos en la salud de las mujeres",


#         "link": "https://arabstates.unwomen.org/en/digital-library/publications/2020/03/gender-equality-in-lebanon-covid-19-response",
#         "country": "Global",
#         "category": "healthcare, economy, gendered health impacts",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "UN backs Global action to end violence against women/girls",
#         "description_en": "UN action and initiatives with partners to provide funds, support civil society organisations",
        
# "title_fr": "L'ONU soutient une action mondiale pour mettre fin à la violence contre les femmes / les filles",
# "description_fr": "Action et initiatives des Nations Unies avec des partenaires pour fournir des fonds, soutenir les organisations de la société civile",
#         "titleses": "La ONU respalda la acción mundial para poner fin a la violencia contra las mujeres / niñas",
#         "descriptionses": "Acción e iniciativas de la ONU con socios para proporcionar fondos, apoyar organizaciones de la sociedad civil",


#         "link": "https://news.un.org/en/story/2020/04/1061132",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "COVID-19 set to worsen gender inequalities in Pakistan",
#         "description_en": "An article generally discussing the report released by the Ministiry of Human Rights and UN Women on the adverse effects COVID-19 has on gender inequalities",
        
# "title_fr": "COVID-19 devrait aggraver les inégalités entre les sexes au Pakistan",
# "description_fr": "Un article traitant généralement du rapport publié par le Ministère des droits de l'homme et ONU Femmes sur les effets néfastes du COVID-19 sur les inégalités entre les sexes",
#         "titleses": "COVID-19 configurado para empeorar las desigualdades de género en Pakistán",
#         "descriptionses": "Un artículo que generalmente discute el informe publicado por el Ministerio de Derechos Humanos y ONU Mujeres sobre los efectos adversos que COVID-19 tiene sobre las desigualdades de género",


#         "link": "https://tribune.com.pk/story/2197065/1-covid-19-worsen-gender-inequalities-pakistan/",
#         "country": "Pakistan",
#         "category": "healthcare, education, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Gendered Impact and Implications of COVID-19 in Pakistan",
#         "description_en": "A comprehensive report on the negative impacts of COVID-19 on gender inequality as well as policy recommendations.",
        
# "title_fr": "Impact sexospécifique et implications de COVID-19 au Pakistan",
# "description_fr": "Un rapport complet sur les impacts négatifs de COVID-19 sur l'inégalité entre les sexes ainsi que des recommandations politiques.",
#         "titleses": "Impacto e implicaciones de género de COVID-19 en Pakistán",
#         "descriptionses": "Un informe exhaustivo sobre los impactos negativos de COVID-19 en la desigualdad de género, así como las recomendaciones de política",


#         "link": "https://www2.unwomen.org/-/media/field%20office%20eseasia/docs/publications/2020/04/pk-gendered-impact-and-implications-of-covid.pdf?la=en&vs=2138",
#         "country": "Pakistan",
#         "category": "healthcare, education, labor, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Home isn't a safe space for victims of domestic violence",
#         "description_en": "An article featuring womens' real life narratives and how they're suffering more domestic violence under the lockdown",
        
# "title_fr": "Le domicile n'est pas un espace sûr pour les victimes de violence domestique",
# "description_fr": "Un article présentant les récits des femmes dans la vie réelle et comment elles subissent plus de violence domestique sous le bouclage",
#         "titleses": "El hogar no es un espacio seguro para las víctimas de violencia doméstica",
#         "descriptionses": "Un artículo con narraciones de la vida real de las mujeres y cómo están sufriendo más violencia doméstica bajo el cierre",


#         "link": "https://images.dawn.com/news/1184957",
#         "country": "Pakistan",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Strategic preparedness and response plan for the new coronavirus",
#         "description_en": "Plan outlines the COVID-19 public health measures international community can provide (updated regularly)",
        
# "title_fr": "Plan stratégique de préparation et de réponse au nouveau coronavirus",
# "description_fr": "Le plan décrit les mesures de santé publique COVID-19 que la communauté internationale peut fournir (mises à jour régulièrement)",
#         "titleses": "Plan estratégico de preparación y respuesta para el nuevo coronavirus",
#         "descriptionses": "El plan describe las medidas de salud pública de COVID-19 que la comunidad internacional puede proporcionar (actualizado regularmente)",


#         "link": "https://www.who.int/publications-detail/strategic-preparedness-and-response-plan-for-the-new-coronavirus",
#         "country": "Global",
#         "category": "healthcare",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "Gender and the Coronavirus Outbreak",
#         "description_en": "Questions (and answers) that need to be asked for a gendered approach to the pandemic",
        
# "title_fr": "Genre et épidémie de coronavirus",
# "description_fr": "Questions (et réponses) qui doivent être posées pour une approche sexospécifique de la pandémie",
#         "titleses": "Género y el brote de coronavirus",
#         "descriptionses": "Preguntas (y respuestas) que deben formularse para un enfoque de género de la pandemia",


#         "link": "https://www.thinkGlobalhealth.org/article/gender-and-coronavirus-outbreak",
#         "country": "Global",
#         "category": "SRHR, healthcare, economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Playing the Long Game: How Gender Lens Can Mitigate Harm",
#         "description_en": "Proposals to mitigate the disproportional harm, caused by COVID-19, on lives of women&girls",
        
# "title_fr": "Jouer au long jeu: comment l'objectif de genre peut atténuer les préjudices",
# "description_fr": "Propositions visant à atténuer les dommages disproportionnés causés par le COVID-19 à la vie des femmes et des filles",
#         "titleses": "Jugar el juego largo: cómo las lentes de género pueden mitigar el daño",
#         "descriptionses": "Propuestas para mitigar el daño desproporcionado, causado por COVID-19, en la vida de mujeres y niñas",


#         "link": "https://www.cgdev.org/blog/playing-long-game-how-gender-lens-can-mitigate-harm-caused-pandemics",
#         "country": "Global",
#         "category": "healthcare, education, economy, childcare, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Why gender matters in impact and recovery from Covid-19",
#         "description_en": "Overview of consequences of COVID-19 and the pandemic on women and girls",
        
# "title_fr": "Pourquoi le genre est important dans l'impact et le rétablissement de Covid-19",
# "description_fr": "Aperçu des conséquences de COVID-19 et de la pandémie sur les femmes et les filles",
#         "titleses": "Por qué el género es importante en la impactante recuperación de Covid-19",
#         "descriptionses": "Resumen de las consecuencias de COVID-19 y la pandemia en mujeres y niñas",


#         "link": "https://www.lowyinstitute.org/the-interpreter/why-gender-matters-impact-and-recovery-covid-19",
#         "country": "Global",
#         "category": "SRHR, healthcare, economy, childcare, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "‘Gender blind’ coronavirus policies could hinder disease fight",
#         "description_en": "Views from experts: A gendered analysis is key to mitigating the effects of COVID-19",
        
# "title_fr": "Les politiques sur les coronavirus aveugles au genre pourraient entraver la lutte contre la maladie",
# "description_fr": "Opinions d'experts: une analyse sexospécifique est essentielle pour atténuer les effets de COVID-19",
#         "titleses": "Las políticas de coronavirus ciegas al género podrían dificultar la lucha contra la enfermedad",
#         "descriptionses": "Vistas de expertos: un análisis de género es clave para mitigar los efectos de COVID-19",


#         "link": "https://www.scidev.net/Global/gender/news/gender-blind-coronavirus-policies-could-hinder-disease-fight.html?__cf_chl_jschl_tk__=4addd31e78Organizing Toola952dOrganizing Tool5bdd997f21454bpolicy or lawd6290-1587128145-0-AbI3O-UW3KSaVutmIG52NgYwAfEhoNL-oXHJ62HFyLL7TIivMJ1lWj4ph2l7vG2_CwTpcJ80QrDC0npb-A5e8qYVAXrMQqPTNCj5JXIOIkZoxZLwgMjw3PNddOVNbLCwnGDk9d6X4PAR4-GfK5RmO6qw1xkldF8uBMx10e0OcyC7oe09DcTLx49EconomyWcQ8L6eG0LHIcLJaaxns_SOkP43QNhZZmvkLuDdR5Ud3kCNTKHQhHealthcareNigQPs3VASkm-RUnJ07sFneFF4V30tXhSaImutual aid resourceli2I4MeSp2Ug445_cpDbSRHRPF6xxNX608-sO241ECRmcHfF6sAvnjO3_za9DCquufc3nXo6zRW0VhrfKrJ02tpUiDy0-dhxQEi2R2OSLWYAKKow",
#         "country": "Global",
#         "category": "healthcare, childcare, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Why Women May Face a Greater Risk of Catching Coronavirus",
#         "description_en": "Women’s roles within society may cause them to be disproportionally affected by COVID-19",
        
# "title_fr": "Pourquoi les femmes risquent-elles davantage de contracter le coronavirus",
# "description_fr": "Les rôles des femmes dans la société peuvent les affecter de manière disproportionnée avec COVID-19",
#         "titleses": "Por qué las mujeres pueden enfrentar un mayor riesgo de contraer coronavirus",
#         "descriptionses": "Los roles de las mujeres dentro de la sociedad pueden hacer que se vean desproporcionadamente afectados por COVID-19",


#         "link": "https://www.nytimes.com/2020/03/12/us/women-coronavirus-greater-risk.html",
#         "country": "Global",
#         "category": "healthcare, education, gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 is not gender neutral",
#         "description_en": "Analysis on why the burden of the disease will largely be felt by women",
        
# "title_fr": "COVID-19 n'est pas neutre en termes de genre",
# "description_fr": "Analyse des raisons pour lesquelles le fardeau de la maladie sera largement ressenti par les femmes",
#         "titleses": "COVID-19 no es neutral en cuanto al género",
#         "descriptionses": "Análisis sobre por qué las mujeres sentirán en gran medida la carga de la enfermedad",


#         "link": "http://www.broadagenda.com.au/home/covid-19-is-not-gender-neutral/",
#         "country": "Global",
#         "category": "healthcare, economy, childcare,",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Coronavirus fallout may be worse for women. Here's why",
#         "description_en": "Women disproportionately affected due to majority in healthcare professions, childcare and unpaid care work responsibilities",
        
# "title_fr": "Les retombées du coronavirus peuvent être pires pour les femmes. Voici pourquoi",
# "description_fr": "Les femmes sont touchées de manière disproportionnée en raison de la majorité dans les professions de la santé, la garde d'enfants et les responsabilités professionnelles non rémunérées",
#         "titleses": "Las consecuencias del coronavirus pueden ser peores para las mujeres. He aquí por qué",
#         "descriptionses": "Mujeres desproporcionadamente afectadas debido a la mayoría en profesiones de atención médica, cuidado de niños y responsabilidades laborales no remuneradas",


#         "link": "https://www.weforum.org/agenda/2020/03/the-coronavirus-fallout-may-be-worse-for-women-than-men-heres-why/",
#         "country": "Global",
#         "category": "healthcare, economy, childcare",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Coronavirus: Five ways virus upheaval is hitting women in Asia",
#         "description_en": "Five ways that women in Asia are bearing the brunt of the upheaval",
        
# "title_fr": "Coronavirus: cinq façons dont le bouleversement du virus frappe les femmes en Asie",
# "description_fr": "Cinq façons dont les femmes en Asie supportent le poids du bouleversement",
#         "titleses": "Coronavirus: la agitación del virus en cinco formas está afectando a las mujeres en Asia",
#         "descriptionses": "Cinco formas en que las mujeres en Asia están llevando la peor parte de la agitación",


#         "link": "https://www.bbc.com/news/world-asia-51705199",
#         "country": "Asia-Pacific",
#         "category": "healthcare, education, economy, childcare, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Why the Coronavirus Outbreak Could Hit Women Hardest",
#         "description_en": "Women’s realities in United States, which will put them in more vulnerable state against COVID-19",
        
# "title_fr": "Pourquoi l'épidémie de coronavirus pourrait-elle toucher le plus durement les femmes",
# "description_fr": "Les réalités des femmes aux États-Unis, ce qui les mettra dans une situation plus vulnérable contre COVID-19",
#         "titleses": "Por qué el brote de coronavirus podría afectar más a las mujeres",
#         "descriptionses": "La realidad de las mujeres en Estados Unidos, que las colocará en un estado más vulnerable contra COVID-19",


#         "link": "https://time.com/5801897/women-affected-covid-19/",
#         "country": "United States",
#         "category": "healthcare, economy, childcare, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Covid-19 puzzles that scientists are still trying to answer",
#         "description_en": "Possible reasons why COVID-19 is seen less in children, and why women die less",
        
# "title_fr": "Des énigmes Covid-19 auxquelles les scientifiques tentent toujours de répondre",
# "description_fr": "Raisons possibles pour lesquelles COVID-19 est moins observé chez les enfants et pourquoi les femmes meurent moins",
#         "titleses": "acertijos de Covid-19 que los científicos todavía están tratando de responder",
#         "descriptionses": "Posibles razones por las cuales COVID-19 se ve menos en niños y por qué las mujeres mueren menos",


#         "link": "https://www.theguardian.com/world/2020/mar/14/answering-the-coronavirus-puzzles-baby-covid-19",
#         "country": "China, United Kingdom",
#         "category": "gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Needs of female medical workers overlooked in corona virus fight",
#         "description_en": "Advocates work to aid overlooked menstruation needs of female medical workers, put women on agenda",
        
# "title_fr": "Les besoins des travailleuses médicales négligés dans la lutte contre le virus corona",
# "description_fr": "Les avocats plaident en faveur des besoins de menstruation négligés des travailleuses médicales, mettent les femmes à l'ordre du jour",
#         "titleses": "Necesidades de trabajadoras médicas ignoradas en la lucha contra el virus de la corona",
#         "descriptionses": "Los defensores trabajan para ayudar a las necesidades de menstruación pasadas por alto de las trabajadoras médicas, poner a las mujeres en la agenda",


#         "link": "https://www.inkstonenews.com/health/coronavirus-womens-advocates-ship-period-products-center-outbreak/article/3050653",
#         "country": "China",
#         "category": "SRHR, healthcare, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Call for Global Evidence on Gender and COVID-19",
#         "description_en": "Male deaths are higher, thus a gendered sensitive approach to COVID-19 needed",
        
# "title_fr": "Appel à des preuves mondiales sur le genre et le COVID-19",
# "description_fr": "Les décès masculins sont plus élevés, une approche sensible au genre de COVID-19 est donc nécessaire",
#         "titleses": "Llamado a la evidencia mundial sobre género y COVID-19",
#         "descriptionses": "Las muertes masculinas son más altas, por lo tanto, se necesita un enfoque sensible al género para COVID-19",


#         "link": "https://www.menshealthforum.org.uk/news/call-Global-evidence-gender-and-covid-19",
#         "country": "Global",
#         "category": "gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Attention to women’s needs, leadership will strengthen COVID-19 response",
#         "description_en": "UNWOMEN’s recommendations for placing women’s needs, leadership at the heart of response to COVID-19",
        
# "title_fr": "Attention aux besoins des femmes, le leadership renforcera la réponse de COVID-19",
# "description_fr": "Recommandations d'UNWOMEN pour placer les besoins des femmes, le leadership au cœur de la réponse à COVID-19",
#         "titleses": "Atención a las necesidades de las mujeres, el liderazgo fortalecerá la respuesta COVID-19",
#         "descriptionses": "Recomendaciones de UNWOMEN para ubicar las necesidades de las mujeres, el liderazgo en el centro de la respuesta a COVID-19",


#         "link": "https://www.unwomen.org/en/news/stories/2020/3/news-womens-needs-and-leadership-in-covid-19-response",
#         "country": "Global",
#         "category": "SRHR, healthcare, education, economy, childcare, labor, gendered health impacts, gender-based violence, disability",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "How Will COVID19 Affect Women&Girls in Low&Middle Income Countries?",
#         "description_en": "Summary of Lancet article ““COVID-19: the gendered impacts of the outbreak” and additional concerns",
        
# "title_fr": "Comment COVID19 affectera-t-il les femmes et les filles dans les pays à revenu faible et intermédiaire?",
# "description_fr": "Résumé de l'article du Lancet" "COVID-19: les impacts sexospécifiques de l'épidémie et préoccupations supplémentaires",
#         "titleses": "¿Cómo afectará COVID19 a las mujeres y las niñas en los países de bajos y medianos ingresos?",
#         "descriptionses": "Resumen del artículo de Lancet" "COVID-19: los impactos de género del brote y preocupaciones adicionales",


#         "link": "https://www.cgdev.org/blog/how-will-covid-19-affect-women-and-girls-low-and-middle-income-countries",
#         "country": "Global",
#         "category": "SRHR, healthcare, education, childcare, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Coronavirus Is a Disaster for Feminism",
#         "description_en": "Pandemic magnifies all existing inequalities. Across the world, women’s independence will be a silent victim.",
        
# "title_fr": "Le coronavirus est une catastrophe pour le féminisme",
# "description_fr": "Une pandémie amplifie toutes les inégalités existantes. Partout dans le monde, l'indépendance des femmes sera une victime silencieuse.",
#         "titleses": "El coronavirus es un desastre para el feminismo",
#         "descriptionses": "La pandemia aumenta todas las desigualdades existentes. En todo el mundo, la independencia de las mujeres será una víctima silenciosa",


#         "link": "https://www.theatlantic.com/international/archive/2020/03/feminism-womens-rights-coronavirus-covid19/608302/",
#         "country": "Global",
#         "category": "economy, childcare, labor, gendered health impacts, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Ideas for Pro-Poor and Pro-Women Approach to COVID19",
#         "description_en": "How local governments can respond, considering economic and gender inequalities, with a pro-poor, pro-women approach",
        
# "title_fr": "Idées pour une approche pro-pauvres et pro-femmes de COVID19",
# "description_fr": "Comment les gouvernements locaux peuvent réagir, compte tenu des inégalités économiques et de genre, avec une approche en faveur des pauvres et des femmes",
#         "titleses": "Ideas para el enfoque pro-pobres y pro-mujeres de COVID19",
#         "descriptionses": "Cómo pueden responder los gobiernos locales, considerando las desigualdades económicas y de género, con un enfoque en favor de los pobres y en favor de las mujeres",


#         "link": "https://asia.oxfam.org/latest/blogs/ideas-pro-poor-and-pro-women-approach-covid-19",
#         "country": "Philippines",
#         "category": "punitive, healthcare, economy, childcare, labor, water, food, disability",
#         "type": "organizing tool"
#     },
#     {
#         "title_en": "Women's domestic burden just got heavier with the coronavirus",
#         "description_en": "Women  find themselves needing to step up their roles at home as the coronavirus spreads",
        
# "title_fr": "Le fardeau domestique des femmes vient de s'alourdir avec le coronavirus",
# "description_fr": "Les femmes doivent intensifier leur rôle à la maison à mesure que le coronavirus se propage",
#         "titleses": "La carga doméstica de las mujeres se volvió más pesada con el coronavirus",
#         "descriptionses": "Las mujeres se ven obligadas a intensificar sus roles en casa a medida que se propaga el coronavirus",


#         "link": "https://www.theguardian.com/us-news/2020/mar/16/womens-coronavirus-domestic-burden?CMP=Share_AndroidApp_Gmail#maincontent",
#         "country": "Global",
#         "category": "economy, childcare, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID19 demands we pay attention to who does care work",
#         "description_en": "Organizations, governments, and communities must do what it takes to support women who provide care",
        
# "title_fr": "COVID19 exige que nous prêtions attention à qui s'occupe des soins",
# "description_fr": "Les organisations, les gouvernements et les communautés doivent faire ce qu'il faut pour soutenir les femmes qui dispensent des soins",
#         "titleses": "COVID19 exige que prestemos atención a quién cuida el trabajo",
#         "descriptionses": "Las organizaciones, los gobiernos y las comunidades deben hacer lo que sea necesario para apoyar a las mujeres que brindan atención",


#         "link": "https://promundoGlobal.org/covid-19-demands-that-we-pay-attention-to-who-does-the-care-work-and-how-we-support-them/#",
#         "country": "Global",
#         "category": "healthcare, economy, childcare, labor",
#         "type": "feminist statement or analysis",
#         "undefined": "(West, East, Southern)"
#     },
#     {
#         "title_en": "Impact of COVID-19 Pandemic on Violence against Women and Girls",
#         "description_en": "Emerging evidence on GBV from several countries as well as lessons learned from similar epidemics",
        
# "title_fr": "Impact de la pandémie de COVID-19 sur la violence contre les femmes et les filles",
# "description_fr": "Données émergentes sur la violence basée sur le genre provenant de plusieurs pays ainsi que les enseignements tirés d'épidémies similaires",
#         "titleses": "Impacto de la pandemia de COVID-19 en la violencia contra las mujeres y las niñas",
#         "descriptionses": "Evidencia emergente sobre VG de varios países, así como lecciones aprendidas de epidemias similares",


#         "link": "http://www.sddirect.org.uk/media/1881/vawg-helpdesk-284-covid-19-and-vawg.pdf",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "scientific data",
#         "undefined": "(West, Central) "
#     },
#     {
#         "title_en": "Pandemics and Violence Against Women and Children (VAW/C)",
#         "description_en": "Working Paper documenting pathways linking pandemics and VAW/C as well as policy and program responses",
        
# "title_fr": "Pandémies et violence à l'égard des femmes et des enfants (VAW / C)",
# "description_fr": "Working Paper documentant les voies reliant les pandémies et la violence à l'égard des femmes et les femmes ainsi que les réponses des politiques et des programmes",
#         "titleses": "Pandemias y violencia contra mujeres y niños (VAW / C)",
#         "descriptionses": "Documento de trabajo que documenta las vías que vinculan las pandemias y la violencia contra las mujeres / C, así como las respuestas de políticas y programas",


#         "link": "https://www.cgdev.org/publication/pandemics-and-violence-against-women-and-children",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "scientific data, feminist statement or analysis",
#         "undefined": " (Scandinavia/Eastern Europe/ Russia)"
#     },
#     {
#         "title_en": "COVID-19: Reducing the risk of Infection might increase the risk of intimate partner violence",
#         "description_en": "Includes a short listing of immediate actions needed to mitigate against increases in IPV",
        
# "title_fr": "COVID-19: Réduire le risque d'infection pourrait augmenter le risque de violence entre partenaires intimes",
# "description_fr": "Comprend une courte liste des actions immédiates nécessaires pour atténuer les augmentations du VPI",
#         "titleses": "COVID-19: Reducir el riesgo de infección podría aumentar el riesgo de violencia de pareja",
#         "descriptionses": "Incluye una breve lista de acciones inmediatas necesarias para mitigar los aumentos de IPV",


#         "link": "https://www.thelancet.com/journals/eclinm/article/PIIS2589-5370(20)30092-4/fulltext",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "COVID-19 and violence against women. What the health sector/system can do",
#         "description_en": "A WHO summary of how health systems can mitigate impacts of violence on women and children during this pandemic",
        
# "title_fr": "COVID-19 et la violence contre les femmes. Ce que le secteur / système de santé peut faire",
# "description_fr": "Un résumé de l'OMS sur la manière dont les systèmes de santé peuvent atténuer les effets de la violence sur les femmes et les enfants pendant cette pandémie",
#         "titleses": "COVID-19 y la violencia contra la mujer. Qué puede hacer el sector / sistema de salud",
#         "descriptionses": "Un resumen de la OMS sobre cómo los sistemas de salud pueden mitigar los impactos de la violencia en mujeres y niños durante esta pandemia",


#         "link": "https://www.who.int/reproductivehealth/publications/emergencies/COVID-19-VAW-full-text.pdf?",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "COVID-19 and family Violence",
#         "description_en": "Webpage with links to resources relating to family violence for victims; family, friends or neighbors; and professionals",
        
# "title_fr": "COVID-19 et la violence familiale",
# "description_fr": "Page Web contenant des liens vers des ressources relatives à la violence familiale pour les victimes; la famille, les amis ou les voisins; et les professionnels",
#         "titleses": "COVID-19 y violencia familiar",
#         "descriptionses": "Página web con enlaces a recursos relacionados con la violencia familiar para víctimas, familiares, amigos o vecinos, y profesionales",


#         "link": "http://www.dvrcv.org.au/help-advice/coronavirus-covid-19-and-family-violence",
#         "country": "Australia",
#         "category": "gender-based violence",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "Women's aid comments on the impact of coronavirus on women and children escaping domestic abuse",
#         "description_en": "Want to see refuge services continue to operate safely and effectively during COVID-19",
        
# "title_fr": "Commentaires de l'aide aux femmes sur l'impact du coronavirus sur les femmes et les enfants qui échappent à la violence domestique",
# "description_fr": "Vous voulez que les services de refuge continuent de fonctionner de manière sûre et efficace pendant COVID-19",
#         "titleses": "Comentarios de ayuda para mujeres sobre el impacto del coronavirus en mujeres y niños que escapan del abuso doméstico",
#         "descriptionses": "Desea ver que los servicios de refugio continúen operando de manera segura y efectiva durante COVID-19",


#         "link": "https://www.womensaid.org.uk/womens-aid-comments-on-the-impact-of-coronavirus-on-women-and-children-escaping-domestic-abuse/ ",
#         "country": "United Kingdom, Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Home Quarantine:Confinement with the Abuser?",
#         "description_en": "COVID-19 confinement, unemployment associated with increase in domestic violence, proposals of Brasilian policies to mitigate",
        
# "title_fr": "Home Quarantine: Confinement with the Abuser?",
# "description_fr": "L'enfermement de COVID-19, le chômage associé à l'augmentation de la violence domestique, les propositions de politiques brésiliennes pour atténuer",
#         "titleses": "Cuarentena doméstica: ¿Reclusión con el abusador?",
#         "descriptionses": "encierro de COVID-19, desempleo asociado con el aumento de la violencia doméstica, propuestas de políticas brasileñas para mitigar",


#         "link": "http://multiplier-effect.org/home-quarantine-confinement-with-the-abuser/",
#         "country": "Brazil",
#         "category": "gender-based violence",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "Five ways governments are responding to violence against women and children during COVID-19",
#         "description_en": "UNICEF blog: A non-exhaustive list of government responses to increased violence against women and children during COVID-19 crisis.",
        
# "title_fr": "Cinq façons dont les gouvernements réagissent à la violence contre les femmes et les enfants pendant COVID-19",
# "description_fr": "Blog de l'UNICEF: une liste non exhaustive des réponses du gouvernement à l'augmentation de la violence contre les femmes et les enfants pendant la crise COVID-19.",
#         "titleses": "Cinco formas en que los gobiernos están respondiendo a la violencia contra las mujeres y los niños durante COVID-19",
#         "descriptionses": "Blog de UNICEF: una lista no exhaustiva de respuestas gubernamentales al aumento de la violencia contra las mujeres y los niños durante la crisis de COVID-19",


#         "link": "https://blogs.unicef.org/evidence-for-action/five-ways-governments-are-responding-to-violence-against-women-and-children-during-covid-19/ ",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Coronavirus doesn't cause Men's violence Against Women",
#         "description_en": "Compares the number of women killed in the United Kingdom during 3 week period over several years",
        
# "title_fr": "Le coronavirus ne cause pas la violence des hommes contre les femmes",
# "description_fr": "Compare le nombre de femmes tuées au Royaume-Uni pendant une période de 3 semaines sur plusieurs années",
#         "titleses": "El coronavirus no causa la violencia de los hombres contra las mujeres",
#         "descriptionses": "Compara el número de mujeres asesinadas en el Reino Unido durante un período de 3 semanas durante varios años",


#         "link": "https://kareningalasmith.com/2020/04/15/coronavirus-doesnt-cause-mens-violence-against-women/",
#         "country": "United Kingdom",
#         "category": "gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "COVID-19: A Gender Lens: Protecting sexual and reproductive health and rights, and promoting gender equality",
#         "description_en": "Technical brief from UNFPA on gendered risks during pandemic",
        
# "title_fr": "COVID-19: Une perspective de genre: protéger la santé et les droits sexuels et reproductifs et promouvoir l'égalité des sexes",
# "description_fr": "Note technique de l'UNFPA sur les risques liés au genre pendant la pandémie",
#         "titleses": "COVID-19: Una lente de género: Protección de la salud y los derechos sexuales y reproductivos, y promoción de la igualdad de género",
#         "descriptionses": "Informe técnico del UNFPA sobre riesgos de género durante una pandemia",


#         "link": "https://turkey.unfpa.org/en/publications/covid-19-gender-lens-1",
#         "country": "Global",
#         "category": "SRHR, healthcare, economy, childcare, gendered health impacts, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Women This Week: The Gendered Effects of COVID-19",
#         "description_en": "Blog post on pandemic's gendered impacts on DV, access to health services, and job insecurity",
        
# "title_fr": "Women This Week: The Gendered Effects of COVID-19",
# "description_fr": "Article de blog sur les impacts sexospécifiques de la pandémie sur la DV, l'accès aux services de santé et la précarité d'emploi",
#         "titleses": "Mujeres esta semana: los efectos de género de COVID-19",
#         "descriptionses": "Publicación de blog sobre los impactos de género de la pandemia en DV, acceso a servicios de salud e inseguridad laboral",


#         "link": "https://www.cfr.org/blog/women-week-gendered-effects-covid-19",
#         "country": "Global",
#         "category": "SRHR, healthcare, economy",
#         "type": "observed response"
#     },
#     {
#         "title_en": "COVID-19, Domestic abuse and violence: Where do Indian Women stand?",
#         "description_en": "General analysis of dimensions of domestic violence in India, includes uselessness of the law",
        
# "title_fr": "COVID-19, Violence domestique et violence: où en sont les femmes indiennes?",
# "description_fr": "L'analyse générale des dimensions de la violence domestique en Inde, inclut l'inutilité de la loi",
#         "titleses": "COVID-19, Abuso doméstico y violencia: ¿Dónde se encuentran las mujeres indias?",
#         "descriptionses": "El análisis general de las dimensiones de la violencia doméstica en India incluye la inutilidad de la ley",


#         "link": "https://www.epw.in/engage/article/covid-19-domestic-abuse-and-violence-where-do#.Xps-Edkwo8U.twitter",
#         "country": "India",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "The EU-UN Spotlight Inititative in Nigeria is working against gender-based violence during the COVID-19",
#         "description_en": "Brief UNESCO GBV awareness page with Nigerian Hotline information, includes short awareness video",
        
# "title_fr": "L'initiative Spotlight UE-ONU au Nigeria lutte contre la violence basée sur le genre pendant le COVID-19",
# "description_fr": "Brève page de sensibilisation de l'UNESCO sur la violence basée sur le genre contenant des informations sur la hotline nigériane, comprenant une courte vidéo de sensibilisation",
#         "titleses": "La Iniciativa Spotlight UE-ONU en Nigeria está trabajando contra la violencia de género durante el COVID-19",
#         "descriptionses": "Breve página de concientización sobre violencia de género en la UNESCO con información de la línea directa nigeriana, incluye un breve video de concientización",


#         "link": "https://en.unesco.org/news/eu-spotlight-initiative-nigeria-working-against-gender-based-violence-during-covid-19",
#         "country": "Nigeria",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Tools and Resources page of Gender-Based Violence Area of Responsibility",
#         "description_en": "Search webpage for case study/best practices/examples from the field, includes guidance notes",
        
# "title_fr": "Page Outils et ressources du domaine de responsabilité en matière de violence basée sur le genre",
# "description_fr": "Recherche sur la page Web d'études de cas / meilleures pratiques / exemples sur le terrain, comprend des notes d'orientation",
#         "titleses": "Página de herramientas y recursos del área de responsabilidad de violencia de género",
#         "descriptionses": "Buscar en la página web estudios de caso / mejores prácticas / ejemplos del campo, incluye notas de orientación",


#         "link": "https://gbvaor.net/thematic-areas?term_node_tid_depth_1%5scientific data21%5D=121",
#         "country": "Global, Mozambique, Sudan",
#         "category": "gender-based violence",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "COVID-19: Resources to address Gender-based Violence Risks",
#         "description_en": "Guidelines for Intergrating Gender-Based Violence Interventions in Humanitarian Action, as well as other documents and guides",
        
# "title_fr": "COVID-19: Ressources pour lutter contre les risques de violence sexiste",
# "description_fr": "Lignes directrices pour l'intégration des interventions contre la violence sexiste dans l'action humanitaire, ainsi que d'autres documents et guides",
#         "titleses": "COVID-19: Recursos para abordar los riesgos de violencia de género",
#         "descriptionses": "Directrices para integrar intervenciones de violencia de género en la acción humanitaria, así como otros documentos y guías",


#         "link": "https://gbvguidelines.org/cctopic/covid-19/",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "OPERATION 50/50: Women's Perspectives Save Lives",
#         "description_en": "List of women experts who are working in health security",
        
# "title_fr": "OPÉRATION 50/50: Les perspectives des femmes sauvent des vies",
# "description_fr": "Liste des femmes expertes travaillant dans le domaine de la sécurité sanitaire",
#         "titleses": "OPERACIÓN 50/50: Las perspectivas de las mujeres salvan vidas",
#         "descriptionses": "Lista de mujeres expertas que trabajan en seguridad sanitaria",


#         "link": "https://www.womeningh.org/operation-50-50",
#         "country": "Global",
#         "category": "healthcare",
#         "type": "organizing tool"
#     },
#     {
#         "title_en": "Elevating women in the age of coronavirus",
#         "description_en": "Virtual networks can empower and include more working women in entrepreneurship and sustainable development",
        
# "title_fr": "Élever les femmes à l'âge des coronavirus",
# "description_fr": "Les réseaux virtuels peuvent autonomiser et inclure davantage de femmes actives dans l'entrepreneuriat et le développement durable",
#         "titleses": "Elevar a las mujeres en la era del coronavirus",
#         "descriptionses": "Las redes virtuales pueden empoderar e incluir a más mujeres trabajadoras en el espíritu empresarial y el desarrollo sostenible",


#         "link": "https://apolitical.co/en/solution_article/elevating-women-in-the-age-of-coronavirus",
#         "country": "Global",
#         "category": "labor",
#         "type": "organizing tool"
#     },
#     {
#         "title_en": "Opinion: Global health security depends on women",
#         "description_en": "Asks for integrating gender equality into Global healthcare infrastructure - 5 points",
        
# "title_fr": "Opinion: la sécurité sanitaire mondiale dépend des femmes",
# "description_fr": "Demande l'intégration de l'égalité des sexes dans l'infrastructure mondiale des soins de santé - 5 points",
#         "titleses": "Opinión: la seguridad sanitaria mundial depende de las mujeres",
#         "descriptionses": "Pide la integración de la igualdad de género en la infraestructura sanitaria mundial - 5 puntos",


#         "link": "https://www.devex.com/news/opinion-Global-health-security-depends-on-women-96861?access_key=&utm_source=newsletter&utm_medium=newswire&utm_campaign=yourheadlines&utm_content=text&mkt_tok=eyJpIjoiTlRObFpXTmxNVGhoSRHRRGbCIsInQiOiIrV0hMbVJnOWdmMlQxczV4RnFcLzlsXC9IWE56alZyYzlqVFdHR3RMpolicy or lawhBFeminist Statement or Analysisp3Digital SurveillanceFlZkhNSGo1Q25ZRVNEZmdkczFLbVIzeUJVMVRDbjJLeVlYdWVobWg2Uk5PN2FSbFppY3N2Feminist Statement or AnalysisQrWFF0WnA4NW9yTEJNXC83aG5LYVY0aHVxeHRpbiJ9",
#         "country": "Global",
#         "category": "healthcare",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "OPINION: Why we need women’s leadership in the COVID-19 response",
#         "description_en": "Call for more women's leadership in pandemic response for equal health benefits to all",
        
# "title_fr": "AVIS: Pourquoi nous avons besoin du leadership des femmes dans la réponse COVID-19",
# "description_fr": "Appel à un plus grand leadership des femmes dans la riposte à la pandémie pour des prestations de santé égales pour tous",
#         "titleses": "OPINIÓN: Por qué necesitamos el liderazgo de las mujeres en la respuesta COVID-19",
#         "descriptionses": "Pide más liderazgo de las mujeres en la respuesta ante una pandemia para obtener beneficios de salud iguales para todos",


#         "link": "https://news.trust.org/item/20200401090723-319sb",
#         "country": "Global",
#         "category": "healthcare",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Fighting COVID-19 With One Hand Tied Behind Our Backs?",
#         "description_en": "Gender bias keeps women out of decison making but pandemic affects women differently than men",
        
# "title_fr": "Combattre le COVID-19 avec une main attachée dans le dos?",
# "description_fr": "Les préjugés sexistes empêchent les femmes de prendre des décisions, mais la pandémie affecte les femmes différemment des hommes",
#         "titleses": "¿Luchando contra COVID-19 con una mano atada detrás de nuestras espaldas?",
#         "descriptionses": "El sesgo de género mantiene a las mujeres fuera de la toma de decisiones, pero la pandemia afecta a las mujeres de manera diferente que a los hombres",


#         "link": "https://www.thinkGlobalhealth.org/article/fighting-covid-19-one-hand-tied-behind-our-backs",
#         "country": "Global",
#         "category": "healthcare, economy, labor, gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Coronavirus measures will hit women harder than men, charities warn",
#         "description_en": "Data regarding the affect of coronavirus on women is urgently needed to allocate resources",
        
# "title_fr": "Les mesures contre le coronavirus toucheront les femmes plus durement que les hommes",
# "description_fr": "Il est urgent de disposer de données concernant les effets du coronavirus sur les femmes",
#         "titleses": "Las medidas de coronavirus afectarán más a las mujeres que a los hombres, advierten las organizaciones benéficas",
#         "descriptionses": "Se necesitan con urgencia datos sobre el efecto del coronavirus en las mujeres para asignar recursos",


#         "link": "https://www.reuters.com/article/us-health-coronavirus-women-trfn/coronavirus-measures-will-hit-women-harder-than-men-charities-warn-idUSKBN21J6NI",
#         "country": "Global",
#         "category": "SRHR, healthcare, digital surveillance, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Women’s leadership and unlocking girls’ talent in the era of the coronavirus pandemic",
#         "description_en": "Pandemic identifies gaps in Global systems and how women can and should fill them",
        
# "title_fr": "Le leadership des femmes et la libération des talents des filles à l'ère de la pandémie de coronavirus",
# "description_fr": "Une pandémie identifie les lacunes dans les systèmes mondiaux et comment les femmes peuvent et doivent les combler",
#         "titleses": "Liderazgo de las mujeres y desbloqueo del talento de las niñas en la era de la pandemia de coronavirus",
#         "descriptionses": "La pandemia identifica las brechas en los sistemas globales y cómo las mujeres pueden y deben llenarlas",


#         "link": "https://www.Globalpartnership.org/blog/womens-leadership-and-unlocking-girls-talent-era-coronavirus-pandemic#.XotGV9o2Av4.twitter",
#         "country": "Global",
#         "category": "education, economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Memo to the UK: women's voices can also be useful in this crisis",
#         "description_en": "Women and men consider risk differently and policy could benefit from equal representation",
        
# "title_fr": "Mémo au Royaume-Uni: la voix des femmes peut également être utile dans cette crise",
# "description_fr": "Les femmes et les hommes considèrent le risque différemment et la politique pourrait bénéficier d'une représentation égale",
#         "titleses": "Memo al Reino Unido: las voces de las mujeres también pueden ser útiles en esta crisis",
#         "descriptionses": "Las mujeres y los hombres consideran el riesgo de manera diferente y la política podría beneficiarse de una representación equitativa",


#         "link": "https://www.theguardian.com/commentisfree/2020/apr/11/memo-to-the-uk-womens-voices-can-also-be-useful-in-this-crisis",
#         "country": "United Kingdom",
#         "category": "healthcare, economy, labor, gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "The secret weapon in the fight against coronavirus: women",
#         "description_en": "Women leaders are doing an exceptional job at containing coronavirus",
        
# "title_fr": "L'arme secrète dans la lutte contre le coronavirus: les femmes",
# "description_fr": "Les femmes dirigeantes font un travail exceptionnel pour contenir le coronavirus",
#         "titleses": "El arma secreta en la lucha contra el coronavirus: mujeres",
#         "descriptionses": "Las mujeres líderes están haciendo un trabajo excepcional para contener el coronavirus",


#         "link": "https://www.theguardian.com/commentisfree/2020/apr/11/secret-weapon-fight-against-coronavirus-women",
#         "country": "Germany, Taiwan, New Zealand, Denmark, Finland, United Kingdom, United States",
#         "category": "healthcare",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Covid-19 School Closures Around the World Will Hit Girls Hardest",
#         "description_en": "Six gender-responsive actions proposed to mitigate Covid-19's impact on girls' education",
        
# "title_fr": "Les fermetures d'écoles Covid-19 dans le monde frapperont plus durement les filles",
# "description_fr": "Six actions sensibles au genre proposées pour atténuer l'impact de Covid-19 sur l'éducation des filles",
#         "titleses": "Los cierres de escuelas de Covid-19 en todo el mundo golpearán más a las niñas",
#         "descriptionses": "Seis acciones con perspectiva de género propuestas para mitigar el impacto de Covid-19 en la educación de las niñas",


#         "link": "https://plan-international.org/blog/2020/03/covid-19-school-closures-hit-girls-hardest",
#         "country": "Global",
#         "category": "education",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "From nannies to helpers, coronavirus spotlights Asia women's job insecurity",
#         "description_en": "Asian women conduct a lot of informal or unpaid work which is highly insecure during pandemic",
        
# "title_fr": "Des nounous aux aides, le coronavirus met en lumière l'insécurité de l'emploi des femmes asiatiques",
# "description_fr": "Les femmes asiatiques effectuent beaucoup de travail informel ou non rémunéré, ce qui est très précaire pendant la pandémie",
#         "titleses": "De niñeras a ayudantes, el coronavirus destaca la inseguridad laboral de las mujeres asiáticas",
#         "descriptionses": "Las mujeres asiáticas realizan mucho trabajo informal o no remunerado que es muy inseguro durante la pandemia",


#         "link": "https://news.trust.org/item/20200313122408-e2lvu/",
#         "country": "Asia-Pacific",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "America's cleaners: fighting on the coronavirus front line",
#         "description_en": "Cleaners are at high risk but they are financially unsettled and so must continue working",
        
# "title_fr": "Les nettoyeurs américains: lutter en première ligne contre les coronavirus",
# "description_fr": "Les nettoyeurs sont à haut risque mais ils sont financièrement instables et doivent donc continuer à travailler",
#         "titleses": "los limpiadores de Estados Unidos: luchando en la primera línea del coronavirus",
#         "descriptionses": "Los limpiadores corren un alto riesgo pero tienen problemas financieros y, por lo tanto, deben seguir funcionando",


#         "link": "https://uk.reuters.com/article/uk-health-coronavirus-United States-cleaners/americas-cleaners-fighting-on-the-coronavirus-front-line-idUKKBN2162GW",
#         "country": "United States",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Why women will be hardest hit by a coronavirus-driven recession",
#         "description_en": "Gendered budgeting will be imperative in mitigating disproportionate affects of pandemic on women",
        
# "title_fr": "Pourquoi les femmes seront les plus durement touchées par une récession due aux coronavirus",
# "description_fr": "La budgétisation sexospécifique sera impérative pour atténuer les effets disproportionnés de la pandémie sur les femmes",
#         "titleses": "Por qué las mujeres serán las más afectadas por una recesión provocada por el coronavirus",
#         "descriptionses": "La presupuestación por género será imprescindible para mitigar los efectos desproporcionados de la pandemia en las mujeres",


#         "link": "https://www.fastcompany.com/90479204/why-women-will-be-hardest-hit-by-a-coronavirus-driven-recession",
#         "country": "United States",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Gender economist Katica Roy: If we don't act fast, women will bear the brunt of the financial crisis caused by coronavirus",
#         "description_en": "Interview with Katica Roy regarding pandemic induced financial crisis effects on women",
        
# "title_fr": "Économiste du genre Katica Roy: Si nous n'agissons pas rapidement, les femmes porteront le poids de la crise financière causée par le coronavirus",
# "description_fr": "Entretien avec Katica Roy concernant les effets de la crise financière provoquée par une pandémie sur les femmes",
#         "titleses": "Katica Roy, economista de género: si no actuamos rápido, las mujeres serán las más afectadas por la crisis financiera causada por el coronavirus",
#         "descriptionses": "Entrevista con Katica Roy sobre los efectos de la crisis financiera inducida por la pandemia en las mujeres",


#         "link": "https://www.nbcnews.com/know-your-value/feature/gender-economist-katica-roy-if-we-don-t-act-fast-ncnpolicy or law166771",
#         "country": "United States",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "‘Stay Home’ and Work? Implications of COVID-19 and the UK Governmental Response for Self-Employed Women",
#         "description_en": "Implications of the effects of UK governmental response on women's small businesses are unclear",
        
# "title_fr": "Rester à la maison et travailler? Implications de COVID-19 et de la réponse du gouvernement britannique pour les travailleuses indépendantes",
# "description_fr": "Les implications des effets de la réponse du gouvernement britannique sur les petites entreprises féminines ne sont pas claires",
#         "titleses": "‘ Stay Home ’and Work? Implications of COVID-19 and the UK Government Government for Self-Employed Women",
#         "descriptionses": "Las implicaciones de los efectos de la respuesta gubernamental del Reino Unido en las pequeñas empresas de mujeres no están claras",


#         "link": "https://isbegen.wordpress.com/2020/03/27/stay-home-and-work/",
#         "country": "United Kingdom",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Most Brown and Black Americans Are Exposing Themselves to Coronavirus for a Paycheck",
#         "description_en": "Brown and Black Americans work more jobs that require them to be physically present",
        
# "title_fr": "La plupart des Américains bruns et noirs s'exposent au coronavirus pour un chèque de règlement",
# "description_fr": "Les Américains bruns et noirs occupent plus d'emplois qui nécessitent leur présence physique",
#         "titleses": "La mayoría de los estadounidenses marrones y negros se exponen al coronavirus por un sueldo",
#         "descriptionses": "Los estadounidenses marrones y negros tienen más trabajos que requieren que estén físicamente presentes",


#         "link": "https://www.vice.com/en_us/article/xgqpyq/most-brown-and-black-americans-are-exposing-themselves-to-coronavirus-for-a-paycheck",
#         "country": "United States",
#         "category": "economy, race",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Low-paid women in UK at ‘high risk of coronavirus exposure’",
#         "description_en": "Most high-risk jobs with low salary are worked by women",
        
# "title_fr": "Les femmes mal rémunérées au Royaume-Uni à risque élevé d'exposition au coronavirus",
# "description_fr": "La plupart des emplois à haut risque et à faible salaire sont occupés par des femmes",
#         "titleses": "Mujeres mal pagadas en el Reino Unido con alto riesgo de exposición al coronavirus",
#         "descriptionses": "La mayoría de los trabajos de alto riesgo con bajos salarios son trabajados por mujeres",


#         "link": "https://www.theguardian.com/world/2020/mar/29/low-paid-women-in-uk-at-high-risk-of-coronavirus-exposure",
#         "country": "United Kingdom",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis, scientific data"
#     },
#     {
#         "title_en": "When face-to-face interactions become an occupational hazard: Jobs in the time of COVID-19",
#         "description_en": "Low paying jobs are less amenable to online work and women are more at risk",
        
# "title_fr": "Lorsque les interactions face à face deviennent un risque professionnel: les emplois à l'époque de COVID-19",
# "description_fr": "Les emplois peu rémunérés se prêtent moins au travail en ligne et les femmes sont plus à risque",
#         "titleses": "Cuando las interacciones cara a cara se convierten en un riesgo laboral: trabajos en la época de COVID-19",
#         "descriptionses": "Los trabajos mal pagados son menos susceptibles al trabajo en línea y las mujeres corren más riesgo",


#         "link": "https://www.brookings.edu/blog/future-development/2020/03/30/when-face-to-face-interactions-become-an-occupational-hazard-jobs-in-the-time-of-covid-19/",
#         "country": "United States",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Equal Pay Day more important than ever amid COVID-19",
#         "description_en": "Pandemic is revealing economic inequality with stark contrasts",
        
# "title_fr": "La Journée de l'égalité salariale est plus importante que jamais au milieu de COVID-19",
# "description_fr": "Une pandémie révèle des inégalités économiques contrastées",
#         "titleses": "El día de igualdad de pago es más importante que nunca en medio de COVID-19",
#         "descriptionses": "La pandemia está revelando la desigualdad económica con fuertes contrastes",


#         "link": "https://thehill.com/opinion/civil-rights/490088-equal-pay-day-more-important-than-ever-amid-covid-19",
#         "country": "United States",
#         "category": "labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Here’s How You Can Help Sex Workers During the COVID-19 Outbreak",
#         "description_en": "Ways in which you can help sex workers during the pandemic",
        
# "title_fr": "Voici comment vous pouvez aider les travailleurs du sexe pendant l'épidémie de COVID-19",
# "description_fr": "Façons dont vous pouvez aider les professionnel (le) s du sexe pendant la pandémie",
#         "titleses": "Así es como puede ayudar a las trabajadoras sexuales durante el brote de COVID-19",
#         "descriptionses": "Formas en que puede ayudar a las trabajadoras sexuales durante la pandemia",


#         "link": "https://rewire.news/article/2020/03/26/heres-how-you-can-help-sex-workers-during-the-covid-19-outbreak/",
#         "country": "United States",
#         "category": "healthcare, economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 lockdown: Rights groups demand immediate social security measures for women",
#         "description_en": "Womens' organizations call on Indian Prime Minister to provide social security to protect women",
        
# "title_fr": "Verrouillage de COVID-19: des groupes de défense des droits exigent des mesures immédiates de sécurité sociale pour les femmes",
# "description_fr": "Les organisations de femmes demandent au Premier ministre indien de fournir une sécurité sociale pour protéger les femmes",
#         "titleses": "cierre de COVID-19: los grupos de derechos demandan medidas inmediatas de seguridad social para las mujeres",
#         "descriptionses": "Las organizaciones de mujeres piden al Primer Ministro indio que brinde seguridad social para proteger a las mujeres",


#         "link": "https://www.outlookindia.com/newsscroll/covid19-lockdown-rights-groups-demand-immediate-social-security-measures-for-women/1781106",
#         "country": "India",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "How the coronavirus widens the gender pay gap",
#         "description_en": "Organizations must be careful to pay women equally when work returns to normal",
        
# "title_fr": "Comment le coronavirus élargit l'écart de rémunération entre les sexes",
# "description_fr": "Les organisations doivent veiller à payer les femmes de manière égale lorsque le travail revient à la normale",
#         "titleses": "Cómo el coronavirus amplía la brecha salarial de género",
#         "descriptionses": "Las organizaciones deben tener cuidado de pagar a las mujeres por igual cuando el trabajo vuelve a la normalidad",


#         "link": "https://edition.cnn.com/2020/03/31/perspectives/equal-pay-day-coronavirus/index.html",
#         "country": "United States",
#         "category": "labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Why This Economic Crisis Differs From the Last One for Women",
#         "description_en": "This crisis most affects women-dominated, low paying fields which can't be done remotely",
        
# "title_fr": "Pourquoi cette crise économique diffère de la dernière pour les femmes",
# "description_fr": "Cette crise affecte surtout les domaines à faible rémunération dominés par les femmes qui ne peuvent pas être effectués à distance",
#         "titleses": "Por qué esta crisis económica difiere de la última para las mujeres",
#         "descriptionses": "Esta crisis afecta más a los campos dominados por mujeres y de bajos ingresos que no se pueden hacer de forma remota",


#         "link": "https://www.nytimes.com/2020/03/31/us/equal-pay-coronavirus-economic-impact.html",
#         "country": "United States",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "How the COVID-19 Crisis Is Hurting Sex Workers",
#         "description_en": "Pandemic means fewer clients, greater risks, and it’s hard to get benefits",
        
# "title_fr": "Comment la crise du COVID-19 nuit aux travailleuses du sexe",
# "description_fr": "Une pandémie signifie moins de clients, plus de risques et il est difficile d'obtenir des avantages",
#         "titleses": "Cómo la crisis de COVID-19 está perjudicando a las trabajadoras sexuales",
#         "descriptionses": "Pandemia significa menos clientes, mayores riesgos y es difícil obtener beneficios",


#         "link": "https://thetyee.ca/News/2020/03/27/How-COVID-19-Hurting-Sex-Workers/",
#         "country": "Canada",
#         "category": "SRHR, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Covid-19 aggravating gender inequalities",
#         "description_en": "Gender inequalities are being exacerbated by pandemic through food, water, health, domestic violence and curfew",
        
# "title_fr": "Covid-19 aggravant les inégalités entre les sexes",
# "description_fr": "Les inégalités entre les sexes sont exacerbées par la pandémie par la nourriture, l'eau, la santé, la violence domestique et le couvre-feu",
#         "titleses": "Covid-19 agrava las desigualdades de género",
#         "descriptionses": "Las desigualdades de género se ven exacerbadas por la pandemia a través de la alimentación, el agua, la salud, la violencia doméstica y el toque de queda",


#         "link": "https://www.nation.co.ke/gender/Covid-19-aggravating-gender-inequalities/5362750-5508776-l85jnt/index.html",
#         "country": "Kenya",
#         "category": "SRHR, childcare, water, food, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 Highlights the Failure of Neoliberal Capitalism: We Need Feminist Global Solidarity",
#         "description_en": "Capitalism is not delivering people's basic needs so feminist restructuring is essential",
        
# "title_fr": "COVID-19 met en évidence l'échec du capitalisme néolibéral: nous avons besoin de la solidarité mondiale féministe",
# "description_fr": "Le capitalisme ne répond pas aux besoins fondamentaux des gens, une restructuration féministe est donc essentielle",
#         "titleses": "COVID-19 destaca el fracaso del capitalismo neoliberal: necesitamos una solidaridad global feminista",
#         "descriptionses": "El capitalismo no satisface las necesidades básicas de las personas, por lo que la reestructuración feminista es esencial",


#         "link": "https://apwld.org/covid-19-highlights-the-failure-of-neoliberal-capitalism-we-need-feminist-Global-solidarity/?utm_source=NGO+CSW%2FNY+Constituency&utm_campaign=cb8d7d54ff-EMAIL_CAMPAIGN_2018_10_05_02_01_COPY_01&utm_medium=email&utm_term=0_67ac6441ff-cb8d7d54ff-412137047&mc_cid=cb8d7d54ff&mc_eid=64cdc0fe0b",
#         "country": "Thailand",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 requires gender-equal responses to save economies",
#         "description_en": "Gender-inclusive response is needed to bounce back the Global economy",
        
# "title_fr": "COVID-19 exige des réponses égales entre les sexes pour sauver les économies",
# "description_fr": "Une réponse tenant compte du genre est nécessaire pour faire rebondir l'économie mondiale",
#         "titleses": "COVID-19 requiere respuestas con igualdad de género para salvar economías",
#         "descriptionses": "Se necesita una respuesta inclusiva de género para recuperar la economía global",


#         "link": "http://www.ipsnews.net/2020/04/covid-19-requires-gender-equal-responses-save-economies/?utm_source=feedly&utm_medium=rss&utm_campaign=covid-19-requires-gender-equal-responses-save-economies",
#         "country": "Global",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "How Economic Fallout From The Coronavirus May Disproportionately Affect Women",
#         "description_en": "Womens' income is important and they are also doing a lot of unpaid work",
        
# "title_fr": "Comment les retombées économiques du coronavirus peuvent affecter de manière disproportionnée les femmes",
# "description_fr": "Le revenu des femmes est important et elles font également beaucoup de travail non rémunéré",
#         "titleses": "Cómo las consecuencias económicas del coronavirus pueden afectar desproporcionadamente a las mujeres",
#         "descriptionses": "El ingreso de las mujeres es importante y también están haciendo mucho trabajo no remunerado",


#         "link": "https://www.forbes.com/sites/jenniferbarrett/2020/04/02/how-economic-fallout-from-the-coronavirus-may-disproportionately-affect-women/#485df515836a",
#         "country": "United States",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Lockdown: Domestic workers struggle to make ends meet as families refuse to pay",
#         "description_en": "Domestic workers are not being paid during lockdown",
        
# "title_fr": "Verrouillage: les travailleurs domestiques ont du mal à joindre les deux bouts alors que les familles refusent de payer",
# "description_fr": "Les employés de maison ne sont pas payés pendant le verrouillage",
#         "titleses": "Bloqueo: las trabajadoras domésticas luchan para llegar a fin de mes mientras las familias se niegan a pagar",
#         "descriptionses": "A las trabajadoras domésticas no se les paga durante el cierre",


#         "link": "https://www.hindustantimes.com/mumbai-news/lockdown-domestic-workers-struggle-to-make-ends-meet-as-families-refuse-to-pay/story-aB6zzwdUyQYnivAJoCMtEJ.html",
#         "country": "India",
#         "category": "labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 will make gender pay inequities worse",
#         "description_en": "Gender pay inequity to be exacerbated by the pandemic",
        
# "title_fr": "COVID-19 aggravera les inégalités de rémunération entre les sexes",
# "description_fr": "L'inégalité salariale entre hommes et femmes sera exacerbée par la pandémie",
#         "titleses": "COVID-19 empeorará las desigualdades salariales de género",
#         "descriptionses": "La pandemia exacerbará la desigualdad salarial de género",


#         "link": "https://www.benefitspro.com/2020/04/07/covid-19-will-make-gender-pay-inequities-worse/?cmp=share_twitter&slreturn=20200317122647",
#         "country": "United States",
#         "category": "education, economy, childcare, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 worsening gender inequality, more women have lost jobs – UN",
#         "description_en": "Women are increasingly taking on extra unpaid labour and their rights will be reversed",
        
# "title_fr": "COVID-19 aggravant les inégalités entre les sexes, davantage de femmes ont perdu leur emploi - ONU",
# "description_fr": "Les femmes assument de plus en plus de travail non rémunéré et leurs droits seront renversés",
#         "titleses": "COVID-19 empeora la desigualdad de género, más mujeres han perdido empleos - ONU",
#         "descriptionses": "Las mujeres están asumiendo cada vez más trabajo no remunerado adicional y sus derechos serán revertidos",


#         "link": "https://dailypost.ng/2020/04/10/covid-19-worsening-gender-inequality-more-women-have-lost-jobs-un/",
#         "country": "Global",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Female frontline workers in China typical of coronavirus economic and domestic burden on women: report",
#         "description_en": "Women are disproportionately affected by health, education and labour-related hardship domestically and outside the home",
        
# "title_fr": "Les travailleuses de première ligne en Chine, typiques du fardeau économique et domestique des coronavirus pour les femmes: rapport",
# "description_fr": "Les femmes sont touchées de manière disproportionnée par la santé, l'éducation et les difficultés liées au travail à l'intérieur et à l'extérieur du foyer",
#         "titleses": "Trabajadoras de primera línea en China, típicas de la carga económica y doméstica del coronavirus sobre las mujeres: informe",
#         "descriptionses": "Las mujeres se ven desproporcionadamente afectadas por problemas de salud, educación y laborales en el país y fuera del hogar",


#         "link": "https://amp-scmp-com.cdn.ampproject.org/c/s/amp.scmp.com/news/china/society/article/3079363/female-frontline-workers-china-typical-coronavirus-economic-and",
#         "country": "China",
#         "category": "labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "The Economic Impact of Coronavirus on Women is 'Devastating' and Exacerbating Gender Inequality, Says Facebook's Sheryl Sandberg",
#         "description_en": "Pandemic will have a disproportionate effect on women's employment opportunities",
        
# "title_fr": "L'impact économique du coronavirus sur les femmes est dévastateur et exacerbe les inégalités entre les sexes, déclare Sheryl Sandberg de Facebook",
# "description_fr": "Une pandémie aura un effet disproportionné sur les possibilités d'emploi des femmes",
#         "titleses": "El impacto económico del coronavirus en las mujeres es 'devastador' y exacerba la desigualdad de género, dice Sheryl Sandberg de Facebook",
#         "descriptionses": "La pandemia tendrá un efecto desproporcionado en las oportunidades de empleo de las mujeres",


#         "link": "https://www.newsweek.com/economic-impact-coronavirus-women-devastating-exacerbating-gender-inequality-says-1497325",
#         "country": "United States",
#         "category": "labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Women on the frontlines of COVID-19",
#         "description_en": "There is a lack of infrastructure to protect workers, many of whom are women",
        
# "title_fr": "Les femmes en première ligne de COVID-19",
# "description_fr": "Il y a un manque d'infrastructures pour protéger les travailleurs, dont beaucoup sont des femmes",
#         "titleses": "Mujeres en primera línea de COVID-19",
#         "descriptionses": "Falta infraestructura para proteger a los trabajadores, muchos de los cuales son mujeres",


#         "link": "https://www.liberationnews.org/women-on-the-frontlines-of-covid-19/",
#         "country": "United States",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Gender pay gap poses 'shocking' pitfall if isolation goes on",
#         "description_en": "Men's higher paying work is being prioritised over women's when distributing new household responsibilities",
        
# "title_fr": "L'écart de rémunération entre les sexes pose un piège choquant si l'isolement se poursuit",
# "description_fr": "Le travail mieux rémunéré des hommes est prioritaire par rapport aux femmes lors de la répartition des nouvelles responsabilités ménagères",
#         "titleses": "La brecha salarial de género plantea una trampa 'impactante' si el aislamiento continúa",
#         "descriptionses": "El trabajo mejor remunerado de los hombres se prioriza sobre el de las mujeres al distribuir las nuevas responsabilidades del hogar",


#         "link": "https://www.canberratimes.com.au/story/6721006/gender-pay-gap-poses-shocking-pitfall-if-isolation-goes-on/",
#         "country": "Australia",
#         "category": "labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Sex workers must not be left behind in the response to COVID-19",
#         "description_en": "UNAIDS calls for immediate action to protect sex workers",
        
# "title_fr": "Les travailleurs du sexe ne doivent pas être laissés pour compte dans la réponse à COVID-19",
# "description_fr": "L'ONUSIDA appelle à une action immédiate pour protéger les professionnel (le) s du sexe",
#         "titleses": "Las trabajadoras sexuales no deben quedar atrás en la respuesta a COVID-19",
#         "descriptionses": "ONUSIDA pide una acción inmediata para proteger a las trabajadoras sexuales",


#         "link": "https://www.unaids.org/en/resources/presscentre/pressreleaseandstatementarchive/2020/april/20200408_sex-workers-covid-19",
#         "country": "Global",
#         "category": "SRHR, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Protecting Women Using DFS During The Pandemic",
#         "description_en": "Women should be educated in using digital financing solutions in developing countries",
        
# "title_fr": "Protéger les femmes utilisant les DFS pendant la pandémie",
# "description_fr": "Les femmes devraient être formées à l'utilisation de solutions de financement numérique dans les pays en développement",
#         "titleses": "Protegiendo a las mujeres que usan DFS durante la pandemia",
#         "descriptionses": "Las mujeres deberían recibir educación sobre el uso de soluciones de financiación digital en los países en desarrollo",


#         "link": "https://www.siaedge.com/news/2020/3/27/protecting-women-using-dfs-during-the-pandemic",
#         "country": "Ghana, Kenya",
#         "category": "digital surveillance, economy, labor",
#         "type": "feminist statement or analysis, organizing tool"
#     },
#     {
#         "title_en": "The Economic Devastation Of COVID-19 Is Hitting Women Particularly Hard",
#         "description_en": "Women are disproportionately affected by Covid-19, particularly black women",
        
# "title_fr": "La dévastation économique du COVID-19 frappe particulièrement les femmes",
# "description_fr": "Les femmes sont touchées de manière disproportionnée par Covid-19, en particulier les femmes noires",
#         "titleses": "La devastación económica de COVID-19 está afectando particularmente a las mujeres",
#         "descriptionses": "Las mujeres se ven desproporcionadamente afectadas por Covid-19, particularmente las mujeres negras",


#         "link": "https://www.huffingtonpost.co.uk/entry/women-coronavirus-lost-jobs_n_5e90observed response63c5b685fbc7d4a557?ri18n=true",
#         "country": "United States",
#         "category": "economy, labor, race",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Addressing the gender dimensions of COVID-related school closures",
#         "description_en": "Synthesis report of webinar featuring country experiences and synthesizing participants' calls to action for governments",
        
# "title_fr": "Aborder les dimensions sexospécifiques des fermetures d'écoles liées à COVID",
# "description_fr": "Rapport de synthèse d'un webinaire présentant les expériences des pays et synthétisant les appels à l'action des participants pour les gouvernements",
#         "titleses": "Abordar las dimensiones de género de los cierres de escuelas relacionados con COVID",
#         "descriptionses": "Informe de síntesis del seminario web que presenta las experiencias de los países y sintetiza los llamados de los participantes a la acción para los gobiernos",


#         "link": "https://en.unesco.org/sites/default/files/covid-19-ed_webinar_3-addressing_the_gender_dimensions_of_school_closures-report-en.pdf",
#         "country": "Sierra Leone, Nigeria, Nepal, Afghanistan",
#         "category": "education",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 Impact: What we know so far – Albania",
#         "description_en": "An interview with the Executive Director of Albania Center of Population and Development (ACPD)",
        
# "title_fr": "Impact COVID-19: ce que nous savons jusqu'à présent - Albanie",
# "description_fr": "Entretien avec le directeur exécutif du Centre albanais de la population et du développement (ACPD)",
#         "titleses": "Impacto COVID-19: lo que sabemos hasta ahora - Albania",
#         "descriptionses": "Una entrevista con el Director Ejecutivo del Centro de Población y Desarrollo de Albania (ACPD)",


#         "link": "https://www.ippf.org/blogs/covid-19-impact-what-we-know-so-far-albania",
#         "country": "Albania",
#         "category": "SRHR",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "UNDP Angola: Support to the National Response to Contain the Impact of COVID-19",
#         "description_en": "UNDP analysis, interventions, and associated budget for COVID-19, highlighting gendered socio-economic impacts in budget",
        
# "title_fr": "PNUD Angola: Appui à la réponse nationale pour contenir l'impact de COVID-19",
# "description_fr": "Analyse, interventions et budget associé du PNUD pour COVID-19, mettant en évidence les impacts socio-économiques sexospécifiques dans le budget",
#         "titleses": "PNUD Angola: Apoyo a la respuesta nacional para contener el impacto de COVID-19",
#         "descriptionses": "Análisis, intervenciones y presupuesto asociado del PNUD para COVID-19, destacando los impactos socioeconómicos de género en el presupuesto",


#         "link": "https://www.undp.org/content/dam/rba/docs/COVID-19-CO-Response/undp-rba-covid-angola-apr2020.pdf",
#         "country": "Angola",
#         "category": "economy, SRHR",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "C-19 Menaces Antigua and Barbuda",
#         "description_en": "Analysis of response: government information, actions, and healthcare spending in context of disaster capitalism",
        
# "title_fr": "C-19 Menaces Antigua-et-Barbuda",
# "description_fr": "Analyse de la réponse: informations gouvernementales, actions et dépenses de santé dans le contexte du capitalisme en cas de catastrophe",
#         "titleses": "C-19 Menaces Antigua y Barbuda",
#         "descriptionses": "Análisis de respuesta: información del gobierno, acciones y gasto en atención médica en el contexto del capitalismo de desastre",


#         "link": "https://solidarity-us.org/c-19-menaces-antigua-and-barbuda/",
#         "country": "Antigua and Barbuda",
#         "category": "healthcare, economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "The Coronavirus Outbreak Has Stalled Argentina’s Historic Effort To Legalize Abortion",
#         "description_en": "Analysis of abortion movement in Argentina and status of legislation postponed due to pandemic",
        
# "title_fr": "L'épidémie de coronavirus a bloqué l'effort historique de l'Argentine pour légaliser l'avortement",
# "description_fr": "Analyse des mouvements d'avortement en Argentine et état de la législation reportée en raison d'une pandémie",
#         "titleses": "El brote de coronavirus ha frenado el esfuerzo histórico de Argentina para legalizar el aborto",
#         "descriptionses": "Análisis del movimiento del aborto en Argentina y el estado de la legislación pospuesta debido a una pandemia",


#         "link": "https://www.huffpost.com/entry/argentina-abortion-legalization-coronavirus_n_5e7cae9bc5b6cb08a928f364",
#         "country": "Argentina",
#         "category": "SRHR",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Argentina's COVID-19 Lessons",
#         "description_en": "Analysis of country response that includes context of history of resistance, feminist movements, and democratic organizing",
        
# "title_fr": "Leçons COVID-19 de l'Argentine",
# "description_fr": "Analyse de la réponse des pays qui inclut le contexte de l'histoire de la résistance, des mouvements féministes et de l'organisation démocratique",
#         "titleses": "Lecciones COVID-19 de Argentina",
#         "descriptionses": "Análisis de la respuesta del país que incluye el contexto de la historia de resistencia, movimientos feministas y organización democrática",


#         "link": "https://www.jacobinmag.com/2020/04/argentina-covid-19-coronavirus-pandemic-response",
#         "country": "Argentina",
#         "category": "SRHR",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Argentina Sees At Least 6 Femicides During Coronavirus Quarantine",
#         "description_en": "Recounts Argentina's recent history of femicide and recent COVID-19 measures, including #BarbijoRojo/'Red Facemask'",
        
# "title_fr": "L'Argentine voit au moins 6 fémicides pendant la quarantaine des coronavirus",
# "description_fr": "Raconte l'histoire récente du fémicide en Argentine et les récentes mesures COVID-19, y compris # BarbijoRojo / 'Red Facemask'",
#         "titleses": "Argentina ve al menos 6 feminicidios durante la cuarentena de coronavirus",
#         "descriptionses": "Relata la historia reciente de feminicidios de Argentina y las recientes medidas COVID-19, incluyendo # BarbijoRojo / 'Red Facemask'",


#         "link": "https://www.aljazeera.com/news/2020/04/argentina-sees-6-femicides-coronavirus-quarantine-200401185419939.html",
#         "country": "Argentina",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Can Transgender People Speak in Armenia?",
#         "description_en": "Comparison of COVID-19 experiences to transgender experiences in Armenia, with a look at disproportionate impacts",
        
# "title_fr": "Les personnes transgenres peuvent-elles parler en Arménie?",
# "description_fr": "Comparaison des expériences COVID-19 avec les expériences transgenres en Arménie, avec un regard sur les impacts disproportionnés",
#         "titleses": "¿Pueden las personas transgénero hablar en Armenia?",
#         "descriptionses": "Comparación de las experiencias de COVID-19 con las experiencias transgénero en Armenia, con una mirada a los impactos desproporcionados",


#         "link": "https://www.opendemocracy.net/en/odr/can-transgender-people-speak-armenia/",
#         "country": "Armenia",
#         "category": "gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Coronavirus Australia: Why Women Will Feel The Impact More Than Men",
#         "description_en": "Exploration of gendered impacts in Lancet article with Australia-specific data on frontline workers and socio-economic status",
        
# "title_fr": "Coronavirus Australie: pourquoi les femmes ressentiront l'impact plus que les hommes",
# "description_fr": "Exploration des impacts sexospécifiques dans un article du Lancet avec des données spécifiques à l'Australie sur les travailleurs de première ligne et le statut socio-économique",
#         "titleses": "Coronavirus Australia: por qué las mujeres sentirán el impacto más que los hombres",
#         "descriptionses": "Exploración de los impactos de género en el artículo de Lancet con datos específicos de Australia sobre trabajadores de primera línea y estatus socioeconómico",


#         "link": "https://7news.com.au/lifestyle/health-wellbeing/coronavirus-australia-why-women-will-feel-the-impact-more-than-men-c-748823?utm_campaign=share-icons&utm_source=facebook&utm_medium=social&tid=1584431328469&mc_cid=719f7558Organizing Tool&mc_eid=6bbf508b86",
#         "country": "Australia",
#         "category": "healthcare, economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Local Human Rights Organisation Urges Feminist Policy In COVID-19 Response",
#         "description_en": "Description of Equality Bahamas' open letter calling for feminist, rights-based access to protection, info, resources",
        
# "title_fr": "Une organisation locale de défense des droits de l'homme appelle à une politique féministe dans la réponse de COVID-19",
# "description_fr": "Description de la lettre ouverte d'Egalité Bahamas appelant à un accès féministe et basé sur les droits à la protection, à l'information, aux ressources",
#         "titleses": "La organización local de derechos humanos insta a la política feminista en la respuesta COVID-19",
#         "descriptionses": "Descripción de la carta abierta de Equality Bahamas que pide acceso feminista y basado en derechos a protección, información, recursos",


#         "link": "https://ewnews.com/local-human-rights-organisation-urges-feminist-policy-in-covid-19-response",
#         "country": "Bahamas",
#         "category": "punitive, healthcare, education, economy, childcare, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Trafficking Victims Join Fight Against COVID-19 in Azerbaijan",
#         "description_en": "Description of a group of trafficking victims in a shelter sewing face-masks to contribute",
        
# "title_fr": "Les victimes de la traite se joignent à la lutte contre le COVID-19 en Azerbaïdjan",
# "description_fr": "Description d'un groupe de victimes de la traite dans un refuge cousant des masques pour contribuer",
#         "titleses": "Las víctimas de la trata se unen a la lucha contra COVID-19 en Azerbaiyán",
#         "descriptionses": "Descripción de un grupo de víctimas de trata en un refugio que cose máscaras faciales para contribuir",


#         "link": "https://www.iom.int/news/trafficking-victims-join-fight-against-covid-19-azerbaijan",
#         "country": "Azerbaijan",
#         "category": "healthcare",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "Amid the COVID-19 Lockdown, the Feminist Emergency Must be Addressed",
#         "description_en": "Feminist call for comprehensive plan to address gender-based violence, building upon standard measures with additional resources",
        
# "title_fr": "Au milieu du verrouillage de COVID-19, l'urgence féministe doit être résolue",
# "description_fr": "Appel féministe pour un plan complet de lutte contre la violence sexiste, en s'appuyant sur des mesures standard avec des ressources supplémentaires",
#         "titleses": "En medio del bloqueo de COVID-19, se debe abordar la emergencia feminista",
#         "descriptionses": "Llamamiento feminista para un plan integral para abordar la violencia de género, basándose en medidas estándar con recursos adicionales",


#         "link": "https://menafn.com/1100018749/Amid-the-COVID-19-Lockdown-the-Feminist-Emergency-Must-be-Addressed",
#         "country": "Venezuela",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "The Impact of COVID-19 on Gender Equality in the Arab Region",
#         "description_en": "ECSWA/UN policy brief on anticipated impacts with recommended policy responses",
        
# "title_fr": "L'impact de COVID-19 sur l'égalité des sexes dans la région arabe",
# "description_fr": "Note politique de l'ECSWA / ONU sur les impacts anticipés avec les réponses politiques recommandées",
#         "titleses": "El impacto de COVID-19 en la igualdad de género en la región árabe",
#         "descriptionses": "Resumen de política de ECSWA / ONU sobre los impactos anticipados con las respuestas de política recomendadas",


#         "link": "https://reliefweb.int/sites/reliefweb.int/files/resources/policy_brief_on_the_impact_of_covid-19_on_gender_relations_in_the_arab_region_en_1.pdf",
#         "country": "Middle East and North Africa",
#         "category": "healthcare, education, economy, childcare, labor, food, gender-based violence",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19: Bahrainis Launch Initiative to Aid Jobless Foreigners",
#         "description_en": "Brief description of food relief program designed and run by volunteers",
        
# "title_fr": "COVID-19: Bahreïn lance une initiative pour venir en aide aux étrangers sans emploi",
# "description_fr": "Brève description du programme de secours alimentaire conçu et géré par des bénévoles",
#         "titleses": "COVID-19: Iniciativa de lanzamiento de Bahrein para ayudar a los extranjeros desempleados",
#         "descriptionses": "Breve descripción del programa de ayuda alimentaria diseñado y dirigido por voluntarios",


#         "link": "https://gulfnews.com/world/gulf/bahrain/covid-19-bahrainis-launch-initiative-to-aid-jobless-foreigners",
#         "country": "Bahrain",
#         "category": "food",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "Bangladeshi Women Play Crucial Role in Fight Against COVID-19",
#         "description_en": "",
        
# "title_fr": "Les femmes bangladaises jouent un rôle crucial dans la lutte contre COVID-19",
# "description_fr": "",
#         "titleses": "Las mujeres de Bangladesh juegan un papel crucial en la lucha contra COVID-19",
#         "descriptionses": "",


#         "link": "https://netra.news/2020/bangladeshi-women-play-crucial-role-in-fight-against-covid-19-981",
#         "country": "Bangladesh",
#         "category": "healthcare, economy, childcare, labor, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 and Implications for Inclusive Economic Empowerment In CARICOM: Policy and Programme Considerations",
#         "description_en": "Policy brief reviewing regional data and making broad policy recommendations for gender-responsive measures",
        
# "title_fr": "COVID-19 et implications pour une autonomisation économique inclusive dans la CARICOM: considérations politiques et programmatiques",
# "description_fr": "Synthèse des politiques examinant les données régionales et faisant de larges recommandations politiques pour des mesures sensibles au genre",
#         "titleses": "COVID-19 e implicaciones para el empoderamiento económico inclusivo en CARICOM: consideraciones de políticas y programas",
#         "descriptionses": "Resumen de políticas que revisa datos regionales y hace recomendaciones políticas generales para medidas con perspectiva de género",


#         "link": "https://www2.unwomen.org/-/media/field%20office%20caribbean/attachments/publications/2020/social%20protection%20covid-19%20%20web%20doc%2020200327.pdf?la=en&vs=812",
#         "country": "Latin America and the Caribbean",
#         "category": "economy, childcare, labor, food, gender-based violence, disability",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 En América Latina Y El Caribe: Cómo Incorporar A Las Mujeres Y La Igualdad De Género",
#         "description_en": "COVID-19 in Latin America and the Caribbean: How to Incorporate Women and Gender Equality",
        
# "title_fr": "COVID-19 en Amérique latine et dans les Caraïbes: comment intégrer les femmes et l'égalité des sexes",
# "description_fr": "COVID-19 en Amérique latine et dans les Caraïbes: comment intégrer les femmes et l'égalité des sexes",
#         "titleses": "COVID-19 En América Latina Y El Caribe: Cómo Incorporar A Las Mujeres Y La Igualdad De Género",
#         "descriptionses": "COVID-19 in Latin America and the Caribbean: How to Incorporate Women and Gender Equality",


#         "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/briefing%20coronavirusv1117032020.pdf?la=es&vs=930",
#         "country": "Latin America and the Caribbean",
#         "category": "SRHR, economy, childcare, food, gendered health impacts, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 In Latin America And The Caribbean: How To Incorporate Women And Gender Equality",
#         "description_en": "",

# "title_en": "COVID-19 en Amérique latine et dans les Caraïbes: comment intégrer les femmes et l'égalité des sexes",
# "description_en": "",
#         "titleses": "COVID-19 en América Latina y el Caribe: Cómo incorporar a las mujeres y la igualdad de género",
# "description_es": ""s


# "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/enbriefing%20coronavirusv1117032020.pdf?la=es&vs=0",
#         "country": "Latin America and the Caribbean",
#         "category": "SRHR, economy, childcare, food, gendered health impacts, disability",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Gênero E COVID-19 Na América Latina E No Caribe: Dimensões De Gênero Na Respostae",
#         "description_en": "Gender and COVID-19 in Latin America and the Caribbean: Gender Dimensions in the Response",
        
# "title_fr": "Genre et COVID-19 en Amérique latine et dans les Caraïbes: les dimensions de genre dans la réponse",
# "description_fr": "Genre et COVID-19 en Amérique latine et dans les Caraïbes: les dimensions de genre dans la réponse",
#         "titleses": "Género y COVID-19 en América Latina y el Caribe: dimensiones de género en la respuesta",
#         "descriptionses": "Género y COVID-19 en América Latina y el Caribe: dimensiones de género en la respuesta",


#         "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/ptbriefing%20coronavirusv1117032020.pdf?la=es&vs=2922",
#         "country": "Latin America and the Caribbean",
#         "category": "SRHR, economy, childcare, food, gendered health impacts, race",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Le COVID-19 En Amérique Latine Et Aux Caraïbes: Intégration Des Femmes Et De L’égalité Des Sexes",
#         "description_en": "COVID-19 in Latin America and the Caribbean: Integration of Women and Gender Equality",
        
# "title_fr": "Le COVID-19 En Amérique Latine Et Aux Caraïbes: Intégration Des Femmes Et De L’égalité Des Sexes",
# "description_fr": "COVID-19 in Latin America and the Caribbean: Integration of Women and Gender Equality",
#         "titleses": "COVID-19 en América Latina y el Caribe: integración de la mujer e igualdad de género",
#         "descriptionses": "COVID-19 en América Latina y el Caribe: Integración de la mujer e igualdad de género",


#         "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/frbriefing%20coronavirusv1117032020.pdf?la=es&vs=232",
#         "country": "Latin America and the Caribbean",
#         "category": "SRHR, economy, childcare, food, gendered health impacts, misinformation",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Protecting the Caribbean’s Most Vulnerable People in the Face of COVID-19",
#         "description_en": "Blog advocating a multi-faceted response the protects elderly, women, and children",
        
# "title_fr": "Protéger les personnes les plus vulnérables des Caraïbes face au COVID-19",
# "description_fr": "Blog prônant une réponse à multiples facettes protégeant les personnes âgées, les femmes et les enfants",
#         "titleses": "Protección de las personas más vulnerables del Caribe frente a COVID-19",
#         "descriptionses": "Blog que aboga por una respuesta multifacética que proteja a los ancianos, las mujeres y los niños",


#         "link": "https://news.un.org/en/story/2020/04/1060842",
#         "country": "Latin America and the Caribbean",
#         "category": "healthcare, education, childcare, gender-based violence, disability",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Coronavirus: Why are More Men Than Women Dying?",
#         "description_en": "Article discussing differences observed worldwide with Belgium authorities; sex-disaggregated data not available for Belgium",
        
# "title_fr": "Coronavirus: pourquoi plus d'hommes que de femmes meurent?",
# "description_fr": "Article sur les différences observées dans le monde avec les autorités belges; les données ventilées par sexe ne sont pas disponibles pour la Belgique",
#         "titleses": "Coronavirus: ¿Por qué mueren más hombres que mujeres?",
#         "descriptionses": "Artículo que discute las diferencias observadas en todo el mundo con las autoridades belgas; datos desagregados por sexo no están disponibles para Bélgica",


#         "link": "https://www.brusselstimes.com/all-news/belgium-all-news/102934/coronavirus-why-are-men-dying-more-than-women/",
#         "country": "Belgium",
#         "category": "gendered health impacts",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Mental Heath care Tips for children",
#         "description_en": "Ministry of Health & Family Welfare, Government of India-How to take care of Mental Health of Children during Lockdown",
        
# "title_fr": "Conseils de soins de santé mentale pour les enfants",
# "description_fr": "Ministère de la Santé et du Bien-être de la famille, Gouvernement de l'Inde-Comment prendre soin de la santé mentale des enfants pendant le verrouillage",
#         "titleses": "Consejos para el cuidado de la salud mental para niños",
#         "descriptionses": "Ministerio de Salud y Bienestar Familiar, Gobierno de India: cómo cuidar la salud mental de los niños durante el encierro",


#         "link": "https://www.mohfw.gov.in/pdf/mentalhealthchildrean.pdf",
#         "country": "India",
#         "category": "healthcare, childcare",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "Mental Heath care Tips for Elders",
#         "description_en": "Ministry of Health & Family Welfare, Government of India-How to take care of Mental Health of Elders during Lockdown",
        
# "title_fr": "Conseils de santé mentale aux aînés",
# "description_fr": "Ministère de la Santé et du Bien-être familial, Gouvernement de l'Inde-Comment prendre soin de la santé mentale des aînés pendant le verrouillage",
#         "titleses": "Consejos para el cuidado de la salud mental para ancianos",
#         "descriptionses": "Ministerio de Salud y Bienestar Familiar, Gobierno de India: cómo cuidar la salud mental de los ancianos durante el encierro",


#         "link": "https://www.mohfw.gov.in/pdf/mentalhealthelderly.pdf",
#         "country": "India",
#         "category": "healthcare",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "App for Covid-19",
#         "description_en": "Government of India has launched Aarogya Setu app to take self assessment test, how to maintain social distancing, all information about Covid-19, to get all information about e-pass to be used only for the purpose of supplying essentials and also provides all updates of COVID-19",
        
# "title_fr": "App pour Covid-19",
# "description_fr": "Le gouvernement de l'Inde a lancé l'application Aarogya Setu pour passer un test d'auto-évaluation, comment maintenir la distance sociale, toutes les informations sur Covid-19, pour obtenir toutes les informations sur l'e-pass à utiliser uniquement dans le but de fournir l'essentiel et fournit également toutes les mises à jour de COVID-19",
#         "titleses": "Aplicación para Covid-19",
#         "descriptionses": "El Gobierno de la India lanzó la aplicación Aarogya Setu para realizar una prueba de autoevaluación, cómo mantener el distanciamiento social, toda la información sobre Covid-19, para obtener toda la información sobre el e-pass para ser utilizada únicamente con el fin de suministrar lo esencial y también proporciona todas las actualizaciones de COVID-19",


#         "link": "https://www.mygov.in/aarogya-setu-app/",
#         "country": "India",
#         "category": "digital surveillance, healthcare, education",
#         "type": "scientific data, mutual aid resource, organizing tool"
#     },
#     {
#         "title_en": "Domestic Violence Decriminalized in Russia",
#         "description_en": "Decriminalization of DV becomes even more dangerous with less access to private assistance",
        
# "title_fr": "La violence domestique dépénalisée en Russie",
# "description_fr": "La dépénalisation de la DV devient encore plus dangereuse avec moins d'accès à l'assistance privée",
#         "titleses": "Violencia doméstica despenalizada en Rusia",
#         "descriptionses": "La despenalización de DV se vuelve aún más peligrosa con menos acceso a asistencia privada",


#         "link": "https://www.themoscowtimes.com/2020/03/30/when-your-home-isnt-a-safe-space-russian-women-fear-rise-in-domestic-violence-as-coronavirus-quarantine-starts-a69794",
#         "country": "Russia",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Five Actions for Gender Equality in the Covid-19 Response",
#         "description_en": "UNICEF is focusing on 5 key actions to mitigate GBV during the Covid Pandemic",
        
# "title_fr": "Cinq actions pour l'égalité des sexes dans la réponse Covid-19",
# "description_fr": "L'UNICEF se concentre sur 5 actions clés pour atténuer la violence basée sur le genre pendant la pandémie de Covid",
#         "titleses": "Cinco acciones para la igualdad de género en la respuesta Covid-19",
#         "descriptionses": "UNICEF se está centrando en 5 acciones clave para mitigar la violencia de género durante la pandemia de Covid",


#         "link": "https://www.unicef.org/documents/five-actions-gender-equality-coronavirus-disease-covid-19-response-technical-note",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Lessons from African Feminists Mobilizing Against COVID-19",
#         "description_en": "Grassroots women’s organizations in Africa are mobilizing their communities to respond to Covid-19",
        
# "title_fr": "Leçons des féministes africaines se mobilisant contre COVID-19",
# "description_fr": "Les organisations féminines de base en Afrique mobilisent leurs communautés pour répondre à Covid-19",
#         "titleses": "Lecciones de feministas africanas que se movilizan contra COVID-19",
#         "descriptionses": "Las organizaciones de mujeres de base en África están movilizando a sus comunidades para responder a Covid-19",


#         "link": "https://blogs.ei.columbia.edu/2020/04/03/african-feminists-mobilizing-covid-19/",
#         "country": "Anglophone Africa, Francophone Africa",
#         "category": "gendered health impacts",
#         "type": "feminist statement or analysis, organizing tool"
#     },
#     {
#         "title_en": "SHARED RESPONSIBILITY, GLOBAL SOLIDARITY: Responding to the socio-economic impacts of COVID-19",
#         "description_en": "A report sumarizing the impacts of Covid in relation to socio-economic status, responsibilites of everyone on the globe, and ways to minimize impacts",
        
# "title_fr": "RESPONSABILITÉ PARTAGÉE, SOLIDARITÉ MONDIALE: Répondre aux impacts socio-économiques de COVID-19",
# "description_fr": "Un rapport résumant les impacts de Covid en relation avec le statut socio-économique, les responsabilités de chacun sur la planète et les moyens de minimiser les impacts",
#         "titleses": "RESPONSABILIDAD COMPARTIDA, SOLIDARIDAD GLOBAL: Respuesta a los impactos socioeconómicos de COVID-19",
#         "descriptionses": "Un informe que resume los impactos de Covid en relación con el estado socioeconómico, las responsabilidades de todos en el mundo y las formas de minimizar los impactos",


#         "link": "https://unsdg.un.org/resources/shared-responsibility-Global-solidarity-responding-socio-economic-impacts-covid-19",
#         "country": "Global",
#         "category": "healthcare, economy, labor, gendered health impacts",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "The Coronavirus, exhausting inequalities",
#         "description_en": "Statistics of female domination of the medical and cleaning frontline and single parenting, emphasising inequality.",
        
# "title_fr": "Le Coronavirus, des inégalités épuisantes",
# "description_fr": "Statistiques de la domination féminine sur la ligne de front médicale et de nettoyage et monoparentalité, mettant l'accent sur les inégalités.",
#         "titleses": "El coronavirus, desigualdades agotadoras",
#         "descriptionses": "Estadísticas de dominación femenina de la línea médica y de limpieza y la crianza de los hijos solteros, haciendo hincapié en la desigualdad",


#         "link": "https://www.letemps.ch/societe/coronavirus-exhausteur-dinegalites",
#         "country": "Switzerland",
#         "category": "childcare, gendered health impacts",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "Women's role is not to stay beautiful during the quarantine",
#         "description_en": "Sexist memes regarding quarantine beauty standards bringing extra stress to women already juggling more responsibilities",
        
# "title_fr": "Le rôle des femmes n'est pas de rester belle pendant la quarantaine",
# "description_fr": "Des mèmes sexistes concernant les normes de quarantaine en matière de beauté qui créent un stress supplémentaire pour les femmes qui jonglent déjà avec plus de responsabilités",
#         "titleses": "El papel de la mujer no es mantenerse bella durante la cuarentena",
#         "descriptionses": "Memes sexistas sobre los estándares de belleza en cuarentena que generan estrés adicional para las mujeres que ya hacen malabares con más responsabilidades",


#         "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_le-role-des-femmes-n-est-pas-de-rester-belles-durant-le-confinement-une-chronique-de-safia-kessas-et-sofia-cotsoglou?id=10471428",
#         "country": "Belgium",
#         "category": "gendered health impacts",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Some Governments are Using Coronavirus to Restrict Women's Rights",
#         "description_en": "Governments neglecting abortions: classified as 'non-essential treatments', delaying bills, closing centers",
        
# "title_fr": "Certains gouvernements utilisent le coronavirus pour restreindre les droits des femmes",
# "description_fr": "Les gouvernements qui négligent les avortements: classés comme traitements non essentiels , retard des factures, fermeture des centres",
#         "titleses": "Algunos gobiernos están utilizando el coronavirus para restringir los derechos de las mujeres",
#         "descriptionses": "Gobiernos que descuidan los abortos: clasificados como 'tratamientos no esenciales', demorando facturas, cerrando centros",


#         "link": "https://www.aljazeera.com/indepth/opinion/governments-coronavirus-restrict-women-rights-200412095859321.html",
#         "country": "Global",
#         "category": "SRHR",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Issue of Quarantined Domestic Violence and How to Find Help",
#         "description_en": "DV increase, explanation per country of call lines, pharmacy help and other government assistance.",
        
# "title_fr": "Problème de violence domestique en quarantaine et comment trouver de l'aide",
# "description_fr": "Augmentation de la DV, explication par pays des lignes d'appel, aide à la pharmacie et autre aide gouvernementale.",
#         "titleses": "Problema de violencia doméstica en cuarentena y cómo encontrar ayuda",
#         "descriptionses": "aumento de DV, explicación por país de líneas de llamada, ayuda de farmacia y otra asistencia gubernamental",


#         "link": "https://www.bbc.com/mundo/noticias-52009140",
#         "country": "Argentina, Chile, Colombia, Uruguay, Mexico, Peru, Venezuela, Spain",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis, mutual aid resource, organizing tool"
#     },
#     {
#         "title_en": "#TheOtherPandemic, A New Campaign Against Domestic Violence",
#         "description_en": "Spotlight Initiative #LaOtraPandemia #TheOtherPandemic for quick access to assistance and information on domestic violence",
        
# "title_fr": "#TheOtherPandemic, une nouvelle campagne contre la violence domestique",
# "description_fr": "Spotlight Initiative #LaOtraPandemia #TheOtherPandemic pour un accès rapide à l'aide et aux informations sur la violence domestique",
#         "titleses": "#TheOtherPandemic, una nueva campaña contra la violencia doméstica",
#         "descriptionses": "Iniciativa Spotlight #LaOtraPandemia #TheOtherPandemic para un acceso rápido a asistencia e información sobre violencia doméstica",


#         "link": "https://www.clarin.com/sociedad/coronavirus-argentina-laotrapandemia-nueva-campana-violencia-genero_0_93t-SPt_k.html",
#         "country": "Argentina",
#         "category": "gender-based violence",
#         "type": "organizing tool"
#     },
#     {
#         "title_en": "Mexico: From Women's Uprising To COVD-19 Crisis",
#         "description_en": "Accuses Mexican government for lack of gender specific responses while women suffer most",
        
# "title_fr": "Mexique: du soulèvement des femmes à la crise du COVD-19",
# "description_fr": "Accuse le gouvernement mexicain pour le manque de réponses sexospécifiques alors que les femmes souffrent le plus",
#         "titleses": "México: del levantamiento de las mujeres a la crisis COVD-19",
#         "descriptionses": "Acusa al gobierno mexicano por falta de respuestas específicas de género mientras que las mujeres son las que más sufren",


#         "link": "https://indypendent.org/2020/04/mexico-from-womens-uprising-to-covid-19-crisis/",
#         "country": "Mexico",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Threatened by their invisibility: Prostitutes suffer due to COVID-19",
#         "description_en": "Sex workers result to online work, receive no assistance, no safety, are left highly vulnerable.",
        
# "title_fr": "Menacés par leur invisibilité: les prostituées souffrent à cause de COVID-19",
# "description_fr": "Les professionnel (le) s du sexe se retrouvent dans le travail en ligne, ne reçoivent aucune assistance, aucune sécurité, sont très vulnérables.",
#         "titleses": "Amenazado por su invisibilidad: las prostitutas sufren debido a COVID-19",
#         "descriptionses": "Las trabajadoras sexuales resultan en el trabajo en línea, no reciben asistencia, no son seguras, quedan altamente vulnerables",


#         "link": "https://larepublica.pe/mundo/2020/03/30/coronavirus-prostitutas-sufren-por-covid-19-cuarentena-agrava-su-situacion-amenazadas-por-proxenetas/",
#         "country": "Peru",
#         "category": "SRHR, punitive",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "How the Corona Virus Widens the Gender Pay Gap",
#         "description_en": "Women are more highly represented in low-paying jobs, need to continue to close the gender pay gap",
        
# "title_fr": "Comment le virus Corona élargit l'écart de rémunération entre les sexes",
# "description_fr": "Les femmes sont plus représentées dans les emplois peu rémunérés et doivent continuer de combler l'écart de rémunération entre les hommes et les femmes",
#         "titleses": "Cómo el virus Corona amplía la brecha salarial de género",
#         "descriptionses": "Las mujeres están más representadas en trabajos mal remunerados, necesitan continuar cerrando la brecha salarial de género",


#         "link": "https://www.cnn.com/2020/03/31/perspectives/equal-pay-day-coronavirus/index.html",
#         "country": "United States",
#         "category": "economy",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 highlights the failure of neoliberal capitalism",
#         "description_en": "This system has failed to deliver people's basic needs, including access to public health and universal social protections",
        
# "title_fr": "COVID-19 met en évidence l'échec du capitalisme néolibéral",
# "description_fr": "Ce système n'a pas réussi à répondre aux besoins fondamentaux des populations, y compris l'accès à la santé publique et les protections sociales universelles",
#         "titleses": "COVID-19 destaca el fracaso del capitalismo neoliberal",
#         "descriptionses": "Este sistema no ha logrado satisfacer las necesidades básicas de las personas, incluido el acceso a la salud pública y las protecciones sociales universales",


#         "link": "https://apwld.org/covid-19-highlights-the-failure-of-neoliberal-capitalism-we-need-feminist-Global-solidarity/?",
#         "country": "Global, Asia-Pacific",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "How Economic Fallout from the Coronavirus May Disproportionately Affect Women",
#         "description_en": "More mothers are the sole or primary breadwinner; paid family or medical leave is essential",
        
# "title_fr": "Comment les retombées économiques du coronavirus peuvent affecter de manière disproportionnée les femmes",
# "description_fr": "Davantage de mères sont le soutien de famille unique ou principal; un congé familial ou médical rémunéré est essentiel",
#         "titleses": "Cómo las consecuencias económicas del coronavirus pueden afectar desproporcionadamente a las mujeres",
#         "descriptionses": "Más madres son el único o principal sostén de la familia; la licencia familiar o médica remunerada es esencial",


#         "link": "https://www.forbes.com/sites/jenniferbarrett/2020/04/02/how-economic-fallout-from-the-coronavirus-may-disproportionately-affect-women/#775observed response12a836a",
#         "country": "United States",
#         "category": "economy, labor",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "What Do Women and Working Families Need to Face COVID-19?",
#         "description_en": "NWLC summerizes their 4 major priorities for Covid-19 responses.",
        
# "title_fr": "De quoi les femmes et les familles de travailleurs ont-elles besoin pour affronter COVID-19?",
# "description_fr": "NWLC résume ses 4 grandes priorités pour les réponses de Covid-19.",
#         "titleses": "¿Qué necesitan las mujeres y las familias trabajadoras para enfrentar COVID-19?",
#         "descriptionses": "NWLC resume sus 4 prioridades principales para las respuestas de Covid-19",


#         "link": "https://msmagazine.com/2020/03/18/what-do-women-and-working-families-need-to-face-covid-19/",
#         "country": "United States",
#         "category": "economy, childcare",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Solidarity in the time of a pandemic",
#         "description_en": "Solidarity facebook group offering women childcare services, and other assistance helping mental health and jobs",
        
# "title_fr": "Solidarité au temps d'une pandémie",
# "description_fr": "Groupe facebook Solidarité offrant aux femmes des services de garde d'enfants et d'autres formes d'aide à la santé mentale et à l'emploi",
#         "titleses": "Solidaridad en tiempos de pandemia",
#         "descriptionses": "Grupo de facebook solidario que ofrece servicios de guardería para mujeres y otra asistencia para la salud mental y el empleo",


#         "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_solidarite-en-temps-de-pandemie-une-affaire-genree?id=10460115",
#         "country": "Belgium",
#         "category": "childcare",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Domestic Violence Cases Surge During COVID-19 Epidemic",
#         "description_en": "Blog: Increased number of reports of domestic violence during COVID-19, victims being neglected",
        
# "title_fr": "Les cas de violence domestique augmentent pendant l'épidémie de COVID-19",
# "description_fr": "Blog: Augmentation du nombre de signalements de violences domestiques au cours de COVID-19, les victimes étant négligées",
#         "titleses": "Aumento de casos de violencia doméstica durante la epidemia de COVID-19",
#         "descriptionses": "Blog: Mayor número de denuncias de violencia doméstica durante COVID-19, víctimas desatendidas",


#         "link": "http://www.sixthtone.com/news/1005253/domestic-violence-cases-surge-during-covid-19-epidemic",
#         "country": "China",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Why we need to talk more about the potential for COVID-19 to Increase the Risk of Violence against Women and Girls",
#         "description_en": "Summarizes the results of a rapid review of evidence on risks of GBV against girls and women",
        
# "title_fr": "Pourquoi nous devons parler davantage du potentiel de COVID-19 pour augmenter le risque de violence contre les femmes et les filles",
# "description_fr": "Résume les résultats d'un examen rapide des preuves des risques de violence basée sur le genre contre les filles et les femmes",
#         "titleses": "Por qué necesitamos hablar más sobre el potencial de COVID-19 para aumentar el riesgo de violencia contra las mujeres y las niñas",
#         "descriptionses": "Resume los resultados de una revisión rápida de la evidencia sobre los riesgos de VG contra niñas y mujeres",


#         "link": "http://www.sddirect.org.uk/news/2020/03/why-we-need-to-talk-more-about-the-potential-for-covid-19-to-increase-the-risk-of-violence-against-women-and-girls/",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19 and Family Violence",
#         "description_en": "FAQ on how COVID-19 pandemic and other natural disasters have increased the incidence of family violence",
        
# "title_fr": "COVID-19 et la violence familiale",
# "description_fr": "FAQ sur la façon dont la pandémie de COVID-19 et d'autres catastrophes naturelles ont accru l'incidence de la violence familiale",
#         "titleses": "COVID-19 y violencia familiar",
#         "descriptionses": "Preguntas frecuentes sobre cómo la pandemia de COVID-19 y otros desastres naturales han aumentado la incidencia de la violencia familiar",


#         "link": "https://www.thelookout.org.au/family-violence-workers/covid-19-and-family-violence",
#         "country": "Australia",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "What does coronavirus mean for violence against women?",
#         "description_en": "The reasons why violence against women during the COVID-19 pandemic are increasing",
        
# "title_fr": "Que signifie le coronavirus pour la violence contre les femmes?",
# "description_fr": "Les raisons pour lesquelles la violence à l'égard des femmes pendant la pandémie de COVID-19 augmente",
#         "titleses": "¿Qué significa el coronavirus para la violencia contra las mujeres?",
#         "descriptionses": "Las razones por las cuales la violencia contra las mujeres durante la pandemia COVID-19 están aumentando",


#         "link": "https://womensmediacenter.com/news-features/what-does-coronavirus-mean-for-violence-against-women",
#         "country": "Global, United States",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "How to stop Coronavirus Lockdown Leading to and Upsurge in Violence against Women",
#         "description_en": "The assumption that our homes are safe during the COVID-19 pandemic is false",
        
# "title_fr": "Comment arrêter le verrouillage du coronavirus conduisant à une recrudescence de la violence contre les femmes",
# "description_fr": "L'hypothèse selon laquelle nos maisons sont sûres pendant la pandémie de COVID-19 est fausse",
#         "titleses": "Cómo detener el bloqueo del coronavirus que conduce y aumenta la violencia contra las mujeres",
#         "descriptionses": "La suposición de que nuestros hogares están seguros durante la pandemia de COVID-19 es falsa",


#         "link": "https://oxfamblogs.org/fp2p/how-to-stop-coronavirus-lockdown-leading-to-an-upsurge-in-violence-against-women%EF%BB%BF/",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Video Message from Antonio Guterres (UN Secretary-General) on Gender-Based Violence and COVID-19",
#         "description_en": "Guterres notes the increase in domestic violence, urges governments to include prevention and redress as part of response plans",
        
# "title_fr": "Message vidéo d'Antonio Guterres (Secrétaire général de l'ONU) sur la violence sexiste et COVID-19",
# "description_fr": "António Guterres note l'augmentation de la violence domestique, exhorte les gouvernements à inclure la prévention et la réparation dans les plans de réponse",
#         "titleses": "Mensaje de video de Antonio Guterres (Secretario General de las Naciones Unidas) sobre violencia de género y COVID-19",
#         "descriptionses": "Guterres observa el aumento de la violencia doméstica, insta a los gobiernos a incluir la prevención y la reparación como parte de los planes de respuesta",


#         "link": "https://www.youtube.com/watch?time_continue=10&v=SXxnZKom6sg&feature=emb_logo",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Make the Prevention and Redress of Violence Against Women a Key Part of National Response Plans for COVID-19'",
#         "description_en": "Transcript of UN Guterres video message above",
        
# "title_fr": "Faire de la prévention et de la réparation de la violence à l'égard des femmes un élément clé des plans nationaux d'intervention pour COVID-19 '",
# "description_fr": "Transcription du message vidéo ONU Guterres ci-dessus",
#         "titleses": "Hacer de la prevención y reparación de la violencia contra las mujeres una parte clave de los planes nacionales de respuesta para COVID-19 '",
#         "descriptionses": "Transcripción del video mensaje de UN Guterres arriba",


#         "link": "https://www.un.org/en/un-coronavirus-communications-team/make-prevention-and-redress-violence-against-women-key-part",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19: Gender Lens",
#         "description_en": "UN Women calls for intergration of violence against women Data and services in COVID-19 surveys",
        
# "title_fr": "COVID-19: Gender Lens",
# "description_fr": "ONU Femmes appelle à l'intégration de la violence à l'égard des femmes Données et services dans les enquêtes COVID-19",
#         "titleses": "COVID-19: Lente de género",
#         "descriptionses": "ONU Mujeres llama a la integración de la violencia contra las mujeres Datos y servicios en las encuestas COVID-19",


#         "link": "https://mailchi.mp/6f266ed24Organizing Tool9/covid-19-gender-equality-matters",
#         "country": "Global",
#         "category": "gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Feminist and women's right group demand gender responsive COVID 19 responses",
#         "description_en": "Women's rights organisation cautions on the possibilities of increase in domestic and sexual violence as lockdown extends",
        
# "title_fr": "Les groupes féministes et féministes de droite exigent des réponses COVID 19 sensibles au genre",
# "description_fr": "Une organisation de défense des droits des femmes met en garde contre les possibilités d'augmentation de la violence domestique et sexuelle à mesure que le verrouillage se prolonge",
#         "titleses": "El grupo feminista y de derechos de las mujeres exige respuestas COVID 19 sensibles al género",
#         "descriptionses": "La organización de derechos de las mujeres advierte sobre las posibilidades de aumento de la violencia doméstica y sexual a medida que se extiende el bloqueo",


#         "link": "https://soulwriteempire.com/lockdown-may-increase-domestic-violence-nigerian-women-rights-groups-warn/",
#         "country": "Nigeria",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Gender violence is a silent pandemic",
#         "description_en": "12 Women have been murdered since the quarantine began",
        
# "title_fr": "La violence sexiste est une pandémie silencieuse",
# "description_fr": "12 femmes ont été assassinées depuis le début de la quarantaine",
#         "titleses": "La violencia de género es una pandemia silenciosa",
#         "descriptionses": "12 mujeres han sido asesinadas desde que comenzó la cuarentena",


#         "link": "https://elpais.com/sociedad/2020-04-07/la-violencia-de-genero-es-una-pandemia-silenciosa.html",
#         "country": "Colombia",
#         "category": "gender-based violence, punitive",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Gender violence: hotlines for victims during quarantine",
#         "description_en": "Main numbers to call if faced with crisis",
        
# "title_fr": "Violence de genre: hotlines pour les victimes en quarantaine",
# "description_fr": "Numéros principaux à appeler en cas de crise",
#         "titleses": "Violencia de género: líneas directas para las víctimas durante la cuarentena",
#         "descriptionses": "Números principales a los que llamar en caso de crisis",


#         "link": "https://colombia.as.com/colombia/2020/04/15/tikitakas/1586907724_975905.html",
#         "country": "Colombia",
#         "category": "digital surveillance, gender-based violence, disability",
#         "type": "mutual aid resource"
#     },
#     {
#         "title_en": "BAHRAIN: ENSURE PROTECTION OF MIGRANT WORKERS IN COVID-19 RESPONSE: JOINT LETTER",
#         "description_en": "A joint letter from a coalition of civil society organizations and trade unions, urging the Government of Bahrain to ensure that migrant workers receive adequate protection from COVID-19.",
        
# "title_fr": "BAHREIN: ASSURER LA PROTECTION DES TRAVAILLEURS MIGRANTS DANS LA RÉPONSE DE COVID-19: LETTRE CONJOINTE",
# "description_fr": "Une lettre conjointe d'une coalition d'organisations de la société civile et de syndicats, exhortant le gouvernement de Bahreïn à veiller à ce que les travailleurs migrants reçoivent une protection adéquate contre le COVID-19.",
#         "titleses": "BAHRAIN: ASEGURE LA PROTECCIÓN DE LOS TRABAJADORES MIGRANTES EN LA RESPUESTA DEL COVID-19: CARTA CONJUNTA",
#         "descriptionses": "Una carta conjunta de una coalición de organizaciones de la sociedad civil y sindicatos, instando al Gobierno de Bahrein a garantizar que los trabajadores migrantes reciban la protección adecuada contra COVID-19",


#         "link": "https://www.amnesty.org/en/documents/mde11/2168/2020/en/",
#         "country": "Bahrain",
#         "category": "healthcare, economy, labor, race",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "UN Women commends Egypt's gender perspective in COVID-19 response plan",
#         "description_en": "UN Women issued a statement commending the National Council for Women for its efforts to ensure that a gender perspective is adopted in Egypt’s COVID-19 response plan",
        
# "title_fr": "ONU Femmes salue la perspective de genre de l'Égypte dans le plan de réponse COVID-19",
# "description_fr": "ONU Femmes a publié une déclaration félicitant le Conseil national des femmes pour ses efforts visant à garantir qu'une perspective de genre soit adoptée dans le plan de réponse COVID-19 de l'Égypte",
#         "titleses": "ONU Mujeres elogia la perspectiva de género de Egipto en el plan de respuesta COVID-19",
#         "descriptionses": "ONU Mujeres emitió una declaración elogiando al Consejo Nacional de la Mujer por sus esfuerzos para garantizar que se adopte una perspectiva de género en el plan de respuesta COVID-19 de Egipto",


#         "link": "https://www.egypttoday.com/Article/2/84441/UN-Women-commends-Egypt-s-gender-perspective-in-COVID-19",
#         "country": "Egypt",
#         "category": "healthcare, education",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "Age, Sex, Existing Conditions of COVID-19 Cases and Deaths",
#         "description_en": "Cases and death rate based on age and sex, doesn't go into more depth.",
        
# "title_fr": "Âge, sexe, conditions existantes des cas et des décès liés à COVID-19",
# "description_fr": "Les cas et le taux de mortalité en fonction de l'âge et du sexe ne vont pas plus loin.",
#         "titleses": "Edad, sexo, condiciones existentes de casos y muertes de COVID-19",
#         "descriptionses": "Los casos y la tasa de mortalidad según la edad y el sexo no profundizan más",


#         "link": "https://www.worldometers.info/coronavirus/coronavirus-age-sex-demographics/",
#         "country": "United States",
#         "category": "healthcare",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "ICNARC report on COVID-19 in critical care",
#         "description_en": "Cases and death rates up to March 19th, does not dive into gender differences.",
        
# "title_fr": "Rapport de l'ICNARC sur le COVID-19 en soins intensifs",
# "description_fr": "Les cas et les taux de mortalité jusqu'au 19 mars ne plongent pas dans les différences entre les sexes.",
#         "titleses": "Informe de ICNARC sobre COVID-19 en cuidados críticos",
#         "descriptionses": "Los casos y las tasas de mortalidad hasta el 19 de marzo no se sumergen en las diferencias de género",


#         "link": "https://www.icnarc.org/DataServices/Attachments/Download/a9875849-f16c-epolicy or law1-9124-00505601089b",
#         "country": "United Kingdom",
#         "category": "healthcare",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Sex, gender and COVID-19: Disaggregated data and health disparities",
#         "description_en": "Whether sex and gender matter to clinical pathways and outcomes associated with COVID-19",
        
# "title_fr": "Sexe, genre et COVID-19: données désagrégées et disparités en matière de santé",
# "description_fr": "Le sexe et le genre sont-ils importants pour les voies cliniques et les résultats associés à COVID-19",
#         "titleses": "Sexo, género y COVID-19: datos desglosados ​​y disparidades de salud",
#         "descriptionses": "Si el sexo y el género son importantes para las vías clínicas y los resultados asociados con COVID-19",


#         "link": "https://blogs.bmj.com/bmjgh/2020/03/24/sex-gender-and-covid-19-disaggregated-data-and-health-disparities/",
#         "country": "Asia-Pacific, Pacific Islands, Anglophone Africa, Europe, Francophone Africa, Latin America and the Caribbean, Middle East and North Africa",
#         "category": "healthcare, gendered health impacts, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Sex, gender and COVID-19 (Live data tracker)",
#         "description_en": "Countries need to begin both collecting and publicly reporting sex-disaggregated data, however, they currently aren't.",
        
# "title_fr": "Sex, gender and COVID-19 (Live data tracker)",
# "description_fr": "Les pays doivent commencer à collecter et à publier des données ventilées par sexe, mais ce n'est pas le cas actuellement.",
#         "titleses": "Sexo, género y COVID-19 (Rastreador de datos en vivo)",
#         "descriptionses": "Los países deben comenzar a recopilar y reportar públicamente datos desagregados por sexo, sin embargo, actualmente no lo están haciendo",


#         "link": "https://Globalhealth5050.org/covid19/",
#         "country": "Global",
#         "category": "healthcare, gendered health impacts, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Which occupations expose workers to COVID-19 most?",
#         "description_en": "Explores which jobs create the most risk of exposure to COVID-19, examples are nurses, dentists.",
        
# "title_fr": "Quelles sont les professions qui exposent le plus les travailleurs au COVID-19?",
# "description_fr": "Explore les emplois qui créent le plus de risques d'exposition au COVID-19, par exemple les infirmières, les dentistes.",
#         "titleses": "¿Qué ocupaciones exponen más a los trabajadores a COVID-19?",
#         "descriptionses": "Explora qué trabajos crean el mayor riesgo de exposición a COVID-19, ejemplos son enfermeras, dentistas",


#         "link": "https://autonomy.work/portfolio/jari/",
#         "country": "United Kingdom",
#         "category": "labor",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Covid-19 worldwide: we need precise data by age group and sex urgently",
#         "description_en": "We need reporting on sex and age results as this is currently not being done.",
        
# "title_fr": "Covid-19 dans le monde: nous avons un besoin urgent de données précises par groupe d'âge et par sexe",
# "description_fr": "Nous avons besoin de rapports sur les résultats en matière de sexe et d'âge car cela n'est pas fait actuellement.",
#         "titleses": "Covid-19 en todo el mundo: necesitamos datos precisos por grupo de edad y sexo con urgencia",
#         "descriptionses": "Necesitamos informar sobre los resultados de sexo y edad, ya que esto no se está haciendo actualmente",


#         "link": "https://www.bmj.com/content/369/bmj.m1366",
#         "country": "Global",
#         "category": "gendered health impacts, gender-based violence",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "Does Covid-19 Hit Women and Men Differently? U.S. Isn’t Keeping Track",
#         "description_en": "Though we're monitoring the effects of age on COVID-19, we're not doing that with sex.",
        
# "title_fr": "Covid-19 frappe-t-il les femmes et les hommes différemment? Les États-Unis ne suivent pas",
# "description_fr": "Bien que nous surveillions les effets de l'âge sur COVID-19, nous ne faisons pas cela avec le sexe.",
#         "titleses": "¿Covid-19 golpea a mujeres y hombres de manera diferente? Estados Unidos no está siguiendo la pista",
#         "descriptionses": "Aunque estamos monitoreando los efectos de la edad en COVID-19, no lo estamos haciendo con el sexo",


#         "link": "https://www.nytimes.com/2020/04/03/us/coronavirus-male-female-data-bias.html",
#         "country": "United States",
#         "category": "gendered health impacts, gender-based violence",
#         "type": "scientific data, feminist statement or analysis"
#     },
#     {
#         "title_en": "Covid-19 and gender equality",
#         "description_en": "A webpage aimed at providing information on gender differences for effects of COVID-19.",
        
# "title_fr": "Covid-19 et l'égalité des sexes",
# "description_fr": "Une page Web visant à fournir des informations sur les différences entre les sexes concernant les effets de COVID-19.",
#         "titleses": "Covid-19 y la igualdad de género",
#         "descriptionses": "Una página web destinada a proporcionar información sobre las diferencias de género para los efectos de COVID-19",


#         "link": "https://eige.europa.eu/topics/health/covid-19-and-gender-equality",
#         "country": "Europe",
#         "category": "healthcare, economy, gendered health impacts, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Utilizing evidence-based research to incorporate a gendered lens for the COVID-19 pandemic",
#         "description_en": "A portal that provides information useful for policymakers, practitioners, etc to make informed decisions.",
        
# "title_fr": "Utilisation de la recherche factuelle pour intégrer une lentille sexospécifique à la pandémie de COVID-19",
# "description_fr": "Un portail qui fournit des informations utiles aux décideurs politiques, aux praticiens, etc. pour prendre des décisions éclairées.",
#         "titleses": "Utilizando investigación basada en evidencia para incorporar una lente de género para la pandemia de COVID-19",
#         "descriptionses": "Un portal que proporciona información útil para los responsables políticos, profesionales, etc. para tomar decisiones informadas",


#         "link": "https://gap.hks.harvard.edu/gap-covid19",
#         "country": "Global",
#         "category": "healthcare, economy, gendered health impacts, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "A Meta-Analysis of the Association between Gender and Protective Behaviors in Response to Respiratory Epidemics and Pandemics",
#         "description_en": "An analysis done on gender differences in how men behave versus women in pharmaceutical areas.",
        
# "title_fr": "Une méta-analyse de l'association entre le genre et les comportements protecteurs en réponse aux épidémies respiratoires et aux pandémies",
# "description_fr": "Une analyse effectuée sur les différences entre les sexes dans le comportement des hommes par rapport aux femmes dans les domaines pharmaceutiques.",
#         "titleses": "Un metaanálisis de la asociación entre género y comportamientos protectores en respuesta a epidemias y pandemias respiratorias",
#         "descriptionses": "Un análisis realizado sobre las diferencias de género en el comportamiento de los hombres frente a las mujeres en las áreas farmacéuticas",


#         "link": "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5074573/",
#         "country": "Global",
#         "category": "healthcare, gendered health impacts, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "Action: Call for a Feminist COVID-19 Policy",
#         "description_en": "This article calls for and outlines the characteristics of a feminist policy for COVID-19",
        
# "title_fr": "Action: Appel à une politique féministe COVID-19",
# "description_fr": "Cet article appelle et décrit les caractéristiques d'une politique féministe pour COVID-19",
#         "titleses": "Acción: convocatoria de una política feminista de COVID-19",
#         "descriptionses": "Este artículo solicita y describe las características de una política feminista para COVID-19",


#         "link": "http://feministallianceforrights.org/blog/2020/03/20/action-call-for-a-feminist-covid-19-policy/",
#         "country": "Global",
#         "category": "healthcare, economy, gendered health impacts, gender-based violence",
#         "type": "feminist statement or analysis"
#     },
#     {
#         "title_en": "COVID-19: Emerging gender data and why it matters",
#         "description_en": "Women and girls face unequal access to work, healthcare, and face increasing domestic violence",
        
# "title_fr": "COVID-19: Nouvelles données sur le genre et pourquoi elles sont importantes",
# "description_fr": "Les femmes et les filles sont confrontées à un accès inégal au travail, aux soins de santé et font face à une violence domestique croissante",
#         "titleses": "COVID-19: datos de género emergentes y por qué es importante",
#         "descriptionses": "Las mujeres y las niñas enfrentan un acceso desigual al trabajo, la atención médica y una violencia doméstica cada vez mayor",


#         "link": "https://data.unwomen.org/resources/covid-19-emerging-gender-data-and-why-it-matters",
#         "country": "Global",
#         "category": "gendered health impacts, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "COVID-19 and gender: What do we know; what do we need to know?",
#         "description_en": "Importance of capturing health impacts differing between women and men due to current inconsistencies",
        
# "title_fr": "COVID-19 et le genre: que savons-nous, que devons-nous savoir?",
# "description_fr": "Importance de saisir les impacts sur la santé qui diffèrent entre les femmes et les hommes en raison des incohérences actuelles",
#         "titleses": "COVID-19 y género: ¿Qué sabemos; qué necesitamos saber?",
#         "descriptionses": "Importancia de capturar los impactos en la salud que difieren entre mujeres y hombres debido a las inconsistencias actuales",


#         "link": "https://data.unwomen.org/features/covid-19-and-gender-what-do-we-know-what-do-we-need-know",
#         "country": "Global",
#         "category": "gendered health impacts, gender-based violence",
#         "type": "scientific data"
#     },
#     {
#         "title_en": "COVID-19 situation update for the WHO European Region",
#         "description_en": "COVID-19 data from April 6th to 12th; does not include much gender data at all.",
        
# "title_fr": "Mise à jour de la situation du COVID-19 pour la Région européenne de l'OMS",
# "description_fr": "Données COVID-19 du 6 au 12 avril; n'incluent pas beaucoup de données sur le sexe.",
#         "titleses": "Actualización de la situación COVID-19 para la Región Europea de la OMS",
#         "descriptionses": "datos de COVID-19 del 6 al 12 de abril; no incluye muchos datos de género en absoluto",


#         "link": "http://www.euro.who.int/en/health-topics/health-emergencies/coronavirus-covid-19/weekly-surveillance-report",
#         "country": "Europe",
#         "category": "healthcare",
#         "type": "scientific data"
#     },
{
        "title_en": "Domestic Violence Cases Surge During COVID-19 Epidemic",
        "description_en": "Blog: Increased number of reports of domestic violence during COVID-19, victims being neglected",
        "title_es": "Aumento de casos de violencia doméstica durante la epidemia de COVID-19",
        "description_es": "Blog: Mayor número de denuncias de violencia doméstica durante COVID-19, víctimas descuidadas",


        "link": "http://www.sixthtone.com/news/1005253/domestic-violence-cases-surge-during-covid-19-epidemic",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "China"
    },
    {
        "title_en": "Why we need to talk more about the potential for COVID-19 to Increase the Risk of Violence against Women and Girls",
        "description_en": "Summarizes the results of a rapid review of evidence on risks of GBV against girls and women",
        "title_es": "Por qué necesitamos hablar más sobre el potencial de COVID-19 para aumentar el riesgo de violencia contra las mujeres y las niñas",
        "description_es": "Resume los resultados de una revisión rápida de la evidencia sobre los riesgos de violencia de género contra niñas y mujeres",


        "link": "http://www.sddirect.org.uk/news/2020/03/why-we-need-to-talk-more-about-the-potential-for-covid-19-to-increase-the-risk-of-violence-against-women-and-girls/",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "COVID-19 and Family Violence",
        "description_en": "FAQ on how COVID-19 pandemic and other natural disasters have increased the incidence of family violence",
        "title_es": "COVID-19 y violencia familiar",
        "description_es": "Preguntas frecuentes sobre cómo la pandemia de COVID-19 y otros desastres naturales han aumentado la incidencia de la violencia familiar",


        "link": "https://www.thelookout.org.au/family-violence-workers/covid-19-and-family-violence",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Australia"
    },
    {
        "title_en": "How to stop Coronavirus Lockdown Leading to and Upsurge in Violence against Women",
        "description_en": "The assumption that our homes are safe during the COVID-19 pandemic is false",
        "title_es": "Cómo detener el bloqueo del coronavirus que conduce y aumenta la violencia contra las mujeres",
        "description_es": "La suposición de que nuestros hogares están seguros durante la pandemia de COVID-19 es falsa",


        "link": "https://oxfamblogs.org/fp2p/how-to-stop-coronavirus-lockdown-leading-to-an-upsurge-in-violence-against-women%EF%BB%BF/",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Video Message from Antonio Guterres (UN Secretary-General) on gender-based violence and COVID-19",
        "description_en": "Guterres notes the increase in domestic violence, urges governments to include prevention and redress as part of response plans",
        "title_es": "Video mensaje de Antonio Guterres (Secretario General de la ONU) sobre violencia de género y COVID-19",
        "description_es": "Guterres observa el aumento de la violencia doméstica, insta a los gobiernos a incluir la prevención y la reparación como parte de los planes de respuesta",


        "link": "https://www.youtube.com/watch?time_continue=10&v=SXxnZKom6sg&feature=emb_logo",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Make the Prevention and Redress of Violence Against Women a Key Part of National Response Plans for COVID-19'",
        "description_en": "Transcript of UN Guterres video message above",
        "title_es": "Hacer de la prevención y reparación de la violencia contra las mujeres una parte clave de los planes nacionales de respuesta para COVID-19 '",
        "description_es": "Transcripción del video mensaje de la ONU Guterres arriba",


        "link": "https://www.un.org/en/un-coronavirus-communications-team/make-prevention-and-redress-violence-against-women-key-part",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "COVID-19: Gender Lens",
        "description_en": "UN Women calls for intergration of violence against women Data and services in COVID-19 surveys",
        "title_es": "COVID-19: Lente de género",
        "description_es": "ONU Mujeres llama a la integración de la violencia contra las mujeres Datos y servicios en las encuestas COVID-19",


        "link": "https://mailchi.mp/6f266ed24organizing tool9/covid-19-gender-equality-matters",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Feminist and women's right group demand gender responsive COVID 19 responses",
        "description_en": "Women's rights organisation cautions on the possibilities of increase in domestic and sexual violence as lockdown extends",
        "title_es": "El grupo feminista y de derechos de las mujeres exige respuestas COVID 19 sensibles al género",
        "description_es": "La organización de derechos de las mujeres advierte sobre las posibilidades de aumento de la violencia doméstica y sexual a medida que se extiende el bloqueo",


        "link": "https://soulwriteempire.com/lockdown-may-increase-domestic-violence-nigerian-women-rights-groups-warn/",
        "type": "feminist statement or analysis",
        "country": "Nigeria"
    },
    {
        "title_en": "Gender violence is a silent pandemic",
        "description_en": "12 Women have been murdered since the quarantine began",
        "title_es": "La violencia de género es una pandemia silenciosa",
        "description_es": "12 mujeres han sido asesinadas desde que comenzó la cuarentena",


        "link": "https://elpais.com/sociedad/2020-04-07/la-violencia-de-genero-es-una-pandemia-silenciosa.html",
        "category": "gender-based violence, punitive",
        "type": "feminist statement or analysis",
        "country": "Colombia"
    },
    {
        "title_en": "Gender violence: hotlines for victims during quarantine",
        "description_en": "Main numbers to call if faced with crisis",
        "title_es": "Violencia de género: líneas directas para las víctimas durante la cuarentena",
        "description_es": "Números principales a los que llamar en caso de crisis",


        "link": "https://colombia.as.com/colombia/2020/04/15/tikitakas/1586907724_975905.html",
        "category": "digital surveillance, gender-based violence, disability",
        "type": "mutual aid resource",
        "country": "Colombia"
    },
    {
        "title_en": "BAHRAIN: ENSURE PROTECTION OF MIGRANT WORKERS IN COVID-19 RESPONSE: JOINT LETTER",
        "description_en": "A joint letter from a coalition of civil society organizations and trade unions, urging the Government of Bahrain to ensure that migrant workers receive adequate protection from COVID-19.",
        "title_es": "BAHRAIN: ASEGURE LA PROTECCIÓN DE LOS TRABAJADORES MIGRANTES EN LA RESPUESTA DEL COVID-19: CARTA CONJUNTA",
        "description_es": "Una carta conjunta de una coalición de organizaciones de la sociedad civil y sindicatos, instando al Gobierno de Bahrein a garantizar que los trabajadores migrantes reciban protección adecuada contra COVID-19",


        "link": "https://www.amnesty.org/en/documents/mde11/2168/2020/en/",
        "category": "healthcare, economy, labor, race",
        "type": "feminist statement or analysis",
        "country": "Bahrain"
    },
    {
        "title_en": "UN Women commends Egypt's gender perspective in COVID-19 response plan",
        "description_en": "UN Women issued a statement commending the National Council for Women for its efforts to ensure that a gender perspective is adopted in Egypt’s COVID-19 response plan",
        "title_es": "ONU Mujeres elogia la perspectiva de género de Egipto en el plan de respuesta COVID-19",
        "description_es": "ONU Mujeres emitió una declaración elogiando al Consejo Nacional de la Mujer por sus esfuerzos para garantizar que se adopte una perspectiva de género en el plan de respuesta COVID-19 de Egipto",


        "link": "https://www.egypttoday.com/Article/2/84441/UN-Women-commends-Egypt-s-gender-perspective-in-COVID-19",
        "category": "healthcare, education",
        "type": "feminist statement or analysis",
        "country": "Egypt"
    },
    {
        "title_en": "Age, Sex, Existing Conditions of COVID-19 Cases and Deaths",
        "description_en": "Cases and death rate based on age and sex, doesn't go into more depth.",
        "title_es": "Edad, sexo, condiciones existentes de casos y muertes de COVID-19",
        "description_es": "Los casos y la tasa de mortalidad según la edad y el sexo no profundizan más",


        "link": "https://www.worldometers.info/coronavirus/coronavirus-age-sex-demographics/",
        "category": "healthcare",
        "type": "scientific data",
        "country": "United States"
    },
    {
        "title_en": "ICNARC report on COVID-19 in critical care",
        "description_en": "Cases and death rates up to March 19th, does not dive into gender differences.",
        "title_es": "Informe de ICNARC sobre COVID-19 en cuidados críticos",
        "description_es": "Los casos y las tasas de mortalidad hasta el 19 de marzo no se sumergen en las diferencias de género",


        "link": "https://www.icnarc.org/DataServices/Attachments/Download/a9875849-f16c-ea11-9124-00505601089b",
        "category": "healthcare",
        "type": "scientific data",
        "country": "United Kingdom"
    },
    {
        "title_en": "Sex, gender and COVID-19: Disaggregated data and health disparities",
        "description_en": "Whether sex and gender matter to clinical pathways and outcomes associated with COVID-19",
        "title_es": "Sexo, género y COVID-19: datos desglosados ​​y disparidades de salud",
        "description_es": "Si el sexo y el género son importantes para las vías clínicas y los resultados asociados con COVID-19",


        "link": "https://blogs.bmj.com/bmjgh/2020/03/24/sex-gender-and-covid-19-disaggregated-data-and-health-disparities/",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data",
        "country": "Asia-Pacific, Pacific Islands, Anglophone Africa, Europe, Francophone Africa, Latin America and the Caribbean, Middle East and North Africa"
    },
    {
        "title_en": "Sex, gender and COVID-19 (Live data tracker)",
        "description_en": "Countries need to begin both collecting and publicly reporting sex-disaggregated data, however, they currently aren't.",
        "title_es": "Sexo, género y COVID-19 (Rastreador de datos en vivo)",
        "description_es": "Los países deben comenzar a recopilar y reportar públicamente datos desagregados por sexo, sin embargo, actualmente no lo están haciendo",


        "link": "https://globalhealth5050.org/covid19/",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data",
        "country": "Global"
    },
    {
        "title_en": "Which occupations expose workers to COVID-19 most?",
        "description_en": "Explores which jobs create the most risk of exposure to COVID-19, examples are nurses, dentists.",
        "title_es": "¿Qué ocupaciones exponen más a los trabajadores a COVID-19?",
        "description_es": "Explora qué trabajos crean el mayor riesgo de exposición a COVID-19, ejemplos son enfermeras, dentistas",


        "link": "https://autonomy.work/portfolio/jari/",
        "category": "labor",
        "type": "scientific data",
        "country": "United Kingdom"
    },
    {
        "title_en": "Covid-19 worldwide: we need precise data by age group and sex urgently",
        "description_en": "We need reporting on sex and age results as this is currently not being done.",
        "title_es": "Covid-19 en todo el mundo: necesitamos datos precisos por grupo de edad y sexo con urgencia",
        "description_es": "Necesitamos informar sobre los resultados de sexo y edad ya que esto no se está haciendo actualmente",


        "link": "https://www.bmj.com/content/369/bmj.m1366",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Does Covid-19 Hit Women and Men Differently? U.S. Isn’t Keeping Track",
        "description_en": "Though we're monitoring the effects of age on COVID-19, we're not doing that with sex.",
        "title_es": "¿Covid-19 golpea a mujeres y hombres de manera diferente? Estados Unidos no está siguiendo la pista",
        "description_es": "Aunque estamos monitoreando los efectos de la edad en COVID-19, no lo estamos haciendo con el sexo",


        "link": "https://www.nytimes.com/2020/04/03/us/coronavirus-male-female-data-bias.html",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "United States"
    },
    {
        "title_en": "Covid-19 and gender equality",
        "description_en": "A webpage aimed at providing information on gender differences for effects of COVID-19.",
        "title_es": "Covid-19 y la igualdad de género",
        "description_es": "Una página web destinada a proporcionar información sobre las diferencias de género para los efectos de COVID-19",


        "link": "https://eige.europa.eu/topics/health/covid-19-and-gender-equality",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "scientific data",
        "country": "Europe"
    },
    {
        "title_en": "Utilizing evidence-based research to incorporate a gendered lens for the COVID-19 pandemic",
        "description_en": "A portal that provides information useful for policymakers, practitioners, etc to make informed decisions.",
        "title_es": "Utilizando investigación basada en evidencia para incorporar una lente de género para la pandemia de COVID-19",
        "description_es": "Un portal que proporciona información útil para los responsables políticos, profesionales, etc. para tomar decisiones informadas",


        "link": "https://gap.hks.harvard.edu/gap-covid19",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "scientific data",
        "country": "Global"
    },
    {
        "title_en": "A Meta-Analysis of the Association between Gender and Protective Behaviors in Response to Respiratory Epidemics and Pandemics",
        "description_en": "An analysis done on gender differences in how men behave versus women in pharmaceutical areas.",
        "title_es": "Un metaanálisis de la asociación entre género y comportamientos protectores en respuesta a epidemias y pandemias respiratorias",
        "description_es": "Un análisis realizado sobre las diferencias de género en el comportamiento de los hombres frente a las mujeres en las áreas farmacéuticas",


        "link": "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5074573/",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data",
        "country": "Global"
    },
    {
        "title_en": "Action: Call for a Feminist COVID-19 Policy",
        "description_en": "This article calls for and outlines the characteristics of a feminist policy for COVID-19",
        "title_es": "Acción: convocatoria de una política feminista de COVID-19",
        "description_es": "Este artículo solicita y describe las características de una política feminista para COVID-19",


        "link": "http://feministallianceforrights.org/blog/2020/03/20/action-call-for-a-feminist-covid-19-policy/",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "COVID-19: Emerging gender data and why it matters",
        "description_en": "Women and girls face unequal access to work, healthcare, and face increasing domestic violence",
        "title_es": "COVID-19: datos de género emergentes y por qué es importante",
        "description_es": "Las mujeres y las niñas enfrentan un acceso desigual al trabajo, a la atención médica y enfrentan una violencia doméstica cada vez mayor",


        "link": "https://data.unwomen.org/resources/covid-19-emerging-gender-data-and-why-it-matters",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data",
        "country": "Asia-Pacific, Pacific Islands, Anglophone Africa, Europe, Francophone Africa, Latin America and the Caribbean, Middle East and North Africa"
    },
    {
        "title_en": "COVID-19 and gender: What do we know; what do we need to know?",
        "description_en": "Importance of capturing health impacts differing between women and men due to current inconsistencies",
        "title_es": "COVID-19 y género: ¿Qué sabemos; qué necesitamos saber?",
        "description_es": "Importancia de capturar los impactos en la salud que difieren entre mujeres y hombres debido a las inconsistencias actuales",


        "link": "https://data.unwomen.org/features/covid-19-and-gender-what-do-we-know-what-do-we-need-know",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data",
        "country": "Asia-Pacific, Pacific Islands, Anglophone Africa, Europe, Francophone Africa, Latin America and the Caribbean, Middle East and North Africa"
    },
    {
        "title_en": "COVID-19 situation update for the WHO European Region",
        "description_en": "COVID-19 data from April 6th to 12th; does not include much gender data at all.",
        "title_es": "Actualización de la situación COVID-19 para la Región Europea de la OMS",
        "description_es": "datos de COVID-19 del 6 al 12 de abril; no incluye muchos datos de género en absoluto",


        "link": "http://www.euro.who.int/en/health-topics/health-emergencies/coronavirus-covid-19/weekly-surveillance-report",
        "category": "healthcare",
        "type": "scientific data",
        "country": "Europe"
    },
    {
        "title_en": "Shared responsibility, global solidarity: Responding to the socio-economic impacts of COVID-19",
        "description_en": "A call to action to focus on the impacts of COVID-19 on already disadvantaged groups",
        "title_es": "Responsabilidad compartida, solidaridad global: respuesta a los impactos socioeconómicos de COVID-19",
        "description_es": "Un llamado a la acción para centrarse en los impactos de COVID-19 en grupos ya desfavorecidos",


        "link": "https://unsdg.un.org/sites/default/files/2020-03/SG-Report-Socio-Economic-Impact-of-Covid19.pdf",
        "category": "healthcare, education, economy, gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Women’s Needs And Gender Equality In Lebanon’s Covid-19 Response",
        "description_en": "Raising awareness of gender related issues in Lebanon due to COVID-19 based on past outbreaks",
        "title_es": "Necesidades de las mujeres e igualdad de género en la respuesta Covid-19 del Líbano",
        "description_es": "Concienciar sobre cuestiones de género en el Líbano debido a COVID-19 en base a brotes pasados",


        "link": "https://www2.unwomen.org/-/media/field%20office%20arab%20states/attachments/publications/2020/03/updated%20lebanon%20brief/gender%20and%20covid_english.pdf?la=en&vs=403",
        "category": "healthcare, economy, labor, gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Lebanon"
    },
    {
        "title_en": "Gender Alert On Covid-19 Lebanon",
        "description_en": "UN Women, WHO, and others providing alerts on gender issues due to COVID-19 in Lebanon",
        "title_es": "Alerta de género en Covid-19 Líbano",
        "description_es": "ONU Mujeres, OMS y otros que brindan alertas sobre cuestiones de género debido a COVID-19 en el Líbano",


        "link": "https://www2.unwomen.org/-/media/field%20office%20arab%20states/attachments/publications/2020/04/gender%20and%20covid-19%20in%20lebanon/gender%20alert%20on%20covid%20lebanon_%20final.pdf?la=en&vs=4208",
        "category": "healthcare, economy, labor, gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Lebanon"
    },
    {
        "title_en": "Gender and COVID-19: A guidance note for parliaments",
        "description_en": "Call for parliaments to take a look at gendered dimensions of COVID-19 when making policies",
        "title_es": "Género y COVID-19: una nota de orientación para los parlamentos",
        "description_es": "Solicite a los parlamentos que analicen las dimensiones de género de COVID-19 al elaborar políticas",


        "link": "https://www.ipu.org/gender-and-covid-19-guidance-note-parliaments",
        "category": "healthcare, economy, labor, gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Framework for a Gender Analysis: COVID-19 Crisis Response",
        "description_en": "Provides framework for COVID-19 gender impacts to ensure effects on different genders is accurately reported",
        "title_es": "Marco para un análisis de género: respuesta a la crisis COVID-19",
        "description_es": "Proporciona un marco para los impactos de género de COVID-19 para garantizar que se notifiquen con precisión los efectos en diferentes géneros",


        "link": "https://docs.google.com/document/d/1KL_seo3QN8Hemd2XTgLVDQwD8uyCXVV6yEUrH3bUiHg/edit?fbclid=IwAR2OSRXdI13nDu9LugyG5IRnpsNBZV6cm5aGCEXiC1blgiPPiOiQ0X1K4qg",
        "category": "healthcare, economy, childcare, labor, gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Call for urgent action: renewed commitment to gender responsive research",
        "description_en": "Gender and sex disaggregated data of COVID-19 impacts must be collected and reported on",
        "title_es": "Llamado a la acción urgente: compromiso renovado con la investigación sensible al género",
        "description_es": "Los datos desglosados ​​por género y sexo de los impactos de COVID-19 deben recopilarse y notificarse",


        "link": "https://www.gendro.org/statements",
        "category": "gendered health impacts",
        "type": "scientific data, feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Supporting Women Throughout Coronavirus (Covid-19) Emergency Response And Economic Recovery",
        "description_en": "Outlines impacts of COVID-19 on women and girls in sub-saharan Africa and mechanisms to help",
        "title_es": "Apoyando a las mujeres a lo largo del coronavirus (Covid-19) Respuesta de emergencia y recuperación económica",
        "description_es": "Describe los impactos de COVID-19 en mujeres y niñas en África subsahariana y mecanismos para ayudar",


        "link": "https://openknowledge.worldbank.org/bitstream/handle/10986/33612/Supporting-Women-Throughout-the-Coronavirus-Covid-19-Emergency-Response-and-Economic-Recovery.pdf?sequence=1&isAllowed=y",
        "category": "healthcare, economy, childcare, labor, gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "country": "Anglophone Africa, Francophone Africa"
    },
    {
        "title_en": "Building people to people solidarity in southern africa-Rural Women's Assemby update",
        "description_en": "Rural women's assemly status report on covid-19 and southern africa",
        "title_es": "Actualización de la solidaridad entre personas en el sur de África - Actualización de la Asamblea de Mujeres Rurales",
        "description_es": "Informe sobre el estado de la asamblea de mujeres rurales en covid-19 y el sur de África",


        "link": "https://ruralwomensassembly.files.wordpress.com/2020/04/final-update-blog-on-covid-19-rural-women_with-banner.pdf",
        "category": "healthcare, economy, labor, food",
        "type": "feminist statement or analysis",
        "country": "Anglophone Africa"
    },
    {
        "title_en": "COVID-19 – Crisis upon Crisis in Africa: An Ecofeminist Perspective",
        "description_en": "Ecofeminist perspective to covid-19 policy response and organising in Africa",
        "title_es": "COVID-19 - Crisis tras crisis en África: una perspectiva ecofeminista",
        "description_es": "Perspectiva ecofeminista para la respuesta política y la organización de covid-19 en África",


        "link": "https://womin.org.za/covid-19-%E2%80%93-crisis-upon-crisis-in-africa-an-ecofeminist-perspective.html",
        "category": "SRHR, healthcare, economy, food, food, gendered health impacts",
        "type": "feminist statement or analysis",
        "country": "Anglophone Africa"
    },
    {
        "title_en": "Activist Covid-19 Resource Pack",
        "description_en": "Useful resources for activitists on covid-19 - on basic health, access to justice and feminist analysis",
        "title_es": "Paquete de recursos Activista Covid-19",
        "description_es": "Recursos útiles para activistas en covid-19 - sobre salud básica, acceso a la justicia y análisis feminista",


        "link": "https://womin.org.za/resource-library/an-activist%E2%80%99s-covid-19-resources-pack.html",
        "category": "economy, food, gendered health impacts",
        "type": "mutual aid resource, organizing tool",
        "country": "Anglophone Africa, Francophone Africa"
    },
    {
        "title_en": "Various NGOs providing different kind sof relief to people in need during Lockdown",
        "description_en": "NGOs list providing relief during Covid-19",
        "title_es": "Varias ONG que brindan diferentes tipos de ayuda a las personas necesitadas durante el bloqueo",
        "description_es": "Lista de ONG que brinda ayuda durante Covid-19",


        "link": "https://www.investindia.gov.in/bip/resources/list-ngos-providing-relief-during-covid-19",
        "category": "healthcare, childcare, food, gendered health impacts, gender-based violence",
        "type": "mutual aid resource, organizing tool",
        "country": "India"
    },
    {
        "title_en": "Addiction Treatment During The COVID-19 Pandemic",
        "description_en": "It explains step by step what to do at the time of pandemic if you or your loved ones have an addiction.",
        "title_es": "Tratamiento de adicciones durante la pandemia de COVID-19",
        "description_es": "Explica paso a paso qué hacer en el momento de la pandemia si usted o sus seres queridos tienen una adicción",


        "link": "https://addictionresource.com/treatment/addiction-during-covid-19-outbreak/",
        "category": "healthcare",
        "type": "mutual aid resource",
        "country": "Global"
    },
    {
        "title_en": "The invisble coronavirus makes systemic gender inequalities and injustices visible",
        "description_en": "Feminist analysis of how coronavirus exposes systemic gender inequalities",
        "title_es": "El coronavirus invisible hace visibles las desigualdades e injusticias sistémicas de género",
        "description_es": "Análisis feminista de cómo el coronavirus expone las desigualdades de género sistémicas",


        "link": "https://us.boell.org/en/2020/04/30/invisible-coronavirus-makes-systemic-gender-inequalities-and-injustices-visible",
        "category": "childcare, labor, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "The Pandemic, Coronavirus and Quarantine: Women at Risk",
        "description_en": "Feminist analysis of gendered work and health implications in Ukraine and globally.",
        "title_es": "La pandemia, el coronavirus y la cuarentena: mujeres en riesgo",
        "description_es": "Análisis feminista del trabajo de género y las implicaciones para la salud en Ucrania y en todo el mundo",


        "link": "https://ua.boell.org/en/2020/03/25/pandemiya-koronavirus-karantin-zhinki-pid-udarom",
        "category": "childcare, labor, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Ukraine"
    },
    {
        "title_en": "How does the Covid-19 pandemic affect LGBTI+ community in Turkey?",
        "description_en": "Feminist analysis of additional risks faced by LGBTI+ community members in Turkey.",
        "title_es": "¿Cómo afecta la pandemia de Covid-19 a la comunidad LGBTI + en Turquía?",
        "description_es": "Análisis feminista de los riesgos adicionales que enfrentan los miembros de la comunidad LGBTI + en Turquía",


        "link": "https://tr.boell.org/en/2020/04/17/how-does-covid-19-pandemic-affect-lgbti-community-turkey",
        "category": "SRHR",
        "type": "feminist statement or analysis",
        "country": "Turkey"
    },
    {
        "title_en": "COVID-19 : Quelles conséquences sur les inégalités de genres au Sénégal?",
        "description_en": "Feminist analysis of gendered components of crisis in Senegal.",
        "title_es": "COVID-19: ¿Qué consecuencias sobre las desigualdades de género en Senegal?",
        "description_es": "Análisis feminista de componentes de crisis de género en Senegal",


        "link": "https://sn.boell.org/fr/2020/04/03/covid-19-quelles-consequences-sur-les-inegalites-de-genres-au-senegal",
        "category": "childcare, labor, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Senegal"
    },
    {
        "title_en": "Invest in the Care economy for a Just, Green, Feminist Covid-19 Response and Recovery",
        "description_en": "Open letter describing how care work must be centered in a just recovery.",
        "title_es": "Invierta en la economía del cuidado para una respuesta y recuperación justa, verde y feminista de Covid-19",
        "description_es": "Carta abierta que describe cómo el trabajo de cuidado debe centrarse en una recuperación justa",


        "link": "https://womenslabour.org/article/8",
        "category": "economy, childcare, labor",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Coronavirus outbreak in Cameroon: Gender is not a side issue!",
        "description_en": "What steps can health and humanitarian workers take to help understand covid effects on women",
        "title_es": "Brote de coronavirus en Camerún: ¡el género no es un problema secundario!",
        "description_es": "¿Qué pasos pueden tomar los trabajadores de salud y humanitarios para ayudar a comprender los efectos codiciosos sobre las mujeres",


        "link": "https://reliefweb.int/report/cameroon/coronavirus-outbreak-cameroon-gender-not-side-issue",
        "category": "healthcare, gendered health impacts",
        "type": "feminist statement or analysis",
        "country": "Cameroon"
    },
    {
        "title_en": "GBV intervention in the outbreak of COVID-19 in Cameroon",
        "description_en": "Measures to be taken towards reducing Covid-induced GBV in Cameroon and in refugee camps",
        "title_es": "intervención de violencia de género en el brote de COVID-19 en Camerún",
        "description_es": "Medidas a tomar para reducir la violencia de género inducida por Covid en Camerún y en campos de refugiados",


        "link": "https://www.humanitarianresponse.info/en/op%C3%A9rations/cameroon/document/cameroonnwswguidance-notegbv-covid-19-gbv-scv1260320",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Cameroon"
    },
    {
        "title_en": "Gender Equality Matters in COVID – 19 Response!",
        "description_en": "Social distancing measures are not equally available to all and have great impacts on livelihoods",
        "title_es": "La igualdad de género importa en COVID - 19 Response!",
        "description_es": "Las medidas de distanciamiento social no están igualmente disponibles para todos y tienen un gran impacto en los medios de vida",


        "link": "https://africa.unwomen.org/en/news-and-events/stories/2020/04/le-genre-doit-etre-prise-en-compte-dans-la-reponse-face-au-covid19",
        "category": "labor, disability",
        "type": "feminist statement or analysis",
        "country": "Cameroon"
    },
    {
        "title_en": "'Seven Actions': A guide to protect African women’s rights during COVID-19",
        "description_en": "Guidance for African states to take action to avoid Covid gender discrimination",
        "title_es": "'Siete acciones': una guía para proteger los derechos de las mujeres africanas durante COVID-19",
        "description_es": "Orientación para que los estados africanos tomen medidas para evitar la discriminación de género Covid",


        "link": "https://www.ohchr.org/EN/NewsEvents/Pages/SevenActions.aspx",
        "category": "education, childcare, labor, gendered health impacts",
        "type": "organizing tool",
        "country": "Francophone Africa, Anglophone Africa"
    },
    {
        "title_en": "How Gender Inequality Harms Our COVID-19 Recovery – Views From China",
        "description_en": "Discusses gender inequality in China and its exasperation due to Covid",
        "title_es": "Cómo la desigualdad de género perjudica nuestra recuperación de COVID-19: opiniones desde China",
        "description_es": "Discute la desigualdad de género en China y su exasperación debido a Covid",


        "link": "https://www.cn.undp.org/content/china/en/home/ourperspective/ourperspectivearticles/2020/how-gender-inequality-harms-our-covid-19-recovery--views-from-ch.html",
        "category": "healthcare, economy, labor",
        "type": "feminist statement or analysis",
        "country": "China"
    },
    {
        "title_en": "Putting Central African women at the forefront of the fight against COVID-19",
        "description_en": "UN Women is engaging women in distribution of information and sanitization kits",
        "title_es": "Colocando a las mujeres centroafricanas a la vanguardia de la lucha contra COVID-19",
        "description_es": "ONU Mujeres está involucrando a las mujeres en la distribución de kits de información y desinfección",


        "link": "https://africa.unwomen.org/en/news-and-events/stories/2020/04/mettre-les-femmes-centrafricaines-a-l-avant-de-la--lutte",
        "category": "healthcare, water",
        "type": "feminist statement or analysis",
        "country": "Central African Republic"
    },
    {
        "title_en": "Kinshasa: 800 women receive resilience kits to cope with Covid-19",
        "description_en": "Sanitary kits distributed to women to protect themselves as caregivers",
        "title_es": "Kinshasa: 800 mujeres reciben kits de resistencia para hacer frente a Covid-19",
        "description_es": "Kits sanitarios distribuidos a las mujeres para protegerse como cuidadoras",


        "link": "https://africa.unwomen.org/en/news-and-events/stories/2020/04/800-femmes-recoivent-des-kits-de-resilience",
        "category": "healthcare",
        "type": "feminist statement or analysis",
        "country": "Congo"
    },
    {
        "title_en": "Activists appeal to AU as abuse against women, girls soars under Covid-19",
        "description_en": "Call for action to address increased GBV in African countries",
        "title_es": "Los activistas apelan a la UA como abuso contra las mujeres, las niñas se disparan bajo Covid-19",
        "description_es": "Llamado a la acción para abordar el aumento de la VG en los países africanos",


        "link": "http://www.rfi.fr/en/africa/20200427-activists-appeal-to-au-as-abuse-against-women-girls-soars-under-covid-19",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Francophone Africa, Anglophone Africa"
    },
    {
        "title_en": "Coronavirus pandemic is exposing the gender digital divide",
        "description_en": "Covid has highlighted gendered access to technology and information",
        "title_es": "La pandemia de coronavirus está exponiendo la brecha digital de género",
        "description_es": "Covid ha resaltado el acceso de género a la tecnología y la información",


        "link": "https://insight.wfp.org/coronavirus-pandemic-is-exposing-the-gender-digital-divide-6c9e1fef8ece",
        "category": "digital surveillance, education",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Covid-19 and child, early and forced marriage: an agenda for action",
        "description_en": "Information about responding to the needs of adolescent girls surrounding pandemic",
        "title_es": "Covid-19 y el matrimonio infantil, precoz y forzado: una agenda para la acción",
        "description_es": "Información sobre cómo responder a las necesidades de las adolescentes que rodean la pandemia",


        "link": "https://www.girlsnotbrides.org/resource-centre/covid-19-and-child-early-and-forced-marriage-an-agenda-for-action/",
        "category": "SRHR, gender-based violence",
        "type": "organizing tool",
        "country": "Global"
    },
    {
        "title_en": "Gender in the framework of the response to the COVID-19 pandemic in Anglophone Africa, Francophone Africa",
        "description_en": "Describes gendered risks and suggests recommendations to respond to Covid",
        "title_es": "Género en el marco de la respuesta a la pandemia de COVID-19 en África anglófona, África francófona",
        "description_es": "Describe los riesgos de género y sugiere recomendaciones para responder a Covid",


        "link": "https://africa.unwomen.org/en/digital-library/publications/2020/04/gender-in-the-framework-of-the-response-to-the-covid-19-pandemic-in-west-and-central-africa",
        "category": "healthcare, economy",
        "type": "organizing tool",
        "country": "Anglophone Africa, Francophone Africa"
    },
    {
        "title_en": "Rapid Gender Impact Assessments of COVID-19",
        "description_en": "A guide to integrate gender into socio-economic impact assessments of COVID-19",
        "title_es": "Evaluaciones rápidas de impacto de género de COVID-19",
        "description_es": "Una guía para integrar el género en las evaluaciones de impacto socioeconómico de COVID-19",


        "link": "https://africa.unwomen.org/en/digital-library/publications/2020/04/a-guide-to-integrate-gender-into-socio-economic-impact-assessments-of-covid-19",
        "category": "healthcare, economy",
        "type": "organizing tool",
        "country": "Anglophone Africa, Francophone Africa"
    },
    {
        "title_en": "5 minute Inspiration: How we can reduce violence during COVID-19",
        "description_en": "Some different tools countries are using to address violence during Covid",
        "title_es": "5 minutos de inspiración: cómo podemos reducir la violencia durante COVID-19",
        "description_es": "Algunas herramientas diferentes que los países están utilizando para abordar la violencia durante Covid",


        "link": "https://insights.careinternational.org.uk/development-blog/5-minute-inspiration-how-we-can-reduce-violence-during-covid-19",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "As COVID-19 Situation Evolves, Health and Safety of Women and Staff Take Priority",
        "description_en": "Women for Women International discusses the measures they've taken in response to COVID",
        "title_es": "A medida que evoluciona la situación de COVID-19, la salud y la seguridad de las mujeres y el personal tienen prioridad",
        "description_es": "Women for Women International analiza las medidas que han tomado en respuesta a COVID",


        "link": "https://www.womenforwomen.org/blogs/covid-19-situation-evolves-health-and-safety-women-and-staff-take-priority",
        "category": "healthcare, education",
        "type": "feminist statement or analysis",
        "country": "Sudan, Nigeria, Congo"
    },
    {
        "title_en": "Coronavirus – Africa: Statement on Protecting Sexual and Reproductive Health and Rights and Promoting Gender-Responsiveness in the COVID-19 Crisis",
        "description_en": "Statementg calling for SRHR and general gender responsive action to Covid pandemic",
        "title_es": "Coronavirus - África: Declaración sobre la protección de la salud y los derechos sexuales y reproductivos y la promoción de la capacidad de respuesta de género en la crisis de COVID-19",
        "description_es": "Declaración que llama a la SDSR y la acción general de género ante la pandemia de Covid",


        "link": "https://www.cnbcafrica.com/africa-press-office/2020/05/06/coronavirus-africa-statement-on-protecting-sexual-and-reproductive-health-and-rights-and-promoting-gender-responsiveness-in-the-covid-19-crisis/",
        "category": "SRHR",
        "type": "feminist statement or analysis",
        "country": "Global"
    },
    {
        "title_en": "Wenn Corona auf Piraten und Prinzessinnen trifft",
        "description_en": "Experience report on domestic violence and the capacities in the protection centers. (GE)",
        "title_es": "Cuando Corona se encuentra con piratas y princesas",
        "description_es": "Informe de experiencia sobre violencia doméstica y las capacidades en los centros de protección. (GE)",


        "link": "https://www.gwi-boell.de/de/2020/03/27/wenn-corona-auf-piraten-und-prinzessinnen-trifft",
        "category": "gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Germany"
    },
    {
        "title_en": "Die Zukunft der Arbeit",
        "description_en": "Checking whether capitalism is sustainable from a gender perspective. (GE)",
        "title_es": "Die Zukunft der Arbeit",
        "description_es": "Comprobando si el capitalismo es sostenible desde una perspectiva de género. (GE)",


        "link": "https://pinkstinks.de/die-zukunft-der-arbeit/",
        "category": "economy, labor",
        "type": "feminist statement or analysis",
        "country": "Germany"
    },
    {
        "title_en": "Die Krise der Frauen",
        "description_en": "Global analysis of the effects of the Covis pandemic on women. (GE)",
        "title_es": "Die Krise der Frauen",
        "description_es": "Análisis global de los efectos de la pandemia de Covis en las mujeres. (GE)",


        "link": "https://www.zeit.de/2020/18/coronavirus-pandemie-arbeit-frauen-bezahlung-ungleichheit/komplettansicht",
        "category": "healthcare, childcare, labor, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Germany, Global"
    },
    {
        "title_en": "Bäuerinnen in der Corona-Krise: Frauen auf den Höfen brauchen dringend Entlastung",
        "description_en": "Women in agriculture (GE)",



        "link": "https://www.landfrauen.info/aktuelles/pressemeldungen/meldung/baeuerinnen-in-der-corona-krise-frauen-auf-den-hoefen-brauchen-dringend-entlastung/",
        "category": "childcare, labor, food",


        "type": "feminist statement or analysis",
        "country": "Germany"
    },
    {
        "title_en": "Berliner Krankenpflegerin klagt an „Euren Applaus könnt ihr euch sonstwohin stecken“",
        "description_en": "Angry report from a nurse about the current conditions in hospitals. (GE)",
        "title_es": "La enfermera de Berlín se queja 'Puedes aplaudir en cualquier otro lugar'",
        "description_es": "Informe enojado de una enfermera sobre las condiciones actuales en los hospitales. (GE)",


        "link": "https://m.tagesspiegel.de/berliner-krankenpflegerin-klagt-an-euren-applaus-koennt-ihr-euch-sonstwohin-stecken/25691690.html",
        "category": "healthcare, economy, labor",
        "type": "feminist statement or analysis",
        "country": "Germany"
    },
    {
        "title_en": "Care in Crisis",
        "description_en": "Understanding and transforming the value of paid and unpaid care in response to COVID-19",
        "title_es": "Atención en crisis",
        "description_es": "Comprender y transformar el valor de la atención pagada y no pagada en respuesta a COVID-19",


        "link": "https://iwda.org.au/resource/factsheet-care-in-crisis/",
        "category": "economy, childcare, labor",
        "type": "feminist statement or analysis",
        "country": "Global, Asia-Pacific"
    },
    {
        "title_en": "Planning for prevention in Fiji",
        "description_en": "Using gender-sensitive data generated by the Individual Deprivation Measure, explores anticipated gendered implications in Fiji",
        "title_es": "Planificación para la prevención en Fiji",
        "description_es": "Utilizando datos sensibles al género generados por la Medida de Privación Individual, explora las implicaciones de género anticipadas en Fiji",


        "link": "https://www.individualdeprivationmeasure.org/resources/planning-for-prevention-fiji/",
        "category": "healthcare, water, gendered health impacts",
        "type": "feminist statement or analysis",
        "country": "Fiji Islands"
    },
    {
        "title_en": "Poverty and Vulnerability to COVID-19 in Indonesia",
        "description_en": "Using gender-sensitive data generated by the Individual Deprivation Measure, explores Indonesia’s potential vulnerabilities to COVID-19",
        "title_es": "Pobreza y vulnerabilidad a COVID-19 en Indonesia",
        "description_es": "Utilizando datos sensibles al género generados por la Medida de Privación Individual, explora las vulnerabilidades potenciales de Indonesia a COVID-19",


        "link": "https://www.individualdeprivationmeasure.org/resources/covid-indonesia-brief/",
        "category": "water, food, gendered health impacts",
        "type": "feminist statement or analysis",
        "country": "Indonesia"
    },
    {
        "title_en": "Poverty and Vulnerability to COVID-19 in South Africa",
        "description_en": "Using gender-sensitive data generated by the Individual Deprivation Measure, explores South Africa’s potential vulnerabilities to COVID-19",
        "title_es": "Pobreza y vulnerabilidad a COVID-19 en Sudáfrica",
        "description_es": "Utilizando datos sensibles al género generados por la Medida de Privación Individual, explora las vulnerabilidades potenciales de Sudáfrica a COVID-19",


        "link": "https://www.individualdeprivationmeasure.org/resources/covid-south-africa/",
        "category": "healthcare, childcare, water, food, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis",
        "country": "South Africa"
    },
    {
        "title_en": "Recognizing women’s important role in Jordan’s COVID-19 response",
        "description_en": "Women's role in response to COVID 19 in Jordan has not been recognized",
        "title_es": "Reconociendo el importante papel de las mujeres en la respuesta COVID-19 de Jordania",
        "description_es": "No se ha reconocido el papel de la mujer en respuesta a COVID 19 en Jordania",


        "link": "https://www.brookings.edu/blog/education-plus-development/2020/04/29/recognizing-womens-important-role-in-jordans-covid-19-response/",
        "category": "misinformation",
        "type": "feminist statement or analysis",
        "country": "Jordan"
    },
    {
        "title_en": "COVID 19 and Gender",
        "description_en": "Immediate recommendations for planning and response",
        "title_es": "COVID 19 y género",
        "description_es": "Recomendaciones inmediatas para planificación y respuesta",


        "link": "https://www2.unwomen.org/-/media/field%20office%20jordan/images/publications/2020/covid19%20and%20gender%20in%20jordan%20eng.pdf?la=en&vs=128",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis",
        "country": "Jordan"
    },
    {
        "title_en": "global feminist responses to the COVID-19 pandemic: social justice and care are at the forefront",
        "description_en": "the key issues and concerns that feminists raised, as well as recommendations that were brought forward for immediate action (focused on Lebanon",
        "title_es": "respuestas feministas globales a la pandemia de COVID-19: la justicia social y la atención están a la vanguardia",
        "description_es": "las cuestiones y preocupaciones clave que plantearon las feministas, así como las recomendaciones que se presentaron para una acción inmediata (centrada en el Líbano",


        "link": "https://genderatwork.org/news/global-feminist-responses-to-the-covid-19-pandemic-social-justice-and-are-at-the-orefront/",
        "category": "punitive, healthcare, economy, labor, gendered health impacts, disability",
        "type": "feminist statement or analysis",
        "country": "Lebanon"
    }
]

  resources_data.each{|it|
    puts "\n\n\n✨ ✨ ✨ ✨ this is the title: #{it[:title_en]}✨ ✨ ✨ "
    puts "🔺entering the progressive choice"
    if it[:progressive] == "progressive"
        prog = Progressive.all[0].id
    elsif it[:progressive] == "regressive"
        prog = Progressive.all[1].id
    else
        prog = Progressive.all[2].id
    end

    puts "🔺about to create item"
    item = Item.create!(
        title_en: it[:title_en], 
        description_en: it[:description_en], 
        title_es: it[:title_es],
        title_fr: it[:title_fr],
        description_es: it[:description_es],
        description_fr: it[:description_fr],
        link: it[:link], 
        date: nil, 
        progressive_id: Progressive.all[-1].id, 
        page_id: Page.all[2].id
    )

    puts "🔺🔺🔺item created: #{item.id}: #{item.title_en}\n\n"
    puts "🔺about to create type item"
    if it[:type] != ""
        if it[:type].include?(",") 
            # binding.pry
            it[:type].split(', ').each{|t| TypeItem.create!(type_id: Type.find_by(name: t).id, item_id: item.id )
            puts "- createdTypeItem for #{t}!"}
        else
            TypeItem.create!(type_id: Type.find_by(name: it[:type]).id, item_id: item.id )
        end
    end

    puts "🔺about to create category item"
    # binding.pry
    if it[:category] != "" && it[:category]
            if it[:title] == "Mexico: From Women's Uprising To COVD-19 Crisis"
        binding.pry
    end
        if it[:category].include?(",") 
            it[:category].split(', ').each{|t| CategoryItem.create!(category_id: Category.find_by(name: t).id, item_id: item.id )
            puts "- created CategoryItem for #{t}!"}
        else
            CategoryItem.create!(category_id: Category.find_by(name: it[:category]).id, item_id: item.id )
        end
    end

    puts "🔺about to create country item"
    if it[:country] != ""
        if it[:country].include?(",") 
            it[:country].split(', ').map{|t| CountryItem.create!(country_id: Country.find_by(name: t).id, item_id: item.id )
            puts "- created CountryItem for #{t}!"}
        else
            CountryItem.create!(country_id: Country.find_by(name: it[:country]).id, item_id: item.id )
        end
    end

    puts "/n/n/n/n✅ ✅ ✅ ✅  #{it[:title_en]} data is alive ✅ ✅ ✅ ✅ "

}

puts "/n/n/n/n🔥🔥🔥🔥🔥🔥 DONE DONE DONE 🔥🔥🔥🔥🔥🔥"