puts "Seeding continents..."

africa = Continent.create!(name: "Africa")
antarctica = Continent.create!(name: "Antarctica")
asia = Continent.create!(name: "Asia")
europe = Continent.create!(name: "Europe")
north_america = Continent.create!(name: "North America")
oceania = Continent.create!(name: "Oceania")
south_america = Continent.create!(name: "South America")

puts "Done seeding continents..."

puts "Seeding countries..."

#Asia

afghanistan = Country.create!(name: "Afghanistan", continent_id: asia.id)
armenia = Country.create!(name: "Armenia", continent_id: asia.id)
azerbaijan = Country.create!(name: "Azerbaijan", continent_id: asia.id)
bahrain = Country.create!(name: "Bahrain", continent_id: asia.id)
bangladesh = Country.create!(name: "Bangladesh", continent_id: asia.id)
bhutan = Country.create!(name: "Bhutan", continent_id: asia.id)
brunei = Country.create!(name: "Brunei", continent_id: asia.id)
cambodia = Country.create!(name: "Cambodia", continent_id: asia.id)
china = Country.create!(name: "China", continent_id: asia.id)
cyprus = Country.create!(name: "Cyprus", continent_id: asia.id)
georgia = Country.create!(name: "Georgia", continent_id: asia.id)
india = Country.create!(name: "India", continent_id: asia.id)
indonesia = Country.create!(name: "Indonesia", continent_id: asia.id)
iran = Country.create!(name: "Iran", continent_id: asia.id)
iraq = Country.create!(name: "Iraq", continent_id: asia.id)
israel = Country.create!(name: "Israel", continent_id: asia.id)
japan = Country.create!(name: "Japan", continent_id: asia.id)
jordan = Country.create!(name: "Jordan", continent_id: asia.id)
kazakhstan = Country.create!(name: "Kazakhstan", continent_id: asia.id)
kuwait = Country.create!(name: "Kuwait", continent_id: asia.id)
kyrgyzstan = Country.create!(name: "Kyrgyzstan", continent_id: asia.id)
laos = Country.create!(name: "Laos", continent_id: asia.id)
lebanon = Country.create!(name: "Lebanon", continent_id: asia.id)
malaysia = Country.create!(name: "Malaysia", continent_id: asia.id)
maldives = Country.create!(name: "Maldives", continent_id: asia.id)
mongolia = Country.create!(name: "Mongolia", continent_id: asia.id)
myanmar = Country.create!(name: "Myanmar", continent_id: asia.id)
nepal = Country.create!(name: "Nepal", continent_id: asia.id)
north_korea = Country.create!(name: "North Korea", continent_id: asia.id)
oman = Country.create!(name: "Oman", continent_id: asia.id)
pakistan = Country.create!(name: "Pakistan", continent_id: asia.id)
palestine = Country.create!(name: "Palestine", continent_id: asia.id)
philippines = Country.create!(name: "Philippines", continent_id: asia.id)
qatar = Country.create!(name: "Qatar", continent_id: asia.id)
saudi_arabia = Country.create!(name: "Saudi Arabia", continent_id: asia.id)
singapore = Country.create!(name: "Singapore", continent_id: asia.id)
south_korea = Country.create!(name: "South Korea", continent_id: asia.id)
sri_lanka = Country.create!(name: "Sri Lanka", continent_id: asia.id)
syria = Country.create!(name: "Syria", continent_id: asia.id)
tajikistan = Country.create!(name: "Tajikistan", continent_id: asia.id)
thailand = Country.create!(name: "Thailand", continent_id: asia.id)
timor_leste = Country.create!(name: "Timor-Leste", continent_id: asia.id)
turkey = Country.create!(name: "Turkey", continent_id: asia.id)
turkmenistan = Country.create!(name: "Turkmenistan", continent_id: asia.id)
uae = Country.create!(name: "United Arab Emirates", continent_id: asia.id)
uzbekistan = Country.create!(name: "Uzbekistan", continent_id: asia.id)
vietnam = Country.create!(name: "Vietnam", continent_id: asia.id)
yemen = Country.create!(name: "Yemen", continent_id: asia.id)

#North America

