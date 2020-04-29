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
        "title": "Support to women fleeing gender-based violence",
        "description": "Canada will give $40 million to Women and Gender Equality Canada (WAGE), up to $30 million of which will address immediate needs of shelters and sexual assault centres.",
        "link": "https://www.canada.ca/en/employment-social-development/news/2020/04/canada-announces-support-to-those-experiencing-homelessness-and-women-fleeing-gender-based-violence-during-the-coronavirus-disease-covid-19-pandemic.html",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Canada",
      },
      {
        "title": "Jump in domestic violence cases",
        "description": "Russia's little resources for DV victims become even more strained w/ rise of cases",
        "link": "https://www.wilsoncenter.org/blog-post/womens-choice-covid-19-or-abusive-partner",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Russia",
      },
    {
        "title": "NGOs ask Government to provide assistance for DV victims",
        "description": "Nine Russian organizations are asking the government to take urgent measures to provide assistance to victims in quarantine.",
        "link": "https://www.kommersant.ru/doc/4310901?fbclid=IwAR3bHlWrDg6XXW2pn3JScientific Data5-fV8a8lqKwIrVnPSBpkxMugUwrAk-pcEWSzTo",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Russia",
      },
      {
        "title": "Coronavirus takes a serious turn in Russia, and Putin no longer radiates confidence",
        "description": "Russia had record rise in cases, 2,558, even with tight restrictions in place",
        "link": "https://www.cnn.com/2020/04/14/europe/russia-coronavirus-putin-response-intl/index.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Russia",
      },
      {
        "title": "Putin's Bleak Covid-19 Admission: 'We Don't Have Much to Brag About'",
        "description": "Putin admits that Russia is vulnerable to Covid after making claims of Russia's invincibility",
        "link": "https://www.nytimes.com/2020/04/13/world/europe/coronavirus-russia-putin.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Russia",
      },
      {
        "title": "Putin recently ordered broad policy shifts to soften the pandemic's economic effects",
        "description": "Shifts include suggestion to raise the cap on most unemployment benefits by around 50%, and 6 month moratorium on bankruptcy",
        "link": "https://www.npr.org/sections/coronavirus-live-updates/2020/04/02/825859574/putin-extends-no-work-order-for-russia-until-may-in-over-covid-19-pandemic",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Russia",
      },
      {
        "title": "Moscow's Intrusive Online Regime Proposal for COVID-19 Prevention",
        "description": "Authorities can use residents' geolocation data and financial transactions to track movements and ensure compliance with the lockdown.",
        "link": "https://www.hrw.org/news/2020/04/01/moscows-intrusive-proposal-covid-19-prevention",
        "progressive": "need to watch",
        "category": "digital surveillance, punitive",
        "type": "temporary measure",
        "country": "Russia",
      },
      {
        "title": "Coronavirus: Peru cancels gender separation lockdown measure",
        "description": "Peru cancelled a controversial measure restricting public movement by gender",
        "link": "https://www.straitstimes.com/world/americas/coronavirus-peru-cancels-gender-separation-lockdown-measure",
        "progressive": "need to watch",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Peru",
      },
      {
        "title": "Coronavirus: Malaysian men in shopping muddle amid lockdown",
        "description": "Malasian men are unexpectedly finding themselves responsible for the grocery shopping.",
        "link": "https://www.bbc.com/news/blogs-news-from-elsewhere-52040256",
        "progressive": "need to watch",
        "category": "food",
        "type": "observed response",
        "country": "Malaysia",
      },
      {
        "title": "Tajik Workers Face Dire Future As Russia Closes Borders Over Coronavirus",
        "description": "Concerns over finanical repurcussions of extended border closure",
        "link": "https://www.rferl.org/a/tajik-workers-face-dire-future-as-russia-closes-borders-over-coronavirus/30495815.html",
        "progressive": "need to watch",
        "category": "economy, labor",
        "type": "observed response, temporary measure",
        "country": "Tajikistan",
      },
      {
        "title": "Economic Slowdown for 2020 and 2021",
        "description": "Impacts already on trade, investment projects, tourism, revenue, national currency, labor migration",
        "link": "https://www.adb.org/news/tajikistan-economy-slow-down-sharply-2020-and-2021-weighed-covid-19-pandemic-adb",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Tajikistan",
      },
      {
        "title": "Turkmenistan is denying the existence of Covid cases",
        "description": "Turkmen have been arrested for discussing the pandemic in public and can't get reliable information from their government",
        "link": "https://thediplomat.com/2020/04/did-turkmenistan-really-ban-the-word-coronavirus/",
        "progressive": "regressive",
        "category": "healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Turkmenistan",
      },
      {
        "title": "World Health Day in Turkmenistan",
        "description": "State media reported that festivities were held as usual, but sources say that they were cancelled",
        "link": "https://thediplomat.com/2020/04/turkmenistan-celebrates-world-health-day-unwisely/",
        "progressive": "regressive",
        "category": "healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Turkmenistan",
      },
      {
        "title": "Kazakhstan Experiments With Surveillance Technology to Battle Coronavirus Pandemic",
        "description": "Government is using SmartAstana tracking app and 'Sergek' video surveillance technology",
        "link": "https://jamestown.org/program/kazakhstan-experiments-with-surveillance-technology-to-battle-coronavirus-pandemic/",
        "progressive": "regressive",
        "category": "digital surveillance, healthcare",
        "type": "temporary measure",
        "country": "Kazakhstan",
      },
      {
        "title": "Government puts more pressure on Kazakh Civil Rights Activists amid covid spread",
        "description": "Government concern of spotlight on covid response leads them to silence protesters",
        "link": "https://www.rferl.org/a/kazakhstan-kazakh-activists-coronavirus-human-rights-economy/30542645.html",
        "progressive": "regressive",
        "category": "punitive",
        "type": "temporary measure, observed response",
        "country": "Kazakhstan",
      },
      {
        "title": "Kazakhstan announces $10bn economic package",
        "description": "Government aims to help stave off impact of coronavirus as oil price war between Saudi Arabia and Russia makes it harder to stabilise economy.",
        "link": "https://www.aljazeera.com/news/2020/03/kazakhstan-announces-10bn-economic-package-200328091921790.html",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Kazakhstan",
      },
      {
        "title": "Kazakhstan plans to increase monthly export quotas for wheat and flour",
        "description": "Kazakhstan opted to limit exports last month to ensure steady domestic supply amid border closures and lockdowns",
        "link": "https://www.reuters.com/article/kazakhstan-grains-export-quotas/kazakhstan-to-increase-wheat-flour-export-quotas-in-coming-months-idUSL8N2BW317",
        "progressive": "need to watch",
        "category": "economy, food",
        "type": "temporary measure",
        "country": "Kazakhstan",
      },
      {
        "title": "Lack of Refuge for Kazakhstan's Domestic Violence Survivors",
        "description": "Most shelters stopped accepting new survivors due to the mandatory quarantine measures",
        "link": "https://www.hrw.org/news/2020/04/09/lack-refuge-kazakhstans-domestic-violence-survivors",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kazakhstan",
      },
      {
        "title": "Weakened Legal Enforcement for Domestic Violence Cases",
        "description": "Quarantine measures inhibit enforcement of laws that to begin with weren't well enforced",
        "link": "https://www.unwomen.org/en/news/stories/2020/4/from-where-i-stand-dina-smailova-on-covid-19",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kazakhstan",
      },
      {
        "title": "Kyrgyzstan has proposed measures to help economy but warns funds are limited",
        "description": "Even with foreign aid government announces that it will not be able to respond like more developed countries have",
        "link": "https://eurasianet.org/kyrgyzstan-government-promises-help-but-warns-of-limited-options",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Kyrgyzstan",
      },
      {
        "title": "Curfew makes it more difficult to escape Domestic Violence",
        "description": "",
        "link": "https://www.hrw.org/news/2020/04/08/women-risk-domestic-violence-during-kyrgyzstans-lockdown",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kyrgyzstan",
      },
      {
        "title": "MP raises issue of growth of domestic violence in quarantine",
        "description": "",
        "link": "https://kaktus.media/doc/409757_depytat:_razreshaetsia_li_vyhodit_iz_doma_jertvam_semeynogo_nasiliia_pri_ygroze_jizni_video.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Kyrgyzstan",
      },
      {
        "title": "Adopted Strict Regulations to Fight COVID-19",
        "description": "country's law enforcement bodies and armed forces have been imbued with renewed powers",
        "link": "https://thediplomat.com/2020/04/uzbekistan-adopts-strict-regulations-to-fight-covid-19/",
        "progressive": "need to watch",
        "category": "punitive, healthcare",
        "type": "temporary measure",
        "country": "Uzbekistan",
      },
      {
        "title": "USAID has announced an additional contribution to Uzbekistan's efforts to combat COVID-19",
        "description": "For priority areas to provide support for the needs of Uzbekistan's citizens, health professionals, and government",
        "link": "https://www.usaid.gov/uzbekistan/press-releases/apr-2-2020-usaid-announces-850000-support-uzbekistan-efforts-covid-19",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Uzbekistan",
      },
      {
        "title": "In Panama, coronavirus lockdown means separating men and women",
        "description": "Statement describing Panamas gender segergation to limit number of individuals outside at once",
        "link": "https://www.cnn.com/2020/04/01/world/panama-coronavirus-sex-intl/index.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "temporary measure",
        "country": "Panama",
      },
      {
        "title": "The Socialist Party wants better support for women",
        "description": "Socialist Party encourages national economic launch focus on female dominated professions to protect essential work.",
        "link": "https://www.24heures.ch/suisse/ps-veut-meilleur-soutien-femmes/story/10231664",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title": "Due to Coronavirus, the situation of the homeless becomes worrying",
        "description": "Homelessness issues rise, women's shelter closed, gym offered as alternative, male shelter remains open.",
        "link": "https://www.rts.ch/info/suisse/11205350-face-au-coronavirus-la-situation-des-sans-domicile-fixe-inquiete.html",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Switzerland",
      },
      {
        "title": "Consequences of the virus: Vulnerability for prostitutes with no revenue",
        "description": "Sex workers banned from working, are left homeless, unknowing how to apply for welfare.",
        "link": "https://www.swissinfo.ch/fre/les-cons%C3%A9quences-de-la-pand%C3%A9mie_pr%C3%A9carit%C3%A9-ou-clandestinit%C3%A9-pour-des-prostitu%C3%A9es-sans-revenu/45679246",
        "progressive": "regressive",
        "category": "SRHR",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title": "Isolation against the virus more difficult to control in prison",
        "description": "No visits for prisoners, compensation: 20% salary bonus for prisoner workers and free postal services.",
        "link": "https://www.rts.ch/info/regions/vaud/11214097-l-isolement-contre-le-coronavirus-encore-plus-dur-a-gerer-en-prison.html",
        "progressive": "progressive",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Switzerland",
      },
      {
        "title": "Increase of home births due to Covid-19",
        "description": "Augmented demand for home births from fears and hospital restrictions but needs lots of preparation.",
        "link": "https://www.rts.ch/info/suisse/11191496-hausse-des-accouchements-a-domicile-en-raison-de-la-pandemie-de-covid-19.html",
        "progressive": "need to watch",
        "category": "SRHR",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title": "Victims quarantined with their abuser, a nightmare",
        "description": "Reports of domestic violence constant, but fears of increase encourages neighbour acting and call line.",
        "link": "https://www.swissinfo.ch/fre/crise-du-coronavirus-_victimes-confin%C3%A9es-avec-leur-agresseur--le-cauchemar-/45646534",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Switzerland",
      },
      {
        "title": "Domestic Violence: During Quarantine, Keep Dialogue Open at All Costs",
        "description": "32% increase in DV, $1 million government expenditure for support centers and alerting in pharmacies.",
        "link": "https://www.france24.com/fr/20200409-violences-conjugales-pendant-le-confinement-maintenir-%C3%A0-tout-prix-le-dialogue-avec-les-victimes",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response, temporary measure",
        "country": "France",
      },
      {
        "title": "Covid-19: What is planned for pregnant women during the quarantine?",
        "description": "Strong encouragement of online medicine for pregnant women, with essential visits limited.",
        "link": "https://www.liberation.fr/checknews/2020/03/19/covid-19-qu-est-il-prevu-pour-les-femmes-enceintes-pendant-le-confinement_1782158",
        "progressive": "progressive",
        "category": "SRHR, healthcare, gendered health impacts",
        "type": "temporary measure",
        "country": "France",
      },
      {
        "title": "Corona Virus: A center will welcome infected mothers and babies",
        "description": "Mother & Child Protection center will reform as a center for infected mothers and new babies",
        "link": "https://www.ouest-france.fr/sante/virus/coronavirus/coronavirus-un-centre-pmi-de-l-essonne-va-accueillir-les-jeunes-meres-atteintes-de-covid-19-et-leurs-6805105",
        "progressive": "progressive",
        "category": "childcare",
        "type": "temporary measure",
        "country": "France",
      },
      {
        "title": "Covid 19: Combining online work and child care, mission impossible?",
        "description": "Parents finding childcare and online work impossible with government action being insuffient.",
        "link": "https://france3-regions.francetvinfo.fr/auvergne-rhone-alpes/puy-de-dome/clermont-ferrand/coronavirus-covid-19-concilier-teletravail-garde-enfants-mission-impossible-1806632.html",
        "progressive": "regressive",
        "category": "childcare, economy",
        "type": "observed response",
        "country": "France",
      },
      {
        "title": "Corona Virus: Quarantine and mental load",
        "description": "Female employment at risk with no childcare available, male online work dominates in the household.",
        "link": "https://www.forbes.fr/business/coronavirus-confinement-et-charge-mentale/?cn-reloaded=1",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "France",
      },
      {
        "title": "Covid-19: Caregivers are harassed by neighbours from fear of infection",
        "description": "Medical workers receiving letters and threats from neighbours/landlords across the country from contamination fear",
        "link": "https://francais.rt.com/france/73558-covid-19-soignants-harceles-par-leurs-voisins-par-peur-contagion",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "France",
      },
      {
        "title": "France extends access to abortions during Covid-19 Pendemic",
        "description": "Medical abortion pills may be prescribed over the phone or video consultation",
        "link": "http://www.rfi.fr/en/france/20200411-france-extends-access-to-abortions-during-covid-19-pandemic",
        "progressive": "progressive",
        "category": "SRHR",
        "type": "temporary measure",
        "country": "France",
      },
      {
        "title": "Against the coronavirus, women are mostly in the front line",
        "description": "Although victims are majority male, fear female infection will rise from medical field female dominance.",
        "link": "https://www.bastamag.net/coronavirus-Covid19-femmes-soignantes-TheLancet-inegalites-epidemies-sante",
        "progressive": "need to watch",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "France",
      },
      {
        "title": "Coronavirus in Belgium: Pharmacies as precious for domestic violence victims",
        "description": "The city enforces pharmacy as safe locations for victims to reach the authorities.",
        "link": "https://www.rtl.be/info/belgique/societe/coronavirus-en-belgique-les-pharmacies-relais-precieux-pour-les-victimes-de-violences-conjugales-a-mons-1208638.aspx",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Belgium",
      },
      {
        "title": "Women are strongly impacted by COVID-19: 4 explanations",
        "description": "Increased domestic violence reports, front line dominated by women, higher financial consequences, longer work days.",
        "link": "https://www.solidaire.org/articles/les-femmes-durement-touchees-par-la-crise-du-coronavirus-la-preuve-par-4",
        "progressive": "regressive",
        "category": "labor, gendered health impacts, gender-based violence",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title": "Single mothers and quarantine: a challenge",
        "description": "High numbers of single mothers makes practical and financial situations difficult.",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_meres-solo-et-confinement-la-galere?id=10462565",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title": "Coronavirus: Domestic violence risk increases due to quarantine",
        "description": "Call line open for victims, but lack of spaces/shelters for women to leave abusers.",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_coronavirus-le-risque-de-violences-conjugales-augmente-a-cause-du-confinement?id=10460606",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title": "Latin America: Cut Prison Crowding to Fight COVID-19",
        "description": "Human Rights Watch suggests alternatives to detention for pregnant women, girls, primary caregivers",
        "link": "https://www.hrw.org/news/2020/04/02/latin-america-cut-prison-crowding-fight-covid-19",
        "progressive": "need to watch",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title": "Displaced women and girls in Latin America threatened by COVID-19",
        "description": "Lack of rights-based health policies protecting group from hunger, homelessness, xenophobia, health services",
        "link": "https://www.opendemocracy.net/en/democraciaabierta/displaced-women-and-girls-latin-america-threatened-covid-19/",
        "progressive": "regressive",
        "category": "SRHR, gendered health impacts, race",
        "type": "observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title": "Quaratine: Alerts of increased cases of violence against young Feminist Statement or Analysis4kids",
        "description": "Reaching and educating child violence victims through call lines and hashtags (mainly girls).",
        "link": "https://www.lanacion.com.ar/comunidad/cuarentena-alertan-aumento-casos-violencia-ninos-ninas-nid2352289",
        "progressive": "progressive",
        "category": "childcare, gender-based violence",
        "type": "temporary measure",
        "country": "Argentina",
      },
      {
        "title": "Mitigating Risks and Adjusting to Isolation: How Argentina is Dealing",
        "description": "Sixteen reported deaths of domestic violence in three weeks, violence reports up by 39%",
        "link": "https://www.orfonline.org/expert-speak/mitigating-risks-and-adjusting-to-isolation-how-argentina-is-dealing-with-covid19-64567/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title": "Argentinian Justice suggests house arrest for COVID-19 for special prisoners",
        "description": "Argentine Government recommends alternative measures for imprisoned pregnant women or women imprisoned with their children",
        "link": "https://www.vistazo.com/seccion/mundo/actualidad-mundial/justicia-argentina-sugiere-prision-domiciliaria-por-covid-19-en",
        "progressive": "need to watch",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title": "What to do if you are pregnant during this epidemic?",
        "description": "During pandemic, pregnancy, childbirth, newborn care are all classified as essential and must be maintained",
        "link": "https://www.animalpolitico.com/2020/04/que-hacer-epidemia-covid-si-estas-embarazada/",
        "progressive": "progressive",
        "category": "SRHR, gendered health impacts",
        "type": "policy or law",
        "country": "Mexico",
      },
      {
        "title": "Mexico's prostitutes homeless as coronavirus keeps clients home, shuts hotels",
        "description": "Hotels shutting leave sex workers hungry and on the street, highly vulnerable, insufficient government assistance",
        "link": "https://www.reuters.com/article/us-health-coronavirus-mexico-sex-workers/mexicos-prostitutes-end-up-homeless-as-coronavirus-keeps-clients-at-home-shuts-hotels-idUSKCN21R26C",
        "progressive": "regressive",
        "category": "SRHR, economy, gendered health impacts",
        "type": "observed response",
        "country": "Mexico",
      },
      {
        "title": "Colombian women's football suffers bigger cuts than men's game",
        "description": "Only three clubs female players contracts, leaving remaining female players without social security during crisis.",
        "link": "https://www.dw.com/en/colombian-womens-football-cries-foul-after-suffering-bigger-cuts-than-mens-game/a-53161998",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "To beat the virus, Colombia tries separating men and women",
        "description": "Men and women only allowed out on alternate days in Bogota to reduce crowds.",
        "link": "https://www.nytimes.com/2020/04/15/world/americas/virus-colombia-bogota-men-women.html",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title": "Lockdown in Colombia will affect the right to abortion",
        "description": "Access to sexual and reproductive health services hindered for colombian and venezuelan women, mainly abortions.",
        "link": "https://Globalvoices.org/2020/04/03/lockdown-in-colombia-will-affect-the-right-to-abortion-says-human-rights-lawyer/",
        "progressive": "regressive",
        "category": "SRHR, gender-based violence",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "COVID-19 delays gender data collection on Colombian border",
        "description": "Women's groups and organisations hindered data collection for womens empowerment, delaying gender equality advancement.",
        "link": "https://www.devex.com/news/covid-19-delays-gender-data-collection-on-colombian-border-96839",
        "progressive": "regressive",
        "category": "",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "Three women murdered on first day of Colombia's Coronavirus lockdown",
        "description": "Domestic violence reports have tripled since the quarantine, feminicides augmented.",
        "link": "https://colombiareports.com/three-women-murdered-on-first-day-of-colombias-coronavirus-lockdown/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "Are women the most vulnerable to COVID-19?",
        "description": "High percentage of female informal employment, causing financial instability, low incomes, low protection mechanisms",
        "link": "https://www.telesurtv.net/news/mujeres-mas-vulnerables-pandemia-coronavirus-20200408-0051.html",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "COVID-19 and its impacts on the lives of women",
        "description": "Call for collective action for economic inclusion, strenghtened support, programs for women during crisis and future",
        "link": "https://www.elespectador.com/opinion/covid-19-y-su-impacto-en-la-vida-de-las-mujeres-columna-911064",
        "progressive": "progressive",
        "category": "labor",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title": "Colombian organisations mobilise to help the most vulnerable",
        "description": "Collective action initiatives, one by Trans Community Network to collect funds/food for sex workers",
        "link": "https://www.france24.com/es/20200321-covid19-colombia-organizaciones-ayuda-vulnerables",
        "progressive": "progressive",
        "category": "SRHR",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title": "Covid-19 subsidy in Chile: See how you can benefit",
        "description": "Subsidy of aproximately $60USD to parents, caregivers and extended to pregnant women.",
        "link": "https://libero.pe/ocio/1553605-bono-ayuda-familiar-covid-19-chile-2020-rut-revisa-beneficiario-dv-rut-ips-fecha-pago-familiar-banco",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Chile",
      },
      {
        "title": "Quarantine in Chile: Domestic violence cases increase by 70%",
        "description": "Reported 70% increase in domestic violence reports after first week of quarantine, promoting call line.",
        "link": "https://larepublica.pe/genero/2020/04/10/cuarentena-en-chile-denuncias-por-violencia-de-genero-aumentaron-en-un-70-atmp/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title": "Subsidy of 380 soles: And you could not receive it?",
        "description": "Government subsidy to financially independent workers. Subsidy only receivable by woman of family.",
        "link": "https://mag.elcomercio.pe/respuestas/bono-380-soles-que-hacer-si-mi-familiar-no-ha-podido-cobrar-bono-yo-me-quedo-en-casa-por-razones-de-fuerza-mayor-nnda-nnlt-noticia/",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure",
        "country": "Peru",
      },
      {
        "title": "Peru is Quarantining Men and Women on Different Days",
        "description": "Policy for gender-specific days to leave the home. Concerns for LGBTQ+ community.",
        "link": "https://www.businessinsider.com/peru-quarantining-men-and-women-different-days-2020-4",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Peru",
      },
      {
        "title": "Covid-19: How is the State Protecting Quaratined Domestic Violence Victims?",
        "description": "Government declares DV victims can seek police intervention, call line #100 and 14 shelters provided.",
        "link": "https://rpp.pe/politica/estado/covid-19-en-medio-de-la-cuarentena-como-protege-el-estado-a-las-victimas-de-violencia-familiar-noticia-1254585?ref=rpp",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "policy or law",
        "country": "Peru",
      },
      {
        "title": "Transgender ID clash with police checks during gender restricted movements",
        "description": "Police demands ID for transgender individuals during gender separated quarantine- high discrimination/ abuse of power.",
        "link": "https://peru21.pe/lima/coronavirus-lgtb-peru-i-coronavirus-peru-policia-exige-dni-a-personas-transgenero-pese-a-aclaracion-del-presidente-martin-vizcarra-video-video-pandemia-coronavirus-covid-19-emergencia-sanitaria-estado-de-emergencia-nacional-noticia/",
        "progressive": "regressive",
        "category": "SRHR",
        "type": "observed response",
        "country": "Peru",
      },
      {
        "title": "Protocol for Women in Ecuador who face a double pandemic",
        "description": "Reports of DV have rapidly decreased, so safer call lines installed, 700 psycologists hired.",
        "link": "http://laoferta.com/2020/04/12/protocolo-de-auxilio-para-las-mujeres-en-ecuador-que-afrontan-una-doble-pandemia/",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Ecuador",
      },
      {
        "title": "Corona virus: Cynthia Viteri donates her salary to pregnancy attention",
        "description": "Mayor of Guayaquil donates salary to help pregnancies as the health system has collpased.",
        "link": "https://www.eluniverso.com/guayaquil/2020/04/12/nota/7812021/coronavirus-ecuador-alcaldesa-cynthia-viteri-donara-su-sueldo",
        "progressive": "regressive",
        "category": "healthcare, gendered health impacts",
        "type": "temporary measure, observed response",
        "country": "Ecuador",
      },
      {
        "title": "More obstacles during pandemic for safe abortions in Latin America",
        "description": "Legal abortions very difficult to obtain, organisations help communicate for access to termination medicine.",
        "link": "https://elpais.com/sociedad/2020-04-09/la-pandemia-obstaculiza-aun-mas-el-aborto-seguro-en-america-latina.html",
        "progressive": "need to watch",
        "category": "SRHR, healthcare",
        "type": "observed response",
        "country": "Ecuador",
      },
      {
        "title": "Feminicide during the quarantine for pandemic in Panama",
        "description": "Two women murdered, reported feminicides on the rise in 2020, fear the worst during quarantine.",
        "link": "https://www.elmostrador.cl/braga/2020/04/20/asesinatos-de-mujeres-durante-confinamiento-por-pandemia-impactan-en-panama/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Panama",
      },
      {
        "title": "The new discrimination LGBTI by Covid-19",
        "description": "Separated outdoor days by identity card sex, declares Minister of Health. Fear of LGBTI community.",
        "link": "https://www.lavanguardia.com/participacion/lectores-corresponsales/20200405/48284394819/panama-secregacion-sexo-cuarentena-covid-19-discriminacion-lgbti.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Panama",
      },
      {
        "title": "How the gender restrictions will work in Panama",
        "description": "Specific gender days and departure time based on ID number and sex to get essential goods.",
        "link": "https://peru21.pe/mundo/coronavirus-panamai-periodista-detalla-como-funciona-la-restriccion-de-transito-segun-el-sexo-en-panama-fotos-pandemia-coronavirus-covid-19-emergencia-sanitaria-estado-de-emergencia-nacional-lgtb-noticia/",
        "progressive": "need to watch",
        "category": "",
        "type": "temporary measure",
        "country": "Panama",
      },
      {
        "title": "Pharmacy brings forward $3 million USD for maternal health",
        "description": "Pharmacy $3 million USD to avoid maternal deaths, by improving pregnant women services during quarantine.",
        "link": "https://www.laestrella.com.pa/nacional/200420/farmaceutica-aportara-3-millones-atencion-critica-madres-covid-19",
        "progressive": "progressive",
        "category": "gendered health impacts",
        "type": "temporary measure",
        "country": "Costa Rica, El Salvador, Panama",
      },
      {
        "title": "Women, reprecussions of quarantine and domestic violence",
        "description": "Observed increased domestic violence, they question why Costa Rica has not implemented mechanisms for women.",
        "link": "https://www.elpais.cr/2020/04/17/mujeres-repercusiones-del-confinamiento-a-raiz-del-coronavirus-y-violencia-domestica/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Costa Rica",
      },
      {
        "title": "Pregnant, birth and lactaction in times of coronavirus",
        "description": "Maternity services received advice for safe births. Although women are increasingly choosing home births.",
        "link": "https://www.lostiempos.com/doble-click/vida/20200329/embarazo-parto-lactancia-tiempos-coronavirus",
        "progressive": "need to watch",
        "category": "SRHR",
        "type": "temporary measure",
        "country": "Costa Rica",
      },
      {
        "title": "Cuban mother and daughters die in hands of former partner",
        "description": "First reported feminicide in the midde of the Covid-19 pandemic, warns augmentation of domestic violence.",
        "link": "https://diariodecuba.com/cuba/1587466942_16976.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Cuba",
      },
      {
        "title": "Violence and Covid-19: disputed abuse",
        "description": "Fear of increasing domestic violence, victim psycholocical and legal support via phone and mail available.",
        "link": "http://www.juventudrebelde.cu/suplementos/sexo-sentido/2020-04-14/violencia-y-covid-19-flagelos-en-disputa",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Cuba",
      },
      {
        "title": "Latin America fights against domestic violence during Covid-19",
        "description": "Two civil society initiatives: two independent online counseling platforms via phone, email and social media.",
        "link": "https://www.dw.com/es/am%C3%A9rica-latina-lucha-contra-la-violencia-de-g%C3%A9nero-en-tiempos-del-coronavirus/a-52971832",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Cuba",
      },
      {
        "title": "Cambodia: COVID-19 Clampdown on Free Speech",
        "description": "HRW has documented the arrests of 17 people since late January 2020 for sharing information about the coronavirus in Cambodia, including 5 women and one 14-year old girl.",
        "link": "https://www.hrw.org/news/2020/03/24/cambodia-covid-19-clampdown-free-speech#",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Cambodia",
      },
      {
        "title": "Prioritize the needs of those at increased risk of gender-based violence in responding to the COVID-19 situation",
        "description": "Civil society organiztions in Cambodia wrote open letter to government to express concern for gendered issues to be exacerbated during and after the current pandemic.",
        "link": "https://www.business-humanrights.org/en/cambodia-15-ngos-call-on-govt-to-prioritise-the-needs-of-people-at-increased-risk-of-gender-based-violence-in-responding-to-the-covid-19",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Cambodia",
      },
      {
        "title": "Scared of Coronavirus, Pregnant Women Avoid Hospitals",
        "description": "Large numbers of pregnant women are staying away from hospitals and cancel prenatal appointments because of fears of infection.",
        "link": "https://www.voacambodia.com/a/scared-of-coronavirus-pregnant-women-avoid-hospitals-/5368829.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Cambodia",
      },
      {
        "title": "Myanmar Factory Uses COVID-19 to Union Bust",
        "description": "Myan Mode garment factory permanently fired all 520 union members (mostly young women) and withheld March wages, citing a decrease in orders due to COVID-19",
        "link": "https://www.solidaritycenter.org/myanmar-factory-uses-covid-19-to-union-bust/",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "MSWRR to draw project plan for COVID-19 prevention, control at IDP camps",
        "description": "Ministry of Social Welfare, Relief and Resettlement to draft project plan for prevention, control and treatment of the Coronavirus infection at IDP camps.",
        "link": "https://www.Globalnewlightofmyanmar.com/mswrr-to-draw-project-plan-for-covid-19-prevention-control-at-idp-camps/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "Melons rot, factories shutter: Myanmar's COVID-19 fallout",
        "description": "Thousands of factory jobs (majority women-held) have been lost and border trade with China has been decimated as Myanmar reels from the impact of the coronavirus pandemic.",
        "link": "https://frontiermyanmar.net/en/melons-rot-factories-shutter-myanmars-covid-19-fallout",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "Myanmar lockdown leads to rise in domestic violence",
        "description": "There has been a spike in the number of domestic violence complaints since the government began the lockdowns.",
        "link": "https://www.nst.com.my/world/region/2020/04/580944/myanmar-lockdown-leads-rise-domestic-violence",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "In Myanmar, Hunger Overshadows COVID-19 for Yangon's Poorest",
        "description": "25,000 Myanmar garment workers from more than 40 factories lost their jobs because of the pandemic; mostly women, they face impending hunger during lockdown.",
        "link": "https://thediplomat.com/2020/04/in-myanmar-hunger-overshadows-covid-19-for-yangons-poorest/",
        "progressive": "need to watch",
        "category": "food",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "EU Pledges Support for Women Garment Factory Workers in Myanmar",
        "description": "EU will provide 5 million euros (7.9 billion kyats) as an emergency fund to support female workers in Myanmar's garment sector who are impacted by COVID-19.",
        "link": "https://www.irrawaddy.com/specials/myanmar-covid-19/eu-pledges-support-for-women-garment-factory-workers-in-myanmar.html",
        "progressive": "progressive",
        "category": "labor",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "Myanmar: 3 Charged for COVID-19 Street Art",
        "description": "Myanmar's government charged three street artists (one woman) arrested for painting a mural that raises awareness about the coronavirus pandemic because it violates law criminalizing speech that 'insults' religion.",
        "link": "https://www.hrw.org/news/2020/04/08/myanmar-3-charged-covid-19-street-art",
        "progressive": "regressive",
        "category": "punitive",
        "type": "temporary measure",
        "country": "Myanmar",
      },
      {
        "title": "Covid-19 impact and responses: Myanmar",
        "description": "Unemployed workers are to receive 6 months healthcare and some maternity benefits; pregnant workers not permitted in factories, but to receive some financial support.",
        "link": "https://www.fairwear.org/covid-19-dossier/covid-19-guidance-for-production-countries/covid-19-impact-and-responses-myanmar/",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "Covid-19 (Indonesia): Union slams corona rapid test plan for House while workers still on the job",
        "description": "Confederation of United Indonesian Workers criticised plan to carry out rapid test for Covid-19 on 575 members of the House of Representatives (DPR) but not workers (mostly women) who work in close proximity without protection.",
        "link": "http://www.europe-solidaire.org/spip.php?article52591",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title": "COVID-19: the gendered impacts of the outbreak",
        "description": "Travel restrictions cause financial challenges and uncertainty for mostly female foreign domestic workers, many of whom travel in southeast Asia between the Philippines, Indonesia, Hong Kong, and Singapore.",
        "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30526-2/fulltext",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title": "Domestic violence rises amid coronavirus lockdowns in Asia",
        "description": "Because gender disparity for household labor is high in Asia, National Commission on Violence Against Women warned that women face increased physical violence during partial lockdown, urged equal distribution of labor in families.",
        "link": "https://www.dw.com/en/domestic-violence-rises-amid-coronavirus-lockdowns-in-asia/a-53077378",
        "progressive": "need to watch",
        "category": "childcare, labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title": "Labour Plan Options for Enterprises Affected by COVID-19",
        "description": "Based on the guidance from Ministry of Health of Vietnam: Garment workers (mostly women) will not pay penalties for missing work due to COVID-19; employees must negotiate severance in case of illness; empoyers can unilaterally terminate labour contracts but just give appropriate notice.",
        "link": "https://betterwork.org/wp-content/uploads/2020/04/BWV-Guide-for-factories_07.04.pdf",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Vietnam",
      },
      {
        "title": "Bangkok slum residents prepare for worst as virus grips Thailand",
        "description": "Older people, especially women, often play a very important role looking after children and ill relatives. Those living in poverty in cramped slums may suffer disproportionately.",
        "link": "https://www.aljazeera.com/news/2020/03/bangkok-slum-residents-prepare-worst-virus-grips-thailand-200322074123038.html",
        "progressive": "need to watch",
        "category": "economy, childcare",
        "type": "observed response",
        "country": "Thailand",
      },
      {
        "title": "MCO-linked domestic violence rises",
        "description": "Data from the Women and Family Development Ministry shows Malaysia has seen a spike in the number of domestic violence cases following the Movement Control Order (MCO).",
        "link": "https://www.nst.com.my/news/exclusive/2020/04/581233/mco-linked-domestic-violence-rises",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Malaysia",
      },
      {
        "title": "Don't Nag Your Husband During Lockdown, Malaysia's Government Advises Women",
        "description": "The Women and Family Development Ministry created online posters urging women to refrain from sarcasm, dress for the office, not nag their husbands, and more to maintain family harmony (the ministry apologized the following day)",
        "link": "https://www.npr.org/2020/04/01/825051317/dont-nag-your-husband-during-lock-down-malaysias-government-advises-women",
        "progressive": "regressive",
        "category": "gendered health impacts",
        "type": "observed response",
        "country": "Malaysia",
      },
      {
        "title": "Service and untold sacrifices: Women on the Covid-19 frontline in Malaysia",
        "description": "Several Bills, including the Sexual Harassment Bill, Anti-Discrimination Against Women Bill and anti-stalking laws, are scheduled to be tabled at the next Parliament sitting.",
        "link": "https://www.malaymail.com/news/malaysia/2020/04/13/service-and-untold-sacrifices-women-on-the-covid-19-frontline-in-malaysia/1856067",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Malaysia",
      },
      {
        "title": "East Timor: EU, UN reassign US$1 mln to combat violence against women during pandemic",
        "description": "$1 million (€914,000) from their existing Spotlight programme in East Timor to respond to the risk of violence against women in the context of the Covid-19 pandemic.",
        "link": "https://www.macaubusiness.com/east-timor-eu-un-reassign-us1-mln-to-combat-violence-against-women-during-pandemic/",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "East Timor",
      },
      {
        "title": "How the COVID-19 pandemic affects vulnerable women in Singapore",
        "description": "Article looks at how this disaster is playing out for five particularly vulnerable groups of women in Singapore.",
        "link": "https://www.aware.org.sg/2020/03/how-the-covid-19-pandemic-affects-vulnerable-women-in-singapore/",
        "progressive": "regressive",
        "category": "economy, labor, gendered health impacts, gender-based violence",
        "type": "observed response",
        "country": "Singapore",
      },
      {
        "title": "Covid-19 and the increase in domestic violence in Asia Pacific",
        "description": "Association of Women for Action and Research (AWARE) women's helpline saw a 33 percent increase in calls related to family violence in February compared to last February, evne though national data shows a decline in cases from 2016 to 2019.",
        "link": "https://www.eco-business.com/news/covid-19-and-the-increase-in-domestic-violence-in-asia-pacific/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Singapore",
      },
      {
        "title": "Philippines: COVID-19 Response Plan (03 April 2020)",
        "description": "The Humanitarian country Team (HCT) COVID-19 Response Plan does not appear to currently address the increase in gender-based violence.",
        "link": "https://reliefweb.int/report/philippines/philippines-covid-19-response-plan-03-april-2020",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Philippines",
      },
      {
        "title": "Philippines urged to combat escalating domestic violence cases amid virus lockdowns",
        "description": "At least one woman or child is abused every 10 minutes in the Philippines, the Center for Women's Resources said in recent report, and quarantine measures make it harder for victims seek help.",
        "link": "https://www.philstar.com/headlines/2020/04/06/2005855/philippines-urged-combat-escalating-domestic-violence-cases-amid-virus-lockdowns",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Philippines",
      },
      {
        "title": "Stay home' and work? Implications of COVID-19 and the UK Governmental",
        "description": "Potential economic impact of COVID-19 on self-employed in the UK, how to possibly support self-employed women",
        "link": "https://isbegen.wordpress.com/2020/03/27/stay-home-and-work/",
        "progressive": "regressive",
        "category": "economy",
        "type": "temporary measure, policy or law",
        "country": "United Kingdom",
      },
      {
        "title": "Most Brown and Black Americans are Exposing Themselves to Coronavirus",
        "description": "Telework disparity disproportionately affects black and brown workers, particularly low-income work",
        "link": "https://www.vice.com/en_us/article/xgqpyq/most-brown-and-black-americans-are-exposing-themselves-to-coronavirus-for-a-paycheck",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title": "Low-paid women in UK at 'high risk' of Corona Exposure",
        "description": "89% of nurses, 84% of care workers are women, some at highest risk are lowest paid",
        "link": "https://www.theguardian.com/world/2020/mar/29/low-paid-women-in-uk-at-high-risk-of-coronavirus-exposure",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "United Kingdom",
      },
      {
        "title": "When Face-to-Face Interactions Become an Occupational Hazard: Jobs in the time of COVID-19",
        "description": "The pattern of potential job losses during COVID-19 outbreak is likely to disproportionately affect vulnerable groups (women, low income)",
        "link": "https://www.brookings.edu/blog/future-development/2020/03/30/when-face-to-face-interactions-become-an-occupational-hazard-jobs-in-the-time-of-covid-19/",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States, Global",
      },
      {
        "title": "Equal Pay Day more important than ever amid COVID-19",
        "description": "NYC working against wage gap by creating a more supportive, family friendly workplace.",
        "link": "https://thehill.com/opinion/civil-rights/490088-equal-pay-day-more-important-than-ever-amid-covid-19",
        "progressive": "progressive",
        "category": "economy, labor",
        "type": "policy or law",
        "country": "United States",
      },
      {
        "title": "Lockdown:Domestic workers struggle to make ends meet as families refuse to pay",
        "description": "Domestic workers in India are struggling since they cannot work and are therefore have no income",
        "link": "https://www.hindustantimes.com/mumbai-news/lockdown-domestic-workers-struggle-to-make-ends-meet-as-families-refuse-to-pay/story-aB6zzwdUyQYnivAJoCMtEJ.html",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "India",
      },
      {
        "title": "How the Corona Virus affects HR, Benefits and Retirement Professionals",
        "description": "COVID-19 will make gender pay inequities worse",
        "link": "https://www.benefitspro.com/2020/04/07/covid-19-will-make-gender-pay-inequities-worse/?cmp=share_twitter",
        "progressive": "regressive",
        "category": "",
        "type": "",
        "country": "",
      },
      {
        "title": "COVID-19 worsening gender inequality, more women have lost jobs-UN",
        "description": "UN Secretary General: although the virus might be killing more men than women, women at greater risk of falling into poverty",
        "link": "https://dailypost.ng/2020/04/10/covid-19-worsening-gender-inequality-more-women-have-lost-jobs-un/",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "Global",
      },
      {
        "title": "Female frontline workers in China typical of coronavirus economic and domestic burden",
        "description": "Women make up more than 90% of frontline health workers in Hubei province, disproportionately exposed.",
        "link": "https://amp-scmp-com.cdn.ampproject.org/c/s/amp.scmp.com/news/china/society/article/3079363/female-frontline-workers-china-typical-coronavirus-economic-and",
        "progressive": "regressive",
        "category": "labor",
        "type": "observed response",
        "country": "Global, China",
      },
      {
        "title": "The economic impact of coronavirus on women is 'devasting' and excarcerbating gender inequality",
        "description": "The COVID-19 crisis is exacerbating structural inequities for women and women of color",
        "link": "https://www.newsweek.com/economic-impact-coronavirus-women-devastating-exacerbating-gender-inequality-says-1497325",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title": "Women on the frontlines of COVID-19",
        "description": "Working class women have been left dramatically and disproportionately unprepared for the ensuing economic crisis",
        "link": "https://www.liberationnews.org/women-on-the-frontlines-of-covid-19/",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title": "Gender Pay Gap poses 'shocking' pitfall if isolation goes on",
        "description": "Gender pay gap is at heart of serious potential frontline worker deficiency, if isolation continues",
        "link": "https://www.canberratimes.com.au/story/6721006/gender-pay-gap-poses-shocking-pitfall-if-isolation-goes-on/",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "Australia",
      },
      {
        "title": "Protecting women using DFS during the Pandemic",
        "description": "Increased emphasis on online banking, training to prevent illiterate women from scams or 'loans'",
        "link": "https://www.siaedge.com/news/2020/3/27/protecting-women-using-dfs-during-the-pandemic",
        "progressive": "progressive",
        "category": "economy",
        "type": "observed response",
        "country": "Rwanda, Kenya, Ghana",
      },
      {
        "title": "The Economic Devastation of COVID-19 is hitting Women Particularly Hard",
        "description": "Women, especially black women, are losing the majority of jobs. If 2008 was a 'mancession', this is becoming a 'femcession'.",
        "link": "https://www.huffpost.com/entry/women-coronavirus-lost-jobs_n_5e90observed response63c5b685fbc7d4a557?",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title": "The Impact of COVID-19 on Gender Equality",
        "description": "A paper on the effects of COVID-19 on employment, child care needs, gender norms and policy options.",
        "link": "https://www.nber.org/papers/w26947",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title": "How Millions of Women Became the Most Essential Workers in America",
        "description": "The essential workers are more likely to be non-white women and are underpaid and undervalued",
        "link": "https://www.nytimes.com/2020/04/18/us/coronavirus-women-essential-workers.html",
        "progressive": "regressive",
        "category": "economy, labor",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title": "COVID-19 fuels domestic violence in China",
        "description": "Domestic violence increases in China during COVID-19 pandemic, campaign has lead to more awareness",
        "link": "https://supchina.com/2020/03/24/covid-19-fuels-domestic-violence-in-china/",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "China",
      },
      {
        "title": "Ending Violence against Women in the Context of COVID-19",
        "description": "UN Trust Fund to End Violence against Women (UN Trust Fund) remain committed to partners in the field",
        "link": "https://www.unwomen.org/en/news/stories/2020/3/ending-violence-against-women-in-the-context-of-covid-19",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "India, Congo",
      },
      {
        "title": "Increase in Domestic Violence Feared during Virus Lockdown",
        "description": "Initial reports of increased domestic violence during COVID-19 crisis but full extent unlikely until post-crisis",
        "link": "https://www.axios.com/coronavirus-domestic-violence-de98Organizing Tool02-51f2-49ec-919c-c70052e29eef.html",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "United States",
      },
      {
        "title": "Gender based Violence on the time of Corona",
        "description": "The increase in gender based violence during corona lockdown is a Global problem, not unique to South Africa",
        "link": "https://hsf.org.za/publications/hsf-briefs/gender-based-violence-in-the-time-of-corona",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Global, South Africa",
      },
      {
        "title": "The pandemic is impacting women across Latin America",
        "description": "High informal work make women more at risk of no revenue/savings as jobs cease.",
        "link": "https://www.france24.com/es/20200324-coronavirus-mujeres-latinas-violencia-trabajo-informal",
        "progressive": "regressive",
        "category": "economy",
        "type": "observed response",
        "country": "Ecuador",
      },
      {
        "title": "Tough times for French prostitutes as Covid-19 drives away customers",
        "description": "Prostitutes unable to claim 1,500 euros in aid since no self employed status, risking health.",
        "link": "https://www.thecitizen.co.tz/news/Tough-times-for-France-prostitutes-as-Covid-19-lockdown-/1840386-5504006-6aumcz/index.html",
        "progressive": "regressive",
        "category": "SRHR, economy",
        "type": "observed response",
        "country": "France",
      },
      {
        "title": "Coronavirus: Hotel opens in Brussels for female domestic violence victims",
        "description": "With all refuges and centers full, hotel welcomes 50 female domestic violence victims and children",
        "link": "https://www.rtbf.be/info/regions/bruxelles/detail_coronavirus-ouverture-a-bruxelles-d-un-hotel-pour-les-femmes-victimes-de-violences-familiales-ou-conjugales?id=10476521",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Belgium",
      },
      {
        "title": "Coronavirus: Disabled women express their invisibility",
        "description": "Disabled women, especially mothers, explain their lack of attention in goverment measures, creating difficult lifestyle.",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_coronavirus-les-femmes-handicapees-s-expriment-contre-leur-invisibilite?id=10466980",
        "progressive": "regressive",
        "category": "disability",
        "type": "observed response",
        "country": "Belgium",
      },
      {
        "title": "Draft Kingdom of Cambodia Royal Government of Cambodia Ministry of Health Cambodia COVID-19 Emergency Response Project",
        "description": "The project contains provisions to prevent Sexual Sexual Exploitation and Abuse (SEA), gender-based violence (GBV)",
        "link": "http://documents.worldbank.org/curated/en/439691585153106101/pdf/Environmental-and-Social-Commitment-Plan-ESCP-Cambodia-COVID-19-Emergency-Response-Project-P173815.pdf",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Cambodia",
      },
      {
        "title": "Myanmar: Displacement Camps Are COVID-19 Tinderboxes",
        "description": "77% of 350,000 IDPs are women/children (Relief Web) and are trapped in overcrowded camps with substandard health care, lacking water, sanitation, and other services.",
        "link": "https://www.hrw.org/news/2020/03/30/myanmar-displacement-camps-are-covid-19-tinderboxes",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Myanmar",
      },
      {
        "title": "Covid-19 impact and responses: Indonesia",
        "description": "Garment workers (mostly women) to receive full pay if suspected infection; government has allocated funds for \"Pre-Working Card\" to provide dismissed employees with funds for four months.",
        "link": "https://www.fairwear.org/covid-19-dossier/covid-19-guidance-for-production-countries/covid-19-impact-and-responses-indonesia/",
        "progressive": "need to watch",
        "category": "labor",
        "type": "observed response",
        "country": "Indonesia",
      },
      {
        "title": "Don't worry about being detained, just come forward for Covid-19 testing, please",
        "description": "Defence department said the government's focus now was on combating Covid-19, refugees shouldn't fear detention if they come forward to be tested.",
        "link": "https://www.nst.com.my/news/nation/2020/03/577004/dont-worry-about-being-detained-just-come-forward-covid-19-testing-please",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Malaysia",
      },
      {
        "title": "Spike in domestic and sexual violence  in Nigeria",
        "description": "Lagos State Domestica and Sexual violence team set up leveraged on technology to set up helplines to proivde rapid response and help to victims",
        "link": "https://guardian.ng/tag/domestic-violence/",
        "progressive": "need to watch",
        "category": "",
        "type": "",
        "country": "Nigeria",
      },
      {
        "title": "Extra Judicial Killings and sexual harassment",
        "description": "Law enforcement agencies phyiscially  citizens to enforce the stay at home and sexual molestation of women",
        "link": "http://venturesafrica.com/security-agents-killed-more-nigerians-than-covid-19-during-lockdown/",
        "progressive": "need to watch",
        "category": "",
        "type": "",
        "country": "Nigeria",
      },
      {
        "title": "9.5 million women will not access a safe abortion in 2020 due to the pandemic",
        "description": "Colombia is one of the countries in the LAC region who will be most affected by funding cuts on SRHR",
        "link": "https://www.france24.com/es/20200417-9-5-millones-de-mujeres-no-podr%C3%ADan-acceder-a-un-aborto-seguro-en-2020-por-la-pandemia",
        "progressive": "regressive",
        "category": "SRHR",
        "type": "policy or law, temporary measure",
        "country": "Colombia",
      },
      {
        "title": "$5 Cans of Tuna: Colombia Corruption Thrives During Coronavirus Outbreak",
        "description": "Colombian authorities have detected widespread overcharging for food and medical supplies meant to help the Andean country deal with its coronavirus outbreak",
        "link": "https://www.nytimes.com/reuters/2020/04/14/world/americas/14reuters-health-coronavirus-colombia-corruption.html",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "Map of cases and deaths by coronavirus by department in Colombia",
        "description": "Tracker of Covid-19 cases per region in Colombia",
        "link": "https://colombia.as.com/colombia/2020/04/16/tikitakas/1587037898_987177.html?fbclid=IwAR2WZQTPaJB8S5_hQtIqPj8yaujO9lhD242gVVYff9Szb7L2ZTMk0h262zw",
        "progressive": "need to watch",
        "category": "digital surveillance",
        "type": "temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title": "The challenges facing education during the Covid-19 pandemic",
        "description": "Teachers and student challenges stories from the pandemic",
        "link": "https://www.elespectador.com/coronavirus/los-retos-que-enfrenta-la-educacion-durante-la-pandemia-del-covid-19-articulo-912593",
        "progressive": "regressive",
        "category": "education",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "Colombia asks for international support to assist Venezuelans in the midst of a coronavirus crisis",
        "description": "Government made an urgent call to increase the resources allocated to the migrant population with possible contagion or infected by Covid-19",
        "link": "https://www.elespectador.com/coronavirus/colombia-pide-apoyo-internacional-para-atender-venezolanos-en-medio-de-crisis-por-coronavirus-articulo-914347?fbclid=IwAR0f6P7rrzLpsAueUGR7D7BtIxDLNZOsKRi2kWNsg7UCxwUN60VEnSy-53E",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title": "Colombia, the virus and the always forgotten",
        "description": "The government punishes those who breach quarantine, but has been unable to provide the conditions that would allow them to stay home without starving",
        "link": "https://www.nytimes.com/es/2020/04/17/espanol/opinion/coronavirus-colombia.html?fbclid=IwAR0jjP1Edv3MCkdvnVxRktzuSlMlaborwQZ9qhaT_Q6DztgseQoGrS7-BnxebE",
        "progressive": "regressive",
        "category": "punitive, economy",
        "type": "policy or law, temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title": "Gender Dimensions in the COVID-19 crisis in Colombia: Incorporating women and the gender equality approach in the response to COVID-19 is a priority.",
        "description": "Men and women face different impacts in the face of the health emergency, and emotional overload due to uncertainty, isolation and the economic burden that grows due to the loss of jobs",
        "link": "https://www2.unwomen.org/-/media/field%20office%20colombia/documentos/publicaciones/2020/01/covid19_onu_mujeres-colombia.pdf?la=es&vs=1437",
        "progressive": "need to watch",
        "category": "punitive, childcare, economy, gendered health impacts",
        "type": "policy or law, observed response",
        "country": "Colombia",
      },
      {
        "title": "Coronavirus: To beat the virus, Colombia tries separating men and women",
        "description": "On odd-numbered days, men can leave the house to seek out essentials. On even-numbered days, it's the women's turn.",
        "link": "https://www.straitstimes.com/world/americas/coronavirus-to-beat-the-virus-colombia-tries-separating-men-and-women?fbclid=IwAR3wthnzlzRgjVXMRpylXP1wUa4b7S-35v04HMjv7dP_-PFFtn9QUnp00TU",
        "progressive": "need to watch",
        "category": "healthcare, gender-based violence",
        "type": "policy or law, temporary measure",
        "country": "Colombia",
      },
      {
        "title": "Colombia: Indigenous Peoples will die from COVID-19 or from hunger if the state does not act immediately",
        "description": "Colombia must urgently take appropriate measures to guarantee the rights of Indigenous Peoples",
        "link": "https://www.amnesty.org/en/latest/news/2020/04/colombia-pueblos-indigenas-covid19-hambre/",
        "progressive": "regressive",
        "category": "healthcare, food, race",
        "type": "policy or law, observed response",
        "country": "Colombia",
      },
      {
        "title": "Facing the COVID-19 Outbreak City of Bogotá",
        "description": "the report that summarizes the Measures to Contain COVID-19 implemented by the Mayor's Office of Bogotá",
        "link": "http://internacional.secretariageneral.gov.co/Facing_the_COVID-19_Outbreak_Bogota_City_Hall_eng",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare, economy, food, gender-based violence, labor",
        "type": "policy or law, temporary measure",
        "country": "Colombia",
      },
      {
        "title": "We Need to Solve This: Colombia's Amazing race to Build a $1,000 Ventilator",
        "description": "As COVID-19 bears down, a spontaneous alliance of techies and health professionals in Medellin making promising progress on an urgent medical problem.",
        "link": "https://www.vanityfair.com/news/2020/04/colombias-amazing-race-to-build-a-1000-ventilator?fbclid=IwAR0wJapnFmiBVbuEQ7_pmwv922DALMLAdp4F75LQ34beasfkm5ZbZmnJLBA",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "Government enables WhatsApp line to answer questions about coronavirus",
        "description": "Whatsapp citizen response line for Covid-19",
        "link": "https://www.publimetro.co/co/noticias/2020/04/15/gobierno-habilita-linea-whatsapp-atender-dudas-coronavirus.html?fbclid=IwAR3UZL2y7XZAvTY2DOEF9Uv_s-EqNeg0ka0x4xmwR4ZH2-Tht0IRzwK9orc",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare",
        "type": "temporary measure",
        "country": "Colombia",
      },
      {
        "title": "New economic relief measures for the payment of basic services",
        "description": "",
        "link": "https://twitter.com/JoMalagon/status/1250946202356547584?s=20",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law",
        "country": "Colombia",
      },
      {
        "title": "What the Peak and Gender Law Says About the Transgender population",
        "description": "The measure is applied in Bogotá to control the agglomeration of people in supermarkets and banks within the framework of the national quarantine.",
        "link": "https://colombia.as.com/colombia/2020/04/14/tikitakas/1586886106_102899.html?omnil=resscrlltit",
        "progressive": "progressive",
        "category": "gender-based violence, healthcare",
        "type": "policy or law",
        "country": "Colombia",
      },
      {
        "title": "For not complying with the quarantine there are 8,405 fines in Medellín",
        "description": "Although the streets are empty, in some areas there are still crowds.",
        "link": "https://www.eltiempo.com/colombia/medellin/por-no-acatar-la-cuarentena-van-8-405-multas-en-medellin-y-su-area-metropolitana-480998",
        "progressive": "progressive",
        "category": "punitive",
        "type": "policy or law",
        "country": "Colombia",
      },
      {
        "title": "UN Colombia Envoy: Ex-Combatants Making Masks Amid Pandemic",
        "description": "former combatants are now making face masks to respond to the new coronavirus pandemic, but COVID-19 hasn't stopped violence against social leaders, human rights defenders and ex-fighters",
        "link": "https://www.nytimes.com/aponline/2020/04/14/world/americas/ap-un-virus-outbreak-un-colombia.html",
        "progressive": "regressive",
        "category": "punitive",
        "type": "policy or law, temporary measure, observed response",
        "country": "Colombia",
      },
      {
        "title": "The odyssey of Venezuelan families to return to their country from Colombia and flee the coronavirus",
        "description": "Migrants have been walking for many weeks to arrive to their country",
        "link": "https://noticias.caracoltv.com/colombia/la-odisea-de-varias-familias-venezolanas-para-volver-su-pais-desde-colombia-y-huir-del-coronavirus-nid226373?fbclid=IwAR0ZnYvHEB9NM6far1u6OqCwZYSTABkMVoLNNyEWRdmLJkj2cUdSfQ6MDy8",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor, gender-based violence",
        "type": "observed response",
        "country": "Colombia",
      },
      {
        "title": "Chilbirth in Venezuela, Where Women's Deaths are a State Secret",
        "description": "Few parts of that system have been as damaged as its maternity wards, where the most critical birthing tools have broken down or just disappeared, sometimes forcing doctors to turn women away.",
        "link": "https://www.nytimes.com/2020/04/10/world/americas/venezuela-pregnancy-birth-death.html",
        "progressive": "regressive",
        "category": "SRHR, healthcare, gender-based violence, disability",
        "type": "policy or law, observed response",
        "country": "Venezuela",
      },
      {
        "title": "US ignores calls to suspend Venezuela and Iran sanctions amid coronavirus pandemic",
        "description": "Spread of coronavirus has not slowed drumbeat of successive layers of punitive measures imposed by the state department",
        "link": "https://www.theguardian.com/world/2020/mar/31/us-ignores-Global-appeals-suspend-sanctions-coronavirus-pandemic-iran-venezuela",
        "progressive": "regressive",
        "category": "punitive",
        "type": "policy or law, temporary measure, observed response",
        "country": "Venezuela",
      },
      {
        "title": "The unusual official figures of the Chavista regime on the coronavirus in Venezuela",
        "description": "Maduro says his regime has done more diagnostic tests than any other country in the region",
        "link": "https://www.infobae.com/america/venezuela/2020/04/13/las-insolitas-cifras-oficiales-del-regimen-chavista-sobre-el-coronavirus-en-venezuela/",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title": "After Fleeing Crisis, Venezuelan Migrants Now Struggle In Coronavirus Lockdown",
        "description": "immigrants in the country are struggling after the authorities passed measures to prevent the spread of the new coronavirus.",
        "link": "https://www.npr.org/2020/04/03/824004353/after-fleeing-crisis-venezuelan-migrants-now-struggle-in-coronavirus-lockdown",
        "progressive": "regressive",
        "category": "economy, labor, food",
        "type": "policy or law, temporary measure",
        "country": "Venezuela",
      },
      {
        "title": "Coronavirus, sex and drugs: how privileged kids of Venezuela's elite still party in the pandemic",
        "description": "The potential risk is high for the pandemic to overwhelm an already crippled health system, where hospitals lack water, electricity and supplies.",
        "link": "https://www.scmp.com/news/world/americas/article/3078952/coronavirus-sex-and-drugs-how-privileged-kids-venezuelas-elite",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title": "Venezuela elderly feel 'sentenced to euthanasia' under coronavirus quarantine",
        "description": "The plight of senior citizens was already acute in Venezuela following six years of brutal economic crisis and chronic problems with power and water services",
        "link": "https://www.reuters.com/article/us-health-coronavirus-venezuela-elderly/venezuela-elderly-feel-sentenced-to-euthanasia-under-coronavirus-quarantine-idUSKBN21O1EE",
        "progressive": "regressive",
        "category": "healthcare, disability, economy",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title": "Returning Venezuelans face 'nightmare' coronavirus quarantine",
        "description": "Advocates say migrants returning to Venezuela amid coronavirus lockdowns are forced into unsanitary gov't quarantine.",
        "link": "https://www.aljazeera.com/news/2020/04/returning-venezuelans-forced-stirring-pot-diseases-200408195801387.html",
        "progressive": "regressive",
        "category": "healthcare, economy, gender-based violence",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title": "Many Venezuelan Hospitals Lack Basics To Function, Let Alone Handle COVID-19",
        "description": "Venezuela faces catastrophic consequences from the new coronavirus pandemic, which threatens to overwhelm its crumbling health system.",
        "link": "https://www.npr.org/2020/04/10/831569313/many-venezuelan-hospitals-lack-basics-to-function-let-alone-handle-covid-19?utm_campaign=npr&utm_medium=social&utm_term=nprnews&utm_source=facebook.com&fbclid=IwAR0GWtjEwhULAGTHUG7DFeminist Statement or Analysis8bVDR84un1EtgqyNyPIIVJPvlho8-9OU6Xm00",
        "progressive": "regressive",
        "category": "healthcare, economy, disability",
        "type": "observed response",
        "country": "Venezuela",
      },
      {
        "title": "Paraguay Has South America's Best Record on Coronavirus After Early Lockdown",
        "description": "Paraguay did not wait imposing a strict lockdown in early March, before neighboring countries.",
        "link": "https://www.nytimes.com/reuters/2020/04/14/world/americas/14reuters-health-coronavirus-paraguay.html",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "policy or law, observed response",
        "country": "Paraguay",
      },
      {
        "title": "Coronavirus in Paraguay: Face-to-face classes would not return this year",
        "description": "",
        "link": "http://www.c9n.com.py/actualidad/coronavirus-en-paraguay-clases-presenciales-no-volver%C3%ADan-este-a%C3%Scientific Datao-73249?fbclid=IwAR148mL63y8xJSYhZ7hTQvEeC95EGFh42_1ABlefNf2z23wPQmfIx_0KhNE",
        "progressive": "need to watch",
        "category": "education",
        "type": "policy or law, observed response",
        "country": "Paraguay",
      },
      {
        "title": "Paraguayans go hungry as coronavirus lockdown ravages livelihoods",
        "description": "Early, aggressive measures seem to be controlling the disease but the pandemic has laid bare the country's social inequalities",
        "link": "https://www.theguardian.com/Global-development/2020/apr/12/paraguay-coronavirus-hungry-social-inequalities?fbclid=IwAR04_TPgFrvaXWK8gR0oyZRjUhSRHROP8RXzWMjlX5P2FD7PKoj0tG3jGurcI",
        "progressive": "regressive",
        "category": "economy, food",
        "type": "policy or law, observed response",
        "country": "Paraguay",
      },
      {
        "title": "Violence and confinement: Services for victims continue to operate",
        "description": "All institutions have registered increases in cases of family violence since the quarantine began",
        "link": "https://www.ultimahora.com/violencia-y-encierro-servicios-victimas-siguen-operando-n2878172.html",
        "progressive": "regressive",
        "category": "punitive, digital surveillance, gender-based violence",
        "type": "observed response",
        "country": "Paraguay",
      },
      {
        "title": "Paraguay is away from Covid-19 worst case scenario",
        "description": "A country like Paraguay, with a serious deficit in its health system, the quarantine was established in due course",
        "link": "https://www.gender-based violence.cl/noticia/mundo/paraguay-se-aleja-del-peor-escenario-del-covid-19-segun-informo-gobierno",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Paraguay",
      },
      {
        "title": "Paraguay: Solidarity dining rooms offer hope in times of Covid-19",
        "description": "Solidarity arises as a balm of hope, when state assistance does not arrive.",
        "link": "https://es.aleteia.org/2020/04/14/paraguay-comedores-solidarios-brindan-esperanza-en-tiempos-de-covid-19/?fbclid=IwAR1xsP1P4EHuW_636QjrluIYbJXnrw3EhGihu6cXTiN7dV-11aygTgDM6SE",
        "progressive": "need to watch",
        "category": "economy, labor, food",
        "type": "temporary measure, observed response",
        "country": "Paraguay",
      },
      {
        "title": "Paraguay: Higher education is not a government priority, students denounce",
        "description": "Minister of education calls for virtual classes until the end of the year and organizations denounce digital gap that makes it impossible for youth to study",
        "link": "https://www.nodal.am/2020/04/paraguay-ministro-de-educacion-pide-clases-virtuales-hasta-fin-de-ano-y-organizaciones-denuncian-brecha-digital-que-imposibilita-estudiar-a-miles-de-jovenes/",
        "progressive": "need to watch",
        "category": "education, economy, food",
        "type": "policy or law, temporary measure, observed response",
        "country": "Paraguay",
      },
      {
        "title": "What will the impact of Covid-19 be on the economy according to the IDB and what measures does it suggest?",
        "description": "More in the IDB 2020 macroeconomic report",
        "link": "https://negocios.elpais.com.uy/noticias/sera-impacto-coronavirus-economia-bid-medidas-sugiere.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title": "Latin America: from the outbreak to the coronavirus",
        "description": "The erosion of US hegemony and the debacle of the Bolivarian bloc produce an evident vacuum in regional leadership",
        "link": "https://elpais.com/elpais/2020/04/03/opinion/1585883651_861157.html?ssm=FB_CC&fbclid=IwAR1Nd0c8s2i8i961A8ZnF17tkXVyuaC92Uqx7FZu0PEa4HWU0cPEVuDdcTw",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title": "Coronavirus does not discriminate, Inequalities do",
        "description": "Vencer la pandemia requiere enfrentar las desigualdades",
        "link": "https://oi-files-d8-prod.s3.eu-west-2.amazonaws.com/s3fs-public/2020-03/Covid%2019%20en%20LAC_nota%20informativa_F_0.pdf",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor, food",
        "type": "policy or law, observed response",
        "country": "Latin America and the Caribbean",
      },
      {
        "title": "Coronavirus in Uruguay | The history of the Australian cruise ship with covid-19 rejected by several countries and the \"humanitarian corridor\" that it found in Montevideo",
        "description": "The situation on the ship owned by Aurore Expeditions was further complicated when 128 of 217 passengers and crew members tested positive for the virus.",
        "link": "https://www.guatevision.com/internacionales/bbc-news-mundo-internacionales/coronavirus-en-uruguay-la-historia-del-crucero-australiano-con-covid-19-rechazado-por-varios-paises-y-el-corredor-humanitario-que-encontro-en-montevideo?fbclid=IwAR2O4mJtFrnHMZFeminist Statement or AnalysisEYBhAuHBl24cnwQ77Y7lE0HHLbgAC2DSgwszCEm-NsQ",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Uruguay",
      },
      {
        "title": "Argentina and Uruguay, the best evaluated in their management of the coronavirus crisis",
        "description": "According to a study carried out by the Ipsos pollster, both countries are at the top of the countries that have best responded to the appearance of Covid-19",
        "link": "http://enfoquejujuy.com/argentina-y-uruguay-los-mejores-evaluados-en-su-gestion-de-la-crisis-por-el-coronavirus/?fbclid=IwAR10qAsSConVFXaQG1YwsMDVSU-7yIVDNMWVqoFW4erY_OtlnpK6JzJy8bg",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Uruguay",
      },
      {
        "title": "Uruguay: the country that was ahead of the coronavirus and is taken as an example",
        "description": "Since 2007, Uruguay has carried out the Ceibal Plan, a technology inclusion initiative that was rated \"unique in the world",
        "link": "https://www.infobae.com/educacion/2020/04/17/educacion-el-pais-vecino-que-se-adelanto-al-coronavirus-y-es-tomado-como-ejemplo/",
        "progressive": "need to watch",
        "category": "education",
        "type": "policy or law, observed response",
        "country": "Uruguay",
      },
      {
        "title": "The Uruguayan Parliament agrees the approval of the \"Coronavirus Fund",
        "description": "",
        "link": "https://www.efe.com/efe/america/economia/el-parlamento-uruguayo-acuerda-la-aprobacion-del-fondo-coronavirus/20000011-4212287",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Uruguay",
      },
      {
        "title": "Toll-free COVID-19 emotional support line",
        "description": "The phone line began operating this week for all those who feel affected by isolation and social distancing and require emotional support",
        "link": "https://www.gub.uy/ministerio-salud-publica/comunicacion/noticias/0800-1920-linea-gratuita-apoyo-emocional-frente-covid-19",
        "progressive": "need to watch",
        "category": "digital surveillance",
        "type": "temporary measure",
        "country": "Uruguay",
      },
      {
        "title": "Depression, the other epidemic that Uruguay faces besides the coronavirus",
        "description": "The country has one of the highest suicide rates in the region and a general quarantine can have psychological effects on the entire population.",
        "link": "https://expansion.mx/mundo/2020/03/27/la-depresion-la-otra-epidemia-que-uruguay-enfrenta-ademas-del-coronavirus?fbclid=IwAR2uW7tDHobpi0j3nIOokzOPZzkXuU_xhvzd8ZgulfwlePSAK3u8vMgy9r4",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Uruguay",
      },
      {
        "title": "Coronavirus and abortion: the right to termination of pregnancy is not quarantined",
        "description": "Health crisis does not stop unwanted pregnancies, but access to abortion rights may be hampered",
        "link": "https://latfem.org/coronavirus-y-aborto-el-derecho-a-la-interrupcion-del-embarazo-no-esta-en-cuarentena/",
        "progressive": "need to watch",
        "category": "SRHR, healthcare",
        "type": "policy or law, observed response",
        "country": "Argentina",
      },
      {
        "title": "14% of those infected with coronavirus in Argentina are health workers",
        "description": "Among 14% of infected doctors, 33% have a history of travel or close contact with infected people",
        "link": "https://www.eldestapeweb.com/nota/el-14-de-los-infectados-de-coronavirus-en-argentina-son-trabajadores-de-la-salud-202041710160",
        "progressive": "need to watch",
        "category": "healthcare, gendered health impacts",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title": "Coronavirus in Argentina: will students be evaluated while classes are suspended?",
        "description": "Some provinces will seek to accompany without putting notes until they return to the classrooms and others will aim to prove the learning",
        "link": "https://www.infobae.com/educacion/2020/04/15/coronavirus-en-argentina-los-alumnos-seran-evaluados-mientras-las-clases-esten-suspendidas/",
        "progressive": "need to watch",
        "category": "education",
        "type": "policy or law, observed response",
        "country": "Argentina",
      },
      {
        "title": "Emergency family income",
        "description": "The bond seeks to alleviate the impact of the health emergency on the economy of the most affected Argentine families.",
        "link": "https://www.argentina.gob.ar/economia/medidas-economicas-COVID19/ingresofamiliardeemergencia",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Argentina",
      },
      {
        "title": "The request for help due to gender violence in Argentina increased during the COVID19 by 39%",
        "description": "",
        "link": "https://www.onu.org.ar/se-incremento-un-39-el-pedido-de-ayuda-por-violencia-de-genero-en-argentina-durante-el-covid19/",
        "progressive": "need to watch",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title": "Coronavirus: how is the permit that those over 70 will need to circulate",
        "description": "The city government will implement the measure to prevent the highest risk group from leaving their homes.",
        "link": "https://www.eldestapeweb.com/nota/coronavirus-como-es-el-permiso-que-necesitaran-los-mayores-de-70-anos-para-circular-por-caba-202041621530",
        "progressive": "need to watch",
        "category": "punitive, digital surveillance",
        "type": "policy or law",
        "country": "Argentina",
      },
      {
        "title": "Coronavirus in Argentina, Alberto Fernández to some entrepreneurs: \"Boys, it's time to earn less",
        "description": "The president stressed that they took a \"series of measures\" for companies.",
        "link": "https://www.clarin.com/politica/coronavirus-argentina-alberto-fernandez-empresarios-muchachos-toco-hora-ganar-_0_GlMd13NhU.html",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, observed response",
        "country": "Argentina",
      },
      {
        "title": "Argentine government economic support package",
        "description": "Government has ensured that no essential services be cut for retirees, social welfare recipients and households earning less than a combined 33,750 pesos (about $520) due to a lack of payment",
        "link": "https://www.boletinoficial.gob.ar/detalleAviso/primera/227120/20200325",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Argentina",
      },
      {
        "title": "Crisis lending surges as government obliges banks to assist",
        "description": "Credit lending is making a comeback in Argentina as the country seeks to flood its streets with pesos to mitigate the effects of the coronavirus.",
        "link": "https://www.batimes.com.ar/news/economy/crisis-lending-surges-as-government-obliges-banks-to-assist.phtml",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law",
        "country": "Argentina",
      },
      {
        "title": "Alberto Fernández supported the creation of an extraordinary tax for large fortunes",
        "description": "The project, which seeks to generate new resources to cope with the pandemic, runs counter to the one that drives Macrism to lower the high salaries of the 3 branches of the State by 30%.",
        "link": "https://www.minutouno.com/notas/5093975-alberto-fernandez-apoyo-la-creacion-un-impuesto-extraordinario-las-grandes-fortunas",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Argentina",
      },
      {
        "title": "Teleworking barely reaches 3 million workers",
        "description": "With the extension of the quarantine, there are several items that are unable to transfer their tasks to the virtual world",
        "link": "https://www.infobae.com/sociedad/2020/04/15/coronavirus-en-la-argentina-el-teletrabajo-apenas-alcanza-a-3-millones-de-trabajadores/?fbclid=IwAR3hDyJfUsnMUutHwDX02AmogRg8pSxr8FY5-QRpxScientific DataxuLb-xlNNwxCUCz4",
        "progressive": "need to watch",
        "category": "economy, food",
        "type": "policy or law, temporary measure, observed response",
        "country": "Argentina",
      },
      {
        "title": "Argentina, the first in the world in proportion of health personnel infected with Covid-19",
        "description": "14% of health workers infected in the country",
        "link": "http://www.laizquierdadiario.com/Argentina-primera-a-nivel-mundial-en-proporcion-de-personal-de-salud-infectado-con-Covid-19",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Argentina",
      },
      {
        "title": "Plan of Action on Coronavirus",
        "description": "Citizens guide for general Covid-19 response and government aid",
        "link": "https://www.gob.cl/coronavirus/plandeaccion/",
        "progressive": "progressive",
        "category": "punitive, digital surveillance, healthcare, education, labor, food",
        "type": "policy or law, temporary measure",
        "country": "Chile",
      },
      {
        "title": "Chile to issue coronavirus 'immunity' cards for those who recovered from disease",
        "description": "Governmetn will soon begin distributing the world's first coronavirus immunity cards to those who have fully recovered from the disease",
        "link": "https://www.nydailynews.com/coronavirus/ny-coronavirus-chile-to-give-out-immunity-cards-20200417-cjzrktfhqvezti5nay6vxqxl4m-story.html?fbclid=IwAR05wU2i7ggkLviOJ15E9observed responsezf4owDEwt9loIs3fiXr-digital surveillanceci6GViOtQMS6vQ",
        "progressive": "need to watch",
        "category": "digital surveillance, healthcare",
        "type": "policy or law",
        "country": "Chile",
      },
      {
        "title": "In Chile, education in times of the coronavirus will be by open television signal",
        "description": "",
        "link": "https://www.eluniverso.com/noticias/2020/04/14/nota/7813446/chile-educacion-tiempos-coronavirus-sera-senal-abierta-television",
        "progressive": "progressive",
        "category": "education",
        "type": "policy or law, temporary measure",
        "country": "Chile",
      },
      {
        "title": "Chilean economy will fall 2% in 2020 due to coronavirus",
        "description": "The Chilean economy will fall 2% in 2020 affected by the coronavirus pandemic, which will force higher public spending and drive a fiscal deficit of 8% GDP",
        "link": "https://www.infobae.com/america/agencias/2020/04/17/economia-chilena-caera-2-en-2020-golpeada-por-coronavirus-gobierno/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title": "Coronavirus in Chile: reports on gender violence increase 70%",
        "description": "",
        "link": "https://www.nodal.am/2020/04/chile-aumentan-70-las-denuncias-por-violencia-de-genero-durante-la-emergencia-sanitaria/",
        "progressive": "need to watch",
        "category": "punitive, gender-based violence",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title": "Migrants are trapped at the Chilean border due to coronavirus restrictions",
        "description": "A thousand migrants, mainly Bolivians, are stranded in northern Chile after the sources of work in the country are exhausted and they cannot return to their homes due to the territorial closure",
        "link": "https://translate.google.com/translate?hl=en&sl=es&u=https://lta.reuters.com/articulo/salud-coronavirus-chile-migrantes-idLTAKBN21Y3CT&prev=search",
        "progressive": "need to watch",
        "category": "economy, labor, disability, race",
        "type": "temporary measure, observed response",
        "country": "Chile",
      },
      {
        "title": "Main group of those infected in Chile is between 30 and 44 years old",
        "description": "",
        "link": "https://www.meganoticias.cl/nacional/298007-informe-epidemiologico-coronavirus-covid19-edad-contagiados-region-comuna.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Chile",
      },
      {
        "title": "Bolivia approves electric anklets to control covid-19 suspects",
        "description": "The use of 500 electric anklets that have a chip has been arranged to track possible infected covid-19",
        "link": "https://andina.pe/agencia/noticia-bolivia-aprueba-tobilleras-electricas-para-controlar-sospechosos-covid19-792388.aspx?fbclid=IwAR1JcQCWXTAhJhwrMF-sBhq5tZYw5KSpQbJNO6LkHaFWkN63fCbZZRJ_dY0",
        "progressive": "need to watch",
        "category": "punitive, digital surveillance",
        "type": "policy or law, observed response",
        "country": "Bolivia",
      },
      {
        "title": "Bolivia requests $ 320 million from the IMF to address the coronavirus pandemic",
        "description": "Part of the financing would be used to pay the Universal Bond, which consists of granting 500 bolivianos (about $ 72) to four million people without income.",
        "link": "https://actualidad.rt.com/actualidad/350223-bolivia-solicitar-fmi-millones-bonos-coronavirus?fbclid=IwAR1SU6U78-JaLCAlI8lddqv23fwPNGIHBC_RYAl_r66ENVCjOe4k0lNKXfk",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure, observed response",
        "country": "Bolivia",
      },
      {
        "title": "Quarantine: 33 minors were raped and more than 1,200 women were victims of violence",
        "description": "",
        "link": "https://www.atb.com.bo/seguridad/cuarentena-33-menores-fueron-violadas-y-m%C3%policy or laws-de-1200-mujeres-fueron-v%C3%ADctimas-de-violencia?fbclid=IwAR12bUpq0lDAj0CO4cdbX45kywVF5Z8Ml5RaYC09s2QAoVuHTusw-R_mlIk",
        "progressive": "regressive",
        "category": "gender-based violence",
        "type": "observed response",
        "country": "Bolivia",
      },
      {
        "title": "Bolivia will distribute up to USD 500 million in bonds for COVID-19",
        "description": "The aid impact low-income groups",
        "link": "https://www.dw.com/es/bolivia-repartir%C3%policy or law-hasta-usd-500-millones-en-bonos-por-covid-19/a-53141621",
        "progressive": "progressive",
        "category": "economy, disability",
        "type": "policy or law",
        "country": "Bolivia",
      },
      {
        "title": "Bolivia: Ex-president to donate salary amid virus",
        "description": "Evo Morales previously urged public officials who earn over $1,020 to donate their salaries to fight coronavirus pandemic",
        "link": "https://www.aa.com.tr/en/americas/bolivia-ex-president-to-donate-salary-amid-virus/1804629?fbclid=IwAR3XKckQPsKy1fN5oLAqfHWnStyftmrjgDfu03GMuCj4Xk33C6ElG9FScientific DataFk",
        "progressive": "need to watch",
        "category": "economy",
        "type": "observed response",
        "country": "Bolivia",
      },
      {
        "title": "Coronavirus leaves Bolivia's elections uncertain",
        "description": "",
        "link": "https://www.sandiegouniontribune.com/en-espanol/noticias/story/2020-04-08/coronavirus-deja-en-incertidumbre-elecciones-en-bolivia",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "observed response",
        "country": "Bolivia",
      },
      {
        "title": "Crackdown on feminist rallies and harrassment of former political prisoners",
        "description": "Details cases of harrassment in March, part of continued state repression, while COVID responses emerging",
        "link": "https://monitor.civicus.org/updates/2020/04/08/crackdown-feminist-rallies-and-harassment-former-political-prisoners-nicaragua/",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "Nicaragua",
      },
      {
        "title": "El Salvador's Response To Covid-19 Excessively Restricts Fundamental Rights, Say CSOs",
        "description": "Details online harrassment of human rights and feminist activists, government criticism, and censoring of journalists",
        "link": "https://monitor.civicus.org/updates/2020/04/07/el-salvadors-response-covid-19-has-excessively-restricted-fundamental-rights-say-csos/",
        "progressive": "regressive",
        "category": "punitive",
        "type": "observed response",
        "country": "El Salvador",
      },
      {
        "title": "Victim Protection is Expanded During Coronavirus",
        "description": "Expansion of support for HelpChat hotline for women and girls experiencing psychological, physical, and/sexual violence",
        "link": "https://www.frauenring.at/opferschutz-corona-krise-ausgebaut",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "temporary measure",
        "country": "Austria",
      },
      {
        "title": "Bangladesh Sends food Aid to Brothels as Women Fight to Survive Lockdown",
        "description": "Brief ddescription of food aid program within context of sex-work industry shut down, worker conditions",
        "link": "https://www.theguardian.com/Global-development/2020/apr/06/bangladesh-sends-food-aid-to-sex-workers-as-industry-goes-into-lockdown",
        "progressive": "need to watch",
        "category": "food",
        "type": "temporary measure",
        "country": "Bangladesh",
      },
      {
        "title": "Women Mobilize to Prevent COVID-19 in Crowded Rohingya Refugee Camps",
        "description": "Rohingya women leaders self-mobilized, forming networks and raising awareness on COVID-19 across all camps",
        "link": "https://reliefweb.int/report/bangladesh/women-mobilize-prevent-covid-19-crowded-rohingya-refugee-camps",
        "progressive": "progressive",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "observed response",
        "country": "Bangladesh",
      },
      {
        "title": "#StayInYourTent: COVID-19 protective measures reach Sahara Desert",
        "description": "Sahrawi people are fighting with all their resources against the spread of the virus",
        "link": "https://www.euronews.com/2020/04/10/stayinyourtent-covid-19-protective-measures-reach-sahara-desert",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Algeria",
      },
      {
        "title": "Algeria's main lab anchors COVID-19 response",
        "description": "Integrety and speed of COVID-19 testing has improved in Algeria's main lab",
        "link": "https://www.afro.who.int/news/algerias-main-lab-anchors-covid-19-response",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "Algeria",
      },
      {
        "title": "Bahrain launches electronic bracelets to keep track of active COVID-19 cases",
        "description": "The Kingdom of Bahrain is keeping track of its active cases of COVID-19 via electronic bracelets.",
        "link": "https://www.mobihealthnews.com/news/europe/bahrain-launches-electronic-bracelets-keep-track-active-covid-19-cases",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare",
        "type": "policy or law, temporary measure",
        "country": "Bahrain",
      },
      {
        "title": "Government and institution measures in response to COVID-19.",
        "description": "Bahrain has one of the highest testing rates per capita on the planet, obtaining the acknowledgment of the World Health Organization for its professional reaction",
        "link": "https://home.kpmg/xx/en/home/insights/2020/04/bahrain-government-and-institution-measures-in-response-to-covid.html",
        "progressive": "progressive",
        "category": "healthcare, economy, labor, food",
        "type": "policy or law, temporary measure",
        "country": "Bahrain",
      },
      {
        "title": "Egypt's health sector races to scale up coronavirus readiness",
        "description": "Egypt ordred manufacturers to channel medical protective equipment to public hospitals and announcing 1 billion Egyptian pounds",
        "link": "https://nationalpost.com/pmn/health-pmn/egypts-health-sector-races-to-scale-up-coronavirus-readiness",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "policy or law",
        "country": "Egypt",
      },
      {
        "title": "Launch of Phone Number during COVID-19",
        "description": "without strong action by governments and mass media campaigns, we can expect an increase in the number of domestic workers forced to work",
        "link": "https://www.hrw.org/news/2020/04/06/domestic-workers-middle-east-risk-abuse-amid-covid-19-crisis",
        "progressive": "need to watch",
        "category": "healthcare, labor, race",
        "type": "observed response",
        "country": "Middle East and North Africa",
      },
      {
        "title": "What Being on the Frontlines of Fighting for Gender Equality in Iraq Is Like During COVID-19",
        "description": "The effect of COVID-19 on displaced women in the Kordistan region of Iraq",
        "link": "https://www.Globalcitizen.org/en/content/covid-19-womens-empowerment-iraq-syrian-conflict/",
        "progressive": "need to watch",
        "category": "education, economy, childcare, labor, race",
        "type": "observed response",
        "country": "Iraq",
      },
      {
        "title": "Launch of Phone Number during covid",
        "description": "To report Domestic Violences cases during Lockdown",
        "link": "http://ncw.nic.in/",
        "progressive": "progressive",
        "category": "gender-based violence",
        "type": "",
        "country": "India",
      },
      {
        "title": "App for Covid-19",
        "description": "Government of India has launched Aarogya Setu app to take self assessment test, how to maintain social distancing, all information about Covid-19, to get all information about e-pass to be used only for the purpose of supplying essentials and also provides all updates of COVID-19",
        "link": "https://www.mygov.in/aarogya-setu-app/",
        "progressive": "progressive",
        "category": "digital surveillance, healthcare, education",
        "type": "",
        "country": "India",
      },
      {
        "title": "With weekend lockdowns and age-specific restrictions, Turkey takes a different coronavirus approach",
        "description": "Details Turkey's lockdown process and challenges with testing and underreporting",
        "link": "https://www.cnn.com/2020/04/17/europe/turkey-coronavirus-lockdown-response-intl/index.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "observed response",
        "country": "Turkey",
      },
      {
        "title": "Turkey's Coronavirus Crisis Grows as Infections Exceed China's",
        "description": "Turkey has struggled to contain virus amid economic challenges and a botched curfew",
        "link": "https://foreignpolicy.com/2020/04/20/turkeys-coronavirus-crisis-grows-as-infections-exceed-chinas/",
        "progressive": "need to watch",
        "category": "digital surveillance, healthcare, economy",
        "type": "observed response",
        "country": "Turkey",
      },
      {
        "title": "The Coronavirus Will Destroy Turkey's economy",
        "description": "COVID is exacerbating macroeconomic crisis in Turkey; the government is not prepared and has few resources left",
        "link": "https://foreignpolicy.com/2020/04/08/the-coronavirus-will-destroy-turkeys-economy/",
        "progressive": "regressive, need to watch",
        "category": "healthcare, economy, labor",
        "type": "policy or law, observed response",
        "country": "Turkey",
      },
      {
        "title": "Brother Tayyip's Soup Kitchen",
        "description": "Details how pandemic response is hampered by AKP's unwillingness to work with CHP mayors",
        "link": "https://foreignpolicy.com/2020/04/17/erdogan-turkey-coronavirus-relief-politics-akp-chp-brother-tayyip-soup-kitchen/",
        "progressive": "regressive",
        "category": "punitive, digital surveillance, healthcare, economy",
        "type": "temporary measure, observed response",
        "country": "Turkey",
      },
      {
        "title": "Turkey Releases Refugees from Quarantine Amid Coronavirus Lockdown",
        "description": "Turkey is releasing refugees from quarantine in the middle of lockdown, with minimal resources",
        "link": "https://www.voanews.com/europe/turkey-releases-refugees-quarantine-amid-coronavirus-lockdown",
        "progressive": "regressive",
        "category": "healthcare, labor",
        "type": "temporary measure",
        "country": "Turkey",
      },
      {
        "title": "Domestic violence rises in Turkey during COVID-19 pandemic",
        "description": "Details rise in domestic violence in lockdown and failure of government to respond",
        "link": "https://www.dw.com/en/domestic-violence-rises-in-turkey-during-covid-19-pandemic/a-53082333",
        "progressive": "regressive",
        "category": "SRHR, gender-based violence",
        "type": "observed response",
        "country": "Turkey",
      },
      {
        "title": "Turkey Seeks Power to Control Social Media",
        "description": "Further social media censorship authorities proposed in COVID-19 bill",
        "link": "https://www.hrw.org/news/2020/04/13/turkey-seeks-power-control-social-media",
        "progressive": "regressive",
        "category": "digital surveillance",
        "type": "policy or law, temporary measure",
        "country": "Turkey",
      },
      {
        "title": "Turkey to free one-third of its prisoners to curb coronavirus",
        "description": "Turkey frees prisoners to protect them from virus's spread, but excludes government opponents imprisoned on terrorism charges",
        "link": "https://www.aljazeera.com/news/2020/04/turkey-free-prisoners-curb-coronavirus-200414062852220.html",
        "progressive": "regressive",
        "category": "healthcare, labor",
        "type": "temporary measure",
        "country": "Turkey",
      },
      {
        "title": "COVID-19 preparedness an dresponse for NW-Syria",
        "description": "Outlines WHO and humanitarian efforts to response to pandemic in NW Syria",
        "link": "https://reliefweb.int/sites/reliefweb.int/files/resources/health_task_force_nws_covid-19_sitrep_-_1_april_2020.pdf",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Syria",
      },
      {
        "title": "Syria's civil war will make fighting coronavirus particularly difficult",
        "description": "Details steps regime has taken and challenges of response in opposition-held areas and among displaced populations",
        "link": "https://www.washingtonpost.com/politics/2020/04/02/syrias-civil-war-will-make-fighting-coronavirus-particularly-difficult/",
        "progressive": "need to watch",
        "category": "healthcare, labor",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title": "Syria, insisting it is coronavirus-free, takes broad steps to prevent spread",
        "description": "Syrian government likely covering up cases to suppress COVID-19 numbers",
        "link": "https://www.reuters.com/article/us-health-coronavirus-syria-idUSKBN2110SA",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title": "Syria Acknowledges One Coronavirus Case",
        "description": "Regime insisting numbers are low but shutting down intercity travel, closed borders, and closed newspaper printing",
        "link": "https://www.voanews.com/science-health/coronavirus-outbreak/syria-acknowledges-one-coronavirus-case",
        "progressive": "regressive",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title": "Syria has confirmed its first cases of coronavirus. An outbreak there would be hell.",
        "description": "Regime implemented curfew, closed businesses, launched disinfection campaign, but health system severely weakened",
        "link": "https://www.vox.com/world/2020/3/27/21195860/coronavirus-syria-idlib-covid-19-cases-outbreak-middle-east",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title": "Syrian camps brace for potential COVID-19 outbreak",
        "description": "Outlines opposition response in NW Syria and challenges of preventing spread in camps",
        "link": "https://www.al-monitor.com/pulse/originals/2020/04/syria-displaced-camps-aleppo-coronavirus-medical.html",
        "progressive": "need to watch",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Syria",
      },
      {
        "title": "W.H.O. Failed to Tell Syrian Kurds of Their First Coronavirus Death: Live Coverage",
        "description": "Regime failed to share key infection information with Kurdish authorities in NE Syria",
        "link": "https://www.nytimes.com/2020/04/17/world/coronavirus-news-updates.html",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "observed response",
        "country": "Syria",
      },
      {
        "title": "COVID-19 Impact on Refugees is Also Political",
        "description": "Governments are either covering up spread of COVID-19 or failing to respond",
        "link": "https://www.chathamhouse.org/expert/comment/covid-19-impact-refugees-also-political",
        "progressive": "regressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Syria, Lebanon",
      },
      {
        "title": "When Health Care Is Decimated By War: COVID-19 in the Middle East and North Africa",
        "description": "Interview on the response of response of MENA governments to pandemic and need for a rights-based approach",
        "link": "https://www.hrw.org/news/2020/04/16/when-health-care-decimated-war-covid-19-middle-east-and-north-africa",
        "progressive": "regressive",
        "category": "digital surveillance, healthcare",
        "type": "temporary measure, observed response",
        "country": "Middle East and North Africa",
      },
      {
        "title": "Coronavirus pandemic threatens crises-ravaged communities, UN appeals for Global support",
        "description": "As governments implement lockdowns and movement restrictions, GBV is increasing",
        "link": "https://news.un.org/en/story/2020/04/1061922",
        "progressive": "regressive",
        "category": "SRHR, gender-based violence",
        "type": "temporary measure, observed response",
        "country": "Global, Jordan",
      },
      {
        "title": "COVID-19: Africa told to prepare for worst. What's the response?",
        "description": "Details steps being taken by governments across Africa to limit spread and restrict movement",
        "link": "https://www.aljazeera.com/news/2020/03/covid-19-africa-told-prepare-worst-response-200319085112877.html",
        "progressive": "need to watch",
        "category": "healthcare, economy, labor",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title": "African Government Responses to COVID-19",
        "description": "Details 28 declarations of a state of emergency, national health emergency or national disaster in 37 countries in Africa",
        "link": "https://www.icnl.org/post/analysis/african-government-response-to-covid-19",
        "progressive": "regressive",
        "category": "punitive, digital surveillance, healthcare, economy, labor",
        "type": "policy or law, temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title": "East Africa regional body rolls out mobile Covid-19 testing centres",
        "description": "Tanzania deploying mobile laboratories and testing kits in 4x4 vehicles",
        "link": "http://www.rfi.fr/en/international/20200326-east-africa-regional-body-rolls-out-mobile-covid-19-testing-centres",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title": "The Economic Impact of COVID-19 in Africa: A Round-Up of This Week's Analysis",
        "description": "Details effects of lockdowns on economy and supply chains",
        "link": "https://www.cgdev.org/blog/economic-impact-covid-19-africa-weeks-latest-analysis",
        "progressive": "need to watch",
        "category": "healthcare, economy, food",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title": "Africa in the news: COVID-19 impacts African economies and daily lives; clashes in the Sahel",
        "description": "Details macroeconomic steps being taken in Africa and consequences of pandemic for electoral systems",
        "link": "https://www.brookings.edu/blog/africa-in-focus/2020/04/11/africa-in-the-news-covid-19-impacts-african-economies-and-daily-lives-clashes-in-the-sahel/",
        "progressive": "need to watch",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title": "Africa turns to mobile payments as a tool to curb COVID-19",
        "description": "Governments and startups are shifting transactions toward mobile money and away from cash to limit virus's spread",
        "link": "https://techcrunch.com/2020/03/25/african-turns-to-mobile-payments-as-a-tool-to-curb-covid-19/",
        "progressive": "progressive",
        "category": "economy",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title": "Rwanda's successes and challenges in response to COVID-19",
        "description": "Details how Rwandan government has implemented lockdown measures",
        "link": "https://www.atlanticcouncil.org/blogs/africasource/rwandas-successes-and-challenges-in-response-to-covid-19/",
        "progressive": "need to watch",
        "category": "healthcare, economy",
        "type": "temporary measure",
        "country": "Rwanda",
      },
      {
        "title": "Tanzania's mild response to COVID-19 and its implications for the 2020 elections",
        "description": "Details concerns that Tanzanian President using virus to extend rule, push back elections",
        "link": "https://www.atlanticcouncil.org/blogs/africasource/tanzanias-mild-response-to-covid-19-and-its-implications-for-the-2020-elections/",
        "progressive": "regressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Tanzania",
      },
      {
        "title": "Tackling COVID-19 in Africa",
        "description": "Details potential economic impacts of crisis across Africa and ways governments should respond",
        "link": "https://www.mckinsey.com/featured-insights/middle-east-and-africa/tackling-covid-19-in-africa",
        "progressive": "progressive",
        "category": "economy",
        "type": "policy or law, temporary measure",
        "country": "Anglophone Africa, Francophone Africa",
      },
      {
        "title": "In the Face of Coronavirus, African Countries Apply Lessons from Ebola Response",
        "description": "Countries using advanced disease surveillance developed during Ebola outbreak to limit virus's spread",
        "link": "https://www.worldbank.org/en/news/feature/2020/04/03/in-the-face-of-coronavirus-african-countries-apply-lessons-from-ebola-response",
        "progressive": "progressive",
        "category": "healthcare",
        "type": "temporary measure, observed response",
        "country": "Anglophone Africa, Francophone Africa",
      }
  ]

  response_data.each{|it|
    puts "\n\n\n✨ ✨ ✨ ✨ this is the title: #{it[:title]}✨ ✨ ✨ "
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
        title: it[:title], 
        description: it[:description], 
        link: it[:link], 
        date: nil, 
        progressive_id: prog, 
        page_id: Page.all[0].id
    )

    puts "🔺🔺🔺item created: #{item.id}: #{item.title}\n\n"
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
        "title": "Webinar: Organizing Virtual Meetings Episode 1: planning & content",
        "description": "Webinar on accessibility & planning content for virtual meetings in the time of COVID-19.",
        "link": "https://www.youtube.com/watch?v=beiWoi3I7_E&t=190s",
        "country": "Global",
        "month": "3",
        "year": "2020",
        "category": "disability"
    },
    {
        "title": "Webinar: Organizing Virtual Meetings Episode 2: ",
        "description": "Webinar on nuts & bolts of Zoom for virtual meetings in the time of COVID-19.",
        "link": "https://www.youtube.com/watch?v=Jidn0_1oQyE&t=4s",
        "country": "Global",
        "month": "3",
        "year": "2020",
        "category": "misinformation"
    },
    {
        "title": "Webinar: Caring for Our Communities: COVID-19 and our Health,\nConnections to Climate Preparedness, and Systemic Change",
        "description": "Frontline women practitioners and advocates share best practices for caring for ourselves and communities, and provide political and cultural analysis to the COVID-19 pandemic. Presenters discuss vulnerabilities in our diverse communities, and how we can work to support each other in the coming months. Speakers include Rupa Marya, MD, Associate Professor of Medicine at UCSF; Linda Black Elk (Catawba Nation), Director of Food Sovereignty Programs at United Tribes Technical College; Jacqui Patterson, Director of the NAACP Environmental and Climate Justice Program; in conversation with Osprey Orielle Lake, Executive Director of WECAN International.",
        "link": "https://www.youtube.com/watch?v=OdtCyeZHh2E&feature=youtu.be",
        "country": "United States",
        "year": "2020",
        "category": "healthcare, misinformation"
    },
    {
        "title": "Teach-In: Movement Building in the Time of the Covid-19 Crisis",
        "description": "A teach-in by The Rising Majority, supported by the Working Families Party, providing a left feminist perspective on 21st century racial capitalism in this moment. Featured speakers Angela Y. Davis—feminist, abolitionist, scholar, and activist, and Naomi Klein—author and activist, with Thenjiwe McHarris (BlackBird), Maurice Mitchell (Executive Director, Working Families Party), Cindy Wiesner (Director of Grassroots Global Justice), and Loan Tran (Co-Executive Director of Southern Visions Collective). ",
        "link": "https://therisingmajority.com/events/movement-building/",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "healthcare, education, childcare, labor, gendered health impacts, gender-based violence, race, misinformation"
    },
    {
        "title": "Webinar: Racial Justice Has No Borders",
        "description": "Townhall discussion on war and militarization in the time of pandemic, organized by Racial Justice Has No Borders, a new, broad anti-war coalition that seeks to recenter the conversation about U.S. wars and militarization on the needs and leadership of those most impacted. With opening remarks by Rep. Ilhan Omar (MN-5),  and hosted by Marc Lamont Hill, a powerful line-up of speakers from the anti-war movement working locally and Globally reflected on the broader context of the pandemic.",
        "link": "https://www.facebook.com/InstituteforPolicyStudies/videos/261537221528594/UzpfSTIwMjM3ODc0NjU2OjEwMTU5OTAzOTE2NDk0NjU3/?link_id=0&can_id=8ba9ad5446018ce9d060eb7913742288&source=email-happening-now-join-the-townhall&email_referrer=email_775000___subject_1039377&email_subject=join-us-in-ending-the-aumfs",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "race"
    },
    {
        "title": "Webinar: Court Response to Violence Against Women during COVID-19",
        "description": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,” Global Rights for Women hosted this discussion with Lori Flohaug, former prosecutor / Leech Lake Tribal Court Judge currently practicing family and criminal law; Natia Merebashvili, Deputy Prosecutor General of Georgia; Scott Miller, Executive Director of Domestic Abuse Intervention Programs (\"the Duluth Model\"); Erin Osborne, Staff Attorney, Central Minnesota Legal Services, Referee John Schulte, who presides over protective order and harassment restraining order court hearings. Emphases were on how court and advocacy practices have shifted, particularly around protective orders and challenges to victims. ",
        "link": "https://www.youtube.com/watch?v=9R3yO0WmK5o",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title": "Webinar: Part II: Courts’ Response to Violence Against Women during COVID-19",
        "description": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,” Global Rights for Women hosted this discussion with Judge Steve Aycock, Chief Judge Colville Confederated Tribes, Washington, USA; Iluta Lace, Director of Marta Center, Riga, Latvia; Judge Ilze Celmina, Regional Court, Riga, Latvia; Dusan Radakovic, Program Director of Advocacy Center for Democratic Culture; and Erin Osborne, Central Minnesota Legal Services. Similar questions to panelists as in part 1 of this topic, focused on court process changes and challenges, with recognition of the pandemic within the pandemic narrative emerging worldwide.",
        "link": "https://www.youtube.com/watch?v=RQvModky0Zk&feature=youtu.be",
        "country": "Global",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title": "Webinar: Working with Perpetrators during COVID-19: Considerations for US Perpetrator Programs ",
        "description": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,” Global Rights for Women, European Network for the Work with Perpetrators of Domestic Violence (WWP EN), Pathways to Family Peace, and Family Violence Project of Maine co-hosted this conversation. Speakers included Juan Carlos Arean, Melissa Petrangelo Scaia, Jon Heath, Rebecca Thomforde Hauser, Center for Court Innovation, and Lisa Young Larance. Webinar presented a draft guide and a “thoughtful first start and attempt” to work with perpetrators of domestic violence responsibly during this Global pandemic for United States perpetrator programs.",
        "link": "https://www.youtube.com/watch?v=PJYUeducationJxsNI&feature=youtu.be",
        "country": "United States",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title": "Webinar: Working with Perpetrators During COVID-19:  Lessons from Europe",
        "description": "As part of the webinar series “Adapting Legal and Systemic Responses During COVID-19 Addressing Violence Against Women,” Global Rights for Women, European Network for the Work with Perpetrators of Domestic Violence (WWP EN), Pathways to Family Peace, and Family Violence Project of Maine co-hosted this conversation. Speakers included Melissa Petrangelo Scaia, Jon Heath, and Alessandra Pauncz, representing the co-hosting organizations. The WWP EN guidelines on transition perpetrator work to an online format were shared with attention to the safety of victims.",
        "link": "https://www.youtube.com/watch?v=_3qVFWHXoUM&feature=youtu.be",
        "country": "Europe",
        "month": "4",
        "year": "2020",
        "category": "gender-based violence"
    },
    {
        "title": "Teach-In: How to Beat Coronavirus Capitalism: Part I",
        "description": "First round of Haymarket Books online teach-in with Naomi Klein, Astra Taylor, and Keeanga-Yamahtta Taylor, with a musical performance by Lia Rose, focusing on how ideas that were dismissed as too radical just a week ago are starting to seem like the only reasonable path to get out of this crisis and prevent future ones.",
        "link": "https://www.haymarketbooks.org/blogs/118-how-to-beat-coronavirus-capitalism",
        "country": "United States",
        "month": "3",
        "year": "2020",
        "category": "economy"
    },
    {
        "title": "Teach-In: How to Beat Coronavirus Capitalism: Part II (After Bernie, Amidst Pandemic)",
        "description": "Part two continuation of our online teach-in with Naomi Klein, Astra Taylor, and Keeanga-Yamahtta Taylor, hosted by Hari Kondabolu, and featuring a musical performance by Lia Rose, discussing how the current crisis is laying bare the extreme injustices and inequalities of our economic and social system.",
        "link": "https://www.youtube.com/watch?v=6Gi5qGHRJ9c",
        "country": "United States",
        "month": "4",
        "year": "2020",
        "category": "economy"
    },
    {
        "title": "COVID-19 And Men",
        "description": "Webinar on how men are more affected by COVID-19 in terms of higher death rates. ",
        "link": "https://shop.menshealthforum.org.uk/products/webinar-men-covid-19-april-20-2020-2pm?_ga=2.146902195.506116164.1587597573-367827357.1587597573",
        "country": "United Kingdom",
        "year": "2020",
        "category": "gendered health impacts"
    }
]

