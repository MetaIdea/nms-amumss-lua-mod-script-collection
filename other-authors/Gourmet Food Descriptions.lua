--These are constants and definitions used by the script. DO NOT CHANGE THESE!
LANGUAGES = { "English", "French", "Italian", "German", "Spanish", "Russian", "Polish", "Dutch", "Portuguese", "LatinAmericanSpanish", "BrazilianPortuguese", "SimplifiedChinese", "TraditionalChinese", "TencentChinese", "Korean", "Japanese", "USEnglish" }
SECTION_START = [[    <Property value="TkLocalisationEntry.xml">]]
function SECTION_ID(identifier)
    return table.concat({ [[      <Property name="Id" value="]], identifier, [[" />]] })
end
function SECTION_LANGUAGE(language)
    return table.concat({ [[      <Property name="]], language, [[" value="VariableSizeString.xml">]] })
end
EMPTY_LANGUAGE_SECTION = [[        <Property name="Value" value="" />]]
function SECTION_DESCRIPTION(description)
    return table.concat({ [[        <Property name="Value" value="]], description, [[" />]] })
end
CLOSE_LANGUAGE_SECTION = "      </Property>"
CLOSE_SECTION = "    </Property>"
function sanitizeText(text)
    cleanText = string.gsub(text, "<", "&lt;")
    cleanText = string.gsub(cleanText, ">", "&gt;")
    cleanText = string.gsub(cleanText, "\n", "&#xA;&#xA;")
    return cleanText
end
--End constants and definitions

--Translators: Change the language as appropriate. Also, change the LANGUAGE\NMS_LOC4_ENGLISH.MBIN to the correct one for your implementation.
MOD_LANGUAGE = "English"
--Subtitles: Acts as categories of food. Translators: You can adjust these subtitles and they will propagate in the build. Only change what's in the quotes.
SUBTITLE_COLLECTION = {
    GSUB_STELLAR_FOOD = "Stellar Food", --For Silicon Egg and food made from it.
    GSUB_ANOMALOUS_FOOD = "Anomalous Food", --For food gathered from Anomalous planets only and food made from it.
    GSUB_HORRENDOUS_FOOD_MIX = "Horrendous Food Mix", --Food made from Larval Cores, Hypnotic Eyes, or anything made from it that is not a final product.
    GSUB_HORRENDOUS_FOOD = "Horrendous Food", --Food made from Larval Cores, Hypnotic Eyes, or Horrendous Food Mixes
    GSUB_GLASS_FOOD = "Glass Food", --Food that qualifies as Horrendous and either Stellar or Anomalous
    GSUB_HARVESTED_PLANT = "Harvested Plant", --Plant products as they're taken in the wild
    GSUB_PROCESSED_PLANT = "Processed Plant", --Plants with minimal processing, such as Pilgrimberry from Star Bulb
    GSUB_MILK_PRODUCT = "Milk", --Harvested from creatures, main purpose is to be turned into creams
    GSUB_EGG_PRODUCT = "Egg", --Harvested from creatures, can be whipped into Delicate Meringue
    GSUB_HARVESTED_CREATURE = "Harvested Creature Product", --Harvested from creatures, not milk or egg
    GSUB_HARVESTED_MEAT = "Meat", --Gotten from killing creatures other than Mordite
    GSUB_EGG_DISH = "Egg Dish", --The focus is on eggs as the dish, such as omelettes
    GSUB_PROCESSED_INGREDIENT = "Processed Ingredient", --Items that have been processed at least once and are designed to make other foods
    GSUB_PROCESSED_BUTTER = "Processed Butter", --Made from cream and can be processed into oil
    GSUB_PROCESSED_CREAM = "Processed Cream", --Made from milk, can be processed into butter
    GSUB_PROCESSED_OIL = "Processed Oil", --Made from butters, required for doughnuts
    GSUB_PROCESSED_CHEESE = "Processed Cheese", --Made from cream and wild yeast
    GSUB_PROCESSED_DOUGH = "Processed Dough", --Flour mixed with items other than batters before becoming something more
    GSUB_DOUGHNUT = "Doughnut", --Dough, sugar, and oil
    GSUB_PROCESSED_JAM = "Processed Jam", --Food and sugar for preserving
    GSUB_PIE_FINAL = "Pie", --Pie case plus ingredients
    GSUB_MEAT_DISH = "Meat Dish", --Dishes that contain meat
    GSUB_VEGETABLE_DISH = "Vegetable Dish", --Dishes without meat focusing on veggies, might not be vegan
    GSUB_PROCESSED_JUICE = "Processed Juice", --Ingredients that are presented as liquids
    GSUB_PROCESSED_SAUCE = "Processed Sauce", --Ingredients presented as sauces
    GSUB_MIXED_CUSTARD = "Mixed Custard", --Made from eggs (usually), cream, and sugar
    GSUB_ICE_CREAM = "Frozen Treat", --Made with Frozen Tubers or Frost Crystals, along with custard and another ingredient
    GSUB_SWEET_BUTTER = "Sweet Butter", --Butter mixed with sugar or honey
    GSUB_CAKE_BATTER = "Processed Batter", --Various batters for cakes, made from flour and egg and either sweet butter or Delicate Meringue
    GSUB_REGULAR_CAKE = "Delicious Cake", --Cake made from Cake Batter (Churned Butter, no Sticky 'Honey')
    GSUB_PROTO_CAKE = "Curious Cake", --Cake made from Proto-Batter (Proto-Butter, no Sticky 'Honey')
    GSUB_STICKY_CAKE = "Honey Cake", --Cake make from Thick, Sweet Batter (Sticky 'Honey' is key ingredient)
    GSUB_FLUFFY_CAKE = "Sponge Cake", --Cake made from Extra-Fluffy Batter (Delicate Meringue is key ingredient)
}

