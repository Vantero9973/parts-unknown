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
azerbaijan = Country.create!(name: "azerbaijan", continent_id: asia.id)
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
body: "1. Decide the best time to go
You can visit Hawaii anytime – the weather is agreeable year-round. It may be a bit rainier in winter and a bit hotter in summer, but there are no extremes because cooling trade winds blow throughout the year.
Although winter (mid-December through mid-April) is the busiest tourist season, that has more to do with the climate elsewhere, as many tourists are snowbirds escaping cold weather back home. Crowds of families take summer vacations from June through August, and rooms are scarce and prices can spike around holidays, especially Thanksgiving, Christmas, New Year’s and spring break/Easter.
For the budget-conscious, the slowest times are mid-September through mid-November and the weeks from just after Easter until Memorial Day at the end of May, and you’re more likely to find good deals then on accommodations and airfare. Surfers will find the largest waves in winter, while optimal windsurfing conditions are during summer. Whale-watching tours usually depart between January and March only. 
2. You'll need to make some reservations in advance
Although Hawaii’s hang-loose attitude extends to most facets of life – including making extensive plans in advance –  you might want to book ahead in a couple of instances. For top Honolulu restaurants popular with residents, reserve a table before you arrive in the islands. The free tickets for the boat to the USS Arizona Memorial at Pearl Harbor are scooped up quickly. Reserve online up to 60 days before your visit.
3. Respect Hawaiian culture
Evolving from ancient Polynesian traditions, Hawaiian culture was attacked and suppressed in the two centuries after the arrival of British colonizer Captain Cook in 1778. But beginning with the Hawaiian Renaissance in the 1970s, a rebirth of Native Hawaiian cultural and artistic traditions has taken hold.
Across the islands, both Hawaiian culture–focused charter schools and public schools' Hawaiian-language immersion programs are popular, and traditional arts are experiencing a revival. Ancient heiau (temples) and fishponds are being restored, native forests replanted and endangered birds bred and released back into the wild. 
Today Hawaiian culture is about much more than just melodic place names and luau shows. Being Hawaiian is an important part of the identity of the islands, reflected in ways both large and small, from the inclusion of Hawaiian words in everyday speech to the embrace of concepts of respect and inclusion. Although few island residents can agree on what shape the Hawaiian sovereignty movement should take, its grassroots political activism is increasingly part of the local dialogue.
A female in silhouette as the sun sets over the beach holds up her hand in a hang loose sign or 'shaka'
Don't be afraid to liberally wave the shaka © Adventuring MJ / Shutterstock
Dos and don'ts in Hawaii
Good manners in Hawaii revolve around respect and awareness.
Do use aloha (hello/goodbye and the concept of love and fellowship) and mahalo (thank you). Liberally wave the shaka (Hawaii’s hand greeting sign).
Do try to correctly pronounce Hawaiian place names and words. Even if you fail, the attempt is appreciated. If you aren’t sure how to say it, ask. Even long names aren’t that hard with a little practice.
Don’t refer to Maui, Kauaʻi, Molokaʻi, Lanaʻi and Hawaiʻi (the Big Island) as 'outer islands' – it's Oʻahu-centric. They’re called 'Neighbor Islands.'
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

unforgettable_hikes_around_the_world = Blog.create!(title: "10 places to escape the cold and find winter sun in Europe", 
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

puts "Done seeding blogs..."

puts "Seeding forums..."

japan_forum = Forum.create!(country_name: "Japan", flag: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png", user_id: alex.id, country_id: japan.id)

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

puts "Done seeding posts..."