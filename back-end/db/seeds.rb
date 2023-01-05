puts "Seeding continents..."

africa = Continent.create!(name: "Africa", image: "https://i.imgur.com/2knFh4r.jpg", lat: 0.7832, lng: 25.5085, zoom: 3)
asia = Continent.create!(name: "Asia", image: "https://i.imgur.com/s13I6WP.jpg", lat: 45.0479, lng: 100.6197, zoom: 3)
europe = Continent.create!(name: "Europe", image: "https://i.imgur.com/alBpbST.jpg", lat: 56.5260, lng: 15.2551, zoom: 4)
north_america = Continent.create!(name: "North America", image: "https://i.imgur.com/LUVe3xD.jpg", lat: 47.1164, lng: -101.2996, zoom: 3)
oceania = Continent.create!(name: "Oceania", image: "https://i.imgur.com/khDo8MI.jpg", lat: -22.7359, lng: 140.0188, zoom: 4)
south_america = Continent.create!(name: "South America", image: "https://i.imgur.com/EKTF353.jpg", lat: -25.7832, lng: -55.4915, zoom: 3)

puts "Done seeding continents..."

puts "Seeding countries..."

afghanistan = Country.create!(name: "Afghanistan", lat: 33.9391, lng: 67.7100, zoom: 6, continent_id: asia.id)
albania = Country.create!(name: "Albania", lat: 41.1533, lng: 20.1683, zoom: 7, continent_id: europe.id)
algeria = Country.create!(name: "Algeria", lat: 28.0339, lng: 1.6596, zoom: 5, continent_id: africa.id)
andorra = Country.create!(name: "Andorra", lat: 42.5063, lng: 1.5218, zoom: 7, continent_id: europe.id)
angola = Country.create!(name: "Angola", lat: -11.2027, lng: 17.8739, zoom: 6, continent_id: africa.id)
antigua_barbuda = Country.create!(name: "Antigua and Barbuda", lat: 17.0608, lng: -61.7964, zoom: 8, continent_id: north_america.id)
argentina = Country.create!(name: "Argentina", lat: -38.4161, lng: -63.6167, zoom: 4, continent_id: south_america.id)
armenia = Country.create!(name: "Armenia", lat: 40.0691, lng: 45.0382, zoom: 8, continent_id: asia.id)
australia = Country.create!(name: "Australia", lat: -25.2744, lng: 133.7751, zoom: 5, continent_id: oceania.id)
austria = Country.create!(name: "Austria", lat: 47.5162, lng: 14.5501, zoom: 7, continent_id: europe.id)
azerbaijan = Country.create!(name: "Azerbaijan", lat: 40.1431, lng: 47.5769, zoom: 7,continent_id: asia.id)
bahamas = Country.create!(name: "Bahamas", lat: 25.0343, lng: -77.3963, zoom: 8, continent_id: north_america.id)
bahrain = Country.create!(name: "Bahrain", lat: 26.0667, lng: 50.5577, zoom: 8, continent_id: asia.id)
bangladesh = Country.create!(name: "Bangladesh", lat: 23.6850, lng: 90.3563, zoom: 7,continent_id: asia.id)
barbados = Country.create!(name: "Barbados", lat: 13.1939, lng: -59.5432, zoom: 8, continent_id: north_america.id)
belarus = Country.create!(name: "Belarus", lat: 53.7098, lng: 27.9534, zoom: 6, continent_id: europe.id)
belgium = Country.create!(name: "Belgium", lat: 50.5039, lng: 4.4699, zoom: 7, continent_id: europe.id)
belize = Country.create!(name: "Belize", lat: 17.1899, lng: -88.4976, zoom: 7, continent_id: north_america.id)
benin = Country.create!(name: "Benin", lat: 9.3077, lng: 2.3158, zoom: 7, continent_id: africa.id)
bhutan = Country.create!(name: "Bhutan", lat: 27.5142, lng: 90.4336, zoom: 7, continent_id: asia.id)
bolivia = Country.create!(name: "Bolivia", lat: -16.2902, lng: -63.5887, zoom: 6, continent_id: south_america.id)
bosnia_herzegovina = Country.create!(name: "Bosnia and Herzegovina", lat: 43.9159, lng: 17.6791, zoom: 7, continent_id: europe.id)
botswana = Country.create!(name: "Botswana", lat: -22.3285, lng: 24.6849, zoom: 6, continent_id: africa.id)
brazil = Country.create!(name: "Brazil", lat: -14.2350, lng: -51.9253, zoom: 5, continent_id: south_america.id)
brunei = Country.create!(name: "Brunei", lat: 4.5353, lng: 114.7277, zoom: 7, continent_id: asia.id)
bulgaria = Country.create!(name: "Bulgaria", lat: 42.7339, lng: 25.4858, zoom: 6, continent_id: europe.id)
burkina_faso = Country.create!(name: "Burkina Faso", lat: 12.2383, lng: -1.5616, zoom: 7,continent_id: africa.id)
burundi = Country.create!(name: "Burundi", lat: -3.3731, lng: 29.9189, zoom: 7, continent_id: africa.id)
cote_d_ivoire = Country.create!(name: "Côte d'Ivoire", lat: 7.5400, lng: -5.5471, zoom: 7, continent_id: africa.id)
cabo_verde = Country.create!(name: "Cabo Verde", lat: 16.5388, lng: -23.0418, zoom: 7, continent_id: africa.id)
cambodia = Country.create!(name: "Cambodia", lat: 12.5657, lng: 104.9910, zoom: 6, continent_id: asia.id)
cameroon = Country.create!(name: "Cameroon", lat: 7.3697, lng: 12.3547, zoom: 6, continent_id: africa.id)
canada = Country.create!(name: "Canada", lat: 56.1304, lng: -106.3468, zoom: 4, continent_id: north_america.id)
central_africa_republic = Country.create!(name: "Central Africa Republic", lat: 6.6111, lng: 20.9394, zoom: 6, continent_id: africa.id)
chad = Country.create!(name: "Chad", lat: 15.4542, lng: 18.7322, zoom: 6, continent_id: africa.id)
chile = Country.create!(name: "Chile", lat: -35.6751, lng: -71.5430, zoom: 4, continent_id: south_america.id)
china = Country.create!(name: "China", lat: 35.8617, lng: 104.1954, zoom: 4, continent_id: asia.id)
colombia = Country.create!(name: "Colombia", lat: 4.5709, lng: -74.2973, zoom: 6, continent_id: south_america.id)
comoros = Country.create!(name: "Comoros", lat: -11.6455, lng: 43.3333, zoom: 8, continent_id: africa.id)
congo = Country.create!(name: "Congo", lat: -0.2280, lng: 15.8277, zoom: 6, continent_id: africa.id)
costa_rica = Country.create!(name: "Costa Rica", lat: 9.7489, lng: -83.7534, zoom: 7, continent_id: north_america.id)
croatia = Country.create!(name: "Croatia", lat: 45.1000, lng: 15.2000, zoom: 7, continent_id: europe.id)
cuba = Country.create!(name: "Cuba", lat: 21.5218, lng: -77.7812, zoom: 6, continent_id: north_america.id)
cyprus = Country.create!(name: "Cyprus", lat: 35.1264, lng: 33.4299, zoom: 8, continent_id: asia.id)
czech_republic = Country.create!(name: "Czech Republic", lat: 49.8175, lng: 15.4730, zoom: 7,continent_id: europe.id)
democratic_republic_of_the_congo = Country.create!(name: "Democratic Republic of the Congo", lat: 4.0383, lng: 21.7587, zoom: 5, continent_id: africa.id)
denmark = Country.create!(name: "Denmark", lat: 56.2639, lng: 9.5018, zoom: 7, continent_id: europe.id)
djibouti = Country.create!(name: "Djibouti", lat: 11.8251, lng: 42.5903, zoom: 7, continent_id: africa.id)
dominica = Country.create!(name: "Dominica", lat: 15.4150, lng: -61.3710, zoom: 8, continent_id: north_america.id)
dominican_republic = Country.create!(name: "Dominican Republic", lat: 18.7357, lng: -70.1627, zoom: 7, continent_id: north_america.id)
ecuador = Country.create!(name: "Ecuador", lat: -1.8312, lng: -78.1834, zoom: 7, continent_id: south_america.id)
egypt = Country.create!(name: "Egypt", lat: 26.8206, lng: 30.8025, zoom: 6, continent_id: africa.id)
el_salvador = Country.create!(name: "El Salvador", lat: 13.7942, lng: -88.8965, zoom: 7, continent_id: north_america.id)
equatorial_guinea = Country.create!(name: "Equatorial Guinea", lat: 1.6508, lng: 10.2679, zoom: 7, continent_id: africa.id)
eritrea = Country.create!(name: "Eritrea", lat: 15.1794, lng: 39.7823, zoom: 7, continent_id: africa.id)
estonia = Country.create!(name: "Estonia", lat: 58.5953, lng: 25.0136, zoom: 7, continent_id: europe.id)
eswatini = Country.create!(name: "Eswatini", lat: -26.5225, lng: 31.4659, zoom: 7, continent_id: africa.id)
ethiopia = Country.create!(name: "Ethiopia", lat: 9.1450, lng: 40.4897, zoom: 6, continent_id: africa.id)
fiji = Country.create!(name: "Fiji", lat: -17.7134, lng: 178.0650, zoom: 7, continent_id: oceania.id)
finland = Country.create!(name: "Finland", lat: 65.9241, lng: 25.7482, zoom: 5, continent_id: europe.id)
france = Country.create!(name: "France", lat: 46.2276, lng: 2.2137, zoom: 6, continent_id: europe.id)
gabon = Country.create!(name: "Gabon", lat: -0.8037, lng: 11.6094, zoom: 6, continent_id: africa.id)
gambia = Country.create!(name: "Gambia", lat: 13.4432, lng: -15.3101, zoom: 7, continent_id: africa.id)
georgia = Country.create!(name: "Georgia", lat: 42.3154, lng: 43.3569, zoom: 7, continent_id: asia.id)
germany = Country.create!(name: "Germany", lat: 51.1657, lng: 10.4515, zoom: 6, continent_id: europe.id)
ghana = Country.create!(name: "Ghana", lat: 7.9465, lng: 1.0232, zoom: 6, continent_id: africa.id)
greece = Country.create!(name: "Greece", lat: 39.0742, lng: 21.8243, zoom: 6, continent_id: europe.id)
grenada = Country.create!(name: "Grenada", lat: 12.1165, lng: -61.6790, zoom: 8, continent_id: north_america.id)
guatemala = Country.create!(name: "Guatemala", lat: 15.7835, lng: -90.2308, zoom: 6, continent_id: north_america.id)
guinea = Country.create!(name: "Guinea", lat: 9.9456, lng: -9.6966, zoom: 7, continent_id: africa.id)
guinea_bissau = Country.create!(name: "Guinea Bissau", lat: 11.8037, lng: -15.1804, zoom: 7, continent_id: africa.id)
guyana = Country.create!(name: "Guyana", lat: 4.8604, lng: -58.9302, zoom: 6, continent_id: south_america.id)
haiti = Country.create!(name: "Haiti", lat: 18.9712, lng: -72.2852, zoom: 7, continent_id: north_america.id)
holy_see = Country.create!(name: "Holy See", lat: 41.903757, lng: 12.452926, zoom: 8, continent_id: europe.id)
honduras = Country.create!(name: "Honduras", lat: 15.2000, lng: -86.2419, zoom: 6, continent_id: north_america.id)
hungary = Country.create!(name: "Hungary", lat: 47.1625, lng: 19.5033, zoom: 6, continent_id: europe.id)
iceland = Country.create!(name: "Iceland", lat: 64.9631, lng: -19.0208, zoom: 6, continent_id: europe.id)
india = Country.create!(name: "India", lat: 20.5937, lng: 78.9629, zoom: 5, continent_id: asia.id)
indonesia = Country.create!(name: "Indonesia", lat: -0.7893, lng: 113.9213, zoom: 5, continent_id: asia.id)
iran = Country.create!(name: "Iran", lat: 32.4279, lng: 53.6880, zoom: 6, continent_id: asia.id)
iraq = Country.create!(name: "Iraq", lat: 33.2232, lng: 43.6793, zoom: 6, continent_id: asia.id)
ireland = Country.create!(name: "Ireland", lat: 53.1424, lng: -7.6921, zoom: 6, continent_id: europe.id)
israel = Country.create!(name: "Israel", lat: 31.0461, lng: 34.8516, zoom: 6, continent_id: asia.id)
italy = Country.create!(name: "Italy", lat: 41.8719, lng: 12.5674, zoom: 6, continent_id: europe.id)
jamaica = Country.create!(name: "Jamaica", lat: 18.1096, lng: -77.2975, continent_id: north_america.id)
japan = Country.create!(name: "Japan", lat: 36.2048, lng: 138.2529, zoom: 5, continent_id: asia.id)
jordan = Country.create!(name: "Jordan", lat: 30.5852, lng: 36.2384, zoom: 6, continent_id: asia.id)
kazakhstan = Country.create!(name: "Kazakhstan", lat: 48.0196, lng: 66.9237, zoom: 5, continent_id: asia.id)
kenya = Country.create!(name: "Kenya", lat: -0.0236, lng: 37.9062, zoom: 6, continent_id: africa.id)
kiribati = Country.create!(name: "Kiribati", lat: 1.8369, lng: -157.3768, zoom: 8, continent_id: oceania.id)
kuwait = Country.create!(name: "Kuwait", lat: 29.3117, lng: 47.4818, zoom: 7, continent_id: asia.id)
kyrgyzstan = Country.create!(name: "Kyrgyzstan", lat: 41.2044, lng: 74.7661, zoom: 6, continent_id: asia.id)
laos = Country.create!(name: "Laos", lat: 19.8563, lng: 102.4955, zoom: 6, continent_id: asia.id)
latvia = Country.create!(name: "Latvia", lat: 56.8796, lng: 24.6032, zoom: 6, continent_id: europe.id)
lebanon = Country.create!(name: "Lebanon", lat: 33.8547, lng: 35.8623, zoom: 7, continent_id: asia.id)
lesotho = Country.create!(name: "Lesotho", lat: -29.6100, lng: 28.2336, zoom: 7, continent_id: africa.id)
liberia = Country.create!(name: "Liberia", lat: 6.4281, lng: -9.4295, zoom: 7, continent_id: africa.id)
libya = Country.create!(name: "Libya", lat: 26.3351, lng: 17.2283, zoom: 6, continent_id: africa.id)
liechtenstein = Country.create!(name: "Liechtenstein", lat: 47.1410, lng: 9.5209, zoom: 8, continent_id: europe.id)
lithuania = Country.create!(name: "Lithuania", lat: 55.1694, lng: 23.8813, zoom: 6, continent_id: europe.id)
luxembourg = Country.create!(name: "Luxembourg", lat: 49.8153, lng: 6.1296, zoom: 7, continent_id: europe.id)
madagascar = Country.create!(name: "Madagascar", lat: -18.7669, lng: 46.8691, zoom: 6, continent_id: africa.id)
malawi = Country.create!(name: "Malawi", lat: -13.2543, lng: 34.3015, zoom: 7, continent_id: africa.id)
malaysia = Country.create!(name: "Malaysia", lat: 4.2105, lng: 101.9758, zoom: 6, continent_id: asia.id)
maldives = Country.create!(name: "Maldives", lat: 3.2028, lng: 73.2207, zoom: 7, continent_id: asia.id)
mali = Country.create!(name: "Mali", lat: 17.5707, lng: -3.9962, zoom: 6, continent_id: africa.id)
malta = Country.create!(name: "Malta", lat: 35.9375, lng: 14.3754, zoom: 8, continent_id: europe.id)
marshall_islands = Country.create!(name: "Marshall Islands", lat: 7.1315, lng: 171.1845, zoom: 7, continent_id: oceania.id)
mauritania = Country.create!(name: "Mauritania", lat: 21.0079, lng: -10.9408, zoom: 6, continent_id: africa.id)
mauritius = Country.create!(name: "Mauritius", lat: -20.3484, lng: 57.5522, zoom: 7, continent_id: africa.id)
mexico = Country.create!(name: "Mexico", lat: 23.6345, lng: -102.5528, zoom: 5, continent_id: north_america.id)
micronesia = Country.create!(name: "Micronesia", lat: 7.4256, lng: 150.5508, zoom: 6, continent_id: oceania.id)
moldova = Country.create!(name: "Moldova", lat: 47.4116, lng: 28.3699, zoom: 7, continent_id: europe.id)
monaco = Country.create!(name: "Monaco", lat: 43.7384, lng: 7.4246, zoom: 7, continent_id: europe.id)
mongolia = Country.create!(name: "Mongolia", lat: 46.8625, lng: 103.8467, zoom: 6, continent_id: asia.id)
montenegro = Country.create!(name: "Montenegro", lat: 42.7087, lng: 19.3744, zoom: 7, continent_id: europe.id)
morocco = Country.create!(name: "Morocco", lat: 31.7917, lng: -7.0926, zoom: 6, continent_id: africa.id)
mozambique = Country.create!(name: "Mozambique", lat: -18.6657, lng: 35.5296, zoom: 6, continent_id: africa.id)
myanmar = Country.create!(name: "Myanmar", lat: 21.9162, lng: 95.9560, zoom: 5, continent_id: asia.id)
namibia = Country.create!(name: "Namibia", lat: -22.9576, lng: 18.4904, zoom: 6, continent_id: africa.id)
nauru = Country.create!(name: "Nauru", lat: -0.5228, lng: 166.9315, zoom: 8, continent_id: oceania.id)
nepal = Country.create!(name: "Nepal", lat: 28.3949, lng: 84.1240, zoom: 6, continent_id: asia.id)
netherlands = Country.create!(name: "Netherlands", lat: 52.1326, lng: 5.2913, zoom: 7, continent_id: europe.id)
new_zealand = Country.create!(name: "New Zealand", lat: -40.9006, lng: 174.8860, zoom: 6, continent_id: oceania.id)
nicaragua = Country.create!(name: "Nicaragua", lat: 12.8654, lng: -85.2072, zoom: 7, continent_id: north_america.id)
niger = Country.create!(name: "Niger", lat: 17.6078, lng: 8.0817, zoom: 6, continent_id: africa.id)
nigeria = Country.create!(name: "Nigeria", lat: 9.0820, lng: 8.6753, zoom: 6, continent_id: africa.id)
north_korea = Country.create!(name: "North Korea", lat: 40.3399, lng: 127.5101, zoom: 6, continent_id: asia.id)
north_macedonia = Country.create!(name: "North Macedonia", lat: 41.6086, lng: 21.7453, zoom: 7, continent_id: europe.id)
norway = Country.create!(name: "Norway", lat: 65.4720, lng: 12.4689, zoom: 5, continent_id: europe.id)
oman = Country.create!(name: "Oman", lat: 21.4735, lng: 55.9754, zoom: 6, continent_id: asia.id)
pakistan = Country.create!(name: "Pakistan", lat: 30.3753, lng: 69.3451, zoom: 6, continent_id: asia.id)
palau = Country.create!(name: "Palau", lat: 7.5150, lng: 134.5825, zoom: 8, continent_id: oceania.id)
palestine = Country.create!(name: "Palestine", lat: 31.9522, lng: 35.2332, zoom: 6, continent_id: asia.id)
panama = Country.create!(name: "Panama", lat: 8.5380, lng: -80.7821, zoom: 7, continent_id: north_america.id)
papua_new_guinea = Country.create!(name: "Papua New Guinea", lat: -6.3150, lng: 143.9555, zoom: 6, continent_id: oceania.id)
paraguay = Country.create!(name: "Paraguay", lat: -23.4425, lng: -58.4438, zoom: 6, continent_id: south_america.id)
peru = Country.create!(name: "Peru", lat: -9.1900, lng: -75.0152, zoom: 5, continent_id: south_america.id)
philippines = Country.create!(name: "Philippines", lat: 12.8797, lng: 121.7740, zoom: 6, continent_id: asia.id)
poland = Country.create!(name: "Poland", lat: 51.9194, lng: 19.1451, zoom: 6, continent_id: europe.id)
portugal = Country.create!(name: "Portugal", lat: 39.3999, lng: -8.2245, zoom: 6, continent_id: europe.id)
qatar = Country.create!(name: "Qatar", lat: 25.3548, lng: 51.1839, zoom: 7, continent_id: asia.id)
romania = Country.create!(name: "Romania", lat: 45.9432, lng: 24.9668, zoom: 6, continent_id: europe.id)
russia = Country.create!(name: "Russia", lat: 61.5240, lng: 105.3188, zoom: 3, continent_id: europe.id)
rwanda = Country.create!(name: "Rwanda", lat: -1.9403, lng: 29.8739, zoom: 7, continent_id: africa.id)
saint_kitts_nevis = Country.create!(name: "Saint Kitts and Nevis", lat: 17.3578, lng: -62.7830, zoom: 8, continent_id: north_america.id)
saint_lucia = Country.create!(name: "Saint Lucia", lat: 13.9094, lng: -60.9789, zoom: 8, continent_id: north_america.id)
saint_vincent_grenadines = Country.create!(name: "Saint Vincent and the Grenadines", lat: 12.9843, lng: -61.2872, zoom: 8, continent_id: north_america.id)
samoa = Country.create!(name: "Samoa", lat: -13.7590, lng: -172.1046, zoom: 8, continent_id: oceania.id)
san_marino = Country.create!(name: "San Marino", lat: 43.9424, lng: 12.4578, zoom: 8, continent_id: europe.id)
sao_tome_principe = Country.create!(name: "Sao Tome and Principe", lat: 0.1864, lng: 6.6131, zoom: 8, continent_id: africa.id)
saudi_arabia = Country.create!(name: "Saudi Arabia", lat: 23.8859, lng: 45.0792, zoom: 5, continent_id: asia.id)
senegal = Country.create!(name: "Senegal", lat: 14.4974, lng: -14.4524, zoom: 6, continent_id: africa.id)
serbia = Country.create!(name: "Serbia", lat: 44.0165, lng: 21.0059, zoom: 7, continent_id: europe.id)
seychelles = Country.create!(name: "Seychelles", lat: -4.6796, lng: 55.4920, zoom: 7, continent_id: africa.id)
sierra_leone = Country.create!(name: "Sierra Leone", lat: 8.4606, lng: -11.7799, zoom: 7, continent_id: africa.id)
singapore = Country.create!(name: "Singapore", lat: 1.3521, lng: 103.8198, zoom: 8, continent_id: asia.id)
slovakia = Country.create!(name: "Slovakia", lat: 48.6690, lng: 19.6990, zoom: 7, continent_id: europe.id)
slovenia = Country.create!(name: "Slovenia", lat: 46.1512, lng: 14.9955, zoom: 7, continent_id: europe.id)
solomon_islands = Country.create!(name: "Solomon Islands", lat: -9.6457, lng: 160.1562, zoom: 7, continent_id: oceania.id)
somalia = Country.create!(name: "Somalia", lat: 5.1521, lng: 46.1996, zoom: 6, continent_id: africa.id)
south_africa = Country.create!(name: "South Africa", lat: -30.5595, lng: 22.9375, zoom: 5, continent_id: africa.id)
south_korea = Country.create!(name: "South Korea", lat: 35.9078, lng: 127.7669, zoom: 6, continent_id: asia.id)
south_sudan = Country.create!(name: "South Sudan", lat: 6.8770, lng: 31.3070, zoom: 6, continent_id: africa.id)
spain = Country.create!(name: "Spain", lat: 40.4637, lng: -3.7492, zoom: 6, continent_id: europe.id)
sri_lanka = Country.create!(name: "Sri Lanka", lat: 7.8731, lng: 80.7718, zoom: 7, continent_id: asia.id)
sudan = Country.create!(name: "Sudan", lat: 12.8628, lng: 30.2176, zoom: 5, continent_id: africa.id)
suriname = Country.create!(name: "Suriname", lat: 3.9193, lng: -56.0278, zoom: 6, continent_id: south_america.id)
sweden = Country.create!(name: "Sweden", lat: 62.7282, lng: 18.6435, zoom: 5, continent_id: europe.id)
switzerland = Country.create!(name: "Switzerland", lat: 46.8182, lng: 8.2275, zoom: 7, continent_id: europe.id)
syria = Country.create!(name: "Syria", lat: 34.8021, lng: 38.9968, zoom: 6, continent_id: asia.id)
tajikistan = Country.create!(name: "Tajikistan", lat: 38.8610, lng: 71.2761, zoom: 6, continent_id: asia.id)
tanzania = Country.create!(name: "Tanzania", lat: -6.3690, lng: 34.8888, zoom: 6, continent_id: africa.id)
thailand = Country.create!(name: "Thailand", lat: 15.8700, lng: 100.9925, zoom: 6, continent_id: asia.id)
timor_leste = Country.create!(name: "Timor-Leste", lat: -8.8742, lng: 125.7275, zoom: 7, continent_id: asia.id)
togo = Country.create!(name: "Togo", lat: 8.6195, lng: 0.8248, zoom: 6, continent_id: africa.id)
tonga = Country.create!(name: "Tonga", lat: -21.1790, lng: -175.1982, zoom: 8, continent_id: oceania.id)
trinidad_tobago = Country.create!(name: "Trinidad and Tobago", lat: 10.6918, lng: -61.2225, zoom: 7, continent_id: north_america.id)
tunisia = Country.create!(name: "Tunisia", lat: 33.8869, lng: 9.5375, zoom: 6, continent_id: africa.id)
turkey = Country.create!(name: "Turkey", lat: 38.9637, lng: 35.2433, zoom: 6, continent_id: asia.id)
turkmenistan = Country.create!(name: "Turkmenistan", lat: 38.9697, lng: 59.5563, zoom: 6, continent_id: asia.id)
tuvalu = Country.create!(name: "Tuvalu", lat: -7.1095, lng: 177.6493, zoom: 8, continent_id: oceania.id)
uganda = Country.create!(name: "Uganda", lat: 1.3733, lng: 32.2903, zoom: 6, continent_id: africa.id)
ukraine = Country.create!(name: "Ukraine", lat: 48.3794, lng: 31.1656, zoom: 6, continent_id: europe.id)
united_arab_emirates = Country.create!(name: "United Arab Emirates", lat: 23.4241, lng: 53.8478, zoom: 6, continent_id: asia.id)
united_kingdom = Country.create!(name: "United Kingdom", lat: 55.3781, lng: -3.4360, zoom: 6, continent_id: europe.id)
united_states_of_america = Country.create!(name: "United States of America", lat: 37.0902, lng: -95.7129, zoom: 4, continent_id: north_america.id)
uruguay = Country.create!(name: "Uruguay", lat: -32.5228, lng: -55.7658, zoom: 6, continent_id: south_america.id)
uzbekistan = Country.create!(name: "Uzbekistan", lat: 41.3775, lng: 64.5853, zoom: 6, continent_id: asia.id)
vanuatu = Country.create!(name: "Vanuatu", lat: -15.3767, lng: 166.9592, zoom: 7, continent_id: oceania.id)
venezuela = Country.create!(name: "Venezuela", lat: 6.4238, lng: -66.5897, zoom: 6, continent_id: south_america.id)
vietnam = Country.create!(name: "Vietnam", lat: 16.0583, lng: 108.2772, zoom: 6, continent_id: asia.id)
yemen = Country.create!(name: "Yemen", lat: 15.5527, lng: 48.5164, zoom: 6, continent_id: asia.id)
zambia = Country.create!(name: "Zambia", lat: -13.1339, lng: 27.8493, zoom: 6, continent_id: africa.id)
zimbabwe = Country.create!(name: "Zimbabwe", lat: -19.0154, lng: 29.1549, zoom: 6, continent_id: africa.id)

puts "Done seeding countries..."

puts "Seeding destinations..."

kyoto = Destination.create!(name: "Kyoto", country_name: "Japan", image: "https://www.neverendingvoyage.com/wp-content/uploads/2019/09/kyoto-japan-26.jpg", lat: 35.0116, lng: 135.7681, country_id: japan.id )
tokyo = Destination.create!(name: "Tokyo", country_name: "Japan", image: "https://www.travelandleisure.com/thmb/VscfMXHNO6uBpaX2cuIW1q2ZtA8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/tokyo-japan-TOKYOTG0621-52012ff551dc46c4a87ac8e3151307a4.jpg", lat: 35.6762, lng: 139.6503, country_id: japan.id)
sapporo = Destination.create!(name: "Sapporo", country_name: "Japan", image: "https://www.jetstar.com/_/media/inspiration-hub/article-images/19dec/best-skis-hokkaido/hero_japan_sapporo_skiing.jpg?rev=4d57f7158ba9400ba21716645d52bdcb&w=1050&rc=1&cw=1050&ch=590&cx=55&cy=0&hash=9342D14EF9DF82C17DEDE93E9AFA4FA30F3DFA10", lat: 43.0618, lng: 141.3545, country_id: japan.id)
okinawa = Destination.create!(name: "Okinawa", country_name: "Japan", image: "https://cdn.audleytravel.com/3601/2573/79/15979501-aharen-beach-okinawa-japan.jpg", lat: 26.3344, lng: 127.8056, country_id: japan.id)
tsushima = Destination.create!(name: "Tsushima Island", country_name: "Japan", image: "https://www.videogameschronicle.com/files/2021/01/2413C941-AFC0-4A1B-83B6-7A7D1C13C9FC-scaled.jpeg", lat: 34.2028, lng: 129.2875, country_id: japan.id)

#China