antigua_barbuda = Country.create!(name: "Antigua and Barbuda", continent_id: north_america.id)
bahamas = Country.create!(name: "Bahamas", continent_id: north_america.id)
barbados = Country.create!(name: "Barbados", continent_id: north_america.id)
belize = Country.create!(name: "Belize", continent_id: north_america.id)
canada = Country.create!(name: "Canada", continent_id: north_america.id)
costa_rica = Country.create!(name: "Costa Rica", continent_id: north_america.id)
cuba = Country.create!(name: "Cuba", continent_id: north_america.id)
dominica = Country.create!(name: "Dominica", continent_id: north_america.id)
dominican_republic = Country.create!(name: "Dominican Republic", continent_id: north_america.id)
el_salvador = Country.create!(name: "El Salvador", continent_id: north_america.id)
grenada = Country.create!(name: "Grenada", continent_id: north_america.id)
guatemala = Country.create!(name: "Guatemala", continent_id: north_america.id)
haiti = Country.create!(name: "Haiti", continent_id: north_america.id)
honduras = Country.create!(name: "Honduras", continent_id: north_america.id)
jamaica = Country.create!(name: "Jamaica", continent_id: north_america.id)
mexico = Country.create!(name: "Mexico", continent_id: north_america.id)
nicaragua = Country.create!(name: "Nicaragua", continent_id: north_america.id)
panama = Country.create!(name: "Panama", continent_id: north_america.id)
saint_kitts_nevis = Country.create!(name: "Saint Kitts and Nevis", continent_id: north_america.id)
saint_lucia = Country.create!(name: "Saint Lucia", continent_id: north_america.id)
saint_vincent_grenadines = Country.create!(name: "Saint Vincent and the Grenadines", continent_id: north_america.id)
trinidad_tobago = Country.create!(name: "Trinidad and Tobago", continent_id: north_america.id)
usa = Country.create!(name: "United States of America", continent_id: north_america.id)

#South America

argentina = Country.create!(name: "Argentina", continent_id: south_america.id)
bolivia = Country.create!(name: "Bolivia", continent_id: south_america.id)
brazil = Country.create!(name: "Brazil", continent_id: south_america.id)
chile = Country.create!(name: "Chile", continent_id: south_america.id)
colombia = Country.create!(name: "Colombia", continent_id: south_america.id)
ecuador = Country.create!(name: "Ecuador", continent_id: south_america.id)
falkland_islands = Country.create!(name: "Falkland Islands", continent_id: south_america.id)
french_guiana = Country.create!(name: "French Guiana", continent_id: south_america.id)
guyana = Country.create!(name: "Guyana", continent_id: south_america.id)
paraguay = Country.create!(name: "Paraguay", continent_id: south_america.id)
peru = Country.create!(name: "Peru", continent_id: south_america.id)
suriname = Country.create!(name: "Suriname", continent_id: south_america.id)
uruguay = Country.create!(name: "Uruguay", continent_id: south_america.id)
venezuela = Country.create!(name: "Venezuela", continent_id: south_america.id)

#Europe

albania = Country.create!(name: "Albania", continent_id: europe.id)
andorra = Country.create!(name: "Andorra", continent_id: europe.id)
austria = Country.create!(name: "Austria", continent_id: europe.id)
belarus = Country.create!(name: "Belarus", continent_id: europe.id)
belgium = Country.create!(name: "Belgium", continent_id: europe.id)
bosnia_herzegovina = Country.create!(name: "Bosnia and Herzegovina", continent_id: europe.id)
bulgaria = Country.create!(name: "Bulgaria", continent_id: europe.id)
croatia = Country.create!(name: "Croatia", continent_id: europe.id)
czech_republic = Country.create!(name: "Czech Republic", continent_id: europe.id)
denmark = Country.create!(name: "Denmark", continent_id: europe.id)
estonia = Country.create!(name: "Estonia", continent_id: europe.id)
finland = Country.create!(name: "Finland", continent_id: europe.id)
france = Country.create!(name: "France", continent_id: europe.id)
germany = Country.create!(name: "Germany", continent_id: europe.id)
greece = Country.create!(name: "Greece", continent_id: europe.id)
holy_see = Country.create!(name: "Holy See", continent_id: europe.id)
hungary = Country.create!(name: "Hungary", continent_id: europe.id)
iceland = Country.create!(name: "Iceland", continent_id: europe.id)
ireland = Country.create!(name: "Ireland", continent_id: europe.id)
italy = Country.create!(name: "Italy", continent_id: europe.id)
latvia = Country.create!(name: "Latvia", continent_id: europe.id)
liechtenstein = Country.create!(name: "Liechtenstein", continent_id: europe.id)
lithuania = Country.create!(name: "Lithuania", continent_id: europe.id)
luxembourg = Country.create!(name: "Luxembourg", continent_id: europe.id)
malta = Country.create!(name: "Malta", continent_id: europe.id)
moldova = Country.create!(name: "Moldova", continent_id: europe.id)
monaco = Country.create!(name: "Monaco", continent_id: europe.id)
montenegro = Country.create!(name: "Montenegro", continent_id: europe.id)
netherlands = Country.create!(name: "Netherlands", continent_id: europe.id)
north_macedonia = Country.create!(name: "North Macedonia", continent_id: europe.id)
norway = Country.create!(name: "Norway", continent_id: europe.id)
poland = Country.create!(name: "Poland", continent_id: europe.id)
portugal = Country.create!(name: "Portugal", continent_id: europe.id)
romania = Country.create!(name: "Romania", continent_id: europe.id)
russia = Country.create!(name: "Russia", continent_id: europe.id)
san_marino = Country.create!(name: "San Marino", continent_id: europe.id)
serbia = Country.create!(name: "Serbia", continent_id: europe.id)
slovakia = Country.create!(name: "Slovakia", continent_id: europe.id)
slovenia = Country.create!(name: "Slovenia", continent_id: europe.id)
spain = Country.create!(name: "Spain", continent_id: europe.id)
sweden = Country.create!(name: "Sweden", continent_id: europe.id)
switzerland = Country.create!(name: "Switzerland", continent_id: europe.id)
ukraine = Country.create!(name: "Ukraine", continent_id: europe.id)
united_kingdom = Country.create!(name: "United Kingdom", continent_id: europe.id)

