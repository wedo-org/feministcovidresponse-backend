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
categories = ["SRHR", "punitive", "digital surveillance", "healthcare", "education", "economy", "childcare", "labor", "food", "gendered health impacts", "gender-based violence","disability", "race", "misinformation", "water"]
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
    "The Congo",
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
    "Micronesia, Federated States of",
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
    "SriLanka",
    "Sudan",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Swaziland",
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
    {
        "title_en": "Support to women fleeing gender-based violence",
        "description_en": "Canada will give $40 million to Women and Gender Equality Canada (WAGE), up to $30 million of which will address immediate needs of shelters and sexual assault centres.",
        
        "title_es": "Apoyo a las mujeres que huyen de la violencia de género",
        "description_es": "Canadá otorgará $ 40 millones a Mujeres e Igualdad de Género de Canadá (WAGE), de los cuales hasta $ 30 millones cubrirán las necesidades inmediatas de refugios y centros de agresión sexual",

        "link": "https://www.canada.ca/en/employment-social-development/news/2020/04/canada-announces-support-to-those-experiencing-homelessness-and-women-fleeing-gender-based-violence-during-the-coronavirus-disease-covid-19-pandemic.html",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Canada",
      },
      {
        "title_en": "Jump in domestic violence cases",
        "description_en": "Russia's little resources for DV victims become even more strained w/ rise of cases",
        
        "title_es": "Saltar en casos de violencia doméstica",
        "description_es": "Los escasos recursos de Rusia para las víctimas de DV se vuelven aún más tensos con el aumento de los casos",

        "link": "https://www.wilsoncenter.org/blog-post/womens-choice-covid-19-or-abusive-partner",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Russia",
      },
    {
        "title_en": "NGOs ask Government to provide assistance for DV victims",
        "description_en": "Nine Russian organizations are asking the government to take urgent measures to provide assistance to victims in quarantine.",
        
        "title_es": "Las ONG piden al gobierno que brinde asistencia a las víctimas de DV",
        "description_es": "Nueve organizaciones rusas están pidiendo al gobierno que tome medidas urgentes para brindar asistencia a las víctimas en cuarentena",

        "link": "https://www.kommersant.ru/doc/4310901?fbclid=IwAR3bHlWrDg6XXW2pn3JScientific Data5-fV8a8lqKwIrVnPSBpkxMugUwrAk-pcEWSzTo",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Russia",
      },
      {
        "title_en": "Coronavirus takes a serious turn in Russia, and Putin no longer radiates confidence",
        "description_en": "Russia had record rise in cases, 2,558, even with tight restrictions in place",
        "title_es": "El coronavirus da un giro serio en Rusia y Putin ya no irradia confianza",
        "description_es": "Rusia tuvo un aumento récord en los casos, 2,558, incluso con restricciones estrictas",
        "link": "https://www.cnn.com/2020/04/14/europe/russia-coronavirus-putin-response-intl/index.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Russia",
      },
      {
        "title_en": "Putin's Bleak Covid-19 Admission: 'We Don't Have Much to Brag About'",
        "description_en": "Putin admits that Russia is vulnerable to Covid after making claims of Russia's invincibility",
        "title_es": "Admisión de Putin Bleak Covid-19: 'No tenemos mucho de qué alardear'",
        "description_es": "Putin admite que Rusia es vulnerable a Covid después de reclamar la invencibilidad de Rusia",
        "link": "https://www.nytimes.com/2020/04/13/world/europe/coronavirus-russia-putin.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Russia",
      },
      {
        "title_en": "Putin recently ordered broad policy shifts to soften the pandemic's economic effects",
        "description_en": "Shifts include suggestion to raise the cap on most unemployment benefits by around 50%, and 6 month moratorium on bankruptcy",
        
        "title_es": "Putin ordenó recientemente amplios cambios de política para suavizar los efectos económicos de la pandemia",
        "description_es": "Los cambios incluyen sugerencias para aumentar el límite de la mayoría de las prestaciones por desempleo en alrededor del 50% y una moratoria de 6 meses en caso de quiebra",

        "link": "https://www.npr.org/sections/coronavirus-live-updates/2020/04/02/825859574/putin-extends-no-work-order-for-russia-until-may-in-over-covid-19-pandemic",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Russia",
      },
      {
        "title_en": "Moscow's Intrusive Online Regime Proposal for COVID-19 Prevention",
        "description_en": "Authorities can use residents' geolocation data and financial transactions to track movements and ensure compliance with the lockdown.",
        
        "title_es": "Propuesta intrusiva del régimen en línea de Moscú para la prevención COVID-19",
        "description_es": "Las autoridades pueden utilizar los datos de geolocalización de los residentes y las transacciones financieras para rastrear movimientos y garantizar el cumplimiento del bloqueo",

        "link": "https://www.hrw.org/news/2020/04/01/moscows-intrusive-proposal-covid-19-prevention",
        "progressive": "need to watch",
        "category": "digital surveillance, punitive",
        "type": "temporary measure",
        "country": "Russia",
      },
      {
        "title_en": "Coronavirus: Peru cancels gender separation lockdown measure",
        "description_en": "Peru cancelled a controversial measure restricting public movement by gender",
        
        "title_es": "Coronavirus: Perú cancela la medida de bloqueo de separación de género",
        "description_es": "Perú canceló una medida controvertida que restringe el movimiento público por género",

        "link": "https://www.straitstimes.com/world/americas/coronavirus-peru-cancels-gender-separation-lockdown-measure",
        "progressive": "need to watch",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Peru",
      },
      {
        "title_en": "Coronavirus: Malaysian men in shopping muddle amid lockdown",
        "description_en": "Malasian men are unexpectedly finding themselves responsible for the grocery shopping.",
        
        "title_es": "Coronavirus: hombres malayos en problemas de compras en medio del encierro",
        "description_es": "Los hombres de Malasia se encuentran inesperadamente responsables de las compras de comestibles",

        "link": "https://www.bbc.com/news/blogs-news-from-elsewhere-52040256",
        "progressive": "need to watch",
        "category": "food",
        "type": "observed response",
        "country": "Malaysia",
      },
      {
        "title_en": "Tajik Workers Face Dire Future As Russia Closes Borders Over Coronavirus",
        "description_en": "Concerns over finanical repurcussions of extended border closure",
        
        "title_es": "Los trabajadores tayikos se enfrentan al futuro terrible a medida que Rusia cierra las fronteras sobre el coronavirus ",
        "description_es": "Preocupaciones por las repeticiones financieras de un cierre fronterizo extendido",

        "link": "https://www.rferl.org/a/tajik-workers-face-dire-future-as-russia-closes-borders-over-coronavirus/30495815.html",
        "progressive": "need to watch",
        "category": "economy, labor",
        "type": "observed response, temporary measure",
        "country": "Tajikistan",
      },
      {
        "title_en": "Economic Slowdown for 2020 and 2021",
        "description_en": "Impacts already on trade, investment projects, tourism, revenue, national currency, labor migration",
        
        "title_es": "Desaceleración económica para 2020 y 2021",
        "description_es": "Impactos ya en el comercio, proyectos de inversión, turismo, ingresos, moneda nacional, migración laboral",

        "link": "https://www.adb.org/news/tajikistan-economy-slow-down-sharply-2020-and-2021-weighed-covid-19-pandemic-adb",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Tajikistan",
      },
      {
        "title_en": "Turkmenistan is denying the existence of Covid cases",
        "description_en": "Turkmen have been arrested for discussing the pandemic in public and can't get reliable information from their government",
        
        "title_es": "Turkmenistán niega la existencia de casos Covid",
        "description_es": "Los turcomanos han sido arrestados por discutir la pandemia en público y no pueden obtener información confiable de su gobierno",

        "link": "https://thediplomat.com/2020/04/did-turkmenistan-really-ban-the-word-coronavirus/",
        "progressive": "regressive",
        "category": "healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Turkmenistan",
      },
      {
        "title_en": "World Health Day in Turkmenistan",
        "description_en": "State media reported that festivities were held as usual, but sources say that they were cancelled",
        
        "title_es": "Día Mundial de la Salud en Turkmenistán",
        "description_es": "Los medios estatales informaron que las festividades se realizaban como de costumbre, pero las fuentes dicen que fueron canceladas",

        "link": "https://thediplomat.com/2020/04/turkmenistan-celebrates-world-health-day-unwisely/",
        "progressive": "regressive",
        "category": "healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Turkmenistan",
      },
      {
        "title_en": "Kazakhstan Experiments With Surveillance Technology to Battle Coronavirus Pandemic",
        "description_en": "Government is using SmartAstana tracking app and 'Sergek' video surveillance technology",
        
        "title_es": "Kazajstán experimenta con tecnología de vigilancia para combatir la pandemia de coronavirus",
        "description_es": "El gobierno está utilizando la aplicación de seguimiento SmartAstana y la tecnología de videovigilancia 'Sergek'",

        "link": "https://jamestown.org/program/kazakhstan-experiments-with-surveillance-technology-to-battle-coronavirus-pandemic/",
        "progressive": "regressive",
        "category": "digital surveillance, healthcare",
        "type": "temporary measure",
        "country": "Kazakhstan",
      },
      {
        "title_en": "Government puts more pressure on Kazakh Civil Rights Activists amid covid spread",
        "description_en": "Government concern of spotlight on covid response leads them to silence protesters",
        
        "title_es": "El gobierno ejerce más presión sobre los activistas de derechos civiles de Kazajstán en medio de una propagación codiciosa",
        "description_es": "La preocupación del gobierno por destacar las respuestas codiciosas los lleva a silenciar a los manifestantes",

        "link": "https://www.rferl.org/a/kazakhstan-kazakh-activists-coronavirus-human-rights-economy/30542645.html",
        "progressive": "regressive",
        "category": "punitive",
        "type": "temporary measure, observed response",
        "country": "Kazakhstan",
      },
      {
        "title_en": "Kazakhstan announces $10bn economic package",
        "description_en": "Government aims to help stave off impact of coronavirus as oil price war between Saudi Arabia and Russia makes it harder to stabilise economy.",
        
        "title_es": " Kazajstán anuncia paquete económico de $ 10 mil millones ",
        "description_es": "El gobierno tiene como objetivo ayudar a evitar el impacto del coronavirus ya que la guerra de precios del petróleo entre Arabia Saudita y Rusia dificulta la estabilización de la economía",

        "link": "https://www.aljazeera.com/news/2020/03/kazakhstan-announces-10bn-economic-package-200328091921790.html",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Kazakhstan",
      },
      {
        "title_en": "Kazakhstan plans to increase monthly export quotas for wheat and flour",
        "description_en": "Kazakhstan opted to limit exports last month to ensure steady domestic supply amid border closures and lockdowns",
        
        "title_es": "Kazajstán planea aumentar las cuotas mensuales de exportación de trigo y harina",
        "description_es": "Kazajstán optó por limitar las exportaciones el mes pasado para garantizar un sumini,stro interno estable en medio de cierres y cierres de fronteras",

        "link": "https://www.reuters.com/article/kazakhstan-grains-export-quotas/kazakhstan-to-increase-wheat-flour-export-quotas-in-coming-months-idUSL8N2BW317",
        "progressive": "need to watch",
        "category": "economy, food",
        "type": "temporary measure",
        "country": "Kazakhstan",
      },
      {
        "title_en": "Lack of Refuge for Kazakhstan's Domestic Violence Survivors",
        "description_en": "Most shelters stopped accepting new survivors due to the mandatory quarantine measures",
        
        "title_es": "Falta de refugio para los sobrevivientes de violencia doméstica de Kazajstán",
        "description_es": "La mayoría de los refugios dejaron de aceptar nuevos sobrevivientes debido a las medidas de cuarentena obligatorias",

        "link": "https://www.hrw.org/news/2020/04/09/lack-refuge-kazakhstans-domestic-violence-survivors",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kazakhstan",
      },
      {
        "title_en": "Weakened Legal Enforcement for Domestic Violence Cases",
        "description_en": "Quarantine measures inhibit enforcement of laws that to begin with weren't well enforced",
        
        "title_es": "Aplicación legal debilitada para casos de violencia doméstica",
        "description_es": "Las medidas de cuarentena inhiben la aplicación de las leyes que, para empezar, no se aplicaron bien",

        "link": "https://www.unwomen.org/en/news/stories/2020/4/from-where-i-stand-dina-smailova-on-covid-19",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kazakhstan",
      },
      {
        "title_en": "Kyrgyzstan has proposed measures to help economy but warns funds are limited",
        "description_en": "Even with foreign aid government announces that it will not be able to respond like more developed countries have",
        
        "title_es": "Kirguistán ha propuesto medidas para ayudar a la economía pero advierte que los fondos son limitados",
        "description_es": "Incluso con ayuda exterior, el gobierno anuncia que no podrá responder como lo han hecho los países más desarrollados",

        "link": "https://eurasianet.org/kyrgyzstan-government-promises-help-but-warns-of-limited-options",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Kyrgyzstan",
      },
      {
        "title_en": "Curfew makes it more difficult to escape Domestic Violence",
        "description_en": "",
        
        "title_es": "El toque de queda hace que sea más difícil escapar de la violencia doméstica",
        "description_es": "",

        "link": "https://www.hrw.org/news/2020/04/08/women-risk-domestic-violence-during-kyrgyzstans-lockdown",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kyrgyzstan",
      },
      {
        "title_en": "MP raises issue of growth of domestic violence in quarantine",
        "description_en": "",
        
        "title_es": "MP plantea la cuestión del crecimiento de la violencia doméstica en cuarentena",
        "description_es": "",

        "link": "https://kaktus.media/doc/409757_depytat:_razreshaetsia_li_vyhodit_iz_doma_jertvam_semeynogo_nasiliia_pri_ygroze_jizni_video.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kyrgyzstan",
      },
      {
        "title_en": "Adopted Strict Regulations to Fight COVID-19",
        "description_en": "country's law enforcement bodies and armed forces have been imbued with renewed powers",
        
        "title_es": "Adoptado un reglamento estricto para combatir COVID-19",
        "description_es": "los cuerpos policiales y las fuerzas armadas del país han recibido poderes renovados",

        "link": "https://thediplomat.com/2020/04/uzbekistan-adopts-strict-regulations-to-fight-covid-19/",
        "progressive": "need to watch",
        "category": "punitive, healthcare",
        "type": "temporary measure",
        "country": "Uzbekistan",
      },
      {
        "title_en": "USAID has announced an additional contribution to Uzbekistan's efforts to combat COVID-19",
        "description_en": "For priority areas to provide support for the needs of Uzbekistan's citizens, health professionals, and government",
        
        "title_es": "USAID ha anunciado una contribución adicional a los esfuerzos de Uzbekistán para combatir COVID-19",
        "description_es": "Para áreas prioritarias que brinden apoyo a las necesidades de los ciudadanos, profesionales de la salud y el gobierno de Uzbekistán",

        "link": "https://www.usaid.gov/uzbekistan/press-releases/apr-2-2020-usaid-announces-850000-support-uzbekistan-efforts-covid-19",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Uzbekistan",
      },
      {
        "title_en": "In Panama, coronavirus lockdown means separating men and women",
        "description_en": "Statement describing Panamas gender segergation to limit number of individuals outside at once",
        
        "title_es": "En Panamá, el bloqueo del coronavirus significa separar hombres y mujeres",
        "description_es": "Declaración que describe la segregación de género en Panamá para limitar el número de personas afuera a la vez",

        "link": "https://www.cnn.com/2020/04/01/world/panama-coronavirus-sex-intl/index.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Panama",
      },
      {
        "title_en": "The Socialist Party wants better support for women",
        "description_en": "Socialist Party encourages national economic launch focus on female dominated professions to protect essential work.",
        
        "title_es": "El Partido Socialista quiere un mejor apoyo para las mujeres",
        "description_es": "El Partido Socialista alienta el enfoque de lanzamiento económico nacional en profesiones dominadas por mujeres para proteger el trabajo esencial",

        "link": "https://www.24heures.ch/suisse/ps-veut-meilleur-soutien-femmes/story/10231664",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title_en": "Due to Coronavirus, the situation of the homeless becomes worrying",
        "description_en": "Homelessness issues rise, women's shelter closed, gym offered as alternative, male shelter remains open.",
        
        "title_es": "Debido a Coronavirus, la situación de las personas sin hogar se vuelve preocupante",
        "description_es": "Los problemas de personas sin hogar aumentan, el refugio para mujeres está cerrado, el gimnasio se ofrece como alternativa, el refugio para hombres permanece abierto",

        "link": "https://www.rts.ch/info/suisse/11205350-face-au-coronavirus-la-situation-des-sans-domicile-fixe-inquiete.html",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Switzerland",
      },
      {
        "title_en": "Consequences of the virus: Vulnerability for prostitutes with no revenue",
        "description_en": "Sex workers banned from working, are left homeless, unknowing how to apply for welfare.",
        
        "title_es": "Consecuencias del virus: vulnerabilidad para las prostitutas sin ingresos",
        "description_es": "A las trabajadoras sexuales se les prohíbe trabajar, quedan sin hogar, sin saber cómo solicitar asistencia social ofrecido como alternativa, el refugio masculino permanece abierto ",

        "link": "https://www.swissinfo.ch/fre/les-cons%C3%A9quences-de-la-pand%C3%A9mie_pr%C3%A9carit%C3%A9-ou-clandestinit%C3%A9-pour-des-prostitu%C3%A9es-sans-revenu/45679246",
        "progressive": "regressive",
        "category": "SRHR",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title_en": "Isolation against the virus more difficult to control in prison",
        "description_en": "No visits for prisoners, compensation: 20% salary bonus for prisoner workers and free postal services.",
        
        "title_es": "El aislamiento contra el virus es más difícil de controlar en prisión",
        "description_es": "No visitas para prisioneros, compensación: bonificación salarial del 20% para trabajadores presos y servicios postales gratuitos",

        "link": "https://www.rts.ch/info/regions/vaud/11214097-l-isolement-contre-le-coronavirus-encore-plus-dur-a-gerer-en-prison.html",
        "progressive": "progressive",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Switzerland",
      },
      {
        "title_en": "Increase of home births due to Covid-19",
        "description_en": "Augmented demand for home births from fears and hospital restrictions but needs lots of preparation.",
        
        "title_es": "Aumento de los nacimientos en el hogar debido a Covid-19",
        "description_es": "Demanda aumentada de partos en el hogar por miedo y restricciones hospitalarias, pero necesita mucha preparación",

        "link": "https://www.rts.ch/info/suisse/11191496-hausse-des-accouchements-a-domicile-en-raison-de-la-pandemie-de-covid-19.html",
        "progressive": "need to watch",
        "category": "SRHR",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title_en": "Victims quarantined with their abuser, a nightmare",
        "description_en": "Reports of domestic violence constant, but fears of increase encourages neighbour acting and call line.",
        
        "title_es": "Víctimas en cuarentena con su abusador, una pesadilla",
        "description_es": "Los informes de violencia doméstica son constantes, pero el temor al aumento fomenta la actuación del vecino y la línea de llamada",

        "link": "https://www.swissinfo.ch/fre/crise-du-coronavirus-_victimes-confin%C3%A9es-avec-leur-agresseur--le-cauchemar-/45646534",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title_en": "Domestic Violence: During Quarantine, Keep Dialogue Open at All Costs",
        "description_en": "32% increase in DV, $1 million government expenditure for support centers and alerting in pharmacies.",
        
        "title_es": "Violencia doméstica: durante la cuarentena, mantener el diálogo abierto a toda costa",
        "description_es": "aumento del 32% en DV, $ 1 millón de gastos gubernamentales para centros de apoyo y alertas en farmacias",

        "link": "https://www.france24.com/fr/20200409-violences-conjugales-pendant-le-confinement-maintenir-%C3%A0-tout-prix-le-dialogue-avec-les-victimes",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response, temporary measure",
        "country": "France",
      },
      {
        "title_en": "Covid-19: What is planned for pregnant women during the quarantine?",
        "description_en": "Strong encouragement of online medicine for pregnant women, with essential visits limited.",
        
        "title_es": "Covid-19: ¿Qué se planea para las mujeres embarazadas durante la cuarentena?",
        "description_es": "Fuerte promoción de la medicina en línea para mujeres embarazadas, con visitas esenciales limitadas",

        "link": "https://www.liberation.fr/checknews/2020/03/19/covid-19-qu-est-il-prevu-pour-les-femmes-enceintes-pendant-le-confinement_1782158",
        "progressive": "progressive",
        "category": "SRHR, healthcare, gendered health impacts",
        "type": "temporary measure",
        "country": "France",
      },
      {
        "title_en": "Corona Virus: A center will welcome infected mothers and babies",
        "description_en": "Mother & Child Protection center will reform as a center for infected mothers and new babies",
        
        "title_es": "Corona Virus: un centro dará la bienvenida a madres y bebés infectados",
        "description_es": "El centro de protección maternoinfantil se reformará como un centro para madres infectadas y nuevos bebés",

        "link": "https://www.ouest-france.fr/sante/virus/coronavirus/coronavirus-un-centre-pmi-de-l-essonne-va-accueillir-les-jeunes-meres-atteintes-de-covid-19-et-leurs-6805105",
        "progressive": "progressive",
        "category": "childcare",
        "type": "temporary measure",
        "country": "France",
      },
      {
        "title_en": "Covid 19: Combining online work and child care, mission impossible?",
        "description_en": "Parents finding childcare and online work impossible with government action being insuffient.",
        
        "title_es": "Covid 19: combinación de trabajo en línea y cuidado de niños, ¿misión imposible?",
        "description_es": "Padres que consideran que el cuidado de niños y el trabajo en línea son imposibles debido a que la acción del gobierno es insuficiente",

        "link": "https://france3-regions.francetvinfo.fr/auvergne-rhone-alpes/puy-de-dome/clermont-ferrand/coronavirus-covid-19-concilier-teletravail-garde-enfants-mission-impossible-1806632.html",
        "progressive": "regressive",
        "category": "childcare, economy",
        "type": "observed response",
        "country": "France",
      },
      {
        "title_en": "Corona Virus: Quarantine and mental load",
        "description_en": "Female employment at risk with no childcare available, male online work dominates in the household.",
        
        "title_es": "Virus Corona: Cuarentena y carga mental",
        "description_es": "Empleo femenino en riesgo sin cuidado infantil disponible, el trabajo en línea masculino domina en el hogar",

        "link": "https://www.forbes.fr/business/coronavirus-confinement-et-charge-mentale/?cn-reloaded=1",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "France",
      },
      {
        "title_en": "Covid-19: Caregivers are harassed by neighbours from fear of infection",
        "description_en": "Medical workers receiving letters and threats from neighbours/landlords across the country from contamination fear",
        
        "title_es": "Covid-19: Los cuidadores son hostigados por vecinos por miedo a la infección",
        "description_es": "Trabajadores médicos que reciben cartas y amenazas de vecinos / propietarios de todo el país por temor a la contaminación",

        "link": "https://francais.rt.com/france/73558-covid-19-soignants-harceles-par-leurs-voisins-par-peur-contagion",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "France",
      },
      {
        "title_en": "France extends access to abortions during Covid-19 Pendemic",
        "description_en": "Medical abortion pills may be prescribed over the phone or video consultation",
        
        "title_es": "Francia extiende el acceso a los abortos durante la Península de Covid-19",
        "description_es": "Las píldoras de aborto con medicamentos se pueden recetar por teléfono o por videoconferencia",

        "link": "http://www.rfi.fr/en/france/20200411-france-extends-access-to-abortions-during-covid-19-pandemic",
        "progressive": "progressive",
        "category": "SRHR",
        "type": "temporary measure",
        "country": "France",
      },
      {
        "title_en": "Against the coronavirus, women are mostly in the front line",
        "description_en": "Although victims are majority male, fear female infection will rise from medical field female dominance.",
        
        "title_es": "Contra el coronavirus, las mujeres están principalmente en primera línea",
        "description_es": "Aunque las víctimas son mayoritariamente masculinas, el miedo a la infección femenina surgirá del dominio médico femenino en el campo",

        "link": "https://www.bastamag.net/coronavirus-Covid19-femmes-soignantes-TheLancet-inegalites-epidemies-sante",
        "progressive": "need to watch",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "France",
      },
      {
        "title_en": "Coronavirus in Belgium: Pharmacies as precious for domestic violence victims",
        "description_en": "The city enforces pharmacy as safe locations for victims to reach the authorities.",
        
        "title_es": "Coronavirus en Bélgica: las farmacias son preciosas para las víctimas de violencia doméstica",
        "description_es": "La ciudad impone la farmacia como lugares seguros para que las víctimas lleguen a las autoridades",

        "link": "https://www.rtl.be/info/belgique/societe/coronavirus-en-belgique-les-pharmacies-relais-precieux-pour-les-victimes-de-violences-conjugales-a-mons-1208638.aspx",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Belgium",
      },
      {
        "title_en": "Women are strongly impacted by COVID-19: 4 explanations",
        "description_en": "Increased domestic violence reports, front line dominated by women, higher financial consequences, longer work days.",
        
        "title_es": "Las explicaciones de COVID-19: 4 impactan fuertemente a las mujeres",
        "description_es": "Aumento de los informes de violencia doméstica, primera línea dominada por mujeres, mayores consecuencias financieras, más días de trabajo",

        "link": "https://www.solidaire.org/articles/les-femmes-durement-touchees-par-la-crise-du-coronavirus-la-preuve-par-4",
        "progressive": "regressive",
        "category": "labor, gendered health impacts, gender-based violence",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title_en": "Single mothers and quarantine: a challenge",
        "description_en": "High numbers of single mothers makes practical and financial situations difficult.",
        
        "title_es": "Madres solteras y cuarentena: un desafío",
        "description_es": "El elevado número de madres solteras dificulta las situaciones prácticas y financieras",

        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_meres-solo-et-confinement-la-galere?id=10462565",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title_en": "Coronavirus: Domestic violence risk increases due to quarantine",
        "description_en": "Call line open for victims, but lack of spaces/shelters for women to leave abusers.",
        
        "title_es": "Coronavirus: el riesgo de violencia doméstica aumenta debido a la cuarentena",
        "description_es": "Línea de llamada abierta para víctimas, pero falta de espacios / refugios para que las mujeres dejen a los abusadores",

        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_coronavirus-le-risque-de-violences-conjugales-augmente-a-cause-du-confinement?id=10460606",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title_en": "Latin America: Cut Prison Crowding to Fight COVID-19",
        "description_en": "Human Rights Watch suggests alternatives to detention for pregnant women, girls, primary caregivers",
        
        "title_es": "América Latina: reducir el hacinamiento en las cárceles para luchar contra COVID-19",
        "description_es": "Human Rights Watch sugiere alternativas a la detención para mujeres embarazadas, niñas, cuidadores primarios",

        "link": "https://www.hrw.org/news/2020/04/02/latin-america-cut-prison-crowding-fight-covid-19",
        "progressive": "need to watch",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title_en": "Displaced women and girls in Latin America threatened by COVID-19",
        "description_en": "Lack of rights-based health policies protecting group from hunger, homelessness, xenophobia, health services",
        
        "title_es": "Mujeres y niñas desplazadas en América Latina amenazadas por COVID-19",
        "description_es": "Falta de políticas de salud basadas en derechos que protejan al grupo del hambre, la falta de vivienda, la xenofobia, los servicios de salud",

        "link": "https://www.opendemocracy.net/en/democraciaabierta/displaced-women-and-girls-latin-america-threatened-covid-19/",
        "progressive": "regressive",
        "category": "SRHR, gendered health impacts, race",
        "type": "observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title_en": "Quaratine: Alerts of increased cases of violence against young Feminist Statement or Analysis4kids",
        "description_en": "Reaching and educating child violence victims through call lines and hashtags (mainly girls).",
        
        "title_es": "Cuaratina: alertas de aumento de casos de violencia contra jóvenes feministas Declaración o Análisis4kids",
        "description_es": "Llegar y educar a las víctimas de violencia infantil a través de líneas de llamada y hashtags (principalmente niñas)",

        "link": "https://www.lanacion.com.ar/comunidad/cuarentena-alertan-aumento-casos-violencia-ninos-ninas-nid2352289",
        "progressive": "progressive",
        "category": "childcare, gender-based violence",
        "type": "temporary measure",
        "country": "Argentina",
      },
      {
        "title_en": "Mitigating Risks and Adjusting to Isolation: How Argentina is Dealing",
        "description_en": "Sixteen reported deaths of domestic violence in three weeks, violence reports up by 39%",
        
        "title_es": "Mitigación de riesgos y adaptación al aislamiento: cómo está lidiando Argentina",
        "description_es": "Dieciséis reportaron muertes por violencia doméstica en tres semanas, la violencia reporta un aumento del 39%",

        "link": "https://www.orfonline.org/expert-speak/mitigating-risks-and-adjusting-to-isolation-how-argentina-is-dealing-with-covid19-64567/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title_en": "Argentinian Justice suggests house arrest for COVID-19 for special prisoners",
        "description_en": "Argentine Government recommends alternative measures for imprisoned pregnant women or women imprisoned with their children",
        
        "title_es": "La justicia argentina sugiere arresto domiciliario por COVID-19 para presos especiales",
        "description_es": "El gobierno argentino recomienda medidas alternativas para las mujeres embarazadas encarceladas o las mujeres encarceladas con sus hijos",

        "link": "https://www.vistazo.com/seccion/mundo/actualidad-mundial/justicia-argentina-sugiere-prision-domiciliaria-por-covid-19-en",
        "progressive": "need to watch",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title_en": "What to do if you are pregnant during this epidemic?",
        "description_en": "During pandemic, pregnancy, childbirth, newborn care are all classified as essential and must be maintained",
        
        "title_es": "¿Qué hacer si está embarazada durante esta epidemia?",
        "description_es": "Durante la pandemia, el embarazo, el parto, el cuidado del recién nacido se clasifican como esenciales y deben mantenerse",
        "link": "https://www.animalpolitico.com/2020/04/que-hacer-epidemia-covid-si-estas-embarazada/",
        "progressive": "progressive",
        "category": "SRHR, gendered health impacts",
        "type": "policy or law",
        "country": "Mexico",
      },
      {
        "title_en": "Mexico's prostitutes homeless as coronavirus keeps clients home, shuts hotels",
        "description_en": "Hotels shutting leave sex workers hungry and on the street, highly vulnerable, insufficient government assistance",
        
        "title_es": "Las prostitutas de México sin hogar como coronavirus mantienen a los clientes en casa, cierran hoteles",
        "description_es": "El cierre de los hoteles deja a las trabajadoras sexuales hambrientas y en la calle, muy vulnerables, asistencia gubernamental insuficiente",

        "link": "https://www.reuters.com/article/us-health-coronavirus-mexico-sex-workers/mexicos-prostitutes-end-up-homeless-as-coronavirus-keeps-clients-at-home-shuts-hotels-idUSKCN21R26C",
        "progressive": "regressive",
        "category": "SRHR, economy, gendered health impacts",
        "type": "observed response",
        "country": "Mexico",
      },
      {
        "title_en": "Colombian women's football suffers bigger cuts than men's game",
        "description_en": "Only three clubs female players contracts, leaving remaining female players without social security during crisis.",
        
        "title_es": "El fútbol femenino colombiano sufre cortes mayores que el de los hombres",
        "description_es": "Solo tres clubes contratan jugadoras, dejando a las jugadoras restantes sin seguridad social durante la crisis",

        "link": "https://www.dw.com/en/colombian-womens-football-cries-foul-after-suffering-bigger-cuts-than-mens-game/a-53161998",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "To beat the virus, Colombia tries separating men and women",
        "description_en": "Men and women only allowed out on alternate days in Bogota to reduce crowds.",
        
        "title_es": "Para vencer al virus, Colombia intenta separar a hombres y mujeres",
        "description_es": "Los hombres y las mujeres solo pueden salir en días alternos en Bogotá para reducir las multitudes",

        "link": "https://www.nytimes.com/2020/04/15/world/americas/virus-colombia-bogota-men-women.html",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title_en": "Lockdown in Colombia will affect the right to abortion",
        "description_en": "Access to sexual and reproductive health services hindered for colombian and venezuelan women, mainly abortions.",
        
        "title_es": "El bloqueo en Colombia afectará el derecho al aborto",
        "description_es": "El acceso a los servicios de salud sexual y reproductiva obstaculizó a las mujeres colombianas y venezolanas, principalmente los abortos",

        "link": "https://Globalvoices.org/2020/04/03/lockdown-in-colombia-will-affect-the-right-to-abortion-says-human-rights-lawyer/",
        "progressive": "regressive",
        "category": "SRHR, gender-based violence",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "COVID-19 delays gender data collection on Colombian border",
        "description_en": "Women's groups and organisations hindered data collection for womens empowerment, delaying gender equality advancement.",
        
        "title_es": "COVID-19 retrasa la recopilación de datos de género en la frontera colombiana",
        "description_es": "Los grupos y organizaciones de mujeres obstaculizaron la recopilación de datos para el empoderamiento de las mujeres, retrasando el avance de la igualdad de género",

        "link": "https://www.devex.com/news/covid-19-delays-gender-data-collection-on-colombian-border-96839",
        "progressive": "regressive",
        "category": "",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Three women murdered on first day of Colombia's Coronavirus lockdown",
        "description_en": "Domestic violence reports have tripled since the quarantine, feminicides augmented.",
        
        "title_es": "Tres mujeres asesinadas el primer día del encierro de Coronavirus en Colombia",
        "description_es": "Los informes de violencia doméstica se han triplicado desde la cuarentena, los feminicidios aumentaron",

        "link": "https://colombiareports.com/three-women-murdered-on-first-day-of-colombias-coronavirus-lockdown/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Are women the most vulnerable to COVID-19?",
        "description_en": "High percentage of female informal employment, causing financial instability, low incomes, low protection mechanisms",
        
        "title_es": "¿Son las mujeres las más vulnerables a COVID-19?",
        "description_es": "Alto porcentaje de empleo informal femenino, que causa inestabilidad financiera, bajos ingresos, mecanismos de protección bajos",

        "link": "https://www.telesurtv.net/news/mujeres-mas-vulnerables-pandemia-coronavirus-20200408-0051.html",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "COVID-19 and its impacts on the lives of women",
        "description_en": "Call for collective action for economic inclusion, strenghtened support, programs for women during crisis and future",
        
        "title_es": "COVID-19 y sus impactos en la vida de las mujeres",
        "description_es": "Llamado a la acción colectiva para la inclusión económica, apoyo reforzado, programas para mujeres durante la crisis y el futuro",

        "link": "https://www.elespectador.com/opinion/covid-19-y-su-impacto-en-la-vida-de-las-mujeres-columna-911064",
        "progressive": "progressive",
        "category": "labor",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title_en": "Colombian organisations mobilise to help the most vulnerable",
        "description_en": "Collective action initiatives, one by Trans Community Network to collect funds/food for sex workers",
        
        "title_es": "Las organizaciones colombianas se movilizan para ayudar a los más vulnerables",
        "description_es": "Iniciativas de acción colectiva, una de Trans Community Network para recaudar fondos / alimentos para trabajadoras sexuales",

        "link": "https://www.france24.com/es/20200321-covid19-colombia-organizaciones-ayuda-vulnerables",
        "progressive": "progressive",
        "category": "SRHR",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title_en": "Covid-19 subsidy in Chile: See how you can benefit",
        "description_en": "Subsidy of aproximately $60USD to parents, caregivers and extended to pregnant women.",
        
        "title_es": "Subsidio Covid-19 en Chile: vea cómo puede beneficiarse",
        "description_es": "Subsidio de aproximadamente $ 60USD a padres, cuidadores y extendido a mujeres embarazadas",

        "link": "https://libero.pe/ocio/1553605-bono-ayuda-familiar-covid-19-chile-2020-rut-revisa-beneficiario-dv-rut-ips-fecha-pago-familiar-banco",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Chile",
      },
      {
        "title_en": "Quarantine in Chile: Domestic violence cases increase by 70%",
        "description_en": "Reported 70% increase in domestic violence reports after first week of quarantine, promoting call line.",
        
        "title_es": "Cuarentena en Chile: los casos de violencia doméstica aumentan en un 70%",
        "description_es": "Se informó un aumento del 70% en los informes de violencia doméstica después de la primera semana de cuarentena, promoviendo la línea de llamada",

        "link": "https://larepublica.pe/genero/2020/04/10/cuarentena-en-chile-denuncias-por-violencia-de-genero-aumentaron-en-un-70-atmp/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title_en": "Subsidy of 380 soles: And you could not receive it?",
        "description_en": "Government subsidy to financially independent workers. Subsidy only receivable by woman of family.",
        
        "title_es": "Subsidio de 380 soles: ¿Y no pudo recibirlo?",
        "description_es": "Subvención del gobierno a trabajadores económicamente independientes. Subvención que solo puede recibir una mujer de familia",

        "link": "https://mag.elcomercio.pe/respuestas/bono-380-soles-que-hacer-si-mi-familiar-no-ha-podido-cobrar-bono-yo-me-quedo-en-casa-por-razones-de-fuerza-mayor-nnda-nnlt-noticia/",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Peru",
      },
      {
        "title_en": "Peru is Quarantining Men and Women on Different Days",
        "description_en": "Policy for gender-specific days to leave the home. Concerns for LGBTQ+ community.",
        
        "title_es": "Perú está poniendo en cuarentena a hombres y mujeres en diferentes días",
        "description_es": "Política para días específicos de género para salir de la casa. Preocupaciones para la comunidad LGBTQ +",

        "link": "https://www.businessinsider.com/peru-quarantining-men-and-women-different-days-2020-4",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Peru",
      },
      {
        "title_en": "Covid-19: How is the State Protecting Quaratined Domestic Violence Victims?",
        "description_en": "Government declares DV victims can seek police intervention, call line #100 and 14 shelters provided.",
        
        "title_es": "Covid-19: ¿Cómo protege el Estado a las víctimas de violencia doméstica en cuarentena?",
        "description_es": "El gobierno declara que las víctimas de DV pueden buscar intervención policial, llame a la línea # 100 y 14 refugios proporcionados",

        "link": "https://rpp.pe/politica/estado/covid-19-en-medio-de-la-cuarentena-como-protege-el-estado-a-las-victimas-de-violencia-familiar-noticia-1254585?ref=rpp",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "policy or law",
        "country": "Peru",
      },
      {
        "title_en": "Transgender ID clash with police checks during gender restricted movements",
        "description_en": "Police demands ID for transgender individuals during gender separated quarantine- high discrimination/ abuse of power.",
        
        "title_es": "Choque de ID transgénero con controles policiales durante los movimientos de género restringido",
        "description_es": "La policía exige una identificación para las personas transgénero durante la cuarentena separada por género: alta discriminación / abuso de poder",

        "link": "https://peru21.pe/lima/coronavirus-lgtb-peru-i-coronavirus-peru-policia-exige-dni-a-personas-transgenero-pese-a-aclaracion-del-presidente-martin-vizcarra-video-video-pandemia-coronavirus-covid-19-emergencia-sanitaria-estado-de-emergencia-nacional-noticia/",
        "progressive": "regressive",
        "category": "SRHR",
        "type": "observed response",
        "country": "Peru",
      },
      {
        "title_en": "Protocol for Women in Ecuador who face a double pandemic",
        "description_en": "Reports of DV have rapidly decreased, so safer call lines installed, 700 psycologists hired.",
        
        "title_es": "Protocolo para mujeres en Ecuador que enfrentan una doble pandemia",
        "description_es": "Los informes de DV han disminuido rápidamente, por lo que se instalaron líneas de llamada más seguras, se contrataron 700 psicólogos",

        "link": "http://laoferta.com/2020/04/12/protocolo-de-auxilio-para-las-mujeres-en-ecuador-que-afrontan-una-doble-pandemia/",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Ecuador",
      },
      {
        "title_en": "Corona virus: Cynthia Viteri donates her salary to pregnancy attention",
        "description_en": "Mayor of Guayaquil donates salary to help pregnancies as the health system has collpased.",
        
        "title_es": "Virus Corona: Cynthia Viteri dona su salario para atención del embarazo",
        "description_es": "El alcalde de Guayaquil dona un salario para ayudar a los embarazos a medida que el sistema de salud ha colapsado",

        "link": "https://www.eluniverso.com/guayaquil/2020/04/12/nota/7812021/coronavirus-ecuador-alcaldesa-cynthia-viteri-donara-su-sueldo",
        "progressive": "regressive",
        "category": "healthcare, gendered health impacts",
        "type": "temporary measure, observed response",
        "country": "Ecuador",
      },
      {
        "title_en": "More obstacles during pandemic for safe abortions in Latin America",
        "description_en": "Legal abortions very difficult to obtain, organisations help communicate for access to termination medicine.",
        
        "title_es": "Más obstáculos durante la pandemia para abortos seguros en América Latina",
        "description_es": "Los abortos legales son muy difíciles de obtener, las organizaciones ayudan a comunicarse para acceder a la medicina de terminación",

        "link": "https://elpais.com/sociedad/2020-04-09/la-pandemia-obstaculiza-aun-mas-el-aborto-seguro-en-america-latina.html",
        "progressive": "need to watch",
        "category": "SRHR, healthcare",
        "type": "observed response",
        "country": "Ecuador",
      },
      {
        "title_en": "Feminicide during the quarantine for pandemic in Panama",
        "description_en": "Two women murdered, reported feminicides on the rise in 2020, fear the worst during quarantine.",
        
        "title_es": "Feminicidio durante la cuarentena por pandemia en Panamá",
        "description_es": "Dos mujeres asesinadas, reportaron feminicidios en aumento en 2020, temen lo peor durante la cuarentena",

        "link": "https://www.elmostrador.cl/braga/2020/04/20/asesinatos-de-mujeres-durante-confinamiento-por-pandemia-impactan-en-panama/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Panama",
      },
      {
        "title_en": "The new discrimination LGBTI by Covid-19",
        "description_en": "Separated outdoor days by identity card sex, declares Minister of Health. Fear of LGBTI community.",
        
        "title_es": "La nueva discriminación LGBTI por Covid-19",
        "description_es": "Días separados al aire libre por sexo de la tarjeta de identidad, declara Ministro de Salud. Temor de la comunidad LGBTI",

        "link": "https://www.lavanguardia.com/participacion/lectores-corresponsales/20200405/48284394819/panama-secregacion-sexo-cuarentena-covid-19-discriminacion-lgbti.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Panama",
      },
      {
        "title_en": "How the gender restrictions will work in Panama",
        "description_en": "Specific gender days and departure time based on ID number and sex to get essential goods.",
        
        "title_es": "Cómo funcionarán las restricciones de género en Panamá",
        "description_es": "Días específicos de género y hora de salida basados ​​en el número de identificación y sexo para obtener bienes esenciales",

        "link": "https://peru21.pe/mundo/coronavirus-panamai-periodista-detalla-como-funciona-la-restriccion-de-transito-segun-el-sexo-en-panama-fotos-pandemia-coronavirus-covid-19-emergencia-sanitaria-estado-de-emergencia-nacional-lgtb-noticia/",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Panama",
      },
      {
        "title_en": "Pharmacy brings forward $3 million USD for maternal health",
        "description_en": "Pharmacy $3 million USD to avoid maternal deaths, by improving pregnant women services during quarantine.",
        
        "title_es": "Farmacia adelanta $ 3 millones de dólares para la salud materna",
        "description_es": "Farmacia $ 3 millones de dólares para evitar muertes maternas, al mejorar los servicios de mujeres embarazadas durante la cuarentena",

        "link": "https://www.laestrella.com.pa/nacional/200420/farmaceutica-aportara-3-millones-atencion-critica-madres-covid-19",
        "progressive": "progressive",
        "category": "gendered health impacts",
        "type": "temporary measure",
        "country": "Costa Rica, El Salvador, Panama",
      },
      {
        "title_en": "Women, reprecussions of quarantine and domestic violence",
        "description_en": "Observed increased domestic violence, they question why Costa Rica has not implemented mechanisms for women.",
        
        "title_es": "Mujeres, represalias de cuarentena y violencia doméstica",
        "description_es": "Se observó un aumento de la violencia doméstica, se preguntan por qué Costa Rica no ha implementado mecanismos para las mujeres",

        "link": "https://www.elpais.cr/2020/04/17/mujeres-repercusiones-del-confinamiento-a-raiz-del-coronavirus-y-violencia-domestica/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Costa Rica",
      },
      {
        "title_en": "Pregnant, birth and lactaction in times of coronavirus",
        "description_en": "Maternity services received advice for safe births. Although women are increasingly choosing home births.",
        
        "title_es": "Embarazada, nacimiento y lactancia en tiempos de coronavirus",
        "description_es": "Los servicios de maternidad recibieron consejos para partos seguros. Aunque las mujeres cada vez eligen más partos en el hogar",

        "link": "https://www.lostiempos.com/doble-click/vida/20200329/embarazo-parto-lactancia-tiempos-coronavirus",
        "progressive": "need to watch",
        "category": "SRHR",
        "type": "temporary measure",
        "country": "Costa Rica",
      },
      {
        "title_en": "Cuban mother and daughters die in hands of former partner",
        "description_en": "First reported feminicide in the midde of the Covid-19 pandemic, warns augmentation of domestic violence.",
        
        "title_es": "Madre e hijas cubanas mueren en manos de su ex pareja",
        "description_es": "El primer feminicidio denunciado en medio de la pandemia de Covid-19, advierte el aumento de la violencia doméstica",

        "link": "https://diariodecuba.com/cuba/1587466942_16976.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Cuba",
      },
      {
        "title_en": "Violence and Covid-19: disputed abuse",
        "description_en": "Fear of increasing domestic violence, victim psycholocical and legal support via phone and mail available.",
        
        "title_es": "Violencia y Covid-19: abuso en disputa",
        "description_es": "Temor de aumentar la violencia doméstica, apoyo psicológico y legal a las víctimas por teléfono y correo disponible",

        "link": "http://www.juventudrebelde.cu/suplementos/sexo-sentido/2020-04-14/violencia-y-covid-19-flagelos-en-disputa",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Cuba",
      },
      {
        "title_en": "Latin America fights against domestic violence during Covid-19",
        "description_en": "Two civil society initiatives: two independent online counseling platforms via phone, email and social media.",
        
        "title_es": "América Latina lucha contra la violencia doméstica durante Covid-19",
        "description_es": "Dos iniciativas de la sociedad civil: dos plataformas independientes de asesoramiento en línea por teléfono, correo electrónico y redes sociales",

        "link": "https://www.dw.com/es/am%C3%A9rica-latina-lucha-contra-la-violencia-de-g%C3%A9nero-en-tiempos-del-coronavirus/a-52971832",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Cuba",
      },
      {
        "title_en": "Cambodia: COVID-19 Clampdown on Free Speech",
        "description_en": "HRW has documented the arrests of 17 people since late January 2020 for sharing information about the coronavirus in Cambodia, including 5 women and one 14-year old girl.",
        
        "title_es": "Camboya: COVID-19 Reprimir la libertad de expresión",
        "description_es": "HRW ha documentado las detenciones de 17 personas desde fines de enero de 2020 por compartir información sobre el coronavirus en Camboya, incluidas 5 mujeres y una niña de 14 años",

        "link": "https://www.hrw.org/news/2020/03/24/cambodia-covid-19-clampdown-free-speech#",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Cambodia",
      },
      {
        "title_en": "Prioritize the needs of those at increased risk of gender-based violence in responding to the COVID-19 situation",
        "description_en": "Civil society organiztions in Cambodia wrote open letter to government to express concern for gendered issues to be exacerbated during and after the current pandemic.",
        
        "title_es": "Priorizar las necesidades de las personas con mayor riesgo de violencia de género al responder a la situación COVID-19",
        "description_es": "Las organizaciones de la sociedad civil en Camboya escribieron una carta abierta al gobierno para expresar su preocupación por los problemas de género que se exacerbarán durante y después de la pandemia actual",

        "link": "https://www.business-humanrights.org/en/cambodia-15-ngos-call-on-govt-to-prioritise-the-needs-of-people-at-increased-risk-of-gender-based-violence-in-responding-to-the-covid-19",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Cambodia",
      },
      {
        "title_en": "Scared of Coronavirus, Pregnant Women Avoid Hospitals",
        "description_en": "Large numbers of pregnant women are staying away from hospitals and cancel prenatal appointments because of fears of infection.",
        
        "title_es": "Miedo al coronavirus, las mujeres embarazadas evitan los hospitales",
        "description_es": "Un gran número de mujeres embarazadas se mantienen alejadas de los hospitales y cancelan las citas prenatales por temor a la infección",

        "link": "https://www.voacambodia.com/a/scared-of-coronavirus-pregnant-women-avoid-hospitals-/5368829.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Cambodia",
      },
      {
        "title_en": "Myanmar Factory Uses COVID-19 to Union Bust",
        "description_en": "Myan Mode garment factory permanently fired all 520 union members (mostly young women) and withheld March wages, citing a decrease in orders due to COVID-19",
        
        "title_es": "La fábrica de Myanmar utiliza COVID-19 para el busto de la Unión",
        "description_es": "La fábrica de ropa Myan Mode despidió permanentemente a todos los 520 miembros del sindicato (en su mayoría mujeres jóvenes) y retuvo los salarios de marzo, citando una disminución en los pedidos debido a COVID-19",

        "link": "https://www.solidaritycenter.org/myanmar-factory-uses-covid-19-to-union-bust/",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "MSWRR to draw project plan for COVID-19 prevention, control at IDP camps",
        "description_en": "Ministry of Social Welfare, Relief and Resettlement to draft project plan for prevention, control and treatment of the Coronavirus infection at IDP camps.",
        
        "title_es": "MSWRR elaborará un plan de proyecto para la prevención, el control de COVID-19 en los campamentos de desplazados internos",
        "description_es": "Ministerio de Bienestar Social, Socorro y Reasentamiento del borrador del plan del proyecto para la prevención, control y tratamiento de la infección por Coronavirus en los campamentos de desplazados internos",

        "link": "https://www.Globalnewlightofmyanmar.com/mswrr-to-draw-project-plan-for-covid-19-prevention-control-at-idp-camps/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "Melons rot, factories shutter: Myanmar's COVID-19 fallout",
        "description_en": "Thousands of factory jobs (majority women-held) have been lost and border trade with China has been decimated as Myanmar reels from the impact of the coronavirus pandemic.",
        
        "title_es": "Podredumbre de melones, obturación de fábricas: consecuencias de COVID-19 de Myanmar",
        "description_es": "Se han perdido miles de empleos en las fábricas (en su mayoría controlados por mujeres) y el comercio fronterizo con China se ha diezmado a medida que Myanmar se tambalea por el impacto de la pandemia de coronavirus",

        "link": "https://frontiermyanmar.net/en/melons-rot-factories-shutter-myanmars-covid-19-fallout",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "Myanmar lockdown leads to rise in domestic violence",
        "description_en": "There has been a spike in the number of domestic violence complaints since the government began the lockdowns.",
        
        "title_es": "El bloqueo de Myanmar provoca un aumento de la violencia doméstica",
        "description_es": "Ha habido un aumento en el número de denuncias de violencia doméstica desde que el gobierno comenzó los bloqueos",

        "link": "https://www.nst.com.my/world/region/2020/04/580944/myanmar-lockdown-leads-rise-domestic-violence",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "In Myanmar, Hunger Overshadows COVID-19 for Yangon's Poorest",
        "description_en": "25,000 Myanmar garment workers from more than 40 factories lost their jobs because of the pandemic; mostly women, they face impending hunger during lockdown.",
        
        "title_es": "En Myanmar, el hambre eclipsa COVID-19 para los más pobres de Yangon",
        "description_es": "25,000 trabajadores de la confección de Myanmar de más de 40 fábricas perdieron sus empleos debido a la pandemia; en su mayoría mujeres, enfrentan un hambre inminente durante el encierro",

        "link": "https://thediplomat.com/2020/04/in-myanmar-hunger-overshadows-covid-19-for-yangons-poorest/",
        "progressive": "need to watch",
        "category": "food",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "EU Pledges Support for Women Garment Factory Workers in Myanmar",
        "description_en": "EU will provide 5 million euros (7.9 billion kyats) as an emergency fund to support female workers in Myanmar's garment sector who are impacted by COVID-19.",
        
        "title_es": "La UE promete apoyo a las trabajadoras de la fábrica de prendas de vestir en Myanmar",
        "description_es": "La UE proporcionará 5 millones de euros (7.900 millones de kyats) como fondo de emergencia para apoyar a las trabajadoras del sector de la confección de Myanmar que se ven afectadas por COVID-19",

        "link": "https://www.irrawaddy.com/specials/myanmar-covid-19/eu-pledges-support-for-women-garment-factory-workers-in-myanmar.html",
        "progressive": "progressive",
        "category": "labor",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "Myanmar: 3 Charged for COVID-19 Street Art",
        "description_en": "Myanmar's government charged three street artists (one woman) arrested for painting a mural that raises awareness about the coronavirus pandemic because it violates law criminalizing speech that 'insults' religion.",
        
        "title_es": "Myanmar: 3 acusados ​​de arte callejero COVID-19",
        "description_es": "El gobierno de Myanmar acusó a tres artistas callejeros (una mujer) arrestados por pintar un mural que crea conciencia sobre la pandemia de coronavirus porque viola la ley que criminaliza el discurso que insulta a la religión",

        "link": "https://www.hrw.org/news/2020/04/08/myanmar-3-charged-covid-19-street-art",
        "progressive": "regressive",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Myanmar",
      },
      {
        "title_en": "Covid-19 impact and responses: Myanmar",
        "description_en": "Unemployed workers are to receive 6 months healthcare and some maternity benefits; pregnant workers not permitted in factories, but to receive some financial support.",
        
        "title_es": "Impacto de Covid-19 y respuestas: Myanmar",
        "description_es": "Las trabajadoras desempleadas recibirán 6 meses de atención médica y algunos beneficios de maternidad; las trabajadoras embarazadas no están permitidas en las fábricas, pero recibirán algún tipo de apoyo financiero",

        "link": "https://www.fairwear.org/covid-19-dossier/covid-19-guidance-for-production-countries/covid-19-impact-and-responses-myanmar/",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "Covid-19 (Indonesia): Union slams corona rapid test plan for House while workers still on the job",
        "description_en": "Confederation of United Indonesian Workers criticised plan to carry out rapid test for Covid-19 on 575 members of the House of Representatives (DPR) but not workers (mostly women) who work in close proximity without protection.",
        
        "title_es": "Covid-19 (Indonesia): el sindicato critica el plan de prueba rápida de corona para House mientras los trabajadores aún están en el trabajo",
        "description_es": "La Confederación de Trabajadores Unidos de Indonesia criticó el plan de llevar a cabo una prueba rápida para Covid-19 en 575 miembros de la Cámara de Representantes (DPR) pero no en los trabajadores (en su mayoría mujeres) que trabajan en las proximidades sin protección",

        "link": "http://www.europe-solidaire.org/spip.php?article52591",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title_en": "COVID-19: the gendered impacts of the outbreak",
        "description_en": "Travel restrictions cause financial challenges and uncertainty for mostly female foreign domestic workers, many of whom travel in southeast Asia between the Philippines, Indonesia, Hong Kong, and Singapore.",
        
        "title_es": "COVID-19: los impactos de género del brote",
        "description_es": "Las restricciones de viaje causan desafíos financieros e incertidumbre para la mayoría de las trabajadoras domésticas extranjeras, muchas de las cuales viajan al sudeste asiático entre Filipinas, Indonesia, Hong Kong y Singapur",

        "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30526-2/fulltext",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title_en": "Domestic violence rises amid coronavirus lockdowns in Asia",
        "description_en": "Because gender disparity for household labor is high in Asia, National Commission on Violence Against Women warned that women face increased physical violence during partial lockdown, urged equal distribution of labor in families.",
        
        "title_es": "La violencia doméstica aumenta en medio de los bloqueos de coronavirus en Asia",
        "description_es": "Debido a que la disparidad de género en el trabajo doméstico es alta en Asia, la Comisión Nacional de Violencia contra la Mujer advirtió que las mujeres enfrentan un aumento de la violencia física durante el encierro parcial, exhortó a la distribución equitativa del trabajo en las familias",

        "link": "https://www.dw.com/en/domestic-violence-rises-amid-coronavirus-lockdowns-in-asia/a-53077378",
        "progressive": "need to watch",
        "category": "childcare, labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title_en": "Labour Plan Options for Enterprises Affected by COVID-19",
        "description_en": "Based on the guidance from Ministry of Health of Vietnam: Garment workers (mostly women) will not pay penalties for missing work due to COVID-19; employees must negotiate severance in case of illness; empoyers can unilaterally terminate labour contracts but just give appropriate notice.",
        
        "title_es": "Opciones del plan laboral para empresas afectadas por COVID-19",
        "description_es": "Basado en la guía del Ministerio de Salud de Vietnam: los trabajadores de la confección (en su mayoría mujeres) no pagarán multas por falta de trabajo debido a COVID-19; los empleados deben negociar la indemnización en caso de enfermedad; los poderes pueden rescindir unilateralmente los contratos laborales pero solo dale el aviso correspondiente",

        "link": "https://betterwork.org/wp-content/uploads/2020/04/BWV-Guide-for-factories_07.04.pdf",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Vietnam",
      },
      {
        "title_en": "Bangkok slum residents prepare for worst as virus grips Thailand",
        "description_en": "Older people, especially women, often play a very important role looking after children and ill relatives. Those living in poverty in cramped slums may suffer disproportionately.",
        
        "title_es": "Los residentes de los barrios bajos de Bangkok se preparan para lo peor mientras el virus se apodera de Tailandia",
        "description_es": "Las personas mayores, especialmente las mujeres, a menudo juegan un papel muy importante cuidando a los niños y parientes enfermos. Los que viven en la pobreza en barrios marginales estrechos pueden sufrir de manera desproporcionada",

        "link": "https://www.aljazeera.com/news/2020/03/bangkok-slum-residents-prepare-worst-virus-grips-thailand-200322074123038.html",
        "progressive": "need to watch",
        "category": "economy, childcare",
        "type": "observed response",
        "country": "Thailand",
      },
      {
        "title_en": "MCO-linked domestic violence rises",
        "description_en": "Data from the Women and Family Development Ministry shows Malaysia has seen a spike in the number of domestic violence cases following the Movement Control Order (MCO).",
        
        "title_es": "aumenta la violencia doméstica vinculada a la MCO",
        "description_es": "Los datos del Ministerio de Desarrollo de la Mujer y la Familia muestran que Malasia ha visto un aumento en el número de casos de violencia doméstica después de la Orden de Control de Movimiento (MCO)",

        "link": "https://www.nst.com.my/news/exclusive/2020/04/581233/mco-linked-domestic-violence-rises",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Malaysia",
      },
      {
        "title_en": "Don't Nag Your Husband During Lockdown, Malaysia's Government Advises Women",
        "description_en": "The Women and Family Development Ministry created online posters urging women to refrain from sarcasm, dress for the office, not nag their husbands, and more to maintain family harmony (the ministry apologized the following day)",
        
        "title_es": "No regañe a su esposo durante el encierro, el gobierno de Malasia aconseja a las mujeres",
        "description_es": "El Ministerio de Desarrollo de la Mujer y la Familia creó carteles en línea instando a las mujeres a abstenerse del sarcasmo, vestirse para la oficina, no molestar a sus esposos y más para mantener la armonía familiar (el ministerio se disculpó al día siguiente)",

        "link": "https://www.npr.org/2020/04/01/825051317/dont-nag-your-husband-during-lock-down-malaysias-government-advises-women",
        "progressive": "regressive",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "Malaysia",
      },
      {
        "title_en": "Service and untold sacrifices: Women on the Covid-19 frontline in Malaysia",
        "description_en": "Several Bills, including the Sexual Harassment Bill, Anti-Discrimination Against Women Bill and anti-stalking laws, are scheduled to be tabled at the next Parliament sitting.",
        
        "title_es": "Servicio y sacrificios incalculables: mujeres en la primera línea de Covid-19 en Malasia",
        "description_es": "Varios proyectos de ley, incluido el proyecto de ley sobre el acoso sexual, el proyecto de ley contra la discriminación contra la mujer y las leyes contra el acoso, se presentarán en la próxima sesión del Parlamento",

        "link": "https://www.malaymail.com/news/malaysia/2020/04/13/service-and-untold-sacrifices-women-on-the-covid-19-frontline-in-malaysia/1856067",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Malaysia",
      },
      {
        "title_en": "East Timor: EU, UN reassign US$1 mln to combat violence against women during pandemic",
        "description_en": "$1 million (€914,000) from their existing Spotlight programme in East Timor to respond to the risk of violence against women in the context of the Covid-19 pandemic.",
        
        "title_es": "Timor Oriental: UE y ONU reasignan US $ 1 millón para combatir la violencia contra las mujeres durante la pandemia",
        "description_es": "$ 1 millón (€ 914,000) de su programa Spotlight existente en Timor Oriental para responder al riesgo de violencia contra las mujeres en el contexto de la pandemia de Covid-19",

        "link": "https://www.macaubusiness.com/east-timor-eu-un-reassign-us1-mln-to-combat-violence-against-women-during-pandemic/",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "East Timor",
      },
      {
        "title_en": "How the COVID-19 pandemic affects vulnerable women in Singapore",
        "description_en": "Article looks at how this disaster is playing out for five particularly vulnerable groups of women in Singapore.",
        
        "title_es": "Cómo la pandemia de COVID-19 afecta a las mujeres vulnerables en Singapur",
        "description_es": "El artículo analiza cómo se desarrolla este desastre para cinco grupos de mujeres particularmente vulnerables en Singapur",

        "link": "https://www.aware.org.sg/2020/03/how-the-covid-19-pandemic-affects-vulnerable-women-in-singapore/",
        "progressive": "regressive",
        "category": "economy, labor, gendered health impacts, gender-based violence",
        "type": "observed response",
        "country": "Singapore",
      },
      {
        "title_en": "Covid-19 and the increase in domestic violence in Asia Pacific",
        "description_en": "Association of Women for Action and Research (AWARE) women's helpline saw a 33 percent increase in calls related to family violence in February compared to last February, evne though national data shows a decline in cases from 2016 to 2019.",
        
        "title_es": "Covid-19 y el aumento de la violencia doméstica en Asia Pacífico",
        "description_es": "La línea de ayuda para mujeres de la Asociación de Mujeres para la Acción y la Investigación (AWARE) experimentó un aumento del 33 por ciento en las llamadas relacionadas con la violencia familiar en febrero en comparación con febrero pasado, aunque los datos nacionales muestran una disminución en los casos de 2016 a 2019",

        "link": "https://www.eco-business.com/news/covid-19-and-the-increase-in-domestic-violence-in-asia-pacific/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Singapore",
      },
      {
        "title_en": "Philippines: COVID-19 Response Plan (03 April 2020)",
        "description_en": "The Humanitarian country Team (HCT) COVID-19 Response Plan does not appear to currently address the increase in gender-based violence.",
        
        "title_es": "Filipinas: Plan de respuesta COVID-19 (03 de abril de 2020)",
        "description_es": "El Plan de Respuesta COVID-19 del Equipo Humanitario de País (HCT) no parece abordar actualmente el aumento de la violencia de género",

        "link": "https://reliefweb.int/report/philippines/philippines-covid-19-response-plan-03-april-2020",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Philippines",
      },
      {
        "title_en": "Philippines urged to combat escalating domestic violence cases amid virus lockdowns",
        "description_en": "At least one woman or child is abused every 10 minutes in the Philippines, the Center for Women's Resources said in recent report, and quarantine measures make it harder for victims seek help.",
        
        "title_es": "Filipinas instó a combatir la escalada de casos de violencia doméstica en medio de bloqueos de virus",
        "description_es": "Al menos una mujer o niño es maltratado cada 10 minutos en Filipinas, dijo el Centro de Recursos para la Mujer en un informe reciente, y las medidas de cuarentena dificultan que las víctimas busquen ayuda",

        "link": "https://www.philstar.com/headlines/2020/04/06/2005855/philippines-urged-combat-escalating-domestic-violence-cases-amid-virus-lockdowns",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Philippines",
      },
      {
        "title_en": "Stay home' and work? Implications of COVID-19 and the UK Governmental",
        "description_en": "Potential economic impact of COVID-19 on self-employed in the UK, how to possibly support self-employed women",
        
        "title_es": "Quedarse en casa y trabajar? Implicaciones de COVID-19 y el gobierno del Reino Unido",
        "description_es": "Impacto económico potencial de COVID-19 en los trabajadores por cuenta propia en el Reino Unido, cómo posiblemente apoyar a las mujeres que trabajan por cuenta propia",

        "link": "https://isbegen.wordpress.com/2020/03/27/stay-home-and-work/",
        "progressive": "regressive",
        "category": "economy",
        "type": "temporary measure, policy or law",
        "country": "United Kingdom",
      },
      {
        "title_en": "Most Brown and Black Americans are Exposing Themselves to Coronavirus",
        "description_en": "Telework disparity disproportionately affects black and brown workers, particularly low-income work",
        
        "title_es": "La mayoría de los estadounidenses marrones y negros se exponen al coronavirus",
        "description_es": "La disparidad del teletrabajo afecta desproporcionadamente a los trabajadores negros y marrones, particularmente el trabajo de bajos ingresos",

        "link": "https://www.vice.com/en_us/article/xgqpyq/most-brown-and-black-americans-are-exposing-themselves-to-coronavirus-for-a-paycheck",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title_en": "Low-paid women in UK at 'high risk' of Corona Exposure",
        "description_en": "89% of nurses, 84% of care workers are women, some at highest risk are lowest paid",
        
        "title_es": "Mujeres mal pagadas en el Reino Unido en 'alto riesgo' de exposición corona",
        "description_es": "el 89% de las enfermeras, el 84% de los trabajadores de atención son mujeres, algunas de mayor riesgo tienen el salario más bajo",

        "link": "https://www.theguardian.com/world/2020/mar/29/low-paid-women-in-uk-at-high-risk-of-coronavirus-exposure",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "United Kingdom",
      },
      {
        "title_en": "When Face-to-Face Interactions Become an Occupational Hazard: Jobs in the time of COVID-19",
        "description_en": "The pattern of potential job losses during COVID-19 outbreak is likely to disproportionately affect vulnerable groups (women, low income)",

        "title_es": "Cuando las interacciones cara a cara se convierten en un peligro laboral: trabajos en la época de COVID-19",
"description_es": "Es probable que el patrón de posibles pérdidas de empleo durante el brote de COVID-19 afecte desproporcionadamente a los grupos vulnerables (mujeres, bajos ingresos)",

"link": "https://www.brookings.edu/blog/future-development/2020/03/30/when-face-to-face-interactions-become-an-occupational-hazard-jobs-in-the-time-of-covid-19/",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States, Global",
      },
      {
        "title_en": "Equal Pay Day more important than ever amid COVID-19",
        "description_en": "NYC working against wage gap by creating a more supportive, family friendly workplace.",
        
        "title_es": "El día de igualdad de pago es más importante que nunca en medio de COVID-19",
        "description_es": "Nueva York trabajando contra la brecha salarial mediante la creación de un lugar de trabajo más favorable y familiar",

        "link": "https://thehill.com/opinion/civil-rights/490088-equal-pay-day-more-important-than-ever-amid-covid-19",
        "progressive": "progressive",
        "category": "economy, labor",
        "type": "policy or law",
        "country": "United States",
      },
      {
        "title_en": "Lockdown:Domestic workers struggle to make ends meet as families refuse to pay",
        "description_en": "Domestic workers in India are struggling since they cannot work and are therefore have no income",
        
        "title_es": "Bloqueo: las trabajadoras domésticas luchan para llegar a fin de mes mientras las familias se niegan a pagar",
        "description_es": "Las trabajadoras domésticas en India están luchando porque no pueden trabajar y, por lo tanto, no tienen ingresos",

        "link": "https://www.hindustantimes.com/mumbai-news/lockdown-domestic-workers-struggle-to-make-ends-meet-as-families-refuse-to-pay/story-aB6zzwdUyQYnivAJoCMtEJ.html",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "India",
      },
      {
        "title_en": "How the Corona Virus affects HR, Benefits and Retirement Professionals",
        "description_en": "COVID-19 will make gender pay inequities worse",

        
        "title_es": "Cómo afecta el virus Corona a los profesionales de recursos humanos, beneficios y jubilación",
        "description_es": "COVID-19 empeorará las desigualdades salariales de género",

        "link": "https://www.benefitspro.com/2020/04/07/covid-19-will-make-gender-pay-inequities-worse/?cmp=share_twitter",
        "progressive": "regressive",
        "category": "",
        "type": "",
        "country": "",
      },
      {
        "title_en": "COVID-19 worsening gender inequality, more women have lost jobs-UN",
        "description_en": "UN Secretary General: although the virus might be killing more men than women, women at greater risk of falling into poverty",

        
        "title_es": "COVID-19 empeora la desigualdad de género, más mujeres han perdido empleos-ONU",
        "description_es": "Secretario General de la ONU: aunque el virus podría estar matando a más hombres que mujeres, las mujeres corren mayor riesgo de caer en la pobreza",

        "link": "https://dailypost.ng/2020/04/10/covid-19-worsening-gender-inequality-more-women-have-lost-jobs-un/",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "Global",
      },
      {
        "title_en": "Female frontline workers in China typical of coronavirus economic and domestic burden",
        "description_en": "Women make up more than 90% of frontline health workers in Hubei province, disproportionately exposed.",

        
        "title_es": "Trabajadoras de primera línea en China, típicas de la carga económica y doméstica del coronavirus",
        "description_es": "Las mujeres representan más del 90% de los trabajadores de salud de primera línea en la provincia de Hubei, expuestas desproporcionadamente",

        "link": "https://amp-scmp-com.cdn.ampproject.org/c/s/amp.scmp.com/news/china/society/article/3079363/female-frontline-workers-china-typical-coronavirus-economic-and",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Global, China",
      },
      {
        "title_en": "The economic impact of coronavirus on women is 'devasting' and excarcerbating gender inequality",
        "description_en": "The COVID-19 crisis is exacerbating structural inequities for women and women of color",

        
        "title_es": "El impacto económico del coronavirus en las mujeres es 'devastador' y excarcerba la desigualdad de género",
        "description_es": "La crisis de COVID-19 está exacerbando las inequidades estructurales para las mujeres y las mujeres de color",

        "link": "https://www.newsweek.com/economic-impact-coronavirus-women-devastating-exacerbating-gender-inequality-says-1497325",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title_en": "Women on the frontlines of COVID-19",
        "description_en": "Working class women have been left dramatically and disproportionately unprepared for the ensuing economic crisis",
        
        "title_es": "Mujeres en primera línea de COVID-19",
        "description_es": "Las mujeres de la clase trabajadora se han quedado dramáticamente y desproporcionadamente sin preparación para la crisis económica que sigue",

        "link": "https://www.liberationnews.org/women-on-the-frontlines-of-covid-19/",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title_en": "Gender Pay Gap poses 'shocking' pitfall if isolation goes on",
        "description_en": "Gender pay gap is at heart of serious potential frontline worker deficiency, if isolation continues",
        
        "title_es": "Gender Pay Gap poses 'shocking' pitfall if isolation goes on",
        "description_es": "Gender pay gap is at heart of serious potential frontline worker deficiency, if isolation continues",

        "link": "https://www.canberratimes.com.au/story/6721006/gender-pay-gap-poses-shocking-pitfall-if-isolation-goes-on/",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "Australia",
      },
      {
        "title_en": "Protecting women using DFS during the Pandemic",
        "description_en": "Increased emphasis on online banking, training to prevent illiterate women from scams or 'loans'",

        
        "title_es": "Protección de mujeres que usan DFS durante la pandemia",
        "description_es": "Mayor énfasis en la banca en línea, capacitación para prevenir a las mujeres analfabetas de estafas o 'préstamos'",

        "link": "https://www.siaedge.com/news/2020/3/27/protecting-women-using-dfs-during-the-pandemic",
        "progressive": "progressive",
        "category": "economy",
        "type": "observed response",
        "country": "Rwanda, Kenya, Ghana",
      },
      {
        "title_en": "The Economic Devastation of COVID-19 is hitting Women Particularly Hard",
        "description_en": "Women, especially black women, are losing the majority of jobs. If 2008 was a 'mancession', this is becoming a 'femcession'.",

        
        "title_es": "La devastación económica de COVID-19 está afectando especialmente a las mujeres",
        "description_es": "Las mujeres, especialmente las mujeres negras, están perdiendo la mayoría de los empleos. Si 2008 fue una 'mancesión', esto se está convirtiendo en una 'femcesión'",

        "link": "https://www.huffpost.com/entry/women-coronavirus-lost-jobs_n_5e90observed response63c5b685fbc7d4a557?",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title_en": "The Impact of COVID-19 on Gender Equality",
        "description_en": "A paper on the effects of COVID-19 on employment, child care needs, gender norms and policy options.",

        
        "title_es": "El impacto de COVID-19 en la igualdad de género",
        "description_es": "Un documento sobre los efectos de COVID-19 en el empleo, las necesidades de cuidado infantil, las normas de género y las opciones de política",

        "link": "https://www.nber.org/papers/w26947",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title_en": "How Millions of Women Became the Most Essential Workers in America",
        "description_en": "The essential workers are more likely to be non-white women and are underpaid and undervalued",
        
        "title_es": "Cómo millones de mujeres se convirtieron en los trabajadores más esenciales en Estados Unidos",
        "description_es": "Los trabajadores esenciales tienen más probabilidades de ser mujeres no blancas y están mal remunerados y subvalorados",

        "link": "https://www.nytimes.com/2020/04/18/us/coronavirus-women-essential-workers.html",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title_en": "COVID-19 fuels domestic violence in China",
        "description_en": "Domestic violence increases in China during COVID-19 pandemic, campaign has lead to more awareness",

        
        "title_es": "COVID-19 alimenta la violencia doméstica en China",
        "description_es": "La violencia doméstica aumenta en China durante la pandemia de COVID-19, la campaña ha llevado a una mayor conciencia",

        "link": "https://supchina.com/2020/03/24/covid-19-fuels-domestic-violence-in-china/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "China",
      },
      {
        "title_en": "Ending Violence against Women in the Context of COVID-19",
        "description_en": "UN Trust Fund to End Violence against Women (UN Trust Fund) remain committed to partners in the field",
        
        "title_es": "Poner fin a la violencia contra las mujeres en el contexto de COVID-19",
        "description_es": "El Fondo Fiduciario de las Naciones Unidas para poner fin a la violencia contra la mujer (Fondo Fiduciario de las Naciones Unidas) sigue comprometido con sus asociados en el terreno",

        "link": "https://www.unwomen.org/en/news/stories/2020/3/ending-violence-against-women-in-the-context-of-covid-19",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "India, Congo",
      },
      {
        "title_en": "Increase in Domestic Violence Feared during Virus Lockdown",
        "description_en": "Initial reports of increased domestic violence during COVID-19 crisis but full extent unlikely until post-crisis",

        
        "title_es": "Aumento de la violencia doméstica temida durante el bloqueo de virus",
        "description_es": "Informes iniciales de aumento de la violencia doméstica durante la crisis de COVID-19 pero totalmente improbable hasta después de la crisis",

        "link": "https://www.axios.com/coronavirus-domestic-violence-de98Organizing Tool02-51f2-49ec-919c-c70052e29eef.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title_en": "Gender based Violence on the time of Corona",
        "description_en": "The increase in gender based violence during corona lockdown is a Global problem, not unique to South Africa",
        
        "title_es": "Gender based Violence on the time of Corona",
        "description_es": "The increase in gender based violence during corona lockdown is a Global problem, not unique to South Africa",
        "link": "https://hsf.org.za/publications/hsf-briefs/gender-based-violence-in-the-time-of-corona",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Global, South Africa",
      },
      {
        "title_en": "The pandemic is impacting women across Latin America",
        "description_en": "High informal work make women more at risk of no revenue/savings as jobs cease.",
        
        "title_es": "La pandemia está afectando a las mujeres en toda América Latina",
        "description_es": "El trabajo informal alto hace que las mujeres corran más riesgo de no tener ingresos / ahorros a medida que cesa el trabajo",
        "link": "https://www.france24.com/es/20200324-coronavirus-mujeres-latinas-violencia-trabajo-informal",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "Ecuador",
      },
      {
        "title_en": "Tough times for French prostitutes as Covid-19 drives away customers",
        "description_en": "Prostitutes unable to claim 1,500 euros in aid since no self employed status, risking health.",
        
        "title_es": "Tiempos difíciles para las prostitutas francesas porque Covid-19 ahuyenta a los clientes",
        "description_es": "Las prostitutas no pueden reclamar 1.500 euros en ayuda porque no tienen un empleo por cuenta propia y ponen en riesgo su salud",
        "link": "https://www.thecitizen.co.tz/news/Tough-times-for-France-prostitutes-as-Covid-19-lockdown-/1840386-5504006-6aumcz/index.html",
        "progressive": "regressive",
        "category": "SRHR, economy",
        "type": "observed response",
        "country": "France",
      },
      {
        "title_en": "Coronavirus: Hotel opens in Brussels for female domestic violence victims",
        "description_en": "With all refuges and centers full, hotel welcomes 50 female domestic violence victims and children",

        
        "title_es": "Coronavirus: Hotel abre en Bruselas para mujeres víctimas de violencia doméstica",
        "description_es": "Con todos los refugios y centros llenos, el hotel da la bienvenida a 50 mujeres víctimas de violencia doméstica y niños",
        "link": "https://www.rtbf.be/info/regions/bruxelles/detail_coronavirus-ouverture-a-bruxelles-d-un-hotel-pour-les-femmes-victimes-de-violences-familiales-ou-conjugales?id=10476521",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Belgium",
      },
      {
        "title_en": "Coronavirus: Disabled women express their invisibility",
        "description_en": "Disabled women, especially mothers, explain their lack of attention in goverment measures, creating difficult lifestyle.",

        
        "title_es": "Coronavirus: las mujeres discapacitadas expresan su invisibilidad",
        "description_es": "Las mujeres discapacitadas, especialmente las madres, explican su falta de atención en las medidas gubernamentales, creando un estilo de vida difícil",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_coronavirus-les-femmes-handicapees-s-expriment-contre-leur-invisibilite?id=10466980",
        "progressive": "regressive",
        "category": "disability",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title_en": "Draft Kingdom of Cambodia Royal Government of Cambodia Ministry of Health Cambodia COVID-19 Emergency Response Project",
        "description_en": "The project contains provisions to prevent Sexual Sexual Exploitation and Abuse (SEA), gender-based violence (GBV)",

        
        "title_es": "Proyecto de Reino de Camboya Gobierno Real de Camboya Ministerio de Salud Camboya COVID-19 Proyecto de Respuesta a Emergencias",
        "description_es": "El proyecto contiene disposiciones para prevenir la Explotación y el Abuso Sexual (SEA), la violencia de género (VBG)",
        "link": "http://documents.worldbank.org/curated/en/439691585153106101/pdf/Environmental-and-Social-Commitment-Plan-ESCP-Cambodia-COVID-19-Emergency-Response-Project-P173815.pdf",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Cambodia",
      },
      {
        "title_en": "Myanmar: Displacement Camps Are COVID-19 Tinderboxes",
        "description_en": "77% of 350,000 IDPs are women/children (Relief Web) and are trapped in overcrowded camps with substandard health care, lacking water, sanitation, and other services.",


        "title_es": "Myanmar: los campamentos de desplazamiento son polvorines COVID-19",
"description_es": "El 77% de 350,000 desplazados internos son mujeres / niños (Relief Web) y están atrapados en campamentos superpoblados con atención médica deficiente, falta de agua, saneamiento y otros servicios",
"link": "https://www.hrw.org/news/2020/03/30/myanmar-displacement-camps-are-covid-19-tinderboxes",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title_en": "Covid-19 impact and responses: Indonesia",
        "description_en": "Garment workers (mostly women) to receive full pay if suspected infection; government has allocated funds for 'Pre-Working Card' to provide dismissed employees with funds for four months.",
        
        "title_es": "Impacto de Covid-19 y respuestas: Indonesia",
        "description_es": "Los trabajadores de la confección (en su mayoría mujeres) recibirán el pago completo si sospechan infección; el gobierno ha asignado fondos para ' Tarjeta de trabajo previo 'para proporcionar fondos a los empleados despedidos durante cuatro meses",
        "link": "https://www.fairwear.org/covid-19-dossier/covid-19-guidance-for-production-countries/covid-19-impact-and-responses-indonesia/",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title_en": "Don't worry about being detained, just come forward for Covid-19 testing, please",
        "description_en": "Defence department said the government's focus now was on combating Covid-19, refugees shouldn't fear detention if they come forward to be tested.",

        
        "title_es": "No se preocupe por ser detenido, solo preséntese para la prueba de Covid-19, por favor",
        "description_es": "El departamento de Defensa dijo que el enfoque del gobierno ahora estaba en combatir a Covid-19, los refugiados no deberían temer la detención si se presentan para ser examinados",
        "link": "https://www.nst.com.my/news/nation/2020/03/577004/dont-worry-about-being-detained-just-come-forward-covid-19-testing-please",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Malaysia",
      },
      {
        "title_en": "Spike in domestic and sexual violence  in Nigeria",
        "description_en": "Lagos State Domestica and Sexual violence team set up leveraged on technology to set up helplines to proivde rapid response and help to victims",

        
        "title_es": "Aumento de la violencia doméstica y sexual en Nigeria",
        "description_es": "El equipo de Domestica y violencia sexual del estado de Lagos creó una tecnología apalancada para establecer líneas de ayuda para proporcionar una respuesta rápida y ayuda a las víctimas",
        "link": "https://guardian.ng/tag/domestic-violence/",
        "progressive": "need to watch",
        "category": "",
        "type": "",
        "country": "Nigeria",
      },
      {
        "title_en": "Extra Judicial Killings and sexual harassment",
        "description_en": "Law enforcement agencies phyiscially  citizens to enforce the stay at home and sexual molestation of women",
        
        "title_es": "Asesinatos extrajudiciales y acoso sexual",
        "description_es": "Los organismos encargados de hacer cumplir la ley, especialmente ciudadanos para hacer cumplir la estancia en el hogar y el abuso sexual de las mujeres",
        "link": "http://venturesafrica.com/security-agents-killed-more-nigerians-than-covid-19-during-lockdown/",
        "progressive": "need to watch",
        "category": "",
        "type": "",
        "country": "Nigeria",
      },
      {
        "title_en": "9.5 million women will not access a safe abortion in 2020 due to the pandemic",
        "description_en": "Colombia is one of the countries in the LAC region who will be most affected by funding cuts on SRHR",

        
        "title_es": "9.5 millones de mujeres no accederán a un aborto seguro en 2020 debido a la pandemia",
        "description_es": "Colombia es uno de los países de la región de ALC que se verá más afectado por los recortes de fondos para la SDSR",
        "link": "https://www.france24.com/es/20200417-9-5-millones-de-mujeres-no-podr%C3%ADan-acceder-a-un-aborto-seguro-en-2020-por-la-pandemia",
        "progressive": "regressive",
        "category": "SRHR",
        "type": "policy or law, temporary measure",
        "country": "Colombia",
      },
      {
        "title_en": "$5 Cans of Tuna: Colombia Corruption Thrives During Coronavirus Outbreak",
        "description_en": "Colombian authorities have detected widespread overcharging for food and medical supplies meant to help the Andean country deal with its coronavirus outbreak",

        
        "title_es": "$ 5 latas de atún: la corrupción en Colombia prospera durante el brote de coronavirus",
        "description_es": "Las autoridades colombianas han detectado una sobrecarga generalizada de alimentos y suministros médicos destinados a ayudar al país andino a enfrentar su brote de coronavirus",
        "link": "https://www.nytimes.com/reuters/2020/04/14/world/americas/14reuters-health-coronavirus-colombia-corruption.html",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Map of cases and deaths by coronavirus by department in Colombia",
        "description_en": "Tracker of Covid-19 cases per region in Colombia",

        
        "title_es": "Mapa de casos y muertes por coronavirus por departamento en Colombia",
        "description_es": "Rastreador de casos de Covid-19 por región en Colombia",
        "link": "https://colombia.as.com/colombia/2020/04/16/tikitakas/1587037898_987177.html?fbclid=IwAR2WZQTPaJB8S5_hQtIqPj8yaujO9lhD242gVVYff9Szb7L2ZTMk0h262zw",
        "progressive": "need to watch",
        "category": "digital surveillance",
        "type": "temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title_en": "The challenges facing education during the Covid-19 pandemic",
        "description_en": "Teachers and student challenges stories from the pandemic",

        
        "title_es": "Los desafíos que enfrenta la educación durante la pandemia de Covid-19",
        "description_es": "Maestros y estudiantes desafían historias de la pandemia",
        "link": "https://www.elespectador.com/coronavirus/los-retos-que-enfrenta-la-educacion-durante-la-pandemia-del-covid-19-articulo-912593",
        "progressive": "regressive",
        "category": "education",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Colombia asks for international support to assist Venezuelans in the midst of a coronavirus crisis",
        "description_en": "Government made an urgent call to increase the resources allocated to the migrant population with possible contagion or infected by Covid-19",

        
        "title_es": "Colombia solicita apoyo internacional para ayudar a los venezolanos en medio de una crisis de coronavirus",
        "description_es": "El gobierno hizo un llamado urgente para aumentar los recursos asignados a la población migrante con posible contagio o infectado por Covid-19",
        "link": "https://www.elespectador.com/coronavirus/colombia-pide-apoyo-internacional-para-atender-venezolanos-en-medio-de-crisis-por-coronavirus-articulo-914347?fbclid=IwAR0f6P7rrzLpsAueUGR7D7BtIxDLNZOsKRi2kWNsg7UCxwUN60VEnSy-53E",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Colombia, the virus and the always forgotten",
        "description_en": "The government punishes those who breach quarantine, but has been unable to provide the conditions that would allow them to stay home without starving",
        
        "title_es": "Colombia, el virus y lo siempre olvidado",
        "description_es": "El gobierno castiga a quienes violen la cuarentena, pero no ha podido proporcionar las condiciones que les permitan quedarse en casa sin morir de hambre",
        "link": "https://www.nytimes.com/es/2020/04/17/espanol/opinion/coronavirus-colombia.html?fbclid=IwAR0jjP1Edv3MCkdvnVxRktzuSlMlaborwQZ9qhaT_Q6DztgseQoGrS7-BnxebE",
        "progressive": "regressive",
        "category": "punitive, economy",
        "type": "policy or law, temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Gender Dimensions in the COVID-19 crisis in Colombia: Incorporating women and the gender equality approach in the response to COVID-19 is a priority.",
        "description_en": "Men and women face different impacts in the face of the health emergency, and emotional overload due to uncertainty, isolation and the economic burden that grows due to the loss of jobs",

        
        "title_es": "Dimensiones de género en la crisis de COVID-19 en Colombia: incorporar las mujeres y el enfoque de igualdad de género en la respuesta a COVID-19 es una prioridad",
        "description_es": "Los hombres y las mujeres enfrentan diferentes impactos ante la emergencia de salud y la sobrecarga emocional debido a la incertidumbre, el aislamiento y la carga económica que aumenta debido a la pérdida de empleos",
        "link": "https://www2.unwomen.org/-/media/field%20office%20colombia/documentos/publicaciones/2020/01/covid19_onu_mujeres-colombia.pdf?la=es&vs=1437",
        "progressive": "need to watch",
        "category": "punitive, childcare, economy, gendered health impacts",
        "type": "policy or law, observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Coronavirus: To beat the virus, Colombia tries separating men and women",
        "description_en": "On odd-numbered days, men can leave the house to seek out essentials. On even-numbered days, it's the women's turn.",

        
        "title_es": "Coronavirus: para vencer al virus, Colombia intenta separar a hombres y mujeres",
        "description_es": "En los días impares, los hombres pueden salir de la casa para buscar lo esencial. En los días pares, es el turno de las mujeres",
        "link": "https://www.straitstimes.com/world/americas/coronavirus-to-beat-the-virus-colombia-tries-separating-men-and-women?fbclid=IwAR3wthnzlzRgjVXMRpylXP1wUa4b7S-35v04HMjv7dP_-PFFtn9QUnp00TU",
        "progressive": "need to watch",
        "category": "healthcare, gender-based violence",
        "type": "policy or law, temporary measure",
        "country": "Colombia",
      },
      {
        "title_en": "Colombia: Indigenous Peoples will die from COVID-19 or from hunger if the state does not act immediately",
        "description_en": "Colombia must urgently take appropriate measures to guarantee the rights of Indigenous Peoples",
        
        "title_es": "Colombia: Indigenous Peoples will die from COVID-19 or from hunger if the state does not act immediately",
        "description_es": "Colombia must urgently take appropriate measures to guarantee the rights of Indigenous Peoples",

        "link": "https://www.amnesty.org/en/latest/news/2020/04/colombia-pueblos-indigenas-covid19-hambre/",
        "progressive": "regressive",
        "category": "healthcare, food, race",
        "type": "policy or law, observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Facing the COVID-19 Outbreak City of Bogotá",
        "description_en": "the report that summarizes the Measures to Contain COVID-19 implemented by the Mayor's Office of Bogotá",

        
        "title_es": "Frente al brote de COVID-19 Ciudad de Bogotá",
        "description_es": "el informe que resume las medidas para contener COVID-19 implementadas por la Alcaldía de Bogotá",
        "link": "http://internacional.secretariageneral.gov.co/Facing_the_COVID-19_Outbreak_Bogota_City_Hall_eng",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare, economy, food, gender-based violence, labor",
        "type": "policy or law, temporary measure",
        "country": "Colombia",
      },
      {
        "title_en": "We Need to Solve This: Colombia's Amazing race to Build a $1,000 Ventilator",
        "description_en": "As COVID-19 bears down, a spontaneous alliance of techies and health professionals in Medellin making promising progress on an urgent medical problem.",

        
        "title_es": "Necesitamos resolver esto: la increíble carrera de Colombia para construir un ventilador de $ 1,000",
        "description_es": "A medida que avanza COVID-19, una alianza espontánea de profesionales de la tecnología y la salud en Medellín logra avances prometedores en un problema médico urgente",
        "link": "https://www.vanityfair.com/news/2020/04/colombias-amazing-race-to-build-a-1000-ventilator?fbclid=IwAR0wJapnFmiBVbuEQ7_pmwv922DALMLAdp4F75LQ34beasfkm5ZbZmnJLBA",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Government enables WhatsApp line to answer questions about coronavirus",
        "description_en": "Whatsapp citizen response line for Covid-19",

        
        "title_es": "El gobierno habilita la línea de WhatsApp para responder preguntas sobre el coronavirus",
        "description_es": "Línea de respuesta ciudadana de Whatsapp para Covid-19",
        "link": "https://www.publimetro.co/co/noticias/2020/04/15/gobierno-habilita-linea-whatsapp-atender-dudas-coronavirus.html?fbclid=IwAR3UZL2y7XZAvTY2DOEF9Uv_s-EqNeg0ka0x4xmwR4ZH2-Tht0IRzwK9orc",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title_en": "New economic relief measures for the payment of basic services",
        "description_en": "",

        
        "title_es": "Nuevas medidas de ayuda económica para el pago de servicios básicos",
        "description_es": "",
        "link": "https://twitter.com/JoMalagon/status/1250946202356547584?s=20",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law",
        "country": "Colombia",
      },
      {
        "title_en": "What the Peak and Gender Law Says About the Transgender population",
        "description_en": "The measure is applied in Bogotá to control the agglomeration of people in supermarkets and banks within the framework of the national quarantine.",

        
        "title_es": "Lo que dice la Ley de Pico y Género sobre la población transgénero",
        "description_es": "La medida se aplica en Bogotá para controlar la aglomeración de personas en supermercados y bancos en el marco de la cuarentena nacional",
        "link": "https://colombia.as.com/colombia/2020/04/14/tikitakas/1586886106_102899.html?omnil=resscrlltit",
        "progressive": "progressive",
        "category": "gender-based violence, healthcare",
        "type": "policy or law",
        "country": "Colombia",
      },
      {
        "title_en": "For not complying with the quarantine there are 8,405 fines in Medellín",
        "description_en": "Although the streets are empty, in some areas there are still crowds.",

        
        "title_es": "Por no cumplir con la cuarentena hay 8,405 multas en Medellín",
        "description_es": "Aunque las calles están vacías, en algunas áreas todavía hay multitudes",
        "link": "https://www.eltiempo.com/colombia/medellin/por-no-acatar-la-cuarentena-van-8-405-multas-en-medellin-y-su-area-metropolitana-480998",
        "progressive": "progressive",
        "category": "punitive",
        "type": "policy or law",
        "country": "Colombia",
      },
      {
        "title_en": "UN Colombia Envoy: Ex-Combatants Making Masks Amid Pandemic",
        "description_en": "former combatants are now making face masks to respond to the new coronavirus pandemic, but COVID-19 hasn't stopped violence against social leaders, human rights defenders and ex-fighters",
        
        "title_es": "UN Colombia Envoy: Ex-Combatants Making Masks Amid Pandemic",
        "description_es": "former combatants are now making face masks to respond to the new coronavirus pandemic, but COVID-19 hasn't stopped violence against social leaders, human rights defenders and ex-fighters",

        "link": "https://www.nytimes.com/aponline/2020/04/14/world/americas/ap-un-virus-outbreak-un-colombia.html",
        "progressive": "regressive",
        "category": "punitive",
        "type": "policy or law, temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title_en": "The odyssey of Venezuelan families to return to their country from Colombia and flee the coronavirus",
        "description_en": "Migrants have been walking for many weeks to arrive to their country",

        
        "title_es": "La odisea de las familias venezolanas para regresar a su país desde Colombia y huir del coronavirus",
        "description_es": "Los migrantes han estado caminando durante muchas semanas para llegar a su país",
        "link": "https://noticias.caracoltv.com/colombia/la-odisea-de-varias-familias-venezolanas-para-volver-su-pais-desde-colombia-y-huir-del-coronavirus-nid226373?fbclid=IwAR0ZnYvHEB9NM6far1u6OqCwZYSTABkMVoLNNyEWRdmLJkj2cUdSfQ6MDy8",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor, gender-based violence",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title_en": "Chilbirth in Venezuela, Where Women's Deaths are a State Secret",
        "description_en": "Few parts of that system have been as damaged as its maternity wards, where the most critical birthing tools have broken down or just disappeared, sometimes forcing doctors to turn women away.",

        
        "title_es": "Nacimiento infantil en Venezuela, donde las muertes de mujeres son un secreto de estado",
        "description_es": "Pocas partes de ese sistema han sido tan dañadas como sus salas de maternidad, donde las herramientas de parto más críticas se han estropeado o simplemente desaparecido, a veces obligando a los médicos a rechazar a las mujeres",
        "link": "https://www.nytimes.com/2020/04/10/world/americas/venezuela-pregnancy-birth-death.html",
        "progressive": "regressive",
        "category": "SRHR, healthcare, gender-based violence, disability",
        "type": "policy or law, observed response",
        "country": "Venezuela",
      },
      {
        "title_en": "US ignores calls to suspend Venezuela and Iran sanctions amid coronavirus pandemic",
        "description_en": "Spread of coronavirus has not slowed drumbeat of successive layers of punitive measures imposed by the state department",

        
        "title_es": "Estados Unidos ignora los llamados a suspender las sanciones de Venezuela e Irán en medio de la pandemia de coronavirus",
        "description_es": "La propagación del coronavirus no ha frenado el ritmo de las sucesivas capas de medidas punitivas impuestas por el departamento de estado",
        "link": "https://www.theguardian.com/world/2020/mar/31/us-ignores-Global-appeals-suspend-sanctions-coronavirus-pandemic-iran-venezuela",
        "progressive": "regressive",
        "category": "punitive",
        "type": "policy or law, temporary measure, observed response",
        "country": "Venezuela",
      },
      {
        "title_en": "The unusual official figures of the Chavista regime on the coronavirus in Venezuela",
        "description_en": "Maduro says his regime has done more diagnostic tests than any other country in the region",

        
        "title_es": "Las inusuales cifras oficiales del régimen chavista sobre el coronavirus en Venezuela",
        "description_es": "Maduro dice que su régimen ha realizado más pruebas de diagnóstico que cualquier otro país de la región",
        "link": "https://www.infobae.com/america/venezuela/2020/04/13/las-insolitas-cifras-oficiales-del-regimen-chavista-sobre-el-coronavirus-en-venezuela/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title_en": "After Fleeing Crisis, Venezuelan Migrants Now Struggle In Coronavirus Lockdown",
        "description_en": "immigrants in the country are struggling after the authorities passed measures to prevent the spread of the new coronavirus.",

        
        "title_es": "Después de huir de la crisis, los migrantes venezolanos ahora luchan contra el bloqueo del coronavirus",
        "description_es": "los inmigrantes en el país están luchando después de que las autoridades aprobaron medidas para prevenir la propagación del nuevo coronavirus",
        "link": "https://www.npr.org/2020/04/03/824004353/after-fleeing-crisis-venezuelan-migrants-now-struggle-in-coronavirus-lockdown",
        "progressive": "regressive",
        "category": "economy, labor, food",
        "type": "policy or law, temporary measure",
        "country": "Venezuela",
      },
      {
        "title_en": "Coronavirus, sex and drugs: how privileged kids of Venezuela's elite still party in the pandemic",
        "description_en": "The potential risk is high for the pandemic to overwhelm an already crippled health system, where hospitals lack water, electricity and supplies.",

        
        "title_es": "Coronavirus, sexo y drogas: cómo los niños privilegiados de la élite venezolana aún participan en la pandemia",
        "description_es": "El riesgo potencial es alto para que la pandemia desborde un sistema de salud ya paralizado, donde los hospitales carecen de agua, electricidad y suministros",
        "link": "https://www.scmp.com/news/world/americas/article/3078952/coronavirus-sex-and-drugs-how-privileged-kids-venezuelas-elite",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title_en": "Venezuela elderly feel 'sentenced to euthanasia' under coronavirus quarantine",
        "description_en": "The plight of senior citizens was already acute in Venezuela following six years of brutal economic crisis and chronic problems with power and water services",

        
        "title_es": "Los ancianos de Venezuela se sienten 'sentenciados a eutanasia' bajo la cuarentena de coronavirus",
        "description_es": "La difícil situación de las personas mayores ya era aguda en Venezuela luego de seis años de brutal crisis económica y problemas crónicos con los servicios de energía y agua",
        "link": "https://www.reuters.com/article/us-health-coronavirus-venezuela-elderly/venezuela-elderly-feel-sentenced-to-euthanasia-under-coronavirus-quarantine-idUSKBN21O1EE",
        "progressive": "regressive",
        "category": "healthcare, disability, economy",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title_en": "Returning Venezuelans face 'nightmare' coronavirus quarantine",
        "description_en": "Advocates say migrants returning to Venezuela amid coronavirus lockdowns are forced into unsanitary gov't quarantine.",

        
        "title_es": "Los venezolanos que regresan se enfrentan a la cuarentena de coronavirus 'pesadilla'",
        "description_es": "Los defensores dicen que los migrantes que regresan a Venezuela en medio de encierros por coronavirus son forzados a la cuarentena sanitaria",
        "link": "https://www.aljazeera.com/news/2020/04/returning-venezuelans-forced-stirring-pot-diseases-200408195801387.html",
        "progressive": "regressive",
        "category": "healthcare, economy, gender-based violence",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title_en": "Many Venezuelan Hospitals Lack Basics To Function, Let Alone Handle COVID-19",
        "description_en": "Venezuela faces catastrophic consequences from the new coronavirus pandemic, which threatens to overwhelm its crumbling health system.",

        
        "title_es": "Muchos hospitales venezolanos carecen de elementos básicos para funcionar, solo manejen COVID-19",
        "description_es": "Venezuela enfrenta consecuencias catastróficas de la nueva pandemia de coronavirus, que amenaza con desbordar su sistema de salud en ruinas",
        "link": "https://www.npr.org/2020/04/10/831569313/many-venezuelan-hospitals-lack-basics-to-function-let-alone-handle-covid-19?utm_campaign=npr&utm_medium=social&utm_term=nprnews&utm_source=facebook.com&fbclid=IwAR0GWtjEwhULAGTHUG7DFeminist Statement or Analysis8bVDR84un1EtgqyNyPIIVJPvlho8-9OU6Xm00",
        "progressive": "regressive",
        "category": "healthcare, economy, disability",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title_en": "Paraguay Has South America's Best Record on Coronavirus After Early Lockdown",
        "description_en": "Paraguay did not wait imposing a strict lockdown in early March, before neighboring countries.",

        
        "title_es": "Paraguay tiene el mejor récord de Coronavirus en Sudamérica después del cierre anticipado",
        "description_es": "Paraguay no esperó imponer un bloqueo estricto a principios de marzo, antes de los países vecinos",
        "link": "https://www.nytimes.com/reuters/2020/04/14/world/americas/14reuters-health-coronavirus-paraguay.html",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "policy or law, observed response",
        "country": "Paraguay",
      },
      {
        "title_en": "Coronavirus in Paraguay: Face-to-face classes would not return this year",
        "description_en": "",

        
        "title_es": "Coronavirus en Paraguay: las clases presenciales no volverían este año",
        "description_es": "",
        "link": "http://www.c9n.com.py/actualidad/coronavirus-en-paraguay-clases-presenciales-no-volver%C3%ADan-este-a%C3%Scientific Datao-73249?fbclid=IwAR148mL63y8xJSYhZ7hTQvEeC95EGFh42_1ABlefNf2z23wPQmfIx_0KhNE",
        "progressive": "need to watch",
        "category": "education",
        "type": "policy or law, observed response",
        "country": "Paraguay",
      },
      {
        "title_en": "Paraguayans go hungry as coronavirus lockdown ravages livelihoods",
        "description_en": "Early, aggressive measures seem to be controlling the disease but the pandemic has laid bare the country's social inequalities",

        
        "title_es": "los paraguayos pasan hambre mientras el bloqueo del coronavirus destruye los medios de vida",
        "description_es": "Las primeras medidas agresivas parecen estar controlando la enfermedad, pero la pandemia ha puesto al descubierto las desigualdades sociales del país",
        "link": "https://www.theguardian.com/Global-development/2020/apr/12/paraguay-coronavirus-hungry-social-inequalities?fbclid=IwAR04_TPgFrvaXWK8gR0oyZRjUhSRHROP8RXzWMjlX5P2FD7PKoj0tG3jGurcI",
        "progressive": "regressive",
        "category": "economy, food",
        "type": "policy or law, observed response",
        "country": "Paraguay",
      },
      {
        "title_en": "Violence and confinement: Services for victims continue to operate",
        "description_en": "All institutions have registered increases in cases of family violence since the quarantine began",

        
        "title_es": "Violencia y confinamiento: los servicios para las víctimas continúan operando",
        "description_es": "Todas las instituciones han registrado aumentos en los casos de violencia familiar desde que comenzó la cuarentena",
        "link": "https://www.ultimahora.com/violencia-y-encierro-servicios-victimas-siguen-operando-n2878172.html",
        "progressive": "regressive",
        "category": "punitive, digital surveillance, gender-based violence",
        "type": "observed response",
        "country": "Paraguay",
      },
      {
        "title_en": "Paraguay is away from Covid-19 worst case scenario",
        "description_en": "A country like Paraguay, with a serious deficit in its health system, the quarantine was established in due course",

        
        "title_es": "Paraguay está lejos del peor de los casos de Covid-19",
        "description_es": "Un país como Paraguay, con un grave déficit en su sistema de salud, la cuarentena se estableció a su debido tiempo",
        "link": "https://www.gender-based violence.cl/noticia/mundo/paraguay-se-aleja-del-peor-escenario-del-covid-19-segun-informo-gobierno",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Paraguay",
      },
      {
        "title_en": "Paraguay: Solidarity dining rooms offer hope in times of Covid-19",
        "description_en": "Solidarity arises as a balm of hope, when state assistance does not arrive.",

        
        "title_es": "Paraguay: los comedores solidarios ofrecen esperanza en tiempos de Covid-19",
        "description_es": "La solidaridad surge como un bálsamo de esperanza, cuando la asistencia estatal no llega",
        "link": "https://es.aleteia.org/2020/04/14/paraguay-comedores-solidarios-brindan-esperanza-en-tiempos-de-covid-19/?fbclid=IwAR1xsP1P4EHuW_636QjrluIYbJXnrw3EhGihu6cXTiN7dV-11aygTgDM6SE",
        "progressive": "need to watch",
        "category": "economy, labor, food",
        "type": "temporary measure, observed response",
        "country": "Paraguay",
      },
      {
        "title_en": "Paraguay: Higher education is not a government priority, students denounce",
        "description_en": "Minister of education calls for virtual classes until the end of the year and organizations denounce digital gap that makes it impossible for youth to study",


        "title_es": "Paraguay: la educación superior no es una prioridad del gobierno, los estudiantes denuncian",
"description_es": "El ministro de educación pide clases virtuales hasta fin de año y las organizaciones denuncian la brecha digital que hace imposible que los jóvenes estudien",
"link": "https://www.nodal.am/2020/04/paraguay-ministro-de-educacion-pide-clases-virtuales-hasta-fin-de-ano-y-organizaciones-denuncian-brecha-digital-que-imposibilita-estudiar-a-miles-de-jovenes/",
        "progressive": "need to watch",
        "category": "education, economy, food",
        "type": "policy or law, temporary measure, observed response",
        "country": "Paraguay",
      },
      {
        "title_en": "What will the impact of Covid-19 be on the economy according to the IDB and what measures does it suggest?",
        "description_en": "More in the IDB 2020 macroeconomic report",


        "title_es": "¿Cuál será el impacto de Covid-19 en la economía según el BID y qué medidas sugiere?",
"description_es": "Más en el informe macroeconómico BID 2020",
"link": "https://negocios.elpais.com.uy/noticias/sera-impacto-coronavirus-economia-bid-medidas-sugiere.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title_en": "Latin America: from the outbreak to the coronavirus",
        "description_en": "The erosion of US hegemony and the debacle of the Bolivarian bloc produce an evident vacuum in regional leadership",


        "title_es": "América Latina: del brote al coronavirus",
"description_es": "La erosión de la hegemonía estadounidense y la debacle del bloque bolivariano producen un vacío evidente en el liderazgo regional",
"link": "https://elpais.com/elpais/2020/04/03/opinion/1585883651_861157.html?ssm=FB_CC&fbclid=IwAR1Nd0c8s2i8i961A8ZnF17tkXVyuaC92Uqx7FZu0PEa4HWU0cPEVuDdcTw",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title_en": "Coronavirus does not discriminate, Inequalities do",
        "description_en": "Vencer la pandemia requiere enfrentar las desigualdades",


        "title_es": "Coronavirus does not discriminate, Inequalities do",
"description_es": "Vencer la pandemia requiere enfrentar las desigualdades",
"link": "https://oi-files-d8-prod.s3.eu-west-2.amazonaws.com/s3fs-public/2020-03/Covid%2019%20en%20LAC_nota%20informativa_F_0.pdf",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor, food",
        "type": "policy or law, observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title_en": "Coronavirus in Uruguay | The history of the Australian cruise ship with covid-19 rejected by several countries and the 'humanitarian corridor' that it found in Montevideo",
        "description_en": "The situation on the ship owned by Aurore Expeditions was further complicated when 128 of 217 passengers and crew members tested positive for the virus.",
        

        "title_es": "Coronavirus en Uruguay | La historia del crucero australiano con covid-19 rechazado por varios países y el 'corredor humanitario' que encontró en Montevideo",
"description_es": "La situación en el barco propiedad de Aurore Expeditions se complicó aún más cuando 128 de 217 pasajeros y miembros de la tripulación dieron positivo por el virus",
"link": "https://www.guatevision.com/internacionales/bbc-news-mundo-internacionales/coronavirus-en-uruguay-la-historia-del-crucero-australiano-con-covid-19-rechazado-por-varios-paises-y-el-corredor-humanitario-que-encontro-en-montevideo?fbclid=IwAR2O4mJtFrnHMZFeminist Statement or AnalysisEYBhAuHBl24cnwQ77Y7lE0HHLbgAC2DSgwszCEm-NsQ",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Uruguay",
      },
      {
        "title_en": "Argentina and Uruguay, the best evaluated in their management of the coronavirus crisis",
        "description_en": "According to a study carried out by the Ipsos pollster, both countries are at the top of the countries that have best responded to the appearance of Covid-19",

        
        "title_es": "Argentina y Uruguay, los mejor evaluados en su manejo de la crisis del coronavirus",
        "description_es": "Según un estudio realizado por el encuestador Ipsos, ambos países están en la cima de los países que mejor han respondido a la aparición de Covid-19",
        "link": "http://enfoquejujuy.com/argentina-y-uruguay-los-mejores-evaluados-en-su-gestion-de-la-crisis-por-el-coronavirus/?fbclid=IwAR10qAsSConVFXaQG1YwsMDVSU-7yIVDNMWVqoFW4erY_OtlnpK6JzJy8bg",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Uruguay",
      },
      {
        "title_en": "Uruguay: the country that was ahead of the coronavirus and is taken as an example",
        "description_en": "Since 2007, Uruguay has carried out the Ceibal Plan, a technology inclusion initiative that was rated 'unique in the world",

        
        "title_es": "Uruguay: el país que estaba por delante del coronavirus y se toma como ejemplo",
        "description_es": "Desde 2007, Uruguay ha llevado a cabo el Plan Ceibal, una iniciativa de inclusión de tecnología que fue calificada como 'única en el mundo",
        "link": "https://www.infobae.com/educacion/2020/04/17/educacion-el-pais-vecino-que-se-adelanto-al-coronavirus-y-es-tomado-como-ejemplo/",
        "progressive": "need to watch",
        "category": "education",
        "type": "policy or law, observed response",
        "country": "Uruguay",
      },
      {
        "title_en": "The Uruguayan Parliament agrees the approval of the 'Coronavirus Fund",
        "description_en": "",
      

        "title_es": "El Parlamento uruguayo acuerda la aprobación del 'Fondo Coronavirus",
"description_es": "",
"link": "https://www.efe.com/efe/america/economia/el-parlamento-uruguayo-acuerda-la-aprobacion-del-fondo-coronavirus/20000011-4212287",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Uruguay",
      },
      {
        "title_en": "Toll-free COVID-19 emotional support line",
        "description_en": "The phone line began operating this week for all those who feel affected by isolation and social distancing and require emotional support",

        
        "title_es": "Línea gratuita de apoyo emocional COVID-19",
        "description_es": "La línea telefónica comenzó a funcionar esta semana para todos aquellos que se sienten afectados por el aislamiento y el distanciamiento social y requieren apoyo emocional",
        "link": "https://www.gub.uy/ministerio-salud-publica/comunicacion/noticias/0800-1920-linea-gratuita-apoyo-emocional-frente-covid-19",
        "progressive": "need to watch",
        "category": "digital surveillance",
        "type": "temporary measure",
        "country": "Uruguay",
      },
      {
        "title_en": "Depression, the other epidemic that Uruguay faces besides the coronavirus",
        "description_en": "The country has one of the highest suicide rates in the region and a general quarantine can have psychological effects on the entire population.",

        
        "title_es": "Depresión, la otra epidemia que enfrenta Uruguay además del coronavirus",
        "description_es": "El país tiene una de las tasas de suicidio más altas de la región y una cuarentena general puede tener efectos psicológicos en toda la población",
        "link": "https://expansion.mx/mundo/2020/03/27/la-depresion-la-otra-epidemia-que-uruguay-enfrenta-ademas-del-coronavirus?fbclid=IwAR2uW7tDHobpi0j3nIOokzOPZzkXuU_xhvzd8ZgulfwlePSAK3u8vMgy9r4",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Uruguay",
      },
      {
        "title_en": "Coronavirus and abortion: the right to termination of pregnancy is not quarantined",
        "description_en": "Health crisis does not stop unwanted pregnancies, but access to abortion rights may be hampered",

        
        "title_es": "Coronavirus y aborto: el derecho a la interrupción del embarazo no está en cuarentena",
        "description_es": "La crisis de salud no detiene los embarazos no deseados, pero el acceso a los derechos de aborto puede verse obstaculizado",
        "link": "https://latfem.org/coronavirus-y-aborto-el-derecho-a-la-interrupcion-del-embarazo-no-esta-en-cuarentena/",
        "progressive": "need to watch",
        "category": "SRHR, healthcare",
        "type": "policy or law, observed response",
        "country": "Argentina",
      },
      {
        "title_en": "14% of those infected with coronavirus in Argentina are health workers",
        "description_en": "Among 14% of infected doctors, 33% have a history of travel or close contact with infected people",


        "title_es": "14% de las personas infectadas con coronavirus en Argentina son trabajadores de la salud",
"description_es": "Entre el 14% de los médicos infectados, el 33% tiene antecedentes de viajes o contacto cercano con personas infectadas",
"link": "https://www.eldestapeweb.com/nota/el-14-de-los-infectados-de-coronavirus-en-argentina-son-trabajadores-de-la-salud-202041710160",
        "progressive": "need to watch",
        "category": "healthcare, gendered health impacts",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title_en": "Coronavirus in Argentina: will students be evaluated while classes are suspended?",
        "description_en": "Some provinces will seek to accompany without putting notes until they return to the classrooms and others will aim to prove the learning",

        
        "title_es": "Coronavirus en Argentina: ¿serán evaluados los estudiantes mientras se suspenden las clases?",
        "description_es": "Algunas provincias buscarán acompañar sin poner notas hasta que regresen a las aulas y otras buscarán demostrar el aprendizaje",
        "link": "https://www.infobae.com/educacion/2020/04/15/coronavirus-en-argentina-los-alumnos-seran-evaluados-mientras-las-clases-esten-suspendidas/",
        "progressive": "need to watch",
        "category": "education",
        "type": "policy or law, observed response",
        "country": "Argentina",
      },
      {
        "title_en": "Emergency family income",
        "description_en": "The bond seeks to alleviate the impact of the health emergency on the economy of the most affected Argentine families.",

        
        "title_es": "Ingresos familiares de emergencia",
        "description_es": "El bono busca aliviar el impacto de la emergencia sanitaria en la economía de las familias argentinas más afectadas",
        "link": "https://www.argentina.gob.ar/economia/medidas-economicas-COVID19/ingresofamiliardeemergencia",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Argentina",
      },
      {
        "title_en": "The request for help due to gender violence in Argentina increased during the COVID19 by 39%",
        "description_en": "",

        
        "title_es": "La solicitud de ayuda por violencia de género en Argentina aumentó durante el COVID19 en un 39%",
        "description_es": "",
        "link": "https://www.onu.org.ar/se-incremento-un-39-el-pedido-de-ayuda-por-violencia-de-genero-en-argentina-durante-el-covid19/",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title_en": "Coronavirus: how is the permit that those over 70 will need to circulate",
        "description_en": "The city government will implement the measure to prevent the highest risk group from leaving their homes.",

        
        "title_es": "Coronavirus: cómo es el permiso para que circulen los mayores de 70 años",
        "description_es": "El gobierno de la ciudad implementará la medida para evitar que el grupo de mayor riesgo salga de sus hogares",
        "link": "https://www.eldestapeweb.com/nota/coronavirus-como-es-el-permiso-que-necesitaran-los-mayores-de-70-anos-para-circular-por-caba-202041621530",
        "progressive": "need to watch",
        "category": "punitive, digital surveillance",
        "type": "policy or law",
        "country": "Argentina",
      },
      {
        "title_en": "Coronavirus in Argentina, Alberto Fernández to some entrepreneurs: 'Boys, it's time to earn less",
        "description_en": "The president stressed that they took a 'series of measures' for companies.",

        
        "title_es": "Coronavirus en Argentina, Alberto Fernández para algunos empresarios: 'Chicos, es hora de ganar menos",
        "description_es": "El presidente hizo hincapié en que tomaron una 'serie de medidas' para las empresas",
        "link": "https://www.clarin.com/politica/coronavirus-argentina-alberto-fernandez-empresarios-muchachos-toco-hora-ganar-_0_GlMd13NhU.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, observed response",
        "country": "Argentina",
      },
      {
        "title_en": "Argentine government economic support package",
        "description_en": "Government has ensured that no essential services be cut for retirees, social welfare recipients and households earning less than a combined 33,750 pesos (about $520) due to a lack of payment",
        
        "title_es": "paquete de apoyo económico del gobierno argentino",
        "description_es": "El gobierno se ha asegurado de que no se reduzcan los servicios esenciales para jubilados, beneficiarios de asistencia social y hogares que ganan menos de 33,750 pesos combinados (alrededor de $ 520) debido a la falta de pago",
        "link": "https://www.boletinoficial.gob.ar/detalleAviso/primera/227120/20200325",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Argentina",
      },
      {
        "title_en": "Crisis lending surges as government obliges banks to assist",
        "description_en": "Credit lending is making a comeback in Argentina as the country seeks to flood its streets with pesos to mitigate the effects of the coronavirus.",
        
        "title_es": "Crisis lending surges as government obliges banks to assist",
        "description_es": "Credit lending is making a comeback in Argentina as the country seeks to flood its streets with pesos to mitigate the effects of the coronavirus.",

        "link": "https://www.batimes.com.ar/news/economy/crisis-lending-surges-as-government-obliges-banks-to-assist.phtml",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law",
        "country": "Argentina",
      },
      {
        "title_en": "Alberto Fernández supported the creation of an extraordinary tax for large fortunes",
        "description_en": "The project, which seeks to generate new resources to cope with the pandemic, runs counter to the one that drives Macrism to lower the high salaries of the 3 branches of the State by 30%.",

        
        "title_es": "Alberto Fernández apoyó la creación de un impuesto extraordinario para grandes fortunas",
        "description_es": "El proyecto, que busca generar nuevos recursos para hacer frente a la pandemia, va en contra del que impulsa al macrismo a reducir los altos salarios de las 3 ramas del Estado en un 30%",
        "link": "https://www.minutouno.com/notas/5093975-alberto-fernandez-apoyo-la-creacion-un-impuesto-extraordinario-las-grandes-fortunas",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Argentina",
      },
      {
        "title_en": "Teleworking barely reaches 3 million workers",
        "description_en": "With the extension of the quarantine, there are several items that are unable to transfer their tasks to the virtual world",

        
        "title_es": "El teletrabajo apenas llega a 3 millones de trabajadores",
        "description_es": "Con la extensión de la cuarentena, hay varios elementos que no pueden transferir sus tareas al mundo virtual",
        "link": "https://www.infobae.com/sociedad/2020/04/15/coronavirus-en-la-argentina-el-teletrabajo-apenas-alcanza-a-3-millones-de-trabajadores/?fbclid=IwAR3hDyJfUsnMUutHwDX02AmogRg8pSxr8FY5-QRpxScientific DataxuLb-xlNNwxCUCz4",
        "progressive": "need to watch",
        "category": "economy, food",
        "type": "policy or law, temporary measure, observed response",
        "country": "Argentina",
      },
      {
        "title_en": "Argentina, the first in the world in proportion of health personnel infected with Covid-19",
        "description_en": "14% of health workers infected in the country",

        
        "title_es": "Argentina, la primera en el mundo en proporción de personal de salud infectado con Covid-19",
        "description_es": "14% de los trabajadores de salud infectados en el país",
        "link": "http://www.laizquierdadiario.com/Argentina-primera-a-nivel-mundial-en-proporcion-de-personal-de-salud-infectado-con-Covid-19",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title_en": "Plan of Action on Coronavirus",
        "description_en": "Citizens guide for general Covid-19 response and government aid",

        
        "title_es": "Plan de acción sobre coronavirus",
        "description_es": "Guía de ciudadanos para la respuesta general de Covid-19 y la ayuda del gobierno",
        "link": "https://www.gob.cl/coronavirus/plandeaccion/",
        "progressive": "progressive",
        "category": "punitive, digital surveillance, healthcare, education, labor, food",
        "type": "policy or law, temporary measure",
        "country": "Chile",
      },
      {
        "title_en": "Chile to issue coronavirus 'immunity' cards for those who recovered from disease",
        "description_en": "Governmetn will soon begin distributing the world's first coronavirus immunity cards to those who have fully recovered from the disease",

        
        "title_es": "Chile emitirá tarjetas de inmunidad al coronavirus para quienes se recuperaron de la enfermedad",
        "description_es": "Governmetn pronto comenzará a distribuir las primeras tarjetas de inmunidad de coronavirus del mundo a aquellos que se hayan recuperado completamente de la enfermedad",
        "link": "https://www.nydailynews.com/coronavirus/ny-coronavirus-chile-to-give-out-immunity-cards-20200417-cjzrktfhqvezti5nay6vxqxl4m-story.html?fbclid=IwAR05wU2i7ggkLviOJ15E9observed responsezf4owDEwt9loIs3fiXr-digital surveillanceci6GViOtQMS6vQ",
        "progressive": "need to watch",
        "category": "digital surveillance, healthcare",
        "type": "policy or law",
        "country": "Chile",
      },
      {
        "title_en": "In Chile, education in times of the coronavirus will be by open television signal",
        "description_en": "",

        
        "title_es": "En Chile, la educación en tiempos del coronavirus será por señal de televisión abierta",
        "description_es": "",
        "link": "https://www.eluniverso.com/noticias/2020/04/14/nota/7813446/chile-educacion-tiempos-coronavirus-sera-senal-abierta-television",
        "progressive": "progressive",
        "category": "education",
        "type": "policy or law, temporary measure",
        "country": "Chile",
      },
      {
        "title_en": "Chilean economy will fall 2% in 2020 due to coronavirus",
        "description_en": "The Chilean economy will fall 2% in 2020 affected by the coronavirus pandemic, which will force higher public spending and drive a fiscal deficit of 8% GDP",

        
        "title_es": "La economía chilena caerá un 2% en 2020 debido al coronavirus",
        "description_es": "La economía chilena caerá un 2% en 2020 afectada por la pandemia de coronavirus, lo que obligará a un mayor gasto público y generará un déficit fiscal del 8% del PIB",
        "link": "https://www.infobae.com/america/agencias/2020/04/17/economia-chilena-caera-2-en-2020-golpeada-por-coronavirus-gobierno/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title_en": "Coronavirus in Chile: reports on gender violence increase 70%",
        "description_en": "",

        
        "title_es": "Coronavirus en Chile: informes sobre violencia de género aumentan 70%",
        "description_es": "",
        "link": "https://www.nodal.am/2020/04/chile-aumentan-70-las-denuncias-por-violencia-de-genero-durante-la-emergencia-sanitaria/",
        "progressive": "need to watch",
        "category": "punitive, gender-based violence",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title_en": "Migrants are trapped at the Chilean border due to coronavirus restrictions",
        "description_en": "A thousand migrants, mainly Bolivians, are stranded in northern Chile after the sources of work in the country are exhausted and they cannot return to their homes due to the territorial closure",

        
        "title_es": "Los migrantes están atrapados en la frontera chilena debido a restricciones de coronavirus",
        "description_es": "Un millar de migrantes, principalmente bolivianos, están varados en el norte de Chile después de que se agotaron las fuentes de trabajo en el país y no pueden regresar a sus hogares debido al cierre territorial",
        "link": "https://translate.google.com/translate?hl=en&sl=es&u=https://lta.reuters.com/articulo/salud-coronavirus-chile-migrantes-idLTAKBN21Y3CT&prev=search",
        "progressive": "need to watch",
        "category": "economy, labor, disability, race",
        "type": "temporary measure, observed response",
        "country": "Chile",
      },
      {
        "title_en": "Main group of those infected in Chile is between 30 and 44 years old",
        "description_en": "",

        
        "title_es": "El grupo principal de personas infectadas en Chile tiene entre 30 y 44 años",
        "description_es": "",
        "link": "https://www.meganoticias.cl/nacional/298007-informe-epidemiologico-coronavirus-covid19-edad-contagiados-region-comuna.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title_en": "Bolivia approves electric anklets to control covid-19 suspects",
        "description_en": "The use of 500 electric anklets that have a chip has been arranged to track possible infected covid-19",

        
        "title_es": "Bolivia aprueba tobilleras eléctricas para controlar a los sospechosos de covid-19",
        "description_es": "Se ha dispuesto el uso de 500 tobilleras eléctricas que tienen un chip para rastrear posibles covid-19 infectados",
        "link": "https://andina.pe/agencia/noticia-bolivia-aprueba-tobilleras-electricas-para-controlar-sospechosos-covid19-792388.aspx?fbclid=IwAR1JcQCWXTAhJhwrMF-sBhq5tZYw5KSpQbJNO6LkHaFWkN63fCbZZRJ_dY0",
        "progressive": "need to watch",
        "category": "punitive, digital surveillance",
        "type": "policy or law, observed response",
        "country": "Bolivia",
      },
      {
        "title_en": "Bolivia requests $ 320 million from the IMF to address the coronavirus pandemic",
        "description_en": "Part of the financing would be used to pay the Universal Bond, which consists of granting 500 bolivianos (about $ 72) to four million people without income.",

        
        "title_es": "Bolivia solicita $ 320 millones al FMI para abordar la pandemia de coronavirus",
        "description_es": "Parte del financiamiento se usaría para pagar el Bono Universal, que consiste en otorgar 500 bolivianos (aproximadamente $ 72) a cuatro millones de personas sin ingresos",
        "link": "https://actualidad.rt.com/actualidad/350223-bolivia-solicitar-fmi-millones-bonos-coronavirus?fbclid=IwAR1SU6U78-JaLCAlI8lddqv23fwPNGIHBC_RYAl_r66ENVCjOe4k0lNKXfk",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure, observed response",
        "country": "Bolivia",
      },
      {
        "title_en": "Quarantine: 33 minors were raped and more than 1,200 women were victims of violence",
        "description_en": "",

        
        "title_es": "Cuarentena: 33 menores fueron violadas y más de 1.200 mujeres fueron víctimas de violencia",
        "description_es": "",
        "link": "https://www.atb.com.bo/seguridad/cuarentena-33-menores-fueron-violadas-y-m%C3%policy or laws-de-1200-mujeres-fueron-v%C3%ADctimas-de-violencia?fbclid=IwAR12bUpq0lDAj0CO4cdbX45kywVF5Z8Ml5RaYC09s2QAoVuHTusw-R_mlIk",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Bolivia",
      },
      {
        "title_en": "Bolivia will distribute up to USD 500 million in bonds for COVID-19",
        "description_en": "The aid impact low-income groups",

        
        "title_es": "Bolivia distribuirá hasta USD 500 millones en bonos para COVID-19",
        "description_es": "La ayuda afecta a los grupos de bajos ingresos",
        "link": "https://www.dw.com/es/bolivia-repartir%C3%policy or law-hasta-usd-500-millones-en-bonos-por-covid-19/a-53141621",
        "progressive": "progressive",
        "category": "economy, disability",
        "type": "policy or law",
        "country": "Bolivia",
      },
      {
        "title_en": "Bolivia: Ex-president to donate salary amid virus",
        "description_en": "Evo Morales previously urged public officials who earn over $1,020 to donate their salaries to fight coronavirus pandemic",

        
        "title_es": "Bolivia: ex presidente donará salario en medio del virus",
        "description_es": "Evo Morales instó previamente a los funcionarios públicos que ganan más de $ 1,020 a donar sus salarios para combatir la pandemia de coronavirus",
        "link": "https://www.aa.com.tr/en/americas/bolivia-ex-president-to-donate-salary-amid-virus/1804629?fbclid=IwAR3XKckQPsKy1fN5oLAqfHWnStyftmrjgDfu03GMuCj4Xk33C6ElG9FScientific DataFk",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Bolivia",
      },
      {
        "title_en": "Coronavirus leaves Bolivia's elections uncertain",
        "description_en": "",

        
        "title_es": "El coronavirus deja inciertas las elecciones bolivianas",
        "description_es": "",
        "link": "https://www.sandiegouniontribune.com/en-espanol/noticias/story/2020-04-08/coronavirus-deja-en-incertidumbre-elecciones-en-bolivia",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Bolivia",
      },
      {
        "title_en": "Crackdown on feminist rallies and harrassment of former political prisoners",
        "description_en": "Details cases of harrassment in March, part of continued state repression, while COVID responses emerging",

        
        "title_es": "Represión de manifestaciones feministas y hostigamiento de ex presas políticas",
        "description_es": "Detalla los casos de acoso en marzo, parte de la represión estatal continua, mientras surgen respuestas COVID",
        "link": "https://monitor.civicus.org/updates/2020/04/08/crackdown-feminist-rallies-and-harassment-former-political-prisoners-nicaragua/",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Nicaragua",
      },
      {
        "title_en": "El Salvador's Response To Covid-19 Excessively Restricts Fundamental Rights, Say CSOs",
        "description_en": "Details online harrassment of human rights and feminist activists, government criticism, and censoring of journalists",
        
        "title_es": "El Salvador's Response To Covid-19 Excessively Restricts Fundamental Rights, Say CSOs",
        "description_es": "Details online harrassment of human rights and feminist activists, government criticism, and censoring of journalists",

        "link": "https://monitor.civicus.org/updates/2020/04/07/el-salvadors-response-covid-19-has-excessively-restricted-fundamental-rights-say-csos/",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "El Salvador",
      },
      {
        "title_en": "Victim Protection is Expanded During Coronavirus",
        "description_en": "Expansion of support for HelpChat hotline for women and girls experiencing psychological, physical, and/sexual violence",

        
        "title_es": "La protección de la víctima se expande durante el coronavirus",
        "description_es": "Expansión del apoyo a la línea de ayuda de HelpChat para mujeres y niñas que sufren violencia psicológica, física y / o sexual",
        "link": "https://www.frauenring.at/opferschutz-corona-krise-ausgebaut",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Austria",
      },
      {
        "title_en": "Bangladesh Sends food Aid to Brothels as Women Fight to Survive Lockdown",
        "description_en": "Brief ddescription of food aid program within context of sex-work industry shut down, worker conditions",

        
        "title_es": "Bangladesh envía ayuda alimentaria a los burdeles mientras las mujeres luchan para sobrevivir el encierro",
        "description_es": "Breve descripción del programa de ayuda alimentaria en el contexto del cierre de la industria del trabajo sexual, las condiciones de los trabajadores",
        "link": "https://www.theguardian.com/Global-development/2020/apr/06/bangladesh-sends-food-aid-to-sex-workers-as-industry-goes-into-lockdown",
        "progressive": "need to watch",
        "category": "food",
        "type": "temporary measure",
        "country": "Bangladesh",
      },
      {
        "title_en": "Women Mobilize to Prevent COVID-19 in Crowded Rohingya Refugee Camps",
        "description_en": "Rohingya women leaders self-mobilized, forming networks and raising awareness on COVID-19 across all camps",

        
        "title_es": "Las mujeres se movilizan para prevenir COVID-19 en campamentos de refugiados rohingya llenos de gente",
        "description_es": "Las mujeres líderes rohingya se auto movilizaron, formaron redes y crearon conciencia sobre COVID-19 en todos los campamentos",
        "link": "https://reliefweb.int/report/bangladesh/women-mobilize-prevent-covid-19-crowded-rohingya-refugee-camps",
        "progressive": "progressive",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "observed response",
        "country": "Bangladesh",
      },
      {
        "title_en": "#StayInYourTent: COVID-19 protective measures reach Sahara Desert",
        "description_en": "Sahrawi people are fighting with all their resources against the spread of the virus",

        
        "title_es": "#StayInYourTent: las medidas de protección de COVID-19 llegan al desierto del Sahara",
        "description_es": "El pueblo saharaui está luchando con todos sus recursos contra la propagación del virus",
        "link": "https://www.euronews.com/2020/04/10/stayinyourtent-covid-19-protective-measures-reach-sahara-desert",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Algeria",
      },
      {
        "title_en": "Algeria's main lab anchors COVID-19 response",
        "description_en": "Integrety and speed of COVID-19 testing has improved in Algeria's main lab",

        
        "title_es": "El laboratorio principal de Argelia ancla la respuesta COVID-19",
        "description_es": "La integridad y la velocidad de las pruebas COVID-19 han mejorado en el laboratorio principal de Argelia",
        "link": "https://www.afro.who.int/news/algerias-main-lab-anchors-covid-19-response",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "Algeria",
      },
      {
        "title_en": "Bahrain launches electronic bracelets to keep track of active COVID-19 cases",
        "description_en": "The Kingdom of Bahrain is keeping track of its active cases of COVID-19 via electronic bracelets.",

        
        "title_es": "Bahrein lanza pulseras electrónicas para realizar un seguimiento de los casos activos de COVID-19",
        "description_es": "El Reino de Bahrein realiza un seguimiento de sus casos activos de COVID-19 a través de pulseras electrónicas",
        "link": "https://www.mobihealthnews.com/news/europe/bahrain-launches-electronic-bracelets-keep-track-active-covid-19-cases",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare",
        "type": "policy or law, temporary measure",
        "country": "Bahrain",
      },
      {
        "title_en": "Government and institution measures in response to COVID-19.",
        "description_en": "Bahrain has one of the highest testing rates per capita on the planet, obtaining the acknowledgment of the World Health Organization for its professional reaction",
        
        "title_es": "Medidas gubernamentales e institucionales en respuesta a COVID-19",
        "description_es": "Bahrein tiene una de las tasas de prueba per cápita más altas del planeta, obteniendo el reconocimiento de la Organización Mundial de la Salud por su reacción profesional",
        "link": "https://home.kpmg/xx/en/home/insights/2020/04/bahrain-government-and-institution-measures-in-response-to-covid.html",
        "progressive": "progressive",
        "category": "healthcare, economy, labor, food",
        "type": "policy or law, temporary measure",
        "country": "Bahrain",
      },
      {
        "title_en": "Egypt's health sector races to scale up coronavirus readiness",
        "description_en": "Egypt ordred manufacturers to channel medical protective equipment to public hospitals and announcing 1 billion Egyptian pounds",

        
        "title_es": "El sector de la salud de Egipto se apresura a ampliar la preparación para el coronavirus",
        "description_es": "Egipto ordenó a los fabricantes que canalizaran equipos de protección médica a hospitales públicos y anunciaran mil millones de libras egipcias",
        "link": "https://nationalpost.com/pmn/health-pmn/egypts-health-sector-races-to-scale-up-coronavirus-readiness",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "policy or law",
        "country": "Egypt",
      },
      {
        "title_en": "Launch of Phone Number during COVID-19",
        "description_en": "without strong action by governments and mass media campaigns, we can expect an increase in the number of domestic workers forced to work",

        
        "title_es": "Lanzamiento del número de teléfono durante COVID-19",
        "description_es": "sin una fuerte acción de los gobiernos y las campañas de los medios de comunicación, podemos esperar un aumento en el número de trabajadoras domésticas obligadas a trabajar",
        "link": "https://www.hrw.org/news/2020/04/06/domestic-workers-middle-east-risk-abuse-amid-covid-19-crisis",
        "progressive": "need to watch",
        "category": "healthcare, labor, race",
        "type": "observed response",
        "country": "Middle East and North Africa",
      },
      {
        "title_en": "What Being on the Frontlines of Fighting for Gender Equality in Iraq Is Like During COVID-19",
        "description_en": "The effect of COVID-19 on displaced women in the Kordistan region of Iraq",

        
        "title_es": "Cómo es estar en la primera línea de la lucha por la igualdad de género en Iraq durante COVID-19",
        "description_es": "El efecto de COVID-19 en las mujeres desplazadas en la región de Kordistan en Iraq",
        "link": "https://www.Globalcitizen.org/en/content/covid-19-womens-empowerment-iraq-syrian-conflict/",
        "progressive": "need to watch",
        "category": "education, economy, childcare, labor, race",
        "type": "observed response",
        "country": "Iraq",
      },
      {
        "title_en": "Launch of Phone Number during covid",
        "description_en": "To report Domestic Violences cases during Lockdown",
        
        "title_es": "Lanzamiento del número de teléfono durante covid",
        "description_es": "Para denunciar casos de violencia doméstica durante el bloqueo",
        "link": "http://ncw.nic.in/",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "",
        "country": "India",
      },
      {
        "title_en": "App for Covid-19",
        "description_en": "Government of India has launched Aarogya Setu app to take self assessment test, how to maintain social distancing, all information about Covid-19, to get all information about e-pass to be used only for the purpose of supplying essentials and also provides all updates of COVID-19",

        
        "title_es": "Aplicación para Covid-19",
        "description_es": "El Gobierno de la India lanzó la aplicación Aarogya Setu para realizar una prueba de autoevaluación, cómo mantener el distanciamiento social, toda la información sobre Covid-19, para obtener toda la información sobre el e-pass para ser utilizada únicamente con el fin de suministrar lo esencial y también proporciona todas las actualizaciones de COVID-19 ",
        "link": "https://www.mygov.in/aarogya-setu-app/",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare, education",
        "type": "",
        "country": "India",
      },
      {
        "title_en": "With weekend lockdowns and age-specific restrictions, Turkey takes a different coronavirus approach",
        "description_en": "Details Turkey's lockdown process and challenges with testing and underreporting",

        
        "title_es": "Con bloqueos de fin de semana y restricciones específicas por edad, Turquía adopta un enfoque diferente de coronavirus",
        "description_es": "Detalla el proceso de cierre de Turquía y los desafíos con las pruebas y el subregistro",
        "link": "https://www.cnn.com/2020/04/17/europe/turkey-coronavirus-lockdown-response-intl/index.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Turkey",
      },
      {
        "title_en": "Turkey's Coronavirus Crisis Grows as Infections Exceed China's",
        "description_en": "Turkey has struggled to contain virus amid economic challenges and a botched curfew",

        
        "title_es": "La crisis del coronavirus de Turquía crece a medida que las infecciones superan a las de China",
        "description_es": "Turquía ha luchado por contener virus en medio de desafíos económicos y un toque de queda fallido",
        "link": "https://foreignpolicy.com/2020/04/20/turkeys-coronavirus-crisis-grows-as-infections-exceed-chinas/",
        "progressive": "need to watch",
        "category": "digital surveillance, healthcare, economy",
        "type": "observed response",
        "country": "Turkey",
      },
      {
        "title_en": "The Coronavirus Will Destroy Turkey's economy",
        "description_en": "COVID is exacerbating macroeconomic crisis in Turkey; the government is not prepared and has few resources left",

        
        "title_es": "El coronavirus destruirá la economía de Turquía",
        "description_es": "COVID está exacerbando la crisis macroeconómica en Turquía; el gobierno no está preparado y le quedan pocos recursos",
        "link": "https://foreignpolicy.com/2020/04/08/the-coronavirus-will-destroy-turkeys-economy/",
        "progressive": "regressive, need to watch",
        "category": "healthcare, economy, labor",
        "type": "policy or law, observed response",
        "country": "Turkey",
      },
      {
        "title_en": "Brother Tayyip's Soup Kitchen",
        "description_en": "Details how pandemic response is hampered by AKP's unwillingness to work with CHP mayors",

        
        "title_es": "Cocina de sopa del hermano Tayyip",
        "description_es": "Detalla cómo la respuesta pandémica se ve obstaculizada por la falta de voluntad de AKP para trabajar con los alcaldes de CHP",
        "link": "https://foreignpolicy.com/2020/04/17/erdogan-turkey-coronavirus-relief-politics-akp-chp-brother-tayyip-soup-kitchen/",
        "progressive": "regressive",
        "category": "punitive, digital surveillance, healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Turkey",
      },
      {
        "title_en": "Turkey Releases Refugees from Quarantine Amid Coronavirus Lockdown",
        "description_en": "Turkey is releasing refugees from quarantine in the middle of lockdown, with minimal resources",

        
        "title_es": "Turquía libera a los refugiados de la cuarentena en medio del bloqueo del coronavirus",
        "description_es": "Turquía está liberando a los refugiados de la cuarentena en medio del cierre, con recursos mínimos",
        "link": "https://www.voanews.com/europe/turkey-releases-refugees-quarantine-amid-coronavirus-lockdown",
        "progressive": "regressive",
        "category": "healthcare, labor",
        "type": "temporary measure",
        "country": "Turkey",
      },
      {
        "title_en": "Domestic violence rises in Turkey during COVID-19 pandemic",
        "description_en": "Details rise in domestic violence in lockdown and failure of government to respond",

        
        "title_es": "La violencia doméstica aumenta en Turquía durante la pandemia de COVID-19",
        "description_es": "Los detalles aumentan la violencia doméstica en el cierre patronal y la falta de respuesta del gobierno",
        "link": "https://www.dw.com/en/domestic-violence-rises-in-turkey-during-covid-19-pandemic/a-53082333",
        "progressive": "regressive",
        "category": "SRHR, gender-based violence",
        "type": "observed response",
        "country": "Turkey",
      },
      {
        "title_en": "Turkey Seeks Power to Control Social Media",
        "description_en": "Further social media censorship authorities proposed in COVID-19 bill",

        
        "title_es": "Turquía busca poder para controlar las redes sociales",
        "description_es": "Se propusieron más autoridades de censura de redes sociales en el proyecto de ley COVID-19",
        "link": "https://www.hrw.org/news/2020/04/13/turkey-seeks-power-control-social-media",
        "progressive": "regressive",
        "category": "digital surveillance",
        "type": "policy or law, temporary measure",
        "country": "Turkey",
      },
      {
        "title_en": "Turkey to free one-third of its prisoners to curb coronavirus",
        "description_en": "Turkey frees prisoners to protect them from virus's spread, but excludes government opponents imprisoned on terrorism charges",

        
        "title_es": "Turquía liberará a un tercio de sus prisioneros para frenar el coronavirus",
        "description_es": "Turquía libera a los prisioneros para protegerlos de la propagación del virus, pero excluye a los opositores del gobierno encarcelados por cargos de terrorismo",
        "link": "https://www.aljazeera.com/news/2020/04/turkey-free-prisoners-curb-coronavirus-200414062852220.html",
        "progressive": "regressive",
        "category": "healthcare, labor",
        "type": "temporary measure",
        "country": "Turkey",
      },
      {
        "title_en": "COVID-19 preparedness an dresponse for NW-Syria",
        "description_en": "Outlines WHO and humanitarian efforts to response to pandemic in NW Syria",

        
        "title_es": "preparación de COVID-19 una respuesta para el NO-Siria",
        "description_es": "Describe los esfuerzos humanitarios y de la OMS para responder a la pandemia en el noroeste de Siria",
        "link": "https://reliefweb.int/sites/reliefweb.int/files/resources/health_task_force_nws_covid-19_sitrep_-_1_april_2020.pdf",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Syria",
      },
      {
        "title_en": "Syria's civil war will make fighting coronavirus particularly difficult",
        "description_en": "Details steps regime has taken and challenges of response in opposition-held areas and among displaced populations",

        
        "title_es": "La guerra civil de Siria hará que la lucha contra el coronavirus sea particularmente difícil",
        "description_es": "Detalla los pasos que ha tomado el régimen y los desafíos de la respuesta en las áreas controladas por la oposición y entre las poblaciones desplazadas",
        "link": "https://www.washingtonpost.com/politics/2020/04/02/syrias-civil-war-will-make-fighting-coronavirus-particularly-difficult/",
        "progressive": "need to watch",
        "category": "healthcare, labor",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title_en": "Syria, insisting it is coronavirus-free, takes broad steps to prevent spread",
        "description_en": "Syrian government likely covering up cases to suppress COVID-19 numbers",

        
        "title_es": "Siria, al insistir en que no contiene coronavirus, toma medidas amplias para evitar la propagación",
        "description_es": "Es probable que el gobierno sirio encubra casos para suprimir los números COVID-19",
        "link": "https://www.reuters.com/article/us-health-coronavirus-syria-idUSKBN2110SA",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title_en": "Syria Acknowledges One Coronavirus Case",
        "description_en": "Regime insisting numbers are low but shutting down intercity travel, closed borders, and closed newspaper printing",

        
        "title_es": "Siria reconoce un caso de coronavirus",
        "description_es": "Los números que insisten en el régimen son bajos pero cierran los viajes interurbanos, las fronteras cerradas y la impresión de periódicos cerrados",
        "link": "https://www.voanews.com/science-health/coronavirus-outbreak/syria-acknowledges-one-coronavirus-case",
        "progressive": "regressive",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title_en": "Syria has confirmed its first cases of coronavirus. An outbreak there would be hell.",
        "description_en": "Regime implemented curfew, closed businesses, launched disinfection campaign, but health system severely weakened",

        
        "title_es": "Siria ha confirmado sus primeros casos de coronavirus. Un brote allí sería el infierno",
        "description_es": "El régimen implementó el toque de queda, cerró negocios, lanzó una campaña de desinfección, pero el sistema de salud se debilitó severamente",
        "link": "https://www.vox.com/world/2020/3/27/21195860/coronavirus-syria-idlib-covid-19-cases-outbreak-middle-east",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title_en": "Syrian camps brace for potential COVID-19 outbreak",
        "description_en": "Outlines opposition response in NW Syria and challenges of preventing spread in camps",

        
        "title_es": "Los campamentos sirios se preparan para un posible brote de COVID-19",
        "description_es": "Describe la respuesta de la oposición en el noroeste de Siria y los desafíos de prevenir la propagación en los campamentos",
        "link": "https://www.al-monitor.com/pulse/originals/2020/04/syria-displaced-camps-aleppo-coronavirus-medical.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title_en": "W.H.O. Failed to Tell Syrian Kurds of Their First Coronavirus Death: Live Coverage",
        "description_en": "Regime failed to share key infection information with Kurdish authorities in NE Syria",

        
        "title_es": "W.H.O. no pudo informar a los kurdos sirios de su primera muerte por coronavirus: cobertura en vivo",
        "description_es": "El régimen no pudo compartir información clave sobre la infección con las autoridades kurdas en el noreste de Siria",
        "link": "https://www.nytimes.com/2020/04/17/world/coronavirus-news-updates.html",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "Syria",
      },
      {
        "title_en": "COVID-19 Impact on Refugees is Also Political",
        "description_en": "Governments are either covering up spread of COVID-19 or failing to respond",

        
        "title_es": "El impacto de COVID-19 en los refugiados también es político",
        "description_es": "Los gobiernos están encubriendo la propagación de COVID-19 o no responden",
        "link": "https://www.chathamhouse.org/expert/comment/covid-19-impact-refugees-also-political",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Syria, Lebanon",
      },
      {
        "title_en": "When Health Care Is Decimated By War: COVID-19 in the Middle East and North Africa",
        "description_en": "Interview on the response of response of MENA governments to pandemic and need for a rights-based approach",

        
        "title_es": "Cuando la atención médica es diezmada por la guerra: COVID-19 en el Medio Oriente y África del Norte",
        "description_es": "Entrevista sobre la respuesta de la respuesta de los gobiernos de MENA a la pandemia y la necesidad de un enfoque basado en los derechos",
        "link": "https://www.hrw.org/news/2020/04/16/when-health-care-decimated-war-covid-19-middle-east-and-north-africa",
        "progressive": "regressive",
        "category": "digital surveillance, healthcare",
        "type": "temporary measure, observed response",
        "country": "Middle East and North Africa",
      },
      {
        "title_en": "Coronavirus pandemic threatens crises-ravaged communities, UN appeals for Global support",
        "description_en": "As governments implement lockdowns and movement restrictions, GBV is increasing",

        
        "title_es": "La pandemia de coronavirus amenaza a las comunidades devastadas por la crisis, las Naciones Unidas solicitan apoyo mundial",
        "description_es": "A medida que los gobiernos implementan bloqueos y restricciones de movimiento, la violencia de género está aumentando",
        "link": "https://news.un.org/en/story/2020/04/1061922",
        "progressive": "regressive",
        "category": "SRHR, gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Global, Jordan",
      },
      {
        "title_en": "COVID-19: Africa told to prepare for worst. What's the response?",
        "description_en": "Details steps being taken by governments across Africa to limit spread and restrict movement",

        
        "title_es": "COVID-19: África dijo que se preparara para lo peor. ¿Cuál es la respuesta?",
        "description_es": "Detalla los pasos que están tomando los gobiernos de África para limitar la propagación y restringir el movimiento",
        "link": "https://www.aljazeera.com/news/2020/03/covid-19-africa-told-prepare-worst-response-200319085112877.html",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title_en": "African Government Responses to COVID-19",
        "description_en": "Details 28 declarations of a state of emergency, national health emergency or national disaster in 37 countries in Africa",

        
        "title_es": "Respuestas del gobierno africano a COVID-19",
        "description_es": "Detalla 28 declaraciones de estado de emergencia, emergencia sanitaria nacional o desastre nacional en 37 países de África",
        "link": "https://www.icnl.org/post/analysis/african-government-response-to-covid-19",
        "progressive": "regressive",
        "category": "punitive, digital surveillance, healthcare, economy, labor",
        "type": "policy or law, temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title_en": "East Africa regional body rolls out mobile Covid-19 testing centres",
        "description_en": "Tanzania deploying mobile laboratories and testing kits in 4x4 vehicles",

        
        "title_es": "El organismo regional de África Oriental lanza centros de pruebas móviles Covid-19",
        "description_es": "Tanzania implementando laboratorios móviles y kits de prueba en vehículos 4x4",
        "link": "http://www.rfi.fr/en/international/20200326-east-africa-regional-body-rolls-out-mobile-covid-19-testing-centres",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title_en": "The Economic Impact of COVID-19 in Africa: A Round-Up of This Week's Analysis",
        "description_en": "Details effects of lockdowns on economy and supply chains",
        
        "title_es": "El impacto económico de COVID-19 en África: un resumen del análisis de esta semana",
        "description_es": "Detalla los efectos de los bloqueos en la economía y las cadenas de suministro",
        "link": "https://www.cgdev.org/blog/economic-impact-covid-19-africa-weeks-latest-analysis",
        "progressive": "need to watch",
        "category": "healthcare, economy, food",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title_en": "Africa in the news: COVID-19 impacts African economies and daily lives; clashes in the Sahel",
        "description_en": "Details macroeconomic steps being taken in Africa and consequences of pandemic for electoral systems",

        
        "title_es": "África en las noticias: COVID-19 impacta las economías africanas y la vida cotidiana; enfrentamientos en el Sahel",
        "description_es": "Detalla los pasos macroeconómicos que se están tomando en África y las consecuencias de la pandemia para los sistemas electorales",
        "link": "https://www.brookings.edu/blog/africa-in-focus/2020/04/11/africa-in-the-news-covid-19-impacts-african-economies-and-daily-lives-clashes-in-the-sahel/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title_en": "Africa turns to mobile payments as a tool to curb COVID-19",
        "description_en": "Governments and startups are shifting transactions toward mobile money and away from cash to limit virus's spread",

        
        "title_es": "África recurre a los pagos móviles como una herramienta para frenar COVID-19",
        "description_es": "Los gobiernos y las nuevas empresas están cambiando las transacciones hacia el dinero móvil y lejos del efectivo para limitar la propagación del virus",
        "link": "https://techcrunch.com/2020/03/25/african-turns-to-mobile-payments-as-a-tool-to-curb-covid-19/",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title_en": "Rwanda's successes and challenges in response to COVID-19",
        "description_en": "Details how Rwandan government has implemented lockdown measures",

        
        "title_es": "Los éxitos y desafíos de Ruanda en respuesta a COVID-19",
        "description_es": "Detalla cómo el gobierno de Ruanda ha implementado medidas de bloqueo",
        "link": "https://www.atlanticcouncil.org/blogs/africasource/rwandas-successes-and-challenges-in-response-to-covid-19/",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Rwanda",
      },
      {
        "title_en": "Tanzania's mild response to COVID-19 and its implications for the 2020 elections",
        "description_en": "Details concerns that Tanzanian President using virus to extend rule, push back elections",

        
        "title_es": "La leve respuesta de Tanzania al COVID-19 y sus implicaciones para las elecciones de 2020",
        "description_es": "Detalles preocupa que el presidente de Tanzania use virus para extender la regla, retrasar las elecciones",
        "link": "https://www.atlanticcouncil.org/blogs/africasource/tanzanias-mild-response-to-covid-19-and-its-implications-for-the-2020-elections/",
        "progressive": "regressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Tanzania",
      },
      {
        "title_en": "Tackling COVID-19 in Africa",
        "description_en": "Details potential economic impacts of crisis across Africa and ways governments should respond",

        
        "title_es": "Abordar COVID-19 en África",
        "description_es": "Detalla los posibles impactos económicos de la crisis en África y las formas en que los gobiernos deberían responder",
        "link": "https://www.mckinsey.com/featured-insights/middle-east-and-africa/tackling-covid-19-in-africa",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title_en": "In the Face of Coronavirus, African Countries Apply Lessons from Ebola Response",
        "description_en": "Countries using advanced disease surveillance developed during Ebola outbreak to limit virus's spread",

        
        "title_es": "Ante el coronavirus, los países africanos aplican las lecciones de la respuesta al ébola",
        "description_es": "Los países que utilizan vigilancia avanzada de enfermedades se desarrollaron durante el brote de Ébola para limitar la propagación del virus",
        "link": "https://www.worldbank.org/en/news/feature/2020/04/03/in-the-face-of-coronavirus-african-countries-apply-lessons-from-ebola-response",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
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

    puts "/n/n/n/n ✅ ✅ ✅ ✅   response data is alive ✅ ✅ ✅ ✅ "

}