online_data.each{|it|
    puts "\n\n\n✨ ✨ ✨ ✨ this is the title: #{it[:title]}✨ ✨ ✨ "
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
        title: it[:title], 
        description: it[:description], 
        link: it[:link], 
        date: date, 
        progressive_id: Progressive.all[-1].id, 
        page_id: Page.all[1].id
    )

    puts "🔺🔺🔺item created: #{item.id}: #{item.title}\n\n"

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
        "title": "COVID-19: the gendered impacts of the outbreak",
        "description": "Outlines to ways the extent to which disease outbreaks affect women and men differently.",
        "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30526-2/fulltext",
        "country": "Global",
        "category": "gendered health impacts",
        "type": "scientific data"
    },
    {
        "title": "Covid-19 responses: Why Femimist leadership matters",
        "description": "Compares Global leadership from men and women leaders at this time",
        "link": "https://www.lowyinstitute.org/the-interpreter/covid-19-responses-why-feminist-leadership-matters-crisis",
        "country": "Asia-Pacific",
        "category": "gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title": "Gender Equality and Addressing(GBV) and COVID-19 Prevention, Protection and Response.",
        "description": "The protection and promotion of the rights of women and girls should be prioritized in the face of Covid19",
        "link": "https://www.unfpa.org/resources/gender-equality-and-addressing-gender-based-violence-gbv-and-coronavirus-disease-covid-19",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title": "Feminist Statement on Covid-19 Policy Making",
        "description": "A call on governments to recall and act in accordance with human rights standards in their response to Covid-19",
        "link": "https://drive.google.com/file/d/10zH71NOzvo85MfJTTz8yTIsvoR5lU5iQ/view",
        "country": "Global",
        "category": "food, water, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Global Health Security and Pandemics: COVID-19 and Gender Inequality",
        "description": "General Analysis on the impacts of Covid on genders of all kinds due to social norms and facts",
        "link": "https://www.youtube.com/watch?v=hc5clpUoKY8&feature=youtu.be",
        "country": "Global",
        "category": "healthcare, economy, childcare, labor, race",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "COVID-19: Laying Down the Groundwork for Recovery with Gender at the Fore",
        "description": "A call to focus on gender implications while working on a path to recovery",
        "link": "https://msmagazine.com/2020/03/31/covid-19-laying-down-the-groundwork-for-recovery-with-gender-at-the-fore/",
        "country": "Global",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Women in Global Health Finland pre-launch workshop",
        "description": "Collective Discussion about a plethora of Global policies, resources, and tools for genders provided by and participated by finland",
        "link": "https://www.youtube.com/watch?v=RgkDDLtRw9s",
        "country": "Finland",
        "category": "SRHR, race",
        "type": "feminist statement or analysis"
    },
    {
        "title": "FAMILY-FRIENDLY POLICIES AND OTHER GOOD WORKPLACE PRACTICES IN THE CONTEXT OF COVID-19:",
        "description": "Recommendations made by UNICEF for employers",
        "link": "https://www.unwomen.org/-/media/headquarters/attachments/sections/library/publications/2020/family-friendly-policies-and-other-good-workplace-practices-in-the-context-of-covid-19-en.pdf?la=en&vs=4828",
        "country": "Global",
        "category": "healthcare, childcare, labor",
        "type": "organizing tool"
    },
    {
        "title": "Buisness and Covid-19: Supporting the Most Vulnerable",
        "description": "A COVID-19 Response Framework for how business can support the most vulnerable",
        "link": "https://businessfightspoverty.org/articles/covid-19-response-framework/",
        "country": "United Kingdom",
        "category": "labor",
        "type": "organizing tool"
    },
    {
        "title": "Q&A: UN Women envisions a more gender-equal post-pandemic society",
        "description": "Interview with Bhatia, deputy executive director at UN Women, about aftermath of Covid in regards to gender equality ",
        "link": "https://www.devex.com/news/q-a-un-women-envisions-a-more-gender-equal-post-pandemic-society-96929",
        "country": "Global",
        "category": "healthcare, economy, childcare, labor",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "Why WHO needs a feminist economic agenda",
        "description": "Analysis on disparities of work-force and decision making viewing gender, how healthcare and economics are interlinked",
        "link": "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30110-0/fulltext",
        "country": "Global",
        "category": "healthcare, economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Breaking Down Gendered Power Norms during the Pandemic and Beyond",
        "description": "Suggestions on how to transform the current emegrency into an opportunity to restructure gender norms. ",
        "link": "https://www.Globalpolicyjournal.com/blog/02/04/2020/breaking-down-gendered-power-norms-during-pandemic-and-beyond",
        "country": "Ireland",
        "category": "education",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title": "Women’s Needs and Gender Equality in Lebanon’s COVID-19 Response",
        "description": "Observation about needs and impacts on womens health",
        "link": "https://arabstates.unwomen.org/en/digital-library/publications/2020/03/gender-equality-in-lebanon-covid-19-response",
        "country": "Global",
        "category": "healthcare, economy, gendered health impacts",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "UN backs Global action to end violence against women/girls",
        "description": "UN action and initiatives with partners to provide funds, support civil society organisations",
        "link": "https://news.un.org/en/story/2020/04/1061132",
        "country": "Global",
        "category": "gender-based violence",
        "type": "mutual aid resource"
    },
    {
        "title": "COVID-19 set to worsen gender inequalities in Pakistan ",
        "description": "An article generally discussing the report released by the Ministiry of Human Rights and UN Women on the adverse effects COVID-19 has on gender inequalities",
        "link": "https://tribune.com.pk/story/2197065/1-covid-19-worsen-gender-inequalities-pakistan/",
        "country": "Pakistan",
        "category": "healthcare, education, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Gendered Impact and Implications of COVID-19 in Pakistan",
        "description": "A comprehensive report on the negative impacts of COVID-19 on gender inequality as well as policy recommendations. ",
        "link": "https://www2.unwomen.org/-/media/field%20office%20eseasia/docs/publications/2020/04/pk-gendered-impact-and-implications-of-covid.pdf?la=en&vs=2138",
        "country": "Pakistan",
        "category": "healthcare, education, labor, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "Home isn't a safe space for victims of domestic violence",
        "description": "An article featuring womens' real life narratives and how they're suffering more domestic violence under the lockdown ",
        "link": "https://images.dawn.com/news/1184957",
        "country": "Pakistan",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Strategic preparedness and response plan for the new coronavirus",
        "description": "Plan outlines the COVID-19 public health measures international community can provide (updated regularly)",
        "link": "https://www.who.int/publications-detail/strategic-preparedness-and-response-plan-for-the-new-coronavirus",
        "country": "Global",
        "category": "healthcare",
        "type": "mutual aid resource"
    },
    {
        "title": "Gender and the Coronavirus Outbreak",
        "description": "Questions (and answers) that need to be asked for a gendered approach to the pandemic",
        "link": "https://www.thinkGlobalhealth.org/article/gender-and-coronavirus-outbreak",
        "country": "Global",
        "category": "SRHR, healthcare, economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Playing the Long Game: How Gender Lens Can Mitigate Harm",
        "description": "Proposals to mitigate the disproportional harm, caused by COVID-19, on lives of women&girls",
        "link": "https://www.cgdev.org/blog/playing-long-game-how-gender-lens-can-mitigate-harm-caused-pandemics",
        "country": "Global",
        "category": "healthcare, education, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Why gender matters in impact and recovery from Covid-19",
        "description": "Overview of consequences of COVID-19 and the pandemic on women and girls",
        "link": "https://www.lowyinstitute.org/the-interpreter/why-gender-matters-impact-and-recovery-covid-19",
        "country": "Global",
        "category": "SRHR, healthcare, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "‘Gender blind’ coronavirus policies could hinder disease fight",
        "description": "Views from experts: A gendered analysis is key to mitigating the effects of COVID-19",
        "link": "https://www.scidev.net/Global/gender/news/gender-blind-coronavirus-policies-could-hinder-disease-fight.html?__cf_chl_jschl_tk__=4addd31e78Organizing Toola952dOrganizing Tool5bdd997f21454bpolicy or lawd6290-1587128145-0-AbI3O-UW3KSaVutmIG52NgYwAfEhoNL-oXHJ62HFyLL7TIivMJ1lWj4ph2l7vG2_CwTpcJ80QrDC0npb-A5e8qYVAXrMQqPTNCj5JXIOIkZoxZLwgMjw3PNddOVNbLCwnGDk9d6X4PAR4-GfK5RmO6qw1xkldF8uBMx10e0OcyC7oe09DcTLx49EconomyWcQ8L6eG0LHIcLJaaxns_SOkP43QNhZZmvkLuDdR5Ud3kCNTKHQhHealthcareNigQPs3VASkm-RUnJ07sFneFF4V30tXhSaImutual aid resourceli2I4MeSp2Ug445_cpDbSRHRPF6xxNX608-sO241ECRmcHfF6sAvnjO3_za9DCquufc3nXo6zRW0VhrfKrJ02tpUiDy0-dhxQEi2R2OSLWYAKKow",
        "country": "Global",
        "category": "healthcare, childcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Why Women May Face a Greater Risk of Catching Coronavirus",
        "description": "Women’s roles within society may cause them to be disproportionally affected by COVID-19",
        "link": "https://www.nytimes.com/2020/03/12/us/women-coronavirus-greater-risk.html",
        "country": "Global",
        "category": "healthcare, education, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 is not gender neutral",
        "description": "Analysis on why the burden of the disease will largely be felt by women",
        "link": "http://www.broadagenda.com.au/home/covid-19-is-not-gender-neutral/",
        "country": "Global",
        "category": "healthcare, economy, childcare, ",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Coronavirus fallout may be worse for women. Here's why",
        "description": "Women disproportionately affected due to majority in healthcare professions, childcare and unpaid care work responsibilities ",
        "link": "https://www.weforum.org/agenda/2020/03/the-coronavirus-fallout-may-be-worse-for-women-than-men-heres-why/",
        "country": "Global",
        "category": "healthcare, economy, childcare",
        "type": "scientific data"
    },
    {
        "title": "Coronavirus: Five ways virus upheaval is hitting women in Asia",
        "description": "Five ways that women in Asia are bearing the brunt of the upheaval",
        "link": "https://www.bbc.com/news/world-asia-51705199",
        "country": "Asia-Pacific",
        "category": "healthcare, education, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Why the Coronavirus Outbreak Could Hit Women Hardest",
        "description": "Women’s realities in USA, which will put them in more vulnerable state against COVID-19",
        "link": "https://time.com/5801897/women-affected-covid-19/",
        "country": "United States",
        "category": "healthcare, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Covid-19 puzzles that scientists are still trying to answer",
        "description": "Possible reasons why COVID-19 is seen less in children, and why women die less",
        "link": "https://www.theguardian.com/world/2020/mar/14/answering-the-coronavirus-puzzles-baby-covid-19",
        "country": "China, United Kingdom",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Needs of female medical workers overlooked in corona virus fight",
        "description": "Advocates work to aid overlooked menstruation needs of female medical workers, put women on agenda",
        "link": "https://www.inkstonenews.com/health/coronavirus-womens-advocates-ship-period-products-center-outbreak/article/3050653",
        "country": "China",
        "category": "SRHR, healthcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Call for Global Evidence on Gender and COVID-19",
        "description": "Male deaths are higher, thus a gendered sensitive approach to COVID-19 needed",
        "link": "https://www.menshealthforum.org.uk/news/call-Global-evidence-gender-and-covid-19",
        "country": "Global",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Attention to women’s needs, leadership will strengthen COVID-19 response",
        "description": "UNWOMEN’s recommendations for placing women’s needs, leadership at the heart of response to COVID-19",
        "link": "https://www.unwomen.org/en/news/stories/2020/3/news-womens-needs-and-leadership-in-covid-19-response",
        "country": "Global",
        "category": "SRHR, healthcare, education, economy, childcare, labor, gendered health impacts, gender-based violence, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title": "How Will COVID19 Affect Women&Girls in Low&Middle Income Countries?",
        "description": "Summary of Lancet article ““COVID-19: the gendered impacts of the outbreak” and additional concerns",
        "link": "https://www.cgdev.org/blog/how-will-covid-19-affect-women-and-girls-low-and-middle-income-countries",
        "country": "Global",
        "category": "SRHR, healthcare, education, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Coronavirus Is a Disaster for Feminism",
        "description": "Pandemic magnifies all existing inequalities. Across the world, women’s independence will be a silent victim.",
        "link": "https://www.theatlantic.com/international/archive/2020/03/feminism-womens-rights-coronavirus-covid19/608302/",
        "country": "Global",
        "category": "economy, childcare, labor, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Ideas for Pro-Poor and Pro-Women Approach to COVID19",
        "description": "How local governments can respond, considering economic and gender inequalities, with a pro-poor, pro-women approach",
        "link": "https://asia.oxfam.org/latest/blogs/ideas-pro-poor-and-pro-women-approach-covid-19",
        "country": "Philippines",
        "category": "punitive, healthcare, economy, childcare, labor, water, food, disability",
        "type": "organizing tool"
    },
    {
        "title": "Women's domestic burden just got heavier with the coronavirus",
        "description": "Women  find themselves needing to step up their roles at home as the coronavirus spreads",
        "link": "https://www.theguardian.com/us-news/2020/mar/16/womens-coronavirus-domestic-burden?CMP=Share_AndroidApp_Gmail#maincontent",
        "country": "Global",
        "category": "economy, childcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID19 demands we pay attention to who does care work",
        "description": "Organizations, governments, and communities must do what it takes to support women who provide care",
        "link": "https://promundoGlobal.org/covid-19-demands-that-we-pay-attention-to-who-does-the-care-work-and-how-we-support-them/#",
        "country": "Global",
        "category": "healthcare, economy, childcare, labor",
        "type": "feminist statement or analysis",
        "undefined": "(West, East, Southern)"
    },
    {
        "title": "Impact of COVID-19 Pandemic on Violence against Women and Girls",
        "description": "Emerging evidence on GBV from several countries as well as lessons learned from similar epidemics",
        "link": "http://www.sddirect.org.uk/media/1881/vawg-helpdesk-284-covid-19-and-vawg.pdf",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data",
        "undefined": "(West, Central) "
    },
    {
        "title": "Pandemics and Violence Against Women and Children (VAW/C)",
        "description": "Working Paper documenting pathways linking pandemics and VAW/C as well as policy and program responses",
        "link": "https://www.cgdev.org/publication/pandemics-and-violence-against-women-and-children",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis",
        "undefined": " (Scandinavia/Eastern Europe/ Russia)"
    },
    {
        "title": "COVID-19: Reducing the risk of Infection might increase the risk of intimate partner violence",
        "description": "Includes a short listing of immediate actions needed to mitigate against increases in IPV",
        "link": "https://www.thelancet.com/journals/eclinm/article/PIIS2589-5370(20)30092-4/fulltext",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "COVID-19 and violence against women. What the health sector/system can do",
        "description": "A WHO summary of how health systems can mitigate impacts of violence on women and children during this pandemic",
        "link": "https://www.who.int/reproductivehealth/publications/emergencies/COVID-19-VAW-full-text.pdf?",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "COVID-19 and family Violence",
        "description": "Webpage with links to resources relating to family violence for victims; family, friends or neighbors; and professionals",
        "link": "http://www.dvrcv.org.au/help-advice/coronavirus-covid-19-and-family-violence",
        "country": "Australia",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "Women's aid comments on the impact of coronavirus on women and children escaping domestic abuse",
        "description": "Want to see refuge services continue to operate safely and effectively during COVID-19",
        "link": "https://www.womensaid.org.uk/womens-aid-comments-on-the-impact-of-coronavirus-on-women-and-children-escaping-domestic-abuse/  ",
        "country": "United Kingdom, Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Home Quarantine:Confinement with the Abuser?",
        "description": "COVID-19 confinement, unemployment associated with increase in domestic violence, proposals of Brasilian policies to mitigate",
        "link": "http://multiplier-effect.org/home-quarantine-confinement-with-the-abuser/",
        "country": "Brazil",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "Five ways governments are responding to violence against women and children during COVID-19",
        "description": "UNICEF blog: A non-exhaustive list of government responses to increased violence against women and children during COVID-19 crisis.",
        "link": "https://blogs.unicef.org/evidence-for-action/five-ways-governments-are-responding-to-violence-against-women-and-children-during-covid-19/  ",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Coronavirus doesn't cause Men's violence Against Women",
        "description": "Compares the number of women killed in the United Kingdom during 3 week period over several years",
        "link": "https://kareningalasmith.com/2020/04/15/coronavirus-doesnt-cause-mens-violence-against-women/",
        "country": "United Kingdom",
        "category": "gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "COVID-19: A Gender Lens: Protecting sexual and reproductive health and rights, and promoting gender equality",
        "description": "Technical brief from UNFPA on gendered risks during pandemic",
        "link": "https://turkey.unfpa.org/en/publications/covid-19-gender-lens-1",
        "country": "Global",
        "category": "SRHR, healthcare, economy, childcare, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Women This Week: The Gendered Effects of COVID-19",
        "description": "Blog post on pandemic's gendered impacts on DV, access to health services, and job insecurity",
        "link": "https://www.cfr.org/blog/women-week-gendered-effects-covid-19",
        "country": "Global",
        "category": "SRHR, healthcare, economy",
        "type": "observed response"
    },
    {
        "title": "COVID-19, Domestic abuse and violence: Where do Indian Women stand?",
        "description": "General analysis of dimensions of domestic violence in India, includes uselessness of the law",
        "link": "https://www.epw.in/engage/article/covid-19-domestic-abuse-and-violence-where-do#.Xps-Edkwo8U.twitter",
        "country": "India",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "The EU-UN Spotlight Inititative in Nigeria is working against gender-based violence during the COVID-19",
        "description": "Brief UNESCO GBV awareness page with Nigerian Hotline information, includes short awareness video ",
        "link": "https://en.unesco.org/news/eu-spotlight-initiative-nigeria-working-against-gender-based-violence-during-covid-19",
        "country": "Nigeria",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Tools and Resources page of Gender-Based Violence Area of Responsibility",
        "description": "Search webpage for case study/best practices/examples from the field, includes guidance notes",
        "link": "https://gbvaor.net/thematic-areas?term_node_tid_depth_1%5scientific data21%5D=121",
        "country": "Global, Mozambique, Sudan",
        "category": "gender-based violence",
        "type": "mutual aid resource"
    },
    {
        "title": "COVID-19: Resources to address Gender-based Violence Risks",
        "description": "Guidelines for Intergrating Gender-Based Violence Interventions in Humanitarian Action, as well as other documents and guides",
        "link": "https://gbvguidelines.org/cctopic/covid-19/ ",
        "country": "Global",
        "category": "gender-based violence",
        "type": "mutual aid resource"
    },
    {
        "title": "OPERATION 50/50: Women's Perspectives Save Lives",
        "description": "List of women experts who are working in health security",
        "link": "https://www.womeningh.org/operation-50-50",
        "country": "Global",
        "category": "healthcare",
        "type": "organizing tool"
    },
    {
        "title": "Elevating women in the age of coronavirus",
        "description": "Virtual networks can empower and include more working women in entrepreneurship and sustainable development",
        "link": "https://apolitical.co/en/solution_article/elevating-women-in-the-age-of-coronavirus",
        "country": "Global",
        "category": "labor",
        "type": "organizing tool"
    },
    {
        "title": "Opinion: Global health security depends on women",
        "description": "Asks for integrating gender equality into Global healthcare infrastructure - 5 points",
        "link": "https://www.devex.com/news/opinion-Global-health-security-depends-on-women-96861?access_key=&utm_source=newsletter&utm_medium=newswire&utm_campaign=yourheadlines&utm_content=text&mkt_tok=eyJpIjoiTlRObFpXTmxNVGhoSRHRRGbCIsInQiOiIrV0hMbVJnOWdmMlQxczV4RnFcLzlsXC9IWE56alZyYzlqVFdHR3RMpolicy or lawhBFeminist Statement or Analysisp3Digital SurveillanceFlZkhNSGo1Q25ZRVNEZmdkczFLbVIzeUJVMVRDbjJLeVlYdWVobWg2Uk5PN2FSbFppY3N2Feminist Statement or AnalysisQrWFF0WnA4NW9yTEJNXC83aG5LYVY0aHVxeHRpbiJ9",
        "country": "Global",
        "category": "healthcare",
        "type": "feminist statement or analysis"
    },
    {
        "title": "OPINION: Why we need women’s leadership in the COVID-19 response",
        "description": "Call for more women's leadership in pandemic response for equal health benefits to all",
        "link": "https://news.trust.org/item/20200401090723-319sb",
        "country": "Global",
        "category": "healthcare",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Fighting COVID-19 With One Hand Tied Behind Our Backs?",
        "description": "Gender bias keeps women out of decison making but pandemic affects women differently than men",
        "link": "https://www.thinkGlobalhealth.org/article/fighting-covid-19-one-hand-tied-behind-our-backs",
        "country": "Global",
        "category": "healthcare, economy, labor, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Coronavirus measures will hit women harder than men, charities warn",
        "description": "Data regarding the affect of coronavirus on women is urgently needed to allocate resources",
        "link": "https://www.reuters.com/article/us-health-coronavirus-women-trfn/coronavirus-measures-will-hit-women-harder-than-men-charities-warn-idUSKBN21J6NI",
        "country": "Global",
        "category": "SRHR, healthcare, digital surveillance, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Women’s leadership and unlocking girls’ talent in the era of the coronavirus pandemic",
        "description": "Pandemic identifies gaps in Global systems and how women can and should fill them",
        "link": "https://www.Globalpartnership.org/blog/womens-leadership-and-unlocking-girls-talent-era-coronavirus-pandemic#.XotGV9o2Av4.twitter",
        "country": "Global",
        "category": "education, economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Memo to the UK: women's voices can also be useful in this crisis",
        "description": "Women and men consider risk differently and policy could benefit from equal representation",
        "link": "https://www.theguardian.com/commentisfree/2020/apr/11/memo-to-the-uk-womens-voices-can-also-be-useful-in-this-crisis",
        "country": "United Kingdom",
        "category": "healthcare, economy, labor, gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "The secret weapon in the fight against coronavirus: women",
        "description": "Women leaders are doing an exceptional job at containing coronavirus",
        "link": "https://www.theguardian.com/commentisfree/2020/apr/11/secret-weapon-fight-against-coronavirus-women",
        "country": "Germany, Taiwan, New Zealand, Denmark, Finland, United Kingdom, United States",
        "category": "healthcare",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Covid-19 School Closures Around the World Will Hit Girls Hardest",
        "description": "Six gender-responsive actions proposed to mitigate Covid-19's impact on girls' education",
        "link": "https://plan-international.org/blog/2020/03/covid-19-school-closures-hit-girls-hardest",
        "country": "Global",
        "category": "education",
        "type": "feminist statement or analysis"
    },
    {
        "title": "From nannies to helpers, coronavirus spotlights Asia women's job insecurity",
        "description": "Asian women conduct a lot of informal or unpaid work which is highly insecure during pandemic",
        "link": "https://news.trust.org/item/20200313122408-e2lvu/",
        "country": "Asia-Pacific",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "America's cleaners: fighting on the coronavirus front line",
        "description": "Cleaners are at high risk but they are financially unsettled and so must continue working",
        "link": "https://uk.reuters.com/article/uk-health-coronavirus-usa-cleaners/americas-cleaners-fighting-on-the-coronavirus-front-line-idUKKBN2162GW",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Why women will be hardest hit by a coronavirus-driven recession",
        "description": "Gendered budgeting will be imperative in mitigating disproportionate affects of pandemic on women",
        "link": "https://www.fastcompany.com/90479204/why-women-will-be-hardest-hit-by-a-coronavirus-driven-recession",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Gender economist Katica Roy: If we don't act fast, women will bear the brunt of the financial crisis caused by coronavirus",
        "description": "Interview with Katica Roy regarding pandemic induced financial crisis effects on women",
        "link": "https://www.nbcnews.com/know-your-value/feature/gender-economist-katica-roy-if-we-don-t-act-fast-ncnpolicy or law166771",
        "country": "United States",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "‘Stay Home’ and Work? Implications of COVID-19 and the UK Governmental Response for Self-Employed Women",
        "description": "Implications of the effects of UK governmental response on women's small businesses are unclear",
        "link": "https://isbegen.wordpress.com/2020/03/27/stay-home-and-work/",
        "country": "United Kingdom",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Most Brown and Black Americans Are Exposing Themselves to Coronavirus for a Paycheck",
        "description": "Brown and Black Americans work more jobs that require them to be physically present",
        "link": "https://www.vice.com/en_us/article/xgqpyq/most-brown-and-black-americans-are-exposing-themselves-to-coronavirus-for-a-paycheck",
        "country": "United States",
        "category": "economy, race",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Low-paid women in UK at ‘high risk of coronavirus exposure’",
        "description": "Most high-risk jobs with low salary are worked by women",
        "link": "https://www.theguardian.com/world/2020/mar/29/low-paid-women-in-uk-at-high-risk-of-coronavirus-exposure",
        "country": "United Kingdom",
        "category": "economy, labor",
        "type": "feminist statement or analysis, scientific data"
    },
    {
        "title": "When face-to-face interactions become an occupational hazard: Jobs in the time of COVID-19",
        "description": "Low paying jobs are less amenable to online work and women are more at risk",
        "link": "https://www.brookings.edu/blog/future-development/2020/03/30/when-face-to-face-interactions-become-an-occupational-hazard-jobs-in-the-time-of-covid-19/",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Equal Pay Day more important than ever amid COVID-19",
        "description": "Pandemic is revealing economic inequality with stark contrasts",
        "link": "https://thehill.com/opinion/civil-rights/490088-equal-pay-day-more-important-than-ever-amid-covid-19",
        "country": "United States",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Here’s How You Can Help Sex Workers During the COVID-19 Outbreak",
        "description": "Ways in which you can help sex workers during the pandemic",
        "link": "https://rewire.news/article/2020/03/26/heres-how-you-can-help-sex-workers-during-the-covid-19-outbreak/",
        "country": "United States",
        "category": "healthcare, economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 lockdown: Rights groups demand immediate social security measures for women",
        "description": "Womens' organizations call on Indian Prime Minister to provide social security to protect women",
        "link": "https://www.outlookindia.com/newsscroll/covid19-lockdown-rights-groups-demand-immediate-social-security-measures-for-women/1781106",
        "country": "India",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "How the coronavirus widens the gender pay gap",
        "description": "Organizations must be careful to pay women equally when work returns to normal",
        "link": "https://edition.cnn.com/2020/03/31/perspectives/equal-pay-day-coronavirus/index.html",
        "country": "United States",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Why This Economic Crisis Differs From the Last One for Women",
        "description": "This crisis most affects women-dominated, low paying fields which can't be done remotely",
        "link": "https://www.nytimes.com/2020/03/31/us/equal-pay-coronavirus-economic-impact.html",
        "country": "United States",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "How the COVID-19 Crisis Is Hurting Sex Workers",
        "description": "Pandemic means fewer clients, greater risks, and it’s hard to get benefits",
        "link": "https://thetyee.ca/News/2020/03/27/How-COVID-19-Hurting-Sex-Workers/",
        "country": "Canada",
        "category": "SRHR, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Covid-19 aggravating gender inequalities",
        "description": "Gender inequalities are being exacerbated by pandemic through food, water, health, domestic violence and curfew",
        "link": "https://www.nation.co.ke/gender/Covid-19-aggravating-gender-inequalities/5362750-5508776-l85jnt/index.html",
        "country": "Kenya",
        "category": "SRHR, childcare, water, food, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 Highlights the Failure of Neoliberal Capitalism: We Need Feminist Global Solidarity",
        "description": "Capitalism is not delivering people's basic needs so feminist restructuring is essential",
        "link": "https://apwld.org/covid-19-highlights-the-failure-of-neoliberal-capitalism-we-need-feminist-Global-solidarity/?utm_source=NGO+CSW%2FNY+Constituency&utm_campaign=cb8d7d54ff-EMAIL_CAMPAIGN_2018_10_05_02_01_COPY_01&utm_medium=email&utm_term=0_67ac6441ff-cb8d7d54ff-412137047&mc_cid=cb8d7d54ff&mc_eid=64cdc0fe0b",
        "country": "Thailand",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 requires gender-equal responses to save economies",
        "description": "Gender-inclusive response is needed to bounce back the Global economy",
        "link": "http://www.ipsnews.net/2020/04/covid-19-requires-gender-equal-responses-save-economies/?utm_source=feedly&utm_medium=rss&utm_campaign=covid-19-requires-gender-equal-responses-save-economies",
        "country": "Global",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "How Economic Fallout From The Coronavirus May Disproportionately Affect Women",
        "description": "Womens' income is important and they are also doing a lot of unpaid work",
        "link": "https://www.forbes.com/sites/jenniferbarrett/2020/04/02/how-economic-fallout-from-the-coronavirus-may-disproportionately-affect-women/#485df515836a",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Lockdown: Domestic workers struggle to make ends meet as families refuse to pay",
        "description": "Domestic workers are not being paid during lockdown",
        "link": "https://www.hindustantimes.com/mumbai-news/lockdown-domestic-workers-struggle-to-make-ends-meet-as-families-refuse-to-pay/story-aB6zzwdUyQYnivAJoCMtEJ.html",
        "country": "India",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 will make gender pay inequities worse",
        "description": "Gender pay inequity to be exacerbated by the pandemic",
        "link": "https://www.benefitspro.com/2020/04/07/covid-19-will-make-gender-pay-inequities-worse/?cmp=share_twitter&slreturn=20200317122647",
        "country": "United States",
        "category": "education, economy, childcare, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 worsening gender inequality, more women have lost jobs – UN",
        "description": "Women are increasingly taking on extra unpaid labour and their rights will be reversed",
        "link": "https://dailypost.ng/2020/04/10/covid-19-worsening-gender-inequality-more-women-have-lost-jobs-un/",
        "country": "Global",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Female frontline workers in China typical of coronavirus economic and domestic burden on women: report",
        "description": "Women are disproportionately affected by health, education and labour-related hardship domestically and outside the home",
        "link": "https://amp-scmp-com.cdn.ampproject.org/c/s/amp.scmp.com/news/china/society/article/3079363/female-frontline-workers-china-typical-coronavirus-economic-and",
        "country": "China",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "The Economic Impact of Coronavirus on Women is 'Devastating' and Exacerbating Gender Inequality, Says Facebook's Sheryl Sandberg",
        "description": "Pandemic will have a disproportionate effect on women's employment opportunities",
        "link": "https://www.newsweek.com/economic-impact-coronavirus-women-devastating-exacerbating-gender-inequality-says-1497325",
        "country": "United States",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Women on the frontlines of COVID-19",
        "description": "There is a lack of infrastructure to protect workers, many of whom are women",
        "link": "https://www.liberationnews.org/women-on-the-frontlines-of-covid-19/",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Gender pay gap poses 'shocking' pitfall if isolation goes on",
        "description": "Men's higher paying work is being prioritised over women's when distributing new household responsibilities",
        "link": "https://www.canberratimes.com.au/story/6721006/gender-pay-gap-poses-shocking-pitfall-if-isolation-goes-on/",
        "country": "Australia",
        "category": "labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Sex workers must not be left behind in the response to COVID-19",
        "description": "UNAIDS calls for immediate action to protect sex workers",
        "link": "https://www.unaids.org/en/resources/presscentre/pressreleaseandstatementarchive/2020/april/20200408_sex-workers-covid-19",
        "country": "Global",
        "category": "SRHR, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Protecting Women Using DFS During The Pandemic",
        "description": "Women should be educated in using digital financing solutions in developing countries",
        "link": "https://www.siaedge.com/news/2020/3/27/protecting-women-using-dfs-during-the-pandemic",
        "country": "Ghana, Kenya",
        "category": "digital surveillance, economy, labor",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title": "The Economic Devastation Of COVID-19 Is Hitting Women Particularly Hard",
        "description": "Women are disproportionately affected by Covid-19, particularly black women",
        "link": "https://www.huffingtonpost.co.uk/entry/women-coronavirus-lost-jobs_n_5e90observed response63c5b685fbc7d4a557?ri18n=true",
        "country": "United States",
        "category": "economy, labor, race",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Addressing the gender dimensions of COVID-related school closures ",
        "description": "Synthesis report of webinar featuring country experiences and synthesizing participants' calls to action for governments",
        "link": "https://en.unesco.org/sites/default/files/covid-19-ed_webinar_3-addressing_the_gender_dimensions_of_school_closures-report-en.pdf",
        "country": "Sierra Leone, Nigeria, Nepal, Afghanistan",
        "category": "education",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "COVID-19 Impact: What we know so far – Albania",
        "description": "An interview with the Executive Director of Albania Center of Population and Development (ACPD) ",
        "link": "https://www.ippf.org/blogs/covid-19-impact-what-we-know-so-far-albania",
        "country": "Albania",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title": "UNDP Angola: Support to the National Response to Contain the Impact of COVID-19",
        "description": "UNDP analysis, interventions, and associated budget for COVID-19, highlighting gendered socio-economic impacts in budget",
        "link": "https://www.undp.org/content/dam/rba/docs/COVID-19-CO-Response/undp-rba-covid-angola-apr2020.pdf",
        "country": "Angola",
        "category": "economy, SRHR",
        "type": "scientific data"
    },
    {
        "title": "C-19 Menaces Antigua and Barbuda",
        "description": "Analysis of response: government information, actions, and healthcare spending in context of disaster capitalism",
        "link": "https://solidarity-us.org/c-19-menaces-antigua-and-barbuda/",
        "country": "Antigua and Barbuda",
        "category": "healthcare, economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "The Coronavirus Outbreak Has Stalled Argentina’s Historic Effort To Legalize Abortion",
        "description": "Analysis of abortion movement in Argentina and status of legislation postponed due to pandemic ",
        "link": "https://www.huffpost.com/entry/argentina-abortion-legalization-coronavirus_n_5e7cae9bc5b6cb08a928f364",
        "country": "Argentina",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Argentina's COVID-19 Lessons",
        "description": "Analysis of country response that includes context of history of resistance, feminist movements, and democratic organizing",
        "link": "https://www.jacobinmag.com/2020/04/argentina-covid-19-coronavirus-pandemic-response",
        "country": "Argentina",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Argentina Sees At Least 6 Femicides During Coronavirus Quarantine",
        "description": "Recounts Argentina's recent history of femicide and recent COVID-19 measures, including #BarbijoRojo/\"Red Facemask\"",
        "link": "https://www.aljazeera.com/news/2020/04/argentina-sees-6-femicides-coronavirus-quarantine-200401185419939.html",
        "country": "Argentina",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Can Transgender People Speak in Armenia?",
        "description": "Comparison of COVID-19 experiences to transgender experiences in Armenia, with a look at disproportionate impacts",
        "link": "https://www.opendemocracy.net/en/odr/can-transgender-people-speak-armenia/",
        "country": "Armenia",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Coronavirus Australia: Why Women Will Feel The Impact More Than Men",
        "description": "Exploration of gendered impacts in Lancet article with Australia-specific data on frontline workers and socio-economic status",
        "link": "https://7news.com.au/lifestyle/health-wellbeing/coronavirus-australia-why-women-will-feel-the-impact-more-than-men-c-748823?utm_campaign=share-icons&utm_source=facebook&utm_medium=social&tid=1584431328469&mc_cid=719f7558Organizing Tool&mc_eid=6bbf508b86",
        "country": "Australia",
        "category": "healthcare, economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Local Human Rights Organisation Urges Feminist Policy In COVID-19 Response",
        "description": "Description of Equality Bahamas' open letter calling for feminist, rights-based access to protection, info, resources",
        "link": "https://ewnews.com/local-human-rights-organisation-urges-feminist-policy-in-covid-19-response",
        "country": "Bahamas",
        "category": "punitive, healthcare, education, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Trafficking Victims Join Fight Against COVID-19 in Azerbaijan",
        "description": "Description of a group of trafficking victims in a shelter sewing face-masks to contribute ",
        "link": "https://www.iom.int/news/trafficking-victims-join-fight-against-covid-19-azerbaijan",
        "country": "Azerbaijan",
        "category": "healthcare",
        "type": "mutual aid resource"
    },
    {
        "title": "Amid the COVID-19 Lockdown, the Feminist Emergency Must be Addressed",
        "description": "Feminist call for comprehensive plan to address gender-based violence, building upon standard measures with additional resources",
        "link": "https://menafn.com/1100018749/Amid-the-COVID-19-Lockdown-the-Feminist-Emergency-Must-be-Addressed",
        "country": "Venezuela",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "The Impact of COVID-19 on Gender Equality in the Arab Region",
        "description": "ECSWA/UN policy brief on anticipated impacts with recommended policy responses",
        "link": "https://reliefweb.int/sites/reliefweb.int/files/resources/policy_brief_on_the_impact_of_covid-19_on_gender_relations_in_the_arab_region_en_1.pdf",
        "country": "Middle East and North Africa",
        "category": "healthcare, education, economy, childcare, labor, food, gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "COVID-19: Bahrainis Launch Initiative to Aid Jobless Foreigners",
        "description": "Brief description of food relief program designed and run by volunteers",
        "link": "https://gulfnews.com/world/gulf/bahrain/covid-19-bahrainis-launch-initiative-to-aid-jobless-foreigners",
        "country": "Bahrain",
        "category": "food",
        "type": "mutual aid resource"
    },
    {
        "title": "Bangladeshi Women Play Crucial Role in Fight Against COVID-19",
        "link": "https://netra.news/2020/bangladeshi-women-play-crucial-role-in-fight-against-covid-19-981",
        "country": "Bangladesh",
        "category": "healthcare, economy, childcare, labor, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 and Implications for Inclusive Economic Empowerment In CARICOM: Policy and Programme Considerations",
        "description": "Policy brief reviewing regional data and making broad policy recommendations for gender-responsive measures",
        "link": "https://www2.unwomen.org/-/media/field%20office%20caribbean/attachments/publications/2020/social%20protection%20covid-19%20%20web%20doc%2020200327.pdf?la=en&vs=812",
        "country": "Latin America and the Caribbean",
        "category": "economy, childcare, labor, food, gender-based violence, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 En América Latina Y El Caribe: Cómo Incorporar A Las Mujeres Y La Igualdad De Género",
        "description": "COVID-19 in Latin America and the Caribbean: How to Incorporate Women and Gender Equality",
        "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/briefing%20coronavirusv1117032020.pdf?la=es&vs=930",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 In Latin America And The Caribbean: How To Incorporate Women And Gender Equality",
        "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/enbriefing%20coronavirusv1117032020.pdf?la=es&vs=0",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Gênero E COVID-19 Na América Latina E No Caribe: Dimensões De Gênero Na Respostae",
        "description": "Gender and COVID-19 in Latin America and the Caribbean: Gender Dimensions in the Response",
        "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/ptbriefing%20coronavirusv1117032020.pdf?la=es&vs=2922",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, race",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Le COVID-19 En Amérique Latine Et Aux Caraïbes: Intégration Des Femmes Et De L’égalité Des Sexes",
        "description": "COVID-19 in Latin America and the Caribbean: Integration of Women and Gender Equality",
        "link": "https://www2.unwomen.org/-/media/field%20office%20americas/documentos/publicaciones/2020/03/frbriefing%20coronavirusv1117032020.pdf?la=es&vs=232",
        "country": "Latin America and the Caribbean",
        "category": "SRHR, economy, childcare, food, gendered health impacts, misinformation",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Protecting the Caribbean’s Most Vulnerable People in the Face of COVID-19",
        "description": "Blog advocating a multi-faceted response the protects elderly, women, and children",
        "link": "https://news.un.org/en/story/2020/04/1060842",
        "country": "Latin America and the Caribbean",
        "category": "healthcare, education, childcare, gender-based violence, disability",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Coronavirus: Why are More Men Than Women Dying?",
        "description": "Article discussing differences observed worldwide with Belgium authorities; sex-disaggregated data not available for Belgium",
        "link": "https://www.brusselstimes.com/all-news/belgium-all-news/102934/coronavirus-why-are-men-dying-more-than-women/",
        "country": "Belgium",
        "category": "gendered health impacts",
        "type": "scientific data"
    },
    {
        "title": "Mental Heath care Tips for children",
        "description": "Ministry of Health & Family Welfare, Government of India-How to take care of Mental Health of Children during Lockdown",
        "link": "https://www.mohfw.gov.in/pdf/mentalhealthchildrean.pdf",
        "country": "India",
        "category": "healthcare, childcare",
        "type": "mutual aid resource"
    },
    {
        "title": "Mental Heath care Tips for Elders",
        "description": "Ministry of Health & Family Welfare, Government of India-How to take care of Mental Health of Elders during Lockdown",
        "link": "https://www.mohfw.gov.in/pdf/mentalhealthelderly.pdf",
        "country": "India",
        "category": "healthcare",
        "type": "mutual aid resource"
    },
    {
        "title": "App for Covid-19",
        "description": "Government of India has launched Aarogya Setu app to take self assessment test, how to maintain social distancing, all information about Covid-19, to get all information about e-pass to be used only for the purpose of supplying essentials and also provides all updates of COVID-19",
        "link": "https://www.mygov.in/aarogya-setu-app/",
        "country": "India",
        "category": "digital surveillance, healthcare, education",
        "type": "scientific data, mutual aid resource, organizing tool"
    },
    {
        "title": "Domestic Violence Decriminalized in Russia",
        "description": "Decriminalization of DV becomes even more dangerous with less access to private assistance",
        "link": "https://www.themoscowtimes.com/2020/03/30/when-your-home-isnt-a-safe-space-russian-women-fear-rise-in-domestic-violence-as-coronavirus-quarantine-starts-a69794",
        "country": "Russia",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Five Actions for Gender Equality in the Covid-19 Response",
        "description": "UNICEF is focusing on 5 key actions to mitigate GBV during the Covid Pandemic ",
        "link": "https://www.unicef.org/documents/five-actions-gender-equality-coronavirus-disease-covid-19-response-technical-note",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Lessons from African Feminists Mobilizing Against COVID-19",
        "description": "Grassroots women’s organizations in Africa are mobilizing their communities to respond to Covid-19",
        "link": "https://blogs.ei.columbia.edu/2020/04/03/african-feminists-mobilizing-covid-19/",
        "country": "Anglophone Africa, Francophone Africa",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis, organizing tool"
    },
    {
        "title": "SHARED RESPONSIBILITY, GLOBAL SOLIDARITY: Responding to the socio-economic impacts of COVID-19",
        "description": "A report sumarizing the impacts of Covid in relation to socio-economic status, responsibilites of everyone on the globe, and ways to minimize impacts",
        "link": "https://unsdg.un.org/resources/shared-responsibility-Global-solidarity-responding-socio-economic-impacts-covid-19",
        "country": "Global",
        "category": "healthcare, economy, labor, gendered health impacts",
        "type": "scientific data"
    },
    {
        "title": "The Coronavirus, exhausting inequalities",
        "description": "Statistics of female domination of the medical and cleaning frontline and single parenting, emphasising inequality.",
        "link": "https://www.letemps.ch/societe/coronavirus-exhausteur-dinegalites",
        "country": "Switzerland",
        "category": "childcare, gendered health impacts",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "Women's role is not to stay beautiful during the quarantine",
        "description": "Sexist memes regarding quarantine beauty standards bringing extra stress to women already juggling more responsibilities",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_le-role-des-femmes-n-est-pas-de-rester-belles-durant-le-confinement-une-chronique-de-safia-kessas-et-sofia-cotsoglou?id=10471428",
        "country": "Belgium",
        "category": "gendered health impacts",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Some Governments are Using Coronavirus to Restrict Women's Rights",
        "description": "Governments neglecting abortions: classified as 'non-essential treatments', delaying bills, closing centers",
        "link": "https://www.aljazeera.com/indepth/opinion/governments-coronavirus-restrict-women-rights-200412095859321.html",
        "country": "Global",
        "category": "SRHR",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Issue of Quarantined Domestic Violence and How to Find Help",
        "description": "DV increase, explanation per country of call lines, pharmacy help and other government assistance.",
        "link": "https://www.bbc.com/mundo/noticias-52009140",
        "country": "Argentina, Chile, Colombia, Uruguay, Mexico, Peru, Venezuela, Spain",
        "category": "gender-based violence",
        "type": "feminist statement or analysis, mutual aid resource, organizing tool"
    },
    {
        "title": "#TheOtherPandemic, A New Campaign Against Domestic Violence",
        "description": "Spotlight Initiative #LaOtraPandemia #TheOtherPandemic for quick access to assistance and information on domestic violence",
        "link": "https://www.clarin.com/sociedad/coronavirus-argentina-laotrapandemia-nueva-campana-violencia-genero_0_93t-SPt_k.html",
        "country": "Argentina",
        "category": "gender-based violence",
        "type": "organizing tool"
    },
    {
        "title": "Mexico: From Women's Uprising To COVD-19 Crisis",
        "description": "Accuses Mexican government for lack of gender specific responses while women suffer most",
        "link": "https://indypendent.org/2020/04/mexico-from-womens-uprising-to-covid-19-crisis/",
        "country": "Mexico",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Threatened by their invisibility: Prostitutes suffer due to COVID-19",
        "description": "Sex workers result to online work, receive no assistance, no safety, are left highly vulnerable.",
        "link": "https://larepublica.pe/mundo/2020/03/30/coronavirus-prostitutas-sufren-por-covid-19-cuarentena-agrava-su-situacion-amenazadas-por-proxenetas/",
        "country": "Peru",
        "category": "SRHR, punitive",
        "type": "feminist statement or analysis"
    },
    {
        "title": "How the Corona Virus Widens the Gender Pay Gap",
        "description": "Women are more highly represented in low-paying jobs, need to continue to close the gender pay gap",
        "link": "https://www.cnn.com/2020/03/31/perspectives/equal-pay-day-coronavirus/index.html",
        "country": "United States",
        "category": "economy",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19 highlights the failure of neoliberal capitalism",
        "description": "This system has failed to deliver people's basic needs, including access to public health and universal social protections",
        "link": "https://apwld.org/covid-19-highlights-the-failure-of-neoliberal-capitalism-we-need-feminist-Global-solidarity/?",
        "country": "Global, Asia-Pacific",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "How Economic Fallout from the Coronavirus May Disproportionately Affect Women",
        "description": "More mothers are the sole or primary breadwinner; paid family or medical leave is essential",
        "link": "https://www.forbes.com/sites/jenniferbarrett/2020/04/02/how-economic-fallout-from-the-coronavirus-may-disproportionately-affect-women/#775observed response12a836a",
        "country": "United States",
        "category": "economy, labor",
        "type": "feminist statement or analysis"
    },
    {
        "title": "What Do Women and Working Families Need to Face COVID-19?",
        "description": "NWLC summerizes their 4 major priorities for Covid-19 responses.",
        "link": "https://msmagazine.com/2020/03/18/what-do-women-and-working-families-need-to-face-covid-19/",
        "country": "United States",
        "category": "economy, childcare",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Solidarity in the time of a pandemic",
        "description": "Solidarity facebook group offering women childcare services, and other assistance helping mental health and jobs",
        "link": "https://www.rtbf.be/info/dossier/les-grenades/detail_solidarite-en-temps-de-pandemie-une-affaire-genree?id=10460115",
        "country": "Belgium",
        "category": "childcare",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Domestic Violence Cases Surge During COVID-19 Epidemic",
        "description": "Blog: Increased number of reports of domestic violence during COVID-19, victims being neglected",
        "link": "http://www.sixthtone.com/news/1005253/domestic-violence-cases-surge-during-covid-19-epidemic",
        "country": "China",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Why we need to talk more about the potential for COVID-19 to Increase the Risk of Violence against Women and Girls",
        "description": "Summarizes the results of a rapid review of evidence on risks of GBV against girls and women",
        "link": "http://www.sddirect.org.uk/news/2020/03/why-we-need-to-talk-more-about-the-potential-for-covid-19-to-increase-the-risk-of-violence-against-women-and-girls/",
        "country": "Global",
        "category": "gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "COVID-19 and Family Violence",
        "description": "FAQ on how COVID-19 pandemic and other natural disasters have increased the incidence of family violence",
        "link": "https://www.thelookout.org.au/family-violence-workers/covid-19-and-family-violence",
        "country": "Australia",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "What does coronavirus mean for violence against women?",
        "description": "The reasons why violence against women during the COVID-19 pandemic are increasing",
        "link": "https://womensmediacenter.com/news-features/what-does-coronavirus-mean-for-violence-against-women",
        "country": "Global, United States",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "How to stop Coronavirus Lockdown Leading to and Upsurge in Violence against Women ",
        "description": "The assumption that our homes are safe during the COVID-19 pandemic is false",
        "link": "https://oxfamblogs.org/fp2p/how-to-stop-coronavirus-lockdown-leading-to-an-upsurge-in-violence-against-women%EF%BB%BF/",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Video Message from Antonio Guterres (UN Secretary-General) on Gender-Based Violence and COVID-19",
        "description": "Guterres notes the increase in domestic violence, urges governments to include prevention and redress as part of response plans",
        "link": "https://www.youtube.com/watch?time_continue=10&v=SXxnZKom6sg&feature=emb_logo",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Make the Prevention and Redress of Violence Against Women a Key Part of National Response Plans for COVID-19\"",
        "description": "Transcript of UN Guterres video message above",
        "link": "https://www.un.org/en/un-coronavirus-communications-team/make-prevention-and-redress-violence-against-women-key-part",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19: Gender Lens",
        "description": "UN Women calls for intergration of violence against women Data and services in COVID-19 surveys",
        "link": "https://mailchi.mp/6f266ed24Organizing Tool9/covid-19-gender-equality-matters",
        "country": "Global",
        "category": "gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Feminist and women's right group demand gender responsive COVID 19 responses",
        "description": "Women's rights organisation cautions on the possibilities of increase in domestic and sexual violence as lockdown extends",
        "link": "https://soulwriteempire.com/lockdown-may-increase-domestic-violence-nigerian-women-rights-groups-warn/",
        "country": "Nigeria",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Gender violence is a silent pandemic",
        "description": "12 Women have been murdered since the quarantine began",
        "link": "https://elpais.com/sociedad/2020-04-07/la-violencia-de-genero-es-una-pandemia-silenciosa.html",
        "country": "Colombia",
        "category": "gender-based violence, punitive",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Gender violence: hotlines for victims during quarantine",
        "description": "Main numbers to call if faced with crisis ",
        "link": "https://colombia.as.com/colombia/2020/04/15/tikitakas/1586907724_975905.html",
        "country": "Colombia",
        "category": "digital surveillance, gender-based violence, disability",
        "type": "mutual aid resource"
    },
    {
        "title": "BAHRAIN: ENSURE PROTECTION OF MIGRANT WORKERS IN COVID-19 RESPONSE: JOINT LETTER",
        "description": "A joint letter from a coalition of civil society organizations and trade unions, urging the Government of Bahrain to ensure that migrant workers receive adequate protection from COVID-19.",
        "link": "https://www.amnesty.org/en/documents/mde11/2168/2020/en/",
        "country": "Bahrain",
        "category": "healthcare, economy, labor, race",
        "type": "feminist statement or analysis"
    },
    {
        "title": "UN Women commends Egypt's gender perspective in COVID-19 response plan",
        "description": "UN Women issued a statement commending the National Council for Women for its efforts to ensure that a gender perspective is adopted in Egypt’s COVID-19 response plan",
        "link": "https://www.egypttoday.com/Article/2/84441/UN-Women-commends-Egypt-s-gender-perspective-in-COVID-19",
        "country": "Egypt",
        "category": "healthcare, education",
        "type": "feminist statement or analysis"
    },
    {
        "title": "Age, Sex, Existing Conditions of COVID-19 Cases and Deaths",
        "description": "Cases and death rate based on age and sex, doesn't go into more depth. ",
        "link": "https://www.worldometers.info/coronavirus/coronavirus-age-sex-demographics/",
        "country": "United States",
        "category": "healthcare",
        "type": "scientific data"
    },
    {
        "title": "ICNARC report on COVID-19 in critical care",
        "description": "Cases and death rates up to March 19th, does not dive into gender differences. ",
        "link": "https://www.icnarc.org/DataServices/Attachments/Download/a9875849-f16c-epolicy or law1-9124-00505601089b",
        "country": "United Kingdom",
        "category": "healthcare",
        "type": "scientific data"
    },
    {
        "title": "Sex, gender and COVID-19: Disaggregated data and health disparities",
        "description": "Whether sex and gender matter to clinical pathways and outcomes associated with COVID-19",
        "link": "https://blogs.bmj.com/bmjgh/2020/03/24/sex-gender-and-covid-19-disaggregated-data-and-health-disparities/",
        "country": "Asia-Pacific, Pacific Islands, Anglophone Africa, Europe, Francophone Africa, Latin America and the Caribbean, Middle East and North Africa",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "Sex, gender and COVID-19 (Live data tracker)",
        "description": "Countries need to begin both collecting and publicly reporting sex-disaggregated data, however, they currently aren't. ",
        "link": "https://Globalhealth5050.org/covid19/",
        "country": "Global",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "Which occupations expose workers to COVID-19 most?",
        "description": "Explores which jobs create the most risk of exposure to COVID-19, examples are nurses, dentists. ",
        "link": "https://autonomy.work/portfolio/jari/",
        "country": "United Kingdom",
        "category": "labor",
        "type": "scientific data"
    },
    {
        "title": "Covid-19 worldwide: we need precise data by age group and sex urgently",
        "description": "We need reporting on sex and age results as this is currently not being done. ",
        "link": "https://www.bmj.com/content/369/bmj.m1366",
        "country": "Global",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "Does Covid-19 Hit Women and Men Differently? U.S. Isn’t Keeping Track",
        "description": "Though we're monitoring the effects of age on COVID-19, we're not doing that with sex. ",
        "link": "https://www.nytimes.com/2020/04/03/us/coronavirus-male-female-data-bias.html",
        "country": "United States",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data, feminist statement or analysis"
    },
    {
        "title": "Covid-19 and gender equality",
        "description": "A webpage aimed at providing information on gender differences for effects of COVID-19.",
        "link": "https://eige.europa.eu/topics/health/covid-19-and-gender-equality",
        "country": "Europe",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "Utilizing evidence-based research to incorporate a gendered lens for the COVID-19 pandemic",
        "description": "A portal that provides information useful for policymakers, practitioners, etc to make informed decisions.",
        "link": "https://gap.hks.harvard.edu/gap-covid19",
        "country": "Global",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "A Meta-Analysis of the Association between Gender and Protective Behaviors in Response to Respiratory Epidemics and Pandemics",
        "description": "An analysis done on gender differences in how men behave versus women in pharmaceutical areas. ",
        "link": "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5074573/",
        "country": "Global",
        "category": "healthcare, gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "Action: Call for a Feminist COVID-19 Policy",
        "description": "This article calls for and outlines the characteristics of a feminist policy for COVID-19",
        "link": "http://feministallianceforrights.org/blog/2020/03/20/action-call-for-a-feminist-covid-19-policy/",
        "country": "Global",
        "category": "healthcare, economy, gendered health impacts, gender-based violence",
        "type": "feminist statement or analysis"
    },
    {
        "title": "COVID-19: Emerging gender data and why it matters",
        "description": "Women and girls face unequal access to work, healthcare, and face increasing domestic violence",
        "link": "https://data.unwomen.org/resources/covid-19-emerging-gender-data-and-why-it-matters",
        "country": "Global",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "COVID-19 and gender: What do we know; what do we need to know?",
        "description": "Importance of capturing health impacts differing between women and men due to current inconsistencies ",
        "link": "https://data.unwomen.org/features/covid-19-and-gender-what-do-we-know-what-do-we-need-know",
        "country": "Global",
        "category": "gendered health impacts, gender-based violence",
        "type": "scientific data"
    },
    {
        "title": "COVID-19 situation update for the WHO European Region",
        "description": "COVID-19 data from April 6th to 12th; does not include much gender data at all. ",
        "link": "http://www.euro.who.int/en/health-topics/health-emergencies/coronavirus-covid-19/weekly-surveillance-report",
        "country": "Europe",
        "category": "healthcare",
        "type": "scientific data"
    }
]

  resources_data.each{|it|
    puts "\n\n\n✨ ✨ ✨ ✨ this is the title: #{it[:title]}✨ ✨ ✨ "
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
        title: it[:title], 
        description: it[:description], 
        link: it[:link], 
        date: nil, 
        progressive_id: Progressive.all[-1].id, 
        page_id: Page.all[2].id
    )

    puts "🔺🔺🔺item created: #{item.id}: #{item.title}\n\n"
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