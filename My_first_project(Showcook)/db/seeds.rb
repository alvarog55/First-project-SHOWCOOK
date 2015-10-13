# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Comment.destroy_all
# Video.destroy_all


puts "videos destroyed"

# users = User.create([
#   	{name: 'Ian',  email: 'ian@dischord.com', password: "caramelo99", password_confirmation: "caramelo99"},
#   	{name: 'Henry',  email: 'hank@sst.com', password: "1234ergsdf5", password_confirmation: "1234ergsdf5"},
#   	{name: 'Glenn', email: 'danzig@plan9.com', password: "123sfg45", password_confirmation: "123sfg45"},
#   	{name: 'H.R.', email: 'paul@reachoutinternational.com', password: "123454", password_confirmation: "123454"}
# ])

# videos = Video.create([
# 	{title: "Spaghetti a la 'carbonara'", recipe: "Pon abundante agua (aproximadamente 2 litros) a cocer en una cazuela grande. Cuando empiece a hervir (burbujear), echa una cucharadita de sal.
# ", link_url: "https://www.youtube.com/embed/3AAdKl1UYZs", user_id: "1", category_id: "3"},
# 	{title: "Macarrones a la 'bolognesa'", recipe: "Pon abundante agua (aproximadamente 2 litros) a cocer en una cazuela grande. Cuando empiece a hervir (burbujear), echa una cucharadita de sal.
# ", link_url: "https://www.youtube.com/embed/3AAdKl1UYZs", user_id: "2", category_id: "4"},
# 	{title: "Ravioli a la 'carbonara'", recipe: "Pon abundante agua (aproximadamente 2 litros) a cocer en una cazuela grande. Cuando empiece a hervir (burbujear), echa una cucharadita de sal.
# ", link_url: "https://www.youtube.com/embed/3AAdKl1UYZs", user_id: "3", category_id: "5"},
# 	{title: "Tortellini al 'pesto'", recipe: "Pon abundante agua (aproximadamente 2 litros) a cocer en una cazuela grande. Cuando empiece a hervir (burbujear), echa una cucharadita de sal.
# ", link_url: "https://www.youtube.com/embed/3AAdKl1UYZs", user_id: "4", category_id: "2"},

# ])

comments = Comment.create([
	{text_comment: "Cum ad instruendam rei militaris scientiam unus ex numero studiosorumeius accesserim eique destinato, quantum cura nostra valuit.",
		user_id: "1", video_id: "62"},
	{text_comment: "Cum ad instruendam rei militaris scientiam unus ex numero studiosorumeius accesserim eique destinato, quantum cura nostra valuit.",
		user_id: "2", video_id: "62"},
	{text_comment: "Cum ad instruendam rei militaris scientiam unus ex numero studiosorumeius accesserim eique destinato, quantum cura nostra valuit.",
		user_id: "1", video_id: "63"},
	{text_comment: "Cum ad instruendam rei militaris scientiam unus ex numero studiosorumeius accesserim eique destinato, quantum cura nostra valuit.",
		user_id: "3", video_id: "63"},
	{text_comment: "Me encanta este plato",
		user_id: "3", video_id: "64"},
	{text_comment: "Me encanta este plato",
		user_id: "4", video_id: "62"},
	{text_comment: "Me encanta este plato",
		user_id: "4", video_id: "63"},
	{text_comment: "Me encanta este plato",
		user_id: "3", video_id: "62"},
	{text_comment: "Me encanta este plato",
		user_id: "3", video_id: "63"},
	{text_comment: "Me encanta este plato",
		user_id: "4", video_id: "63"},
	{text_comment: "Me encanta este plato",
		user_id: "3", video_id: "65"},
	{text_comment: "Me encanta este plato",
		user_id: "1", video_id: "65"},
	])

# categories = Category.create([
# 	{title: "Chinese" , description: "Food has a special meaning to the Chinese people. The 'waste not, want not' ethos means that a surprising range and variety of plants and animals, and every part of a plant or animal is used. This has given rise to a remarkable diversity in regional cuisine, but to Westerners it can be overwhelming - surprising, fantastic, delicious, horrifying or disgusting - but above all, different."},
# 	{title: "Japanese", description: "Japanese cuisine (和食, washoku) offers an abundance of gastronomical delights with a boundless variety of regional and seasonal dishes as well as international cuisine. Restaurants range from mobile food stands to centuries old ryotei, atmospheric drinking places, seasonally erected terraces over rivers, cheap chain shops and unique theme restaurants about ninja and robots." },
# 	{title: "Italian", description: "Italian food is one of the most popular and widely adopted cuisines the world over. Italians believe in simplicity and respect for good produce, so some of the most beloved dishes of Italians comprise just a few simple ingredients" },
# 	{title: "Spanish", description: "The Spanish food tradition has varied ancestry, though most Spanish dishes have rather humble origins and are the result, over time, of ingredients put together by poor peasants, farmers or shepherd families; many times using leftovers, or at the very least products from their own farms and orchards." },
# 	{title: "Indian", description: "The traditional food of India has been widely appreciated for its fabulous use of herbs and spices. Indian cuisine is known for its large assortment of dishes. The cooking style varies from region to region and is largely divided into South Indian & North Indian cuisine. " },
# 	{title: "Thai", description: "Thai cooking places emphasis on lightly prepared dishes with strong aromatic components and a spicy edge. It is known for its complex interplay of at least three and up to four or five fundamental taste senses in each dish or the overall meal: sour, sweet, salty, bitter, and spicy. " },
# 	{title: "Turkish", description: "Turkish cuisine varies across the country. The cooking of Istanbul, Bursa, Izmir, and rest of the Aegean region inherits many elements of Ottoman court cuisine, with a lighter use of spices, a preference for rice over bulgur, koftes and a wider availability of vegetable stews (türlü), eggplant, stuffed dolmas and fish. The cuisine of the Black Sea Region uses fish extensively, especially the Black Sea anchovy (hamsi) and includes maize dishes. The cuisine of the southeast -Urfa, Gaziantep and Adana- is famous for its variety of kebabs, mezes and dough-based desserts such as baklava, şöbiyet, kadayıf and künefe." },
# 	{title: "Vegan", description: "A vegan diet is richly diverse and comprises all kinds of fruits, vegetables, nuts, grains, seeds, beans and pulses - all of which can be prepared in endless combinations that will ensure you're never bored. From curry to cake, pasties to pizzas, all your favourite things can be suitable for a vegan diet if they're made with plant-based ingredients. " },
# 	{title: "French", description: "French cuisine was codified in the 20th century by Auguste Escoffier to become the modern haute cuisine; Escoffier, however, left out much of the local culinary character to be found in the regions of France and was considered difficult to execute by home cooks. Gastro-tourism and the Guide Michelin helped to acquaint people with the rich bourgeois and peasant cuisine of the French countryside starting in the 20th century. Gascon cuisine has also had great influence over the cuisine in the southwest of France. Many dishes that were once regional have proliferated in variations across the country." }
# 	])