#Australia and Oceania

australia = Country.create!(name: "Australia", continent_id: oceania.id)
fiji = Country.create!(name: "Fiji", continent_id: oceania.id)
kiribati = Country.create!(name: "Kiribati", continent_id: oceania.id)
marshall_islands = Country.create!(name: "Marshall Islands", continent_id: oceania.id)
micronesia = Country.create!(name: "Micronesia", continent_id: oceania.id)
nauru = Country.create!(name: "Nauru", continent_id: oceania.id)
new_zealand = Country.create!(name: "New Zealand", continent_id: oceania.id)
palau = Country.create!(name: "Palau", continent_id: oceania.id)
papua_new_guinea = Country.create!(name: "Papua New Guinea", continent_id: oceania.id)
samoa = Country.create!(name: "Samoa", continent_id: oceania.id)
solomon_islands = Country.create!(name: "Solomon Islands", continent_id: oceania.id)
tonga = Country.create!(name: "Tonga", continent_id: oceania.id)
tuvalu = Country.create!(name: "Tuvalu", continent_id: oceania.id)
vanuatu = Country.create!(name: "Vanuatu", continent_id: oceania.id)

#Africa

algeria = Country.create!(name: "Algeria", continent_id: africa.id)
angola = Country.create!(name: "Angola", continent_id: africa.id)
benin = Country.create!(name: "Benin", continent_id: africa.id)
botswana = Country.create!(name: "Botswana", continent_id: africa.id)
burkina_faso = Country.create!(name: "Burkina Faso", continent_id: africa.id)
burundi = Country.create!(name: "Burundi", continent_id: africa.id)
cabo_verde = Country.create!(name: "Cabo Verde", continent_id: africa.id)
cameroon = Country.create!(name: "Cameroon", continent_id: africa.id)
central_africa_republic = Country.create!(name: "Central Africa Republic", continent_id: africa.id)
chad = Country.create!(name: "Chad", continent_id: africa.id)
comoros = Country.create!(name: "Comoros", continent_id: africa.id)
congo = Country.create!(name: "Congo", continent_id: africa.id)
cote_d_ivoire = Country.create!(name: " Côte d'Ivoire", continent_id: africa.id)
djibouti = Country.create!(name: "Djibouti", continent_id: africa.id)
dr_congo = Country.create!(name: "Democratic Republic of the Congo", continent_id: africa.id)
egypt = Country.create!(name: "Egypt", continent_id: africa.id)
equatorial_guinea = Country.create!(name: "Equatorial Guinea", continent_id: africa.id)
eritrea = Country.create!(name: "Eritrea", continent_id: africa.id)
eswatini = Country.create!(name: "Eswatini", continent_id: africa.id)
ethiopia = Country.create!(name: "Ethiopia", continent_id: africa.id)
gabon = Country.create!(name: "Gabon", continent_id: africa.id)
gambia = Country.create!(name: "Gambia", continent_id: africa.id)
ghana = Country.create!(name: "Ghana", continent_id: africa.id)
guinea = Country.create!(name: "Guinea", continent_id: africa.id)
guinea_bissau = Country.create!(name: "Guinea Bissau", continent_id: africa.id)
kenya = Country.create!(name: "Kenya", continent_id: africa.id)
lesotho = Country.create!(name: "Lesotho", continent_id: africa.id)
liberia = Country.create!(name: "Liberia", continent_id: africa.id)
libya = Country.create!(name: "Libya", continent_id: africa.id)
madagascar = Country.create!(name: "Madagascar", continent_id: africa.id)
malawi = Country.create!(name: "Malawi", continent_id: africa.id)
mali = Country.create!(name: "Mali", continent_id: africa.id)
mauritania = Country.create!(name: "Mauritania", continent_id: africa.id)
mauritius = Country.create!(name: "Mauritius", continent_id: africa.id)
morocco = Country.create!(name: "Morocco", continent_id: africa.id)
mozambique = Country.create!(name: "Mozambique", continent_id: africa.id)
namibia = Country.create!(name: "Namibia", continent_id: africa.id)
niger = Country.create!(name: "Niger", continent_id: africa.id)
nigeria = Country.create!(name: "Nigeria", continent_id: africa.id)
rwanda = Country.create!(name: "Rwanda", continent_id: africa.id)
sao_tome_principe = Country.create!(name: "Sao Tome and Principe", continent_id: africa.id)
senegal = Country.create!(name: "Senegal", continent_id: africa.id)
seychelles = Country.create!(name: "Seychelles", continent_id: africa.id)
sierra_leone = Country.create!(name: "Sierra Leone", continent_id: africa.id)
somalia = Country.create!(name: "Somalia", continent_id: africa.id)
south_africa = Country.create!(name: "South Africa", continent_id: africa.id)
south_sudan = Country.create!(name: "South Sudan", continent_id: africa.id)
sudan = Country.create!(name: "Sudan", continent_id: africa.id)
tanzania = Country.create!(name: "Tanzania", continent_id: africa.id)
togo = Country.create!(name: "Togo", continent_id: africa.id)
tunisia = Country.create!(name: "Tunisia", continent_id: africa.id)
uganda = Country.create!(name: "Uganda", continent_id: africa.id)
zambia = Country.create!(name: "Zambia", continent_id: africa.id)
zimbabwe = Country.create!(name: "Zimbabwe", continent_id: africa.id)