great_wall_of_china = Destination.create!(name: "Great Wall of China", country_name: "China", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/The_Great_Wall_of_China_at_Jinshanling-edit.jpg/1200px-The_Great_Wall_of_China_at_Jinshanling-edit.jpg", lat: 40.4319, lng: 116.5704, country_id: china.id)
terracotta_army = Destination.create!(name: "Terracotta Army", country_name: "China", image: "https://www.archaeology.wiki/wp-content/uploads/2022/03/Terracotta_army_2.jpg", lat: 34.3841, lng: 109.2785, country_id: china.id)

#Fiji

castaway_island = Destination.create!(name: "Castaway Island", country_name: "Fiji", image: "https://www.outrigger.com/AdaptiveImages/optimizely/e553734f-c2c5-4208-8328-f965b27422da/castaway-island-fiji-aerial-14.jpg?quality=70&width=1400&height=788&stamp=2d56ae281c432a0c466f56243ec526a86bd9d0ac", lat: -17.7332, lng: 177.1342, country_id: fiji.id)

#United States

denver = Destination.create!(name: "Denver, CO", country_name: "USA", image: "https://i.natgeofe.com/n/2f26e117-08d9-4364-a76b-817421bfc5d6/denver-travel_4x3.jpg", lat: 39.7392, lng: -104.9903, country_id: united_states_of_america.id)
moab = Destination.create!(name: "Moab, UT", country_name: "USA", image: "https://www.discovermoab.com/wp-content/uploads/2022/02/arches.jpg", lat: 38.5733, lng: -109.5498, country_id: united_states_of_america.id)
chicago = Destination.create!(name: "Chicago, IL", country_name: "USA", image: "https://www.travelandleisure.com/thmb/wwUPgdpCUuD5sAPFLQf4YasjH0M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chicago-illinois-CHITG0221-e448062fc5164da0bba639f9857987f6.jpg", lat: 41.8781, lng: -87.6298, country_id: united_states_of_america.id)
new_york_city = Destination.create!(name: "New York City, NY", country_name: "USA", image: "https://media.cntraveler.com/photos/63483e15ef943eff59de603a/master/pass/New%20York%20City_GettyImages-1347979016.jpg", lat: 40.7128, lng: -74.0060, country_id: united_states_of_america.id)
oahu = Destination.create!(name: "Oahu, HI", country_name: "USA", image: "https://cdn.britannica.com/44/91844-050-F248F634/beach-Waikiki-Honolulu-Oahu-Hawaii.jpg", lat: 21.4389, lng: -158.0001, country_id: united_states_of_america.id)
los_angeles = Destination.create!(name: "Los Angeles, CA", country_name: "USA", image: "https://a.travel-assets.com/findyours-php/viewfinder/images/res70/475000/475457-Los-Angeles.jpg", lat: 34.0522, lng: -118.2437, country_id: united_states_of_america.id)
san_francisco = Destination.create!(name: "San Francisco, CA", country_name: "USA", image: "https://cdn.travelpulse.com/images/d3a9edf4-a957-df11-b491-006073e71405/e864929d-127a-4caf-9a15-7f9cd45160f0/630x355.jpg", lat: 37.736582, lng: -122.444944, country_id: united_states_of_america.id)
portland = Destination.create!(name: "Portland, OR", country_name: "USA", image: "https://www.themanual.com/wp-content/uploads/sites/9/2021/04/portland-oregon-travel-city-guide.jpg?p=1", lat: 45.5152, lng: -122.6784, country_id: united_states_of_america.id)
jackson = Destination.create!(name: "Jackson, WY", country_name: "USA", image: "https://www.bostonmagazine.com/wp-content/uploads/sites/2/2021/11/style_traveler-1.jpg", lat: 43.4799, lng: -110.7624, country_id: united_states_of_america.id)

#Switzerland

zurich = Destination.create!(name: "Zurich", image: "https://assets.ey.com/content/dam/ey-sites/ey-com/en_ch/topics/sustainability/ey-zurich-old-town-hero.jpg", lat: 47.3769, lng: 8.5417, country_id: switzerland.id)

#Spain

barcelona = Destination.create!(name: "Barcelona", country_name: "Spain", image: "https://cdn.vox-cdn.com/thumbor/TW6wbTfkQCpkFXIqYHte2heEZxI=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/16013556/shutterstock_785442694.jpg", lat: 41.3874, lng: 2.1686, country_id: spain.id)
valencia = Destination.create!(name: "Valencia", country_name: "Spain", image: "https://a.cdn-hotels.com/gdcs/production78/d854/b66ba664-ec2f-47b3-92bc-63ff4480ff53.jpg", lat: 39.4699, lng: -0.3763, country_id: spain.id)
madrid = Destination.create!(name: "Madrid", country_name: "Spain", image: "https://www.travelandleisure.com/thmb/2I1sDNmheYfpBUu1vI5kvZWPVBQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/madrid-spain-city-landscape-WELLSPENTMADRID1221-4b8d575977a745b8b0da3416d1764355.jpg", lat: 40.4168, lng: -3.7038, country_id: spain.id)
le_concha = Destination.create!(name: "Le Concha", country_name: "Spain", image: "https://www.worldbeachguide.com/photos/la-concha-san-sebastian.jpg", lat: 43.3186, lng: -1.9860, country_id: spain.id)
ibiza = Destination.create!(name: "Ibiza", country_name: "Spain", image: "https://media-cdn.tripadvisor.com/media/photo-c/1280x250/14/10/2e/a4/ibiza.jpg", lat: 38.9828, lng: 1.401588, country_id: spain.id)

#France

paris = Destination.create!(name: "Paris", country_name: "France", image: "https://i.natgeofe.com/n/41db9fb7-93e6-4d40-8838-71db6d0b057f/02_Europe_square.jpg", lat: 48.8566, lng: 2.3522, country_id: france.id)
cote_d_azur = Destination.create!(name: "Côte d'Azur", country_name: "France", image: "https://media.cntraveler.com/photos/5d40639da616db0008403cef/master/w_3810,h_2540,c_limit/Monaco_GettyImages-177779735.jpg", lat: 43.9352, lng: 6.0679, country_id: france.id)
charmonix = Destination.create!(name: "Chamonix-Mont-Blanc", country_name: "France", image: "https://a.cdn-hotels.com/gdcs/production64/d660/912c7882-cd32-4512-9360-2690bcad6074.jpg?impolicy=fcrop&w=800&h=533&q=medium", lat: 45.9237, lng: 6.8694, country_id: france.id)
biarritz = Destination.create!(name: "Biarritz", country_name: "France", image: "https://www.tripsavvy.com/thmb/nGjiDVwnS9sQwRIRbkrggnuqpgE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1055764342-a8614331da2e4d01af6b8c0b5754a9a3.jpg", lat: 43.4832, lng: -1.5586, country_id: france.id)
provence = Destination.create!(name: "Provence", country_name: "France", image: "https://www.lelongweekend.com/wp-content/uploads/2021/07/DSC04162-1-scaled.jpg", lat: 44.0145, lng: 6.2116, country_id: france.id)

#Ireland

cliffs_of_moher = Destination.create!(name: "Cliffs of Moher", country_name: "Ireland", image: "https://www.travelandleisure.com/thmb/sfXuVqMMLP-imISvIMB_4gd7eHY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/cliffs-of-moher-landscape-county-clare-ireland-MOHER0321-40a02114170148b884bab2e7ac90f895.jpg", lat: 52.9715, lng: -9.4309, country_id: ireland.id)
dublin = Destination.create!(name: "Dublin", country_name: "Ireland", image: "https://www.travelandleisure.com/thmb/IGxfbwkS5Q-ODIUfZIuNy9FtmBM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/dublin-ireland-DUBLINTG0721-e1066115faf74b958a7b1d792ba13c1c.jpg", lat: 53.3498, lng: -6.2603, country_id: ireland.id)
ring_of_kerry = Destination.create!(name: "Ring of Kerry", country_name: "Ireland", image: "https://s27363.pcdn.co/wp-content/uploads/2020/05/Ring-of-Kerry-Ireland.jpg.optimal.jpg", lat: 51.9427, lng: -9.9172, country_id: ireland.id)

#Norway

geirangerfjord = Destination.create!(name: "Geirangerfjord", country_name: "Norway", image: "http://res.cloudinary.com/simpleview/image/upload/v1450117455/clients/norway/unesco-geirangerfjord-skagefla-waterfall-2-1_6cc6a64a-a204-432e-8753-01ef2080f24e.jpg", lat: 62.1015, lng: 7.0941, country_id: norway.id)
jotunheimen = Destination.create!(name: "Jotunheimen", country_name: "Norway", image: "https://nationalparks-15bc7.kxcdn.com/images/parks/jotunheimen/Jotunheimen%20National%20Park.jpg", lat: 61.6333, lng: 8.3000, country_id: norway.id)
bergen = Destination.create!(name: "Bergen", country_name: "Norway", image: "https://a.cdn-hotels.com/gdcs/production157/d661/0dcf4a5f-3f9f-410e-b5ce-ec9b9f856c52.jpg", lat: 60.3913, lng: 5.3221, country_id: norway.id)
oslo = Destination.create!(name: "Oslo", country_name: "Norway", image: "https://a.cdn-hotels.com/gdcs/production71/d226/39f9230c-24f4-4697-a382-1ee5b30872c0.jpg", lat: 59.9139, lng: 10.7522, country_id: norway.id)
tromso = Destination.create!(name: "Tromsø", country_name: "Norway", image: "https://www.visittromso.no/sites/cb_tromso/files/styles/slide_large/public/2200x1200_NordlysTroms%C3%B8Sentrum_Vegard%20Stien.jpg?h=cb1d9225&itok=9BCxJ3Mr", lat: 69.6492, lng: 18.9553, country_id: norway.id)


#Sweden

stockholm = Destination.create!(name: "Stockholm", country_name: "Sweden", image: "https://media.timeout.com/images/105171709/image.jpg", lat: 60.1282, lng: 18.6435, country_id: sweden.id)

#Iceland

blue_lagoon = Destination.create!(name: "Blue Lagoon", country_name: "Iceland", image: "https://hekla.com/blog/wp-content/uploads/2019/03/blue-Lagoon-post-2.jpg", lat: 63.8797, lng: -22.4486, country_id: iceland.id)
reynisfjara = Destination.create!(name: "Reynisfjara Black Sand Beach", country_name: "Iceland", image: "https://cdn.nordicvisitor.com/images/1/iceland/summer/reynisfjara_black_sand_beach.jpg", lat: 63.4057, lng: -19.0716, country_id: iceland.id)

#Finland

helsinki = Destination.create!(name: "Helsinki", country_name: "Finland", image: "https://a.cdn-hotels.com/gdcs/production0/d1589/6d9eed40-c31d-11e8-9739-0242ac110006.jpg", lat: 60.1699, lng: 24.9384, country_id: finland.id)

#Austria

vienna = Destination.create!(name: "Vienna", country_name: "Austria", image: "https://www.travelandleisure.com/thmb/zFpjulihpXjpUV7gKNHzydvJANA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/vienna-austria-VIENNATG0621-ecb0ee926c2d49c4bce610db594f7405.jpg", lat: 48.2082, lng: 16.3738, country_id: austria.id)
hallstatt = Destination.create!(name: "Hallstatt", country_name: "Austria", image: "https://upload.travelawaits.com/ta/uploads/2021/04/8c9fb74e59d34c4a6689455a553758c9fb7.jpg", lat: 47.5622, lng: 13.6493, country_id: austria.id)
kitzbuheler_horn = Destination.create!(name: "Kitzbüheler Horn", country_name: "Austria", image: "https://www.skiresort.info/typo3temp/_processed_/a2/2c/cc/cb/1040db4938.jpg", lat: 47.4667, lng: 12.4167, country_id: austria.id)

#Germany

berlin = Destination.create!(name: "Berlin", country_name: "Germany", image: "https://cdn.getyourguide.com/img/location/6f156967bc6d6563.jpeg/99.jpg", lat: 52.5200, lng: 13.4050, country_id: germany.id)
munich = Destination.create!(name: "Munich", country_name: "Germany", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Stadtbild_M%C3%BCnchen.jpg/1200px-Stadtbild_M%C3%BCnchen.jpg", lat: 48.1351, lng: 11.5820, country_id: germany.id)
cologne_cathedral = Destination.create!(name: "Cologne Cathedral", country_name: "Germany", image: "https://cdn.theculturetrip.com/wp-content/uploads/2017/09/shutterstock_374295496.jpg", lat: 50.9413, lng: 6.9583, country_id: germany.id)
hamburg = Destination.create!(name: "Hamburg", country_name: "Germany", image: "https://a.cdn-hotels.com/gdcs/production57/d830/70f985c4-c6b3-4700-a11f-e7289de58ae5.jpg", lat: 53.5488, lng: 9.9872, country_id: germany.id)

#Italy

rome = Destination.create!(name: "Rome", country_name: "Italy", image: "https://rome.com/wp-content/uploads/2017/04/London-Bridge-and-Big-Ben-at-Night-1-1-2.jpg", lat: 41.9028, lng: 12.4964, country_id: italy.id)
naples = Destination.create!(name: "Naples", country_name: "Italy", image: "https://www.worldtravelguide.net/wp-content/uploads/2018/06/shu-Europe-Italy-Naples-284756078-ronnybas-1440x823.jpg", lat: 40.8518, lng: 14.2681, country_id: italy.id)
florence = Destination.create!(name: "Florence", country_name: "Italy", image: "https://media.timeout.com/images/105879414/image.jpg", lat: 43.7696, lng: 11.2558, country_id: italy.id)
venice = Destination.create!(name: "Venice", country_name: "Italy", image: "https://cdn.britannica.com/62/153462-050-3D4F41AF/Grand-Canal-Venice.jpg", lat: 45.4408, lng: 12.3155, country_id: italy.id)
leaning_tower = Destination.create!(name: "Leaning Tower of Pisa", country_name: "Italy", image: "https://www.thoughtco.com/thmb/zlvu5Ci1rPgaoXmmbsNN3YJz8eA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/towers-Pisa-522003327-58d9cb3b5f9b58468357d3a7.jpg", lat: 43.7230, lng: 10.3966, country_id: italy.id)
amalfi_coast = Destination.create!(name: "Amalfi Coast", country_name: "Italy", image: "https://www.travelandleisure.com/thmb/n149x4IEv7uTFUHqaE2tQT8PInQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/header-positano-AMALFI0622-39a49349a2c145e6b3df85f884cf3217.jpg", lat: 40.6333, lng: 14.6029, country_id: italy.id)
pantheon = Destination.create!(name: "Pantheon", country_name: "Italy", image: "https://monolithicdome.com/vault/img/2021/07/20/60f708d73c0d975e795f679e/rome-italy-pantheon-exterior-complete-marino.huge.jpg", lat: 41.8986, lng: 12.4769, country_id: italy.id)
pompeii = Destination.create!(name: "Pompeii", country_name: "Italy", image: "https://images.squarespace-cdn.com/content/v1/53172b1be4b0cc8a5401db4a/1614175570723-YV7WLEQ5IXX6W5SAORM5/pompeii-along-dusty-roads-4.jpg?format=2500w", lat: 40.7462, lng: 14.4989, country_id: italy.id)
valley_of_temples = Destination.create!(name: "Valley of Temples", country_name: "Italy", image: "https://www.coopculture.it/shared/coopculture/immagini/valle-dei-templi-tempio.jpg", lat: 37.2924, lng: 13.5937, country_id: italy.id)

#Greece

athens = Destination.create!(name: "Athens", country_name: "Greece", image: "https://cdn.britannica.com/66/102266-050-FBDEFCA1/acropolis-city-state-Greece-Athens.jpg", lat: 37.9838, lng: 23.7275, country_id: greece.id)
santorini = Destination.create!(name: "Santorini", country_name: "Greece", image: "https://a.cdn-hotels.com/gdcs/production18/d1838/041ae6b1-0a88-4c22-a648-53a22dd4a006.jpg", lat: 36.3932, lng: 25.4615, country_id: greece.id)
mykonos = Destination.create!(name: "Mykonos", country_name: "Greece", image: "https://www.travellens.co/content/images/2022/03/Mykonos.jpg", lat: 37.4415, lng: 25.3667, country_id: greece.id)

#Turkey

cappadocia = Destination.create!(name: "Cappadocia", country_name: "Turkey", image: "https://assets3.thrillist.com/v1/image/3109501/1200x630/flatten;crop_down;webp=auto;jpeg_quality=70", lat: 38.3535, lng: 35.0911, country_id: turkey.id)

#Netherlands

amsterdam = Destination.create!(name: "Amsterdam", country_name: "Netherlands", image: "https://upload.wikimedia.org/wikipedia/commons/b/be/KeizersgrachtReguliersgrachtAmsterdam.jpg", lat: 52.3676, lng: 4.9041, country_id: netherlands.id)

#Poland

warsaw = Destination.create!(name: "Warsaw", country_name: "Poland", image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/fa/d2/warsaw.jpg?w=700&h=500&s=1", lat: 52.2297, lng: 21.0122, country_id: poland.id)
krakow = Destination.create!(name: "Krakow", country_name: "Poland", image: "https://lp-cms-production.imgix.net/image_browser/krakow-main-square-GettyRF_530609539.jpg", lat: 50.0647, lng: 19.9450, country_id: poland.id)

#Romania

bran_castle = Destination.create!(name: "Bran Castle", country_name: "Romania", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Castelul_Bran2.jpg/1200px-Castelul_Bran2.jpg", lat: 45.5149, lng: 25.3672, country_id: romania.id)

#Czech Republic

prague = Destination.create!(name: "Prague", country_name: "Czech Republic", image: "https://cdn.britannica.com/21/177921-050-4529CD59/Charles-Bridge-Vltava-River-Prague.jpg", lat: 50.0755, lng: 14.4378, country_id: czech_republic.id)

#United Kingdom

stonehenge = Destination.create!(name: "Stonehenge", country_name: "United Kingdom", image: "https://upload.wikimedia.org/wikipedia/commons/3/3c/Stonehenge2007_07_30.jpg", lat: 51.1789, lng: -1.8262, country_id: united_kingdom.id)
london = Destination.create!(name: "London", country_name: "United Kingdom", image: "https://images.contentstack.io/v3/assets/blt00454ccee8f8fe6b/bltf5fca6a3eec4d180/6139d40bec680b43eb02a9ee/US_London_UK_Header.jpg?width=1680&quality=70&auto=webp", lat: 51.5072, lng: -0.1276, country_id: united_kingdom.id)
isle_of_man = Destination.create!(name: "Isle of Man", country_name: "United Kingdom", image: "https://static.nationalgeographic.co.uk/files/styles/image_3200/public/cycling_0.jpg?w=1600&h=900", lat: 54.2361, lng: -4.5481, country_id: united_kingdom.id)
glasgow = Destination.create!(name: "Glasgow", country_name: "United Kingdom", image: "https://img.delicious.com.au/MzilNPOR/del/2018/12/on-the-go-in-glasgow-98211-2.jpg", lat: 55.8642, lng: -4.2518, country_id: united_kingdom.id)
manchester = Destination.create!(name: "Manchester", country_name: "United Kingdom", image: "https://cdn.britannica.com/42/116342-050-5AC41785/Manchester-Eng.jpg", lat: 53.4808, lng: -2.2426, country_id: united_kingdom.id)
wales = Destination.create!(name: "Wales", country_name: "United Kingdom", image: "https://cdn.britannica.com/35/94735-050-4E7CACDF/Conwy-Castle-River-Wales.jpg", lat: 52.1307, lng: -3.7837, country_id: united_kingdom.id)

#Australia

sydney = Destination.create!(name: "Sydney", country_name: "Australia", image: "https://www.travelandleisure.com/thmb/6JVbKFFtu7AeQu5rHioeDpcPxko=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/sydney-australia-SYDNEYTG0621-2dcacc38417541f689e293d397da9eaf.jpg", lat: -33.8688, lng: 151.2093, country_id: australia.id)
great_barrier_reef = Destination.create!(name: "Great Barrier Reef", country_name: "Australia", image: "https://media.cntraveler.com/photos/5e270f847a47880008257cbe/5:4/w_2500,h_2000,c_limit/ReefSuites-GreatBarrierReef-2020-4.jpg", lat: -18.2871, lng: 147.6992, country_id: australia.id)
melbourne = Destination.create!(name: "Melbourne", country_name: "Australia", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Melburnian_Skyline.jpg/1200px-Melburnian_Skyline.jpg", lat: -37.8136, lng: 144.9631, country_id: australia.id)
daintree = Destination.create!(name: "Daintree Rainforest", country_name: "Australia", image: "https://theblondeabroad.com/wp-content/uploads/2018/08/Daintree.jpg", lat: -16.1700, lng: 145.4185, country_id: australia.id)
kangaroo_island = Destination.create!(name: "Kangaroo Island", country_name: "Australia", image: "https://mybestplace.com/uploads/2021/08/Kangaroo-Island-Australia-SOCIAL.jpg", lat: -35.7752, lng: 137.2142, country_id: australia.id)
tasmania = Destination.create!(name: "Tasmania", country_name: "Australia", image: "https://lp-cms-production.imgix.net/2019-06/6478bf63ea17597bb03104eef02ededc-tasmania.jpg", lat: -42.0409, lng: 146.8087, country_id: australia.id)
uluru_kata = Destination.create!(name: "Uluru-Kata Tjuta National Park", country_name: "Australia", image: "https://www.worldatlas.com/upload/fa/1c/c8/uluru-or-ayers-rock-uluru-kata-tjuta-national-park-northern-territory-australia-photodigitaal-nl.jpg", lat: -25.3438, lng: 131.0347, country_id: australia.id)

#South Africa

kruger = Destination.create!(name: "Kruger National Park", country_name: "South Africa", image: "https://cdn.kimkim.com/files/a/content_articles/featured_photos/22d8dd5c4ae3a3626e0cf30b0cc97e48bc14c72d/big-5b902d4507219d542102a964d62a091b.jpg", lat: -23.9884, lng: 31.5547, country_id: south_africa.id)
cape_town = Destination.create!(name: "Cape Town", country_name: "South Africa", image: "https://cdn.britannica.com/42/126842-050-0803BC41/Sea-Point-Cape-Town-SAf.jpg", lat: -33.9249, lng: 18.4241, country_id: south_africa.id)
kalahari = Destination.create!(name: "Kalahari", country_name: "South Africa", image: "https://www.worldatlas.com/r/w1200/upload/a0/43/3b/shutterstock-796510987.jpg", lat: -25.5920, lng: 21.0937, country_id: south_africa.id)

#Madagascar

ile_sainte_marie = Destination.create!(name: "Ile Sainte Marie", country_name: "Madagascar", image: "https://www.naturalworldsafaris.com/media/3265/nws-st-madagascar-ile-sainte-marie-aerial.jpg", lat: -16.8944, lng: 49.9059, country_id: madagascar.id)
avenue_of_the_boababs = Destination.create!(name: "Avenue of the Baobabs", country_name: "Madagascar", image: "https://awesomeplacestovisit.com/wp-content/uploads/2020/08/Africa-Madagascar-Avenue-of-the-Baobabs-2-1024x768-1.jpg", lat: -20.2505, lng: 44.4197, country_id: madagascar.id)
ranomafana = Destination.create!(name: "Ranomafana National Park", country_name: "Madagascar", image: "https://travellersworldwide.com/wp-content/uploads/2021/07/shutterstock_1084027373.jpg", lat: -21.2599, lng: 47.4515, country_id: madagascar.id)

#Egypt

pyramids_of_giza = Destination.create!(name: "Pyramids of Giza", country_name: "Egypt", image: "https://cdn.mos.cms.futurecdn.net/YMa7Wx2FyjQFUjEeqa72Rm-1200-80.jpg", lat: 29.9792, lng: 31.1342, country_id: egypt.id)
aswan = Destination.create!(name: "Aswan", country_name: "Egypt", image: "https://www.ahstatic.com/photos/1666_sw_00_p_1024x768.jpg", lat: 24.0889, lng: 32.8998, country_id: egypt.id)
abu_simbel = Destination.create!(name: "Abu Simbel", country_name: "Egypt", image: "https://cdn.britannica.com/49/189749-050-EDADDEC0/Great-Temple-of-Ramses-II-temples-larger.jpg", lat: 22.3372, lng: 31.6258, country_id: egypt.id)
red_sea = Destination.create!(name: "Red Sea", country_name: "Egypt", image: "http://cdn.cnn.com/cnnnext/dam/assets/200611101955-01-egypt-dahab.jpg", lat: 20.2802, lng: 38.5126, country_id: egypt.id)

#Kenya

maasai_mara = Destination.create!(name: "Maasai Mara National Reserve", country_name: "Kenya", image: "https://www.planetware.com/photos-large/KEN/kenya-Maasai-mara.jpg", lat: -1.4937, lng: 35.1446, country_id: kenya.id)

#Philippines

white_beach = Destination.create!(name: "White Beach", country_name: "Philippines", image: "https://a.cdn-hotels.com/gdcs/production5/d320/a0c5a994-d99a-4278-a1b1-8a3b652461ac.jpg", lat: 11.9524, lng: 121.9296, country_id: philippines.id)
manila = Destination.create!(name: "Manila", country_name: "Philippines", image: "https://res.klook.com/image/upload/fl_lossy.progressive,w_800,c_fill,q_85/Manila1-1125x624_biy6ej.png", lat: 14.5995, lng: 120.9842, country_id: philippines.id)
chocolate_hills = Destination.create!(name: "Chocolate Hills", country_name: "Philippines", image: "https://upload.wikimedia.org/wikipedia/commons/2/28/Chocolate_Hills_overview.JPG", lat: 9.8297, lng: 124.1397, country_id: philippines.id)
batad = Destination.create!(name: "Batad Rice Terraces", country_name: "Philippines", image: "https://afar.brightspotcdn.com/dims4/default/fef1c0c/2147483647/strip/false/crop/800x450+0+25/resize/1200x675!/quality/90/?url=https%3A%2F%2Fafar-media-production-web.s3.amazonaws.com%2Fbrightspot%2F71%2F28%2Fc189a543b31f45e031b2171cc55f%2Foriginal-ifugao-rha-29-5018-20tony-20waltham-age.jpg", lat: 11.4170, lng: 123.1127, country_id: philippines.id)
palawan = Destination.create!(name: "Palawan", country_name: "Philippines", image: "https://media.cntraveler.com/photos/5668630dc3c9e01555a4d421/master/pass/palawan-philippines-coron-cr-alamy.jpg", lat: 9.8349, lng: 118.7384, country_id: philippines.id)
sugba_lagoon = Destination.create!(name: "Sugba Lagoon", country_name: "Philippines", image: "https://uploads-ssl.webflow.com/576fd5a8f192527e50a4b95c/5e3bed2d529ab1ebe6703091_visiting%20sugba%20lagoon%20in%20siargao.jpg", lat: 9.9065, lng: 125.9003, country_id: philippines.id)

#Thailand

railay_beach = Destination.create!(name: "Railay Beach", country_name: "Thailand", image: "https://lp-cms-production.imgix.net/2019-06/128074626_high.jpg", lat: 8.0117, lng: 98.8378, country_id: thailand.id)
koh_phi_phi = Destination.create!(name: "Koh Phi Phi", country_name: "Thailand", image: "https://theworldtravelguy.com/wp-content/uploads/2022/09/DJI_0858_1200.jpg", lat: 7.7407, lng: 98.7784, country_id: thailand.id)
bangkok = Destination.create!(name: "Bangkok", country_name: "Thailand", image: "https://imageio.forbes.com/specials-images/imageserve/62baf0bb91f8ba58ef4a638a/Sunrise-with-Grand-Palace-of-Bangkok--Thailand/960x0.jpg?format=jpg&width=960", lat: 13.7563, lng: 100.5018, country_id: thailand.id)
chaing_mai = Destination.create!(name: "Chiang Mai", country_name: "Thailand", image: "https://a.cdn-hotels.com/gdcs/production9/d679/184d7edf-5c3a-470c-8529-b0085d6d5b0e.jpg?impolicy=fcrop&w=800&h=533&q=medium", lat: 18.7883, lng: 98.9853, country_id: thailand.id)
pai = Destination.create!(name: "Pai", country_name: "Thailand", image: "https://www.nomadasaurus.com/wp-content/uploads/2019/04/Things-To-Do-In-Pai-Thailand.jpg", lat: 19.3582, lng: 98.4405, country_id: thailand.id)
koh_samui = Destination.create!(name: "Koh Samui", country_name: "Thailand", image: "https://a.cdn-hotels.com/gdcs/production152/d1240/fc640491-6c35-45a9-a649-3c176d63d94c.jpg", lat: 9.5120, lng: 100.0136, country_id: thailand.id)
tonsai_beach = Destination.create!(name: "Tonsai Beach", country_name: "Thailand", image: "https://www.adventureinyou.com/wp-content/uploads/2016/05/everything-need-to-know-Ton-Sai_LEAD.jpg", lat: 8.0117, lng: 98.8378, country_id: thailand.id)
khao_sok = Destination.create!(name: "Khao Sok National Park", country_name: "Thailand", image: "https://www.placesofjuma.com/khao-sok-national-park/khao-sok-thailand-2/", lat: 8.9873, lng: 98.6294, country_id: thailand.id)

#Vietnam

halong_bay = Destination.create!(name: "Halong Bay", country_name: "Vietnam", image: "https://lp-cms-production.imgix.net/features/2019/04/HalongBay-aa0f7e71a1db.jpg", lat: 20.9101, lng: 107.1839, country_id: vietnam.id)
sapa = Destination.create!(name: "Sapa", country_name: "Vietnam", image: "https://www.remotelands.com/storage/media/1533/conversions/b161005160-banner-size.jpg", lat: 22.3364, lng: 103.8438, country_id: vietnam.id)
hanoi = Destination.create!(name: "Hanoi", country_name: "Vietnam", image: "https://i.natgeofe.com/n/39181071-db55-488f-bd54-707759ad924e/river-hanoi-vietnam.jpg?w=2520&h=1610", lat: 21.0278, lng: 105.8342, country_id: vietnam.id)
cu_chi_tunnels = Destination.create!(name: "Cu Chi Tunnels", country_name: "Vietnam", image: "https://www.traveltalktours.com/wp-content/uploads/2021/12/shutterstock_1186953112-1024x678.jpg", lat: 11.1427, lng: 106.4623, country_id: vietnam.id)
ba_be_national_park = Destination.create!(name: "Ba Be National Park", country_name: "Vietnam", image: "https://www.babenationalpark.com.vn/UserFiles/image/Travel%20Blog/3-day-trip-to-Ban-Gioc-Waterfall-and-Ba-Be-Lake.jpg", lat: 22.3963, lng: 105.6157, country_id: vietnam.id)
ha_giang = Destination.create!(name: "Ha Giang", country_name: "Vietnam", image: "https://amotravel.com/wp-content/uploads/2016/06/ha-giang.jpg", lat: 22.8026, lng: 104.9784, country_id: vietnam.id)
son_doong = Destination.create!(name: "Son Doong Cave", country_name: "Vietnam", image: "https://lp-cms-production.imgix.net/features/2019/05/Son-Doong-Cave-Ryan-Deboodt-8e2574f9767f.jpg", lat: 17.4348, lng: 106.2997, country_id: vietnam.id)

#Indonesia

bali = Destination.create!(name: "Bali", country_name: "Indonesia", image: "https://imageio.forbes.com/specials-images/imageserve/675172642/pura-ulun-danu-bratan-temple-in-Bali-/960x0.jpg?format=jpg&width=960", lat: -8.4095, lng: 115.1889, country_id: indonesia.id)
borobudur =Destination.create!(name: "Borobudur", country_name: "Indonesia", image: "https://lp-cms-production.imgix.net/2019-06/f4024c571e5e09ce5e4049bc181500b1-borobudur-temple.jpg?sharp=10&vib=20&w=1200&auto=compress&fit=crop&fm=auto&h=800", lat: -7.6079, lng: 110.2038, country_id: indonesia.id)
gili_islands = Destination.create!(name: "Gili Islands", country_name: "Indonesia", image: "https://onestep4ward.com/wp-content/uploads/2020/12/gili-meno-statues.jpg", lat: -8.359045, lng: 116.081284, country_id: indonesia.id)
komodo = Destination.create!(name: "Komodo National Park", country_name: "Indonesia", image: "https://upload.wikimedia.org/wikipedia/commons/3/3a/Komodo_dragon_at_Komodo_National_Park.jpg", lat: -8.5277, lng: 119.4833, country_id: indonesia.id)
sacred_monkey_forest = Destination.create!(name: "Sacred Monkey Forest", country_name: "Indonesia", image: "https://a.cdn-hotels.com/gdcs/production86/d1161/aef215bb-15a0-4003-8467-98a47bcac4d3.jpg", lat: -8.5194, lng: 115.2606, country_id: indonesia.id)
mount_bromo = Destination.create!(name: "Mount Bromo", country_name: "Indonesia", image: "https://theworldtravelguy.com/wp-content/uploads/2021/04/EDIT02_1200.jpg", lat: -7.9425, lng: 112.9530, country_id: indonesia.id)
raja_ampat = Destination.create!(name: "Raja Ampat", country_name: "Indonesia", image: "https://www.zubludiving.com/images/Indonesia/West-Papua/Raja-Ampat/Raja-Ampat-Wayag-Diving.jpg", lat: -1.0915, lng: 130.8779, country_id: indonesia.id)

#Singapore

marina_bay_sands = Destination.create!(name: "Marina Bay Sands", country_name: "Singapore", image: "https://resources.thomascook.in/images/holidays/sightSeeing/MarinabaySand850.jpg", lat: 1.2838, lng: 103.8591, country_id: singapore.id)

#Georgia

tbilisi = Destination.create!(name: "Tbilisi", country_name: "Georgia", image: "https://static01.nyt.com/images/2018/06/17/travel/17hours1/merlin_138493119_dc17f17f-96a2-4487-a9ea-214914926374-superJumbo.jpg", lat: 41.7151, lng: 44.8271, country_id: georgia.id)

#South Korea

changdeokgung_palace = Destination.create!(name: "Changdeokgung Palace", country_name: "South Korea", image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/19/5e/41/entrance.jpg?w=1200&h=-1&s=1", lat: 37.5799, lng: 126.9912, country_id: south_korea.id)
busan = Destination.create!(name: "Busan", country_name: "South Korea", image: "https://a.cdn-hotels.com/gdcs/production144/d559/b4aff5a2-1af3-454f-8cce-97ba6ec44b34.jpg", lat: 35.1796, lng: 129.0756, country_id: south_korea.id)
seoraksan = Destination.create!(name: "Seoraksan National Park", country_name: "South Korea", image: "https://upload.wikimedia.org/wikipedia/commons/0/01/Dinosaur_Ridge_of_Seoraksan.jpg", lat: 38.1196, lng: 128.4656, country_id: south_korea.id)
jeju = Destination.create!(name: "Jeju Island", country_name: "South Korea", image: "https://cdn.new7wonders.com/app/uploads/sites/4/2016/09/044-Seongsan-Ilchulbong-and-Hallasan-1920x1227.jpg", lat: 33.4890, lng: 126.4983, country_id: south_korea.id)

#India

taj_mahal = Destination.create!(name: "Taj Mahal", country_name: "India", image: "https://cdn.britannica.com/86/170586-050-AB7FEFAE/Taj-Mahal-Agra-India.jpg", lat: 27.1751, lng: 78.0421, country_id: india.id)
varanasi = Destination.create!(name: "Varanasi", country_name: "India", image: "https://cdn.britannica.com/08/153508-050-2A9EAD76/Ganges-River-Varanasi-Uttar-Pradesh-India.jpg", lat: 25.3176, lng: 82.9739, country_id: india.id)
mumbai = Destination.create!(name: "Mumbai", country_name: "India", image: "https://www.andbeyond.com/wp-content/uploads/sites/5/Chhatrapati-Shivaji-Terminus-railway-station-mumbai.jpg", lat: 19.0760, lng: 72.8777, country_id: india.id)

#Sri Lanka

yala = Destination.create!(name: "Yala National Park", country_name: "Sri Lanka", image: "https://s1.it.atcdn.net/wp-content/uploads/2018/12/yala.jpg", lat: 6.3667, lng: 81.5167, country_id: sri_lanka.id)
sigiriya = Destination.create!(name: "Sigiriya Rock Fort", country_name: "Sri Lanka", image: "https://i.natgeofe.com/n/0a6facf5-2d64-4603-8a8e-b2bd5fbba709/03-sigiriya-rock.jpg", lat: 7.9570, lng: 80.7603, country_id: sri_lanka.id)

#Myanmar

bagan = Destination.create!(name: "Bagan", country_name: "Myanmar", image: "https://cdn.theatlantic.com/media/img/photo/2019/07/bagan/b01_127437272-1/original.jpg", lat: 21.1717, lng: 94.8585, country_id: myanmar.id)
golden_rock = Destination.create!(name: "Golden Rock", country_name: "Myanmar", image: "https://img.atlasobscura.com/63iv4JWam24fEI4vussCNQws7OXvGbOzT53BmONf5j4/rt:fit/h:390/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3BsYWNl/X2ltYWdlcy9hOGNj/ZWJjMy1hZjFjLTQ4/YjAtOGNiYi05YzFh/ZDY5NTczOGM2N2Iw/MDBmMzE3Y2YyZGU4/N2RfRGVwb3NpdHBo/b3Rvc181NTE2NjQy/M19sLTIwMTUuanBn.jpg", lat: 17.4816, lng: 97.0982, country_id: myanmar.id)

#Laos

kuang_si_caves = Destination.create!(name: "Kuang Si Caves", country_name: "Laos", image: "https://templesandtreehouses.com/wp-content/uploads/2018/02/Kuang-Si-1-1.jpg", lat: 19.74917, lng: 101.99167, country_id: laos.id)
elephant_village = Destination.create!(name: "Elephant Village Sanctuary", country_name: "Laos", image: "https://laostravel.indochinacharm.com/wp-content/uploads/2017/11/MandaLao-Elephant-Sanctuary-Luang-Prabang.jpg", lat: 19.8921, lng: 102.1372, country_id: laos.id)
four_thousand_islands = Destination.create!(name: "4000 Islands", country_name: "Laos", image: "https://www.travel4history.com/wp-content/uploads/2021/07/Laos-si-phan-don-travel-guide.jpg", lat: 15.1167, lng: 105.7833, country_id: laos.id)

#Cambodia

angkor_wat = Destination.create!(name: "Angkor Wat", country_name: "Cambodia", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Ankor_Wat_temple.jpg/1200px-Ankor_Wat_temple.jpg", lat: 13.4125, lng: 103.8670, country_id: cambodia.id)
phnom_penh = Destination.create!(name: "Phnom Penh", country_name: "Cambodia", image: "https://media.nomadicmatt.com/2021/PhnomPenh.jpg", lat: 11.5564, lng: 104.9282, country_id: cambodia.id)

#Malaysia

batu_caves = Destination.create!(name: "Batu Caves", country_name: "Malaysia", image: "https://upload.wikimedia.org/wikipedia/commons/8/8f/Batu_Caves_stairs_2022-05.jpg", lat: 3.2379, lng: 101.6840, country_id: malaysia.id)

#Nepal

mt_everest = Destination.create!(name: "Mt. Everest", country_name: "Nepal", image: "https://i.insider.com/62b220554245600018ddcf74?width=1136&format=jpeg", lat: 27.9881, lng: 86.9250, country_id: nepal.id)
kathmandu = Destination.create!(name: "Kathmandu", country_name: "Nepal", image: "https://www.holidify.com/images/bgImages/KATHMANDU.jpg", lat: 27.7172, lng: 85.3240, country_id: nepal.id)

#Bhutan

paro = Destination.create!(name: "Paro", country_name: "Bhutan", image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/a1/42/75/photo4jpg.jpg?w=700&h=500&s=1", lat: 27.4287, lng: 89.4164, country_id: bhutan.id)

#Jordan

petra = Destination.create!(name: "Petra", country_name: "Jordan", image: "https://cdn.britannica.com/88/189788-050-9B5DB3A4/Al-Dayr-Petra-Jordan.jpg", lat: 30.3285, lng: 35.4444, country_id: jordan.id)
dead_sea = Destination.create!(name: "Dead Sea", country_name: "Jordan", image: "https://static.toiimg.com/thumb/msid-79608505,width-748,height-499,resizemode=4,imgsize-1624884/.jpg", lat: 31.5590, lng: 35.4732, country_id: jordan.id)

#Canada

niagara_falls = Destination.create!(name: "Niagara Falls", country_name: "Canada", image: "https://cdn.britannica.com/30/94430-050-D0FC51CD/Niagara-Falls.jpg", lat: 43.0896, lng: -79.0849, country_id: canada.id)
banff = Destination.create!(name: "Banff National Park", country_name: "Canada", image: "https://cdn.britannica.com/71/94371-050-293AE931/Mountains-region-Ten-Peaks-Moraine-Lake-Alberta.jpg", lat: 51.1784, lng: -115.5708, country_id: canada.id)
whistler = Destination.create!(name: "Whistler", country_name: "Canada", image: "https://www.momondo.com/discover/wp-content/uploads/sites/260/2016/10/6f3f2699-7a56-3181-962b-12e668c27320.jpg", lat: 50.1162, lng: -122.9535, country_id: canada.id)

#Mexico

chichen_itza = Destination.create!(name: "Chichen Itza", country_name: "Mexico", image: "https://cdn.britannica.com/86/179586-138-8B763D72/Overview-Chichen-Itza-Yucatan-Mexico.jpg?w=800&h=450&c=crop", lat: 20.6843, lng: -88.5678, country_id: mexico.id)
tulum = Destination.create!(name: "Tulum", country_name: "Mexico", image: "https://www.senatorrivieracancunsparesort.com/wp-content/uploads/2019/11/tulum2.jpg", lat: 20.2114, lng: -87.4654, country_id: mexico.id)
cozumel = Destination.create!(name: "Cozumel", country_name: "Mexico", image: "https://cdn.mexperience.com/wp-content/uploads/Cozumel-Beach-Resort-Aerial-NBS.jpg", lat: 20.4230, lng: -86.9223, country_id: mexico.id)
cancun = Destination.create!(name: "Cancun", country_name: "Mexico", image: "https://www.travelandleisure.com/thmb/HNJGaBI61yQvoP5oJXJb6p_rtJg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/header-cancun-hotel-zone-CANCUNALLIN0117-6ed309db327e4a639f9e002fdfc7f658.jpg", lat: 21.1619, lng: -86.8515, country_id: mexico.id)

#Belize

blue_hole = Destination.create!(name: "Blue Hole", country_name: "Belize", image: "https://upload.wikimedia.org/wikipedia/commons/6/61/Great_Blue_Hole.jpg", lat: 17.3160, lng: -87.5347, country_id: belize.id)

#Brazil

rio = Destination.create!(name: "Rio de Janeiro", country_name: "Brazil", image: "https://upload.wikimedia.org/wikipedia/commons/9/98/Cidade_Maravilhosa.jpg", lat: -22.9068, lng: -43.1729, country_id: brazil.id)
amazon = Destination.create!(name: "Amazon Rainforest", country_name: "Brazil", image: "https://mediaproxy.salon.com/width/1200/https://media.salon.com/2021/05/brazil-amazon-rainforest-0503211.jpg", lat: -3.4653, lng: -62.2159, country_id: brazil.id)
sao_paulo = Destination.create!(name: "São Paulo", country_name: "Brazil", image: "https://lp-cms-production.imgix.net/image_browser/shutterstockRF_153080222.jpg", lat: -23.5558, lng: -46.6396, country_id: brazil.id)

#Chile

patagonia = Destination.create!(name: "Patagonia", country_name: "Chile", image: "https://www.rei.com/blog/wp-content/uploads/sites/4/2018/12/PAL_051316_39744-1.jpg?resize=1024%2C681", lat: -41.8101, lng: -68.9063, country_id: chile.id)
valle_de_la_luna = Destination.create!(name: "Valle de la Luna", country_name: "Chile", image: "https://www.wanderlustchloe.com/wp-content/uploads/2016/04/Lunar-Valley-Atacama-Chile-1.jpg", lat: -22.9258, lng: -68.2880, country_id: chile.id)
easter_island = Destination.create!(name: "Easter Island", country_name: "Chile", image: "https://th-thumbnailer.cdn-si-edu.com/8KneWAkhaEcgvqASa-xZO6IPMx4=/fit-in/1600x0/filters:focal(2304x1536:2305x1537)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/81/22/8122e662-681b-4370-a20a-a82e936c3711/gettyimages-921707628.jpg", lat: -27.1127, lng: -109.3497, country_id: chile.id)

#Argentina

iguazu_falls = Destination.create!(name: "Iguazú Falls", country_name: "Argentina", image: "https://www.tripsavvy.com/thmb/gsvNYW6xREKJL0nqQHpAOImQHHQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/iguazu-falls--iguazu-national-park--brazil-argentina-paraguay-border--1171077586-0c0af92a39e24d179bfa236d3248b2db.jpg", lat: -25.6953, lng: -54.4367, country_id: argentina.id)
la_boca = Destination.create!(name: "La Boca", country_name: "Argentina", image: "https://www.fodors.com/wp-content/uploads/2018/08/HERO-BA-Instagrammable-Neighborhood-La-Boca-18.jpg", lat: -34.6345, lng: -58.3631, country_id: argentina.id)

#Peru

machu_picchu = Destination.create!(name: "Machu Picchu", country_name: "Peru", image: "https://www.peru.travel/Contenido/Atractivo/Imagen/en/172/1.1/Principal/machu-picchu.jpg", lat: -13.1631, lng: -72.5450, country_id: peru.id)


#Costa Rica

manuel_antonio = Destination.create!(name: "Manuel Antonio National Park", country_name: "Costa Rica", image: "https://manuelantoniopark.com/wp-content/uploads/2020/03/landing-page-4-scaled.jpg", lat: 9.3923, lng: -84.1370, country_id: costa_rica.id)

#Venezuela

angel_falls = Destination.create!(name: "Angel Falls", country_name: "Venezuela", image: "https://www.beautifulworld.com/wp-content/uploads/2016/09/Angel-Falls.jpg", lat: 5.9701, lng: -62.5362, country_id: venezuela.id)

puts "Done seeding destinations..."

puts "Seeding users..."

alex = User.create!(username: "alex", first_name: "Alex", last_name: "Van Vleet", password: "123", image: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512")

paolo = User.create!(username: "paolo", first_name: "Paolo", last_name: "Garcia", password: "123", image: "https://ca.slack-edge.com/T02MD9XTF-U042AK20JHF-4054289dfb6f-192")

chuck = User.create!(username: "chuck", first_name: "Charles", last_name: "Shrout", password: "123", image: "https://ca.slack-edge.com/T02MD9XTF-U0422JGBW9H-8ed761596b8c-192")

mason = User.create!(username: "mason", first_name: "Mason", last_name: "White", password: "123", image: "https://media.licdn.com/dms/image/C4E03AQGb-6dA6-dORg/profile-displayphoto-shrink_100_100/0/1566876970979?e=1678320000&v=beta&t=MCLybOF4P5dy6ZPrGjdaG_Rme75BRIuSm8_DOP55Ess")

andy = User.create!(username: "andy", first_name: "Andy", last_name: "McLean", password: "123", image: "https://ca.slack-edge.com/T02MD9XTF-U041H98GB27-020f7a151554-192")

sam = User.create!(username: "sam", first_name: "Sam", last_name: "Waters", password: "123", image: "https://ca.slack-edge.com/T02MD9XTF-U03S7QG8J5A-cf35624449d2-192")

puts "Done seeding users..."

puts "Seeding forums..."

afghanistan_forum = Forum.create!(country_name: "Afghanistan", flag: "https://cdn.britannica.com/40/5340-004-B25ED5CF/Flag-Afghanistan.jpg", user_id: alex.id, country_id: afghanistan.id)
albania_forum = Forum.create!(country_name: "Albania", flag: "https://cdn.britannica.com/00/6200-004-42B7690E/Flag-Albania.jpg", user_id: alex.id, country_id: albania.id)
algeria_forum = Forum.create!(country_name: "Algeria", flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Flag_of_Algeria.svg/1200px-Flag_of_Algeria.svg.png", user_id: alex.id, country_id: algeria.id)
andorra_forum = Forum.create!(country_name: "Andorra", flag: "https://cdn.britannica.com/83/5583-050-2F48FD32/Flag-Andorra.jpg", user_id: alex.id, country_id: andorra.id)
angola_forum = Forum.create!(country_name: "Angola", flag: "https://cdn.britannica.com/12/4212-004-EBD6B5B2/Flag-Angola.jpg", user_id: alex.id, country_id: angola.id)
antigua_barbuda_forum = Forum.create!(country_name: "Antigua and Barbuda", flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Flag_of_Antigua_and_Barbuda.svg/800px-Flag_of_Antigua_and_Barbuda.svg.png", user_id: alex.id, country_id: antigua_barbuda.id)
argentina_forum = Forum.create!(country_name: "Argentina", flag: "https://cdn.britannica.com/69/5869-004-7D75CD05/Flag-Argentina.jpg", user_id: alex.id, country_id: argentina.id)
armenia_forum = Forum.create!(country_name: "Armenia", flag: "https://www.worldatlas.com/img/flag/am-flag.jpg", user_id: alex.id, country_id: armenia.id)
australia_forum = Forum.create!(country_name: "Australia", flag: "https://cdn.britannica.com/78/6078-004-77AF7322/Flag-Australia.jpg", user_id: alex.id, country_id: australia.id)
austria_forum = Forum.create!(country_name: "Austria", flag: "https://cdn.britannica.com/73/6073-004-B0B9EBEE/Flag-Austria.jpg", user_id: alex.id, country_id: austria.id)
azerbaijan_forum = Forum.create!(country_name: "Azerbaijan", flag: "https://cdn.britannica.com/14/4714-004-959E7B43/Flag-Azerbaijan.jpg", user_id: alex.id, country_id: azerbaijan.id)
bahamas_forum = Forum.create!(country_name: "Bahamas", flag: "https://cdn.britannica.com/06/5106-004-B8EE9FD3/Flag-of-The-Bahamas.jpg", user_id: alex.id, country_id: bahamas.id)
bahrain_forum = Forum.create!(country_name: "Bahrain", flag: "https://cdn.britannica.com/27/70827-050-8D001288/Bahraini-flag-2002.jpg", user_id: alex.id, country_id: bahrain.id)
bangladesh_forum = Forum.create!(country_name: "Bangladesh", flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Flag_of_Bangladesh.svg/1200px-Flag_of_Bangladesh.svg.png", user_id: alex.id, country_id: bangladesh.id)
barbados_forum = Forum.create!(country_name: "Barbados", flag: "https://cdn.britannica.com/08/5108-004-FD58C8EF/Flag-Barbados.jpg", user_id: alex.id, country_id: barbados.id)
belarus_forum = Forum.create!(country_name: "Belarus", flag: "https://cdn.britannica.com/01/6401-004-FAEACB4E/Flag-Belarus.jpg", user_id: alex.id, country_id: belarus.id)
belgium_forum = Forum.create!(country_name: "Belgium", flag: "https://cdn.britannica.com/08/6408-004-405E272F/Flag-Belgium.jpg", user_id: alex.id, country_id: belgium.id)
belize_forum = Forum.create!(country_name: "Belize", flag: "https://cdn.britannica.com/07/7207-004-A82842C0/Flag-Belize.jpg", user_id: alex.id, country_id: belize.id)
benin_forum = Forum.create!(country_name: "Benin", flag: "https://upload.wikimedia.org/wikipedia/commons/0/0a/Flag_of_Benin.svg", user_id: alex.id, country_id: benin.id)
bhutan_forum = Forum.create!(country_name: "Bhutan", flag: "https://cdn.britannica.com/79/6479-004-BDDD1FE1/flag-dragon-image-Bhutan-design.jpg", user_id: alex.id, country_id: bhutan.id)
bolivia_forum = Forum.create!(country_name: "Bolivia", flag: "https://cdn.britannica.com/54/6754-004-AE3C4294/Flag-Bolivia.jpg", user_id: alex.id, country_id: bolivia.id)
bosnia_herzegovina_forum = Forum.create!(country_name: "Bosnia and Herzegovina", flag: "https://cdn.britannica.com/02/6202-004-5E2B285D/Flag-Bosnia-and-Herzegovina.jpg", user_id: alex.id, country_id: bosnia_herzegovina.id)
botswana_forum = Forum.create!(country_name: "Botswana", flag: "https://cdn.britannica.com/15/4215-004-F844A05D/Flag-Botswana.jpg", user_id: alex.id, country_id: botswana.id)
brazil_forum = Forum.create!(country_name: "Brazil", flag: "https://cdn.britannica.com/47/6847-004-7D668BB0/Flag-Brazil.jpg", user_id: alex.id, country_id: brazil.id)
brunei_forum = Forum.create!(country_name: "Brunei", flag: "https://cdn.britannica.com/24/4024-050-7385D7F2/Flag-Brunei.jpg", user_id: alex.id, country_id: brunei.id)
bulgaria_forum = Forum.create!(country_name: "Bulgaria", flag: "https://cdn.britannica.com/04/6204-004-DC5CFE4F/Flag-Bulgaria.jpg", user_id: alex.id, country_id: bulgaria.id)
burkina_faso_forum = Forum.create!(country_name: "Burkina Faso", flag: "https://cdn.britannica.com/40/5040-050-1735B7DC/Flag-Burkina-Faso.jpg", user_id: alex.id, country_id: burkina_faso.id)
burundi_forum = Forum.create!(country_name: "Burundi", flag: "https://cdn.britannica.com/77/7177-004-9D72922D/Flag-Burundi.jpg", user_id: alex.id, country_id: burundi.id)
cote_d_ivoire_forum = Forum.create!(country_name: "Côte d'Ivoire", flag: "https://cdn.britannica.com/48/5048-004-EA370A21/Flag-Cote-dIvoire.jpg", user_id: alex.id, country_id: cote_d_ivoire.id)
cabo_verde_forum = Forum.create!(country_name: "Cabo Verde", flag: "https://cdn.britannica.com/44/5044-050-2530FC16/Flag-Cabo-Verde.jpg", user_id: alex.id, country_id: cabo_verde.id)
cambodia_forum = Forum.create!(country_name: "Cambodia", flag: "https://cdn.britannica.com/27/4027-004-B57F84E9/Flag-Cambodia.jpg", user_id: alex.id, country_id: cambodia.id)
cameroon_forum = Forum.create!(country_name: "Cameroon", flag: "https://cdn.britannica.com/42/5042-004-7FF4ACCA/Flag-Cameroon.jpg", user_id: alex.id, country_id: cameroon.id)
canada_forum = Forum.create!(country_name: "Canada", flag: "https://cdn.britannica.com/68/7068-004-7848FEB4/Flag-Canada.jpg", user_id: alex.id, country_id: canada.id)
central_african_republic_forum = Forum.create!(country_name: "Central African Republic", flag: "https://cdn.britannica.com/80/7180-004-8AFA2B44/Flag-Central-African-Republic.jpg", user_id: alex.id, country_id: central_africa_republic.id)
chad_forum = Forum.create!(country_name: "Chad", flag: "https://cdn.britannica.com/46/5046-004-CA99DA45/Flag-Chad.jpg", user_id: alex.id, country_id: chad.id)
chile_forum = Forum.create!(country_name: "Chile", flag: "https://cdn.britannica.com/85/7485-004-00B07230/Flag-Chile.jpg", user_id: alex.id, country_id: chile.id)
china_forum = Forum.create!(country_name: "China", flag: "https://cdn.britannica.com/90/7490-004-BAD4AA72/Flag-China.jpg", user_id: alex.id, country_id: china.id)
colombia_forum = Forum.create!(country_name: "Colombia", flag: "https://cdn.britannica.com/68/7668-004-08492AB7/Flag-Colombia.jpg", user_id: alex.id, country_id: colombia.id)
comoros_forum = Forum.create!(country_name: "Comoros", flag: "https://cdn.britannica.com/40/7740-050-C43A463A/Flag-Comoros.jpg", user_id: alex.id, country_id: comoros.id)
congo_forum = Forum.create!(country_name: "Congo", flag: "https://cdn.britannica.com/82/7182-004-2F057893/Flag-Republic-of-the-Congo.jpg", user_id: alex.id, country_id: congo.id)
costa_rica_forum = Forum.create!(country_name: "Costa Rica", flag: "https://cdn.britannica.com/25/7225-004-65F33B16/Flag-Costa-Rica.jpg", user_id: alex.id, country_id: costa_rica.id)
croatia_forum = Forum.create!(country_name: "Croatia", flag: "https://cdn.britannica.com/06/6206-004-14730C28/Flag-Croatia.jpg", user_id: alex.id, country_id: croatia.id)
cuba_forum = Forum.create!(country_name: "Cuba", flag: "https://cdn.britannica.com/10/5110-004-38075E57/Flag-Cuba.jpg", user_id: alex.id, country_id: cuba.id)
cyprus_forum = Forum.create!(country_name: "Cyprus", flag: "https://cdn.britannica.com/83/7883-004-D09910C5/Flag-Cyprus.jpg", user_id: alex.id, country_id: cyprus.id)
czech_republic_forum = Forum.create!(country_name: "Czech Republic", flag: "https://cdn.britannica.com/86/7886-004-323985BD/Flag-Czech-Republic.jpg", user_id: alex.id, country_id: czech_republic.id)
democratic_republic_of_the_congo_forum = Forum.create!(country_name: "Democratic Republic of the Congo", flag: "https://cdn.britannica.com/94/7194-004-5FA84A72/Flag-Democratic-Republic-of-the-Congo.jpg", user_id: alex.id, country_id: democratic_republic_of_the_congo.id)
denmark_forum = Forum.create!(country_name: "Denmark", flag: "https://cdn.britannica.com/07/8007-004-8CF0B1A9/Flag-Denmark.jpg", user_id: alex.id, country_id: denmark.id)
djibouti_forum = Forum.create!(country_name: "Djibouti", flag: "https://cdn.britannica.com/06/06-004-29FFD888/Flag-Djibouti.jpg", user_id: alex.id, country_id: djibouti.id)
dominica_forum = Forum.create!(country_name: "Dominica", flag: "https://cdn.britannica.com/12/5112-004-58893CEE/Flag-Dominica.jpg", user_id: alex.id, country_id: dominica.id)
dominican_republic_forum = Forum.create!(country_name: "Dominican Republic", flag: "https://cdn.britannica.com/14/5114-004-C9B99800/Flag-Dominican-Republic.jpg", user_id: alex.id, country_id: dominican_republic.id)
ecuador_forum = Forum.create!(country_name: "Ecuador", flag: "https://cdn.britannica.com/49/149-004-986E1BD8/flag-design-similarities-Ecuador-Colombia-flags-Venezuela.jpg", user_id: alex.id, country_id: ecuador.id)
egypt_forum = Forum.create!(country_name: "Egypt", flag: "https://cdn.britannica.com/85/185-004-1EA59040/Flag-Egypt.jpg", user_id: alex.id, country_id: egypt.id)
el_salvador_forum = Forum.create!(country_name: "El Salvador", flag: "https://cdn.britannica.com/10/7210-004-65DAD2F0/Flag-El-Salvador.jpg", user_id: alex.id, country_id: el_salvador.id)
equatorial_guinea_forum = Forum.create!(country_name: "Equatorial Guinea", flag: "https://cdn.britannica.com/50/5050-004-EB18953A/Flag-Equatorial-Guinea.jpg", user_id: alex.id, country_id: equatorial_guinea.id)
eritrea_forum = Forum.create!(country_name: "Eritrea", flag: "https://cdn.britannica.com/09/09-004-63D8C33D/Flag-Eritrea.jpg", user_id: alex.id, country_id: eritrea.id)
estonia_forum = Forum.create!(country_name: "Estonia", flag: "https://cdn.britannica.com/46/6246-004-865DA579/Flag-Estonia.jpg", user_id: alex.id, country_id: estonia.id)
eswatini_forum = Forum.create!(country_name: "Eswatini", flag: "https://cdn.britannica.com/29/4229-050-BED17BAD/Flag-Eswatini.jpg", user_id: alex.id, country_id: eswatini.id)
ethiopia_forum = Forum.create!(country_name: "Ethiopia", flag: "https://cdn.britannica.com/12/12-004-A40EEB6F/Flag-Ethiopia.jpg", user_id: alex.id, country_id: ethiopia.id)
fiji_forum = Forum.create!(country_name: "Fiji", flag: "https://cdn.britannica.com/86/3286-050-F16637E1/Flag-Fiji.jpg", user_id: alex.id, country_id: fiji.id)
finland_forum = Forum.create!(country_name: "Finland", flag: "https://cdn.britannica.com/79/579-004-0EA4217C/Flag-Finland.jpg", user_id: alex.id, country_id: finland.id)
france_forum = Forum.create!(country_name: "France", flag: "https://cdn.britannica.com/82/682-050-8AA3D6A6/Flag-France.jpg", user_id: alex.id, country_id: france.id)
gabon_forum = Forum.create!(country_name: "Gabon", flag: "https://cdn.britannica.com/85/7185-004-EBE5DBE5/Flag-Gabon.jpg", user_id: alex.id, country_id: gabon.id)
gambia_forum = Forum.create!(country_name: "Gambia", flag: "https://cdn.britannica.com/52/5052-004-C6FC398B/Flag-of-The-Gambia.jpg", user_id: alex.id, country_id: gambia.id)
georgia_forum = Forum.create!(country_name: "Georgia", flag: "https://cdn.britannica.com/17/4717-050-0B745462/Flag-Republic-of-Georgia.jpg", user_id: alex.id, country_id: georgia.id)
germany_forum = Forum.create!(country_name: "Germany", flag: "https://cdn.britannica.com/97/897-004-232BDF01/Flag-Germany.jpg", user_id: alex.id, country_id: germany.id)
ghana_forum = Forum.create!(country_name: "Ghana", flag: "https://cdn.britannica.com/54/5054-004-A09ABCDF/Flag-Ghana.jpg", user_id: alex.id, country_id: ghana.id)
greece_forum = Forum.create!(country_name: "Greece", flag: "https://cdn.britannica.com/49/1049-004-AE4BAD3E/Flag-Greece.jpg", user_id: alex.id, country_id: greece.id)
grenada_forum = Forum.create!(country_name: "Grenada", flag: "https://cdn.britannica.com/16/5116-004-E693F50C/Flag-Grenada.jpg", user_id: alex.id, country_id: grenada.id)
guatemala_forum = Forum.create!(country_name: "Guatemala", flag: "https://cdn.britannica.com/13/7213-004-FFC58C1D/Flag-Guatemala.jpg", user_id: alex.id, country_id: guatemala.id)
guinea_forum = Forum.create!(country_name: "Guinea", flag: "https://cdn.britannica.com/56/5056-004-0E251CE7/Flag-Guinea.jpg", user_id: alex.id, country_id: guinea.id)
guinea_bissau_forum = Forum.create!(country_name: "Guinea Bissau", flag: "https://cdn.britannica.com/58/5058-004-49C2D897/Flag-Guinea-Bissau.jpg", user_id: alex.id, country_id: guinea_bissau.id)
guyana_forum = Forum.create!(country_name: "Guyana", flag: "https://cdn.britannica.com/06/1106-004-F6772F48/Flag-Guyana.jpg", user_id: alex.id, country_id: guyana.id)
haiti_forum = Forum.create!(country_name: "Haiti", flag: "https://cdn.britannica.com/18/5118-004-9C769B82/Flag-Haiti.jpg", user_id: alex.id, country_id: haiti.id)
holy_see_forum = Forum.create!(country_name: "Holy See", flag: "https://cdn.britannica.com/92/4892-004-9426D0CD/Flag-Vatican-City-exception-rule-European-flag.jpg", user_id: alex.id, country_id: holy_see.id)
honduras_forum = Forum.create!(country_name: "Honduras", flag: "https://cdn.britannica.com/16/7216-004-F1400CA0/Flag-Honduras.jpg", user_id: alex.id, country_id: honduras.id)
hungary_forum = Forum.create!(country_name: "Hungary", flag: "https://cdn.britannica.com/55/1455-004-5897143C/Flag-Hungary.jpg", user_id: alex.id, country_id: hungary.id)
iceland_forum = Forum.create!(country_name: "Iceland", flag: "https://cdn.britannica.com/85/1485-004-94C3DEDA/Flag-Iceland.jpg", user_id: alex.id, country_id: iceland.id)
india_forum = Forum.create!(country_name: "India", flag: "https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg", user_id: alex.id, country_id: india.id)
indonesia_forum = Forum.create!(country_name: "Indonesia", flag: "https://cdn.britannica.com/48/1648-004-A33B72D8/Flag-Indonesia.jpg", user_id: alex.id, country_id: indonesia.id)
iran_forum = Forum.create!(country_name: "Iran", flag: "https://cdn.britannica.com/22/1722-004-EAD033D8/Flag-Iran.jpg", user_id: alex.id, country_id: iran.id)
iraq_forum = Forum.create!(country_name: "Iraq", flag: "https://cdn.britannica.com/28/1728-004-EBF4B6FF/Flag-Iraq.jpg", user_id: alex.id, country_id: iraq.id)
ireland_forum = Forum.create!(country_name: "Ireland", flag: "https://cdn.britannica.com/33/1733-004-5BA407D6/FLAG-Ireland.jpg", user_id: alex.id, country_id: ireland.id)
israel_forum = Forum.create!(country_name: "Israel", flag: "https://cdn.britannica.com/53/1753-004-03582EDA/Flag-Israel.jpg", user_id: alex.id, country_id: israel.id)
italy_forum = Forum.create!(country_name: "Italy", flag: "https://cdn.britannica.com/59/1759-004-F4175463/Flag-Italy.jpg", user_id: alex.id, country_id: italy.id)
jamaica_forum = Forum.create!(country_name: "Jamaica", flag: "https://cdn.britannica.com/20/5120-004-3E9D869E/Flag-Jamaica.jpg", user_id: alex.id, country_id: jamaica.id)
japan_forum = Forum.create!(country_name: "Japan", flag: "https://cdn.britannica.com/91/1791-004-DA3579A5/Flag-Japan.jpg", user_id: alex.id, country_id: japan.id)
jordan_forum = Forum.create!(country_name: "Jordan", flag: "https://cdn.britannica.com/40/1840-004-718BA773/Flag-Jordan.jpg", user_id: alex.id, country_id: jordan.id)
kazakhstan_forum = Forum.create!(country_name: "Kazakhstan", flag: "https://cdn.britannica.com/39/7239-004-1BEC6C20/Flag-Kazakhstan.jpg", user_id: alex.id, country_id: kazakhstan.id)
kenya_forum = Forum.create!(country_name: "Kenya", flag: "https://cdn.britannica.com/15/15-004-B5D6BF80/Flag-Kenya.jpg", user_id: alex.id, country_id: kenya.id)
kiribati_forum = Forum.create!(country_name: "Kiribati", flag: "https://cdn.britannica.com/88/3288-050-DB8EB516/Flag-Kiribati.jpg", user_id: alex.id, country_id: kiribati.id)
kuwait_forum = Forum.create!(country_name: "Kuwait", flag: "https://cdn.britannica.com/70/5770-004-A99DD01D/Flag-Kuwait.jpg", user_id: alex.id, country_id: kuwait.id)
kyrgyzstan_forum = Forum.create!(country_name: "Kyrgyzstan", flag: "https://cdn.britannica.com/41/7241-004-8C3C72DB/Flag-Kyrgyzstan.jpg", user_id: alex.id, country_id: kyrgyzstan.id)
laos_forum = Forum.create!(country_name: "Laos", flag: "https://cdn.britannica.com/29/4029-004-D7D8C514/Flag-Laos.jpg", user_id: alex.id, country_id: laos.id)
latvia_forum = Forum.create!(country_name: "Latvia", flag: "https://cdn.britannica.com/49/6249-004-D8906A92/Flag-Latvia.jpg", user_id: alex.id, country_id: latvia.id)
lebanon_forum = Forum.create!(country_name: "Lebanon", flag: "https://cdn.britannica.com/73/2073-004-E54934AE/Flag-Lebanon.jpg", user_id: alex.id, country_id: lebanon.id)
lesotho_forum = Forum.create!(country_name: "Lesotho", flag: "https://cdn.britannica.com/18/4218-004-3F1FD768/Lesotho-flag-colours-design-countries-sub-Saharan-African.jpg", user_id: alex.id, country_id: lesotho.id)
liberia_forum = Forum.create!(country_name: "Liberia", flag: "https://cdn.britannica.com/60/5060-004-F0C9CBBF/Flag-Liberia.jpg", user_id: alex.id, country_id: liberia.id)
libya_forum = Forum.create!(country_name: "Libya", flag: "https://cdn.britannica.com/37/3037-004-1C8F9958/Flag-Libya.jpg", user_id: alex.id, country_id: libya.id)
liechtenstein_forum = Forum.create!(country_name: "Liechtenstein", flag: "https://cdn.britannica.com/02/2102-050-2976AFDD/Flag-Liechtenstein.jpg", user_id: alex.id, country_id: liechtenstein.id)
lithuania_forum = Forum.create!(country_name: "Lithuania", flag: "https://cdn.britannica.com/52/6252-004-88DCF537/Flag-Lithuania.jpg", user_id: alex.id, country_id: lithuania.id)
luxembourg_forum = Forum.create!(country_name: "Luxembourg", flag: "https://cdn.britannica.com/23/2223-004-AE86DC5A/Flag-Luxembourg.jpg", user_id: alex.id, country_id: luxembourg.id)
madagascar_forum = Forum.create!(country_name: "Madagascar", flag: "https://cdn.britannica.com/46/2246-004-17A6E838/Flag-Madagascar.jpg", user_id: alex.id, country_id: madagascar.id)
malawi_forum = Forum.create!(country_name: "Malawi", flag: "https://cdn.britannica.com/21/4221-004-93C8B4EC/Flag-Malawi.jpg", user_id: alex.id, country_id: malawi.id)
malaysia_forum = Forum.create!(country_name: "Malaysia", flag: "https://cdn.britannica.com/31/4031-004-82B0F3A9/Flag-Malaysia.jpg", user_id: alex.id, country_id: malaysia.id)
maldives_forum = Forum.create!(country_name: "Maldives", flag: "https://cdn.britannica.com/80/2280-004-E003C02B/Flag-Maldives.jpg", user_id: alex.id, country_id: maldives.id)
mali_forum = Forum.create!(country_name: "Mali", flag: "https://cdn.britannica.com/62/5062-004-B45A3B5A/Flag-Mali.jpg", user_id: alex.id, country_id: mali.id)
malta_forum = Forum.create!(country_name: "Malta", flag: "https://cdn.britannica.com/86/2286-004-51ACEA26/Flag-Malta.jpg", user_id: alex.id, country_id: malta.id)
marshall_islands_forum = Forum.create!(country_name: "Marshall Islands", flag: "https://cdn.britannica.com/90/3290-050-16A4798B/Flag-of-Marshall-Islands.jpg", user_id: alex.id, country_id: marshall_islands.id)
mauritania_forum = Forum.create!(country_name: "Mauritania", flag: "https://cdn.britannica.com/64/5064-004-FEF780F0/Flag-Mauritania.jpg", user_id: alex.id, country_id: mauritania.id)
mauritius_forum = Forum.create!(country_name: "Mauritius", flag: "https://cdn.britannica.com/11/2411-050-02A79B72/Flag-Mauritius.jpg", user_id: alex.id, country_id: mauritius.id)
mexico_forum = Forum.create!(country_name: "Mexico", flag: "https://cdn.britannica.com/73/2573-050-C825CE68/Flag-Mexico.jpg", user_id: alex.id, country_id: mexico.id)
micronesia_forum = Forum.create!(country_name: "Micronesia", flag: "https://cdn.britannica.com/92/3292-050-44E9DB74/Flag-Federated-States-of-Micronesia.jpg", user_id: alex.id, country_id: micronesia.id)
moldova_forum = Forum.create!(country_name: "Moldova", flag: "https://cdn.britannica.com/10/6210-050-63378AC3/Flag-Moldova.jpg", user_id: alex.id, country_id: moldova.id)
monaco_forum = Forum.create!(country_name: "Monaco", flag: "https://cdn.britannica.com/50/2750-050-688E6E49/Flag-Monaco.jpg", user_id: alex.id, country_id: monaco.id)
mongolia_forum = Forum.create!(country_name: "Mongolia", flag: "https://cdn.britannica.com/56/2756-004-54509464/Flag-Mongolia.jpg", user_id: alex.id, country_id: mongolia.id)
montenegro_forum = Forum.create!(country_name: "Montenegro", flag: "https://cdn.britannica.com/41/94841-004-BF5101EA/flag-Montenegro.jpg", user_id: alex.id, country_id: montenegro.id)
morocco_forum = Forum.create!(country_name: "Morocco", flag: "https://cdn.britannica.com/39/3039-004-52B064C7/Flag-Morocco.jpg", user_id: alex.id, country_id: morocco.id)
mozambique_forum = Forum.create!(country_name: "Mozambique", flag: "https://cdn.britannica.com/23/4223-004-76407A84/Flag-Mozambique.jpg", user_id: alex.id, country_id: mozambique.id)
myanmar_forum = Forum.create!(country_name: "Myanmar", flag: "https://cdn.britannica.com/34/4034-004-B478631E/Flag-Myanmar.jpg", user_id: alex.id, country_id: myanmar.id)
namibia_forum = Forum.create!(country_name: "Namibia", flag: "https://cdn.britannica.com/25/4225-004-E2FF6664/Flag-Namibia.jpg", user_id: alex.id, country_id: namibia.id)
nauru_forum = Forum.create!(country_name: "Nauru", flag: "https://cdn.britannica.com/94/3294-004-8145A150/Flag-Nauru.jpg", user_id: alex.id, country_id: nauru.id)
nepal_forum = Forum.create!(country_name: "Nepal", flag: "https://cdn.britannica.com/70/2970-004-717C4223/Flag-Nepal.jpg", user_id: alex.id, country_id: nepal.id)
netherlands_forum = Forum.create!(country_name: "Netherlands", flag: "https://cdn.britannica.com/82/2982-004-84A2A71E/flag-prototype-Netherlands-countries-European-flags.jpg", user_id: alex.id, country_id: netherlands.id)
new_zealand_forum = Forum.create!(country_name: "New Zealand", flag: "https://cdn.britannica.com/17/3017-004-DCC13F9D/Flag-New-Zealand.jpg", user_id: alex.id, country_id: new_zealand.id)
nicaragua_forum = Forum.create!(country_name: "Nicaragua", flag: "https://cdn.britannica.com/19/7219-004-8AB96369/Flag-Nicaragua.jpg", user_id: alex.id, country_id: nicaragua.id)
niger_forum = Forum.create!(country_name: "Niger", flag: "https://cdn.britannica.com/66/5066-004-3EABCB3F/Flag-Niger.jpg", user_id: alex.id, country_id: niger.id)
nigeria_forum = Forum.create!(country_name: "Nigeria", flag: "https://cdn.britannica.com/68/5068-004-72A3F250/Flag-Nigeria.jpg", user_id: alex.id, country_id: nigeria.id)
north_korea_forum = Forum.create!(country_name: "North Korea", flag: "https://cdn.britannica.com/47/1947-004-44F4E790/Flag-North-Korea.jpg", user_id: alex.id, country_id: north_korea.id)
north_macedonia_forum = Forum.create!(country_name: "North Macedonia", flag: "https://cdn.britannica.com/08/6208-004-61460B40/Flag-North-Macedonia.jpg", user_id: alex.id, country_id: north_macedonia.id)
norway_forum = Forum.create!(country_name: "Norway", flag: "https://cdn.britannica.com/01/3101-004-506325BB/Flag-Norway.jpg", user_id: alex.id, country_id: norway.id)
oman_forum = Forum.create!(country_name: "Oman", flag: "https://cdn.britannica.com/73/5773-004-F7C13E3D/Flag-Oman.jpg", user_id: alex.id, country_id: oman.id)
pakistan_forum = Forum.create!(country_name: "Pakistan", flag: "https://cdn.britannica.com/46/3346-004-D3BDE016/flag-symbolism-Pakistan-design-Islamic.jpg", user_id: alex.id, country_id: pakistan.id)
palau_forum = Forum.create!(country_name: "Palau", flag: "https://cdn.britannica.com/49/3349-050-D1D56792/Flag-Palau.jpg", user_id: alex.id, country_id: palau.id)
palestine_forum = Forum.create!(country_name: "Palestine", flag: "https://cdn.britannica.com/74/84674-004-C0E414EA/Flag-Palestinian-Authority-Palestine.jpg", user_id: alex.id, country_id: palestine.id)
panama_forum = Forum.create!(country_name: "Panama", flag: "https://cdn.britannica.com/22/7222-004-D49C5703/Flag-Panama.jpg", user_id: alex.id, country_id: panama.id)
papua_new_guinea_forum = Forum.create!(country_name: "Papua New Guinea", flag: "https://cdn.britannica.com/96/3296-004-0D1BEB9A/Flag-Papua-New-Guinea.jpg", user_id: alex.id, country_id: papua_new_guinea.id)
paraguay_forum = Forum.create!(country_name: "Paraguay", flag: "https://cdn.britannica.com/77/3377-004-6AA46F6E/Flag-Paraguay.jpg", user_id: alex.id, country_id: paraguay.id)
peru_forum = Forum.create!(country_name: "Peru", flag: "https://cdn.britannica.com/48/3448-004-33B5D198/Flag-Peru.jpg", user_id: alex.id, country_id: peru.id)
philippines_forum = Forum.create!(country_name: "Philippines", flag: "https://cdn.britannica.com/73/3473-004-6E573BFA/Flag-Philippines.jpg", user_id: alex.id, country_id: philippines.id)
poland_forum = Forum.create!(country_name: "Poland", flag: "https://cdn.britannica.com/52/3552-004-83ABA964/Flag-Poland.jpg", user_id: alex.id, country_id: poland.id)
portugal_forum = Forum.create!(country_name: "Portugal", flag: "https://cdn.britannica.com/88/3588-004-E0E45339/Flag-Portugal.jpg", user_id: alex.id, country_id: portugal.id)
qatar_forum = Forum.create!(country_name: "Qatar", flag: "https://cdn.britannica.com/76/5776-050-74220DEB/Flag-Qatar.jpg", user_id: alex.id, country_id: qatar.id)
romania_forum = Forum.create!(country_name: "Romania", flag: "https://cdn.britannica.com/13/6213-004-2CA88DF6/Flag-Romania.jpg", user_id: alex.id, country_id: romania.id)
russia_forum = Forum.create!(country_name: "Russia", flag: "https://cdn.britannica.com/42/3842-004-F47B77BC/Flag-Russia.jpg", user_id: alex.id, country_id: russia.id)
rwanda_forum = Forum.create!(country_name: "Rwanda", flag: "https://cdn.britannica.com/88/7188-004-9C64B8F7/Flag-Rwanda.jpg", user_id: alex.id, country_id: rwanda.id)
saint_kitts_nevis_forum = Forum.create!(country_name: "Saint Kitts and Nevis", flag: "https://cdn.britannica.com/22/5122-050-9813E394/Flag-Saint-Kitts-and-Nevis.jpg", user_id: alex.id, country_id: saint_kitts_nevis.id)
saint_lucia_forum = Forum.create!(country_name: "Saint Lucia", flag: "https://cdn.britannica.com/24/5124-050-8F6BCAC8/Flag-Saint-Lucia.jpg", user_id: alex.id, country_id: saint_lucia.id)
saint_vincent_grenadines_forum = Forum.create!(country_name: "Saint Vincent and the Grenadines", flag: "https://cdn.britannica.com/26/5126-004-9669F8B6/Flag-Saint-Vincent-and-the-Grenadines.jpg", user_id: alex.id, country_id: saint_vincent_grenadines.id)
samoa_forum = Forum.create!(country_name: "Samoa", flag: "https://cdn.britannica.com/08/3308-050-9DB345F2/Flag-Samoa.jpg", user_id: alex.id, country_id: samoa.id)
san_marino_forum = Forum.create!(country_name: "San Marino", flag: "https://cdn.britannica.com/07/4207-050-78A7C297/flag-one-few-San-Marino-Europe-design.jpg", user_id: alex.id, country_id: san_marino.id)
sao_tome_principe_forum = Forum.create!(country_name: "Sao Tome and Principe", flag: "https://cdn.britannica.com/91/7191-050-DDF8DC1F/Flag-Sao-Tome-and-Principe.jpg", user_id: alex.id, country_id: sao_tome_principe.id)
saudi_arabia_forum = Forum.create!(country_name: "Saudi Arabia", flag: "https://cdn.britannica.com/79/5779-004-DC479508/Flag-Saudi-Arabia.jpg", user_id: alex.id, country_id: saudi_arabia.id)
senegal_forum = Forum.create!(country_name: "Senegal", flag: "https://cdn.britannica.com/70/5070-004-2963C5E1/Flag-Senegal.jpg", user_id: alex.id, country_id: senegal.id)
serbia_forum = Forum.create!(country_name: "Serbia", flag: "https://cdn.britannica.com/39/94839-004-EEB20F36/Flag-Serbia.jpg", user_id: alex.id, country_id: serbia.id)
seychelles_forum = Forum.create!(country_name: "Seychelles", flag: "https://cdn.britannica.com/93/4093-050-E48CBA8F/Flag-Seychelles.jpg", user_id: alex.id, country_id: seychelles.id)
sierra_leone_forum = Forum.create!(country_name: "Sierra Leone", flag: "https://cdn.britannica.com/72/5072-004-B35C4877/Flag-Sierra-Leone.jpg", user_id: alex.id, country_id: sierra_leone.id)
singapore_forum = Forum.create!(country_name: "Singapore", flag: "https://cdn.britannica.com/36/4036-050-37052A78/Flag-Singapore.jpg", user_id: alex.id, country_id: singapore.id)
slovakia_forum = Forum.create!(country_name: "Slovakia", flag: "https://cdn.britannica.com/88/7888-004-FD4BC606/Flag-Slovakia.jpg", user_id: alex.id, country_id: slovakia.id)
slovenia_forum = Forum.create!(country_name: "Slovenia", flag: "https://cdn.britannica.com/15/6215-004-B8508AEB/Flag-Slovenia.jpg", user_id: alex.id, country_id: slovenia.id)
solomon_islands_forum = Forum.create!(country_name: "Solomon Islands", flag: "https://cdn.britannica.com/98/3298-004-5CE240EE/Flag-Solomon-Islands.jpg", user_id: alex.id, country_id: solomon_islands.id)
somalia_forum = Forum.create!(country_name: "Somalia", flag: "https://cdn.britannica.com/18/18-004-43399622/Flag-Somalia.jpg", user_id: alex.id, country_id: somalia.id)
south_africa_forum = Forum.create!(country_name: "South Africa", flag: "https://cdn.britannica.com/27/4227-004-32423B42/Flag-South-Africa.jpg", user_id: alex.id, country_id: south_africa.id)
south_korea_forum = Forum.create!(country_name: "South Korea", flag: "https://cdn.britannica.com/49/1949-004-8818300C/Flag-South-Korea.jpg", user_id: alex.id, country_id: south_korea.id)
south_sudan_forum = Forum.create!(country_name: "South Sudan", flag: "https://cdn.britannica.com/37/150637-004-5D1F2321/Bandera-de-Sudan-del-Sur.jpg", user_id: alex.id, country_id: south_sudan.id)
spain_forum = Forum.create!(country_name: "Spain", flag: "https://cdn.britannica.com/36/4336-004-6BD81071/Flag-Spain.jpg", user_id: alex.id, country_id: spain.id)
sri_lanka_forum = Forum.create!(country_name: "Sri Lanka", flag: "https://cdn.britannica.com/13/4413-004-3277D2EF/Flag-Sri-Lanka.jpg", user_id: alex.id, country_id: sri_lanka.id)
sudan_forum = Forum.create!(country_name: "Sudan", flag: "https://cdn.britannica.com/96/4496-004-278A6211/Flag-Sudan.jpg", user_id: alex.id, country_id: sudan.id)
suriname_forum = Forum.create!(country_name: "Suriname", flag: "https://cdn.britannica.com/20/4520-050-BEC08B7F/Flag-Suriname.jpg", user_id: alex.id, country_id: suriname.id)
sweden_forum = Forum.create!(country_name: "Sweden", flag: "https://cdn.britannica.com/30/4530-004-1CF17E9C/Flag-Sweden.jpg", user_id: alex.id, country_id: sweden.id)
switzerland_forum = Forum.create!(country_name: "Switzerland", flag: "https://cdn.britannica.com/43/4543-050-5A18E5A3/Flag-Switzerland.jpg", user_id: alex.id, country_id: switzerland.id)
syria_forum = Forum.create!(country_name: "Syria", flag: "https://cdn.britannica.com/50/4550-004-7B368E09/Flag-Syria.jpg", user_id: alex.id, country_id: syria.id)
tajikistan_forum = Forum.create!(country_name: "Tajikistan", flag: "https://cdn.britannica.com/43/7243-004-0BD9009E/Flag-Tajikistan.jpg", user_id: alex.id, country_id: tajikistan.id)
tanzania_forum = Forum.create!(country_name: "Tanzania", flag: "https://cdn.britannica.com/20/20-004-EB20A026/Flag-Tanzania.jpg", user_id: alex.id, country_id: tanzania.id)
thailand_forum = Forum.create!(country_name: "Thailand", flag: "https://cdn.britannica.com/38/4038-004-111388C2/Flag-Thailand.jpg", user_id: alex.id, country_id: thailand.id)
timor_leste_forum = Forum.create!(country_name: "Timor-Leste", flag: "https://cdn.britannica.com/60/72760-004-1BBBBFBE/Flag-of-East-Timor.jpg", user_id: alex.id, country_id: timor_leste.id)
togo_forum = Forum.create!(country_name: "Togo", flag: "https://cdn.britannica.com/74/5074-004-744DD873/Flag-Togo.jpg", user_id: alex.id, country_id: togo.id)
tonga_forum = Forum.create!(country_name: "Tonga", flag: "https://cdn.britannica.com/01/3301-004-9C2F4D65/Flag-Tonga.jpg", user_id: alex.id, country_id: tonga.id)
trinidad_tobago_forum = Forum.create!(country_name: "Trinidad and Tobago", flag: "https://cdn.britannica.com/28/5128-004-2809EB66/Flag-Trinidad-and-Tobago.jpg", user_id: alex.id, country_id: trinidad_tobago.id)
tunisia_forum = Forum.create!(country_name: "Tunisia", flag: "https://cdn.britannica.com/41/3041-004-F1D6DEFC/Flag-Tunisia.jpg", user_id: alex.id, country_id: tunisia.id)
turkey_forum = Forum.create!(country_name: "Turkey", flag: "https://cdn.britannica.com/82/4782-004-4119489D/Flag-Turkey.jpg", user_id: alex.id, country_id: turkey.id)
turkmenistan_forum = Forum.create!(country_name: "Turkmenistan", flag: "https://cdn.britannica.com/45/7245-004-C60925FE/Flag-Turkmenistan.jpg", user_id: alex.id, country_id: turkmenistan.id)
tuvalu_forum = Forum.create!(country_name: "Tuvalu", flag: "https://cdn.britannica.com/03/3303-050-D72C968A/Flag-Tuvalu.jpg", user_id: alex.id, country_id: tuvalu.id)
uganda_forum = Forum.create!(country_name: "Uganda", flag: "https://cdn.britannica.com/22/22-004-0165975D/Flag-Uganda.jpg", user_id: alex.id, country_id: uganda.id)
ukraine_forum = Forum.create!(country_name: "Ukraine", flag: "https://cdn.britannica.com/14/4814-004-7C0DF1BB/Flag-Ukraine.jpg", user_id: alex.id, country_id: ukraine.id)
united_arab_emirates_forum = Forum.create!(country_name: "United Arab Emirates", flag: "https://cdn.britannica.com/82/5782-004-BD7056FF/Flag-United-Arab-Emirates.jpg", user_id: alex.id, country_id: united_arab_emirates.id)
united_kingdom_forum = Forum.create!(country_name: "United Kingdom", flag: "https://cdn.britannica.com/25/4825-004-F1975B92/Flag-United-Kingdom.jpg", user_id: alex.id, country_id: united_kingdom.id)
united_states_of_america_forum = Forum.create!(country_name: "United States of America", flag: "https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg", user_id: alex.id, country_id: united_states_of_america.id)
uruguay_forum = Forum.create!(country_name: "Uruguay", flag: "https://cdn.britannica.com/74/4874-004-50846A53/Flag-Uruguay.jpg", user_id: alex.id, country_id: uruguay.id)
uzbekistan_forum = Forum.create!(country_name: "Uzbekistan", flag: "https://cdn.britannica.com/47/7247-004-44F420D7/Flag-Uzbekistan.jpg", user_id: alex.id, country_id: uzbekistan.id)
vanuatu_forum = Forum.create!(country_name: "Vanuatu", flag: "https://cdn.britannica.com/05/3305-050-94F53891/Flag-Vanuatu.jpg", user_id: alex.id, country_id: vanuatu.id)
venezuela_forum = Forum.create!(country_name: "Venezuela", flag: "https://cdn.britannica.com/04/4904-004-EBEFDE35/Flag-Venezuela.jpg", user_id: alex.id, country_id: venezuela.id)
vietnam_forum = Forum.create!(country_name: "Vietnam", flag: "https://cdn.britannica.com/41/4041-004-D051B135/Flag-Vietnam.jpg", user_id: alex.id, country_id: vietnam.id)
yemen_forum = Forum.create!(country_name: "Yemen", flag: "https://cdn.britannica.com/85/5785-004-B65441FA/Flag-Yemen.jpg", user_id: alex.id, country_id: yemen.id)
zambia_forum = Forum.create!(country_name: "Zambia", flag: "https://cdn.britannica.com/31/4231-004-F1DBFAE7/Flag-Zambia.jpg", user_id: alex.id, country_id: zambia.id)
zimbabwe_forum = Forum.create!(country_name: "Zimbabwe", flag: "https://cdn.britannica.com/33/4233-050-3A1705E7/Flag-Zimbabwe.jpg", user_id: alex.id, country_id: zimbabwe.id)

puts "Done seeding forums..."

puts "Seeding posts..."

transportation = Post.create!(title: "Transportation", 
body: "I live in a suburb in the US where I drive to everywhere. Trying to understand passes/options for transportation is overwhelming.
There will be 6-8 of us. From the Narita airport I think it's cheaper to hire a minivan vs purchasing train tickets.
A week in Tokyo, then a week in Kyoto. Based on someone's suggestion, we decided to stay in Kyoto and take day trips to Osaka vs packing/unpacking and checking in/out.
While in Tokyo, we will do the usual site seeing activities, a day trip to DisneySea, a day trip to Hakone.
While in Kyoto, a few day trips to Osaka, a day trip to Nara, a day trip to Ghibli Park in Nagoya.
We haven't decided but may depart from Osaka because it's slightly higher than purchasing tickets for the shinkansen from Kyoto to Narita airport. Or should I get a pass?
I can use advices on what transportation passes/tickets to purchase. I'm getting confused with when to use JR or Shinkansen. Thank you.", 
date: "Dec 13, 2022", 
likes: 8, 
topic: "Japan",
username: sam.username, profile_pic: sam.image, user_id: sam.id,
forum_id: japan_forum.id)

Post.create!(title: "Best day trip from Tokyo on Jan 1st", 
body: "Hi everyone,
considering that it will be a festive day, what would you suggest to do as a day trip from Tokyo on January 1st?
Kamakura + Enoshima? Nikko? Should I expect big crowds? I was thinking about one of these two destinations but I really can't decide so any suggestion is more than welcomed!
Thank you!", 
date: "Dec 14, 2022", 
likes: 6, 
topic: "Japan",
username: sam.username, profile_pic: sam.image, user_id: sam.id,
forum_id: japan_forum.id)

Post.create!(title: "Foodie Advice!?", 
body: "Making a list of all the specific food items I need to try at least once while I am there!
Are there any I should have in one city over another? Between Osaka, Kyoto, Tokyo!
Takoyaki - Osaka
Okonomiyaki
Kushikatsu
Udon
Soba - Kyoto for NYE
SUSHI!!!
Tonkatsu
Gyukatsu
Ramen
Yakiniku
Yakitori
Sukiyaki
Unagi (eel)
Oturo (fatty tuna)
Tamagoyaki (rolled omelette)
Taiyaki (fishy with red bean)
Butaman (pork buns @ Horai 551)
Tempura!
MATCHA
Japanese curry
Kobe beef
A5
Let me know your other must-eats also!", 
date: "Dec 13, 2022", 
likes: 15, 
topic: "Japan",
username: sam.username, profile_pic: sam.image, user_id: sam.id,
forum_id: japan_forum.id)

Post.create!(title: "First time to Osaka!", 
body: "Hey folks, have bought a flight to Osaka around mid Feb 2023. Understand that is still winter season. Will be staying for about 11 days.

1) Do I need to bring winter clothings like the full set, gloves, scarf, thick jacket, coats etc.. so just a jacket suffice?

2) My flight arrives after 9pm and by the time I pass through immigration and baggage, it could possibly be close to 10pm. And I get overwhelmed easily and may be confused with the train lines and ticketing system. Woild it be better for me to stay overnight at the airport hotel, or still continue to make my way to Osaka station? I intend to stay a hotel connected to the station.

3) in layman terms, what does JR Pass and Icacao card and others provides for me in terms of transport? I know I googled but tbh I'm still very much confused! Should I get all the cards?

4) should I base in Osaka first or Kyoto? And considering I would want to visit nearby cities too for day trips. Any recommendations for cities?

5) in terms of food expenses (and the occasional entrance fees for sights) is budget of 10000 Yen per day sufficient?

Many thanks! Am so excited about this trip because after years and years of dreaming to go Japan, I finally can realized it. :)

", 
date: "Dec 15, 2022", 
likes: 20, 
topic: "Osaka",
username: sam.username, profile_pic: sam.image, user_id: sam.id,
forum_id: japan_forum.id)

Post.create!(title: "Patpong Market", 
body: "Does anyone have any idea if the Patpong night markets have reopened or will be reopening?
Pls advise
Thank you", 
date: "Dec 16, 2022", 
likes: 22, 
topic: "Bangkok",
username: sam.username, profile_pic: sam.image, user_id: sam.id,
forum_id: thailand_forum.id)

puts "Done seeding posts..."

puts "Seeding forum comments..."

ForumComment.create!(body: "In at Tokyo and out at Osaka, you don’t need a JR pass. JR trains are Shinkansen. https://www.japan-guide.com/e/e2019.html

After you’ve decided on an itinerary = https://www.japan-guide.com/railpass/

Get a stored value IC card for your local subway travel = https://www.japan-guide.com/e/e2359_003.html", date: "Dec 13, 2022, 7:43 PM", likes: 6, username: alex.username, profile_pic: alex.image, user_id: alex.id, post_id: transportation.id)

ForumComment.create!(body: "I think the first week in Tokyo, I just need to get the IC card.

I think it makes sense to get a 7 day JR pass while in Kyoto....", date: "Dec 13, 2022, 9:31 PM", likes: 5, username: mason.username, profile_pic: mason.image, user_id: mason.id, post_id: transportation.id)

ForumComment.create!(body: "Are you return back to Tokyo? If not, there are regional passes for the Kansai area.", date: "Dec 13, 2022, 10:22 PM", likes: 3, username: chuck.username, profile_pic: chuck.image, user_id: chuck.id, post_id: transportation.id)

puts "Done seeding forum comments..."

puts "Seeding shop items..."

ShopItem.create!(name: "Australia", image: "https://i.imgur.com/GlLNu4K.png", description: "Lonely Planet’s Australia is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Dive in the Great Barrier Reef, marvel at the unique wildlife, and hit the beach at Byron Bay; all with your trusted travel companion. Get to the heart of Australia and begin your journey now!", continent_id: oceania.id, price: 24.99, country_id: australia.id)

ShopItem.create!(name: "Austria", image: "https://i.imgur.com/5vSt0Ma.png", description: "Lonely Planet’s Austria is our most comprehensive guide that extensively covers all the country has to offer, with recommendations for both popular and lesser-known experiences. Ski in the Alps, explore Vienna’s imperial palaces, and drive the Grossglockner Road; all with your trusted travel companion.", continent_id: europe.id, price: 22.99, country_id: austria.id)

ShopItem.create!(name: "Bangladesh", image: "https://i.imgur.com/aiK450Y.png", description: "Lonely Planet Bangladesh is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you.

Cruise the Sundarbans spotting deer and tigers; stand amid the chaos of old Dhaka; or visit the lush Chittagong Hill Tracts, all with your trusted travel companion. Get to the heart of Bangladesh and begin your journey now!", continent_id: asia.id, price: 21.99, country_id: bangladesh.id)

ShopItem.create!(name: "Belize", image: "https://i.imgur.com/PowhsDN.png", description: "Lonely Planet’s Belize is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Dive the Blue Hole, explore Maya villages, and discover Garifuna culture; all with your trusted travel companion. Get to the heart of Belize and begin your journey now!", continent_id: north_america.id, price: 19.99, country_id: belize.id)

ShopItem.create!(name: "Bhutan", image: "https://i.imgur.com/UcmYh5M.png", description: "Bhutan is no ordinary place. It is the last great Himalayan kingdom, shrouded in mystery and magic, where a traditional Buddhist culture carefully embraces global developments. Lonely Planet is your passport to Bhutan, with amazing travel experiences and the best planning advice.

Ascend the steep path the Taktshang Goemba, trek through fabled Himalayan vallyes, and get a blessing from a wooden phallus at the tsechu; all with your trusted travel companion. Get to the heart of Bhutan and begin your journey now!", continent_id: asia.id, price: 19.99, country_id: bhutan.id)

ShopItem.create!(name: "Bolivia", image: "https://i.imgur.com/nW87c6g.png", description: "Superlative in its natural beauty, rugged, vexing, complex and slightly nerve-racking, Bolivia is one of South America’s most diverse and intriguing nations. Lonely Planet is your passport to Bolivia, with amazing travel experiences and the best planning advice.

Tour the epic salt flats of Salar de Uyuni, wake to the sounds of the rainforest in the Parque Nacional Madidi, or walk in the path of the Incas in the Cordillera Real; all with your trusted travel companion. Get to the heart of Bolivia and begin your journey now!", continent_id: south_america.id, price: 19.99, country_id: bolivia.id)

ShopItem.create!(name: "Brazil", image: "https://i.imgur.com/Q1eLaE4.png", description: "Lonely Planet’s Brazil is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Marvel at Iguacu Falls, take a jungle trip, and frolick in the waves at Ipanema Beach; all with your trusted travel companion. Get to the heart of Brazil and begin your journey now!", continent_id: south_america.id, price: 22.99, country_id: brazil.id)

ShopItem.create!(name: "Cambodia", image: "https://i.imgur.com/crQf9DW.png", description: "Lonely Planet's Cambodia is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Explore Khmer history at the National Museum of Cambodia, marvel at the Cambodian Circus, and explore majestic temples in Angkor; all with your trusted travel companion. Begin your journey now!", continent_id: asia.id, price: 19.99, country_id: cambodia.id)

ShopItem.create!(name: "Canada", image: "https://i.imgur.com/MuXUQ94.png", description: "Lonely Planet’s Canada is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Savor culture in Quebec City, marvel at Niagara Falls, and hike in the Rockies; all with your trusted travel companion. Get to the heart of Canada and begin your journey now!", continent_id: north_america.id, price: 23.99, country_id: canada.id)

ShopItem.create!(name: "Chile", image: "https://i.imgur.com/QsgB5gS.png", description: "Lonely Planet’s Chile & Easter Island is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Strap on your pack and hike through winding forests to behold the granite mountain spires of Las Torres; watch sunset turn the Valle de la Luna intense purple, gold, pink and yellow; and puzzle over the giant statues of Easter Island. All with your trusted travel companion. Get to the heart of Chile & Easter Island and begin your journey now!", continent_id: south_america.id, price: 22.99, country_id: chile.id)

ShopItem.create!(name: "China", image: "https://i.imgur.com/8IJoQEX.png", description: "Lonely Planet’s China is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Explore Beijing’s Forbidden City, climb the Great Wall, and discover sacred Lhasa; all with your trusted travel companion. Get to the heart of China and begin your journey now!", continent_id: asia.id, price: 19.99, country_id: china.id)

ShopItem.create!(name: "Cuba", image: "https://i.imgur.com/j0wCqXc.png", description: "Lonely Planet’s Cuba is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Enjoy the live music scene in Havana, explore historic Habana Vieja, and trek up Pico Turquino; all with your trusted travel companion. Get to the heart of Cuba and begin your journey now!", continent_id: north_america.id, price: 19.99, country_id: cuba.id)

ShopItem.create!(name: "Cyprus", image: "https://i.imgur.com/TyvUp5Q.png", description: "Strike out beyond the sun-soaked stretches of sand to discover an island of compelling culture and landscapes, steeped in myth and riddled with ancient riches. Lonely Planet will get you to the heart of Cyprus, with amazing travel experiences and the best planning advice.

Lonely Planet Cyprus is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Stroll through ancient history in Pafos, dive to haunting shipwrecks off Larnaka, or take a road trip through the Troödos Mountains, all with your trusted travel companion. Get to the heart of Cyprus and begin your journey now!", continent_id: asia.id, price: 17.99, country_id: cyprus.id)

ShopItem.create!(name: "Czech Republic", image: "https://i.imgur.com/jnvCtR4.png", description: "Since the fall of communism in 1989, the Czech Republic – and its capital in particular – has evolved into one of Europe’s most popular travel destinations. Lonely Planet will get you to the heart of Prague & the Czech Republic, with amazing travel experiences and the best planning advice.


Lonely Planet Prague & the Czech Republic is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Count statues on Charles Bridge, gawk at Prague Castle or enjoy the spectacle of the Old Town Square; all with your trusted travel companion. Get to the heart of Prague and begin your journey now!", continent_id: europe.id, price: 19.99, country_id: czech_republic.id)

ShopItem.create!(name: "Denmark", image: "https://i.imgur.com/E4oSawN.png", description: "Chart-topping contentment and quality of life, blockbuster dining and design, and a cheerful emphasis on hygge (cosiness) – explore (and envy) what makes Denmark tick. Lonely Planet will get you to the heart of Denmark, with amazing travel experiences and the best planning advice.

Sample the freshest and best Danish food, immerse yourself in Viking history, and make a pilgrimage to the home of Lego; all with your trusted travel companion. Get to the heart of Denmark and begin your journey now!", continent_id: europe.id, price: 22.99, country_id: denmark.id)

ShopItem.create!(name: "Dominican Republic", image: "https://i.imgur.com/4KMD2JC.png", description: "The Dominican Republic is one of the Caribbean’s most geographically diverse countries, with stunning mountain scenery, desert scrublands, evocative colonial architecture and beaches galore. Lonely Planet will get you to the heart of Dominican Republic, with amazing travel experiences and the best planning advice.

Lonely Planet Dominican Republic is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Watch humpback whales from Peninsula de Samana, descend the 27 waterfalls of Damajagua or chill on the beach at Playa Rincon; all with your trusted travel companion. Get to the heart of the Dominican Republic and begin your journey now!", continent_id: north_america.id, price: 19.99, country_id: dominican_republic.id)

ShopItem.create!(name: "Egypt", image: "https://i.imgur.com/ymksgsy.png", description: "Lonely Planet’s Egypt is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Discover the pyramids of Giza, cruise the Nile, and dive in the Red Sea; all with your trusted travel companion. Get to the heart of Egypt and begin your journey now!", continent_id: africa.id, price: 22.99, country_id: egypt.id)

ShopItem.create!(name: "Fiji", image: "https://i.imgur.com/Qv4hbt4.png", description: "Set your internal clock to ‘Fiji time’: exploring the archipelago’s exquisite beaches, undersea marvels, lush interiors and fascinating culture shouldn’t be rushed. Lonely Planet will get you to the heart of Fiji, with amazing travel experiences and the best planning advice.


Lonely Planet Fiji is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Say bula to the locals at a dance ceremony; trek to hidden waterfalls on 'Garden Island' Taveuni or ride a bamboo raft through the Namosi Highlands; all with your trusted travel companion. Get to the heart of Fiji and begin your journey now!", continent_id: oceania.id, price: 19.99, country_id: fiji.id)

ShopItem.create!(name: "Finland", image: "https://i.imgur.com/Z3LbkVw.png", description: "Inspired design, technology and epicurean scenes meet epic stretches of wilderness here in Europe’s deep north, where summer’s endless light balances winter’s eerie frozen magic. Lonely Planet will get you to the heart of Finland, with amazing travel experiences and the best planning advice.

Shop for the best in Scandinavian design, fizz across Lapland behind a team of huskies, and warm up in a traditional sauna; all with your trusted travel companion. Get to the heart of Finland and begin your journey now!", continent_id: europe.id, price: 22.99, country_id: finland.id)

ShopItem.create!(name: "Germany", image: "https://i.imgur.com/2df8cjK.png", description: "Lonely Planet’s Germany is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Explore the beautiful Black Forest, marvel at Cologne’s cathedral, and cruise along the Rhine; all with your trusted travel companion. Get to the heart of Germany and begin your journey now!", continent_id: europe.id, price: 24.99, country_id: germany.id)

ShopItem.create!(name: "Great Britain", image: "https://i.imgur.com/jJCfzit.png", description: "Lonely Planet's Great Britain is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Puzzle the mysteries of Stonehenge, sip whisky in Scotland, and hike the mountains of Wales; all with your trusted travel companion. Get to the heart of Great Britain and begin your journey now!", continent_id: europe.id, price: 23.99, country_id: united_kingdom.id)

ShopItem.create!(name: "Guatemala", image: "https://i.imgur.com/zfeGUl0.png", description: "Central America’s most diverse country captivates travelers with its extraordinary landscapes and a civilization-spanning culture that reaches back centuries. Lonely Planet is your passport to Guatemala, with amazing travel experiences and the best planning advice.

Stroll around the restored Maya temples of Tikal, brush up on your Spanish in Antigua, hike along the shore of Lago de Atitlán; all with your trusted travel companion. Get to the heart of Guatemala and begin your journey now!", continent_id: north_america.id, price: 19.99, country_id: guatemala.id)

ShopItem.create!(name: "Hungary", image: "https://i.imgur.com/iPcfwd7.png", description: "Stunning architecture, vital folk art, thermal spas and Europe’s most exciting city after dark are the major drawcards of Hungary and its capital, Budapest. Lonely Planet will get you to the heart of Budapest & Hungary, with amazing travel experiences and the best planning advice.

Lonely Planet Budapest & Hungary is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you.Take the waters at one of the country’s 300 public thermal hot springs, step back in time in Sopron, or explore the limestone plateau of Castle Hill; all with your trusted travel companion. Get to the heart of Budapest & Hungary and begin your journey now!", continent_id: europe.id, price: 21.99, country_id: hungary.id)

ShopItem.create!(name: "India", image: "https://i.imgur.com/SrVaYSQ.png", description: "Lonely Planet’s India is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Explore the magnificent monument to love that is the Taj Mahal, climb into the high Himalaya and Ladakh’s moonscapes, and experience the dramatic rock-cut grottoes in the caves of Ajanta; all with your trusted travel companion. Get to the heart of India and begin your journey now!", continent_id: asia.id, price: 23.99, country_id: india.id)

ShopItem.create!(name: "Indonesia", image: "https://i.imgur.com/ISZIB54.png", description: "Lonely Planet’s Indonesia is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Explore Komodo National Park, patrolled by the world’s largest lizard, unwind on the sugar-white sand and turquoise waters of the Gili Islands, and experience a Balinese dance performance on Indonesia’s most famous holiday island; all with your trusted travel companion. Get to the heart of Indonesia and begin your journey now!", continent_id: asia.id, price: 24.99, country_id: indonesia.id)

ShopItem.create!(name: "Iran", image: "https://i.imgur.com/FRP6qxe.png", description: "Welcome to what could be the friendliest country on earth. Iran is the jewel in Islam’s crown, combining glorious architecture with a warm-hearted welcome. Lonely Planet will get you to the heart of Iran, with amazing travel experiences and the best planning advice.


Lonely Planet Iran is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Hike among the Castles of the Assassins in Alamut Valley, Lose yourself in Esfahan’s historic bazaar, or ski in the Alborz Mountains; all with your trusted travel companion. Get to the heart of Iran and begin your journey now!", continent_id: asia.id, price: 16.99, country_id: iran.id)

ShopItem.create!(name: "Jamaica", image: "https://i.imgur.com/1y2PIRg.png", description: "Jamaica is the Caribbean country that comes with its own soundtrack. Groove to its singular rhythm as you explore beyond the beaches and all-inclusives. Lonely Planet will get you to the heart of Jamaica, with amazing travel experiences and the best planning advice.

Lonely Planet Jamaica is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Enjoy a night hike to reach Jamaica’s highest point by sunrise, spot crocodiles in the Black River Great Morass or escape to Brighton’s empty, quiet beaches; all with your trusted travel companion. Get to the heart of Jamaica and begin your journey now!", continent_id: north_america.id, price: 19.99, country_id: jamaica.id)

ShopItem.create!(name: "Jordan", image: "https://i.imgur.com/mVWW8ko.png", description: "Lonely Planet’s Jordan is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Dive the Red Sea, wonder at the spectacular ancient city of Petra, and ride through Wadi Rum at sunset; all with your trusted travel companion. Get to the heart of Jordan and begin your journey now!", continent_id: asia.id, price: 21.99, country_id: jordan.id)

ShopItem.create!(name: "Kenya", image: "https://i.imgur.com/2luMAQW.png", description: "Vast savannahs peppered with immense herds of wildlife. Snow-capped equatorial mountains. Traditional peoples who bring soul and colour to the earth. Welcome to Kenya. Lonely Planet will get you to the heart of Kenya, with amazing travel experiences and the best planning advice.

Gape at a million wildebeest migrating across the rolling savannah of the Masai Mara; try to calm your breath as you get close to big cats and mighty elephants; take your pick from national parks for mountain hiking, wildlife spotting or snorkelling; all with your trusted travel companion. Get to the heart of Kenya and begin your journey now!", continent_id: africa.id, price: 19.99, country_id: kenya.id)

ShopItem.create!(name: "Laos", image: "https://i.imgur.com/ThQv4Ym.png", description: "Vivid nature, voluptuous landscapes and a vibrant culture collide with a painful past and optimistic future to make Laos an enigmatic experience for the adventurous. Lonely Planet is your passport to Laos, with amazing travel experiences and the best planning advice.

Explore the backstreets of Luang Prabang by bike, soak up sun or grab a kayak on Si Phan Don, or embark on a community-based trek with a traditional homestay; all with your trusted travel companion. Get to the heart of Laos and begin your journey now!", continent_id: asia.id, price: 19.99, country_id: laos.id)

ShopItem.create!(name: "Madagascar", image: "https://i.imgur.com/LToupr2.png", description: "Lemurs, baobabs, rainforest, desert, hiking and diving: Madagascar is a dream destination for outdoors enthusiasts – half the fun is getting to all these incredible attractions. Lonely Planet is your passport to Madagascar, with amazing travel experiences and the best planning advice.

Hike through the epic desert landscapes of Parc National Isalo, see lemurs in the wild, and watch baobabs cast long shadows from the setting sun; all with your trusted travel companion. Get to the heart of Madagascar and begin your journey now!", continent_id: africa.id, price: 18.99, country_id: madagascar.id)

ShopItem.create!(name: "Maldives", image: "https://i.imgur.com/m8HA4w7.png", description: "Lonely Planet's Maldives is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Encounter hammerhead sharks on a dawn dive, find your perfect luxury beach resort or family-run guesthouse, and hop around by seaplane for a view of coral atolls, blue lagoons and tiny desert islands – all with your trusted travel companion. Get to the heart of Maldives and begin your journey now!", continent_id: asia.id, price: 19.99, country_id: maldives.id)

ShopItem.create!(name: "Mongolia", image: "https://i.imgur.com/VvkSMxk.png", description: "Rugged Mongolia is an adventure destination where travellers can experience nomadic cul-ture and vast, untouched landscapes. Lonely Planet will get you to the heart of Mongolia, with amazing travel experiences and the best planning advice.

Lonely Planet’s Mongolia is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Visit monasteries for a slice of Buddhist history and whispered mantras; hike through the rugged mountains, serene river valleys and fields of wild flowers in the Mongolian back country; travel by camel across the Gobi Desert in the footsteps of Marco Polo; all with your trusted travel companion. Get to the heart of Mongolia and begin your journey now!", continent_id: asia.id, price: 17.99, country_id: mongolia.id)

ShopItem.create!(name: "Montenegro", image: "https://i.imgur.com/Dhmkc7E.png", description: "Lonely Planet’s Montenegro is our most comprehensive guide that extensively covers all the country has to offer, with recommendations for both popular and lesser-known experiences. Roam Kotor’s atmospheric old town, raft the Tara River, and hike the Prokletije mountains; all with your trusted travel companion.", continent_id: europe.id, price: 16.99, country_id: montenegro.id)

ShopItem.create!(name: "Myanmar", image: "https://i.imgur.com/cJYeYqa.png", description: "It’s the dawn of a more democratic era in this extraordinary land, where the landscape is scattered with gilded pagodas and the traditional ways of Asia endure. Lonely Planet will get you to the heart of Myanmar, with amazing travel experiences and the best planning advice.


Lonely Planet Myanmar (Burma) is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Be dazzled by Buddhist architecture in Yangon, explore Bagan’s amazing plain of ancient temples, or hike to the floating gardens and markets of Inle Lake; all with your trusted travel companion. Get to the heart of Myanmar and begin your journey now!", continent_id: asia.id, price: 19.99, country_id: myanmar.id)

ShopItem.create!(name: "Nepal", image: "https://i.imgur.com/3bPWYRS.png", description: "A trekkers’ paradise, Nepal combines Himalayan views, golden temples, charming hill villag-es and jungle wildlife-watching to offer one of the world’s great travel destinations. Lonely Planet will get you to the heart of Nepal, with amazing travel experiences and the best planning advice.

Lonely Planet’s Nepal is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Explore the historic temples of old Kathmandu, search for rhinos and tigers in the dawn mist of Chitwan National Park, and trek in the shadow of the world’s highest mountain on an Everest Base Camp expedition – all with your trusted travel companion. Get to the heart of Nepal and begin your journey now!", continent_id: asia.id, price: 21.99, country_id: nepal.id)

ShopItem.create!(name: "Netherlands", image: "https://i.imgur.com/HfMsLIG.png", description: "Lonely Planet’s The Netherlands is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Marvel at Rotterdam’s architecture, sample Dutch cheese, and explore Amsterdam’s Canal Ring; all with your trusted travel companion. Get to the heart of the Netherlands and begin your journey now!", continent_id: europe.id, price: 23.99, country_id: netherlands.id)

ShopItem.create!(name: "Nicaragua", image: "https://i.imgur.com/NQnZAoE.png", description: "An affable all-rounder, Nicaragua embraces travelers with diverse offerings of volcanic landscapes, colonial architecture, sensational beaches, remote, idyllic islands, wave-battered Pacific beaches and pristine forests. Lonely Planet is your passport to Nicaragua, with amazing travel experiences and the best planning advice.

Wander the cobblestone streets of Granada, laze on the white-sand beaches of Little Corn Island, or hike around the paradise of Isla de Ometepe; all with your trusted travel companion. Get to the heart of Nicaragua and begin your journey now!", continent_id: north_america.id, price: 19.99, country_id: nicaragua.id)

ShopItem.create!(name: "Panama", image: "https://i.imgur.com/ZAh9Zlj.png", description: "Lonely Planet’s Panama is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Explore Panama City, surf at Santa Catalina, and dive at Parque Nacional Coiba; all with your trusted travel companion. Get to the heart of Panama and begin your journey now!", continent_id: north_america.id, price: 19.99, country_id: panama.id)

ShopItem.create!(name: "Philippines", image: "https://i.imgur.com/Xgt8WCU.png", description: "Lonely Planet’s Philippines is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Cruise past the secluded beaches, pristine lagoons and rocky islets of the Bacuit Archipelago, join the adrenaline junkies wakeboarding, surfing, climbing and snorkelling on the Bicol peninsula, and choose which stretch of pearly white sand on which to escape the crowds; all with your trusted travel companion. Get to the heart of the Philippines and begin your journey now!", continent_id: asia.id, price: 21.99, country_id: philippines.id)

ShopItem.create!(name: "Poland", image: "https://i.imgur.com/RPTDKBy.png", description: "Picturesque cities such as Kraków and Gdańsk vie with energetic Warsaw for your urban attention. Elsewhere, woods, rivers, lakes and hills beckon for some fresh-air fun. Lonely Planet is your passport to Poland, with amazing travel experiences and the best planning advice.

Explore the nightlife of Kraków’s Kazimierz, learn about the country’s history in Warsaw’s museums; and stroll Gdańsk’s medieval lanes all with your trusted travel companion. Get to the heart of Poland and begin your journey now!", continent_id: europe.id, price: 21.99, country_id: poland.id)

ShopItem.create!(name: "Portugal", image: "https://i.imgur.com/Po5rsZC.png", description: "Lonely Planet’s Portugal is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Lose yourself in the labyrinthine alleyways of the Alfama district in Lisbon, explore the mysterious, fairytale setting of Sintra, and sip the world’s best port in the centuries-old wineries of Porto; all with your trusted travel companion. Get to the heart of Portugal and begin your journey now!", continent_id: europe.id, price: 19.99, country_id: portugal.id)

ShopItem.create!(name: "Russia", image: "https://i.imgur.com/r6DRE2O.png", description: "Lonely Planet Russia is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Brush up on your Soviet and imperial history in Moscow and St Petersburg, explore European Russia and its gingerbread cottages and golden domes, or lose yourself in the wilds of Siberia and the east; all with your trusted travel companion. Get to the heart of Russia and begin your journey now!", continent_id: europe.id, price: 19.99, country_id: russia.id)

ShopItem.create!(name: "Slovenia", image: "https://i.imgur.com/9Xk3O2v.png", description: "Lonely Planet’s Slovenia is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Discover buzzy Ljubljana, dip a toe in the electric-blue water of Lake Bled, be stunned by natural beauty; all with your trusted travel companion. Get to the heart of Slovenia and begin your journey now!", continent_id: europe.id, price: 17.99, country_id: slovenia.id)

ShopItem.create!(name: "Sri Lanka", image: "https://i.imgur.com/n2UqhtS.png", description: "Lonely Planet's Sri Lanka is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Laze on a gorgeous beach, surf at Arugam Bay, and watch for whales at Marissa; all with your trusted travel companion. Get to the heart of Sri Lanka and begin your journey now!", continent_id: asia.id, price: 18.99, country_id: sri_lanka.id)

ShopItem.create!(name: "Sweden", image: "https://i.imgur.com/4jHRQbu.png", description: "Frozen wastelands, cosy cottages, virgin forest, rocky islands, reindeer herders and Viking lore – Sweden has all that plus impeccable style and to-die-for dining. Lonely Planet will get you to the heart of Sweden, with amazing travel experiences and the best planning advice.

Visit the beautiful, stylish capital of Stockholm; hike, ski or dogsled Arctic wasteland; or curl up by the fire in a cosy cottage; all with your trusted travel companion. Get to the heart of Sweden and begin your journey now!", continent_id: europe.id, price: 21.99, country_id: sweden.id)

ShopItem.create!(name: "Switzerland", image: "https://i.imgur.com/E5T33SA.png", description: "Lonely Planet’s Switzerland is our most comprehensive guide that extensively covers all the country has to offer, with recommendations for both popular and lesser-known experiences. Hop aboard the Glacier Express, hike in the Swiss National Park, and wander the medieval cobbled streets of Bern; all with your trusted travel companion.", continent_id: europe.id, price: 22.99, country_id: switzerland.id)

ShopItem.create!(name: "Tanzania", image: "https://i.imgur.com/kC1lARZ.png", description: "Wildlife, beaches, ruins, Mt Kilimanjaro, friendly people, fascinating cultures – Tanzania has all these and more wrapped up in one adventurous, welcoming package. Lonely Planet will get you to the heart of Tanzania, with amazing travel experiences and the best planning advice.

Listen to the sound of pounding hooves as wildebeest stampede across the Serengeti; pick your beach from over 100km of Indian Ocean coastline; track chimpanzees in Tanzania’s remote western parks; all with your trusted travel companion. Get to the heart of Tanzania and begin your journey now!", continent_id: africa.id, price: 18.99, country_id: tanzania.id)

ShopItem.create!(name: "Ukraine", image: "https://i.imgur.com/EJAUbs2.png", description: "Big, diverse and largely undiscovered, Ukraine is one of Europe’s last genuine travel fron-tiers, a nation rich in colourful tradition, warm-hearted people and off-the-map experiences. Lonely Planet will get you to the heart of Ukraine, with amazing travel experiences and the best planning advice.

Lonely Planet’s Ukraine is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Sip coffee in cosy cafes in Lviv; hike the flower-filled upland pastures and wide, snaking valleys of the Carpathian Mountains; take a guided tour of Chernobyl; all with your trusted travel companion. Get to the heart of Ukraine and begin your journey now!", continent_id: europe.id, price: 18.99, country_id: ukraine.id)

ShopItem.create!(name: "USA", image: "https://i.imgur.com/hq5LO68.png", description: "Lonely Planet’s USA is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Catch a Broadway show in New York, marvel at the Grand Canyon, and drive the Pacific Coast Highway; all with your trusted travel companion. Get to the heart of the USA and begin your journey now!", continent_id: north_america.id, price: 24.99, country_id: united_states_of_america.id)

ShopItem.create!(name: "Vietnam", image: "https://i.imgur.com/wysI0oI.png", description: "Lonely Planet's Vietnam is your passport to the most relevant, up-to-date advice on what to see and skip, and what hidden discoveries await you. Experience Hanoi’s labyrinth-like Old Quarter, kayak in Halong Bay, and wander through historic Hoi An; all with your trusted travel companion. Get to the heart of Vietnam and begin your journey now!", continent_id: asia.id, price: 23.99, country_id: vietnam.id)

puts "Done seeding shop items..."

puts "Seeding blogs..."


things_to_know_before_traveling_to_hawaii = Blog.create!(title: "12 Things to Know Before Traveling to Hawaii", 
body: "1. Decide the best time to go You can visit Hawaii anytime – the weather is agreeable year-round. It may be a bit rainier in winter and a bit hotter in summer, but there are no extremes because cooling trade winds blow throughout the year. \n Although winter (mid-December through mid-April) is the busiest tourist season, that has more to do with the climate elsewhere, as many tourists are snowbirds escaping cold weather back home. Crowds of families take summer vacations from June through August, and rooms are scarce and prices can spike around holidays, especially Thanksgiving, Christmas, New Year’s and spring break/Easter.

For the budget-conscious, the slowest times are mid-September through mid-November and the weeks from just after Easter until Memorial Day at the end of May, and you’re more likely to find good deals then on accommodations and airfare. Surfers will find the largest waves in winter, while optimal windsurfing conditions are during summer. Whale-watching tours usually depart between January and March only. 2. You'll need to make some reservations in advance Although Hawaii’s hang-loose attitude extends to most facets of life – including making extensive plans in advance –  you might want to book ahead in a couple of instances. For top Honolulu restaurants popular with residents, reserve a table before you arrive in the islands. The free tickets for the boat to the USS Arizona Memorial at Pearl Harbor are scooped up quickly. Reserve online up to 60 days before your visit. 3. Respect Hawaiian culture Evolving from ancient Polynesian traditions, Hawaiian culture was attacked and suppressed in the two centuries after the arrival of British colonizer Captain Cook in 1778. But beginning with the Hawaiian Renaissance in the 1970s, a rebirth of Native Hawaiian cultural and artistic traditions has taken hold. Across the islands, both Hawaiian culture–focused charter schools and public schools' Hawaiian-language immersion programs are popular, and traditional arts are experiencing a revival. Ancient heiau (temples) and fishponds are being restored, native forests replanted and endangered birds bred and released back into the wild. Today Hawaiian culture is about much more than just melodic place names and luau shows. Being Hawaiian is an important part of the identity of the islands, reflected in ways both large and small, from the inclusion of Hawaiian words in everyday speech to the embrace of concepts of respect and inclusion. Although few island residents can agree on what shape the Hawaiian sovereignty movement should take, its grassroots political activism is increasingly part of the local dialogue. A female in silhouette as the sun sets over the beach holds up her hand in a hang loose sign or 'shaka' Don't be afraid to liberally wave the shaka © Adventuring MJ / Shutterstock Dos and don'ts in Hawaii Good manners in Hawaii revolve around respect and awareness. Do use aloha (hello/goodbye and the concept of love and fellowship) and mahalo (thank you). Liberally wave the shaka (Hawaii’s hand greeting sign). Do try to correctly pronounce Hawaiian place names and words. Even if you fail, the attempt is appreciated. If you aren’t sure how to say it, ask. Even long names aren’t that hard with a little practice. Don’t refer to Maui, Kauaʻi, Molokaʻi, Lanaʻi and Hawaiʻi (the Big Island) as 'outer islands' – it's Oʻahu-centric. They’re called 'Neighbor Islands.'
Don’t try to speak pidgin – unless you’re really good at it.
Do ask permission before you pick fruit or flowers from trees on private property.
Don’t be pushy. You’ll get what you want (this time), but you’ll get no aloha with it.
Do drive slowly. Residents rarely have far to go, and they drive that way. In fact, do everything slowly.
Don’t freak out at every gecko and cockroach. It’s the tropics. There are critters.
Don’t collect (or even move) stones at sacred sites. If you’re not sure whether something’s sacred, consider that in Hawaiian thinking, everything is sacred, especially in nature.
Don’t stack rocks or wrap them in ti leaves at waterfalls or heiau. This is an adulteration of the Hawaiian practice of leaving hoʻokupu (offerings) at sacred sites – and it’s littering the islands’ fragile environment.
Don’t get naked (or topless) on the beach unless it’s an unofficial clothing-optional beach. As always, follow the lead of residents.
4. Underdress for success
The casual Hawaii dress code means that T-shirts and flip-flops are ubiquitous, except at Honolulu’s top-tier restaurants and at high-end resorts across the islands. Going fancy means neat, modest attire, which for men usually just means an aloha shirt and slacks.
5. Know your ʻokina
The ʻokina punctuation mark (ʻ) is the Hawaiian language’s glottal stop, which determines the pronunciation and meaning of words. Increasingly, Hawaiʻi (with the ʻokina) is being used for the island of Hawaiʻi (the Big Island), for references to ancient Hawaiʻi and to the Kingdom of Hawaiʻi pre-statehood. Hawaii (without the ʻokina) refers to the US territory that became a state in 1959, although the spelling with the ʻokina is being used for the state and place name more and more.
Three Pacific Islander surfers carrying their boards to the water
Residents are usually willing to share surf spots that have become popular tourist destinations © Adam Hester / Getty Images
6. Learn the local surfing etiquette
Residents are usually willing to share surf spots that have become popular tourist destinations, but they reserve the right to protect other 'secret' surf grounds. As a newbie in the lineup, don’t expect to get every wave that comes your way. There’s a definite pecking order, and frankly, tourists are at the bottom. That being said, usually if you give a wave, you’ll get a wave in return. Be generous in the water, understand your place and surf with a smile. At famous breaks where surfers can be ferociously territorial, such as Oʻahu’s Banzai Pipeline, ask a local for an introduction. 
7. Be aware of floods
No matter how dry a streambed looks or how sunny the sky above might be, a sudden rainstorm miles away can cause a flash flood in minutes, sending down a huge surge of debris-filled water that sweeps away everything in its path. Always check the weather report before setting out on a hike; this is crucial if you’re planning on hiking through any narrow canyons or swimming in waterfalls or natural pools.
8. Protect your belongings
The islands are notorious for thefts from parked cars, especially rentals (which are obviously tagged with barcode stickers). Thieves can pop a trunk or pull out a door-lock assembly within seconds. They strike not only at trailheads when you’ve gone for a hike, but also at crowded beach and hotel parking lots where you’d expect safety in numbers. 
Do not leave anything valuable in your parked car, ever. If you must do so, then pack all valuables out of sight before arriving at your destination; thieves lurk about to see what you put in the trunk.
Father carrying baby son looking up at tall bamboo
There may be pockets of resentment against tourists, so be respectful as you explore © Jeremy Woodhouse / Holly Wilmeth / Getty Images
9. Stay aware of your surroundings
Stay attuned to the vibe on any beaches at night, even where police patrols are present (eg Waikiki), and in places like campgrounds and roadside county parks, where drug users and gang members sometimes hang out. In rural areas of the islands, there may be pockets of resentment against tourists, so be respectful as you explore off the beaten path. 
10. Avoid scams
The main scams directed toward visitors involve fake activity-operator booths and timeshare booths. Salespeople at the latter will offer you all sorts of deals, from free luaus to sunset cruises, if you’ll just come to hear their 'no obligation' pitch. Caveat emptor. 
11. Don’t trespass
Hawaii has strict laws about trespassing on both private land and government land not intended for public use. Trespassing is always illegal, no matter how many other people you see doing it. As a visitor to the islands, it’s important to respect all 'Kapu' or 'No Trespassing' signs. Always seek explicit permission from the landowner or local officials before venturing onto private or government-owned land that is closed to the public, regardless of whether it is fenced or signposted as such.
12. Watch out for jellyfish
Stings from box jellyfish and Portuguese man-of-war (aka bluebottles) occur in Hawaii’s tropical waters. Even touching a bluebottle hours after it has washed up onshore can result in burning stings.
Box jellyfish are often seen seven to 10 days after a full moon, when they float into Hawaii’s shallow near-shore waters, such as those at Waikiki. When this happens, some public beaches may be closed for safety. The Waikiki Aquarium has a calendar that predicts the presence of box jellyfish.", 
description: "With top tips on planning, etiquette and health and safety, these are the key things to know before any vacation in Hawaii.", 
date: "Dec 12, 2022", 
image: "https://i.imgur.com/Fjuhz0F.jpg", 
likes: 69, 
read_time: "7 min read", 
category_one: "DESTINATION PRACTICALITIES", 
category_two: "TIPS AND ADVICE",
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

places_to_escape_the_cold_europe = Blog.create!(title: "10 places to escape the cold and find winter sun in Europe", 
body: "The idea of winter in Europe is not so bad: frosty forest trails, snow-capped mountains and mulled wine at Christmas markets all sound lovely. But after months of gloomy clouds, biting winds and grey sludge with a side of hail, we can’t blame you for dreaming of a warmer getaway.
Luckily, you don’t have to go far: Europe’s southern reaches can provide plenty of blue skies, sunshine and mild (albeit not tropical) temperatures year-round. What’s more, traveling in the low season means accommodation and car rental can be gloriously cheap, while beaches and local attractions are crowd-free.
Here are the best and sunniest spots for a European winter vacation. Feel your toes thawing out already?
Forge new connections on your next adventure with the latest advice from our weekly newsletter.
People walk around central Valletta on a sunny winter morning, Valletta, Malta
Historic Valletta is charming, bustling and sunny all year long © Anatoly Vartanov / Shutterstock
1. Malta
Discover green countryside, culture and history 
Malta can be scorching in summer, so the cooler days of winter (with temperatures rarely below 50°F/10°C) are perfect for exploring the great outdoors. Rock climbing and hiking are particularly pleasant in the off season, as the rural landscape is at its greenest. Culture and history buffs should catch a winter-solstice sunrise on December 21 at Mnajdra Temple, where the sun accurately lights up the edges of a megalith. And the Maltese Carnival in February promises parades and late-night parties.
Rainy-day rescue: If you need to seek shelter, choose a space that shimmers. The baroque interior of St John’s Co-Cathedral in Unesco-listed Valletta offers a dazzling way to ride out a rain shower.
Tourists walking in dark passage at archaeological site in Cyprus. 
Explore the Tombs of the Kings in Cyprus © wundervisuals / Getty Images
2. Cyprus
Revel in the Mediterranean’s warmest winter 
With more than 340 days of sunshine a year, Cyprus is your best bet for a warm winter in the Mediterranean. While snow glitters on the peaks of the Troödos mountains (skiers, take note), coastal areas, particularly in the east, stay warmer and drier. Stay in Larnaka to spot flamingos dancing around their winter home on the nearby salt lake before heading west for historic treasures such as the Tombs of the Kings and Ancient Kourion.
Rainy-day rescue: Spend a wet afternoon among the ancient artifacts of the Cyprus Museum in Nicosia, or find a cozy taverna for a long Cypriot feast.
A surfer descends a wooden staircase to Praia do Amado, near Sagres, Costa Vicentina, the Algarve Portugal
If you can handle the chilly water, winter is the best time for surfing in the Algarve © PIXEL to the PEOPLE / Shutterstock
3. The Algarve, Portugal
Soak up more than 300 days of sunshine a year
The Algarve is an increasingly popular winter sun destination, with its more than 300 days of sunshine a year and 87 blue-flag beaches. Winter brings waterfalls to life in the eucalyptus-filled Monchique Mountains. Migrating birds flock to Ria Formosa Natural Park. And popular Quinta do Lago Beach is blissfully quiet. If you can handle sea temperatures of 57°F (14°C), now is the time to surf – while golfers are spoiled for choice, too. Work up an appetite before finding dinner in the whitewashed towns of Faro, Lagos or Tavira.
Rainy-day rescue: The interior of São Lourenço church near Loulé is an azulejo-lover’s dream. The ornate blue tiles here cover almost every inch, floor to ceiling.
A woman stands in front of the Praetorium, ancient Roman era ruins at Gortyna of Crete island in Greece.
Explore Crete in winter for a quieter side of the island © Andrew Angelov / Shutterstock
4. Crete, Greece
Have deserted resort towns all to yourself
In winter you’ll need to fly via Athens to reach Crete. While many resort towns will be pretty much deserted, you can base yourself in Heraklion or Haania for a sense of low-season life (and the chance to find open restaurants) before hiring a bargain rental car for an island road trip. On sunny days you might find you have the pink-tinged sands of Elafonisi or the Palace of Knossos all to yourself. Temperatures can reach highs of 61°F (16°C) in January, but the nights are much colder, so pack layers. Still chilly? An evening with a bottle of local raki should warm you up nicely.
Rainy-day rescue: Uncover five millennia of history at Heraklion Archaeological Museum, one of the best museums in Greece.
A market stall holder stands with his hands on his hips behind many crates filled with brightly coloured fresh produce.
Sicily’s food-market stalls are stuffed with fresh seasonal produce all year round © gary yim / Shutterstock
5. Sicily, Italy
Retrace season two of The White Lotus, location by location
If you binged The White Lotus, you can explore stunning Sicily the same way the cast of the second season did: in the off-season. (The cast and crew took over the deluxe San Domenico Palace hotel in Taormina for much of the winter and spring of 2022.) Winter is indeed a colorful season on this magical island: citrus trees are heavy with ripening oranges, lemons and limes; food market stalls in Catania and Palermo creak under the weight of fresh vegetables, fish and seasonal walnuts; and all over the island people are preparing for Carnevale (which takes place this year on February 19). While the weather can change at the drop of a blood orange, eight hours of sunshine a day and average highs reaching double those in London make it worth taking your chances.
Rainy-day rescue: Villa Romana del Casale is home to the most significant collection of Roman floor mosaics in the world – and the wooden roof protects them (and you) from the elements.
A horse-drawn carriage in front of a building in Seville. 
Head to Seville for sunshine © BAHDANOVICH ALENA / Shutterstock
6. Seville, Spain
Immerse yourself in Mudéjar style, and sunshine
If you want a winter city break, look no further than Seville. Temperatures often rise to 63°F (17°C), with at least six hours of sunshine a day (though packing an umbrella is always wise). Top sights like the Plaza de Espana and the Real Alcázar feature indoor areas and outdoor delights, allowing you bask in the sunshine and hide from a passing shower. Enjoy a sunset stroll along the modern Metropol Parasol, known locally as Las Setas.
Rainy-day rescue: Take a tour of Seville’s stunning Cathedral, or stamp, tap and shimmy through the Flamenco Dance Museum, where you can also arrange a lesson or watch the pros perform.
Three hikers walk along a grassy coastal trail. One is looking down towards the sea, and there are rugged mountains in the distance.
The temperatures on Madeira are much more comfortable for hiking in winter © Maya Karkalicheva / Getty Images
7. Madeira, Portugal
Here, it’s always “eternal spring”
An island region of Portugal north of the Canaries, Madeira is known for its “eternal spring.” Mild winters are standard, with temperatures rarely dropping below 57°F (14°C). Beaches are rocky but the sea is warm, so pack your swimsuit – or join a dolphin- and whale-spotting tour. If you prefer dry land, Madeira’s rugged interior is ideal for hiking. Follow a trail along a levada – an ancient network of channels that distributed water around the island for over a century that are these days sources of hydropower.
Rainy-day rescue: Relax with afternoon tea while watching the rain fall. Belmond Reid’s Palace in Funchal has welcomed Winston Churchill and Roger Moore (aka James Bond) in its time – why not you, too?
8. Turquoise Coast, Turkey
Admire the crystal-clear waters – without the crowds
Turkey’s Turquoise Coast is a tourist magnet in summer – perhaps it has something to do with the shade of that water – but when the crowds have dispersed, there’s nothing but you, those views and an average of 10 hours of sunshine a day. Moderate temperatures mean hiking is nowhere near as sweaty as it would be in August – so why not tackle some of the 335-mile (540km) Lycian Way? The route winds between Fethiye and Antalya, passing countless ancient ruins and clifftop wonders including the Levissi ruins, ancient Patara and the (mostly) sunken city of Simena.
Rainy-day rescue: Warm up, give your legs a rest and enjoy a treatment at a hammam (Turkish bath), found in most major towns.
A habour on Menorca in the sunshine. 
Head to Menorca for relaxation © Getty Images/iStockphoto
9. Balearic Islands, Spain
Frolic on epic beaches and watch peerless sunsets
Spain’s islands are adored by summer holiday makers but are just as lovable come winter. The pumping beats and party crowds in Ibiza have left – but the epic sunsets and beaches remain. Culture-packed Mallorca, meanwhile, is quieter and cheaper. Lesser-visited Menorca lures nature fans with walker-friendly weather and the Camí de Cavalls coastal path, while tiny Formentera beckons those who want true seclusion.
Rainy-day rescue: If you’re going to get wet, you may as well go diving. Sea temperatures allow for diving around the Balearics’ caverns and shipwrecks year-round.
Hundreds of colourful kites being flown on the sandy beach on a windy day; there is a rocky outcrop in the foreground.
Fuerteventura's annual International Kite Festival is a colorful sight in winter © imv / Getty
10. Canary Islands, Spain
Take to the waves, dunes and hidden coves
Want sand dunes and hidden coves, volcanic national parks and forested mountains? How about colorful villages, tempting restaurants and watersports galore? It’s all here, all year. Tenerife and Gran Canaria are generally the warmest of the islands in winter with highs around 71°F (22°C). Lanzarote and Fuerteventura can be a little windy – which isn’t necessarily a bad thing if you’re heading there to surf. Lesser-known La Gomera, La Palma and El Hierro will feel even more off-the-radar than usual.", 
description: "Here are the best and sunniest spots for a European winter vacation. Feel your toes thawing out already?", 
date: "Dec 14, 2022", 
image: "https://i.imgur.com/UoECR3q.jpg", 
likes: 34, 
read_time: "7 min read", 
category_one: "DESTINATION PRACTICALITIES", 
category_two: "ACTIVITIES", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

unforgettable_hikes_around_the_world = Blog.create!(title: "12 unforgettable hikes around the world", 
body: "Hiking is about so much more than exercise, pleasant scenery or getting from A to B.
Putting one foot in front of the other for hours, days or even weeks on end creates a special sense of connection to a place and its landscapes.
At Lonely Planet, we’ve chronicled the world’s most unforgettable hiking journeys in our Epic Hikes series, covering Epic Hikes of the World, Epic Hikes of the Americas, Epic Hikes of Europe and Epic Hikes of Australia & New Zealand. In case you haven’t noticed, we love an epic journey, and this selection of 12 globe-spanning hikes should get you in the mood to dust off those hiking boots and hit a trail – wherever you find yourself on the globe.
Squeeze every moment out of your next vacation with tips and tricks from Lonely Planet in our weekly newsletter delivered to your inbox.
A man sits on a volcanic rock in Iceland, resting during a hike. 
Head to Hornstrandir, Iceland to explore these northern peninsulas © kanyhun / Imazins / Getty Images/ImaZinS RF
Hornstrandir, Iceland
Iceland at its best
Start/end at Bolungarvík or Ísafjörður; variable distance; more info
If it weren’t so hard to get to, the protected reserve of Hornstrandir would be Iceland’s most popular hiking expanse. Like little lobster claws nipping at the Arctic Circle, the northernmost peninsulas of Iceland’s Westfjords are brutally lonely – save for colonies of cawing guillemots and the occasional Arctic fox. In summer (early July to mid-August) the preserve is blanketed in a glittering green carpet as travelers walk from cairn to cairn. For the full experience, take the ferry from the townships of Bolungarvík or Ísafjörður up to the glacially carved fjord Veiðileysufjörður, and spend four or five days hiking up to Hornvík and the bird cliffs at Hornbjarg before venturing down the mountain pass to Hloduvík and on to the cluster of abandoned cottages at Hesteyri to wait for the return ferry. 
A women hiker on a rocky shoreline in the Akamas Peninsula, Cyprus
Explore the rocky shoreline of Cyprus on an epic coastal hike © Getty Images / iStockphoto / ZinaidaSopina
Cyprus, from coast to coast 
A coastal journey 
Start at Cape Greco, finish at Akamas Peninsula; 250km (155 miles); more info
Forming part of the much longer (think 10,000km/6214-mile) European Long Distance Route E4, the Cyprus Coast-to-Coast offers a more digestible slice of adventure – and is the perfect way to take in the best of the country. You can walk in either direction, but going east to west means you start with a sunrise gazing over the Mediterranean Sea at Cape Greco, and end with a blistering sunset on the Akamas Peninsula. The walking takes in yawning bays, harbor towns – replete with freshly caught seafood to snack on along the way – as well as traditional villages. At Troödos National Forest Park, look out for the Cypriot golden oak tree; Mt Olympus stands at the heart of the volcanic center of the Troödos Mountains. Birdlife along the way is a real highlight, as is reaching the lighthouse at the end of this unforgettable hike. 
A female hiker with a large backpack hikes along a coast. 
Follow the Fisherman’s Trail in Portugal to the “End of the World” © hansslegers / Getty Images
Fisherman’s Trail, Portugal 
See the “End of the World”
Start at São Torpes, finish at Lagos; 226km (140 miles); more info
The Atlantic is your constant companion on the Rota Vicentina, a 13-stage trail that teeters along the cliff tops of Portugal’s wild southwest coast. Bookended by the coastal towns of Sines (in the north) and Lagos (in the south), the trail dives straight into the Parque Natural do Sudoeste Alentejano e Costa Vicentina, a nature park protecting the secluded dune-backed beaches, cork-oak forests, jagged, stratified cliffs and rock formations that define this remote, little-visited swathe of the Algarve. Sleepy fishing villages, castle-topped towns and surf resorts dish up a mix of respite, culture and action en route. The highlight? Watching the sunset from the vertiginous cliffs of Cabo de São Vicente, Portugal’s southwesternmost point, nicknamed the “End of the World” by the great explorers that once set sail from its shores.
Woman sitting on a rock and admiring Mount Fitz Roy, a rocky Patagonian range. 
A short but incredible hike in Patagonia © Judyta Jastrzebska / Shutterstock
Laguna de los Tres, Los Glaciares, Argentina
A Patagonian epic 
Start/end at El Chaltén; 14 miles (22km); more info
Hikers visiting Patagonia’s Torres del Paine often add on an expedition to the national park of Los Glaciares, which offers equally stunning scenery, not to mention a wealth of day hikes and multi-day treks. This 14-mile (22km) hike is one of the classics, carrying you deep into the mountains of the Fitz Roy range.
The trail’s name – the Lagoon of Three – refers to the trio of mountains that lie in wait at the end of the trail: Cerro Fitz Roy, Aguja Poincenot and Torre, all rising like rocky guardians around the lakeshore. It’s a long but rewarding day hike, with the added bonus that you get to sleep in a proper bed and get a good meal at the end of the day: the town of El Chaltén has plenty of accommodation options for hikers.
Valley view with villages and mountains at sunrise. View from Adam's peak.
You won't regret a hike up Adam's Peak in Sri Lanka © Dudarev Mikhail / Shutterstock
Adam’s Peak, Sri Lanka
Stairs leading to sunrise magic 
Start/end at Dalhousie; 9 miles (14km) round trip; more info
In world terms, this conical Sri Lankan mountain isn’t all that high at only 7360ft (2243m) – but don’t let its size fool you. It’s a punishing climb, favored by pilgrims who come to see the Sri Pada, or sacred footprint, said to have been left by either Buddha, Shiva or Adam, depending on which religion you happen to belong to.
There are six possible routes to the top, and the one most often used by trekkers is the Hatton Trail, a steep uphill slog involving numerous stairs cut into the mountain. To get there in time for sunrise requires both an early start and a hand from the weather gods: Sri Lanka’s jungly terrain means the peak is (unfortunately) often enveloped in clouds. Yet with luck, at the top you’ll have a memorable view encompassing the island’s west, south and east coasts.
Hikers trek along a stone path in the Japanese mountains. 
Tateyama-Kurobe Alpine Route takes you through incredible scenery © Hachi888 / Shutterstock
Tateyama-Kamikōchi hike, Japan 
A Japanese classic
Start at Murodo, end at Kamikōchi; 40 miles (65km); more info
The classic hike covering the length of Japan’s North Alps takes around seven days in the most spectacular alpine scenery the country has to offer. This hike starts at Murodo (8040ft/2450m), the high point on the enthralling Tateyama-Kurobe Alpine Route, which links the western and eastern sides of the North Alps with a series of cable cars, buses, trolley buses through tunnels and a walk over the Kurobe Dam.
Climb the sacred peak of Tateyama (9890ft/3015m), then head south to climb spear-like Yarigatake (10,430ft/3180m) and Oku-Hotaka-dake (10,470ft/3190m), before dropping into the remote resort village of Kamikōchi (4920ft/1500m). Mountain huts with bedding and meals along the way mean you can take minimal gear; you’ll also find a number of camping areas. In the four days between Tateyama and Yarigatake you’ll likely see fewer people than on one Tokyo rush-hour subway carriage.
Small Berber homes are hidden within a mountain range. 
Explore Mt Toubkal on an epic hike © soren-asher / Getty Images
Mt Toubkal, Morocco
Explore North Africa’s highest peak
Start/end at Imlil; 45 miles (72km)
The apex of the Atlas range, 13,671ft (4167m) Mt Toubkal is also the highest peak in all of North Africa. You can get up and down the mountain in two days if summiting is all that matters – though making a longer circuit not only helps with acclimatization, but also offers a greater insight into local Berber culture.
From the Imlil valley, you’ll make a clockwise loop via walnut groves and cherry orchards, high passes and boulder fields, mud-brick houses and neat green terraces, wandering shepherds and wind-wizened juniper trees. The final ascent from the Neltner refuge is a stiff but steady clamber up scree, rewarded by views across a starkly spectacular landscape that the hardy Berber have made their own.
A gorilla in Bwindi Impenetrable Forest National Park, Uganda, Africa
Explore Bwindi Impenetrable Forest National Park in Uganda in search of gorillas © Jonathon Gregson / Lonely Planet
Gorilla tracking in Bwindi, Uganda
A hike in search of incredible creatures
Start/end depends on the gorilla family being tracked, but treks usually depart from park headquarters; various distances; habituation-experience permits cost $1500 per person; more info
The total population of mountain gorillas is tiny: fewer than 900 are believed to survive in the Virunga Mountains straddling DR Congo, Rwanda and Uganda, and in the last country’s Bwindi Impenetrable Forest. Whacking up through the lush, dense vegetation of Bwindi to locate one of the habituated family groups is not for softies: it’s steep, it’s muddy, it’s overgrown, and it can be wet, cold, hot – or all three in one day. Until recently, limited numbers of permits costing $600 per person allowed visitors to spend up to one hour with a family (if you can find them). But you can now join rangers habituating new groups, and enjoy gorilla company for several hours.
A pier goes out into the water. 
See the pier on the Rakiura Track in Stewart Island © slyellow / Shutterstock
Rakiura Track, Stewart Island, New Zealand
A Great Walk to see birdlife 
Start at Lee Bay, end at Fern Gully (or the reverse); 20 miles (32 km); more info
Stewart Island’s kiwis (the southern brown kiwi) may be extra large, but that doesn’t mean that they’re any easier to spot. You’ll have to wait until dusk, then head for Ocean Beach in the Glory Cove Scenic Reserve, giving the protected sea lions a wide berth. Since you’ll need a permit to be there after 6pm, it’s worth joining a guided tour.
Yet the Rakiura Great Walk on Stewart Island offers almost-certain sightings of lots of New Zealand birdlife, including kaka parrots, bellbirds, tui, fantails, little blue penguins and an abundance of wading birds. The 20-mile (32 km) circuit starts near the Rakiura National Park visitor center on the east coast of this island, which sits just below the South Island. The walk typically takes three days; you’ll need to book huts in advance.
A close-up of an arctic fox walking toward the camera. 
See an Arctic fox on a journey along the Arctic Circle Trail © Nicram Sabod / Shutterstock
Arctic Circle Trail, Greenland 
An Arctic journey 
Start at Kangerlussuaq, finish at Sisimiut; 100 miles (160km); seven to 10 days; more info
At the northern edge of the planet, Greenland’s Arctic Circle Trail reaches across a landscape devoid of towns and cars: this is the domain of reindeer, musk oxen and Arctic foxes. Hikers will find nine free-to-use huts along the way; between each stop, you’ll take in solitary views of serene lakes, rushing streams and domed mountains. While most hikers tackle the trail in the summer to take advantage of the midnight sun, a winter excursion has its own charms: uninterrupted views of the ethereal Northern Lights and the chance to travel by dogsled. If you’d like to add a little extra adventure, continue past Kangerlussuaq to Russell Glacier, which flows from the Greenland ice sheet.
Ruins of an ancient maya pyramid (La Danta) deep in the Guatamalan jungle
Head deep in the Guatamalan jungle to see La Danta © Raphael Rivest/Shutterstock
El Mirador, Guatemala
Find ancient history in the jungle 
Start/finish at Carmelita; 25 miles (40km); five to six days; guided tours only
The dense jungles in Guatemala are filled with overgrown Mayan ruins and archaeological sites. During a five- or six-day guided trek through this region, hikers will be challenged when tackling the unique rainforest terrain and camping beneath the canopy. Howler monkeys, tropical birds and possibly jaguars can be spotted as hikers explore sites including El Mirador as they learn more about the Maya civilization. While the hiking is relatively flat and the trails are well maintained, the jungle always presents unexpected obstacles to overcome. Hiking can last for upward of eight hours each day, not including climbing up and down all the stone ruins – so only those in excellent shape should attempt this tough but thrilling expedition.
Dune fence and sea oats on the dunes at Pensacola Beach, Florida on Gulf Islands National Seashore.
Start a hike on the Gulf Islands National Seashore to follow the Florida National Scenic Trail © Colin D. Young / Shutterstock
Florida National Scenic Trail, Florida, USA 
See Florida’s wild side
Start/end at either Big Cypress National Preserve or Fort Pickens, Gulf Islands National Seashore; 1300 miles (2090km) 
Far from fairy-tale castles or friendly mice, explore the alternative Sunshine State: that is, its estimable wild side. The Florida National Scenic Trail (about three-quarters complete) begins in the Panhandle, on the crunchy-white, turquoise-lapped beaches of the Gulf Islands National Seashore near Pensacola. From here, it wiggles east and south, via salt marshes, crystal-clear springs, lakes, prairies, old-growth forests and historic urban areas. It finishes in Big Cypress National Preserve, bordering the Everglades, amid a lush swampland of bright bromeliads and giant ferns. This semi-tropical state is incredibly bio-diverse, and most of the trail is also a wildlife corridor, protecting both common and rare species. Possible sightings include black bears, deer, otters, alligators, gopher tortoises and sea turtles. A plethora of birds, too: the crested caracara and red-cockaded woodpecker are particularly sought-after species.", 
description: "Hiking creates a connection to a place and its landscapes. Here are 12 incredible walks from around the world to inspire you.", 
date: "Dec 6, 2022", 
image: "https://i.imgur.com/rOaxFXS.jpg", 
likes: 78, 
read_time: "10 min read", 
category_one: "HIKING", 
category_two: "ACTIVITIES", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

how_to_get_around_in_zurich = Blog.create!(title: "How to get around in Zurich", 
body: "Despite being Switzerland’s largest city, Zürich is a compact place with many pedestrian areas, making it ripe for exploration on foot. However, as befits a Swiss metropolis, its public transport network is highly organized and runs like clockwork.
Here's our guide to getting around Zürich, whether by S-Bahn train, tram, bus, ferry, bicycle or scooter, a seamlessly interconnected network which will take you from the cobbled hills of the Altstadt (Old Town) to the popular nightlife zone of Züri West to the city’s local mountain Uetliberg.
Get local insight on destinations all over the world with our weekly newsletter delivered to your inbox.
Travel like a local on an electric tram
Zürich has had electric trams since the late-19th century, and today’s modern incarnations are the most visible symbols of the city’s efficient public transport system.
Clean, spacious and extremely regular, they serve most parts of central Zürich, from the nightspots and cultural venues of Zürich West to the shopping district around Bahnhofstrasse (the opera house on Lake Zürich’s right bank) and even out to the airport (though it’s quicker to get there on the S-Bahn).
And where trams don’t venture – for example down the quaysides along the lake – buses fill in, making for a highly connected network, all coordinated and ticketed by the Zürich Transport Association (ZVV).
Zurich Main Railway Station with underground level. The image shows a S-Bahn service with several passengers get in to the train.
Swift and punctual service is provided by the comprehensive S-Bahn network © Getty Images
Ride the S-Bahn to Uetliberg
For longer journeys in and around Zürich, swift and punctual service is provided by the comprehensive S-Bahn network, which has been expanded four times since its launch in 1990.
From the Hauptbahnhof (main train station), S-Bahn trains leave for destinations including Schaffhausen and the Rheinfall, the pretty medieval village of Rapperswil at the southern end of Lake Zürich (to which you could ride the ferry instead, if you have the time) and the culture-packed city of Winterthur.
For an easy day trip, jump on the S10 for Uetliberg, Zürich’s so-called local mountain, and within half an hour you’ll be strolling through nature at an altitude of 871m (2858ft), overlooking the city down below.
Tour Lake Zürich by boat
Zürich hugs the northern end of its eponymous lake and is divided in two by the Limmat River. Both waterways add hugely to the city’s identity, lifestyle and navigability, not to mention its picture-postcard appearance.
Get your bearings by hopping on one of the ferries run by the Lake Zürich Navigation Company (ZSG), which offers river cruises – round trips to destinations around the lake – as well as so-called 'unique cruises', which let you enjoy a fondue, a burger or even a silent disco as you sail.
Two young ladies ride bicycles through a town square in Zurich, the capital of Switzerland. Other people walk along the paths passing shops.
Zürich is a pretty cycle-friendly city © Getty Images
Pedal through the city on a free bike
Zürich is pretty cycle-friendly already, though the city authorities are aiming to make it even more so with their Velo Strategy 2030, a master plan involving building new bike lanes, riverside cycle paths and parking stations throughout the city.
If you don’t have your own bike, Züri Rollt can lend you one for free with a returnable deposit of 20chf. The company has two pick-up points, at the Hauptbahnhof and at Pestalozziwiese. Choose your bike (or e-bike, available for a small fee) and head off to explore the city on two wheels.
For a lovely day trip, cycle all the way to Baden on the path alongside the Limmat River – a pleasant, mostly flat 28km (92-mile) route with multiple picnic spots – before putting yourself and your bike on the train back to Zürich.
A woman checks out an e-scooter on her phone in Zurich
Attach your phone to an electric scooter and zip about the city © Getty Images / iStockphoto
Zip through Züri on an electric scooter
Zürich has fully embraced the electric-scooter trend. Multiple companies, including Voi, Bolt and Lime, offer on-street scooter hire.
Track down a free-floating scooter (you’ll see them seemingly abandoned all over the place) on your chosen provider’s app, then scan it, attach your phone to the holder, and you’re free to zip about the city as you please. It’s a convenient way to get from A to B, if a little pricey for regular use.
The small and famous Polybahn connects Zurich Central with the University Zurich. The Polybahn was built in 1886 and the travel distance takes only 176 meters.
The little red funicular known as the Polybahn is a Zürich icon © Getty Images
Hop on the Polybahn for a city panorama
Founded in 1886, the little red funicular known as the Polybahn is a Zürich icon (and essentially a way for students to avoid walking up a hill). It takes a little more than a minute and a half to ascend from the Limmatquai to the Polyterrasse at ETH Zürich, the famed Swiss Federal Institute of Technology.
The view from the top takes in the streets of Niederdorf, the Limmat River and the Old Town over the other side, along with Zürich’s twin churches, the Fraumünster and Grossmünster.
Accessible transportation in Zürich
Zürich’s public transport network is generally well adapted for people with reduced mobility, with lowerable-floor buses, barrier-free stations and step-free trams and S-Bahn trains. Ticket machines are adapted for the visually impaired, while stations and platforms have raised white safety lines.
All ferries on Lake Zürich are wheelchair accessible (though not the river boats) and most have disabled passenger toilets. The Polybahn is not adapted for wheelchair users. Full details of accessible travel in Zürich are available on the ZVV website.
For more information, see Lonely Planet’s Accessible Travel Resources page.
Transport passes
The city’s public-transport overlord, the Zürich Transport Association (ZVV), offers an integrated ticketing system across all forms of transport in Zürich, including the Polybahn and scheduled ZSG boat services (but excluding the unique cruises).
Single and multiple tickets can be bought on the smartphone app, online or at ticket machines and are valid on any form of public transport within the selected zone. The 24-hour ticket offers the best value for a whole day of travel (fares vary depending on the zones required).
If you’re planning on visiting more than a couple of the city’s museums, it may make sense to buy a Zürich Card, provided by Zürich Tourism and available to buy from ticket machines. Valid for 24 or 72 hours, it includes entrance to many museums and second-class travel across the public transport network, plus various discounts and offers. Don’t forget to validate your Zürich Card at a ticket machine before you use it for the first time.", 
description: "With electric trams, free bicycles and scenic ferries, Zürich is a pleasure to get around. Here are our top tips for navigating the Swiss city.", 
date: "Dec 7, 2022", 
image: "https://i.imgur.com/ia9ddLw.jpg", 
likes: 41, 
read_time: "5 min read", 
category_one: "DESTINATION PRACTICALITIES", 
category_two: "ACCESSIBLE TRAVEL", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

montanas_best_winter_activities = Blog.create!(title: "Montana's best winter activities - that aren't all skiing", 
body: "Winter in Montana is a harsh but magical season. A winter hush descends upon a landscape so cold that even sound seems frozen. But for those well equipped and with a certain level of experience, Montana offers incredible ways to get out and explore its stunningly beautiful mountain terrain.

Whitefish and the surrounding Flathead Valley is unbeatable for almost every kind of winter activity, as is the Gallatin Valley between Big Sky and West Yellowstone. For pristine backcountry skiing and snowmobiling, plus access to Yellowstone National Park, remote Cooke City is a great in-the-know destination.

Explore the planet's most surprising adventures with our weekly newsletter delivered to your inbox.
1. Snowshoe, ski and spot wolves in Yellowstone National Park
Winter is many people's favorite season to visit Yellowstone National Park. There are almost no crowds, the geysers are at their steamiest and the frozen landscapes are simply stunning.

Yellowstone National Park has two main areas to visit in winter. From West Yellowstone, snowcoach tours shuttle to Old Faithful, from where you can make ski or snowshoe excursions around the park's geyser basins, before a hot chocolate and overnight at the cozy Snow Lodge.

Further north, the park entrance at Gardiner and its road to Cooke City are the only ones open to cars during winter. This opens up a host of snowshoe and cross-country ski trailheads around the Mammoth region, some of which are served by snowcoach drops.

Planning Tip: The wildlife spotting in Yellowstone is legendary in winter because it's easier to spot animals against the white background. For an unforgettable opportunity to lock eyes with a Yellowstone wolf, sign up for a wildlife-spotting trip with an expert local company like Yellowstone Wolf Tracker.

Four people ride on two snowmobiles on a trail through thick snow and woodland in Montana
Travel through Montana's winter scenery on a snowmobile © Per Breiehagen / Getty Images
2. Snowmobile the Targhee or Flathead National Forests
It may not be the most environmentally friendly activity (with access to places like Yellowstone National Park long mired in controversy), but if you are a confident rider, there's no more exciting way to traverse Montana's epic scenery than on a snowmobile.

Cooke City is one of the most remote towns in Montana, with only one access road in winter (through Yellowstone National Park), but once you get there, the snowmobiling is incredible. Rentals and guides are available in town, and groomed Forest Service roads climb to passes that offer astonishing views of the powder-filled Beartooth Mountains.

As the gateway for winter trips into Yellowstone, West Yellowstone is also well set up for snowmobilers, who can choose from hundreds of miles of spectacular trails in the nearby Targhee National Forest.

Other must-ride locations include the 250 miles of trails at Lolo Pass in the Bitterroot Mountains southwest of Missoula, or the Flathead National Forest near Glacier National Park, where you can rent snowmobiles or join a tour with Swan Mountain Snowmobiling.

3. Watch the curious sport of skijoring
Combine Montana's cowboy heritage with its Norwegian immigrant history and you get skijoring, in which a skier is towed by a horse over a series of jumps and through slaloms at speeds of up to 40mph. It's the kind of sport that feels like it was invented during a night of heavy drinking. Expect high adrenaline and some slightly silly action.

Planning Tip: For spectators the best action is to be found at Whitefish's World Skijoring Invitational in January or at West Yellowstone's National Championship in February. Alternatively, try Big Sky's Best of the West competition in the same month or the skijoring finals held during Red Lodge's Winter Fest in early March.

A smiling woman in ski gear comes down a hill covered with deep snow in the backcountry in Montana
Get out in the Montana backcountry for an unforgettable skiing adventure © Noah Clayton / Getty Images
4. Ski untrammeled slopes from a backcountry yurt or hut
Montana has some mind-blowing backcountry skiing, but it's the kind of terrain reserved for experienced skiers, and it doesn't come cheap. That said, it's an unforgettable experience to ski powder-filled slopes all day, only to return to your private wilderness accommodations miles from civilization.

Several companies offer backcountry accommodations and guides. You can base yourself in cozy yurts with Yurtski in the Swan Mountains, with Big Sky Backcountry Guides in the Bitterroot Mountains or with Beartooth Powder Guides in Cooke City. All offer a range of avalanche and backcountry skiing courses, which are a wise investment.

Hellroaring Powder Guides has both unguided and guided backcountry skiing from their hut in the Centennial Mountains, 25 miles from West Yellowstone.

Great Northern Powder Guides in the Whitefish region offers the only Cat skiing in the state, using their 14-person cabin as a base for incredible, pristine descents.

Planning Tip: The cheapest way to do some gentler cross-country backcountry skiing is to hire a Forest Service Cabin. For $65 you can get a basic cabin for four, though you'll need to chop wood and pack in all your food.

5. Learn how to mush on a dog sled trip
It's hard to think of a more romantic way to traverse Montana's snow-draped winter forests and valleys than in a dog-powered sled. Apart from the thrill of the scenery and learning how to mush, getting to interact with the dogs is a highlight in itself.

Several outfitters offer hands-on dog sledding trips. In western Montana, try Base Camp Bigfork in the Flathead Valley, Winter Woods Dog Sled Tours outside Whitefish or nearby Dog Sled Adventures. Closer to Bozeman, check out Yellowstone Dog Sled Adventures in the southern Gallatin Valley or Spirit of the North Dog Sled Adventures in Big Sky.

Two cyclists on fat bikes with wide tires pause to look across a snowy landscape in Montana
Ride over Montana's winter terrain on a fat bike © Jordan Siemens / Getty Images
6. Try out fat biking on the Whitefish Trail
A fat bike is essentially a mountain bike equipped with chunky double-width tires for riding on packed snow. The increasingly popular sport extends the biking season, opens up whole swatches of winter terrain to non-skiers and allows you to push your riding. Don't worry about wiping out – the snow will cushion your fall.

The 22-mile Whitefish Trail is one of the best places for snow biking in the state. The trailside Whitefish Bike Retreat, 9 miles west of Whitefish, offers fat bike rentals, groomed trail access and accommodations, plus lots of trail advice and occasional three-day fat biking clinics.

Montana's big sky will take your breath away
7. Ski the Going-to-the-Sun Road in Glacier National Park
Montana has an almost unlimited choice of Nordic trails across the state. West Yellowstone, Bozeman, Big Sky, Missoula, Red Lodge and Great Falls all offer Nordic ski centers with plentiful groomed trails. In Whitefish, try the Glacier Nordic Center or Big Mountain Nordic Trails, the latter best suited to more experienced skiers.

For something special, visit Glacier National Park in winter. Most park roads and accommodations close in winter, but you can ski or snowshoe from Lake McDonald Lodge near Apgar on the western side of the park, or along the Going-to-the-Sun Road from St Mary on the eastern side. Remote wilderness trails lead into the park from Polebridge ranger station and Marias Pass.", 
description: "Winter in Montana is a harsh but magical season. Here are the best things to do in Big Sky Country everything seems frozen.", 
date: "Dec 6, 2022", 
image: "https://i.imgur.com/IiMuA08.jpg", 
likes: 23, 
read_time: "6 min read", 
category_one: "ACTIVITIES", 
category_two: "SKIING", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

five_of_the_best_roadtrips_in_argentina = Blog.create!(title: "5 of the best road trips in Argentina", 
body: "With its vast open spaces, dramatic and diverse scenery and endless highways, Argentina is an ideal place for a road trip.

Hiring a car allows you to escape the crowds, explore at your own pace and visit remote areas that would otherwise be out of reach. Although Argentina’s main highways are generally paved, you can expect gravel and potholes on many minor roads, particularly in the south, though this just adds to the adventure. Roads off the beaten track are best tackled in spring or summer, avoiding the bitter cold and snows of the South American winter.

For Argentina's most rugged routes, you'll need a 4WD, but there are also plenty of laid-back day trips on sealed roads visiting historic sites, vineyards and viewpoints in some of the most scenic parts of the country.

Whether you’re looking for legendary routes such as the Pan-American Highway or little-known back roads through the wilds, Argentina has you covered. Here are five of our favorite road trips.

Scout new ways to explore the planet's wildest places with our weekly newsletter delivered to your inbox.

1. Ruta 40
Best route for epic adventure
Cabo Virgenes–La Quiaca; 5224km (3246 miles); allow 3–5 weeks

Argentina’s answer to Route 66, Ruta 40 is one of the world’s longest roads, stretching almost the entire length of Argentina. Also known as RN40, Ruta Nacional Cuarenta or simply La Cuarenta (“The Forty”), this epic highway starts in the far south in Cabo Virgenes, a windswept settlement on the Strait of Magellan, and finishes in the extreme northwest in the town of La Quiaca, which sits at a breathless 3442m (11,293ft) above sea level on the Bolivian border.

Between these two outposts, the highway traces the Andes, passing through 11 Argentinian provinces and scores of stunning landscapes, from vast canyons and rugged mountain passes to temperate rainforests and lush valleys cloaked in vineyards.

The quietest, and perhaps most atmospheric, section of the road runs from El Calafate, a touristy hub for outdoor activities on the edge of Parque Nacional Los Glaciares, to the city of Bariloche in the Argentinian Lake District. For most of this leg of the journey, you'll largely have the road to yourself, with snowy Andean peaks to the west and the seemingly endless Patagonian steppe to the east.

Planning tip: The route is best attempted by experienced motorists in the spring or summer. Ruta 40 is now mostly paved, but it's useful to have a 4WD, particularly if you plan to explore some of the gravel roads (known locally as ripio) that branch off into remote areas of Patagonia.

Empty road leading to Chalten, Patagonia
You'll have the roads to yourself on some stretches of the route © Dmitry Pichugin / 500px
2. The Pan-American Highway
Best long-distance road trip
Mendoza–Ushuaia; 3300km (2051 miles); allow 2–4 weeks

A network of interconnected routes snaking right down through the Americas from northern Alaska to Tierra del Fuego, the 3000km (19,000-mile) Pan-American Highway is, quite simply, the world’s most epic road trip. But there's no need to follow the entire route – the southernmost section in Argentina is a highly memorable drive that takes in many of the country’s highlights.

The route starts in Mendoza province, the heart of the country’s famed wine industry, before heading east to the bright lights of the capital, Buenos Aires. Beyond the sprawling suburbs, the highway continues south, skirting the fertile grasslands of the Pampas, tracing the Atlantic coast, and then arrowing through sparsely populated Patagonia.

When you reach the far south, cut into Chile and take a ferry across the Strait of Magellan (this short hop is one of just two stretches of the Pan-American Highway that cannot be driven, alongside the Darién Gap dividing Panama from Colombia). It’s then a relatively short drive to the city of Ushuaia, where ubiquitous signs let you know you’ve reached 'El Fin del Mundo' (The End of the World).

Planning tip: Although the Argentinian section of the Pan-American Highway can be driven year-round, the bitterly cold, snowy and windy winters in southern Patagonia and Tierra del Fuego mean a summer or spring journey is the best bet. It’s also important to make sure your car rental agreement and insurance allow you to cross into Chile (you may have to pay an extra fee for this).

A dusty car sits on an unpaved highway surrounded by the red sands of a desert landscape
Most roads in Argentina are paved, but a 4WD is recommended on some routes © Angelo D'Amico / Getty Images
3. Cuesta del Obispo route
Best for mountain views
Salta–Cachi; 160km (99 miles); allow 1–2 days

This drive from the charming city of Salta to the tranquil town of Cachi showcases the dramatic mountain landscapes of Argentina’s northwest. Heading southwest from Salta along RP33 – a largely paved provincial road – the route travels through the sunny Calchaquí Valley region, which is carpeted with high-altitude vineyards and dotted with clusters of attractive adobe houses.

The journey then continues over a precipitous mountain pass known as the Cuesta del Obispo (“Bishop’s Slope”), which features a dizzying series of switchback turns, before dropping into Parque Nacional Los Cardones, named for the tall cacti that stud this arid area.

Planning tip: Check the weather forecast before setting out along the Cuesta del Obispo route, as heavy rain can make it impassable. Although you can head back to Salta the same day, it’s well worth spending the night in beautiful Cachi, which is encircled by snowy peaks and set within striking distance of several wineries. Take time to relax and enjoy a few glasses of the region’s signature torrontés – an aromatic, peach-fragranced white wine – while soaking up the views.

A city lit up at night with car headlights making the roads glow
The city of Córdoba is the gateway to historical encounters in the surrounding province © roberto bowyer / Getty Images
4. Camino de la Historia
Best historic drive
Córdoba–Cerro Colorado; 170km (106 miles); allow 2–3 days

Often overlooked by travelers, Córdoba province provides some fascinating insights into the history of the indigenous peoples who originally inhabited this area, as well as the Spanish colonists who came later. Start in the city of Córdoba, founded in 1573 and known for its rich cultural scene.

The first section of the RN9 highway has been dubbed the Camino de la Historia ('Historical Route'), and it follows the colonial-era Camino Real del Perú (“Royal Road of Peru”), which once ran from Lima to Buenos Aires via the legendary silver mines of Potosí in present-day Bolivia.

On the way, you'll pass the evocative estancias (ranches) of Jesús María and Santa Catalina, which were built by Jesuit missionaries, who had a devastating impact on the area's indigenous inhabitants in the 17th and 18th centuries. Centered on striking whitewashed churches, the estancias – listed as Unesco World Heritage sites – offer museums and guided tours that lead visitors through this complicated period in Argentinian history.

At the end of the Camino de la Historia, you'll reach a collection of caves and mountain slopes covered with beautiful petroglyphs near the pretty village of Cerro Colorado. Created up to 1000 years ago, these ancient artworks depict humans and animals, scenes from everyday life, and abstract shapes and figures, providing a snapshot of a lost world.

People looking over the lakes of Nahuel Huapi National Park
The Ruta de los Siete Lagos takes in natural wonders such as Nahuel Huapi National Park © Tetyana Dotsenko / Shutterstock
5. Ruta de los Siete Lagos
Best scenic drive
San Martín de los Andes–Villa La Angostura; 110km (68 miles); allow 1–2 days

Gorgeous landscapes reminiscent of the Alps, numerous options for side trips, plenty of places to grab a bite to eat or stay the night – with perks like this, a leisurely drive along the Ruta de los Siete Lagos (“Seven Lakes Route”) is hard to beat.

Connecting the tourist hubs of San Martín de los Andes and Villa La Angostura, the drive follows Ruta 40 through two national parks – Lanín and Nahuel Huapi – taking in a particularly picturesque swathe of the Argentinian Lake District.

As you’d expect given the name, the highlights of the route are the seven eponymous lagos, which are lined with beaches, surrounded by dense forests and watched over by snowy mountains and volcanoes. All have crystal-clear waters that are ideal for swimming, kayaking or stand-up paddle boarding, though it may be hard to tear yourself away from the sublime views.

Planning tip: Snow can block off parts of the road in winter, so the Ruta de los Siete Lagos is best driven in the spring, summer or early fall.", 
description: "With its vast open spaces, dramatic scenery and endless highways, Argentina is an ideal place to hit the road. Here are our top routes for epic drives.", 
date: "Dec 4, 2022", 
image: "https://i.imgur.com/wcrhbZ8.jpg", 
likes: 65, 
read_time: "7 min read", 
category_one: "ROAD TRIPS", 
category_two: "DESTINATION PRACTICALITIES", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

the_eleven_best_places_to_visit_in_switzerland = Blog.create!(title: "The 11 best places to visit in Switzerland", 
body: "Nowhere is perfect, but, let’s face it, Switzerland gets pretty darned close.

The Alps ripple across 60% of the country, and the landscapes and towns look like they have been dreamed up by a particularly imaginative child. We’re talking glacier-capped peaks, crash-bang waterfalls, turreted castles of the fairy-tale kind and lakes in the most surreal shade of turquoise blue. Red trains curl up mountains to improbable heights, and clanging cowbells ring out across hilly meadows that you can skip down with Heidi-like glee.

Even the culture-filled cities have magnificent backdrops of vineyards, lakes or rivers, and the mountains are never more than a whisper away. As natural beauty goes, Switzerland is off the charts. It's also a joy to travel around, whether by train, bus or on a scenic road trip. Here are the best places to visit in Switzerland that will make your trip one to remember.

Get trusted guidance to the world's most breathtaking experiences delivered to your inbox weekly with our email newsletter.
1. Jungfrau region
Best place to experience the mountains

The idyllic Jungfrau region is the icing on the Alpine cake of Switzerland’s Bernese Oberland. Sky-high peaks, glaciers and thundering falls elicit gasps of wonder wherever you go. Grazing the 4000m (13,123ft) mark are Switzerland’s 'big three': Eiger (Ogre), Mönch (Monk) and Jungfrau (Virgin), enshrined in mountaineering legend.

Take a once-in-a-lifetime ride up to the everlasting snow at Europe’s highest train station, 3454m (11,332ft) Jungfraujoch. Hike, ski, sled and zip-line among mountains of myth in Grindelwald, enjoy waterfalls galore in Lauterbrunnen and tackle every kind of extreme sport imaginable in Interlaken (skydiving, ice climbing, glacial bungee jumping – you name it). The Jungfrau region is the great outdoors on a blockbuster scale.

Planning Tip: Rush this region and you’ll regret it. Allow a week or more to dive in deep.

A city old town with a turquoise river running through it
Bern and its historic Old Town are beautiful from all angles © BAHDANOVICH ALENA / Shutterstock
2. Bern
Best city for medieval flair

Bern often pops up in those I-can’t-believe-it’s-the-capital trivia questions, but frankly, Switzerland’s first city deserves more love. The cobbled, flag-bedecked medieval Old Town is a Unesco World Heritage treat, with 6km (3.7 miles) of covered arcades, cellar shops and bars, fantastical folk figures topping 16th-century fountains, and the eye-grabbing Zytglogge. Framed by wooded hills and split in two by the turquoise Aare River, this red-roofed city looks good from pretty much every angle. It’s pure storybook stuff for kids, too, with its giant who snacks on children (the Kindlifresserbrunnen) and resident bears.

Sight-wise, you’ll be drawn to big-hitters like the Einstein-Haus (where the genius developed his theory of relativity), the Kunsthaus (with its outstanding fine arts collection) and Renzo Piano’s wavy Zentrum Paul Klee (Bern’s answer to the Guggenheim). But in summer, the action’s on the water, with swimming, tubing, rafting and paddleboarding along the Aare River.

3. Lake Geneva
Best place for romance, vines and castles

In Switzerland’s western crook, crescent-shaped Lake Geneva (Lac Léman to Francophones) is a joy to behold, with its mountain backdrop, spirit-lifting views, vineyards and shoreline necklaced with handsome cities and castle-crowned towns.

Marked by its rainbow-kissed Jet d’Eau fountain and Mont Blanc peeping up on the horizon, Geneva wraps around the lake’s southern shore. The worldly city makes an excellent launchpad for exploring, with big-hitting museums and galleries to absorb, botanical gardens to stroll, lidos to swim at, Old Town cafes to hang out in and bright-yellow mouettes ferrying locals across the water – surely one of the world’s most scenic commutes.

Planning Tip: But don’t stop there. It’s a quick boat or train hop to Lausanne, which can culturally give Geneva a run for its money, especially with its Plateforme 10 arts district, the lovely terraced vineyards of Lavaux (a Unesco World Heritage site) and flower-draped Montreux, host to one of the world’s most famous jazz festivals, with the picture-perfect Château de Chillon right on its doorstep.

Man on a rock next to a lake with a reflection of Matterhorn at dawn in Switzerland
The Matterhorn is an icon of Switzerland © wilpunt / Getty Images
4. Zermatt
Best place for outdoor activities

No peak has more pulling power than the 4478m (14,692ft) Matterhorn, a terrific gnarled fang of rock that flings up above the seductive, timber chalet-filled Alpine resort of Zermatt. It's Switzerland’s mountain icon, so beloved by the nation that it inspired the pyramid shape of Toblerone chocolate.

Zermatt is more than a one-mountain wonder. Climbers have been rocking up here since the mid-19th-century, and it’s still a magnet for challenging summit ascents today. Otherwise, come to hike, ski and gaze over a sea of glaciers and 4000m (13,123ft) peaks at Matterhorn Glacier Paradise. 

5. Swiss National Park 
Best place for nature lovers

Switzerland has just one national park? Yes, we know it’s a shocker, but trust us, it’s a good one. Snuggled away in a remote corner of the country’s southeast on the border with Italy, the 172-sq-km (66-sq-mile) Swiss National Park is the Alps in overdrive: a nature-gone-wild spectacle of high moors, forests, wildflower-freckled pastures, waterfalls, jewel-colored lakes and mountains as high as the sky, where ibex, chamois, marmots, deer and golden eagles roam and fly free.

Planning Tip: Start off on the right foot with the inside scoop on walking trails and ranger-led guided hikes at the visitor center in Zernez.

A sunny day at Piazza Collegiate in Bellinzona, Switzerland
Get a taste of the good life in Switzerland's Bellinzona © Keitma / Shutterstock
6. Bellinzona
Best place for la dolce vita

With medieval castles rising high and the Alps rearing beyond, good-looking Bellinzona is a taste of the best of Italy's best food and culture in Switzerland. You’ll find a generous splash of Italian flair in its historic center, woven with flower-draped alleys, Renaissance churches and cafe-rimmed piazzas that brim with life, laughter, clinking glasses and the out-of-tune toll of countless campaniles. 

Planning Tip: Top of any wish list is seeing the castles, among them hilltop Castelgrande, which can be drawn out into a full day’s activity (bring water and comfortable shoes). 

7. Jura Mountains and Lac de Neuchâtel 
Best place for a remote road trip 

In the dark forested hills along the French-Swiss border, the Jura Mountains are a natural wonder. This peaceful region has a beauty all its own: meadows of green, ancient forests, rocky outcrops overlooking a trio of lakes against an Alpine backdrop and slow-paced villages and valleys little changed in centuries. 

Begin with a road trip. Kick off at the Jura Vaudois Nature Park for hikes with dress-circle views of Lake Geneva and Gruyère cheese tastings at rustic Alpine huts. Swing north to Lac de Joux, the watchmaking village of Le Sentier, and Vallorbe, honeycombed with Switzerland’s biggest (and most impressive) limestone caves.

Tag on a trip to Lac de Neuchâtel and you can bathe in the thermal waters of Yverdon-les-Bains, tiptoe off the map in the lushly rolling Val-de-Travers (birthplace of absinthe) and the crescent-moon canyon of Creux du Van. Cultured Neuchâtel is a fitting climax, with its fantasy of a lavishly turreted château.

Cow licks hiker on rural road in Appenzell, Switzerland
Roam far off the beaten track in northeastern Switzerland © Cavan Images / Getty Images
8. Appenzell and northeastern Switzerland
Best place for family adventures

Northeastern Switzerland might not have the in-your-face drama of higher realms of the Alps, but it nevertheless delights in its own serene, deeply rural way, with dairy country unraveling to meet the mountains and half-timbered, gaily muralled towns all fit for a postcard. This pocket-sized region is perfect for a family vacation with a hit of culture and gentle adventure.

Begin in St Gallen, with a spin round its World Heritage Stiftsbibliothek (Abbey Library), a literary marvel and a feast of rococo art and architecture. Move on to folksy, ridiculously pretty Appenzell, popping into the Schaukäserei to sample regional cheeses.

Muscling further south into the Alps, head on up to Säntis at 2501m (8205ft) for views embracing six countries and then go to Werdenberg, a tiny speck of a medieval hamlet, home to Switzerland’s oldest timber chalets.

Planning Tip: Close by is Vaduz, Liechtenstein’s princely, castle-topped capital on the banks of the Rhine.

9. Lake Lucerne
Best place for lakeside romance

Reclining on the shores of its glittering namesake lake, Lucerne is a walkable, medieval dream of a city that has a magic you can’t quite put your finger on. It will grab you when you are strolling along the promenade as the sun sets in a blaze of gold and pinks or as you cruise across its waters to mountains of myth: 2132m (6995ft) Mt Pilatus, where Wagner raved about the Alpine panorama and Queen Victoria trotted on horseback, and 1797m (5896ft) Rigi, with a light so sublime Turner painted it in three different moods.

The little city punches far above its weight culturally, with its iconic medieval Kapellbrücke bridge leaping across the Reuss River and the Jean Nouvel–designed KKL arts center and Sammlung Rosengart harboring a prized private collection of Picassos. Ambling past the belle époque hotels lining its shores, the same views that captivated Goethe, Queen Victoria and Wagner in the 19th century will hold you in their thrall.

Planning Tip: With more time on your hands, you can really get out on the lake. Cruise across fjord-like, mountain-rimmed Lake Uri for a taste of Switzerland’s geographical and spiritual heartland. Boats ply the glassy turquoise waters to Rütli, birthplace of the Swiss nation.

Woman sitting on a bench next to the Rhine River in Basel, Switzerland
Basel is one of Switzerland's most forward-thinking cities © Andrea Ambrosino / Getty Images
10. Basel
Best place for art lovers

Popularity wise, poor old Basel barely gets a look. But that’s a mistake. Straddling the Rhine, this city has everything going for it: world-class art in some of the country’s best galleries, a hot food scene, avant-garde buildings bearing the hallmark of Pritzker Prize–winning architects and an upbeat cafe culture.

Allow several days for a satisfying romp of the center, where must-sees include the Kunstmuseum and its fine arts collection, the Renzo Piano-designed Fondation Beyeler and the Frank Gehry-designed Vitra Design Museum.

Planning Tip: Basel endears itself most to those who look beyond the trophy sights, with sundown drinks by the river or a wild swim in the Rhine. Rent a Wickelfisch (a fish-shaped waterproof bag) at the tourist office, strip to your swimming suit and go with the flow, floating downstream past the city’s landmarks.

11. Zürich
Best place for urban culture

Regularly landing at the top in quality-of-living surveys, urban dynamo Zürich never seems to miss a beat: from cool waterside bars on the banks of the Limmat River to its alley-woven Old Town, where the twin-spired Romanesque Grossmünster shines with Augusto Giacometti’s rainbow of stained glass. Le Corbusier’s boldly colored architectural creations and the edgily post-industrial Züri-West neighborhood notch Zürich's culture cred up even further.

Planning Tip: In mid-August, Zürich throws one of Switzerland’s wildest parties: the techno-pumping Street Parade.", 
description: "Be enchanted by fairy-tale towns and reach dazzling Alpline heights, here are the best places to visit in Switzerland.", 
date: "Dec 1, 2022", 
image: "https://i.imgur.com/CsV0BJS.jpg", 
likes: 55, 
read_time: "8 min read", 
category_one: "TIPS AND ADVICE", 
category_two: "DESTINATION PRACTICALITIES", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

seven_day_journey_trans_bhutan_trail = Blog.create!(title: "7-day journey on the Trans Bhutan Trail", 
body: "Historically a pilgrimage route, the fully-restored Trans Bhutan Trail reopened to visitors in September 2022. Its 250 miles of scenic footpath will offer visitors a unique perspective of the Asian country and likely will become one of the world’s most iconic cross-country walks.

To do the trek, you have to hire a guide who will lead you along this spectacular trail. We asked guide Galey Tenzin to give us an idea of what you might experience over seven days on the Trans Bhutan Trail. 

best-in-travel-2023-bhutan-itinerary-intro.png
A tour guide for more than a decade and a German-language guide for more than five years, I have explored every corner of my country of Bhutan. I have been involved in the reopening of the Trans Bhutan Trail from the first discussion of the project through restoration of the trail up to the first traversal of its 250-mile (403km) length in almost 60 years. I must say it is truly one of the best trekking destinations ever, allowing one to refresh and reconnect with nature.

Snapshot-bit-2023-itinerary-bhutan.png
Why you should trek the Trans Bhutan Trail 
The Trans Bhutan Trail is an ancient route through the Himalayas that lets you follow in the footsteps of our ancestors. For hundreds of years, the trail was used by pilgrims, messengers, armies and traders – and until the 1960s, it was the only way to travel through and communicate with others across the country. After Bhutan initiated a process of planned development beginning in the 1960s, a national highway was constructed and the trail fell into disuse. Under the vision of the king of Bhutan, the Bhutan Canada Foundation together with the Tourism Council of Bhutan and other local partners are currently working to restore and reconnect this historic route. To mark the launch of the restored trail in September 2022, a national event had 24 scouts – one from each dzongkhag (district) and four from each thromde (city), representing the entire country – walk the length of the trail in a show of national unity. I led this scout walk for the full 250 miles, from Haa east to Trashigang. 

The trail offers exposure to unique culture, multiple dialects, different religious sites and varied flora, fauna and birds – as well as a range of campsites, farm houses, hotels and unique foods. Scenic views and conversations with local people make it even more pleasant and rejuvenating. One can hike through the trail at any time of the year, with each season offering a different experience. (Note that the trail sees snowfall during the winter months, and muddy, challenging conditions in the summer monsoon season.) Visitor-friendly, the trail can be hiked in different sections, with a clear end point for each. QR-coded signposts provide links to texts and comic book–style illustrations that explain the history of each area. 

A note: the itinerary outlined below should be relatively easy for those who do regular physical exercise (and no problem at all for trekkers), and moderately demanding for those who go for frequent casual walks. Consider your own physical fitness and health level: we do not recommend this itinerary if you have no experience hiking. All international hikers must be accompanied by a guide.

Day 1-bit-2023-itinerary-bhutan.png
 
Arrival in Paro 
International flights serve Paro from Kathmandu, Delhi, Guwahati, Bagdogra, Dhaka, Singapore and Bangkok. Before you even step foot in Bhutan you will see what a dramatic land this is from the windows of your dragon-emblazoned Druk Air plane. As you make your descent from over the Himalayas, you’ll enjoy one of the most scenic flights (and hair-raising landings!) you’ve ever experienced.

The airport is situated at an elevation of 7333ft (2235m) in a dramatic valley, and you will feel cool, clean fresh mountain air the minute you disembark from the aircraft. Your tour guide will greet you and drive you to your hotel. After a Bhutanese lunch, you’ll acclimatize to the altitude with an easy walk and tour of Paro. The National Museum once served as a watchtower (or ta dzong), originally built to defend the Rinpung Dzong during the inter-valley wars of the 17th century. A museum since 1967, it today holds a fascinating collection of art, relics, religious Thangka paintings and Bhutan’s exquisite postage stamps. Next, at the majestic Paro Dzong, you can light traditional butter lamps to bring success and safety on your journey to come. 

Admire the multi-colored wooden facades, small arched windows and sloping roofs of the typically Bhutanese architecture as your guide relates the story and importance of this dzong. (Some scenes from the 1993 internationally co-produced film Little Buddha were filmed here.) A short walk back toward Paro town takes you across a cantilever bridge that offers a splendid, photogenic evening view of the dzong and ta dzong. Then it’s back to your hotel for dinner.

Day 2-bit-2023-itinerary-bhutan.png
 
Hike from Tsendona to Damchona
10 miles (16 km); 7 hours; 2900ft (884m) elevation gain, 1047ft (319m) elevation loss

A 10-minute drive brings you to the beginning of your Trans Bhutan Trail hike. This part of the trail connects three villages: Tsendona, where the trail begins before gently rising through rice fields; Dopshari, where you will stop for lunch; and Damchona, where you will camp overnight. Along the trail, you can take in beautiful views of the Paro Valley and its sights, as well as Kungkarpo, a sacred site for “sky burial.” Keep an eye out for mountain bikers, as this section also serves as a cycling trail – and for planes, too, as they bank overhead alongside the mountain on their final descent into Paro.

Lunch will be set up at Tshering Farm House in Dopshari, where you’ll enjoy organic and traditional Bhutanese foods as well as a beautiful view of rice fields. After lunch, the trail climbs up slowly through the pine trees toward the campsite at Damchona, where apples rather than rice are the local crop, and locals rear cattle and horses. During monsoon season (June–August), count on meeting people foraging for wild chanterelle mushrooms. Upon your arrival at camp, you will be served a hot towel to clean up, followed by hot tea and dinner. When night falls and as the campfire crackles, your tour guide and trail ambassador will narrate the history of the trail.

Day 3-bit-2023-itinerary-bhutan.png
 
Hike from Damchona to Tsaluna
10.75 miles (17.25 km); 6 hours; 2526ft (770m) elevation gain, 2664ft (812m) elevation loss

After breakfast at camp, you’ll continue on the trail from Damchona to Tsaluna village. The trail’s rise is gradual and the path will be clear of debris thanks to the dozens of horses plying the route each day during trekking season. Tall trees and coniferous forests line the path until Jela Pass (11,575ft/3528m), where you can hoist lungdhar (prayer flags) while saying the prayer “Lha-geh lo” (“May the gods be victorious”). After Jela Pass, the trail drops gently through clusters of rhododendrons. After about 1.25 miles (2km), you will reach an open area that’s a good spot for a picnic, with views toward Pumola and other mountain ridges – and the next section of the trail. 

From there, you’ll walk through a settlement called Jadingkha, then through groves of beautiful pine and oak trees until Tsaluna. Along the trail you will hear the calls of such birds as the Himalayan monal, satyr tragopan, fire-tailed myzornis and hoopoe. (Expect a bit of mud, too, as cattle rearing is prevalent in this area.) You’ll be welcomed at your campsite, surrounded by pine trees, with warm evening tea and snacks. With locals, you can try your hand at archery (Bhutan’s national sport) in the ancient manner, using a bow made of bamboo. Your trail ambassador will join you for dinner, and provide a seal to authenticate your completion of this section of the trail. Then, next to the campfire, watch (or even help) the trekking cook prepare your Bhutanese dinner, which might include red rice, ema datsi (chili with cheese), suja (butter tea), momo (steamed dumplings), buckwheat noodles and other tasty dishes. 

Day 4-bit-2023-itinerary-bhutan.png
 
Hike from Tsaluna to “Buddha Point”
12.2 miles (19.65km); 9 hours; 3930ft (1198m) elevation gain, 4308ft (1313m) elevation loss

Wake up to the sounds of birds chirping in the pine trees. You’ll start your day with a warm bedside tea served by the trekking crew, before packing up and taking breakfast. From the campsite, the trail ascends gradually, then drops into a steep slope lined with dense oaks. There is hardly any view on this trail – only the sounds of streams and birds. After 3 or 4 hours of walking, you will reach Pumola, where you can rest and relax near a huge stupa. Next, you’ll ascend another steep slope for another 90 minutes up to the peak of Pumola, known locally as Thaptsakha and the highest point on the Trans Bhutan Trail. Along this section, amazing views of mountain ranges, monasteries and the Thimpu Valley will open up along a route that was onced used by messengers traveling between Paro and Thimpu. (Adventurous visitors can retrace that 29-mile/48km route via the Druk Path Trek.) You will have lunch at the peak of Pumola and also offer incense as a way to pay homage to our local deities.

After lunch, the trail descends through a magical landscape of open pastures where yaks graze; stop by a yak-herder’s camp to get a taste of nomadic life. As you get closer to the next section of the trail, you will get a closer view of Thimphu Valley and its famous Buddha statue. This section of the trail will end near this gigantic, 177ft(54m)-tall monument, and you won’t want to miss out on a photo opp in front of it. After so much walking, take a car to your hotel for a hot shower. Feel free to call it a night – or set out to explore small but lively Thimpu on foot.

Day 5-bit-2023-itinerary-bhutan.png
 
Hike from Dochula to Simtokha
9.3 miles (15km); 7 hours; 3235ft (986m) elevation gain, 1729ft (527m) elevation loss

After breakfast at your hotel, you’ll drive through from Thimphu to Punakha through the Dochula Pass – a must-visit stop for travelers. Here, colorful prayer flags line the road, with amazing, panoramic views of the snow-covered Himalayas forming a majestic backdrop against 108 chortens (Buddhist shines). After taking photos and hearing stories from your guide, you’ll get out your hiking gear and prepare for your last day on the Trans Bhutan Trail.

The first hour will take you through beautiful rhododendrons and huge hemlock trees, before you drop down through a pine forest and some settlements along the way. (During the growing season from May to July, you will see farmers working their organic fields.) You’ll enjoy lunch below Hongtsho, sampling apples from local orchards as dessert. As you wind your way on to Simtokha, you will cross the same river seven different times. At the end of the hike, a trail ambassador will be waiting for you with tea, snacks and a signature for your Trail Passport to certify your completion of this leg of the journey. After driving back to Paro, you’ll check in at Ughyen Farm House, where you can experience a hot-stone bath and enjoy scrumptious local Bhutanese food. A cultural program featuring mask dances, traditional folk dances and an archery demonstration concludes a full day.

Day 6-bit-2023-itinerary-bhutan.png
 
Tiger’s Nest hike
7.5 miles (12km); 7 hours; 2625ft (800m) elevation gain, 394ft (120m) elevation loss

No first-time trip to Bhutan would be complete without a visit to the Tiger’s Nest. Built on a cliff some 9840ft (3000m) above sea level, this extraordinary monastery is one of the most memorable holy sites in the world. Hikers can reach the site via a trail with a natural clay surface, one wide enough for people to walk comfortably. (Note that the trail can become dusty on dry days, and muddy and slippery on wet ones, especially on segments frequented by horses.)

After breakfast with suja (butter tea), you’ll head from the farm house to the Tiger’s Nest “base camp,” where you can use the facilities and buy walking sticks for your hike. (Horses and ponies are available for hire for those unable to hike.) After a 2-hour ascent, you can stop for a bit at the rest area, which has a cafeteria offering tea and food – as well as a view up to the monastery. From the cafeteria, a direct-ascent trail joins the main path after a few hundred meters, saving you backtracking. The main trail continues upward steadily, with a few shortcuts offering a (steep and often slippery) way to save some time; you’ll have excellent views of the monastery throughout.

The path then enters forest again until you reach the traverse trail, which will lead you on a gentle ascent. Along the way you will pass an area where bigger groups sometimes stop for lunch, and the temple at which the former Je Khenpo (head lama) of the Bhutanese Drukpa Kagyu school of Tibetan Buddhism was born. Finally, you will reach the viewpoint, where the majestic sight of Tiger’s Nest monastery will open just in front of you. Though most people stop here for photographs, the best photo spot is about 164ft (50m) farther down, beside a short prayer wheel.

Start descending by the steep concrete stairs down – very carefully, and holding on to the banister, as a misstep could be fatal. Even during the busiest part of the day from 10am to 1pm, when the stairs get jammed with tourists and Bhutanese pilgrims, remember to behave with respect since you are on sacred ground. After losing some 328ft (100m) of altitude, the stairway will lead into the gap between two cliffs below an impressive waterfall. After crossing the bridge, continue up the stairway to the right. This is the last 263ft (80m) of altitude gain before you reach your goal: the entrance to the monastery itself.

Please bear in mind that before you enter, your guide will need to clear you with the guards, and you’ll need to leave your belongings in the lockers; no phones or cameras are allowed inside. What is to be seen and experienced in the monastery is beyond the scope of this article, and we will happily leave the backstory to your competent guide. We will simply reveal that while you sweated and panted on your hike up, the Guru Padmasambhava, the saint who established this place in 8th century, was brought here on the back of a flying tigress who turned out to be his spiritual consort and wife in different form (hence “Tiger’s Nest”). After your temple visit, follow the same way back down. Your lunch will be served at the cafeteria against a view of the temple and amid the sound of birdsong.

After your hike, spend a few hours exploring Paro town and picking up some local products as gifts or souvenirs of Bhutan before heading to your hotel. Since this will be your last day in the country, you can have a relaxing massage and enjoy your night in comfort.

Day 7: Himalayan Departure 
Over breakfast, you’ll prepare to say goodbye to an amazing and extraordinary place. On the way to the airport, reflect on the warm-hearted people you’ve met and the lasting memories you’ve made – ones you’ll keep for a lifetime. The Bhutanese will look forward to seeing you again in this land of endless enchantments. Tashi delek!", 
description: "Destined to become one of the world’s most iconic cross-country walks, the Trans Bhutan Trail offers visitors a unique perspective of the country.", 
date: "Nov 15, 2022", 
image: "https://i.imgur.com/bKMkhXB.jpg", 
likes: 75, 
read_time: "13 min read", 
category_one: "BEST IN TRAVEL 2023", 
category_two: "HIKING", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

thailands_top_six_train_journeys = Blog.create!(title: "Thailand's top 6 train journeys", 
body: "It's been over a century since Thailand’s first train line – a scant 50 miles linking Bangkok and the former royal capital of Ayuthaya – was completed. Tracks have since been extended to most of the country, and while train travel has almost entirely been superseded by bus and air, scenic railway routes and sleeper trains remain one of the best ways to see the country.

Even the Thai government can see the potential in railways again. There’s talk of high-speed rail lines, and Bangkok’s shiny new Bang Sue Grand Station is (allegedly) Southeast Asia’s largest rail hub.

For now, Thailand’s rolling stock isn’t that advanced, but trains run by the State Railways of Thailand (SRT) are generally on time, comfortable and charming in a stuck-in-time type of way. 

If you’re not in a rush, trains also offer good legroom (particularly in sleeper cars); great Thai food (either from the dining car or from vendors selling snacks between stations); gorgeous views; antique train stations; and quirky experiences (such as the route that appears to crash into a fresh market). Here are the six best train journeys in Thailand.

Get trusted guidance to the world's most breathtaking experiences delivered to your inbox weekly with our email newsletter.
The Bangkok train arriving at the Samut Sakhon Railway Market 
For a truly novel experience, take the Bangkok train direct into Samut Sakhon Railway Market © paul sarawak / 500px
1. Mahachai Line
Start – Thonburi; End – Samut Songkhram; Distance – 50 miles/80km

One of the best train rides in Thailand is this short, workaday commuter line. It begins near Bangkok and famously terminates smack dab in the middle of a wet market. 

Start at Thonburi’s Wongwian Yai train station, just across the Chao Phraya River from Bangkok, where hourly trains go to Samut Sakhon (known by locals as Mahachai). From the window, you can peek into homes, temples and shops built just an arm’s length from the passing trains. Further on, palm trees, patchwork rice fields and marshes filled with giant elephant ear perennials and canna lilies line the route, punctuated by whistle-stop stations.

The farmland evaporates as you enter Samut Sakhon. After disembarking and walking through one of the most hectic fresh markets in the country, you’ll reach a harbor clogged with water hyacinths and wooden fishing boats. 

Take the ferry across to Baan Laem, where you'll board yet another train, this time for  Samut Songkhram. You’ll emerge directly into a hubbub of hectic market stalls. Between train arrivals and departures, these stalls are set up directly on the tracks and must be hurriedly cleared away when the train arrives. It’s a fantastic scene.

Crowd of people walking by rail track of old railroad bridge on river Kwai. Kanchanaburi, Thailand
Walking across the Death Railway Bridge near Kanchanaburi is a moving reminder of the horrors of war © Pavlo Vakhrushev / Getty Images
2. Death Railway
Start – Thonburi; End – Nam Tok; Distance – 258 miles/415km

Built during the WWII Japanese occupation of Thailand, the so-called Death Railway is Thailand’s most famous – and historic – train line. Construction began in October 1942, by Allied prisoners of war (POWs) and conscripted workers armed only with basic tools and dynamite. Well over 12,000 POWs and as many as 90,000 recruited and forced laborers died due to disease, poor hygiene, lack of medical equipment and brutal treatment by camp guards. The deadliest section of railway construction was an immense rock cutting dubbed “Hellfire Pass” because of the eerie glow of their torches, visible when working at night.

Given the rugged territory it passes through, this is undoubtedly the most scenic train trip in Thailand. A total of 688 bridges were built along the route; the bridge that spans the “River Kwai” near Kanchanaburi city (now referred to as the Death Railway Bridge) was, at the time, the only steel bridge built in Thailand.

The trains that run the Death Railway are 3rd-class, meaning they have no air-con and mostly wooden benches (sit on the left-hand side for the best views). It’s a tourist line today, so there are stops for short visits to historical sights and a cave.

Old train crossing Tha Chomphu Bridge in Lamphun Province. Old white bridge. Northern
Wake up to stunning countryside views on the sleeper train from Bangkok to Chiang Mai © Tanes Ngamsom / Getty Images
3. Sleeper Train to Chiang Mai
Start – Bangkok; End – Chiang Mai; Distance – 467 miles/751km

Thailand’s first long-distance train route, which links Bangkok and the northern city of Chiang Mai, is the classic Thai train journey. 

The route is a great chance to try one of Thailand’s sleeper trains. They depart Bangkok starting in the afternoon, which means the majority of the journey is at night. In the morning, you’ll wake up to beautiful glimpses of the northern Thai countryside. In particular, keep your eyes peeled as the train cuts through tunnels and the rugged forest of Doi Khun Tan National Park, just south of Chiang Mai (another fascinating sight is watching railway staff unfold and make the sleeper beds).

If you book a more expensive ticket, you’re likely to travel on one of the SRT’s shiny new trains. Likewise, purchase your tickets as far in advance as you can; this particular route is popular with tourists, especially backpackers.

Sunrise view over Hua Hin Beach in Thailand
Go to sleep on the train in Bangkok and wake up to the sunrise at Hua Hin on the Gulf of Thailand ©TONIMD / Getty Images
4. Beach Train
Start – Bangkok; End – Hua Hin; Distance – 131 miles/212km

This route skirts around the Gulf of Thailand, and although sea views are rare, in Phetchaburi and Prachuap Khiri Khan Provinces, there’s some beautiful scenery, including salt flats and seemingly never-ending coconut plantations. Your destination, Hua Hin, is Thailand’s original beach escape, with a history that dates back to the 19th century.

The highlight of the route is Hua Hin’s train station. Arguably the most beautiful train terminus in Thailand, this red-and-white icon was built in 1926 with a Victorian gingerbread design boasting lots of carved wood pillars and trim. Because Hua Hin owes its prosperity to the train, the station is a major source of pride, and you'll find imitations of its design all over town.

The inside second class sleeper cabin of Thai new express train with bedding
Bed linen is also provided in the second-class cabin on the overnight sleeper train to Nong Khai © Phoderstock/ Shutterstock
5. Night Train to Laos
Start – Bangkok; End – Thanaleng; Distance – 402 miles/648km

Departing from Bangkok in the afternoon, this lauded international route crosses the Mekong River into Laos and is a great opportunity to try out Thailand’s overnight sleeper trains. In the morning, with warm sunlight streaming into your bed, you’ll pass by the tiny villages and seemingly endless rice fields that make up Thailand’s rural northeast.

After a stop in Nong Khai, you’ll cross the so-called Friendship Bridge to Laos. The 15-minute ride drops you at Thanaleng (aka Dongphasay) station, meaning you’ll need to take a taxi or tuk-tuk the remaining 10 miles to the capital, Vientiane.

A high-speed train linking these two destinations is in the works, with its projected completion in 2028.

Eastern & Oriental Express luxury train stopping at Bangkok Railway Station 
Recall the golden era of train travel aboard the luxurious Eastern & Oriental Express © Jiradelta / Getty Images
6. Eastern & Oriental Express
Start – Bangkok; End – Singapore; Distance – 1100 miles/1800km

Finding the SRT dining car menu a bit lacking? Then consider a trip on the ultra-luxury Eastern & Oriental Express, a privately-operated train that links Bangkok and Singapore. Outfitted to recall the golden era of train travel, passengers on the three-night, four-day journey reside in sumptuous private cabins, although they may also find themselves spending much of their time in the Observation, Dining and Bar Cars. 

The journey is all-inclusive, and non-train activities include tours and excursions in Thailand and Malaysia. The E&O runs between Bangkok and Singapore twice a month.

Tips for buying train tickets in Thailand
You can buy train tickets online via the clunky SRT website, but if you’re in Bangkok, it’s much more efficient to head directly to Hualamphong Station and purchase tickets in person. 
Avoid touts in and around the station, who will try to redirect you to travel agencies.", 
description: "From commuter to long-haul, third-class seats to luxury cabins, wooden benches to sleepers, the following are some of the best train trips in Thailand.", 
date: "Nov 11, 2022", 
image: "https://i.imgur.com/3Ce0cgz.jpg", 
likes: 86, 
read_time: "6 min read", 
category_one: "TOURS", 
category_two: "ACTIVITIES", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

top_ten_things_to_know_before_jordan = Blog.create!(title: "Top 10 things to know before you travel to Jordan", 
body: "Asmall country that's big on hospitality, ancient history and culture – with numerous Unesco World Heritage sites – Jordan offers endless opportunities for adventure.

From afar, it’s often unfairly lumped in with regional conflict and, as such, overlooked by timid travelers. But in reality, it’s a welcoming and peaceful destination not to be missed. Don’t hesitate to book your trip, pack your bags and check out these things all first-time visitors should know before they travel to Jordan.

Make the most out of every adventure with help from our weekly newsletter delivered to your inbox.
People explore the ancient ruins of Petra, Jordan
Even before you leave Jordan, you'll be planning your next trip back © Justin Foulkes / Lonely Planet
Jordan is a safe place to visit
Despite being located in a region with a history of conflict, Jordan is the 'quiet house in the noisy neighborhood,' a friendly oasis that’s open and inviting to visitors. Hospitality reigns supreme, violent crime is extremely rare, and Gallup’s 2022 Law and Order Report ranks Jordan in the top 10 for countries where people feel safe walking alone at night. While you should take the usual precautions you would anywhere – purchase travel and health insurance, don’t carry large sums of cash, keep valuables locked in a safe – fear should not be a factor in planning a trip to Jordan.

Hospitality is a deeply rooted tradition
Don’t let the 'Jordanian frown' fool you. Although you may be met with furrowed brows and what appear to be unfriendly faces, you’ll quickly learn just beyond the tough exterior of a resting frown face typically lies a fun-loving attitude and a deeply rooted tradition of hospitality that can be traced back to Bedouin culture. It’s not uncommon to be invited for tea or even a meal by shopkeepers and strangers you meet. 'Ahlan wa sahlan' (welcome), locals will say. 'Where are you from? Welcome to Jordan.'

Tourist and local Bedouin guide sit on a rock in Wadi Rum, Jordan, contemplating the landscape from the mount Jebel Burdah
Follow the local lead when greeting people you meet in Jordan © Julien Garcia / Getty Images
When greeting someone, follow their lead
You’ll see people of the same gender greet each other with handshakes, hugs and even multiple air kisses beside each cheek. But if you put your hand out for a shake or lean in for a hug, you may be left hanging. Out of respect for their religion and spouse, some Muslims will not touch people of a different gender unless they are related by blood. Don’t take it personally; be prepared and open to learning the local traditions. When meeting someone, you can stand, say hello, smile and then let them take the lead. If they extend a hand or lean in for a hug, you can do the same. If they keep their hands at their sides or put their right hand over their heart rather than reaching out, that’s their way of acknowledging you.

It’s not always hot and sunny in Jordan
A common misconception about Jordan is that it’s always hot, dry and sunny. While that may be the case if you visit between May and September, Jordan does have a winter season. From November to February, the country receives a great deal of cold and cloudy days, rain and even snow, sleet and hail on occasion. Temperatures can hover in the single digits Celsius during the day and drop to freezing in the night (32ºF), so if you’re traveling from mid-October to mid-March, be sure to pack a waterproof jacket and warm layers and monitor the weather. Flash floods are extremely dangerous, and even Petra is known to close during inclement weather.

Bartender pours a glass of local Jordan River Shiraz with a view of Amman from Cantaloupe’s upper terrace
You can enjoy a glass of local wine in Jordan’s larger cities © Sunny Fitzgerald / Lonely Planet
Alcohol is legal, but heavily taxed
If you’re in search of sundowners, you can find alcohol at a number of restaurants, bars and, of course, liquor stores in the larger cities like Amman and Aqaba, as well as Christian towns such as Madaba and Fuheis (where you’ll find Carakale, Jordan’s first and only craft beer microbrewery). St George and Jordan River also produce their own wine in the country, but be prepared to pay a pretty penny for your libations – although legal, alcohol tends to carry hefty taxes.

Bear in mind that Muslim-owned properties and Islamic holidays may affect how readily alcohol is available. For example, it’s illegal to sell alcohol anywhere in the country during Ramadan (with the exception of some high-end hotels), and most camps in Wadi Rum don’t serve alcohol at all (but you can often bring your own). Call ahead to inquire on availability and any restrictions, and if you do drink, be mindful of your hosts and consume in moderation.

Dress respectfully
Jordan is a Muslim-majority country, but Christians, Jews and people of various beliefs also coexist peacefully here. There is no law requiring women to wear hijab, but there is an expectation to dress respectfully – it’s best to avoid low-cut and shoulder-baring tops, short skirts, and shorts. If you plan to visit a place of worship, both men and women must cover knees and shoulders, and women are typically expected to cover their hair, chest and neck. 

But covering up doesn’t mean dressing down: Jordanians are generally quite image-conscious and well-dressed. Some restaurants even enforce a sophisticated dress code, particularly in Amman. Keep that in mind when loading up your suitcase and feel free to flaunt your personal style (respectfully) if you’ll be spending time in the capital.


Smoking shisha and cigarettes is common
Alcohol may be in somewhat short supply, but there is argeeleh (shisha) aplenty. For better or worse, smoking shisha is a national pastime, and you’ll find argeeleh cafes across the country. Cigarette smoking is also widely accepted – in most restaurants, cafes, hotels, homes, shops, taxis and even some hair salons. Travelers who smoke will be in good company, but the smoking culture in Jordan can prove challenging for nonsmokers and those with health conditions. When booking rooms, tours, restaurants and transportation, ask whether non-smoking options are available.

Bring a reusable filtration water bottle
Tap water is not drinkable in Jordan, and environmental education and recycling facilities are scarce. Sadly, you will see plastics and other rubbish littering the otherwise lovely landscapes. Local businesses and organizations with an eco-aware approach and plastic-free policies like those of Feynan Ecolodge, the Jordan Trail and Eco Hikers are working to teach and inspire locals and visitors with their environmental initiatives. Travelers to Jordan can be part of the solution by supporting these eco-minded businesses and carrying their own reusable filtration water bottle (such as GRAYL) and reusable utensils.

Two people in traditional Jordanian dress look out over the heavily developed hillsides of Amman
Whether you’re in the capital or the desert, you’ll find places you want to explore © Image Courtesy of Jennifer Hayes / Getty Images
Jordan is proof that big things come in small packages
Jordan is smaller than Portugal or the US state of Maine, but within its borders you’ll find endless adventure possibilities, ancient history and culture, nature reserves, community-based immersive experiences (such as those provided by Baraka Destinations, Engaging Cultures and Experience Jordan) and five Unesco World Heritage Sites, including the architectural wonders of Petra and the expansive deserts and towering rocks of Wadi Rum.

If you’re eligible for a visa on arrival to Jordan, purchase the Jordan Pass to gain entrance to some of the best sites, castles and museums including Petra, Wadi Rum, the Temple of Hercules in Amman, the Roman ruins at Jerash and Ajloun Castle. Keep in mind that although Jordan is small in size, the terrain is varied, roads may be rough and traffic can delay your plans. Traveling to sites may take more time than you anticipate, so plan accordingly and try not to schedule every moment of your itinerary. Immerse yourself in the experiences and allow time for the unexpected. 

You’re going to fall in love with Jordan
Maybe it will be the moment you fall asleep under a blanket of stars or stand in awe of enormous ancient stones. Or perhaps it will hit you when you reach the peak of a mountain and take in the view, far away from the rush of the city. It might be the laughter and stories you share with your new Bedouin friends. Or the taste of tea brewed with sage and sugar over a campfire. It could be in the fresh mansaf (the Jordanian national dish of lamb, rice and yogurt sauce) made with love by your hosts and eaten with your hands. Or it could be when you hear the muezzin’s call to prayer while watching birds dive and swoop against a sunset sky.

There will be a moment – or more likely, many moments – when the magic of Jordan seeps into your soul. Jordan will welcome you, challenge you, and it may very well change you. And you’ll find yourself making plans for your next trip before you even finish your first.", 
description: "With top tips on safety and local etiquette, this guide can help you plan your trip to Jordan, whether you're a first-time visitor or returning for more.", 
date: "Nov 10, 2022", 
image: "https://i.imgur.com/ZwNJNEC.jpg", 
likes: 49, 
read_time: "7 min read", 
category_one: "DESTINATION PRACTICALITIES", 
category_two: "TIPS AND ADVICE", 
username: "Alex Van Vleet",
profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U042DH4D9UH-9e92754d578d-512",
user_id: alex.id)

puts "Done seeding blogs..."