--[[ The meat and potatoes of the work.
  Each of the following entries has 4 fields.
  The first field is an English readable name of the product. This is also used to generate ID tags for each individual description in the language file. Translators: DO NOT CHANGE THIS! This does not affect the name of the product!
  The second field is the internal ID of the product. Translators: DO NOT CHANGE THIS!
  The third field is the new subtitle fo the product. Translators: DO NOT CHANGE THIS! Edit the subtitles above instead.
  The fourth field is the new description for the product. Translators: Change this as desired. And have fun with it!
--]]
--[[ Formatting used
  <PET3>words<> are red, referring to meats.
  <PET5>words<> are orange, referring to animal products, like milk.
  <PET1>words<> are yellow, referring to base refined products like sugar and flour, only processed form one ingredient.
  <PET0>words<> are green, referring to plants.
  <PET2>words<> are blue, referring to processed items that make up the product, such as batters or stews.
  <PET4>words<> are purple, referring to something not normally food, like Chromatic Metal.
  Note that the angle brackets are sanitized before being inserted.
  If you want a new paragraph, use \n and it'll be sanitized to add a double space to make a clean paragraph break.
--]]
GOURMET_FOOD_TABLE = {
    --Stellar Food
    { "Silicon Egg", "FOOD_P_STELLAR", "GSUB_STELLAR_FOOD", "This is an egg made from processed <PET4>Chromatic Metal<>. Despite its origins, it has proteins and other nutrients that make it viable for use in recipes.\nYou wonder if it could ever hatch." },
    { "Stellar Custard", "FOOD_R_SCUSTARD", "GSUB_STELLAR_FOOD", "By mixing a <PET2>Silicon Egg<> with <PET2>Processed Sugar<> and <PET2>Cream<>, you gets a custard that tastes like the stars. It kind of twinkles like them too." },
    { "The Stellarator", "FOOD_DNUT_SCUST", "GSUB_STELLAR_FOOD", "This is a <PET2>Lumpen Doughnut<> topped with <PET2>Stellar Custard<>. The flavor sends your taste buds into orbit." },
    { "Stellar Custard Tart", "FOOD_PIE_SCUST", "GSUB_STELLAR_FOOD", "Bake <PET2>Stellar Custard<> into a <PET2>Pie Case<> and you have dish that shoots for the moon." },
    { "Stellar Ice Cream", "FOOD_ICE_STAR", "GSUB_STELLAR_FOOD", "Freezing <PET2>Stellar Custard<> gives you a dessert as cold as the vacuum of space and just as delicious." },
    { "Interstellar Fancy", "FOOD_CK_SCUST", "GSUB_STELLAR_FOOD", "Bake some <PET2>Cake Batter<> and cover it with <PET2>Stellar Custard<>. The taste is out of this world." },
    { "Interstellar Curiosity", "FOOD_CG_SCUST", "GSUB_STELLAR_FOOD", "Bake some <PET2>Proto-Batter<> and cover it with <PET2>Stellar Custard<>. It's like tasting a nebula before it becomes a star." },
    { "Starbirth Delight", "FOOD_CB_SCUST", "GSUB_STELLAR_FOOD", "Bake some <PET2>Thick, Sweet Batter<> and cover it with <PET2>Stellar Custard<>. It's a fusion of sweetness you can't begin to describe." },

    --Anomalous Food
    { "Hexaberry", "FOOD_P_GLITCH", "GSUB_ANOMALOUS_FOOD", "These odd berries are an interpretation of edible plants. It has 16 different flavors all at once. Processing it can stabilize the gustatory feedback." },
    { "Anomalous Tart", "FOOD_PIE_WEIRD", "GSUB_ANOMALOUS_FOOD", "This tart is small, but it can still serve 16 beings." },
    { "Perpetual Ice Cream", "FOOD_ICE_GLITCH", "GSUB_ANOMALOUS_FOOD", "The optimal serving temperature is 16 K." },
    { "Anomalous Jam", "FOOD_JAM_GLITCH", "GSUB_ANOMALOUS_FOOD", "<PET0>Hexaberries<> preserved with <PET1>Processed Sugar<>. Can be kept in storage for 16 months." },
    { "Anomalous Doughnut", "FOOD_DNUT_AJAM", "GSUB_ANOMALOUS_FOOD", "This is a <PET2>Lumpen Doughnut<> filled with <PET2>Anomalous Jam<>. You just can't stop eating these, and before you know it, you've eaten 16 of them." },
    { "Perpetual Cake", "FOOD_CK_JGLITCH", "GSUB_ANOMALOUS_FOOD", "Bake some <PET2>Cake Batter<>, fill it with <PET2>Anomalous Jam<>, then frost it with cream. Top it with 16 candles, make a wish, and blow them out." },
    { "Unsolvable Jam Turnover", "FOOD_CG_JGLITCH", "GSUB_ANOMALOUS_FOOD", "Bake some <PET2>Proto-Batter<>, fill it with <PET2>Anomalous Jam<>, then frost it with cream. You're not sure how to eat it, given it has 16 dimensions." },
    { "Perpetual Honeycake", "FOOD_CB_JGLITCH", "GSUB_ANOMALOUS_FOOD", "Bake some <PET2>Thick, Sweet Batter<>, fill it with <PET2>Anomalous Jam<>, then frost it with cream. It's very sticky, but you can eat it all in 16 bites." },
    { "Perpetual Jam Fluffer", "FOOD_MC_JGLITCH", "GSUB_ANOMALOUS_FOOD", "Bake some <PET2>Extra-Fluffy Batter<>, fill it with <PET2>Anomalous Jam<>, then frost it with cream. It always seems to take you 16 seconds to devour this." },
    { "Fiendish Roe", "FOOD_M_FIEND", "GSUB_ANOMALOUS_FOOD", "A collection of 16 eggs similar to fish eggs. They can be processed to make other foods." },
    { "Haunted Pie", "FOOD_PIE_FIEND", "GSUB_ANOMALOUS_FOOD", "Every time you eat this pie, you feel 16 eyes watching you." },

    --Horrendous Food Mix
    { "Horrifying Mush", "FOOD_R_EYEBALLS", "GSUB_HORRENDOUS_FOOD_MIX", "First, how desperate were you to consider eating a <PET4>Hypnotic Eye<>? Second, what possessed you to mash it up into this mess? Third, why does it look so... appetizing?" },
    { "Monstrous Custard", "FOOD_R_MCUSTARD", "GSUB_HORRENDOUS_FOOD_MIX", "<PET4>Larval Cores<> are simply the insides of eggs in a more solid form. So they can be mixed with <PET2>Processed Sugar<> and <PET2>Cream<> to make a custard!\nThat makes sense, right?" },
    { "Wailing Batter", "FOOD_R_MCAKEMIX", "GSUB_HORRENDOUS_FOOD_MIX", "<PET4>Larval Cores<> are egg-like. Add some <PET1>Refined Flour<> and some sweet butter, and you have a cake batter.\n    This shouldn't work." },
    { "Writhing, Roiling Batter", "FOOD_R_MMERMIX", "GSUB_HORRENDOUS_FOOD_MIX", "You've whipped a <PET4>Larval Core<> into a <PET2>Delicate Meringue<> and added <PET1>Refined Flour<>. The result is a light and fluffy cake batter and why in the name of the Atlas does it always seem to be moving?" },

    --Horrendous Food
    { "Whispering Omelette", "FOOD_EGGPIE_M", "GSUB_HORRENDOUS_FOOD", "You've cooked a <PET4>Larval Core<> with some cheese. You definitely get points for style, but the omelette says you should lose points for existing.\nWait, what?" },
    { "Parasitic Omelette", "FOOD_EGGPIE_GM", "GSUB_HORRENDOUS_FOOD", "You've cooked a <PET4>Larval Core<> with some <PET1>Proto-Cheese<>. You shouldn't eat this. It'll likely eat you back." },
    { "Monstrous Doughnut", "FOOD_DNUT_MCUST", "GSUB_HORRENDOUS_FOOD", "This is a <PET2>Lumpen Doughnut<> topped with <PET2>Monstrous Custard<>. They're so good its scary!" },
    { "The Spawning Tart", "FOOD_PIE_MCUST", "GSUB_HORRENDOUS_FOOD", "A <PET1>Pie Case<> filled with <PET2>Monstrous Custard<>. You only made one, right? Then where did that other one come from?" },
    { "Abyssal Stew", "FOOD_R_EYESTEW", "GSUB_HORRENDOUS_FOOD", "Food stewed with some horrible stuff. It is nutritious at least. If you close your eyes, maybe you can pretend it's something else. Never works, but you can try." },
    { "Iced Screams", "FOOD_R_EYEICE", "GSUB_HORRENDOUS_FOOD", "That's not a brain freeze. It's the suffering of the universe." },
    { "Deathly-Cold Ice Cream", "FOOD_ICE_FIEND", "GSUB_HORRENDOUS_FOOD", "<PET2>Monstrous Custard<> that's been churned and chilled. Is it afraid of you as much as you are afraid of it? No, it feels nothing. It's that cold." },
    { "Doomed Cream Cake", "FOOD_CM_CREAM", "GSUB_HORRENDOUS_FOOD", "Bake some <PET2>Wailing Batter<> then frost it with cream. It's simple, like a knife in the back." },
    { "Haunted Chocolate Dreams", "FOOD_CM_CHOC", "GSUB_HORRENDOUS_FOOD", "Mix some <PET1>Bittersweet Cocoa<> into some <PET2>Wailing Batter<>, set it to bake, take a nap, and wake up in a cold sweat. This cake will be waiting for you." },
    { "Wailing Caramel Cake", "FOOD_CM_CARM", "GSUB_HORRENDOUS_FOOD", "Bake some <PET2>Wailing Batter<> and top it with <PET1>Crunchy Caramel<> while it's still warm. The resulting glaze is oh so delicious and noisy. It won't stop crying. Please stop crying." },
    { "Apple Cake of Lost Souls", "FOOD_CM_APPLE", "GSUB_HORRENDOUS_FOOD", "This takes me back to my days in the war. The temperature was 380 K and the enemy didn't care if you burned alive from the heat or from their rifles. We lost many good beings. And for what? Mining rights? The planet was hollow. Too many lives lost for nothing. Nobody should have to live in those times." },
    { "Choking Monstrosity Cake", "FOOD_CM_CACTUS", "GSUB_HORRENDOUS_FOOD", "It looks delicious, but you're afraid if you eat it, you'll stop breathing." },
    { "Appalling Jam Sponge", "FOOD_CM_JAM", "GSUB_HORRENDOUS_FOOD", "There's just something about this cake that makes you feel horrible for eating it. Not because you're indulging on sweets, but because you've done something horrible." },
    { "Cake of Burning Dread", "FOOD_CM_JHOT", "GSUB_HORRENDOUS_FOOD", "You will be punished for eating this. There will be fire and pain, and it's not going to come from the <PET2>Ever-burning Jam<>." },
    { "Tortured Honey Cake", "FOOD_MM_HONEY", "GSUB_HORRENDOUS_FOOD", "It suffered as you baked it and it will suffer as you eat it. This is the price it pays for existing." },
    { "Itching, Creeping Honey Sponge", "FOOD_MM_BLOB", "GSUB_HORRENDOUS_FOOD", "It feels like it's moving after you've eaten it. It's just a trick of the mind though, right?\nRight?" },
    { "Unbound Cream Horn", "FOOD_MM_CREAM", "GSUB_HORRENDOUS_FOOD", "This soft, conical pastry is filled with cream. There's nothing wrong with that. Nothing at all. The walls aren't peeling back to show the madness behind reality." },
    { "Volatile Chocolate Fancy", "FOOD_MM_CHOC", "GSUB_HORRENDOUS_FOOD", "This fluffy, chocolate cake has trouble existing in such a limited frame of reality. It's not that it's changing, you're just seeing it from different angles." },
    { "Caramelised Nightmare", "FOOD_MM_CARM", "GSUB_HORRENDOUS_FOOD", "Take the worst dream you ever had. The one that made you fear the dark again. Add caramel. Bake.\nNever sleep again." },
    { "Cake of Sin", "FOOD_MM_APPLE", "GSUB_HORRENDOUS_FOOD", "You're supposed to feel bad for eating this. Honestly, between the fluffy cake and the warm, spiced filling, you can't figure out why." },
    { "Fluffy Throatripper", "FOOD_MM_CACTUS", "GSUB_HORRENDOUS_FOOD", "You've somehow made a cake too cute to eat and too scary to eat. Just make sure it's not sneaking up behind you." },
    { "Writhing Jam Puff", "FOOD_MM_JAM", "GSUB_HORRENDOUS_FOOD", "Maybe if you eat it in one bite, you can ignore the movement. And maybe it'll stop moving once you eat it. Somehow, that's worse." },
    { "Burning Jam Surprise", "FOOD_MM_JHOT", "GSUB_HORRENDOUS_FOOD", "It's sweet and spicy. It's a nice combination, but hardly a surprise.\nOh, you're on fire. That's the surprise." },
    { "Gooey Screamer", "FOOD_CM_BLOBBUT", "GSUB_HORRENDOUS_FOOD", "That fact that it's slimy and sticky is bad enough. Does it also have to scream every time you take a bite?" },
    { "Monstrous Honey Cake", "FOOD_CM_HONEY", "GSUB_HORRENDOUS_FOOD", "It's dangerously sweet. It feels like you'll have to fight it to eat it." },
    { "Cake of the Lost", "FOOD_MM_CUST", "GSUB_HORRENDOUS_FOOD", "Prayers are offered at monoliths for loved ones who never returned. This tastes like those prayers topped with custard." },
    { "Horrifying, Gooey Delight", "FOOD_CK_MCUST", "GSUB_HORRENDOUS_FOOD", "This tastes... good! Why does it taste so good? Is there something wrong with it? This can't be happening. It's not supposed to be this good!" },

    --Glass Food
    { "Cake of Glass", "FOOD_CM_JGLITCH", "GSUB_GLASS_FOOD", "<PET2>// 16 // 16 // 16 // 16 //<>" },
    { "Unbound Monstrosity", "FOOD_MM_JGLITCH", "GSUB_GLASS_FOOD", "<PET4>ERROR<>: Description not found.\n<PET3>WARNING<>: Consumption may have unknown side effects." },

    --Harvested Plant
    { "Impulse Beans", "FOOD_P_LUSHWILD", "GSUB_HARVESTED_PLANT", "The seeds from this leathery pod can be eaten. However, processing them would likely yield a more palatable product." },
    { "Fireberry", "FOOD_P_HOTWILD", "GSUB_HARVESTED_PLANT", "When most beings say something is hot, they mean spicy. Fireberries, however, can literally burst into flames. Careful processing is needed to properly eat them safely." },
    { "Frozen Tubers", "FOOD_P_COLDWILD", "GSUB_HARVESTED_PLANT", "These tubers are cold, hard, earthy, and a little sweet. You could eat them raw, but they could make for some excellent frozen desserts with the right custard." },
    { "Jade Peas", "FOOD_P_TOXWILD", "GSUB_HARVESTED_PLANT", "Though found in toxic environments, Jade Peas are not toxic themselves and are a viable food source. However, their bitter flavor can be better tolerated by processing them with other foods." },
    { "Grahberry", "FOOD_P_RADWILD", "GSUB_HARVESTED_PLANT", "Sweet with a hint of spice, the Grahberry uses the environmental radiation to grow rather than just ground nutrients. The Vy'keen alliance formally disavows any knowledge of its use in black market GrahGrah. Chefs in multiple star systems formally avow to its versatility and flavor!" },
    { "Aloe Flesh", "FOOD_P_DUSTWILD", "GSUB_HARVESTED_PLANT", "Aloe flesh has many uses for surviving in a desert. Skin protection, nutritious foods, and hydrating drinks can all be gained from a sample." },
    { "Heptaploid Wheat", "FOOD_P_ALL1", "GSUB_HARVESTED_PLANT", "This is a common grass found in many environments. Some creatures have the stomach and gut fauna to digest it, but for your tastes, it's better processed to be used in other recipes." },
    { "Sweetroot", "FOOD_P_ALL2", "GSUB_HARVESTED_PLANT", "A fruit that is so sweet that it's difficult to eat without further processing. It can also be processed in other recipes." },
    { "Pulpy Roots", "FOOD_P_ALL3", "GSUB_HARVESTED_PLANT", "These common roots are edible on their own or in stews with other vegetables. However, their juice has sweet and salty flavor that works better in other dishes." },

    --Processed Plant
    { "Pilgrimberry", "FOOD_P_LUSHFARM", "GSUB_PROCESSED_PLANT", "The <PET0>Star Bulb<> itself is a difficult item to handle. With careful processing, the sweet berries it grows can be harvested. Some beings pluck the berries from the bulb without damaging the plant itself, making a nutritious snack while walking the length of the planet." },
    { "Solartillo", "FOOD_P_HOTFARM", "GSUB_PROCESSED_PLANT", "<PET0>Solanium<> has small, oddly spiked berries that are usually blended into refined products. Processing it can harvest those berries for nutritional use." },
    { "Glass Grains", "FOOD_P_COLDFARM", "GSUB_PROCESSED_PLANT", "Processing <PET0>Frost Crystals<> peels away the chaff, revealing these delicate, mild grains. They're barely edible like this and should be further processed." },
    { "Non-Toxic Mushroom", "FOOD_P_TOXFARM", "GSUB_PROCESSED_PLANT", "<PET0>Fungal Moulds<> have a stem that is curiously devoid of known toxins. Indeed, they seem to be another variety of mushroom that can be processed into other recipes." },
    { "Sievert Beans", "FOOD_P_RADFARM", "GSUB_PROCESSED_PLANT", "<PET0>Gamma Roots<> can be processed to extract these beans, though there is no indication of them before processing. The beans have very little residual radiation and are perfectly safe to eat, though a little bland." },
    { "Cactus Nectar", "FOOD_P_DUSTFARM", "GSUB_PROCESSED_PLANT", "<PET0>Cactus Flesh<> can be squeezed in a processor to provide a sweet, surprisingly tasty fluid. While the sugars can be extracted, the nectar also has a variety of uses in recipes." },
    { "Marrow Flesh", "FOOD_P_CAVE", "GSUB_PROCESSED_PLANT", "This is the fleshy part of the Marrow Bulb. It's not very exciting. It can be processed to make other dishes." },
    { "Kelp Rice", "FOOD_P_WATER", "GSUB_PROCESSED_PLANT", "<PET4>Kelp Sacs<> can be processed to remove the chaff and make it into an ingredient for other dishes. Some beings swear they can live on this and this alone. They are not consulted for cooking advice." },
    { "Wild Yeast", "FOOD_P_POOP", "GSUB_PROCESSED_PLANT", "These fungal growths are encouraged by processing <PET4>Faecium<>. They can be processed with Refined Flour or some creams to make more advanced cooking products." },
    { "Meat Flakes", "FOOD_P_DEATH", "GSUB_PROCESSED_PLANT", "Processing <PET4>Mordite<> gives you these fleshy flakes. Though there's no palatable difference from other meats, you could never tell what creature this came from. That is, if it did come from a creature." },

    --Milk
    { "Fresh Milk", "FOOD_V_COW", "GSUB_MILK_PRODUCT", "This is the galactic standard for milk. It can be drunk or processed into a variety of foods." },
    { "Wild Milk", "FOOD_V_MILK", "GSUB_MILK_PRODUCT", "This milk has a bit of an earthy flavor to it. It can still be used and processed into foods like regular milk." },
    { "Craw Milk", "FOOD_V_FLYER", "GSUB_MILK_PRODUCT", "This milk is harvested from low-altitude flyers. They are incapable of reaching higher levels in the atmosphere, but those differences in habitat allow them to produce a rich, thin milk. Processing it can provide a basic ingredient for many recipes." },
    { "Warm Proto-Milk", "FOOD_V_GEK", "GSUB_MILK_PRODUCT", "This is almost, but not quite, milk. Indeed, it has many of the same properties, but it's missing some key nutrients that cause it to be used differently in recipes." },
    { "Bone Milk", "FOOD_R_BONEMILK", "GSUB_MILK_PRODUCT", "This is made by processing <PET5>Bone Nuggets<>. It's very similar to regular milk, nutritionally. The taste is a bit different though." },

    --Processed Creams
    { "Cream", "FOOD_R_CREAM", "GSUB_PROCESSED_CREAM", "This is the fatty part of <PET5>Fresh Milk<> or <PET5>Wild Milk<> separated from the rest of the liquid. It has a wide variety of uses, including desserts, sauces, and making butter and cheese." },
    { "Proto-Cream", "FOOD_R_GCREAM", "GSUB_PROCESSED_CREAM", "This is the fatty part of <PET5>Warm Proto-Milk<> or <PET5>Craw Milk<> separated from the rest of the liquid. The lack of key nutrients limits its uses, but those uses can still lead to amazing dishes." },
    { "Bone Cream", "FOOD_R_BCREAM", "GSUB_PROCESSED_CREAM", "<PET1>Bone Milk<> can be processed into cream like regular milk. The difference in flavor carries through." },

    --Processed Butter
    { "Churned Butter", "FOOD_R_BUTTER", "GSUB_PROCESSED_BUTTER", "Churned from <PET1>Cream<>. This can be melted for oil, sweetened for use in batters, or mixed with <PET2>Refined Flour<> to make pastry dough." },
    { "Proto-Butter", "FOOD_R_GBUTTER", "GSUB_PROCESSED_BUTTER", "Churned from <PET1>Proto-Cream<>. This can be melted for oil, sweetened for use in batters, or mixed with <PET2>Refined Flour<> to make pastry dough. However, its differences cause it to cook differently in some cases." },
    { "Bone Butter", "FOOD_R_BBUTTER", "GSUB_PROCESSED_BUTTER", "<PET1>Bone Cream<> can be churned into its own butter. In this state, it is no different from <PET2>Churned Butter<>." },

    --Processed Oil
    { "Clarified Oil", "FOOD_R_OIL", "GSUB_PROCESSED_OIL", "Not to be confused with hydrocarbon cracking, this is butter that has had the water and milk solids cooked off. Try cooking some <PET2>Dough<> mixed with <PET2>Processed Sugar<> to make some real treats." },
    { "Proto-Oil", "FOOD_R_GOIL", "GSUB_PROCESSED_OIL", "This is <PET1>Proto-Butter<> that has had the water and milk solids cooked off. Try cooking some <PET1>Dough<> mixed with <PET1>Processed Sugar<> to make a real treat." },

    --Processed Cheese
    { "Tangy Cheese", "FOOD_R_CHEESE", "GSUB_PROCESSED_CHEESE", "Made by letting <PET1>Cream<> sit with <PET1>Wild Yeast<>. There are so many things you can do with cheese. Omelettes, pies, and sauces are a good start." },
    { "Proto-Cheese", "FOOD_R_GCHEESE", "GSUB_PROCESSED_CHEESE", "Made by letting <PET1>Proto-Cream<> sit with <PET1>Wild Yeast<>. There are so many things you can do with cheese. Omelettes, pies, and sauces are a good start." },
    { "Bone Cheese", "FOOD_R_BCHEESE", "GSUB_PROCESSED_CHEESE", "Made by letting <PET1>Bone Cream<> sit with <PET1>Wild Yeast<>. There are so many things you can do with cheese. Omelettes, pies, and sauces are a good start." },

    --Egg
    { "Creature Egg", "FOOD_V_EGG", "GSUB_EGG_PRODUCT", "This is the galactic standard for eggs. It can be eaten or processed into a variety of foods." },
    { "Giant Egg", "FOOD_V_DIPLO", "GSUB_EGG_PRODUCT", "The name doesn't describe its size, though it is larger than most. It refers to the creatures that laid it. It's very useful for making various recipes." },
    { "Tall Eggs", "FOOD_V_STRIDER", "GSUB_EGG_PRODUCT", "These eggs have a notably tapered point that gives part of the eggs a conical appearance. It's still an egg and can be used just as well." },

    --Egg Dish
    { "Baked Eggs", "FOOD_R_EGGS", "GSUB_EGG_DISH", "Eggs that have been baked. Perfectly fine in a pinch, if just a bit boring." },
    { "Omelette", "FOOD_EGGPIE", "GSUB_EGG_DISH", "Eggs cooked and rolled with <PET2>Tangy Cheese<>. This is considered an entry level dish to master if you wish to be a chef in many kitchens." },
    { "Proto-Omelette", "FOOD_EGGPIE_G", "GSUB_EGG_DISH", "Eggs cooked and rolled with <PET2>Proto-Cheese<>. The different proteins causes this omelette to have a creamier mouth feel." },
    { "Scrambled Marrow", "FOOD_EGGPIE_B", "GSUB_EGG_DISH", "Eggs cooked with <PET2>Bone Cheese<>. The cheese gives it an almost earthy flavor." },
    { "Fungal Omelette", "FOOD_EGGPIE_MU", "GSUB_EGG_DISH", "Eggs, cheese, and <PET5>Foraged Mushrooms<> make a hearty breakfast before a long day of mining." },
    { "Delicate Meringue", "FOOD_R_MERINGUE", "GSUB_EGG_DISH", "Eggs whipped with <PET1>Processed Sugar<> until they are thickened to the point of holding their shape. When folded gently with more eggs and <PET2>Processed Sugar<>, you can make heavenly batters you've only dreamed of." },

    --Harvested Creature Product
    { "Sticky 'Honey'", "FOOD_V_BLOB", "GSUB_HARVESTED_CREATURE", "This is actually a precursor to the modern honey preferred by chefs. In this state it's perfectly fine and can be used in a number of recipes. It can be processed into a more modern type of honey." },
    { "Regis Grease", "FOOD_V_REX", "GSUB_HARVESTED_CREATURE", "Some creatures exude a greasy substance. It can be collected and eaten. Why you would want to do that is anyone's guess." },
    { "Leopard-Fruit", "FOOD_V_CAT", "GSUB_HARVESTED_CREATURE", "These growths can be pulled from some creatures without harm. Their carbohydrate structures are surprisingly more like some kind of fruit than any kind of meat. Just watch for stray fur." },
    { "Crab Apple", "FOOD_V_CRAB", "GSUB_HARVESTED_CREATURE", "Lightly sweet, a bit tart, and a hint of spice. These animal growths need processing with other foodstuffs to bring out the real flavor." },
    { "Bone Nuggets", "FOOD_V_BONE", "GSUB_HARVESTED_CREATURE", "These hard growths have a damp feel to them. They can be processed to extract the liquid from within." },
    { "Foraged Mushrooms", "FOOD_V_MOLE", "GSUB_HARVESTED_CREATURE", "Some creatures will leave these mushrooms behind at feeders. It's unknown it they're an offering of some sort or just dropped in favor of the pellets they eat." },
    { "Chewy Wires", "FOOD_V_ROBOT", "GSUB_HARVESTED_CREATURE", "This odd collection of wires pulses with a faint, almost organic energy. It seems to remember the whole from which it was parted...\nCan these even be cooked into anything?" },

    --Meat
    { "Salty Fingers", "FOOD_M_FISH", "GSUB_HARVESTED_MEAT", "This is meat taken from an aquatic creature. The salt content is oddly high as most organisms excrete excess salt. You'll want to process it into something more palatable." },
    { "Meaty Wings", "FOOD_M_FLYER", "GSUB_HARVESTED_MEAT", "Larger flyers have more muscle, not just by volume but in proportion to their wings as well. That makes these wings rather meaty. The name is very descriptive." },
    { "Offal Sac", "FOOD_M_BLOB", "GSUB_HARVESTED_MEAT", "The internal organs of some creatures are confusing. This is most of those organs in one sac. Convenient, but probably better processed." },
    { "Proto-Sausage", "FOOD_M_GEK", "GSUB_HARVESTED_MEAT", "The intestines of a hunted creature. Their shape does look like sausages, though you'll probably want to process them first." },
    { "Diplo Chunks", "FOOD_M_DIPLO", "GSUB_HARVESTED_MEAT", "Chunks of flesh taken from long necked creatures. They meat is well marbled and ready for processing." },
    { "Scaly Meat", "FOOD_M_REX", "GSUB_HARVESTED_MEAT", "Thought the creatures this flesh comes from are usually scaled, that is not how it gets its name. The meat itself has striations the give it a scaled appearance. It makes the meat rather easy to flake apart when processed." },
    { "Feline Liver", "FOOD_M_CAT", "GSUB_HARVESTED_MEAT", "Harvested from an apex predator. The liver is rich in nutrients and proteins." },
    { "Strider Sausage", "FOOD_M_STRIDER", "GSUB_HARVESTED_MEAT", "The diet of these creatures actually leaves traces in the intestines. Its almost as if the seasoning is already provided when processed." },
    { "Raw Steak", "FOOD_M_COW", "GSUB_HARVESTED_MEAT", "This is the galactic standard for meat. It can be eaten or processed into a variety of foods." },
    { "Leg Meat", "FOOD_M_CRAB", "GSUB_HARVESTED_MEAT", "This is not meat harvested specifically from the legs of creatures. This meat harvested from creatures that are mostly legs." },
    { "Meaty Chunks", "FOOD_M_MEAT", "GSUB_HARVESTED_MEAT", "Random bits of flesh from creatures. Good in soups, stews, and some other recipes as long as you don't ask where it came from." },
    { "Scooped Innards", "FOOD_M_MOLE", "GSUB_HARVESTED_MEAT", "This is pretty much what you have. Random organs just pulled out from a dead creature." },
    { "Crystal Flesh", "FOOD_M_BONE", "GSUB_HARVESTED_MEAT", "The muscle fibers in this flesh are patterned similar to crystal structures found in nature. This makes the flesh a little brittle." },
    { "Latticed Sinew", "FOOD_M_DRILL", "GSUB_HARVESTED_MEAT", "Muscle fibers criss-cross across the flesh. This makes it very tough and chewy." },
    { "Crunchy Wings", "FOOD_M_BEETLE", "GSUB_HARVESTED_MEAT", "These wings aren't as developed as more evolved flyers. Still, the protein structure can be used in cooking." },
    { "Lumpy Brainstem", "FOOD_M_BALL", "GSUB_HARVESTED_MEAT", "This is ripped from a barely evolved lifeform. This species has only begun to develop a neurosystem." },
    { "Dirty Meat", "FOOD_M_DIGGER", "GSUB_HARVESTED_MEAT", "This a terrible name for meat harvested from digging creatures. The meat itself is clean. The fact it tastes like dirt is merely a coincidence." },

    --Processed Ingredient
    { "Refined Flour", "FOOD_R_FLOUR", "GSUB_PROCESSED_INGREDIENT", "This is refined from some grasses, such as <PET0>Heptaploid Wheat<>, <PET0>Glass Grains<>, and <PET0>Kelp Rice<>. It is the basis for a wide variety of baked goods and a staple in every kitchen in the galaxy." },
    { "Processed Sugar", "FOOD_R_SUGAR", "GSUB_PROCESSED_INGREDIENT", "This is processed from some fruits, such as <PET0>Sweetroot<> or <PET0>Grahberry<>. The processing strips away flavor, leaving only the sweetener ready for jams, custards, and other cooking uses." },
    { "Synthetic Honey", "FOOD_R_HONEY", "GSUB_PROCESSED_INGREDIENT", "This is made from processed <PET5>Sticky 'Honey'<>. It removes a number of impurities and stabilizes it. It is used in recipes just a bit differently than what it's processed from." },
    { "Steamed Vegetables", "FOOD_R_VEG", "GSUB_PROCESSED_INGREDIENT", "Simple and nutritious, this dish can be made from simple ingredients like <PET0>Jade Peas<> or <PET0>Sievert Beans<>. It also serves as a base for various stews." },
    { "Processed Meat", "FOOD_R_MEAT", "GSUB_PROCESSED_INGREDIENT", "This is flesh that has been processed to be shelf stable and free from contaminants or parasites. It's used in a variety of stews. It can also be smoked with <PET4>Carbon<> to enhance its flavor." },
    { "Smoked Meat", "FOOD_R_SMOKED", "GSUB_PROCESSED_INGREDIENT", "Flesh smoked with <PET4>Carbon<>. This extends its shelf life and gets it a rich flavor. Many species have relied on this in their earlier stages of development and continue to enjoy it to this day. It can still be used in various soup and stews after smoking." },
    { "Crunchy Caramel", "FOOD_R_CARAMEL", "GSUB_PROCESSED_INGREDIENT", "Traditionally, this is made using <PET1>Processed Sugar<> and <PET4>Salt<>. Some adventurous Travellers have found that <PET1>Root Juice<> has just the right balance of sugar and salt to make this happen. Its sweet, lightly smoky flavor makes a nice snack, but can enhance a variety of desserts." },
    { "Bittersweet Cocoa", "FOOD_R_CHOC", "GSUB_PROCESSED_INGREDIENT", "Heavily processed <PET0>Impulse Beans<> gives rise to this much desired flavor. You'll want to cook it into something rather than eat it straight.\nSuperior compared to Semisweet Cocoa." },

    --Processed Jam
    { "Ever-Burning Jam", "FOOD_JAM_HOT", "GSUB_PROCESSED_JAM", "<PET0>Fireberries<> preserved with <PET1>Processed Sugar<>. This sweet and spicy jam is really good. Can also be used as improvised napalm in a pinch!" },
    { "Grahj'am", "FOOD_JAM_RAD", "GSUB_PROCESSED_JAM", "<PET0>Grahberries<> preserved with <PET1>Processed Sugar<>. A favorite of Vy'Keen spawn and elders alike." },
    { "Cactus Jelly", "FOOD_JAM_DUST", "GSUB_PROCESSED_JAM", "<PET2>Cactus Nectar<> preserved with <PET1>Processed Sugar<>. Has a delightfully earthy taste, though you could swear you feel prickles in your throat when you swallow it." },
    { "Furball Jelly", "FOOD_JAM_CAT", "GSUB_PROCESSED_JAM", "<PET5>Leopard-Fruit<> preserved with <PET1>Processed Sugar<>. Puts hair on your chest! Or in your stomach, you can never remember which. Either way, it's delicious." },
    { "Wriggling Jam", "FOOD_JAM_CRAB", "GSUB_PROCESSED_JAM", "<PET5>Crab Apple<> preserved with <PET1>Processed Sugar<>. This mellow, spiced jam helps you relax and think of simpler times. Then you realize those simpler times didn't have this jam. It's still good." },

    --Processed Dough
    { "Pastry", "FOOD_R_PASTRY", "GSUB_PROCESSED_DOUGH", "Flour and butter. Folded over and over. Bake it and so many options open up to you." },
    { "Dough", "FOOD_R_DOUGH", "GSUB_PROCESSED_DOUGH", "This is simply <PET1>Refined Flour<> mixed with <PET1>Wild Yeast<> and left to rise. You can bake it. You can also mix in some sugar and deep fry it, but who'd want to do that?" },
    { "Pie Case", "FOOD_R_PIECASE", "GSUB_PROCESSED_DOUGH", "When you form <PET2>Pastry<> into this and bake it, you suddenly have so many possibilities available to you. Just make sure your base has a window sill." },
    { "Bread", "FOOD_R_BREAD", "GSUB_PROCESSED_DOUGH", "This is bread. This has been a staple for civilizations since they started learning how to cook.\nWhat? Were you expecting more? Did you want to toast it and put jam on it? Maybe put meat and cheese in between it? Well there's only so much that reality can handle and you're asking too much." },

    --Doughnut
    { "Lumpen Doughnut", "FOOD_R_DONUT", "GSUB_DOUGHNUT", "This is <PET2>Dough<>, mixed with <PET1>Processed Sugar<>, then fried in <PET2>Clarified Oil<>. Can it get any better than this?\n...Actually it can. What can we combine this with?" },
    { "Proto-Beignet", "FOOD_R_GONUT", "GSUB_DOUGHNUT", "This is <PET2>Dough<>, mixed with <PET1>Processed Sugar<>, then fried in <PET2>Proto-Oil<>. This is a classic." },
    { "Custard Doughnut", "FOOD_DNUT_CUST", "GSUB_DOUGHNUT", "This is a <PET2>Lumpen Doughnut<> topped with either <PET2>Viscous Custard<> or <PET2>Very Thick Custard<>. You could eat these all day." },
    { "Salty Doughnut", "FOOD_DNUT_FCUST", "GSUB_DOUGHNUT", "This is a <PET2>Lumpen Doughnut<> topped with <PET2>Salty Custard<>. The sweetness and saltiness mix in a pleasant way." },
    { "Honey Doughnut", "FOOD_DNUT_HON", "GSUB_DOUGHNUT", "This is a <PET2>Lumpen Doughnut<> glazed with <PET1>Synthetic Honey<>. It amazes you how simple honey can make things better." },
    { "Honeybutter Doughnut", "FOOD_DNUT_HONB", "GSUB_DOUGHNUT", "This is a <PET2>Lumpen Doughnut<> brushed with sweet butter. How much more fat and sugar can you add to this?" },
    { "Gooey Proto-Doughnut", "FOOD_DNUT_BLOB", "GSUB_DOUGHNUT", "This is a <PET2>Lumpen Doughnut<> covered with <PET2>Gooey Proto-Butter<>. This is sticky, delicious, and very sticky." },
    { "Cocoa Doughnut", "FOOD_DNUT_CARM", "GSUB_DOUGHNUT", "You can hear about how delicious this is or you can eat it. Your call." },
    { "Proteinous Doughnut", "FOOD_DNUT_MEAT", "GSUB_DOUGHNUT", "This is a <PET2>Lumpen Doughnut<> stuffed with <PET1>Meaty Chunks<>. It's meat. In a doughnut. Truly a marvel of science." },
    { "Jam Doughnut", "FOOD_DNUT_JAM", "GSUB_DOUGHNUT", "This is a <PET2>Lumpen Doughnut<> filled with jam. It's two great sweets that taste sweet together!" },
    { "Wriggling Doughnut", "FOOD_DNUT_CJAM", "GSUB_DOUGHNUT", "This takes me back to the days I was patrolling around the Kilvashi VI Hub, on the lookout for pirates. My Vy'keen partner was the better pilot, but I had the better aim. 'Tween the two of us, we racked up enough counts to scare off the pirates for good. Haven't heard a peep from them since. Good times." },

    --Pie
    { "Mystery Meat Pie", "FOOD_PIE_MEAT", "GSUB_PIE_FINAL", "Take some meat, put it in a pie! Can't be beat, you're gonna taste why!" },
    { "Smokey Meat Pie", "FOOD_PIE_SMEAT", "GSUB_PIE_FINAL", "<PET2>Smoked Meat<> is usually tasty enough on its own. In pie form, it just gets that much better." },
    { "High-Fibre Pie", "FOOD_PIE_VEG", "GSUB_PIE_FINAL", "Vegetables cooked into a pie. Hearty and nutritious." },
    { "Fish Pie", "FOOD_PIE_VEG", "GSUB_PIE_FINAL", "A <PET2>Pie Case<> with no filling? Terrible. <PET3>Salty Fingers<>? Terrible. Put both of them together? A lot less terrible." },
    { "Chewy Organ Pie", "FOOD_PIE_ORGAN", "GSUB_PIE_FINAL", "Organs baked into a pie. It's tasty, but the texture needs a lot of work." },
    { "Proto-Sausage Pie", "FOOD_PIE_GEK", "GSUB_PIE_FINAL", "A delicious pie made from <PET3>Proto-Sausage<>. You wouldn't think sausage baked into a pie could be this tasty, but here we are." },
    { "Legs-in-Pastry", "FOOD_PIE_CRAB", "GSUB_PIE_FINAL", "Tender <PET3>Leg Meat<> baked into a pie. The taste is rich and soothing." },
    { "Fruity Pudding", "FOOD_PIE_BERRY", "GSUB_PIE_FINAL", "Pie filled with a thick fruit filling. You can eat out the fruity part then snack on the pie crust coated with the leftovers." },
    { "Glowing Pie", "FOOD_PIE_GLOW", "GSUB_PIE_FINAL", "Energetic plants usually emit light in darkened rooms. Whether this light is from radiation or chemical reactions is left to the eater to discover." },
    { "Fungal Tart", "FOOD_PIE_MUSH", "GSUB_PIE_FINAL", "Sauteed <PET0>Non-toxic Mushrooms<> make this dish taste amazing. Worth risking the poisonous atmosphere." },
    { "Jam Tart", "FOOD_PIE_JAM", "GSUB_PIE_FINAL", "Put jam in a pie? It works. It works really well. So well you may just have to make another." },
    { "Spikey Tart", "FOOD_PIE_CACTUS", "GSUB_PIE_FINAL", "Originating from desert planets, naturally. The pie is soothing. As in it helps your throat feel better. It's delicious, too." },
    { "Mushed Root Pie", "FOOD_PIE_ROOTS", "GSUB_PIE_FINAL", "<PET0>Sweetroot<> mellows out in the heat when baking. The resulting pie is sweet, but not much else." },
    { "Solidified Grease Pie", "FOOD_PIE_GREASE", "GSUB_PIE_FINAL", "Why? Why would you make this? Did this really seem like a good idea? Are you that desperate to eat it? Well, guess it's a thing to do." },
    { "Jellied Fur Tart", "FOOD_PIE_CAT", "GSUB_PIE_FINAL", "The taste makes you feel like you're on the hunt. Waiting for the chance to strike. And then... it's all over for your prey. And this tart." },
    { "Wriggling Tart", "FOOD_PIE_CRABJ", "GSUB_PIE_FINAL", "The warm spiced flavor of this tart takes me back to the stardock in the Perolis Major system. It was just labor, but our Gek Overseer made sure we were paid fair. When we weren't working or sleeping, we would play cards. Sometimes until the sun rose. Good times." },
    { "Cocoa Tart", "FOOD_PIE_CHOC", "GSUB_PIE_FINAL", "It's not bad. It definitely feels like the cocoa could be used in other recipes. Still, not gonna turn away chocolate!" },
    { "Caramel Tart", "FOOD_PIE_CARM", "GSUB_PIE_FINAL", "The sticky and sweet filling feels like it could glue your jaws together." },
    { "Creamy Treat", "FOOD_PIE_CREAM", "GSUB_PIE_FINAL", "A pie with whipped cream in it. Resist the urge to throw it." },
    { "Custard Tart", "FOOD_PIE_CUST", "GSUB_PIE_FINAL", "Rich, warm custard makes this pie something to indulge in every once in a while." },
    { "Baked Cheese Tart", "FOOD_PIE_CHEESE", "GSUB_PIE_FINAL", "Whoever had the bright idea of baking cheese into a pie was a genius!" },
    { "Cheesy Vegetable Tart", "FOOD_PIE_VCHEE", "GSUB_PIE_FINAL", "Healthier than a pie with just cheese. Not that you would do that." },
    { "The Toothbreaker", "FOOD_PIE_BONE", "GSUB_PIE_FINAL", "Humorously named, this meat pie feels like it has layers of flakiness from the top of the meat to the bottom of the crust." },
    { "Gristle Pie", "FOOD_PIE_DRILL", "GSUB_PIE_FINAL", "The taste is fine, but it requires a lot of chewing. Vy'keen will eat this as a form of jaw exercise." },
    { "Leathery Tart", "FOOD_PIE_BEET", "GSUB_PIE_FINAL", "The <PET3>Crunchy Wings<> soften some, but are rather difficult to chew. You may want to pass on this." },
    { "The Pie Of Knowledge", "FOOD_PIE_DIG", "GSUB_PIE_FINAL", "When you have <PET3>Dirty Meat<>, you sell it however you can. If you call it a Dirty Meat Pie, nobody will buy it. Call it The Pie of Knowledge, and even Korvax will be interested." },
    { "Gritty Meat Pie", "FOOD_PIE_BALL", "GSUB_PIE_FINAL", "<PET3>Lumpy Brainstems<> are not very well developed. This causes them to have a horrible mouthfeel when you bake then into a pie. It's like sand got mixed in." },
    { "Earthy Pie", "FOOD_PIE_MOLE", "GSUB_PIE_FINAL", "The <PET5>Foraged Mushrooms<> give this a heartier flavor than the <PET2>Fungal Tart<>. The mushrooms do need to be cooked more first." },

    --Processed Juice
    { "Root Juice", "FOOD_J_ALL3", "GSUB_PROCESSED_JUICE", "This juice has enough flavor to work with a variety of sauces. It can also be further reduced by itself until it caramelizes." },
    { "Pilgrim's Tonic", "FOOD_J_LUSH", "GSUB_PROCESSED_JUICE", "It's rumored that this drink helps wayward souls find monoliths to pray. While it doesn't provide navigational coordinates, its light flavor will hydrate you as you walk a planet's surface looking for monoliths." },
    { "Fire Water", "FOOD_J_HOT", "GSUB_PROCESSED_JUICE", "Squeezed <PET0>Fireberries<> let loose a juice that is less volatile than the berry itself. This makes it perfect for delicious sauces when combined with other vegetables. Still, handle with care." },
    { "Refreshing Drink", "FOOD_J_DUST", "GSUB_PROCESSED_JUICE", "Pressed <PET0>Aloe Flesh<> can be stored and bottled for later drinking. Or it can be used to sooth sunburns." },
    { "Salty Juice", "FOOD_J_SALT", "GSUB_PROCESSED_JUICE", "Whoever came up with this recipe had to have been experimenting. Slice up some <PET4>Cactus Flesh<>, add <PET4>Salt<>, and let soak in <PET2>Fire Water<> overnight. Strain the liquids and you have a pleasantly salty, thick drink." },

    --Processed Sauce
    { "Flavoursome Sauce", "FOOD_S_VEG", "GSUB_PROCESSED_SAUCE", "A delicate and robust vegetable-based sauce that pairs well with meat dishes or vegetables dishes." },
    { "Scorching Sauce", "FOOD_S_HOT", "GSUB_PROCESSED_SAUCE", "A spicy, thin sauce that wakes up the flavors in many meat or vegetable dishes." },
    { "Creamy Sauce", "FOOD_S_CREAM", "GSUB_PROCESSED_SAUCE", "A cream sauce that thickens meat and vegetable dishes, giving them a smoother flavor." },
    { "Partially-Liquid Cheese", "FOOD_S_CHEESE", "GSUB_PROCESSED_SAUCE", "It's melted cheese. What are you waiting for? Start pouring it on meat and vegetables!" },

    --Meat Dish
    { "Mystery Meat Stew", "FOOD_MEAT_STEW", "GSUB_MEAT_DISH", "Whatever meat went in here, it's going in your stomach. Could use a bit more flavor, though." },
    { "Stewed Organs", "FOOD_ORGAN_STEW", "GSUB_MEAT_DISH", "Organs that have been stewed together until they break down a bit, becoming much more palatable. Maybe some sauce would help the taste." },
    { "Tangy Organ Surprise", "FOOD_STEW_O_CH", "GSUB_MEAT_DISH", "It's been said that cheese makes everything better. This is culinary proof of that." },
    { "Cheese and Flesh Stew", "FOOD_STEW_M_CH", "GSUB_MEAT_DISH", "A cheesy stew with morsels of flesh cooked into it. Eaten by even the pickiest spawn!" },
    { "Creamed Organ Soup", "FOOD_STEW_O_CR", "GSUB_MEAT_DISH", "A thickened soup of diced organs. This is the kind of soup you make for family." },
    { "Thick Meat Stew", "FOOD_STEW_M_CR", "GSUB_MEAT_DISH", "This is the kind of stew you want while out walking a frozen planet. Hearty and rich." },
    { "Deviled Organs", "FOOD_STEW_O_HOT", "GSUB_MEAT_DISH", "Organs fried with <PET2>Scorching Sauce<> and left to simmer. The spicy result leaves you feeling warm through and through." },
    { "Spicy Fleshballs", "FOOD_STEW_M_HOT", "GSUB_MEAT_DISH", "A great snack for on-the-go. You can even put them on a stick for easier handling." },
    { "Flavoursome Organs", "FOOD_STEW_O_VEG", "GSUB_MEAT_DISH", "The vegetable sauce blends well with the organs. The combination of flavors makes this a favorite for most anyone." },
    { "Herb-Encrusted Flesh", "FOOD_STEW_M_VEG", "GSUB_MEAT_DISH", "The coating on the flesh gives you powerful flavor with every bite. This is something you sit and eat until the very end." },
    { "Crystalline Soup", "FOOD_STEW_BONE", "GSUB_MEAT_DISH", "The bits of meat in this soup have an odd crispness that you'd only expected on seared meat." },
    { "Well-Stirred Stew", "FOOD_STEW_DRILL", "GSUB_MEAT_DISH", "This is stew that has been cooked a long time to make sure the meat is tender enough to eat." },
    { "Gelatinous Goop", "FOOD_STEW_BEET", "GSUB_MEAT_DISH", "The <PET3>Crunchy Wings<> used to make this release a protein that thickens when heated. This leads to a mess that needs more cooking to break down." },
    { "Soiled Soup", "FOOD_STEW_DIG", "GSUB_MEAT_DISH", "It's never understood why beings name things like this. In any case, this soup is perfectly fine. It just needs a bit more flavor." },
    { "Chewy 'Dumpling' Stew", "FOOD_STEW_BALL", "GSUB_MEAT_DISH", "When properly cooked, <PET3>Lumpy Brainstems<> resemble dumplings. Biting into one quickly reveals it to not be a dumpling." },

    --Vegetable Dish
    { "Fibrous Stew", "FOOD_VEG_STEW", "GSUB_VEGETABLE_DISH", "A healthy stew made from cooking vegetables together. All it needs is some sauce to jazz it up." },
    { "Tangy Vegetable Stew", "FOOD_STEW_V_CH", "GSUB_VEGETABLE_DISH", "Spawn giving you trouble about eating their <PET2>Fibrous Stew<>? They don't care if it's good for them? Add cheese! Watch them eat it up." },
    { "Cream of Vegetable Soup", "FOOD_STEW_V_CR", "GSUB_VEGETABLE_DISH", "This is the kind of soup you want after coming back in from walking a frozen planet. Mild and rich." },
    { "Fiery Vegetable Stew", "FOOD_STEW_V_HOT", "GSUB_VEGETABLE_DISH", "The heat from this vegetable stew is complemented very well with some <PET2>Salty Juice<>." },
    { "Delicious Vegetable Stew", "FOOD_STEW_V_VEG", "GSUB_VEGETABLE_DISH", "Every Gek has their own variation on this. The core idea is vegetables and more vegetables, served with a sauce made of vegetables.\nDon't ask for the recipe. It's considered rude." },

    --Mixed Custard
    { "Viscous Custard", "FOOD_R_CUSTARD", "GSUB_MIXED_CUSTARD", "Made by combining eggs with <PET1>Processed Sugar<> and <PET1>Cream<>. While it is good on its own and as filling for some cakes, it really shines when chilled and frozen!" },
    { "Salty Custard", "FOOD_R_FCUSTARD", "GSUB_MIXED_CUSTARD", "The use of <PET4>Salt<> in place of the eggs and mixed with <PET1>Processed Sugar<> and <PET1>Cream<> makes a very different custard. It has a good variety of uses." },
    { "Very Thick Custard", "FOOD_R_BCUSTARD", "GSUB_MIXED_CUSTARD", "This is made with <PET1>Bone Cream<>, <PET1>Processed Sugar<>, and <PET5>Creature Eggs<>. <PET5>Giant Eggs<> and <PET5>Tall Eggs<> seem to not react well when making this. While it can be used in place of <PET2>Viscous Custard<> in many dishes, it really shines when churned and chilled on its own!" },

    --Ice Cream
    { "Ice Cream", "FOOD_ICE", "GSUB_ICE_CREAM", "A classic frozen treat. Believe it or not, it's most popular on swampy planets rather than hot or desert ones." },
    { "Briney Rime", "FOOD_ICE_FISH", "GSUB_ICE_CREAM", "The sweet and salty flavors brought by the <PET2>Salty Custard<> make this a favorite on aquatic planets." },
    { "Chocolate Ice Cream", "FOOD_ICE_CHOC", "GSUB_ICE_CREAM", "Chocolate Ice Cream is enjoyed all over the galaxy, but surprisingly it's not the most popular flavor!" },
    { "Caramel Ice Cream", "FOOD_ICE_CARM", "GSUB_ICE_CREAM", "The salty and smoky taste brought by the <PET2>Crunchy Caramel<> really blends well with this ice cream." },
    { "Fruity Ice Cream", "FOOD_ICE_FRUIT", "GSUB_ICE_CREAM", "The swirls of fruit blended through the ice cream give variations of flavor in each bite." },
    { "Apple Ice Cream", "FOOD_ICE_APPLE", "GSUB_ICE_CREAM", "The mellow, spiced flavor of this ice cream reminds me of that Geologist Entity. He was studying different ice samples around the frozen planet of Jumike S8/R. The electrical storms were quite a threat to him, though. I was hired to go out and fetch samples. You'd think that ice and ice don't have differences, but he apparently made great progress in his studies. Good times." },
    { "Honey Ice Cream", "FOOD_ICE_HONEY", "GSUB_ICE_CREAM", "Honey in ice cream is a great idea. Each bite is vividly sweet without being saccharine." },
    { "Vy'ice Cream", "FOOD_ICE_GRAH", "GSUB_ICE_CREAM", "<PET0>Grahberries<> in ice cream is a recipe for victory, interloper!" },
    { "Spiced Ice", "FOOD_ICE_HOT", "GSUB_ICE_CREAM", "The heat of the <PET0>Fireberry<> is subdued some and the sweetness of it comes out in full in this blend." },
    { "Icey Marrow", "FOOD_ICE_BONE", "GSUB_ICE_CREAM", "The flavor of this ice cream makes you think of creatures cracking bones to get at the nutrient rich insides. But colder." },

    --Sweet Butter
    { "Sweetened Butter", "FOOD_R_SWEETBUT", "GSUB_SWEET_BUTTER", "By combining <PET1>Processed Sugar<> with either <PET1>Churned Butter<> or <PET1>Bone Butter<>, you get a butter ready to be mixed in with <PET1>Refined Flour<> and eggs. The resulting cake batter will give you a taste of heaven." },
    { "Sweetened Proto-Butter", "FOOD_R_SWEETGEK", "GSUB_SWEET_BUTTER", "By combining <PET1>Processed Sugar<> with <PET1>Proto-Butter<>, you get a butter ready to be mixed in with <PET1>Refined Flour<> and eggs. The resulting cake batter will give you a taste of the ancients' visions of heaven." },
    { "Honey Butter", "FOOD_R_HONEYBUT", "GSUB_SWEET_BUTTER", "By combining <PET1>Synthetic Honey<> with either <PET1>Churned Butter<> or <PET1>Bone Butter<>, you get a butter ready to be mixed in with <PET1>Refined Flour<> and eggs. The resulting cake batter will give you a taste of heaven." },
    { "Honied Proto-Butter", "FOOD_R_HONEYGEK", "GSUB_SWEET_BUTTER", "By combining <PET1>Synthetic Honey<> with <PET1>Proto-Butter<>, you get a butter ready to be mixed in with <PET1>Refined Flour<> and eggs. The resulting cake batter will give you a taste of the ancients' visions of heaven." },
    { "Gooey Proto-Butter", "FOOD_R_BLOBGEK", "GSUB_SWEET_BUTTER", "By combining <PET5>Sticky 'Honey'<> with <PET1>Proto-Butter<>, you get a butter ready to be mixed in with <PET1>Refined Flour<> and eggs. The resulting cake batter will give you a taste of a primitive beast's idea of heaven." },
    { "Gooey Butter", "FOOD_R_BLOBBUT", "GSUB_SWEET_BUTTER", "By combining <PET5>Sticky 'Honey'<> with either <PET1>Churned Butter<> or <PET1>Bone Butter<>, you get a butter ready to be mixed in with <PET1>Refined Flour<> and eggs. The resulting cake batter will give you a taste of a primitive beast's idea of heaven." },

    --Processed Batter
    { "Cake Batter", "FOOD_R_CAKEMIX", "GSUB_CAKE_BATTER", "This is the galactic standard for cake batter. Cakes really need additions to make something delicious. If you want to use jams, most chefs will recommend a cream frosting to go with it." },
    { "Proto-Batter", "FOOD_R_GCAKEMIX", "GSUB_CAKE_BATTER", "This is the ancient standard for cake batter. Due to the use of <PET2>Proto-Butter<> blended with <PET1>Synthetic Honey<>, these cakes are moister than modern cakes. The ancients called the cakes Curiosities, mostly because they couldn't understand how something so delicious occurred." },
    { "Thick, Sweet Batter", "FOOD_R_BCAKEMIX", "GSUB_CAKE_BATTER", "This is a primitive standard for cake batter. Predating many civilizations, <PET5>Sticky 'Honey'<> was used. This gave the batters more of a sticky and thick texture that baked harder than modern cakes. These Honey Cakes also preserved better allowing them to be edible for longer." },
    { "Extra-Fluffy Batter", "FOOD_R_MERMIX", "GSUB_CAKE_BATTER", "<PET2>Delicate Meringue<> is further mixed with <PET1>Refined flour<> and eggs to make a light, airy batter. These give rise to delicate Sponge Cakes. They are simply divine." },

    --Delicious Cake
    { "Glittering Honey Cake", "FOOD_CK_HONEY", "GSUB_REGULAR_CAKE", "Adding <PET1>Synthetic Honey<> to the <PET2>Cake Batter<> made it glitter as you baked it. It will keep glittering as you eat it. Pleasant to look at and to eat." },
    { "Cream Buns", "FOOD_CK_CREAM", "GSUB_REGULAR_CAKE", "Adding a whipped cream filling and topping to these buns make them delectable morsels." },
    { "Questionably Sweet Cake", "FOOD_CK_BLOBBUT", "GSUB_REGULAR_CAKE", "As if cakes weren't sweet enough, more <PET5>Sticky 'Honey'<> is added. It makes you wonder if it's too sweet, and then you take another bite." },
    { "Chocolate Cake", "FOOD_CK_CHOC", "GSUB_REGULAR_CAKE", "Rich, decadent, and it's all yours." },
    { "Caramel-Encrusted Cake", "FOOD_CK_CARM", "GSUB_REGULAR_CAKE", "Bake some <PET2>Cake Batter<> and top it with <PET2>Crunchy Caramel<> while it's still warm. The resulting glaze is oh so delicious." },
    { "Spiced Apple Cake", "FOOD_CK_APPLE", "GSUB_REGULAR_CAKE", "This takes me back to my days on the NipNip farm. When the twin suns would set in a fiery blaze of glory and the moon would rise just off the ring. Once every 20 or so sols a trader would stop by to pick up and buy what stock I had. That Gek always stuck around to chat. 'Business is business, but life comes first.' Good times." },
    { "Esophageal Surprise", "FOOD_CK_CACTUS", "GSUB_REGULAR_CAKE", "It's surprising what you can make when you have limited resources on a desert planet. A chef had his cake for an ambassador's visit ruined without the ingredients to make another. He whipped up a <PET2>Cake Batter<> real quick and prepared some <PET1>Cactus Nectar<> while it was baking. He delicately poured the nectar on the cake while it was cooling. Just in time for dessert. When he presented it, he said it was a local delicacy that would pair well with the liqueurs they had selected for the evening. The host knew it was a lie, but the ambassador was delighted! So much so that a vigorous trade deal was struck that evening." },
    { "Traditional Cake", "FOOD_CK_JAM", "GSUB_REGULAR_CAKE", "Made with jam and cream, this is the cake most beings think about when they hear about cake." },
    { "Ever-Boiling Cake", "FOOD_CK_JHOT", "GSUB_REGULAR_CAKE", "The <PET2>Ever-burning Jam<> used as the filling fights with the whipped frosting for control of your taste buds. It's a heated battle." },
    { "Custard Fancy", "FOOD_CK_CUST", "GSUB_REGULAR_CAKE", "Cake topped with custard. It's a simple pleasure enjoyed by many." },
    { "Briney Delight", "FOOD_CK_FCUST", "GSUB_REGULAR_CAKE", "The <PET2>Salty Custard<> served on this cake gives it a refreshing taste." },

    --Curious Cake: Made from Proto-Batter
    { "Most Curious Cake", "FOOD_CG_BLOB", "GSUB_PROTO_CAKE", "Additional honey turns this cake into an odd sweetness that is curiously not sticky." },
    { "Cream Curiosity", "FOOD_CG_CREAM", "GSUB_PROTO_CAKE", "The cream served with this gives it a very curious flavor that almost, but not quite, makes you think of doughnuts." },
    { "Chocolate Curiosity", "FOOD_CG_CHOC", "GSUB_PROTO_CAKE", "Curious how amazing this is with chocolate." },
    { "Caramel Curiosity", "FOOD_CG_CARM", "GSUB_PROTO_CAKE", "The smoky flavor of the <PET1>Crunchy Caramel<> puts you in a curious mood to hunt." },
    { "Apple Curiosity", "FOOD_CG_APPLE", "GSUB_PROTO_CAKE", "This reminds me of my time in the Omerat system. I was just selling items at the station, but almost every day this Korvax visited me. Buy some parts, head back to whatever was being done. Finally got the better of me and I asked what all the parts were for. Looked straight at me and said, 'What parts?' Turns out this was a new Korvax just downloaded. We chatted and swapped some stories. Good times." },
    { "Prickly Curiosity", "FOOD_CG_CACTUS", "GSUB_PROTO_CAKE", "Did you know this curiosity was invented on a frozen planet? True story." },
    { "Jam Curiosity", "FOOD_CG_JAM", "GSUB_PROTO_CAKE", "Ancient text suggests this was how the first Curiosities were made, using up preserved fruit before they could spoil. Nobody knows why they added thickened cream to it." },
    { "Startling Fancy", "FOOD_CG_JHOT", "GSUB_PROTO_CAKE", "There are old stories about how this was made to punish spawn who got too nosy around the dwelling. Teaches them not to put everything in their mouth." },
    { "Custard Curiosity", "FOOD_CG_CUST", "GSUB_PROTO_CAKE", "Custard is a relatively modern creation. So why does it go so well with such an ancient recipe?" },
    { "Salty Surprise", "FOOD_CG_FCUST", "GSUB_PROTO_CAKE", "That is not a flavor you expected to be in your mouth. That is not a flavor you want in your mouth ever again." },
    { "Honied Proto-Cake", "FOOD_CG_HONEY", "GSUB_PROTO_CAKE", "Modern <PET1>Synthetic Honey<> is simply soaked up by this curiosity. And yet, it never seems to taste sweeter." },

    --Honey Cake: Made from Thick, Sweet Batter
    { "Honey-Soaked Fancy", "FOOD_CB_HONEY", "GSUB_STICKY_CAKE", "Start with honey, add more honey. Primitively simple." },
    { "Sweet Cream Dreams", "FOOD_CB_CREAM", "GSUB_STICKY_CAKE", "Add cream to simple honey cake. We're done here." },
    { "Gooey Chocolate Cake", "FOOD_CB_CHOC", "GSUB_STICKY_CAKE", "Say what you will about primitive civilizations, but this bangs the rocks together." },
    { "Gooey Caramel Cake", "FOOD_CB_CARM", "GSUB_STICKY_CAKE", "This makes you want to huddle around a fire for warmth. Not because you're cold, but to be with the others. A simple pleasure." },
    { "Gooey Fruit Surprise", "FOOD_CB_APPLE", "GSUB_STICKY_CAKE", "Ever fight a Vy'keen? Most of them are tough as nails. I was hiking across a rather pleasant garden planet, trying to hitch a ride out. I came across this Vy'keen warrior just laying there. I asked if he was alright and he jumped up and attacked me! We fought for about an hour before he broke it off and started laughing. He'd been really bored lately and this was simply what he needed. Brought one of these desserts out from a pack to celebrate our newfound friendship. Must have walked across half the planet with him telling jokes and fighting things. Good times." },
    { "Honied Throat-Sticker", "FOOD_CB_CACTUS", "GSUB_STICKY_CAKE", "You're in a desert. You're surrounded by Echinocactus. You put two and two together and come up with this. And math remains uninvented." },
    { "Gooey Mouthburner", "FOOD_CB_JHOT", "GSUB_STICKY_CAKE", "When life gives you <PET0>Fireberries<>, burn the dwellings down. With the <PET0>Fireberries<>." },
    { "Gooey Custard Fancy", "FOOD_CB_CUST", "GSUB_STICKY_CAKE", "There are better uses for custard. But not many." },
    { "Salt-Laced Honey Cake", "FOOD_CB_FCUST", "GSUB_STICKY_CAKE", "The <PET4>Salt<> in the custard crystallizes with the <PET5>Sticky 'Honey'<> giving it a bit of a crunch. Simply amazing." },

    --Sponge Cake: Made from Extra Fluffy Batter
    { "Honied Angel Cake", "FOOD_MC_HONEY", "GSUB_FLUFFY_CAKE", "A gentle drizzle of <PET1>Synthetic Honey<> is perfect on this cake. Truly a cake to give joyous song!" },
    { "Gooey Honey Puff", "FOOD_MC_BLOB", "GSUB_FLUFFY_CAKE", "The <PET5>Sticky 'Honey'<> softens the puff, giving a blessedly moist experience." },
    { "Extra-Fluffy Cream Cake", "FOOD_MC_CREAM", "GSUB_FLUFFY_CAKE", "A simple cream topping makes this a heavenly treat." },
    { "Chocolate Dream", "FOOD_MC_CHOC", "GSUB_FLUFFY_CAKE", "Mix some <PET1>Bittersweet Cocoa<> into some <PET2>Extra-Fluffy Batter<>, set it to bake, take a nap, and wake up to a delicious chocolate sponge cake." },
    { "Fluffy Caramel Delight", "FOOD_MC_CARM", "GSUB_FLUFFY_CAKE", "You can only pray that all your food will be this delicious." },
    { "Angelic Fruitcake", "FOOD_MC_APPLE", "GSUB_FLUFFY_CAKE", "I've always wondered what comes after. Not life, but the universe itself. Nothing lasts forever, not even nothingness. One day, the universe will fade, but it will be replaced by something we may not even be able to comprehend. I hope somehow a spark gets through to help whoever comes after find the joys that life can bring. They deserve it. We all deserve it, just one thing: Good times." },
    { "Soft and Spiky Surprise", "FOOD_MC_CACTUS", "GSUB_FLUFFY_CAKE", "The harsh desert redeems itself lending its nature to this sweetened treat." },
    { "Jam Fluffer", "FOOD_MC_JAM", "GSUB_FLUFFY_CAKE", "A soft spread of jam on the small cake brings peace to troubled brows." },
    { "Burning Jam Fluffer", "FOOD_MC_JHOT", "GSUB_FLUFFY_CAKE", "The flavor of this small cake burns with a great, righteous fire!" },
    { "Soft Custard Fancy", "FOOD_MC_CUST", "GSUB_FLUFFY_CAKE", "The heavy custard is tasty but weighs down the cake. The fallen crumb deserves better." },
}