#Antarctica

antarctica = Country.create!(name: "Antarctica", continent_id: africa.id)

puts "Done seeding countries..."

puts "Seeding users..."

alex = User.create!(username: "alex", password: "123", image: "placeholder.png", admin: true)

puts "Done seeding users..."

puts "Seeding blogs..."

things_to_know_before_traveling_to_hawaii = Blog.create!(title: "12 Things to Know Before Traveling to Hawaii", 
body: "1. Decide the best time to go You can visit Hawaii anytime – the weather is agreeable year-round. It may be a bit rainier in winter and a bit hotter in summer, but there are no extremes because cooling trade winds blow throughout the year. Although winter (mid-December through mid-April) is the busiest tourist season, that has more to do with the climate elsewhere, as many tourists are snowbirds escaping cold weather back home. Crowds of families take summer vacations from June through August, and rooms are scarce and prices can spike around holidays, especially Thanksgiving, Christmas, New Year’s and spring break/Easter. For the budget-conscious, the slowest times are mid-September through mid-November and the weeks from just after Easter until Memorial Day at the end of May, and you’re more likely to find good deals then on accommodations and airfare. Surfers will find the largest waves in winter, while optimal windsurfing conditions are during summer. Whale-watching tours usually depart between January and March only. 2. You'll need to make some reservations in advance Although Hawaii’s hang-loose attitude extends to most facets of life – including making extensive plans in advance –  you might want to book ahead in a couple of instances. For top Honolulu restaurants popular with residents, reserve a table before you arrive in the islands. The free tickets for the boat to the USS Arizona Memorial at Pearl Harbor are scooped up quickly. Reserve online up to 60 days before your visit. 3. Respect Hawaiian culture Evolving from ancient Polynesian traditions, Hawaiian culture was attacked and suppressed in the two centuries after the arrival of British colonizer Captain Cook in 1778. But beginning with the Hawaiian Renaissance in the 1970s, a rebirth of Native Hawaiian cultural and artistic traditions has taken hold. Across the islands, both Hawaiian culture–focused charter schools and public schools' Hawaiian-language immersion programs are popular, and traditional arts are experiencing a revival. Ancient heiau (temples) and fishponds are being restored, native forests replanted and endangered birds bred and released back into the wild. Today Hawaiian culture is about much more than just melodic place names and luau shows. Being Hawaiian is an important part of the identity of the islands, reflected in ways both large and small, from the inclusion of Hawaiian words in everyday speech to the embrace of concepts of respect and inclusion. Although few island residents can agree on what shape the Hawaiian sovereignty movement should take, its grassroots political activism is increasingly part of the local dialogue. A female in silhouette as the sun sets over the beach holds up her hand in a hang loose sign or 'shaka' Don't be afraid to liberally wave the shaka © Adventuring MJ / Shutterstock Dos and don'ts in Hawaii Good manners in Hawaii revolve around respect and awareness. Do use aloha (hello/goodbye and the concept of love and fellowship) and mahalo (thank you). Liberally wave the shaka (Hawaii’s hand greeting sign). Do try to correctly pronounce Hawaiian place names and words. Even if you fail, the attempt is appreciated. If you aren’t sure how to say it, ask. Even long names aren’t that hard with a little practice. Don’t refer to Maui, Kauaʻi, Molokaʻi, Lanaʻi and Hawaiʻi (the Big Island) as 'outer islands' – it's Oʻahu-centric. They’re called 'Neighbor Islands.'
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
image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2021-10%2Fhonolulu-beach-GettyImages-482135181.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75", 
likes: 69, 
read_time: "7 min read", 
category_one: "DESTINATION PRACTICALITIES", 
category_two: "TIPS AND ADVICE", 
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
image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-12%2FItaly-Sicily-Taormina-Sun_Shine-shutterstock_1760426138-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75", 
likes: 34, 
read_time: "7 min read", 
category_one: "DESTINATION PRACTICALITIES", 
category_two: "ACTIVITIES", 
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
image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-01%2FIceland-Westfjord-Jan-Jerman-shutterstock_1879846174-RFC.jpg%3Fauto%3Dformat%26fm%3Davif&w=3840&q=75", 
likes: 78, 
read_time: "10 min read", 
category_one: "HIKING", 
category_two: "ACTIVITIES", 
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
image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-12%2FSwitzerland-iStock-627760498-RFC.jpeg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75", 
likes: 41, 
read_time: "5 min read", 
category_one: "DESTINATION PRACTICALITIES", 
category_two: "ACCESSIBLE TRAVEL", 
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
image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2021-12%2FGettyImages-936374092.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75", 
likes: 23, 
read_time: "6 min read", 
category_one: "ACTIVITIES", 
category_two: "SKIING", 
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
image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-11%2FArgentina-Mendoza-HolgerMette-GettyImages-608621278-RFE.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75", 
likes: 65, 
read_time: "7 min read", 
category_one: "ROAD TRIPS", 
category_two: "DESTINATION PRACTICALITIES", 
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
image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2022-08%2Fjungfrau-switzerland-GettyImages-140328606.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75", 
likes: 55, 
read_time: "8 min read", 
category_one: "TIPS AND ADVICE", 
category_two: "DESTINATION PRACTICALITIES", 
user_id: alex.id)

