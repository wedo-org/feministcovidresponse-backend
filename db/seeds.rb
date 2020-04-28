
TypeItem.destroy_all
Type.destroy_all
Category.destroy_all
User.destroy_all
Item.destroy_all
Progressive.destroy_all
Page.destroy_all



Item.reset_pk_sequence
TypeItem.reset_pk_sequence
Progressive.reset_pk_sequence
Type.reset_pk_sequence
Category.reset_pk_sequence
User.reset_pk_sequence
Page.reset_pk_sequence



############# PAGES ############# 
pages = ["response-tracker", "online-dialogues", "resources"]
pages.each{|c| Page.create!(name: c)}

puts "cat done"

############# TYPES ############# 
types = ["observed response", "temporary measure", "policy or law"]
types.each{|t| Type.create!(name: t)}

puts "types done"


############# CATEGORIES ############# 
categories = ["punitive", "digital surveillance", "healthcare", "education", "economy", "childcare", "labor", "food", "gendered health impacts", "gender-based violence","disability", "race", "misinformation"]
categories.each{|t| Category.create!(name: t)}

puts "categories done"

############## PROGRESSIVES ###########
prog = ["progressive", "regressive", "need to watch"]
prog.each{|p| Progressive.create!(name: p)}

puts "prog done"


############### USERS ###############
annie = User.create!(username: "annie2020", email:"annie2020@gmail.com", password_digest: "Annie2020")
sylwia = User.create!(username: "sylwia2020", email:"sylwia2020@gmail.com", password_digest: "Sylwia2020")

puts "users done"


############### ITEMS ###############
firstItem = Item.create!(title: "test", description: "desc", link: "link", date:50920, progressive_id:Progressive.all[0].id, page_id: Page.all[0].id)

secondItem = Item.create!(title: "test2", description: "desc2", link: "link2", date:50920, progressive_id:Progressive.all[1].id, page_id: Page.all[1].id)

puts "items done"


############### TYPE_ITEMS ###############
firstTI = TypeItem.create!(type_id: Type.all[0].id, item_id: firstItem.id )

secondTI = TypeItem.create!(type_id: Type.all[1].id, item_id: firstItem.id )

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
    "The Democratic Republic of Congo",
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
    "Russian Federation",
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
firstCI = CountryItem.create!(item_id: Item.first.id, country_id: Country.all[100].id)
secondCI = CountryItem.create!(item_id: Item.first.id, country_id: Country.all[90].id)
thirdCI = CountryItem.create!(item_id: Item.second.id, country_id: Country.all[80].id)

puts "country items done"