FOOD_CHANGE_TABLE = {}
FOOD_LANGUAGE_CHANGE_TABLE = {}
for _, description in pairs(GOURMET_FOOD_TABLE) do
    identifier = "GOURMET_" .. string.sub(string.upper(string.gsub(description[1], "%A", "_")), 1, 20)
    productChange = { ["SPECIAL_KEY_WORDS"] = { "Id", description[2] }, --This changes the description
                      ["PRECEDING_KEY_WORDS"] = { "Description" },
                      ["VALUE_CHANGE_TABLE"] = { { "Value", identifier } }
    }
    subtitleChange = { ["SPECIAL_KEY_WORDS"] = { "Id", description[2] }, --This changes the subtitle
                       ["PRECEDING_KEY_WORDS"] = { "Subtitle" },
                       ["VALUE_CHANGE_TABLE"] = { { "Value", description[3] } }
    }
    table.insert(FOOD_CHANGE_TABLE, productChange)
    table.insert(FOOD_CHANGE_TABLE, subtitleChange)
    languageChange = {}
    table.insert(languageChange, SECTION_START)
    table.insert(languageChange, SECTION_ID(identifier))
    for _, language in pairs(LANGUAGES) do
        table.insert(languageChange, SECTION_LANGUAGE(language))
        if language == MOD_LANGUAGE then
            table.insert(languageChange, SECTION_DESCRIPTION(sanitizeText(description[4])))
        else
            table.insert(languageChange, EMPTY_LANGUAGE_SECTION)
        end
        table.insert(languageChange, CLOSE_LANGUAGE_SECTION)
    end
    table.insert(languageChange, CLOSE_SECTION)
    table.insert(FOOD_LANGUAGE_CHANGE_TABLE, table.concat(languageChange, "\n"))