puts "Done seeding blogs..."

puts "Seeding forums..."

japan_forum = Forum.create!(country_name: "Japan", flag: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png", user_id: alex.id, country_id: japan.id)
thailand_forum = Forum.create!(country_name: "Thailand", flag: "https://cdn.britannica.com/38/4038-004-111388C2/Flag-Thailand.jpg", user_id: alex.id, country_id: thailand.id)

puts "Done seeding forums..."

puts "Seeding posts..."

Post.create!(title: "Transportation", 
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
forum_id: japan_forum.id)

Post.create!(title: "Best day trip from Tokyo on Jan 1st", 
body: "Hi everyone,
considering that it will be a festive day, what would you suggest to do as a day trip from Tokyo on January 1st?
Kamakura + Enoshima? Nikko? Should I expect big crowds? I was thinking about one of these two destinations but I really can't decide so any suggestion is more than welcomed!
Thank you!", 
date: "Dec 14, 2022", 
likes: 6, 
topic: "Japan",
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
forum_id: japan_forum.id)

Post.create!(title: "Patpong Market", 
body: "Does anyone have any idea if the Patpong night markets have reopened or will be reopening?
Pls advise
Thank you", 
date: "Dec 16, 2022", 
likes: 22, 
topic: "Bangkok",
forum_id: thailand_forum.id)

puts "Done seeding posts..."