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

things_to_know_before_traveling_to_hawaii = Blog.create!(title: "Things to Know Before Traveling to Hawaii", body: "1. Decide the best time to go
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

Box jellyfish are often seen seven to 10 days after a full moon, when they float into Hawaii’s shallow near-shore waters, such as those at Waikiki. When this happens, some public beaches may be closed for safety. The Waikiki Aquarium has a calendar that predicts the presence of box jellyfish.", description: "With top tips on planning, etiquette and health and safety, these are the key things to know before any vacation in Hawaii.", date: "Dec 12, 2022", image: "https://www.lonelyplanet.com/_next/image?url=https%3A%2F%2Flp-cms-production.imgix.net%2F2021-10%2Fhonolulu-beach-GettyImages-482135181.jpg%3Fauto%3Dformat%26fm%3Davif&w=1920&q=75", likes: 69, user_id: alex.id)

puts "Done seeding blogs..."