end

for key, subtitle in pairs(SUBTITLE_COLLECTION) do
    languageChange = {}
    table.insert(languageChange, SECTION_START)
    table.insert(languageChange, SECTION_ID(key))
    for _, language in pairs(LANGUAGES) do
        table.insert(languageChange, SECTION_LANGUAGE(language))
        if language == MOD_LANGUAGE then
            table.insert(languageChange, SECTION_DESCRIPTION(subtitle))
        else
            table.insert(languageChange, EMPTY_LANGUAGE_SECTION)
        end
        table.insert(languageChange, CLOSE_LANGUAGE_SECTION)
    end
    table.insert(languageChange, CLOSE_SECTION)
    table.insert(FOOD_LANGUAGE_CHANGE_TABLE, table.concat(languageChange, "\n"))
end

--[[Corrections
    Some foods are not properly named, such as breaking pattern or just named wrong. The ones below are corrections for english.
    Translators: Remove these for your language and add table entries to make corrections specific for your language. The first field is for the internal uppercase name on the product. The second field is the corrected name.
    Note that food name can be found in LOC4 and in LOC6. You'll need to search to make sure you find the right one.
--]]
FOOD_CORRECTIONS_LOC4 = { --Most food names are in LOC4
    { "FOOD_R_BLOBGEK_NAME", "Gooey Proto-butter" },
    { "FOOD_R_GCHEESE_NAME", "Proto-Cheese" },
    { "FOOD_DNUT_BLOB_NAME", "Gooey Proto-Doughnut" }
}
CORRECTION_CHANGES_LOC4 = {}
for _, correction in pairs(FOOD_CORRECTIONS_LOC4) do
    correctionUpper = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] }, --Upper case change
                        ["PRECEDING_KEY_WORDS"] = { MOD_LANGUAGE },
                        ["VALUE_CHANGE_TABLE"] = { { "Value", string.upper(correction[2]) } }
    }
    correctionLower = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] .. "_L" }, --Normal case change
                        ["PRECEDING_KEY_WORDS"] = { MOD_LANGUAGE },
                        ["VALUE_CHANGE_TABLE"] = { { "Value", correction[2] } }
    }
    table.insert(CORRECTION_CHANGES_LOC4, correctionUpper)
    table.insert(CORRECTION_CHANGES_LOC4, correctionLower)