online_data = [
    {
        "title_en": "Webinar: Organizing Virtual Meetings Episode 1: planning & content",
        "description_en": "Webinar on accessibility & planning content for virtual meetings in the time of COVID-19.",

        
        "title_es": "Seminario web: Organización de reuniones virtuales Episodio 1: planificación y contenido",
        "description_es": "Seminario web sobre accesibilidad y contenido de planificación para reuniones virtuales en la época de COVID-19",
        "link": "https://www.youtube.com/watch?v=beiWoi3I7_E&t=190s",
        "country": "Global",
        "month": "3",
        "year": "2020",
        "category": "disability"
    },
    {
        "title_en": "Webinar: Organizing Virtual Meetings Episode 2: ",
        "description_en": "Webinar on nuts & bolts of Zoom for virtual meetings in the time of COVID-19.",

        
        "title_es": "Seminario web: Organización de reuniones virtuales Episodio 2:",
        "description_es": "Seminario web sobre detalles básicos de Zoom para reuniones virtuales en la época de COVID-19",
        "link": "https://www.youtube.com/watch?v=Jidn0_1oQyE&t=4s",
        "country": "Global",
        "month": "3",
        "year": "2020",
        "category": "misinformation"
    },
    {
        "title_en": "Webinar: Caring for Our Communities: COVID-19 and our Health,\nConnections to Climate Preparedness, and Systemic Change",
        "description_en": "Frontline women practitioners and advocates share best practices for caring for ourselves and communities, and provide political and cultural analysis to the COVID-19 pandemic. Presenters discuss vulnerabilities in our diverse communities, and how we can work to support each other in the coming months. Speakers include Rupa Marya, MD, Associate Professor of Medicine at UCSF; Linda Black Elk (Catawba Nation), Director of Food Sovereignty Programs at United Tribes Technical College; Jacqui Patterson, Director of the NAACP Environmental and Climate Justice Program; in conversation with Osprey Orielle Lake, Executive Director of WECAN International.",

        
        "title_es": "Seminario web: Cuidando a nuestras comunidades: COVID-19 y nuestra salud, \ nConexiones a la preparación climática y al cambio sistémico",
        "description_es": "Las mujeres profesionales y defensoras de primera línea comparten las mejores prácticas para cuidar de nosotras mismas y de las comunidades, y brindan análisis político y cultural a la pandemia de COVID-19. Los presentadores discuten vulnerabilidades en nuestras diversas comunidades y cómo podemos trabajar para apoyarnos mutuamente en los próximos meses, los oradores incluyen a Rupa Marya, MD, profesora asociada de medicina en la UCSF; Linda Black Elk (nación Catawba), directora de programas de soberanía alimentaria en el United Tribes Technical College; Jacqui Patterson, directora del programa de justicia ambiental y climática NAACP ; en conversación con Osprey Orielle Lake, Director Ejecutivo de WECAN International ",
        "link": "https://www.youtube.com/watch?v=OdtCyeZHh2E&feature=youtu.be",
        "country": "United States",
        "year": "2020",
        "category": "healthcare, misinformation"
    },
    {
        "title_en": "Teach-In: Movement Building in the Time of the Covid-19 Crisis",
        "description_en": "A teach-in by The Rising Majority, supported by the Working Families Party, providing a left feminist perspective on 21st century racial capitalism in this moment. Featured speakers Angela Y. Davis—feminist, abolitionist, scholar, and activist, and Naomi Klein—author and activist, with Thenjiwe McHarris (BlackBird), Maurice Mitchell (Executive Director, Working Families Party), Cindy Wiesner (Director of Grassroots Global Justice), and Loan Tran (Co-Executive Director of Southern Visions Collective). ",

        
        "title_es": "Teach-In: construcción del movimiento en tiempos de la crisis de Covid-19",
        "description_es": "Una enseñanza de The Rising Majority, apoyada por el Working Families Party, que proporciona una perspectiva feminista de izquierda sobre el capitalismo racial del siglo XXI en este momento. Oradores destacados Angela Y. Davis: feminista, abolicionista, académica y activista y Naomi Klein, autora y activista, con Thenjiwe McHarris (BlackBird), Maurice Mitchell (Director Ejecutivo, Working Families Party), Cindy Wiesner (Director de Grassroots Global Justice) y Loan Tran (Co-Director Ejecutivo del Southern Visions Collective) ",
        "link": "https://therisingmajority.com/events/movement-building/",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "healthcare, education, childcare, labor, gendered health impacts, gender-based violence, race, misinformation"
    },
    {
        "title_en": "Webinar: Racial Justice Has No Borders",
        "description_en": "Townhall discussion on war and militarization in the time of pandemic, organized by Racial Justice Has No Borders, a new, broad anti-war coalition that seeks to recenter the conversation about U.S. wars and militarization on the needs and leadership of those most impacted. With opening remarks by Rep. Ilhan Omar (MN-5),  and hosted by Marc Lamont Hill, a powerful line-up of speakers from the anti-war movement working locally and Globally reflected on the broader context of the pandemic.",

        
        "title_es": "Seminario web: La justicia racial no tiene fronteras",
        "description_es": "Debate del Ayuntamiento sobre la guerra y la militarización en tiempos de pandemia, organizado por Racial Justice Has No Borders, una nueva y amplia coalición contra la guerra que busca volver a centrar la conversación sobre las guerras y la militarización de EE. UU. sobre las necesidades y el liderazgo de los más impactados. Con los comentarios de apertura del representante Ilhan Omar (MN-5), y conducidos por Marc Lamont Hill, una poderosa formación de oradores del movimiento contra la guerra que trabaja local y globalmente reflexionó sobre el contexto más amplio de la pandemia ",
        "link": "https://www.facebook.com/InstituteforPolicyStudies/videos/261537221528594/UzpfSTIwMjM3ODc0NjU2OjEwMTU5OTAzOTE2NDk0NjU3/?link_id=0&can_id=8ba9ad5446018ce9d060eb7913742288&source=email-happening-now-join-the-townhall&email_referrer=email_775000___subject_1039377&email_subject=join-us-in-ending-the-aumfs",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "race"
    },
    {
        "title_en": "Webinar: Court Response to Violence Against Women during COVID-19",
        "description_en": "As part of the webinar series 'Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women hosted this discussion with Lori Flohaug, former prosecutor / Leech Lake Tribal Court Judge currently practicing family and criminal law; Natia Merebashvili, Deputy Prosecutor General of Georgia; Scott Miller, Executive Director of Domestic Abuse Intervention Programs ('the Duluth Model'); Erin Osborne, Staff Attorney, Central Minnesota Legal Services, Referee John Schulte, who presides over protective order and harassment restraining order court hearings. Emphases were on how court and advocacy practices have shifted, particularly around protective orders and challenges to victims. ",

        
        "title_es": "Seminario web: Respuesta judicial a la violencia contra las mujeres durante COVID-19",
        "description_es": "Como parte de la serie de seminarios web 'Adaptando respuestas legales y sistémicas durante COVID-19 Abordar la violencia contra las mujeres', Global Rights for Women organizó esta discusión con Lori Flohaug, ex fiscal / Juez de la Corte Tribal de Leech Lake que actualmente ejerce la familia y derecho penal; Natia Merebashvili, Fiscal General Adjunto de Georgia; Scott Miller, Director Ejecutivo de Programas de Intervención de Abuso Doméstico ('el Modelo Duluth'); Erin Osborne, Abogada de Personal, Servicios Legales del Centro de Minnesota, Árbitro John Schulte, quien preside la orden de protección y el acoso restringiendo las audiencias de las órdenes judiciales. Se hizo hincapié en cómo las prácticas judiciales y de defensa han cambiado, en particular en torno a órdenes de protección y desafíos a las víctimas ",
        "link": "https://www.youtube.com/watch?v=9R3yO0WmK5o",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title_en": "Webinar: Part II: Courts’ Response to Violence Against Women during COVID-19",
        "description_en": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women hosted this discussion with Judge Steve Aycock, Chief Judge Colville Confederated Tribes, Washington, USA; Iluta Lace, Director of Marta Center, Riga, Latvia; Judge Ilze Celmina, Regional Court, Riga, Latvia; Dusan Radakovic, Program Director of Advocacy Center for Democratic Culture; and Erin Osborne, Central Minnesota Legal Services. Similar questions to panelists as in part 1 of this topic, focused on court process changes and challenges, with recognition of the pandemic within the pandemic narrative emerging worldwide.",

        
        "title_es": "Seminario web: Parte II: Respuesta de los tribunales a la violencia contra las mujeres durante COVID-19",
        "description_es": "Como parte de la serie de seminarios web Adaptación de respuestas legales y sistémicas durante COVID-19 para abordar la violencia contra las mujeres, 'Global Rights for Women organizó esta discusión con el juez Steve Aycock, el juez principal Colville Confederated Tribes, Washington, EE. UU.; Iluta Lace, Directora del Centro Marta, Riga, Letonia; Juez Ilze Celmina, Tribunal Regional, Riga, Letonia; Dusan Radakovic, Director del Programa del Centro de Defensa de la Cultura Democrática, y Erin Osborne, Servicios Legales del Centro de Minnesota. Preguntas similares a los panelistas en parte 1 de este tema, centrado en los cambios y desafíos del proceso judicial, con el reconocimiento de la pandemia dentro de la narrativa de la pandemia emergente en todo el mundo ",
        "link": "https://www.youtube.com/watch?v=RQvModky0Zk&feature=youtu.be",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title_en": "Webinar: Working with Perpetrators during COVID-19: Considerations for US Perpetrator Programs ",
        "description_en": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women, European Network for the Work with Perpetrators of Domestic Violence (WWP EN), Pathways to Family Peace, and Family Violence Project of Maine co-hosted this conversation. Speakers included Juan Carlos Arean, Melissa Petrangelo Scaia, Jon Heath, Rebecca Thomforde Hauser, Center for Court Innovation, and Lisa Young Larance. Webinar presented a draft guide and a “thoughtful first start and attempt” to work with perpetrators of domestic violence responsibly during this Global pandemic for United States perpetrator programs.",

        
        "title_es": "Seminario web: Trabajar con perpetradores durante COVID-19: Consideraciones para los programas de perpetradores de EE. UU.",
        "description_es": "Como parte de la serie de seminarios web Adaptación de respuestas legales y sistémicas durante COVID-19 Abordar la violencia contra las mujeres, 'Derechos globales para las mujeres, Red europea para el trabajo con perpetradores de violencia doméstica (WWP EN), Pathways to Family El Proyecto de Paz y Violencia Familiar de Maine fue el anfitrión de esta conversación. Los oradores incluyeron a Juan Carlos Arean, Melissa Petrangelo Scaia, Jon Heath, Rebecca Thomforde Hauser, Center for Court Innovation y Lisa Young Larance. El seminario web presentó un borrador de guía y una reflexión primer comienzo e intento de trabajar responsablemente con los perpetradores de violencia doméstica durante esta pandemia mundial para los programas de perpetradores de los Estados Unidos",
        "link": "https://www.youtube.com/watch?v=PJYUeducationJxsNI&feature=youtu.be",
        "country": "United States",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title_en": "Webinar: Working with Perpetrators During COVID-19:  Lessons from Europe",
        "description_en": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,' Global Rights for Women, European Network for the Work with Perpetrators of Domestic Violence (WWP EN), Pathways to Family Peace, and Family Violence Project of Maine co-hosted this conversation. Speakers included Melissa Petrangelo Scaia, Jon Heath, and Alessandra Pauncz, representing the co-hosting organizations. The WWP EN guidelines on transition perpetrator work to an online format were shared with attention to the safety of victims.",

        
        "title_es": "Seminario web: Trabajando con perpetradores durante COVID-19: Lecciones de Europa",
        "description_es": "Como parte de la serie de seminarios web Adaptación de respuestas legales y sistémicas durante COVID-19 Abordar la violencia contra las mujeres, 'Derechos globales para las mujeres, Red europea para el trabajo con perpetradores de violencia doméstica (WWP EN), Pathways to Family El Proyecto de Paz y Violencia Familiar de Maine fue el anfitrión de esta conversación. Los oradores incluyeron a Melissa Petrangelo Scaia, Jon Heath y Alessandra Pauncz, en representación de las organizaciones co-anfitrionas. Las pautas de WWP EN sobre el trabajo del autor de la transición a un formato en línea fueron compartidas con atención. a la seguridad de las víctimas ",
        "link": "https://www.youtube.com/watch?v=_3qVFWHXoUM&feature=youtu.be",
        "country": "Europe",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title_en": "Teach-In: How to Beat Coronavirus Capitalism: Part I",
        "description_en": "First round of Haymarket Books online teach-in with Naomi Klein, Astra Taylor, and Keeanga-Yamahtta Taylor, with a musical performance by Lia Rose, focusing on how ideas that were dismissed as too radical just a week ago are starting to seem like the only reasonable path to get out of this crisis and prevent future ones.",
        
        "title_es": "Teach-In: Cómo vencer al capitalismo del coronavirus: Parte I",
        "description_es": "Primera ronda de enseñanza en línea de Haymarket Books con Naomi Klein, Astra Taylor y Keeanga-Yamahtta Taylor, con una actuación musical de Lia Rose, centrándose en cómo las ideas que fueron descartadas como demasiado radicales hace solo una semana son comienza a parecer el único camino razonable para salir de esta crisis y prevenir futuras y respuestas sistémicas durante COVID-19 Abordar la violencia contra las mujeres, 'Global Rights for Women, Red europea para el trabajo con perpetradores de violencia doméstica ( WWP EN), Pathways to Family Peace y Family Violence Project of Maine copatrocinaron esta conversación. Los oradores incluyeron a Melissa Petrangelo Scaia, Jon Heath y Alessandra Pauncz, en representación de las organizaciones co-anfitrionas. Las directrices de WWP EN sobre el trabajo de los autores de la transición a un formato en línea se compartieron con atención a la seguridad de las víctimas ",
        "link": "https://www.haymarketbooks.org/blogs/118-how-to-beat-coronavirus-capitalism",
        "country": "United States",
        "month": "3",
        "year": "2020",
        "category": "economy"
    },
    {
        "title_en": "Teach-In: How to Beat Coronavirus Capitalism: Part II (After Bernie, Amidst Pandemic)",
        "description_en": "Part two continuation of our online teach-in with Naomi Klein, Astra Taylor, and Keeanga-Yamahtta Taylor, hosted by Hari Kondabolu, and featuring a musical performance by Lia Rose, discussing how the current crisis is laying bare the extreme injustices and inequalities of our economic and social system.",

        
        "title_es": "Teach-In: Cómo vencer al capitalismo del coronavirus: Parte II (después de Bernie, en medio de una pandemia)",
        "description_es": "Parte dos, continuación de nuestra enseñanza en línea con Naomi Klein, Astra Taylor y Keeanga-Yamahtta Taylor, conducida por Hari Kondabolu, y presentando una actuación musical de Lia Rose, discutiendo cómo la crisis actual está dejando al descubierto injusticias y desigualdades extremas de nuestro sistema económico y social ",
        "link": "https://www.youtube.com/watch?v=6Gi5qGHRJ9c",
        "country": "United States",
        "month": "4",
        "year": "2020",
        "category": "economy"
    },
    {
        "title_en": "COVID-19 And Men",
        "description_en": "Webinar on how men are more affected by COVID-19 in terms of higher death rates. ",

        
        "title_es": "COVID-19 y hombres",
        "description_es": "Seminario web sobre cómo los hombres se ven más afectados por COVID-19 en términos de tasas de mortalidad más altas",
        "link": "https://shop.menshealthforum.org.uk/products/webinar-men-covid-19-april-20-2020-2pm?_ga=2.146902195.506116164.1587597573-367827357.1587597573",
        "country": "United Kingdom",
        "year": "2020",
        "category": "gendered health impacts"
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

    puts "/n/n/n/n✅ ✅ ✅ ✅   it's alive ✅ ✅ ✅ ✅ "

}

resources_data = [
    {
        "title_en": "COVID-19: the gendered impacts of the outbreak",
        "description_en": "Outlines to ways the extent to which disease outbreaks affect women and men differently.",

        
        "title_es": "COVID-19: los impactos de género del brote",
        "description_es": "Describe las formas en que los brotes de enfermedades afectan a mujeres y hombres de manera diferente",
        "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30526-2/fulltext",
        "country": "Global",
        "category": "gendered health impacts",
        "type": "scientific data"
    },
    {
        "title_en": "Covid-19 responses: Why Femimist leadership matters",
        "description_en": "Compares Global leadership from men and women leaders at this time",
        
        "title_es": "Respuestas de Covid-19: Por qué es importante el liderazgo feminista",
        "description_es": "Compara el liderazgo global de hombres y mujeres líderes en este momento",
        "link": "https://www.lowyinstitute.org/the-interpreter/covid-19-responses-why-feminist-leadership-matters-crisis",
        "country": "Asia-Pacific",
        "category": "gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title_en": "Gender Equality and Addressing(GBV) and COVID-19 Prevention, Protection and Response.",
        "description_en": "The protection and promotion of the rights of women and girls should be prioritized in the face of Covid19",

        
        "title_es": "Igualdad de género y direccionamiento (GBV) y prevención, protección y respuesta de COVID-19",
        "description_es": "La protección y la promoción de los derechos de las mujeres y las niñas deben priorizarse frente a Covid19",
        "link": "https://www.unfpa.org/resources/gender-equality-and-addressing-gender-based-violence-gbv-and-coronavirus-disease-covid-19",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title_en": "Feminist Statement on Covid-19 Policy Making",
        "description_en": "A call on governments to recall and act in accordance with human rights standards in their response to Covid-19",

        
        "title_es": "Declaración feminista sobre la formulación de políticas de Covid-19",
        "description_es": "Un llamado a los gobiernos para que retiren y actúen de acuerdo con las normas de derechos humanos en su respuesta a Covid-19",
        "link": "https://drive.google.com/file/d/10zH71NOzvo85MfJTTz8yTIsvoR5lU5iQ/view",
        "country": "Global",
        "category": "food, water, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Global Health Security and Pandemics: COVID-19 and Gender Inequality",
        "description_en": "General Analysis on the impacts of Covid on genders of all kinds due to social norms and facts",

        
        "title_es": "Seguridad sanitaria mundial y pandemias: COVID-19 y desigualdad de género",
        "description_es": "Análisis general sobre los impactos de Covid en géneros de todo tipo debido a normas y hechos sociales",
        "link": "https://www.youtube.com/watch?v=hc5clpUoKY8&feature=youtu.be",
        "country": "Global",
        "category": "healthcare, economy, childcare, labor, race",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "COVID-19: Laying Down the Groundwork for Recovery with Gender at the Fore",
        "description_en": "A call to focus on gender implications while working on a path to recovery",

        
        "title_es": "COVID-19: Sentando las bases para la recuperación con el género en primer plano",
        "description_es": "Una llamada para centrarse en las implicaciones de género mientras se trabaja en un camino hacia la recuperación",
        "link": "https://msmagazine.com/2020/03/31/covid-19-laying-down-the-groundwork-for-recovery-with-gender-at-the-fore/",
        "country": "Global",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Women in Global Health Finland pre-launch workshop",
        "description_en": "Collective Discussion about a plethora of Global policies, resources, and tools for genders provided by and participated by finland",

        
        "title_es": "Taller previo al lanzamiento de Women in Global Health Finland",
        "description_es": "Debate colectivo sobre una gran cantidad de políticas, recursos y herramientas globales para géneros proporcionados por Finlandia y participados por ellos",
        "link": "https://www.youtube.com/watch?v=RgkDDLtRw9s",
        "country": "Finland",
        "category": "SRHR, race",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "FAMILY-FRIENDLY POLICIES AND OTHER GOOD WORKPLACE PRACTICES IN THE CONTEXT OF COVID-19:",
        "description_en": "Recommendations made by UNICEF for employers",

        
        "title_es": "POLÍTICAS FAMILIARES Y OTRAS BUENAS PRÁCTICAS EN EL LUGAR DE TRABAJO EN EL CONTEXTO DE COVID-19:",
        "description_es": "Recomendaciones hechas por UNICEF para empleadores",
        "link": "https://www.unwomen.org/-/media/headquarters/attachments/sections/library/publications/2020/family-friendly-policies-and-other-good-workplace-practices-in-the-context-of-covid-19-en.pdf?la=en&vs=4828",
        "country": "Global",
        "category": "healthcare, childcare, labor",
        "type": "organizing tool"
    },
    {
        "title_en": "Buisness and Covid-19: Supporting the Most Vulnerable",
        "description_en": "A COVID-19 Response Framework for how business can support the most vulnerable",

        
        "title_es": "Buisness and Covid-19: Apoyando a los más vulnerables",
        "description_es": "Un marco de respuesta COVID-19 sobre cómo las empresas pueden apoyar a los más vulnerables",
        "link": "https://businessfightspoverty.org/articles/covid-19-response-framework/",
        "country": "United Kingdom",
        "category": "labor",
        "type": "organizing tool"
    },
    {
        "title_en": "Q&A: UN Women envisions a more gender-equal post-pandemic society",
        "description_en": "Interview with Bhatia, deputy executive director at UN Women, about aftermath of Covid in regards to gender equality ",

        
        "title_es": "Preguntas y respuestas: ONU Mujeres prevé una sociedad pospandémica más equitativa de género",
        "description_es": "Entrevista con Bhatia, subdirectora ejecutiva de ONU Mujeres, sobre las secuelas de Covid en relación con la igualdad de género",
        "link": "https://www.devex.com/news/q-a-un-women-envisions-a-more-gender-equal-post-pandemic-society-96929",
        "country": "Global",
        "category": "healthcare, economy, childcare, labor",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "Why WHO needs a feminist economic agenda",
        "description_en": "Analysis on disparities of work-force and decision making viewing gender, how healthcare and economics are interlinked",

        
        "title_es": "Por qué la OMS necesita una agenda económica feminista",
        "description_es": "Análisis sobre las disparidades de la fuerza laboral y la toma de decisiones en relación con el género, cómo se relacionan la salud y la economía",
        "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30110-0/fulltext",
        "country": "Global",
        "category": "healthcare, economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Breaking Down Gendered Power Norms during the Pandemic and Beyond",
        "description_en": "Suggestions on how to transform the current emegrency into an opportunity to restructure gender norms. ",

        
        "title_es": "Romper las normas de poder de género durante la pandemia y más allá",
        "description_es": "Sugerencias sobre cómo transformar la moneda actual en una oportunidad para reestructurar las normas de género",
        "link": "https://www.Globalpolicyjournal.com/blog/02/04/2020/breaking-down-gendered-power-norms-during-pandemic-and-beyond",
        "country": "Ireland",
        "category": "education",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title_en": "Women’s Needs and Gender Equality in Lebanon’s COVID-19 Response",
        "description_en": "Observation about needs and impacts on womens health",

        
        "title_es": "Necesidades de las mujeres e igualdad de género en la respuesta COVID-19 del Líbano",
        "description_es": "Observación sobre necesidades e impactos en la salud de las mujeres",
        "link": "https://arabstates.unwomen.org/en/digital-library/publications/2020/03/gender-equality-in-lebanon-covid-19-response",
        "country": "Global",
        "category": "healthcare, economy, gendered health impacts",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "UN backs Global action to end violence against women/girls",
        "description_en": "UN action and initiatives with partners to provide funds, support civil society organisations",

        
        "title_es": "La ONU respalda la acción mundial para poner fin a la violencia contra las mujeres / niñas",
        "description_es": "Acción e iniciativas de la ONU con socios para proporcionar fondos, apoyar organizaciones de la sociedad civil",
        "link": "https://news.un.org/en/story/2020/04/1061132",
        "country": "Global",
        "category": "gender-based violence",
        "type": "mutual aid resource"
    },
    {
        "title_en": "COVID-19 set to worsen gender inequalities in Pakistan ",
        "description_en": "An article generally discussing the report released by the Ministiry of Human Rights and UN Women on the adverse effects COVID-19 has on gender inequalities",

        
        "title_es": "COVID-19 configurado para empeorar las desigualdades de género en Pakistán",
        "description_es": "Un artículo que generalmente discute el informe publicado por el Ministerio de Derechos Humanos y ONU Mujeres sobre los efectos adversos que COVID-19 tiene sobre las desigualdades de género",
        "link": "https://tribune.com.pk/story/2197065/1-covid-19-worsen-gender-inequalities-pakistan/",
        "country": "Pakistan",
        "category": "healthcare, education, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Gendered Impact and Implications of COVID-19 in Pakistan",
        "description_en": "A comprehensive report on the negative impacts of COVID-19 on gender inequality as well as policy recommendations. ",

        
        "title_es": "Impacto e implicaciones de género de COVID-19 en Pakistán",
        "description_es": "Un informe exhaustivo sobre los impactos negativos de COVID-19 en la desigualdad de género, así como las recomendaciones de política",
        "link": "https://www2.unwomen.org/-/media/field%20office%20eseasia/docs/publications/2020/04/pk-gendered-impact-and-implications-of-covid.pdf?la=en&vs=2138",
        "country": "Pakistan",
        "category": "healthcare, education, labor, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "Home isn't a safe space for victims of domestic violence",
        "description_en": "An article featuring womens' real life narratives and how they're suffering more domestic violence under the lockdown ",

        
        "title_es": "El hogar no es un espacio seguro para las víctimas de violencia doméstica",
        "description_es": "Un artículo con narraciones de la vida real de las mujeres y cómo están sufriendo más violencia doméstica bajo el cierre",
        "link": "https://images.dawn.com/news/1184957",
        "country": "Pakistan",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Strategic preparedness and response plan for the new coronavirus",
        "description_en": "Plan outlines the COVID-19 public health measures international community can provide (updated regularly)",

        
        "title_es": "Plan estratégico de preparación y respuesta para el nuevo coronavirus",
        "description_es": "El plan describe las medidas de salud pública de COVID-19 que la comunidad internacional puede proporcionar (actualizado regularmente)",
        "link": "https://www.who.int/publications-detail/strategic-preparedness-and-response-plan-for-the-new-coronavirus",
        "country": "Global",
        "category": "healthcare",
        "type": "mutual aid resource"
    },
    {
        "title_en": "Gender and the Coronavirus Outbreak",
        "description_en": "Questions (and answers) that need to be asked for a gendered approach to the pandemic",

        
        "title_es": "Género y el brote de coronavirus",
        "description_es": "Preguntas (y respuestas) que deben formularse para un enfoque de género de la pandemia",
        "link": "https://www.thinkGlobalhealth.org/article/gender-and-coronavirus-outbreak",
        "country": "Global",
        "category": "SRHR, healthcare, economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Playing the Long Game: How Gender Lens Can Mitigate Harm",
        "description_en": "Proposals to mitigate the disproportional harm, caused by COVID-19, on lives of women&girls",

        
        "title_es": "Jugar el juego largo: cómo las lentes de género pueden mitigar el daño",
        "description_es": "Propuestas para mitigar el daño desproporcionado, causado por COVID-19, en la vida de mujeres y niñas",
        "link": "https://www.cgdev.org/blog/playing-long-game-how-gender-lens-can-mitigate-harm-caused-pandemics",
        "country": "Global",
        "category": "healthcare, education, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Why gender matters in impact and recovery from Covid-19",
        "description_en": "Overview of consequences of COVID-19 and the pandemic on women and girls",

        
        "title_es": "Por qué el género es importante en la impactante recuperación de Covid-19",
        "description_es": "Resumen de las consecuencias de COVID-19 y la pandemia en mujeres y niñas",
        "link": "https://www.lowyinstitute.org/the-interpreter/why-gender-matters-impact-and-recovery-covid-19",
        "country": "Global",
        "category": "SRHR, healthcare, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "‘Gender blind’ coronavirus policies could hinder disease fight",
        "description_en": "Views from experts: A gendered analysis is key to mitigating the effects of COVID-19",

        
        "title_es": "Las políticas de coronavirus ciegas al género podrían dificultar la lucha contra la enfermedad",
        "description_es": "Vistas de expertos: un análisis de género es clave para mitigar los efectos de COVID-19",
        "link": "https://www.scidev.net/Global/gender/news/gender-blind-coronavirus-policies-could-hinder-disease-fight.html?__cf_chl_jschl_tk__=4addd31e78Organizing Toola952dOrganizing Tool5bdd997f21454bpolicy or lawd6290-1587128145-0-AbI3O-UW3KSaVutmIG52NgYwAfEhoNL-oXHJ62HFyLL7TIivMJ1lWj4ph2l7vG2_CwTpcJ80QrDC0npb-A5e8qYVAXrMQqPTNCj5JXIOIkZoxZLwgMjw3PNddOVNbLCwnGDk9d6X4PAR4-GfK5RmO6qw1xkldF8uBMx10e0OcyC7oe09DcTLx49EconomyWcQ8L6eG0LHIcLJaaxns_SOkP43QNhZZmvkLuDdR5Ud3kCNTKHQhHealthcareNigQPs3VASkm-RUnJ07sFneFF4V30tXhSaImutual aid resourceli2I4MeSp2Ug445_cpDbSRHRPF6xxNX608-sO241ECRmcHfF6sAvnjO3_za9DCquufc3nXo6zRW0VhrfKrJ02tpUiDy0-dhxQEi2R2OSLWYAKKow",
        "country": "Global",
        "category": "healthcare, childcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Why Women May Face a Greater Risk of Catching Coronavirus",
        "description_en": "Women’s roles within society may cause them to be disproportionally affected by COVID-19",

        
        "title_es": "Por qué las mujeres pueden enfrentar un mayor riesgo de contraer coronavirus",
        "description_es": "Los roles de las mujeres dentro de la sociedad pueden hacer que se vean desproporcionadamente afectados por COVID-19",
        "link": "https://www.nytimes.com/2020/03/12/us/women-coronavirus-greater-risk.html",
        "country": "Global",
        "category": "healthcare, education, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 is not gender neutral",
        "description_en": "Analysis on why the burden of the disease will largely be felt by women",

        
        "title_es": "COVID-19 no es neutral en cuanto al género",
        "description_es": "Análisis sobre por qué las mujeres sentirán en gran medida la carga de la enfermedad",
        "link": "http://www.broadagenda.com.au/home/covid-19-is-not-gender-neutral/",
        "country": "Global",
        "category": "healthcare, economy, childcare, ",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Coronavirus fallout may be worse for women. Here's why",
        "description_en": "Women disproportionately affected due to majority in healthcare professions, childcare and unpaid care work responsibilities ",

        
        "title_es": "Las consecuencias del coronavirus pueden ser peores para las mujeres. He aquí por qué",
        "description_es": "Mujeres desproporcionadamente afectadas debido a la mayoría en profesiones de atención médica, cuidado de niños y responsabilidades laborales no remuneradas",
        "link": "https://www.weforum.org/agenda/2020/03/the-coronavirus-fallout-may-be-worse-for-women-than-men-heres-why/",
        "country": "Global",
        "category": "healthcare, economy, childcare",
        "type": "scientific data"
    },
    {
        "title_en": "Coronavirus: Five ways virus upheaval is hitting women in Asia",
        "description_en": "Five ways that women in Asia are bearing the brunt of the upheaval",

        
        "title_es": "Coronavirus: la agitación del virus en cinco formas está afectando a las mujeres en Asia",
        "description_es": "Cinco formas en que las mujeres en Asia están llevando la peor parte de la agitación",
        "link": "https://www.bbc.com/news/world-asia-51705199",
        "country": "Asia-Pacific",
        "category": "healthcare, education, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Why the Coronavirus Outbreak Could Hit Women Hardest",
        "description_en": "Women’s realities in USA, which will put them in more vulnerable state against COVID-19",

        
        "title_es": "Por qué el brote de coronavirus podría afectar más a las mujeres",
        "description_es": "La realidad de las mujeres en Estados Unidos, que las colocará en un estado más vulnerable contra COVID-19",
        "link": "https://time.com/5801897/women-affected-covid-19/",
        "country": "United States",
        "category": "healthcare, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Covid-19 puzzles that scientists are still trying to answer",
        "description_en": "Possible reasons why COVID-19 is seen less in children, and why women die less",

        
        "title_es": "acertijos de Covid-19 que los científicos todavía están tratando de responder",
        "description_es": "Posibles razones por las cuales COVID-19 se ve menos en niños y por qué las mujeres mueren menos",
        "link": "https://www.theguardian.com/world/2020/mar/14/answering-the-coronavirus-puzzles-baby-covid-19",
        "country": "China, United Kingdom",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Needs of female medical workers overlooked in corona virus fight",
        "description_en": "Advocates work to aid overlooked menstruation needs of female medical workers, put women on agenda",

        
        "title_es": "Necesidades de trabajadoras médicas ignoradas en la lucha contra el virus de la corona",
        "description_es": "Los defensores trabajan para ayudar a las necesidades de menstruación pasadas por alto de las trabajadoras médicas, poner a las mujeres en la agenda",
        "link": "https://www.inkstonenews.com/health/coronavirus-womens-advocates-ship-period-products-center-outbreak/article/3050653",
        "country": "China",
        "category": "SRHR, healthcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Call for Global Evidence on Gender and COVID-19",
        "description_en": "Male deaths are higher, thus a gendered sensitive approach to COVID-19 needed",

        
        "title_es": "Llamado a la evidencia mundial sobre género y COVID-19",
        "description_es": "Las muertes masculinas son más altas, por lo tanto, se necesita un enfoque sensible al género para COVID-19",
        "link": "https://www.menshealthforum.org.uk/news/call-Global-evidence-gender-and-covid-19",
        "country": "Global",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Attention to women’s needs, leadership will strengthen COVID-19 response",
        "description_en": "UNWOMEN’s recommendations for placing women’s needs, leadership at the heart of response to COVID-19",

        
        "title_es": "Atención a las necesidades de las mujeres, el liderazgo fortalecerá la respuesta COVID-19",
        "description_es": "Recomendaciones de UNWOMEN para ubicar las necesidades de las mujeres, el liderazgo en el centro de la respuesta a COVID-19",
        "link": "https://www.unwomen.org/en/news/stories/2020/3/news-womens-needs-and-leadership-in-covid-19-response",
        "country": "Global",
        "category": "SRHR, healthcare, education, economy, childcare, labor, gendered health impacts, gender-based violence, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "How Will COVID19 Affect Women&Girls in Low&Middle Income Countries?",
        "description_en": "Summary of Lancet article ““COVID-19: the gendered impacts of the outbreak” and additional concerns",

        
        "title_es": "¿Cómo afectará COVID19 a las mujeres y las niñas en los países de bajos y medianos ingresos?",
        "description_es": "Resumen del artículo de Lancet" "COVID-19: los impactos de género del brote y preocupaciones adicionales ",
        "link": "https://www.cgdev.org/blog/how-will-covid-19-affect-women-and-girls-low-and-middle-income-countries",
        "country": "Global",
        "category": "SRHR, healthcare, education, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Coronavirus Is a Disaster for Feminism",
        "description_en": "Pandemic magnifies all existing inequalities. Across the world, women’s independence will be a silent victim.",

        
        "title_es": "El coronavirus es un desastre para el feminismo",
        "description_es": "La pandemia aumenta todas las desigualdades existentes. En todo el mundo, la independencia de las mujeres será una víctima silenciosa",
        "link": "https://www.theatlantic.com/international/archive/2020/03/feminism-womens-rights-coronavirus-covid19/608302/",
        "country": "Global",
        "category": "economy, childcare, labor, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Ideas for Pro-Poor and Pro-Women Approach to COVID19",
        "description_en": "How local governments can respond, considering economic and gender inequalities, with a pro-poor, pro-women approach",

        
        "title_es": "Ideas para el enfoque pro-pobres y pro-mujeres de COVID19",
        "description_es": "Cómo pueden responder los gobiernos locales, considerando las desigualdades económicas y de género, con un enfoque en favor de los pobres y en favor de las mujeres",
        "link": "https://asia.oxfam.org/latest/blogs/ideas-pro-poor-and-pro-women-approach-covid-19",
        "country": "Philippines",
        "category": "punitive, healthcare, economy, childcare, labor, water, food, disability",
        "type": "organizing tool"
    },
    {
        "title_en": "Women's domestic burden just got heavier with the coronavirus",
        "description_en": "Women  find themselves needing to step up their roles at home as the coronavirus spreads",

        
        "title_es": "La carga doméstica de las mujeres se volvió más pesada con el coronavirus",
        "description_es": "Las mujeres se ven obligadas a intensificar sus roles en casa a medida que se propaga el coronavirus",
        "link": "https://www.theguardian.com/us-news/2020/mar/16/womens-coronavirus-domestic-burden?CMP=Share_AndroidApp_Gmail#maincontent",
        "country": "Global",
        "category": "economy, childcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID19 demands we pay attention to who does care work",
        "description_en": "Organizations, governments, and communities must do what it takes to support women who provide care",

        
        "title_es": "COVID19 exige que prestemos atención a quién cuida el trabajo",
        "description_es": "Las organizaciones, los gobiernos y las comunidades deben hacer lo que sea necesario para apoyar a las mujeres que brindan atención",
        "link": "https://promundoGlobal.org/covid-19-demands-that-we-pay-attention-to-who-does-the-care-work-and-how-we-support-them/#",
        "country": "Global",
        "category": "healthcare, economy, childcare, labor",
        "type": "feminist statement or analysis",
        "undefined": "(West, East, Southern)"
    },
    {
        "title_en": "Impact of COVID-19 Pandemic on Violence against Women and Girls",
        "description_en": "Emerging evidence on GBV from several countries as well as lessons learned from similar epidemics",

        
        "title_es": "Impacto de la pandemia de COVID-19 en la violencia contra las mujeres y las niñas",
        "description_es": "Evidencia emergente sobre VG de varios países, así como lecciones aprendidas de epidemias similares",
        "link": "http://www.sddirect.org.uk/media/1881/vawg-helpdesk-284-covid-19-and-vawg.pdf",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data",
        "undefined": "(West, Central) "
    },
    {
        "title_en": "Pandemics and Violence Against Women and Children (VAW/C)",
        "description_en": "Working Paper documenting pathways linking pandemics and VAW/C as well as policy and program responses",

        
        "title_es": "Pandemias y violencia contra mujeres y niños (VAW / C)",
        "description_es": "Documento de trabajo que documenta las vías que vinculan las pandemias y la violencia contra las mujeres / C, así como las respuestas de políticas y programas",
        "link": "https://www.cgdev.org/publication/pandemics-and-violence-against-women-and-children",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "undefined": " (Scandinavia/Eastern Europe/ Russia)"
    },
    {
        "title_en": "COVID-19: Reducing the risk of Infection might increase the risk of intimate partner violence",
        "description_en": "Includes a short listing of immediate actions needed to mitigate against increases in IPV",

        
        "title_es": "COVID-19: Reducir el riesgo de infección podría aumentar el riesgo de violencia de pareja",
        "description_es": "Incluye una breve lista de acciones inmediatas necesarias para mitigar los aumentos de IPV",
        "link": "https://www.thelancet.com/journals/eclinm/article/PIIS2589-5370(20)30092-4/fulltext",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "COVID-19 and violence against women. What the health sector/system can do",
        "description_en": "A WHO summary of how health systems can mitigate impacts of violence on women and children during this pandemic",

        
        "title_es": "COVID-19 y la violencia contra la mujer. Qué puede hacer el sector / sistema de salud",
        "description_es": "Un resumen de la OMS sobre cómo los sistemas de salud pueden mitigar los impactos de la violencia en mujeres y niños durante esta pandemia",
        "link": "https://www.who.int/reproductivehealth/publications/emergencies/COVID-19-VAW-full-text.pdf?",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "COVID-19 and family Violence",
        "description_en": "Webpage with links to resources relating to family violence for victims; family, friends or neighbors; and professionals",

        
        "title_es": "COVID-19 y violencia familiar",
        "description_es": "Página web con enlaces a recursos relacionados con la violencia familiar para víctimas, familiares, amigos o vecinos, y profesionales",
        "link": "http://www.dvrcv.org.au/help-advice/coronavirus-covid-19-and-family-violence",
        "country": "Australia",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "Women's aid comments on the impact of coronavirus on women and children escaping domestic abuse",
        "description_en": "Want to see refuge services continue to operate safely and effectively during COVID-19",

        
        "title_es": "Comentarios de ayuda para mujeres sobre el impacto del coronavirus en mujeres y niños que escapan del abuso doméstico",
        "description_es": "Desea ver que los servicios de refugio continúen operando de manera segura y efectiva durante COVID-19",
        "link": "https://www.womensaid.org.uk/womens-aid-comments-on-the-impact-of-coronavirus-on-women-and-children-escaping-domestic-abuse/  ",
        "country": "United Kingdom, Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Home Quarantine:Confinement with the Abuser?",
        "description_en": "COVID-19 confinement, unemployment associated with increase in domestic violence, proposals of Brasilian policies to mitigate",

        
        "title_es": "Cuarentena doméstica: ¿Reclusión con el abusador?",
        "description_es": "encierro de COVID-19, desempleo asociado con el aumento de la violencia doméstica, propuestas de políticas brasileñas para mitigar",
        "link": "http://multiplier-effect.org/home-quarantine-confinement-with-the-abuser/",
        "country": "Brazil",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "Five ways governments are responding to violence against women and children during COVID-19",
        "description_en": "UNICEF blog: A non-exhaustive list of government responses to increased violence against women and children during COVID-19 crisis.",

        
        "title_es": "Cinco formas en que los gobiernos están respondiendo a la violencia contra las mujeres y los niños durante COVID-19",
        "description_es": "Blog de UNICEF: una lista no exhaustiva de respuestas gubernamentales al aumento de la violencia contra las mujeres y los niños durante la crisis de COVID-19",
        "link": "https://blogs.unicef.org/evidence-for-action/five-ways-governments-are-responding-to-violence-against-women-and-children-during-covid-19/  ",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Coronavirus doesn't cause Men's violence Against Women",
        "description_en": "Compares the number of women killed in the United Kingdom during 3 week period over several years",

        
        "title_es": "El coronavirus no causa la violencia de los hombres contra las mujeres",
        "description_es": "Compara el número de mujeres asesinadas en el Reino Unido durante un período de 3 semanas durante varios años",
        "link": "https://kareningalasmith.com/2020/04/15/coronavirus-doesnt-cause-mens-violence-against-women/",
        "country": "United Kingdom",
        "category": "gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "COVID-19: A Gender Lens: Protecting sexual and reproductive health and rights, and promoting gender equality",
        "description_en": "Technical brief from UNFPA on gendered risks during pandemic",

        
        "title_es": "COVID-19: Una lente de género: Protección de la salud y los derechos sexuales y reproductivos, y promoción de la igualdad de género",
        "description_es": "Informe técnico del UNFPA sobre riesgos de género durante una pandemia",
        "link": "https://turkey.unfpa.org/en/publications/covid-19-gender-lens-1",
        "country": "Global",
        "category": "SRHR, healthcare, economy, childcare, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Women This Week: The Gendered Effects of COVID-19",
        "description_en": "Blog post on pandemic's gendered impacts on DV, access to health services, and job insecurity",

        
        "title_es": "Mujeres esta semana: los efectos de género de COVID-19",
        "description_es": "Publicación de blog sobre los impactos de género de la pandemia en DV, acceso a servicios de salud e inseguridad laboral",
        "link": "https://www.cfr.org/blog/women-week-gendered-effects-covid-19",
        "country": "Global",
        "category": "SRHR, healthcare, economy",
        "type": "observed response"
    },
    {
        "title_en": "COVID-19, Domestic abuse and violence: Where do Indian Women stand?",
        "description_en": "General analysis of dimensions of domestic violence in India, includes uselessness of the law",

        
        "title_es": "COVID-19, Abuso doméstico y violencia: ¿Dónde se encuentran las mujeres indias?",
        "description_es": "El análisis general de las dimensiones de la violencia doméstica en India incluye la inutilidad de la ley",
        "link": "https://www.epw.in/engage/article/covid-19-domestic-abuse-and-violence-where-do#.Xps-Edkwo8U.twitter",
        "country": "India",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "The EU-UN Spotlight Inititative in Nigeria is working against gender-based violence during the COVID-19",
        "description_en": "Brief UNESCO GBV awareness page with Nigerian Hotline information, includes short awareness video ",

        
        "title_es": "La Iniciativa Spotlight UE-ONU en Nigeria está trabajando contra la violencia de género durante el COVID-19",
        "description_es": "Breve página de concientización sobre violencia de género en la UNESCO con información de la línea directa nigeriana, incluye un breve video de concientización",
        "link": "https://en.unesco.org/news/eu-spotlight-initiative-nigeria-working-against-gender-based-violence-during-covid-19",
        "country": "Nigeria",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Tools and Resources page of Gender-Based Violence Area of Responsibility",
        "description_en": "Search webpage for case study/best practices/examples from the field, includes guidance notes",

        
        "title_es": "Página de herramientas y recursos del área de responsabilidad de violencia de género",
        "description_es": "Buscar en la página web estudios de caso / mejores prácticas / ejemplos del campo, incluye notas de orientación",
        "link": "https://gbvaor.net/thematic-areas?term_node_tid_depth_1%5scientific data21%5D=121",
        "country": "Global, Mozambique, Sudan",
        "category": "gender-based violence",
        "type": "mutual aid resource"
    },
    {
        "title_en": "COVID-19: Resources to address Gender-based Violence Risks",
        "description_en": "Guidelines for Intergrating Gender-Based Violence Interventions in Humanitarian Action, as well as other documents and guides",

        
        "title_es": "COVID-19: Recursos para abordar los riesgos de violencia de género",
        "description_es": "Directrices para integrar intervenciones de violencia de género en la acción humanitaria, así como otros documentos y guías",
        "link": "https://gbvguidelines.org/cctopic/covid-19/ ",
        "country": "Global",
        "category": "gender-based violence",
        "type": "mutual aid resource"
    },
    {
        "title_en": "OPERATION 50/50: Women's Perspectives Save Lives",
        "description_en": "List of women experts who are working in health security",

        
        "title_es": "OPERACIÓN 50/50: Las perspectivas de las mujeres salvan vidas",
        "description_es": "Lista de mujeres expertas que trabajan en seguridad sanitaria",
        "link": "https://www.womeningh.org/operation-50-50",
        "country": "Global",
        "category": "healthcare",
        "type": "organizing tool"
    },
    {
        "title_en": "Elevating women in the age of coronavirus",
        "description_en": "Virtual networks can empower and include more working women in entrepreneurship and sustainable development",

        
        "title_es": "Elevar a las mujeres en la era del coronavirus",
        "description_es": "Las redes virtuales pueden empoderar e incluir a más mujeres trabajadoras en el espíritu empresarial y el desarrollo sostenible",
        "link": "https://apolitical.co/en/solution_article/elevating-women-in-the-age-of-coronavirus",
        "country": "Global",
        "category": "labor",
        "type": "organizing tool"
    },
    {
        "title_en": "Opinion: Global health security depends on women",
        "description_en": "Asks for integrating gender equality into Global healthcare infrastructure - 5 points",

        
        "title_es": "Opinión: la seguridad sanitaria mundial depende de las mujeres",
        "description_es": "Pide la integración de la igualdad de género en la infraestructura sanitaria mundial - 5 puntos",
        "link": "https://www.devex.com/news/opinion-Global-health-security-depends-on-women-96861?access_key=&utm_source=newsletter&utm_medium=newswire&utm_campaign=yourheadlines&utm_content=text&mkt_tok=eyJpIjoiTlRObFpXTmxNVGhoSRHRRGbCIsInQiOiIrV0hMbVJnOWdmMlQxczV4RnFcLzlsXC9IWE56alZyYzlqVFdHR3RMpolicy or lawhBFeminist Statement or Analysisp3Digital SurveillanceFlZkhNSGo1Q25ZRVNEZmdkczFLbVIzeUJVMVRDbjJLeVlYdWVobWg2Uk5PN2FSbFppY3N2Feminist Statement or AnalysisQrWFF0WnA4NW9yTEJNXC83aG5LYVY0aHVxeHRpbiJ9",
        "country": "Global",
        "category": "healthcare",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "OPINION: Why we need women’s leadership in the COVID-19 response",
        "description_en": "Call for more women's leadership in pandemic response for equal health benefits to all",

        
        "title_es": "OPINIÓN: Por qué necesitamos el liderazgo de las mujeres en la respuesta COVID-19",
        "description_es": "Pide más liderazgo de las mujeres en la respuesta ante una pandemia para obtener beneficios de salud iguales para todos",
        "link": "https://news.trust.org/item/20200401090723-319sb",
        "country": "Global",
        "category": "healthcare",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Fighting COVID-19 With One Hand Tied Behind Our Backs?",
        "description_en": "Gender bias keeps women out of decison making but pandemic affects women differently than men",

        
        "title_es": "¿Luchando contra COVID-19 con una mano atada detrás de nuestras espaldas?",
        "description_es": "El sesgo de género mantiene a las mujeres fuera de la toma de decisiones, pero la pandemia afecta a las mujeres de manera diferente que a los hombres",
        "link": "https://www.thinkGlobalhealth.org/article/fighting-covid-19-one-hand-tied-behind-our-backs",
        "country": "Global",
        "category": "healthcare, economy, labor, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Coronavirus measures will hit women harder than men, charities warn",
        "description_en": "Data regarding the affect of coronavirus on women is urgently needed to allocate resources",
        
        "title_es": "Las medidas de coronavirus afectarán más a las mujeres que a los hombres, advierten las organizaciones benéficas",
        "description_es": "Se necesitan con urgencia datos sobre el efecto del coronavirus en las mujeres para asignar recursos",
        "link": "https://www.reuters.com/article/us-health-coronavirus-women-trfn/coronavirus-measures-will-hit-women-harder-than-men-charities-warn-idUSKBN21J6NI",
        "country": "Global",
        "category": "SRHR, healthcare, digital surveillance, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Women’s leadership and unlocking girls’ talent in the era of the coronavirus pandemic",
        "description_en": "Pandemic identifies gaps in Global systems and how women can and should fill them",

        
        "title_es": "Liderazgo de las mujeres y desbloqueo del talento de las niñas en la era de la pandemia de coronavirus",
        "description_es": "La pandemia identifica las brechas en los sistemas globales y cómo las mujeres pueden y deben llenarlas",
        "link": "https://www.Globalpartnership.org/blog/womens-leadership-and-unlocking-girls-talent-era-coronavirus-pandemic#.XotGV9o2Av4.twitter",
        "country": "Global",
        "category": "education, economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Memo to the UK: women's voices can also be useful in this crisis",
        "description_en": "Women and men consider risk differently and policy could benefit from equal representation",

        
        "title_es": "Memo al Reino Unido: las voces de las mujeres también pueden ser útiles en esta crisis",
        "description_es": "Las mujeres y los hombres consideran el riesgo de manera diferente y la política podría beneficiarse de una representación equitativa",
        "link": "https://www.theguardian.com/commentisfree/2020/apr/11/memo-to-the-uk-womens-voices-can-also-be-useful-in-this-crisis",
        "country": "United Kingdom",
        "category": "healthcare, economy, labor, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "The secret weapon in the fight against coronavirus: women",
        "description_en": "Women leaders are doing an exceptional job at containing coronavirus",

        
        "title_es": "El arma secreta en la lucha contra el coronavirus: mujeres",
        "description_es": "Las mujeres líderes están haciendo un trabajo excepcional para contener el coronavirus",
        "link": "https://www.theguardian.com/commentisfree/2020/apr/11/secret-weapon-fight-against-coronavirus-women",
        "country": "Germany, Taiwan, New Zealand, Denmark, Finland, United Kingdom, United States",
        "category": "healthcare",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Covid-19 School Closures Around the World Will Hit Girls Hardest",
        "description_en": "Six gender-responsive actions proposed to mitigate Covid-19's impact on girls' education",

        
        "title_es": "Los cierres de escuelas de Covid-19 en todo el mundo golpearán más a las niñas",
        "description_es": "Seis acciones con perspectiva de género propuestas para mitigar el impacto de Covid-19 en la educación de las niñas",
        "link": "https://plan-international.org/blog/2020/03/covid-19-school-closures-hit-girls-hardest",
        "country": "Global",
        "category": "education",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "From nannies to helpers, coronavirus spotlights Asia women's job insecurity",
        "description_en": "Asian women conduct a lot of informal or unpaid work which is highly insecure during pandemic",

        
        "title_es": "De niñeras a ayudantes, el coronavirus destaca la inseguridad laboral de las mujeres asiáticas",
        "description_es": "Las mujeres asiáticas realizan mucho trabajo informal o no remunerado que es muy inseguro durante la pandemia",
        "link": "https://news.trust.org/item/20200313122408-e2lvu/",
        "country": "Asia-Pacific",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "America's cleaners: fighting on the coronavirus front line",
        "description_en": "Cleaners are at high risk but they are financially unsettled and so must continue working",

        
        "title_es": "los limpiadores de Estados Unidos: luchando en la primera línea del coronavirus",
        "description_es": "Los limpiadores corren un alto riesgo pero tienen problemas financieros y, por lo tanto, deben seguir funcionando",
        "link": "https://uk.reuters.com/article/uk-health-coronavirus-usa-cleaners/americas-cleaners-fighting-on-the-coronavirus-front-line-idUKKBN2162GW",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Why women will be hardest hit by a coronavirus-driven recession",
        "description_en": "Gendered budgeting will be imperative in mitigating disproportionate affects of pandemic on women",

        
        "title_es": "Por qué las mujeres serán las más afectadas por una recesión provocada por el coronavirus",
        "description_es": "La presupuestación por género será imprescindible para mitigar los efectos desproporcionados de la pandemia en las mujeres",
        "link": "https://www.fastcompany.com/90479204/why-women-will-be-hardest-hit-by-a-coronavirus-driven-recession",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Gender economist Katica Roy: If we don't act fast, women will bear the brunt of the financial crisis caused by coronavirus",
        "description_en": "Interview with Katica Roy regarding pandemic induced financial crisis effects on women",

        
        "title_es": "Katica Roy, economista de género: si no actuamos rápido, las mujeres serán las más afectadas por la crisis financiera causada por el coronavirus",
        "description_es": "Entrevista con Katica Roy sobre los efectos de la crisis financiera inducida por la pandemia en las mujeres",
        "link": "https://www.nbcnews.com/know-your-value/feature/gender-economist-katica-roy-if-we-don-t-act-fast-ncnpolicy or law166771",
        "country": "United States",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "‘Stay Home’ and Work? Implications of COVID-19 and the UK Governmental Response for Self-Employed Women",
        "description_en": "Implications of the effects of UK governmental response on women's small businesses are unclear",

        
        "title_es": "‘ Stay Home ’and Work? Implications of COVID-19 and the UK Government Government for Self-Employed Women",
        "description_es": "Las implicaciones de los efectos de la respuesta gubernamental del Reino Unido en las pequeñas empresas de mujeres no están claras",
        "link": "https://isbegen.wordpress.com/2020/03/27/stay-home-and-work/",
        "country": "United Kingdom",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Most Brown and Black Americans Are Exposing Themselves to Coronavirus for a Paycheck",
        "description_en": "Brown and Black Americans work more jobs that require them to be physically present",

        
        "title_es": "La mayoría de los estadounidenses marrones y negros se exponen al coronavirus por un sueldo",
        "description_es": "Los estadounidenses marrones y negros tienen más trabajos que requieren que estén físicamente presentes",
        "link": "https://www.vice.com/en_us/article/xgqpyq/most-brown-and-black-americans-are-exposing-themselves-to-coronavirus-for-a-paycheck",
        "country": "United States",
        "category": "economy, race",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Low-paid women in UK at ‘high risk of coronavirus exposure’",
        "description_en": "Most high-risk jobs with low salary are worked by women",

        
        "title_es": "Mujeres mal pagadas en el Reino Unido con alto riesgo de exposición al coronavirus",
        "description_es": "La mayoría de los trabajos de alto riesgo con bajos salarios son trabajados por mujeres",
        "link": "https://www.theguardian.com/world/2020/mar/29/low-paid-women-in-uk-at-high-risk-of-coronavirus-exposure",
        "country": "United Kingdom",
        "category": "economy, labor",
        "type": "feminist statement or analysis, scientific data"
    },
    {
        "title_en": "When face-to-face interactions become an occupational hazard: Jobs in the time of COVID-19",
        "description_en": "Low paying jobs are less amenable to online work and women are more at risk",

        
        "title_es": "Cuando las interacciones cara a cara se convierten en un riesgo laboral: trabajos en la época de COVID-19",
        "description_es": "Los trabajos mal pagados son menos susceptibles al trabajo en línea y las mujeres corren más riesgo",
        "link": "https://www.brookings.edu/blog/future-development/2020/03/30/when-face-to-face-interactions-become-an-occupational-hazard-jobs-in-the-time-of-covid-19/",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Equal Pay Day more important than ever amid COVID-19",
        "description_en": "Pandemic is revealing economic inequality with stark contrasts",

        
        "title_es": "El día de igualdad de pago es más importante que nunca en medio de COVID-19",
        "description_es": "La pandemia está revelando la desigualdad económica con fuertes contrastes",
        "link": "https://thehill.com/opinion/civil-rights/490088-equal-pay-day-more-important-than-ever-amid-covid-19",
        "country": "United States",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Here’s How You Can Help Sex Workers During the COVID-19 Outbreak",
        "description_en": "Ways in which you can help sex workers during the pandemic",

        
        "title_es": "Así es como puede ayudar a las trabajadoras sexuales durante el brote de COVID-19",
        "description_es": "Formas en que puede ayudar a las trabajadoras sexuales durante la pandemia",
        "link": "https://rewire.news/article/2020/03/26/heres-how-you-can-help-sex-workers-during-the-covid-19-outbreak/",
        "country": "United States",
        "category": "healthcare, economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 lockdown: Rights groups demand immediate social security measures for women",
        "description_en": "Womens' organizations call on Indian Prime Minister to provide social security to protect women",

        
        "title_es": "cierre de COVID-19: los grupos de derechos demandan medidas inmediatas de seguridad social para las mujeres",
        "description_es": "Las organizaciones de mujeres piden al Primer Ministro indio que brinde seguridad social para proteger a las mujeres",
        "link": "https://www.outlookindia.com/newsscroll/covid19-lockdown-rights-groups-demand-immediate-social-security-measures-for-women/1781106",
        "country": "India",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "How the coronavirus widens the gender pay gap",
        "description_en": "Organizations must be careful to pay women equally when work returns to normal",

        
        "title_es": "Cómo el coronavirus amplía la brecha salarial de género",
        "description_es": "Las organizaciones deben tener cuidado de pagar a las mujeres por igual cuando el trabajo vuelve a la normalidad",
        "link": "https://edition.cnn.com/2020/03/31/perspectives/equal-pay-day-coronavirus/index.html",
        "country": "United States",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Why This Economic Crisis Differs From the Last One for Women",
        "description_en": "This crisis most affects women-dominated, low paying fields which can't be done remotely",

        
        "title_es": "Por qué esta crisis económica difiere de la última para las mujeres",
        "description_es": "Esta crisis afecta más a los campos dominados por mujeres y de bajos ingresos que no se pueden hacer de forma remota",
        "link": "https://www.nytimes.com/2020/03/31/us/equal-pay-coronavirus-economic-impact.html",
        "country": "United States",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "How the COVID-19 Crisis Is Hurting Sex Workers",
        "description_en": "Pandemic means fewer clients, greater risks, and it’s hard to get benefits",

        
        "title_es": "Cómo la crisis de COVID-19 está perjudicando a las trabajadoras sexuales",
        "description_es": "Pandemia significa menos clientes, mayores riesgos y es difícil obtener beneficios",
        "link": "https://thetyee.ca/News/2020/03/27/How-COVID-19-Hurting-Sex-Workers/",
        "country": "Canada",
        "category": "SRHR, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Covid-19 aggravating gender inequalities",
        "description_en": "Gender inequalities are being exacerbated by pandemic through food, water, health, domestic violence and curfew",

        
        "title_es": "Covid-19 agrava las desigualdades de género",
        "description_es": "Las desigualdades de género se ven exacerbadas por la pandemia a través de la alimentación, el agua, la salud, la violencia doméstica y el toque de queda",
        "link": "https://www.nation.co.ke/gender/Covid-19-aggravating-gender-inequalities/5362750-5508776-l85jnt/index.html",
        "country": "Kenya",
        "category": "SRHR, childcare, water, food, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 Highlights the Failure of Neoliberal Capitalism: We Need Feminist Global Solidarity",
        "description_en": "Capitalism is not delivering people's basic needs so feminist restructuring is essential",

        
        "title_es": "COVID-19 destaca el fracaso del capitalismo neoliberal: necesitamos una solidaridad global feminista",
        "description_es": "El capitalismo no satisface las necesidades básicas de las personas, por lo que la reestructuración feminista es esencial",
        "link": "https://apwld.org/covid-19-highlights-the-failure-of-neoliberal-capitalism-we-need-feminist-Global-solidarity/?utm_source=NGO+CSW%2FNY+Constituency&utm_campaign=cb8d7d54ff-EMAIL_CAMPAIGN_2018_10_05_02_01_COPY_01&utm_medium=email&utm_term=0_67ac6441ff-cb8d7d54ff-412137047&mc_cid=cb8d7d54ff&mc_eid=64cdc0fe0b",
        "country": "Thailand",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 requires gender-equal responses to save economies",
        "description_en": "Gender-inclusive response is needed to bounce back the Global economy",

        
        "title_es": "COVID-19 requiere respuestas con igualdad de género para salvar economías",
        "description_es": "Se necesita una respuesta inclusiva de género para recuperar la economía global",
        "link": "http://www.ipsnews.net/2020/04/covid-19-requires-gender-equal-responses-save-economies/?utm_source=feedly&utm_medium=rss&utm_campaign=covid-19-requires-gender-equal-responses-save-economies",
        "country": "Global",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "How Economic Fallout From The Coronavirus May Disproportionately Affect Women",
        "description_en": "Womens' income is important and they are also doing a lot of unpaid work",

        
        "title_es": "Cómo las consecuencias económicas del coronavirus pueden afectar desproporcionadamente a las mujeres",
        "description_es": "El ingreso de las mujeres es importante y también están haciendo mucho trabajo no remunerado",
        "link": "https://www.forbes.com/sites/jenniferbarrett/2020/04/02/how-economic-fallout-from-the-coronavirus-may-disproportionately-affect-women/#485df515836a",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Lockdown: Domestic workers struggle to make ends meet as families refuse to pay",
        "description_en": "Domestic workers are not being paid during lockdown",

        
        "title_es": "Bloqueo: las trabajadoras domésticas luchan para llegar a fin de mes mientras las familias se niegan a pagar",
        "description_es": "A las trabajadoras domésticas no se les paga durante el cierre",
        "link": "https://www.hindustantimes.com/mumbai-news/lockdown-domestic-workers-struggle-to-make-ends-meet-as-families-refuse-to-pay/story-aB6zzwdUyQYnivAJoCMtEJ.html",
        "country": "India",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 will make gender pay inequities worse",
        "description_en": "Gender pay inequity to be exacerbated by the pandemic",

        
        "title_es": "COVID-19 empeorará las desigualdades salariales de género",
        "description_es": "La pandemia exacerbará la desigualdad salarial de género",
        "link": "https://www.benefitspro.com/2020/04/07/covid-19-will-make-gender-pay-inequities-worse/?cmp=share_twitter&slreturn=20200317122647",
        "country": "United States",
        "category": "education, economy, childcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 worsening gender inequality, more women have lost jobs – UN",
        "description_en": "Women are increasingly taking on extra unpaid labour and their rights will be reversed",

        
        "title_es": "COVID-19 empeora la desigualdad de género, más mujeres han perdido empleos - ONU",
        "description_es": "Las mujeres están asumiendo cada vez más trabajo no remunerado adicional y sus derechos serán revertidos",
        "link": "https://dailypost.ng/2020/04/10/covid-19-worsening-gender-inequality-more-women-have-lost-jobs-un/",
        "country": "Global",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Female frontline workers in China typical of coronavirus economic and domestic burden on women: report",
        "description_en": "Women are disproportionately affected by health, education and labour-related hardship domestically and outside the home",

        
        "title_es": "Trabajadoras de primera línea en China, típicas de la carga económica y doméstica del coronavirus sobre las mujeres: informe",
        "description_es": "Las mujeres se ven desproporcionadamente afectadas por problemas de salud, educación y laborales en el país y fuera del hogar",
        "link": "https://amp-scmp-com.cdn.ampproject.org/c/s/amp.scmp.com/news/china/society/article/3079363/female-frontline-workers-china-typical-coronavirus-economic-and",
        "country": "China",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "The Economic Impact of Coronavirus on Women is 'Devastating' and Exacerbating Gender Inequality, Says Facebook's Sheryl Sandberg",
        "description_en": "Pandemic will have a disproportionate effect on women's employment opportunities",

        
        "title_es": "El impacto económico del coronavirus en las mujeres es 'devastador' y exacerba la desigualdad de género, dice Sheryl Sandberg de Facebook",
        "description_es": "La pandemia tendrá un efecto desproporcionado en las oportunidades de empleo de las mujeres",
        "link": "https://www.newsweek.com/economic-impact-coronavirus-women-devastating-exacerbating-gender-inequality-says-1497325",
        "country": "United States",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Women on the frontlines of COVID-19",
        "description_en": "There is a lack of infrastructure to protect workers, many of whom are women",

        
        "title_es": "Mujeres en primera línea de COVID-19",
        "description_es": "Falta infraestructura para proteger a los trabajadores, muchos de los cuales son mujeres",
        "link": "https://www.liberationnews.org/women-on-the-frontlines-of-covid-19/",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Gender pay gap poses 'shocking' pitfall if isolation goes on",
        "description_en": "Men's higher paying work is being prioritised over women's when distributing new household responsibilities",

        
        "title_es": "La brecha salarial de género plantea una trampa 'impactante' si el aislamiento continúa",
        "description_es": "El trabajo mejor remunerado de los hombres se prioriza sobre el de las mujeres al distribuir las nuevas responsabilidades del hogar",
        "link": "https://www.canberratimes.com.au/story/6721006/gender-pay-gap-poses-shocking-pitfall-if-isolation-goes-on/",
        "country": "Australia",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Sex workers must not be left behind in the response to COVID-19",
        "description_en": "UNAIDS calls for immediate action to protect sex workers",

        
        "title_es": "Las trabajadoras sexuales no deben quedar atrás en la respuesta a COVID-19",
        "description_es": "ONUSIDA pide una acción inmediata para proteger a las trabajadoras sexuales",
        "link": "https://www.unaids.org/en/resources/presscentre/pressreleaseandstatementarchive/2020/april/20200408_sex-workers-covid-19",
        "country": "Global",
        "category": "SRHR, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Protecting Women Using DFS During The Pandemic",
        "description_en": "Women should be educated in using digital financing solutions in developing countries",

        
        "title_es": "Protegiendo a las mujeres que usan DFS durante la pandemia",
        "description_es": "Las mujeres deberían recibir educación sobre el uso de soluciones de financiación digital en los países en desarrollo",
        "link": "https://www.siaedge.com/news/2020/3/27/protecting-women-using-dfs-during-the-pandemic",
        "country": "Ghana, Kenya",
        "category": "digital surveillance, economy, labor",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title_en": "The Economic Devastation Of COVID-19 Is Hitting Women Particularly Hard",
        "description_en": "Women are disproportionately affected by Covid-19, particularly black women",

        
        "title_es": "La devastación económica de COVID-19 está afectando particularmente a las mujeres",
        "description_es": "Las mujeres se ven desproporcionadamente afectadas por Covid-19, particularmente las mujeres negras",
        "link": "https://www.huffingtonpost.co.uk/entry/women-coronavirus-lost-jobs_n_5e90observed response63c5b685fbc7d4a557?ri18n=true",
        "country": "United States",
        "category": "economy, labor, race",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Addressing the gender dimensions of COVID-related school closures ",
        "description_en": "Synthesis report of webinar featuring country experiences and synthesizing participants' calls to action for governments",

        
        "title_es": "Abordar las dimensiones de género de los cierres de escuelas relacionados con COVID",
        "description_es": "Informe de síntesis del seminario web que presenta las experiencias de los países y sintetiza los llamados de los participantes a la acción para los gobiernos",
        "link": "https://en.unesco.org/sites/default/files/covid-19-ed_webinar_3-addressing_the_gender_dimensions_of_school_closures-report-en.pdf",
        "country": "Sierra Leone, Nigeria, Nepal, Afghanistan",
        "category": "education",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 Impact: What we know so far – Albania",
        "description_en": "An interview with the Executive Director of Albania Center of Population and Development (ACPD) ",

        
        "title_es": "Impacto COVID-19: lo que sabemos hasta ahora - Albania",
        "description_es": "Una entrevista con el Director Ejecutivo del Centro de Población y Desarrollo de Albania (ACPD)",
        "link": "https://www.ippf.org/blogs/covid-19-impact-what-we-know-so-far-albania",
        "country": "Albania",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "UNDP Angola: Support to the National Response to Contain the Impact of COVID-19",
        "description_en": "UNDP analysis, interventions, and associated budget for COVID-19, highlighting gendered socio-economic impacts in budget",

        
        "title_es": "PNUD Angola: Apoyo a la respuesta nacional para contener el impacto de COVID-19",
        "description_es": "Análisis, intervenciones y presupuesto asociado del PNUD para COVID-19, destacando los impactos socioeconómicos de género en el presupuesto",
        "link": "https://www.undp.org/content/dam/rba/docs/COVID-19-CO-Response/undp-rba-covid-angola-apr2020.pdf",
        "country": "Angola",
        "category": "economy, SRHR",
        "type": "scientific data"
    },
    {
        "title_en": "C-19 Menaces Antigua and Barbuda",
        "description_en": "Analysis of response: government information, actions, and healthcare spending in context of disaster capitalism",

        
        "title_es": "C-19 Menaces Antigua y Barbuda",
        "description_es": "Análisis de respuesta: información del gobierno, acciones y gasto en atención médica en el contexto del capitalismo de desastre",
        "link": "https://solidarity-us.org/c-19-menaces-antigua-and-barbuda/",
        "country": "Antigua and Barbuda",
        "category": "healthcare, economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "The Coronavirus Outbreak Has Stalled Argentina’s Historic Effort To Legalize Abortion",
        "description_en": "Analysis of abortion movement in Argentina and status of legislation postponed due to pandemic ",

        
        "title_es": "El brote de coronavirus ha frenado el esfuerzo histórico de Argentina para legalizar el aborto",
        "description_es": "Análisis del movimiento del aborto en Argentina y el estado de la legislación pospuesta debido a una pandemia",
        "link": "https://www.huffpost.com/entry/argentina-abortion-legalization-coronavirus_n_5e7cae9bc5b6cb08a928f364",
        "country": "Argentina",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Argentina's COVID-19 Lessons",
        "description_en": "Analysis of country response that includes context of history of resistance, feminist movements, and democratic organizing",

        
        "title_es": "Lecciones COVID-19 de Argentina",
        "description_es": "Análisis de la respuesta del país que incluye el contexto de la historia de resistencia, movimientos feministas y organización democrática",
        "link": "https://www.jacobinmag.com/2020/04/argentina-covid-19-coronavirus-pandemic-response",
        "country": "Argentina",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Argentina Sees At Least 6 Femicides During Coronavirus Quarantine",
        "description_en": "Recounts Argentina's recent history of femicide and recent COVID-19 measures, including #BarbijoRojo/'Red Facemask'",

        
        "title_es": "Argentina ve al menos 6 feminicidios durante la cuarentena de coronavirus",
        "description_es": "Relata la historia reciente de feminicidios de Argentina y las recientes medidas COVID-19, incluyendo # BarbijoRojo / 'Red Facemask'",
        "link": "https://www.aljazeera.com/news/2020/04/argentina-sees-6-femicides-coronavirus-quarantine-200401185419939.html",
        "country": "Argentina",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Can Transgender People Speak in Armenia?",
        "description_en": "Comparison of COVID-19 experiences to transgender experiences in Armenia, with a look at disproportionate impacts",

        
        "title_es": "¿Pueden las personas transgénero hablar en Armenia?",
        "description_es": "Comparación de las experiencias de COVID-19 con las experiencias transgénero en Armenia, con una mirada a los impactos desproporcionados",
        "link": "https://www.opendemocracy.net/en/odr/can-transgender-people-speak-armenia/",
        "country": "Armenia",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Coronavirus Australia: Why Women Will Feel The Impact More Than Men",
        "description_en": "Exploration of gendered impacts in Lancet article with Australia-specific data on frontline workers and socio-economic status",

        
        "title_es": "Coronavirus Australia: por qué las mujeres sentirán el impacto más que los hombres",
        "description_es": "Exploración de los impactos de género en el artículo de Lancet con datos específicos de Australia sobre trabajadores de primera línea y estatus socioeconómico",
        "link": "https://7news.com.au/lifestyle/health-wellbeing/coronavirus-australia-why-women-will-feel-the-impact-more-than-men-c-748823?utm_campaign=share-icons&utm_source=facebook&utm_medium=social&tid=1584431328469&mc_cid=719f7558Organizing Tool&mc_eid=6bbf508b86",
        "country": "Australia",
        "category": "healthcare, economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Local Human Rights Organisation Urges Feminist Policy In COVID-19 Response",
        "description_en": "Description of Equality Bahamas' open letter calling for feminist, rights-based access to protection, info, resources",

        
        "title_es": "La organización local de derechos humanos insta a la política feminista en la respuesta COVID-19",
        "description_es": "Descripción de la carta abierta de Equality Bahamas que pide acceso feminista y basado en derechos a protección, información, recursos",
        "link": "https://ewnews.com/local-human-rights-organisation-urges-feminist-policy-in-covid-19-response",
        "country": "Bahamas",
        "category": "punitive, healthcare, education, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Trafficking Victims Join Fight Against COVID-19 in Azerbaijan",
        "description_en": "Description of a group of trafficking victims in a shelter sewing face-masks to contribute ",

        
        "title_es": "Las víctimas de la trata se unen a la lucha contra COVID-19 en Azerbaiyán",
        "description_es": "Descripción de un grupo de víctimas de trata en un refugio que cose máscaras faciales para contribuir",
        "link": "https://www.iom.int/news/trafficking-victims-join-fight-against-covid-19-azerbaijan",
        "country": "Azerbaijan",
        "category": "healthcare",
        "type": "mutual aid resource"
    },
    {
        "title_en": "Amid the COVID-19 Lockdown, the Feminist Emergency Must be Addressed",
        "description_en": "Feminist call for comprehensive plan to address gender-based violence, building upon standard measures with additional resources",

        
        "title_es": "En medio del bloqueo de COVID-19, se debe abordar la emergencia feminista",
        "description_es": "Llamamiento feminista para un plan integral para abordar la violencia de género, basándose en medidas estándar con recursos adicionales",
        "link": "https://menafn.com/1100018749/Amid-the-COVID-19-Lockdown-the-Feminist-Emergency-Must-be-Addressed",
        "country": "Venezuela",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "The Impact of COVID-19 on Gender Equality in the Arab Region",
        "description_en": "ECSWA/UN policy brief on anticipated impacts with recommended policy responses",

        
        "title_es": "El impacto de COVID-19 en la igualdad de género en la región árabe",
        "description_es": "Resumen de política de ECSWA / ONU sobre los impactos anticipados con las respuestas de política recomendadas",
        "link": "https://reliefweb.int/sites/reliefweb.int/files/resources/policy_brief_on_the_impact_of_covid-19_on_gender_relations_in_the_arab_region_en_1.pdf",
        "country": "Middle East and North Africa",
        "category": "healthcare, education, economy, childcare, labor, food, gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "COVID-19: Bahrainis Launch Initiative to Aid Jobless Foreigners",
        "description_en": "Brief description of food relief program designed and run by volunteers",

        
        "title_es": "COVID-19: Iniciativa de lanzamiento de Bahrein para ayudar a los extranjeros desempleados",
        "description_es": "Breve descripción del programa de ayuda alimentaria diseñado y dirigido por voluntarios",
        "link": "https://gulfnews.com/world/gulf/bahrain/covid-19-bahrainis-launch-initiative-to-aid-jobless-foreigners",
        "country": "Bahrain",
        "category": "food",
        "type": "mutual aid resource"
    },
    {
        "title_en": "Bangladeshi Women Play Crucial Role in Fight Against COVID-19",
        "description_en": "",

        
        "title_es": "Las mujeres de Bangladesh juegan un papel crucial en la lucha contra COVID-19",
        "description_es": "",
        "link": "https://netra.news/2020/bangladeshi-women-play-crucial-role-in-fight-against-covid-19-981",
        "country": "Bangladesh",
        "category": "healthcare, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 and Implications for Inclusive Economic Empowerment In CARICOM: Policy and Programme Considerations",
        "description_en": "Policy brief reviewing regional data and making broad policy recommendations for gender-responsive measures",

        
        "title_es": "COVID-19 e implicaciones para el empoderamiento económico inclusivo en CARICOM: consideraciones de políticas y programas",
        "description_es": "Resumen de políticas que revisa datos regionales y hace recomendaciones políticas generales para medidas con perspectiva de género",
        "link": "https://www2.unwomen.org/-/media/field%20office%20caribbean/attachments/publications/2020/social%20protection%20covid-19%20%20web%20doc%2020200327.pdf?la=en&vs=812",
        "country": "Latin America and the Caribbean",
        "category": "economy, childcare, labor, food, gender-based violence, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 En América Latina Y El Caribe: Cómo Incorporar A Las Mujeres Y La Igualdad De Género",
        "description_en": "COVID-19 in Latin America and the Caribbean: How to Incorporate Women and Gender Equality",

        
        "title_es": "COVID-19 En América Latina Y El Caribe: Cómo Incorporar A Las Mujeres Y La Igualdad De Género",
        "description_es": "COVID-19 in Latin America and the Caribbean: How to Incorporate Women and Gender Equality",
        "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/briefing%20coronavirusv1117032020.pdf?la=es&vs=930",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 In Latin America And The Caribbean: How To Incorporate Women And Gender Equality",
        "description_en": "",


        "title_es": "COVID-19 en América Latina y el Caribe: Cómo incorporar a las mujeres y la igualdad de género",
"description_es": "",
"link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/enbriefing%20coronavirusv1117032020.pdf?la=es&vs=0",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Gênero E COVID-19 Na América Latina E No Caribe: Dimensões De Gênero Na Respostae",
        "description_en": "Gender and COVID-19 in Latin America and the Caribbean: Gender Dimensions in the Response",

        
        "title_es": "Género y COVID-19 en América Latina y el Caribe: dimensiones de género en la respuesta",
        "description_es": "Género y COVID-19 en América Latina y el Caribe: dimensiones de género en la respuesta",
        "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/ptbriefing%20coronavirusv1117032020.pdf?la=es&vs=2922",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, race",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Le COVID-19 En Amérique Latine Et Aux Caraïbes: Intégration Des Femmes Et De L’égalité Des Sexes",
        "description_en": "COVID-19 in Latin America and the Caribbean: Integration of Women and Gender Equality",

        
        "title_es": "COVID-19 en América Latina y el Caribe: integración de la mujer e igualdad de género",
        "description_es": "COVID-19 en América Latina y el Caribe: Integración de la mujer e igualdad de género",
        "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/frbriefing%20coronavirusv1117032020.pdf?la=es&vs=232",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, misinformation",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Protecting the Caribbean’s Most Vulnerable People in the Face of COVID-19",
        "description_en": "Blog advocating a multi-faceted response the protects elderly, women, and children",

        
        "title_es": "Protección de las personas más vulnerables del Caribe frente a COVID-19",
        "description_es": "Blog que aboga por una respuesta multifacética que proteja a los ancianos, las mujeres y los niños",
        "link": "https://news.un.org/en/story/2020/04/1060842",
        "country": "Latin America and the Caribbean",
        "category": "healthcare, education, childcare, gender-based violence, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Coronavirus: Why are More Men Than Women Dying?",
        "description_en": "Article discussing differences observed worldwide with Belgium authorities; sex-disaggregated data not available for Belgium",

        
        "title_es": "Coronavirus: ¿Por qué mueren más hombres que mujeres?",
        "description_es": "Artículo que discute las diferencias observadas en todo el mundo con las autoridades belgas; datos desagregados por sexo no están disponibles para Bélgica",
        "link": "https://www.brusselstimes.com/all-news/belgium-all-news/102934/coronavirus-why-are-men-dying-more-than-women/",
        "country": "Belgium",
        "category": "gendered health impacts",
        "type": "scientific data"
    },
    {
        "title_en": "Mental Heath care Tips for children",
        "description_en": "Ministry of Health & Family Welfare, Government of India-How to take care of Mental Health of Children during Lockdown",

        
        "title_es": "Consejos para el cuidado de la salud mental para niños",
        "description_es": "Ministerio de Salud y Bienestar Familiar, Gobierno de India: cómo cuidar la salud mental de los niños durante el encierro",
        "link": "https://www.mohfw.gov.in/pdf/mentalhealthchildrean.pdf",
        "country": "India",
        "category": "healthcare, childcare",
        "type": "mutual aid resource"
    },
    {
        "title_en": "Mental Heath care Tips for Elders",
        "description_en": "Ministry of Health & Family Welfare, Government of India-How to take care of Mental Health of Elders during Lockdown",

        
        "title_es": "Consejos para el cuidado de la salud mental para ancianos",
        "description_es": "Ministerio de Salud y Bienestar Familiar, Gobierno de India: cómo cuidar la salud mental de los ancianos durante el encierro",
        "link": "https://www.mohfw.gov.in/pdf/mentalhealthelderly.pdf",
        "country": "India",
        "category": "healthcare",
        "type": "mutual aid resource"
    },
    {
        "title_en": "App for Covid-19",
        "description_en": "Government of India has launched Aarogya Setu app to take self assessment test, how to maintain social distancing, all information about Covid-19, to get all information about e-pass to be used only for the purpose of supplying essentials and also provides all updates of COVID-19",

        
        "title_es": "Aplicación para Covid-19",
        "description_es": "El Gobierno de la India lanzó la aplicación Aarogya Setu para realizar una prueba de autoevaluación, cómo mantener el distanciamiento social, toda la información sobre Covid-19, para obtener toda la información sobre el e-pass para ser utilizada únicamente con el fin de suministrar lo esencial y también proporciona todas las actualizaciones de COVID-19 ",
        "link": "https://www.mygov.in/aarogya-setu-app/",
        "country": "India",
        "category": "digital surveillance, healthcare, education",
        "type": "scientific data, mutual aid resource, organizing tool"
    },
    {
        "title_en": "Domestic Violence Decriminalized in Russia",
        "description_en": "Decriminalization of DV becomes even more dangerous with less access to private assistance",

        
        "title_es": "Violencia doméstica despenalizada en Rusia",
        "description_es": "La despenalización de DV se vuelve aún más peligrosa con menos acceso a asistencia privada",
        "link": "https://www.themoscowtimes.com/2020/03/30/when-your-home-isnt-a-safe-space-russian-women-fear-rise-in-domestic-violence-as-coronavirus-quarantine-starts-a69794",
        "country": "Russia",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Five Actions for Gender Equality in the Covid-19 Response",
        "description_en": "UNICEF is focusing on 5 key actions to mitigate GBV during the Covid Pandemic ",

        
        "title_es": "Cinco acciones para la igualdad de género en la respuesta Covid-19",
        "description_es": "UNICEF se está centrando en 5 acciones clave para mitigar la violencia de género durante la pandemia de Covid",
        "link": "https://www.unicef.org/documents/five-actions-gender-equality-coronavirus-disease-covid-19-response-technical-note",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Lessons from African Feminists Mobilizing Against COVID-19",
        "description_en": "Grassroots women’s organizations in Africa are mobilizing their communities to respond to Covid-19",

        
        "title_es": "Lecciones de feministas africanas que se movilizan contra COVID-19",
        "description_es": "Las organizaciones de mujeres de base en África están movilizando a sus comunidades para responder a Covid-19",
        "link": "https://blogs.ei.columbia.edu/2020/04/03/african-feminists-mobilizing-covid-19/",
        "country": "Anglophone Africa, Francophone Africa",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title_en": "SHARED RESPONSIBILITY, GLOBAL SOLIDARITY: Responding to the socio-economic impacts of COVID-19",
        "description_en": "A report sumarizing the impacts of Covid in relation to socio-economic status, responsibilites of everyone on the globe, and ways to minimize impacts",

        
        "title_es": "RESPONSABILIDAD COMPARTIDA, SOLIDARIDAD GLOBAL: Respuesta a los impactos socioeconómicos de COVID-19",
        "description_es": "Un informe que resume los impactos de Covid en relación con el estado socioeconómico, las responsabilidades de todos en el mundo y las formas de minimizar los impactos",
        "link": "https://unsdg.un.org/resources/shared-responsibility-Global-solidarity-responding-socio-economic-impacts-covid-19",
        "country": "Global",
        "category": "healthcare, economy, labor, gendered health impacts",
        "type": "scientific data"
    },
    {
        "title_en": "The Coronavirus, exhausting inequalities",
        "description_en": "Statistics of female domination of the medical and cleaning frontline and single parenting, emphasising inequality.",

        
        "title_es": "El coronavirus, desigualdades agotadoras",
        "description_es": "Estadísticas de dominación femenina de la línea médica y de limpieza y la crianza de los hijos solteros, haciendo hincapié en la desigualdad",
        "link": "https://www.letemps.ch/societe/coronavirus-exhausteur-dinegalites",
        "country": "Switzerland",
        "category": "childcare, gendered health impacts",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "Women's role is not to stay beautiful during the quarantine",
        "description_en": "Sexist memes regarding quarantine beauty standards bringing extra stress to women already juggling more responsibilities",

        
        "title_es": "El papel de la mujer no es mantenerse bella durante la cuarentena",
        "description_es": "Memes sexistas sobre los estándares de belleza en cuarentena que generan estrés adicional para las mujeres que ya hacen malabares con más responsabilidades",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_le-role-des-femmes-n-est-pas-de-rester-belles-durant-le-confinement-une-chronique-de-safia-kessas-et-sofia-cotsoglou?id=10471428",
        "country": "Belgium",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Some Governments are Using Coronavirus to Restrict Women's Rights",
        "description_en": "Governments neglecting abortions: classified as 'non-essential treatments', delaying bills, closing centers",

        
        "title_es": "Algunos gobiernos están utilizando el coronavirus para restringir los derechos de las mujeres",
        "description_es": "Gobiernos que descuidan los abortos: clasificados como 'tratamientos no esenciales', demorando facturas, cerrando centros",
        "link": "https://www.aljazeera.com/indepth/opinion/governments-coronavirus-restrict-women-rights-200412095859321.html",
        "country": "Global",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Issue of Quarantined Domestic Violence and How to Find Help",
        "description_en": "DV increase, explanation per country of call lines, pharmacy help and other government assistance.",

        
        "title_es": "Problema de violencia doméstica en cuarentena y cómo encontrar ayuda",
        "description_es": "aumento de DV, explicación por país de líneas de llamada, ayuda de farmacia y otra asistencia gubernamental",
        "link": "https://www.bbc.com/mundo/noticias-52009140",
        "country": "Argentina, Chile, Colombia, Uruguay, Mexico, Peru, Venezuela, Spain",
        "category": "gender-based violence",
        "type": "feminist statement or analysis, mutual aid resource, organizing tool"
    },
    {
        "title_en": "#TheOtherPandemic, A New Campaign Against Domestic Violence",
        "description_en": "Spotlight Initiative #LaOtraPandemia #TheOtherPandemic for quick access to assistance and information on domestic violence",

        
        "title_es": "#TheOtherPandemic, una nueva campaña contra la violencia doméstica",
        "description_es": "Iniciativa Spotlight #LaOtraPandemia #TheOtherPandemic para un acceso rápido a asistencia e información sobre violencia doméstica",
        "link": "https://www.clarin.com/sociedad/coronavirus-argentina-laotrapandemia-nueva-campana-violencia-genero_0_93t-SPt_k.html",
        "country": "Argentina",
        "category": "gender-based violence",
        "type": "organizing tool"
    },
    {
        "title_en": "Mexico: From Women's Uprising To COVD-19 Crisis",
        "description_en": "Accuses Mexican government for lack of gender specific responses while women suffer most",

        
        "title_es": "México: del levantamiento de las mujeres a la crisis COVD-19",
        "description_es": "Acusa al gobierno mexicano por falta de respuestas específicas de género mientras que las mujeres son las que más sufren",
        "link": "https://indypendent.org/2020/04/mexico-from-womens-uprising-to-covid-19-crisis/",
        "country": "Mexico",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Threatened by their invisibility: Prostitutes suffer due to COVID-19",
        "description_en": "Sex workers result to online work, receive no assistance, no safety, are left highly vulnerable.",

        
        "title_es": "Amenazado por su invisibilidad: las prostitutas sufren debido a COVID-19",
        "description_es": "Las trabajadoras sexuales resultan en el trabajo en línea, no reciben asistencia, no son seguras, quedan altamente vulnerables",
        "link": "https://larepublica.pe/mundo/2020/03/30/coronavirus-prostitutas-sufren-por-covid-19-cuarentena-agrava-su-situacion-amenazadas-por-proxenetas/",
        "country": "Peru",
        "category": "SRHR, punitive",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "How the Corona Virus Widens the Gender Pay Gap",
        "description_en": "Women are more highly represented in low-paying jobs, need to continue to close the gender pay gap",

        
        "title_es": "Cómo el virus Corona amplía la brecha salarial de género",
        "description_es": "Las mujeres están más representadas en trabajos mal remunerados, necesitan continuar cerrando la brecha salarial de género",
        "link": "https://www.cnn.com/2020/03/31/perspectives/equal-pay-day-coronavirus/index.html",
        "country": "United States",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 highlights the failure of neoliberal capitalism",
        "description_en": "This system has failed to deliver people's basic needs, including access to public health and universal social protections",

        
        "title_es": "COVID-19 destaca el fracaso del capitalismo neoliberal",
        "description_es": "Este sistema no ha logrado satisfacer las necesidades básicas de las personas, incluido el acceso a la salud pública y las protecciones sociales universales",
        "link": "https://apwld.org/covid-19-highlights-the-failure-of-neoliberal-capitalism-we-need-feminist-Global-solidarity/?",
        "country": "Global, Asia-Pacific",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "How Economic Fallout from the Coronavirus May Disproportionately Affect Women",
        "description_en": "More mothers are the sole or primary breadwinner; paid family or medical leave is essential",

        
        "title_es": "Cómo las consecuencias económicas del coronavirus pueden afectar desproporcionadamente a las mujeres",
        "description_es": "Más madres son el único o principal sostén de la familia; la licencia familiar o médica remunerada es esencial",
        "link": "https://www.forbes.com/sites/jenniferbarrett/2020/04/02/how-economic-fallout-from-the-coronavirus-may-disproportionately-affect-women/#775observed response12a836a",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "What Do Women and Working Families Need to Face COVID-19?",
        "description_en": "NWLC summerizes their 4 major priorities for Covid-19 responses.",

        
        "title_es": "¿Qué necesitan las mujeres y las familias trabajadoras para enfrentar COVID-19?",
        "description_es": "NWLC resume sus 4 prioridades principales para las respuestas de Covid-19",
        "link": "https://msmagazine.com/2020/03/18/what-do-women-and-working-families-need-to-face-covid-19/",
        "country": "United States",
        "category": "economy, childcare",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Solidarity in the time of a pandemic",
        "description_en": "Solidarity facebook group offering women childcare services, and other assistance helping mental health and jobs",

        
        "title_es": "Solidaridad en tiempos de pandemia",
        "description_es": "Grupo de facebook solidario que ofrece servicios de guardería para mujeres y otra asistencia para la salud mental y el empleo",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_solidarite-en-temps-de-pandemie-une-affaire-genree?id=10460115",
        "country": "Belgium",
        "category": "childcare",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Domestic Violence Cases Surge During COVID-19 Epidemic",
        "description_en": "Blog: Increased number of reports of domestic violence during COVID-19, victims being neglected",

        
        "title_es": "Aumento de casos de violencia doméstica durante la epidemia de COVID-19",
        "description_es": "Blog: Mayor número de denuncias de violencia doméstica durante COVID-19, víctimas desatendidas",
        "link": "http://www.sixthtone.com/news/1005253/domestic-violence-cases-surge-during-covid-19-epidemic",
        "country": "China",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Why we need to talk more about the potential for COVID-19 to Increase the Risk of Violence against Women and Girls",
        "description_en": "Summarizes the results of a rapid review of evidence on risks of GBV against girls and women",

        
        "title_es": "Por qué necesitamos hablar más sobre el potencial de COVID-19 para aumentar el riesgo de violencia contra las mujeres y las niñas",
        "description_es": "Resume los resultados de una revisión rápida de la evidencia sobre los riesgos de VG contra niñas y mujeres",
        "link": "http://www.sddirect.org.uk/news/2020/03/why-we-need-to-talk-more-about-the-potential-for-covid-19-to-increase-the-risk-of-violence-against-women-and-girls/",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "COVID-19 and Family Violence",
        "description_en": "FAQ on how COVID-19 pandemic and other natural disasters have increased the incidence of family violence",

        
        "title_es": "COVID-19 y violencia familiar",
        "description_es": "Preguntas frecuentes sobre cómo la pandemia de COVID-19 y otros desastres naturales han aumentado la incidencia de la violencia familiar",
        "link": "https://www.thelookout.org.au/family-violence-workers/covid-19-and-family-violence",
        "country": "Australia",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "What does coronavirus mean for violence against women?",
        "description_en": "The reasons why violence against women during the COVID-19 pandemic are increasing",

        
        "title_es": "¿Qué significa el coronavirus para la violencia contra las mujeres?",
        "description_es": "Las razones por las cuales la violencia contra las mujeres durante la pandemia COVID-19 están aumentando",
        "link": "https://womensmediacenter.com/news-features/what-does-coronavirus-mean-for-violence-against-women",
        "country": "Global, United States",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "How to stop Coronavirus Lockdown Leading to and Upsurge in Violence against Women ",
        "description_en": "The assumption that our homes are safe during the COVID-19 pandemic is false",

        
        "title_es": "Cómo detener el bloqueo del coronavirus que conduce y aumenta la violencia contra las mujeres",
        "description_es": "La suposición de que nuestros hogares están seguros durante la pandemia de COVID-19 es falsa",
        "link": "https://oxfamblogs.org/fp2p/how-to-stop-coronavirus-lockdown-leading-to-an-upsurge-in-violence-against-women%EF%BB%BF/",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Video Message from Antonio Guterres (UN Secretary-General) on Gender-Based Violence and COVID-19",
        "description_en": "Guterres notes the increase in domestic violence, urges governments to include prevention and redress as part of response plans",

        
        "title_es": "Mensaje de video de Antonio Guterres (Secretario General de las Naciones Unidas) sobre violencia de género y COVID-19",
        "description_es": "Guterres observa el aumento de la violencia doméstica, insta a los gobiernos a incluir la prevención y la reparación como parte de los planes de respuesta",
        "link": "https://www.youtube.com/watch?time_continue=10&v=SXxnZKom6sg&feature=emb_logo",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Make the Prevention and Redress of Violence Against Women a Key Part of National Response Plans for COVID-19'",
        "description_en": "Transcript of UN Guterres video message above",

        
        "title_es": "Hacer de la prevención y reparación de la violencia contra las mujeres una parte clave de los planes nacionales de respuesta para COVID-19 '",
        "description_es": "Transcripción del video mensaje de UN Guterres arriba",
        "link": "https://www.un.org/en/un-coronavirus-communications-team/make-prevention-and-redress-violence-against-women-key-part",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19: Gender Lens",
        "description_en": "UN Women calls for intergration of violence against women Data and services in COVID-19 surveys",

        
        "title_es": "COVID-19: Lente de género",
        "description_es": "ONU Mujeres llama a la integración de la violencia contra las mujeres Datos y servicios en las encuestas COVID-19",
        "link": "https://mailchi.mp/6f266ed24Organizing Tool9/covid-19-gender-equality-matters",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Feminist and women's right group demand gender responsive COVID 19 responses",
        "description_en": "Women's rights organisation cautions on the possibilities of increase in domestic and sexual violence as lockdown extends",

        
        "title_es": "El grupo feminista y de derechos de las mujeres exige respuestas COVID 19 sensibles al género",
        "description_es": "La organización de derechos de las mujeres advierte sobre las posibilidades de aumento de la violencia doméstica y sexual a medida que se extiende el bloqueo",
        "link": "https://soulwriteempire.com/lockdown-may-increase-domestic-violence-nigerian-women-rights-groups-warn/",
        "country": "Nigeria",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Gender violence is a silent pandemic",
        "description_en": "12 Women have been murdered since the quarantine began",

        
        "title_es": "La violencia de género es una pandemia silenciosa",
        "description_es": "12 mujeres han sido asesinadas desde que comenzó la cuarentena",
        "link": "https://elpais.com/sociedad/2020-04-07/la-violencia-de-genero-es-una-pandemia-silenciosa.html",
        "country": "Colombia",
        "category": "gender-based violence, punitive",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Gender violence: hotlines for victims during quarantine",
        "description_en": "Main numbers to call if faced with crisis ",

        
        "title_es": "Violencia de género: líneas directas para las víctimas durante la cuarentena",
        "description_es": "Números principales a los que llamar en caso de crisis",
        "link": "https://colombia.as.com/colombia/2020/04/15/tikitakas/1586907724_975905.html",
        "country": "Colombia",
        "category": "digital surveillance, gender-based violence, disability",
        "type": "mutual aid resource"
    },
    {
        "title_en": "BAHRAIN: ENSURE PROTECTION OF MIGRANT WORKERS IN COVID-19 RESPONSE: JOINT LETTER",
        "description_en": "A joint letter from a coalition of civil society organizations and trade unions, urging the Government of Bahrain to ensure that migrant workers receive adequate protection from COVID-19.",

        
        "title_es": "BAHRAIN: ASEGURE LA PROTECCIÓN DE LOS TRABAJADORES MIGRANTES EN LA RESPUESTA DEL COVID-19: CARTA CONJUNTA",
        "description_es": "Una carta conjunta de una coalición de organizaciones de la sociedad civil y sindicatos, instando al Gobierno de Bahrein a garantizar que los trabajadores migrantes reciban la protección adecuada contra COVID-19",
        "link": "https://www.amnesty.org/en/documents/mde11/2168/2020/en/",
        "country": "Bahrain",
        "category": "healthcare, economy, labor, race",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "UN Women commends Egypt's gender perspective in COVID-19 response plan",
        "description_en": "UN Women issued a statement commending the National Council for Women for its efforts to ensure that a gender perspective is adopted in Egypt’s COVID-19 response plan",

        
        "title_es": "ONU Mujeres elogia la perspectiva de género de Egipto en el plan de respuesta COVID-19",
        "description_es": "ONU Mujeres emitió una declaración elogiando al Consejo Nacional de la Mujer por sus esfuerzos para garantizar que se adopte una perspectiva de género en el plan de respuesta COVID-19 de Egipto",
        "link": "https://www.egypttoday.com/Article/2/84441/UN-Women-commends-Egypt-s-gender-perspective-in-COVID-19",
        "country": "Egypt",
        "category": "healthcare, education",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "Age, Sex, Existing Conditions of COVID-19 Cases and Deaths",
        "description_en": "Cases and death rate based on age and sex, doesn't go into more depth. ",

        
        "title_es": "Edad, sexo, condiciones existentes de casos y muertes de COVID-19",
        "description_es": "Los casos y la tasa de mortalidad según la edad y el sexo no profundizan más",
        "link": "https://www.worldometers.info/coronavirus/coronavirus-age-sex-demographics/",
        "country": "United States",
        "category": "healthcare",
        "type": "scientific data"
    },
    {
        "title_en": "ICNARC report on COVID-19 in critical care",
        "description_en": "Cases and death rates up to March 19th, does not dive into gender differences. ",

        
        "title_es": "Informe de ICNARC sobre COVID-19 en cuidados críticos",
        "description_es": "Los casos y las tasas de mortalidad hasta el 19 de marzo no se sumergen en las diferencias de género",
        "link": "https://www.icnarc.org/DataServices/Attachments/Download/a9875849-f16c-epolicy or law1-9124-00505601089b",
        "country": "United Kingdom",
        "category": "healthcare",
        "type": "scientific data"
    },
    {
        "title_en": "Sex, gender and COVID-19: Disaggregated data and health disparities",
        "description_en": "Whether sex and gender matter to clinical pathways and outcomes associated with COVID-19",

        
        "title_es": "Sexo, género y COVID-19: datos desglosados ​​y disparidades de salud",
        "description_es": "Si el sexo y el género son importantes para las vías clínicas y los resultados asociados con COVID-19",
        "link": "https://blogs.bmj.com/bmjgh/2020/03/24/sex-gender-and-covid-19-disaggregated-data-and-health-disparities/",
        "country": "Asia-Pacific, Pacific Islands, Anglophone Africa, Europe, Francophone Africa, Latin America and the Caribbean, Middle East and North Africa",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "Sex, gender and COVID-19 (Live data tracker)",
        "description_en": "Countries need to begin both collecting and publicly reporting sex-disaggregated data, however, they currently aren't. ",

        
        "title_es": "Sexo, género y COVID-19 (Rastreador de datos en vivo)",
        "description_es": "Los países deben comenzar a recopilar y reportar públicamente datos desagregados por sexo, sin embargo, actualmente no lo están haciendo",
        "link": "https://Globalhealth5050.org/covid19/",
        "country": "Global",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "Which occupations expose workers to COVID-19 most?",
        "description_en": "Explores which jobs create the most risk of exposure to COVID-19, examples are nurses, dentists. ",

        
        "title_es": "¿Qué ocupaciones exponen más a los trabajadores a COVID-19?",
        "description_es": "Explora qué trabajos crean el mayor riesgo de exposición a COVID-19, ejemplos son enfermeras, dentistas",
        "link": "https://autonomy.work/portfolio/jari/",
        "country": "United Kingdom",
        "category": "labor",
        "type": "scientific data"
    },
    {
        "title_en": "Covid-19 worldwide: we need precise data by age group and sex urgently",
        "description_en": "We need reporting on sex and age results as this is currently not being done. ",

        
        "title_es": "Covid-19 en todo el mundo: necesitamos datos precisos por grupo de edad y sexo con urgencia",
        "description_es": "Necesitamos informar sobre los resultados de sexo y edad, ya que esto no se está haciendo actualmente",
        "link": "https://www.bmj.com/content/369/bmj.m1366",
        "country": "Global",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "Does Covid-19 Hit Women and Men Differently? U.S. Isn’t Keeping Track",
        "description_en": "Though we're monitoring the effects of age on COVID-19, we're not doing that with sex. ",

        
        "title_es": "¿Covid-19 golpea a mujeres y hombres de manera diferente? Estados Unidos no está siguiendo la pista",
        "description_es": "Aunque estamos monitoreando los efectos de la edad en COVID-19, no lo estamos haciendo con el sexo",
        "link": "https://www.nytimes.com/2020/04/03/us/coronavirus-male-female-data-bias.html",
        "country": "United States",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title_en": "Covid-19 and gender equality",
        "description_en": "A webpage aimed at providing information on gender differences for effects of COVID-19.",

        
        "title_es": "Covid-19 y la igualdad de género",
        "description_es": "Una página web destinada a proporcionar información sobre las diferencias de género para los efectos de COVID-19",
        "link": "https://eige.europa.eu/topics/health/covid-19-and-gender-equality",
        "country": "Europe",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "Utilizing evidence-based research to incorporate a gendered lens for the COVID-19 pandemic",
        "description_en": "A portal that provides information useful for policymakers, practitioners, etc to make informed decisions.",

        
        "title_es": "Utilizando investigación basada en evidencia para incorporar una lente de género para la pandemia de COVID-19",
        "description_es": "Un portal que proporciona información útil para los responsables políticos, profesionales, etc. para tomar decisiones informadas",
        "link": "https://gap.hks.harvard.edu/gap-covid19",
        "country": "Global",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "A Meta-Analysis of the Association between Gender and Protective Behaviors in Response to Respiratory Epidemics and Pandemics",
        "description_en": "An analysis done on gender differences in how men behave versus women in pharmaceutical areas. ",

        
        "title_es": "Un metaanálisis de la asociación entre género y comportamientos protectores en respuesta a epidemias y pandemias respiratorias",
        "description_es": "Un análisis realizado sobre las diferencias de género en el comportamiento de los hombres frente a las mujeres en las áreas farmacéuticas",
        "link": "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5074573/",
        "country": "Global",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "Action: Call for a Feminist COVID-19 Policy",
        "description_en": "This article calls for and outlines the characteristics of a feminist policy for COVID-19",

        
        "title_es": "Acción: convocatoria de una política feminista de COVID-19",
        "description_es": "Este artículo solicita y describe las características de una política feminista para COVID-19",
        "link": "http://feministallianceforrights.org/blog/2020/03/20/action-call-for-a-feminist-covid-19-policy/",
        "country": "Global",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title_en": "COVID-19: Emerging gender data and why it matters",
        "description_en": "Women and girls face unequal access to work, healthcare, and face increasing domestic violence",

        
        "title_es": "COVID-19: datos de género emergentes y por qué es importante",
        "description_es": "Las mujeres y las niñas enfrentan un acceso desigual al trabajo, la atención médica y una violencia doméstica cada vez mayor",
        "link": "https://data.unwomen.org/resources/covid-19-emerging-gender-data-and-why-it-matters",
        "country": "Global",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "COVID-19 and gender: What do we know; what do we need to know?",
        "description_en": "Importance of capturing health impacts differing between women and men due to current inconsistencies ",

        
        "title_es": "COVID-19 y género: ¿Qué sabemos; qué necesitamos saber?",
        "description_es": "Importancia de capturar los impactos en la salud que difieren entre mujeres y hombres debido a las inconsistencias actuales",
        "link": "https://data.unwomen.org/features/covid-19-and-gender-what-do-we-know-what-do-we-need-know",
        "country": "Global",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title_en": "COVID-19 situation update for the WHO European Region",
        "description_en": "COVID-19 data from April 6th to 12th; does not include much gender data at all. ",

        
        "title_es": "Actualización de la situación COVID-19 para la Región Europea de la OMS",
        "description_es": "datos de COVID-19 del 6 al 12 de abril; no incluye muchos datos de género en absoluto",
        "link": "http://www.euro.who.int/en/health-topics/health-emergencies/coronavirus-covid-19/weekly-surveillance-report",
        "country": "Europe",
        "category": "healthcare",
        "type": "scientific data"
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

    puts "/n/n/n/n✅ ✅ ✅ ✅   resource data is alive ✅ ✅ ✅ ✅ "

}

puts "/n/n/n/n🔥🔥🔥🔥🔥🔥 DONE DONE DONE 🔥🔥🔥🔥🔥🔥"