end

FOOD_CORRECTIONS_LOC6 = { --A few are in LOC6
    { "FOOD_BONECHEESE_NAME", "Bone Cheese" }
}
CORRECTION_CHANGES_LOC6 = {}
for _, correction in pairs(FOOD_CORRECTIONS_LOC6) do
    correctionUpper = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] }, --Upper case change
                        ["PRECEDING_KEY_WORDS"] = { MOD_LANGUAGE },
                        ["VALUE_CHANGE_TABLE"] = { { "Value", string.upper(correction[2]) } }
    }
    correctionLower = { ["SPECIAL_KEY_WORDS"] = { "Id", correction[1] .. "_L" }, --Normal case change
                        ["PRECEDING_KEY_WORDS"] = { MOD_LANGUAGE },
                        ["VALUE_CHANGE_TABLE"] = { { "Value", correction[2] } }
    }
    table.insert(CORRECTION_CHANGES_LOC6, correctionUpper)
    table.insert(CORRECTION_CHANGES_LOC6, correctionLower)
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "Gourmet Food Descriptions.pak",
    ["MOD_AUTHOR"] = "Fluxxdog",
    ["LUA_AUTHOR"] = "Fluxxdog",
    ["NMS_VERSION"] = "3.98.1",
    ["MOD_DESCRIPTION"] = "This alters the food products and language files to give more flavorful descriptions.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = FOOD_CHANGE_TABLE
                },
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC4_ENGLISH.MBIN", --Translators: Change this as needed
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "Table" },
                            ["ADD"] = table.concat(FOOD_LANGUAGE_CHANGE_TABLE, "\n")
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC4_ENGLISH.MBIN", --Translators: Change this as needed
                    ["EXML_CHANGE_TABLE"] = CORRECTION_CHANGES_LOC4
                },
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC6_ENGLISH.MBIN", --Translators: Change this as needed
                    ["EXML_CHANGE_TABLE"] = CORRECTION_CHANGES_LOC6
                },
            }
        }
    }
}