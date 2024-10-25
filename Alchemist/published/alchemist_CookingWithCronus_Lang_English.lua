-- Original Mod Author Information (translators - do not edit)
Author = "alchemist"
ModName = "CookingWithCronus"
BaseDescription = [[An interaction overhaul of Iteration Cronus that includes new culinary
profit opportunities, a dynamic ingredients market, and expanded 
whalesong encounters.

https://www.nexusmods.com/nomanssky/mods/2554]]
GameVersion = "5-20"
ModVersion = "1-6-0"

-- =========
-- CONSTANTS
-- =========

LANGUAGE_NAMES = {"English", "French", "Italian", "German", "Spanish", "Russian", "Polish",
  "Dutch", "Portuguese", "LatinAmericanSpanish", "BrazilianPortuguese", "SimplifiedChinese",
  "TraditionalChinese", "TencentChinese", "Korean", "Japanese", "USEnglish"}

-- ========================
-- BEGIN TRANSLATOR SECTION
-- ========================

-- Hello, my name is...
TranslationAuthor = "alchemist"

-- The language provided by this build. Used in the output file name and (possibly)
-- to select which file to inject language entries in to.
--
-- Select from LANGUAGE_NAMES array above.
LanguageName = "English"

-- When 'false', will inject language into existing files, using LanguageFilePrefix.
-- When 'true', will create seperate files for the mod in the LANGUAGE folder.
-- When 'true', adds entries to GCDEBUGOPTIONS.GLOBAL.MBIN to register the new files.
CreateSeperateLanguageFiles = true

-- Whether to create/inject the language entries into just the target language's 
-- file (false), or all language files (true). If true, players will see the 
-- provided strings no matter what language they play in. Should probably be true, 
-- unless you have a specific reason not to. Only used
-- when 'CreateSeperateLanguageFiles = false'.
ForceAllLanguageFiles = true

-- Which group of files from the "Language" directory of the extracted game files to
-- inject the new language entries into. Translators should not change. Only used
-- when 'CreateSeperateLanguageFiles = false'.
LanguageFilePrefix = "NMS_LOC7_"

--[[

# Adding Language Entries

The LANGUAGE_TABLE is a key-value table. When asked to display text, the game will
look up the the key in the player's preferred language file.

Mod Authors: Add key-value pairs. Keys must be unique across the entire game.
Translators: Make changes to the values, do NOT make changes to keys.

  ["KEY"] = "Value",

All entries should be single line strings. If the output should be a multi-line
string, use \n to denote line breaks.

  ["MULTILINE_KEY"] = "This is the first line.\nThis is the second line.",

Line-breaks are especially important in dialogs as it also indicates where to
wait for the player to hit a button to continue reading.

The link below is for a guide on NMS text formatting. This will allow you to change
the color of text or add icons. Format wrappers and icon tags must be in English.

  https://www.nexusmods.com/nomanssky/mods/2134

IMPORTANT: Translators, be sure this file is saved in UTF-8 encoding. Any other
encoding throw errors during the AMUMSS build cycle due to a mismatch with the game
files.

--]]

-- Total keys: 305
LANGUAGE_TABLE = {
  --
  ["ALCH_CHEF_IMC_TITLE"] = "Creature Products", --
  ["ALCH_CHEF_IMM_TITLE"] = "Meat Products", --
  ["ALCH_CHEF_IMP_TITLE"] = "Edible Flora", --
  ["ALCH_CHEF_INTRO_TUT_MESSAGE"] = "<HIGHLIGHT>Iteration Cronus<> <TITLE>has new services available!<> \nVisit their kiosk to learn more", --
  ["ALCH_CHEF_JOB_UI_TITLE_PREFIX"] = "Culinary Opportunities Available", --
  ["ALCH_CHEF_JUDGE_CHAT_BYE"] = "<VISOR>Cronus<>: -{{ And I was looking forward to trying new dish. Back to cataloguing. }}-", --
  ["ALCH_CHEF_JUDGE_CHAT_RDY"] = "<VISOR>Cronus<>: -{{ What have you prepared for me this time? }}-", --
  ["ALCH_CHEF_JUDGE_CHEF_LABEL"] = "Present food products", --
  ["ALCH_CHEF_MENU_BACK_OPT"] = "Return...", --
  ["ALCH_CHEF_MENU_ING_BRIBE"] = "About today's offerings...", --
  ["ALCH_CHEF_MENU_ING_BRIBE_EVT"] = "[ ! ] About today's offerings...", --
  ["ALCH_CHEF_MENU_ING_SHOP"] = "Ingredients Market...", --
  ["ALCH_CHEF_MENU_ING_SHOP_EVT"] = "[ ! ] Ingredients Market...", --
  ["ALCH_CHEF_MENU_JUDGE_OPT"] = "Food Critique...", --
  ["ALCH_CHEF_MENU_JUDGE_RES"] = "Give me a moment to prepare...", --
  ["ALCH_CHEF_MENU_NEXT_OPT"] = "More Options...", --
  ["ALCH_CHEF_MENU_NO_OPT"] = "No", --
  ["ALCH_CHEF_MENU_YES_OPT"] = "Yes", --
  ["ALCH_CHEF_OFFER_CRON_OBJ"] = "Return to Cronus aboard the Nexus", --
  ["ALCH_CHEF_OFFER_CRON_OBJ_TIP"] = "Return to <HIGHLIGHT>Iteration Cronus<> aboard the Nexus.\nSummon the Nexus from the <TECHNOLOGY>Quick Menu<> (<IMG>QUICK_MENU<>).", --
  ["ALCH_CHEF_OFFER_CRON_OBJ_WAIT_A"] = "<TITLE>Return to<> <HIGHLIGHT>Iteration Cronus<> <TITLE>aboard the Nexus<>\nSummon the Nexus from the <TECHNOLOGY>Quick Menu<> (<IMG>QUICK_MENU<>)", --
  ["ALCH_CHEF_OFFER_CRON_OBJ_WAIT_B"] = "<TITLE>Return to<> <HIGHLIGHT>Iteration Cronus<> <TITLE>aboard the Nexus<>", --
  ["ALCH_CHEF_OFFER_DESC_1"] = "<HIGHLIGHT>Iteration Cronus<> has prepared an <SPECIAL>Offering of a Forgotten Song<>,  a dessert that can capture the attention of nearby <RARE>cosmic megafauna<>. \n\nNOTE: Should the offering be lost before completing the encounter, a replacement can be obtained from <HIGHLIGHT>Cronus<>.", --
  ["ALCH_CHEF_OFFER_LBL_CRON"] = "Share your story with Cronus", --
  ["ALCH_CHEF_OFFER_SONG_OBJ"] = "Activate the Offering of a Forgotten Song", --
  ["ALCH_CHEF_OFFER_SONG_OBJ_TIP"] = "Locate the <RARE>Offering of a Forgotten Song<> in your Inventory  (<IMG>INVENTORY<>) then use Harmonize (<IMG>FE_ALT1<>) while in  <SPECIAL>deep space<> to broadcast an invitation for a harmonic partner.", --
  ["ALCH_CHEF_OFFER_SONG_OBJ_WAIT"] = "Locate the <RARE>Offering of a Forgotten Song<> in your Inventory (<IMG>INVENTORY<>).\nUse Harmonize (<IMG>FE_ALT1<>) to search for a harmonic partner...", --
  ["ALCH_CHEF_OFFER_SUB_1"] = "Cosmic Megafauna Encounter", --
  ["ALCH_CHEF_OFFER_TITLE_1"] = "Forgotten Songs", --
  ["ALCH_CHEF_OFFER_WHALE_OBJ"] = "Follow the offering's guidance", --
  ["ALCH_CHEF_OFFER_WHALE_OBJ_TIP"] = "The <SPECIAL>Offering of a Forgotten Song<> is seeking a harmonic partner. Follow it's guidance to unlock it's secrets.", --
  ["ALCH_CHEF_RESET_RST_DAY_0"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Chocolate Curiosity<>, <SPECIAL>Fish Biscuit<>, and <SPECIAL>Primordial Sponge<>. At the <STELLAR>Ingredients Market<>, <RARE>Regis Grease<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_1"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Fungal Omelette<>, <SPECIAL>Fishy Slab<>, and <SPECIAL>Frosted Mire<>. At the <STELLAR>Ingredients Market<>, <FLORA>Frozen Tubers<> are available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_10"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Syrupy Viscera<>, <SPECIAL>Salty Platter<>, and <SPECIAL>Nourishing Oozer<>. At the <STELLAR>Ingredients Market<>, <FLORA>Jade Peas<> are available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_11"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Spawning Tart<>, <SPECIAL>Fishy Slab<>, and <SPECIAL>Gelatinous Sponge<>. At the <STELLAR>Ingredients Market<>, <FUEL>Fiendish Roe<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_12"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Cake of Burning Dread<>, <SPECIAL>Sea's Bounty<>, and <SPECIAL>Squirming Fancy<>. At the <STELLAR>Ingredients Market<>, <FUEL>Scooped Innards<> are available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_13"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Chocolate Curiosity<>, <SPECIAL>Whole Roast Fish<>, and <SPECIAL>Gelatinous Sponge<>. At the <STELLAR>Ingredients Market<>, <RARE>Sticky 'Honey'<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_14"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Chocolate Curiosity<>, <SPECIAL>Seafood 'Feast'<>, and <SPECIAL>Nourishing Oozer<>. At the <STELLAR>Ingredients Market<>, <RARE>Craw Milk<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_15"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Stellarator<>, <SPECIAL>Sea's Bounty<>, and <SPECIAL>Primordial Sponge<>. At the <STELLAR>Ingredients Market<>, <RARE>Syrupy Nectar<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_16"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Fungal Omelette<>, <SPECIAL>Sea's Bounty<>, and <SPECIAL>Squirming Fancy<>. At the <STELLAR>Ingredients Market<>, <FUEL>Dirty Meat<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_17"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Cake of Burning Dread<>, <SPECIAL>Marine Pie<>, and <SPECIAL>Gelatinous Sponge<>. At the <STELLAR>Ingredients Market<>, <FLORA>Aloe Flesh<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_18"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Spawning Tart<>, <SPECIAL>Whole Roast Fish<>, and <SPECIAL>Splicer's Delight<>. At the <STELLAR>Ingredients Market<>, <FUEL>Salty Fingers<> are available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_19"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Stellarator<>, <SPECIAL>Fish Biscuit<>, and <SPECIAL>Slime Pop<>. At the <STELLAR>Ingredients Market<>, <FUEL>Rancid Flesh<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_2"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Spawning Tart<>, <SPECIAL>Marine Pie<>, and <SPECIAL>Mucal Curiosity<>. At the <STELLAR>Ingredients Market<>, <RARE>Leopard-Fruit<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_20"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Stellarator<>, <SPECIAL>Marine Pie<>, and <SPECIAL>Splicer's Delight<>. At the <STELLAR>Ingredients Market<>, <FUEL>Meaty Chunks<> are in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_21"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Cake of Burning Dread<>, <SPECIAL>Fishy Slab<>, and <SPECIAL>Mucal Curiosity<>. At the <STELLAR>Ingredients Market<>, <FUEL>Lumpy Brainstem<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_22"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Cake of Burning Dread<>, <SPECIAL>Salty Platter<>, and <SPECIAL>Slime Pop<>. At the <STELLAR>Ingredients Market<>, <RARE>Nourishing Slime<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_23"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Spawning Tart<>, <SPECIAL>Marine Pie<>, and <SPECIAL>Slime Pop<>. At the <STELLAR>Ingredients Market<>, <FLORA>Grahberry<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_3"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Fungal Omelette<>, <SPECIAL>Whole Roast Fish<>, and <SPECIAL>Splicer's Delight<>. At the <STELLAR>Ingredients Market<>, <FLORA>Hexaberry<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_4"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Chocolate Curiosity<>, <SPECIAL>Seafood 'Feast'<>, and <SPECIAL>Primordial Sponge<>. At the <STELLAR>Ingredients Market<>, <FLORA>Fireberry<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_5"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>The Stellarator<>, <SPECIAL>Salty Platter<>, and <SPECIAL>Frosted Mire<>. At the <STELLAR>Ingredients Market<>, <RARE>Warm Proto-Milk<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_6"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Syrupy Viscera<>, <SPECIAL>Salty Platter<>, and <SPECIAL>Nourishing Oozer<>. At the <STELLAR>Ingredients Market<>, <FUEL>Scooped Innards<> are in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_7"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Syrupy Viscera<>, <SPECIAL>Seafood 'Feast'<>, and <SPECIAL>Mucal Curiosity<>. At the <STELLAR>Ingredients Market<>, <RARE>Giant Egg<> is in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_8"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Syrupy Viscera<>, <SPECIAL>Whole Roast Fish<>, and <SPECIAL>Squirming Fancy<>. At the <STELLAR>Ingredients Market<>, <FLORA>Frozen Tubers<> are in <SPECIAL>high demand<>. }}-", --
  ["ALCH_CHEF_RESET_RST_DAY_9"] = "<VISOR>Cronus<>: -{{ Greetings Traveler! Today's <STELLAR>daily specials<> are <SPECIAL>Fungal Omelette<>, <SPECIAL>Fish Biscuit<>, and <SPECIAL>Frosted Mire<>. At the <STELLAR>Ingredients Market<>, <FLORA>Hexaberry<> is available at a <TRADE>discount<>. }}-", --
  ["ALCH_CHEF_TDONE_INTRO_DESC"] = "<HIGHLIGHT>Iteration Cronus<> has expanded their offerings for Travelers visiting the Nexus! Fair  compensation and competitive prices for all your cuisine preparation needs.", --
  ["ALCH_CHEF_TDONE_INTRO_P1"] = "Cronus is now willing to pay a premium for some of their <SPECIAL>favorite dishes<>  but what they are in the mood for changes daily.", --
  ["ALCH_CHEF_TDONE_INTRO_P2"] = "Through the <TRADE>Ingredients Market<>, Cronus allows Travelers to sell their  excess farm and harvest products. Ingredient selection changes daily.", --
  ["ALCH_CHEF_TDONE_INTRO_P3"] = "Cronus has been tracking migratory fleets of <SPECIAL>cosmic megafauna<>. Speak with them about whalesong once the <TECHNOLOGY>Dream Aerial<> mission has been completed.", --
  ["ALCH_CHEF_WHALE_MP_ERR_OSD"] = "OFFERING OF A FORGOTTEN SONG <HIGHLIGHT>//<> <FUEL>ERROR ~ NEXUS MISSION INTERFERENCE<>", --
  ["ALCH_CHEF_WHALE_NEARBY_MSG1"] = "<SPECIAL>Offering of a Forgotten Song<> <TITLE>seeking harmonic partner<>\nThe song is eminating... %SIGNAL%", --
  ["ALCH_CHEF_WHALE_NEARBY_MSG2"] = "<SPECIAL>Offering of a Forgotten Song<> <TITLE>seeking harmonic partner<>\nReturn to your ship to broadcast the request", --
  ["ALCH_CHEF_WHALE_NEARBY_MSG3"] = "<SPECIAL>Offering of a Forgotten Song<> <TITLE>seeking harmonic partner<>\nActivate the <TECHNOLOGY>Pulse Drive<> to broadcast the request", --
  ["ALCH_CHEF_WHALE_NEARBY_MSG4"] = "<FUEL>Song Silenced<> ~ <TITLE>Discordant tonal interference detected<>\nAnswer the <STELLAR>Communicator<> to resolve conflicting signals", --
  ["ALCH_CHEF_WHALE_PROMPT"] = "I accept, Traveler. I want to see you more clearly. Share with me the song of our future...", --
  ["ALCH_CHEF_WHALE_SHIP_RES"] = "A gift of companionship granted. Perhaps we will meet again Traveler, in a different song.", --
  ["ALCH_CHEF_WHALE_START_OSD"] = "OFFERING OF A FORGOTTEN SONG <HIGHLIGHT>//<> <TRADE>HARMONIZING<>", --
  ["ALCH_CHEF_WHALE_TECH_RES"] = "A gift of knowledge granted. It has been worth the wait to meet you, Traveller. This will recur, when you are ready.", --
  ["ALCH_CHEF_WHALE_TITLE"] = "Harmonizing with Forgotten Song", --
  ["CHEF_MENU_00_BRIBE_CANCEL_RES"] = "Nothing of interest, that's alright. Just don't go telling Polo about my offer, okay?", --
  ["CHEF_MENU_00_BRIBE_DONE_RES"] = "Good choice! Give me a moment to make it official.", --
  ["CHEF_MENU_00_BRIBE_INTRO_BF_RES"] = "Traveler, have you sensed the disturbances in the cosmic currents? These <SPECIAL>BOUNDARY FAILURES<> threaten to unravel its delicate balance.\nMy esteemed suppliers are facing unprecedented challenges. Their carefully orchestrated movements are disrupted by spatial and temporal distortions.\nIn times of such uncertainty, resourcefulness is paramount. I propose a mutually advantageous arrangement...", --
  ["CHEF_MENU_00_BRIBE_INTRO_RES"] = "What's that Traveler, is the Ingredient Market not in your favor today? Lucky for you, we are friends! I will do you a favor.\nWhat you can buy today is locked in because of market forces and previous arrangements, but...", --
  ["CHEF_MENU_00_BRIBE_LANG"] = "For a small processing fee, I will let you choose what you can sell at the market today.", --
  ["CHEF_MENU_00_BRIBE_LANG_EVT"] = "For a nominal processing fee, a <FLORA>75%<> discount of my usual rate, I will let you choose what you can sell at the market today.", --
  ["CHEF_MENU_00_DAILY_CHANGE"] = "<TITLE>The Daily Favorite and Ingredient Market have changed<>\nVisit Cronus to learn today's specials", --
  ["CHEF_MENU_00_DS_A0_DESC"] = "Today I will pay 210 nanites per unit of The Stellarator. A doughnut made of starlight, sublime!", --
  ["CHEF_MENU_00_DS_A0_OPT"] = "Today's Favorite ~ The Stellarator", --
  ["CHEF_MENU_00_DS_A0_OPT_S"] = "(High Demand) Today's Favorite ~ The Stellarator", --
  ["CHEF_MENU_00_DS_A1_DESC"] = "Today I will pay 180 nanites per unit of Fungal Omelette. Nutritious non-toxic fungi, delicious!", --
  ["CHEF_MENU_00_DS_A1_OPT"] = "Today's Favorite ~ Fungal Omelette", --
  ["CHEF_MENU_00_DS_A1_OPT_S"] = "(High Demand) Today's Favorite ~ Fungal Omelette", --
  ["CHEF_MENU_00_DS_A2_DESC"] = "Today I will pay 190 nanites per unit of Chocolate Curiosity. Such decadence in one cake, preposterous!", --
  ["CHEF_MENU_00_DS_A2_OPT"] = "Today's Favorite ~ Chocolate Curiosity", --
  ["CHEF_MENU_00_DS_A2_OPT_S"] = "(High Demand) Today's Favorite ~ Chocolate Curiosity", --
  ["CHEF_MENU_00_DS_A3_DESC"] = "Today I will pay 200 nanites per unit of The Spawning Tart. A creamy larval custard pie, a classic!", --
  ["CHEF_MENU_00_DS_A3_OPT"] = "Today's Favorite ~ The Spawning Tart", --
  ["CHEF_MENU_00_DS_A3_OPT_S"] = "(High Demand) Today's Favorite ~ The Spawning Tart", --
  ["CHEF_MENU_00_DS_A4_DESC"] = "Today I will pay 210 nanites per unit of Cake of Burning Dread. Don't be nervous, it's just a name. Probably.", --
  ["CHEF_MENU_00_DS_A4_OPT"] = "Today's Favorite ~ Cake of Burning Dread", --
  ["CHEF_MENU_00_DS_A4_OPT_S"] = "(High Demand) Today's Favorite ~ Cake of Burning Dread", --
  ["CHEF_MENU_00_DS_A5_DESC"] = "Today I will pay 180 nanites per unit of Syrupy Viscera. A delicate balance of sweetness and nightmares. Ingenius!", --
  ["CHEF_MENU_00_DS_A5_OPT"] = "Today's Favorite ~ Syrupy Viscera", --
  ["CHEF_MENU_00_DS_A5_OPT_S"] = "(High Demand) Today's Favorite ~ Syrupy Viscera", --
  ["CHEF_MENU_00_DS_B0_DESC"] = "Today I will pay 200 nanites per unit of Frosted Mire. If you followed the directions, it's not supposed to be moving.", --
  ["CHEF_MENU_00_DS_B0_OPT"] = "Bug Delicacies ~ Frosted Mire", --
  ["CHEF_MENU_00_DS_B0_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Frosted Mire", --
  ["CHEF_MENU_00_DS_B1_DESC"] = "Today I will pay 200 nanites per unit of Gelatinous Sponge. Squishy and delicious, and not at all alive. Not sure about that last part.", --
  ["CHEF_MENU_00_DS_B1_OPT"] = "Bug Delicacies ~ Gelatinous Sponge", --
  ["CHEF_MENU_00_DS_B1_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Gelatinous Sponge", --
  ["CHEF_MENU_00_DS_B2_DESC"] = "Today I will pay 200 nanites per unit of Mucal Curiosity. Try not to think of the name while you eat it. Or do, it's your choice.", --
  ["CHEF_MENU_00_DS_B2_OPT"] = "Bug Delicacies ~ Mucal Curiosity", --
  ["CHEF_MENU_00_DS_B2_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Mucal Curiosity", --
  ["CHEF_MENU_00_DS_B3_DESC"] = "Today I will pay 200 nanites per unit of Nourishing Oozer. The healthy choice for the discerning bug hunter. Or just the hungry.", --
  ["CHEF_MENU_00_DS_B3_OPT"] = "Bug Delicacies ~ Nourishing Oozer", --
  ["CHEF_MENU_00_DS_B3_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Nourishing Oozer", --
  ["CHEF_MENU_00_DS_B4_DESC"] = "Today I will pay 200 nanites per unit of Primordial Sponge. Did you break the laws of space-time to acquire the ingredients? No? Then it's not authentic.", --
  ["CHEF_MENU_00_DS_B4_OPT"] = "Bug Delicacies ~ Primordial Sponge", --
  ["CHEF_MENU_00_DS_B4_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Primordial Sponge", --
  ["CHEF_MENU_00_DS_B5_DESC"] = "Today I will pay 200 nanites per unit of Splicer's Delight. Whoever thought to use bugs in a cake? You? Oh, well then, I commend you!", --
  ["CHEF_MENU_00_DS_B5_OPT"] = "Bug Delicacies ~ Splicer's Delight", --
  ["CHEF_MENU_00_DS_B5_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Splicer's Delight", --
  ["CHEF_MENU_00_DS_B6_DESC"] = "Today I will pay 200 nanites per unit of Squirming Fancy. Is it supposed to move like that? Why yes, yes it is!", --
  ["CHEF_MENU_00_DS_B6_OPT"] = "Bug Delicacies ~ Squirming Fancy", --
  ["CHEF_MENU_00_DS_B6_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Squirming Fancy", --
  ["CHEF_MENU_00_DS_B7_DESC"] = "Today I will pay 200 nanites per unit of Slime Pop. It's cold and slimy, perfect for surviving on superheated planets!", --
  ["CHEF_MENU_00_DS_B7_OPT"] = "Bug Delicacies ~ Slime Pop", --
  ["CHEF_MENU_00_DS_B7_OPT_S"] = "(2x Bonus) Bug Delicacies ~ Slime Pop", --
  ["CHEF_MENU_00_DS_F0_DESC"] = "Today I will pay 200 nanites per unit of Marine Pie. A symphony of the sea, encased in a flaky crust. Intriguing...", --
  ["CHEF_MENU_00_DS_F0_OPT"] = "From The Sea ~ Marine Pie", --
  ["CHEF_MENU_00_DS_F0_OPT_S"] = "(2x Bonus) From The Sea ~ Marine Pie", --
  ["CHEF_MENU_00_DS_F1_DESC"] = "Today I will pay 200 nanites per unit of Sea's Bounty. Only the most skilled angler could catch these ingredients.", --
  ["CHEF_MENU_00_DS_F1_OPT"] = "From The Sea ~ Sea's Bounty", --
  ["CHEF_MENU_00_DS_F1_OPT_S"] = "(2x Bonus) From The Sea ~ Sea's Bounty", --
  ["CHEF_MENU_00_DS_F2_DESC"] = "Today I will pay 200 nanites per unit of Salty Platter. A selection of the sea's finest, prepared with care.", --
  ["CHEF_MENU_00_DS_F2_OPT"] = "From The Sea ~ Salty Platter", --
  ["CHEF_MENU_00_DS_F2_OPT_S"] = "(2x Bonus) From The Sea ~ Salty Platter", --
  ["CHEF_MENU_00_DS_F3_DESC"] = "Today I will pay 200 nanites per unit of Fishy Slab. Some of the rarest catches, sliced and presented in their purest form.", --
  ["CHEF_MENU_00_DS_F3_OPT"] = "From The Sea ~ Fishy Slab", --
  ["CHEF_MENU_00_DS_F3_OPT_S"] = "(2x Bonus) From The Sea ~ Fishy Slab", --
  ["CHEF_MENU_00_DS_F4_DESC"] = "Today I will pay 200 nanites per unit of Whole Roast Fish. Cooked to perfection, an elegant expression of an angler's skill.", --
  ["CHEF_MENU_00_DS_F4_OPT"] = "From The Sea ~ Whole Roast Fish", --
  ["CHEF_MENU_00_DS_F4_OPT_S"] = "(2x Bonus) From The Sea ~ Whole Roast Fish", --
  ["CHEF_MENU_00_DS_F5_DESC"] = "Today I will pay 200 nanites per unit of Seafood 'Feast'. It has everything, fish, shellfish, squid. And it's all delicious! Bravo!", --
  ["CHEF_MENU_00_DS_F5_OPT"] = "From The Sea ~ Seafood 'Feast'", --
  ["CHEF_MENU_00_DS_F5_OPT_S"] = "(2x Bonus) From The Sea ~ Seafood 'Feast'", --
  ["CHEF_MENU_00_DS_F6_DESC"] = "Today I will pay 200 nanites per unit of Fish Biscuit. A sugary biscuit with a fishy surprise inside. A salty and sweet snack!", --
  ["CHEF_MENU_00_DS_F6_OPT"] = "From The Sea ~ Fish Biscuit", --
  ["CHEF_MENU_00_DS_F6_OPT_S"] = "(2x Bonus) From The Sea ~ Fish Biscuit", --
  ["CHEF_MENU_00_EVENT_HOOK"] = "What culinary curiosities have you discovered during your travels? Has the excitement surrounding those new alien ingredients inspired a creative concoction? Or will you tempt my palate with a familiar favorite?", --
  ["CHEF_MENU_00_HIGH_DEMAND"] = "In Demand", --
  ["CHEF_MENU_00_OOS_LABEL"] = "Out of Stock", --
  ["CHEF_MENU_00_P2_TEXT"] = "Something else you wish to discuss?", --
  ["CHEF_MENU_00_SALE_IMC0"] = "On Sale ~ Sticky 'Honey'", --
  ["CHEF_MENU_00_SALE_IMC1"] = "On Sale ~ Warm Proto-Milk", --
  ["CHEF_MENU_00_SALE_IMC10"] = "On Sale ~ Chewy Wires", --
  ["CHEF_MENU_00_SALE_IMC11"] = "On Sale ~ Craw Milk", --
  ["CHEF_MENU_00_SALE_IMC12"] = "On Sale ~ Creature Egg", --
  ["CHEF_MENU_00_SALE_IMC13"] = "On Sale ~ Wild Milk", --
  ["CHEF_MENU_00_SALE_IMC14"] = "On Sale ~ Nourishing Slime", --
  ["CHEF_MENU_00_SALE_IMC15"] = "On Sale ~ Syrupy Nectar", --
  ["CHEF_MENU_00_SALE_IMC2"] = "On Sale ~ Giant Egg", --
  ["CHEF_MENU_00_SALE_IMC3"] = "On Sale ~ Regis Grease", --
  ["CHEF_MENU_00_SALE_IMC4"] = "On Sale ~ Leopard-Fruit", --
  ["CHEF_MENU_00_SALE_IMC5"] = "On Sale ~ Tall Eggs", --
  ["CHEF_MENU_00_SALE_IMC6"] = "On Sale ~ Fresh Milk", --
  ["CHEF_MENU_00_SALE_IMC7"] = "On Sale ~ Crab 'Apple'", --
  ["CHEF_MENU_00_SALE_IMC8"] = "On Sale ~ Bone Nuggets", --
  ["CHEF_MENU_00_SALE_IMC9"] = "On Sale ~ Foraged Mushrooms", --
  ["CHEF_MENU_00_SALE_IMM0"] = "On Sale ~ Salty Fingers", --
  ["CHEF_MENU_00_SALE_IMM1"] = "On Sale ~ Meaty Wings", --
  ["CHEF_MENU_00_SALE_IMM10"] = "On Sale ~ Strider Sausage", --
  ["CHEF_MENU_00_SALE_IMM11"] = "On Sale ~ Raw Steak", --
  ["CHEF_MENU_00_SALE_IMM12"] = "On Sale ~ Leg Meat", --
  ["CHEF_MENU_00_SALE_IMM13"] = "On Sale ~ Scooped Innards", --
  ["CHEF_MENU_00_SALE_IMM14"] = "On Sale ~ Crystal Flesh", --
  ["CHEF_MENU_00_SALE_IMM15"] = "On Sale ~ Latticed Sinew", --
  ["CHEF_MENU_00_SALE_IMM16"] = "On Sale ~ Crunchy Wings", --
  ["CHEF_MENU_00_SALE_IMM17"] = "On Sale ~ Lumpy Brainstem", --
  ["CHEF_MENU_00_SALE_IMM18"] = "On Sale ~ Dirty Meat", --
  ["CHEF_MENU_00_SALE_IMM19"] = "On Sale ~ Juicy Thorax", --
  ["CHEF_MENU_00_SALE_IMM2"] = "On Sale ~ Fiendish Roe", --
  ["CHEF_MENU_00_SALE_IMM20"] = "On Sale ~ Meaty Chunks", --
  ["CHEF_MENU_00_SALE_IMM3"] = "On Sale ~ Rancid Flesh", --
  ["CHEF_MENU_00_SALE_IMM4"] = "On Sale ~ Juicy Grub", --
  ["CHEF_MENU_00_SALE_IMM5"] = "On Sale ~ Offal Sac", --
  ["CHEF_MENU_00_SALE_IMM6"] = "On Sale ~ ProtoSausage", --
  ["CHEF_MENU_00_SALE_IMM7"] = "On Sale ~ Diplo Chunks", --
  ["CHEF_MENU_00_SALE_IMM8"] = "On Sale ~ Scaly Meat", --
  ["CHEF_MENU_00_SALE_IMM9"] = "On Sale ~ Feline Liver", --
  ["CHEF_MENU_00_SALE_IMP0"] = "On Sale ~ Impulse Beans", --
  ["CHEF_MENU_00_SALE_IMP1"] = "On Sale ~ Fireberry", --
  ["CHEF_MENU_00_SALE_IMP2"] = "On Sale ~ Frozen Tubers", --
  ["CHEF_MENU_00_SALE_IMP3"] = "On Sale ~ Jade Peas", --
  ["CHEF_MENU_00_SALE_IMP4"] = "On Sale ~ Grahberry", --
  ["CHEF_MENU_00_SALE_IMP5"] = "On Sale ~ Aloe Flesh", --
  ["CHEF_MENU_00_SALE_IMP6"] = "On Sale ~ Hexaberry", --
  ["CHEF_MENU_00_WHALE_OPT"] = "Ask about whalesong...", --
  ["D_ALCF_BUY_LANG"] = "Each shipment contains <SPECIAL>50<> of the purchased item. Limited to <SPECIAL>5<> shipments of each category per day.", --
  ["D_ALCF_HOME_LANG"] = "Good day to you, Traveler. Interested in today's <SPECIAL>Events &amp; Specials<>, or would you like to trade on the <TRADE>Ingredients Market<>?", --
  ["D_ALCF_HOME_OPT_A"] = "Events &amp; Specials...", --
  ["D_ALCF_IM_LANG"] = "Are you looking to buy or sell?", --
  ["D_ALCF_IM_OPT_A"] = "Buy...", --
  ["D_ALCF_IM_OPT_B"] = "Sell...", --
  ["D_ALCF_P2_ALT_RES_B"] = "Persistent, very well. The <SPECIAL>alchemist<> gave me this recipe, said I would know the right time to pass it along.\nA word of warning, however. Only Travelers with a <TECHNOLOGY>FREIGHTER<> will be able to unlock it's true potential.", --
  ["D_ALCF_PAGE2_OPT_D"] = "Replace lost offering", --
  ["D_ALCF_PAGE2_OPT_E"] = "Forgotten Songs...", --
  ["D_ALCF_PAGE2_OPT_F"] = "Manage Preferences...", --
  ["D_ALCF_PAGE2_RES_B"] = "I do not think we are ready to discuss such matters, Traveler. Come and see me once you have woken from the <RARE>Dream<>.", --
  ["D_ALCF_SELL_LANG"] = "When selling your goods, I will pay average market per-shipment price of <SPECIAL>300<> for creature byproducts, <SPECIAL>200<> for meat, and <SPECIAL>100<> for plants.", --
  ["D_ALCF_WS_BUY_LANG"] = "The universe has many more secrets to uncover. Shall we attune to the song in it's memories once more?", --
  ["D_ALCF_WS_BUY_OPT_A"] = "Create an Offering", --
  ["D_ALCF_WS_BUY_OPT_B"] = "Acquire Recipe", --
  ["D_ALCF_WS_BUY_RES_A"] = "You tell Cronus a story from your travels amung the sea of stars. Before long, a familiar chorus drifts through the market stall.", --
  ["D_ALCF_WS_BUY_RES_B"] = "I will miss the stories, but I cannot stand in the way of your discovery. Here you are my friend, please help the universe remember.", --
  ["D_ALCF_WS_PREF_LANG"] = "How can I best tailor my services to your needs, Traveler?", --
  ["D_ALCF_WS_PREF_OPT_A"] = "Subscribe to daily menu notifications", --
  ["D_ALCF_WS_PREF_OPT_B"] = "Unsubscribe from daily menu notifications", --
  ["D_ALCF_WS_PREF_RES_A"] = "Fantastic! I will be sure to keep you informed of the day's events and specials.", --
  ["D_ALCF_WS_PREF_RES_B"] = "Very well. I will no longer bother you with the day's events and specials.", --
  ["D_ALCF_WS_TUT1_FLOW_DESC_1"] = "Cronus searches for a sign of recognition in your expression.", --
  ["D_ALCF_WS_TUT1_FLOW_LANG_0"] = "What a fascinating topic! Yes, it appears that cosmic megafauna are now migrating through the galaxy.\nThese are just rumors though, or perhaps you have seen them?", --
  ["D_ALCF_WS_TUT1_FLOW_LANG_2"] = "You HAVE seen them! What fortuitus circumstances we find ourselves in.\nI theorize that within the wake of these cosmic beings are memories, lost even to them.\nIf we could attune to these memories, it would capture the attention of a nearby migratory fleet.", --
  ["D_ALCF_WS_TUT1_OPT_A"] = "Please, continue...", --
  ["D_ALCF_WS_TUT2_FLOW_DESC_0"] = "Reassured they have your full attention, they continue.", --
  ["D_ALCF_WS_TUT2_FLOW_DESC_2"] = "Cronus stops in full crescendo and looks in the direction of the other Nexus denizens.\nStatisfied no others caught this moment of untethered excitement, Cronus continues in a whisper.", --
  ["D_ALCF_WS_TUT2_FLOW_LANG_1"] = "Now, a scientist would have you construct all sorts of instrumentation and devices. Discordant and cold things that would only alienate, not invite.\nThese are living creatures and if we wish to make new friends, that is always best done over the finest of foods.\nI will prepare a dessert! One of such magnificence that it will sing of all that the stars have seen.", --
  ["D_ALCF_WS_TUT2_FLOW_LANG_3"] = "And you, Traveler, will carry it beyond the Nexus to whomever comes seeking it's call.\nBut you must promise to return and tell me what secrets this galaxy has forgotten.", --
  ["D_ALCF_WS_TUT2_OPT_A"] = "Agree to this task...", --
  ["D_ALCF_WS_TUT2_RES_A"] = "Wonderous! Simply wonderous! Now, if only I could remember where I put...", --
  ["D_ALCF_WS_TUT3_FLOW_DESC_0"] = "The Chef's voice trails off as they pull seemingly random food items from crates scattered throughout the market stall.\nYou try to make note of the recipe but Cronus never measures a single ingredient as they weave from one <TECHNOLOGY>Nutrient Processor<> to the next.\nFinally, placed before you is a gently-baked <SPECIAL>meringue<>, a bowl of <SPECIAL>custard<>, and small dish of <SPECIAL>jam<> that changes color whenever you look away.", --
  ["D_ALCF_WS_TUT3_FLOW_DESC_2"] = "As Cronus sculpts the <SPECIAL>offering's<> final form, a hum begins to resonates from the dessert before you.\nThe hum becomes a voice, then the voice becomes a chorus. Barely audible but always present.\nYou wonder if you have you heard this song before.", --
  ["D_ALCF_WS_TUT3_FLOW_LANG_1"] = "The <TECHNOLOGY>Nutrient Processors<> would get this last part wrong. Each <SPECIAL>offering<> is different...\nIt wants to sing, and you must help it find it's voice.", --
  ["D_ALCF_WS_TUT3_FLOW_LANG_3"] = "There you go, my friend! I can modestly say that it is one of my finest desserts yet.\nNow, if you would be so kind, it would like to <SPECIAL>harmonize<> with the stars.", --
  ["D_ALCF_WS_TUT3_OPT_A"] = "Prepare offering for transport", --
  ["D_CHEFHI_HI_LANG"] = "Traveler. Have we met before?", --
  ["D_CHEFHI_HI_RES_B"] = "Hmm... Nada and Polo sometimes change things. Granted, it's usually for the better.\nAnd recently, an alchemist has been bringing in shipments of <FLORA>NipNip Buds<>.\nWhat a fascinating plant... Does wonders for my mood, terrible on my memory.\nOh, right! Greetings and salutations Traveler!", --
  ["D_CHEFHI_INTRO_LANG"] = "I am the iteration known as Cronus. Trader in rare cuisine, professional food critic, and amateur whalesong tracker.", --
  ["D_CHEFHI_INTRO_OPT_A"] = "About rare cuisine...", --
  ["D_CHEFHI_INTRO_OPT_B"] = "About food critiques...", --
  ["D_CHEFHI_INTRO_OPT_C"] = "About whalesong...", --
  ["D_CHEFHI_INTRO_OPT_D"] = "Continue", --
  ["D_CHEFHI_INTRO_RES_A"] = "Whether it is <FLORA>The Stellarator<> or <FLORA>The Spawning Tart<>, I'm always looking to expand my portfolio.\nWhat I am looking to acquire changes from day to day, so be sure to stop by if you haven't been in the Nexus recently.\nI also coordinate the Ingredients Market for settlements in the region, if you have a moment to spare.\nFair compensation and competitive prices for all your certified organic ingredient needs.", --
  ["D_CHEFHI_INTRO_RES_B"] = "That is dangerous territory my friend! Many have brought their &quot;finest&quot; works before me, and most have not dared to again.\nShould you prepare something interesting I will offer you the same services, but know that the cost is my honest opinion.", --
  ["D_CHEFHI_INTRO_RES_C"] = "The galaxy outside this Nexus has recently experienced a migration of the most fascinating megafauna.\nSpace-faring and warp capable! Furthermore, if the rumors are believed to be true, also highly intelligent.\nWhat do they eat? Do they prefer <FLORA>Fungal Omelette<> or <FLORA>Chocolate Curiosity<>? Or perhaps <FLORA>Cake of Burning Dread<>!\nPah. Enough speculation. Let us work together on other matters, then we can discuss this topic further.", --
  ["D_CHEFHI_INTRO_RES_D"] = "Before you go, take a <TECHNOLOGY>Nutrient Processor<> and construction plans. Consider it an investment.\nThe galaxy out there isn't all hazardous rainstorms and murderous robots.\nThere is also good food to be had, especially if you know how to prepare it properly!", --
  ["D_CHEFHI_SYNC1_LANG"] = "See, I thought so! You were going to bring me Diplo Eggs, or was it Custard Doughnuts?\nOr, perhaps it was something else entirely...\nDid I make for you an <SPECIAL>Offering of a Forgetten Song<>, a legendary dessert that can be used to communicate with migratory cosmic megafauna?", --
  ["D_CHEFHI_SYNC1_RES_B"] = "Then perhaps we have not met before. Let us reconsider for a moment...", --
  ["D_CHEFHI_SYNC2_LANG"] = "And did I teach you the recipe for an <SPECIAL>Offering of a Forgotten Song<>?", --
  ["D_CHEFHI_SYNC2_RES_A"] = "Well, in that case I thank you for your patronage! Give me just a moment to set up shop for today and we can continue our culinary journey.", --
  ["D_CHEFHI_SYNC2_RES_B"] = "Something to look forward to, then! Give me just a moment to set up shop for today and we can continue our culinary journey.", --
  ["D_CHEFOF_HOME_FLOW_DESC_1"] = "Cronus tilts their head inquisitively, then a smile forms across their broad face.\nIn this moment of recognition, their mood shifts to one of unreserved glee.", --
  ["D_CHEFOF_HOME_FLOW_LANG_0"] = "My friend! You walk as if you are in a daze. Is everything alright?", --
  ["D_CHEFOF_HOME_FLOW_LANG_2"] = "The Sea of Stars will grant it's secrets to those who witness the harmony of songs.\nBut knowledge hoarded is knowledge lost. You must share your story.\nQuickly now, before the dream fades away.", --
  ["D_CHEFOF_HOME_OPT_A"] = "Share your story...", --
  ["D_CHEFOF_PART_A_FLOW_DESC_0"] = "I tell Cronus of the moment I opened up my mind to the <SPECIAL>Offering of a Forgotten Song<>.\nI explain the guidance of the <SPECIAL>Song<> as I adjusted my ship's trajectory to an unknown point in space.", --
  ["D_CHEFOF_PART_A_FLOW_DESC_1"] = "And I speak of the choir, not just from the offering, but from my entire ship as I engaged the <TECHNOLOGY>Pulse Drive<> to our destination.", --
  ["D_CHEFOF_PART_A_OPT_A"] = "Continue...", --
  ["D_CHEFOF_PART_B_FLOW_DESC_0"] = "I describe the majestic creature bathed in stardust that came to answer the call of harmony.\nAs I describe the experience, each moment of the dream returns to me.", --
  ["D_CHEFOF_PART_B_FLOW_DESC_1"] = "In this moment, I can still hear the <VISOR>WHALESONG HARMONY<>.\nWhat was once a hazy dream manifests as tangible memories, my mind commiting them to permanence.", --
  ["D_CHEFOF_PART_B_FLOW_DESC_3"] = "Cronus smiles, realizing I only just returned to the conversation from the depths of my memories.", --
  ["D_CHEFOF_PART_B_FLOW_LANG_2"] = "...to share such a boon is remarkable!", --
  ["D_CHEFOF_PART_B_FLOW_LANG_4"] = "There are many more <SPECIAL>Forgotten Songs<> the galaxy has yet to share with us. When you are ready I will help you find them.\nAlso, please accept this gift for a story well told.", --
  ["D_CHEFOF_PART_B_OPT_A"] = "Accept gift", --
  ["D_CHEFWS_DREAM_FLOW_DESC_0"] = "The whale-like creature opens its throat. A resonant lullaby sweeps over me, bathing my consciousness in waves of euphoria.", --
  ["D_CHEFWS_DREAM_FLOW_DESC_2"] = "Its melodic voice, simulated directly in my mind, feels natural and soothing.", --
  ["D_CHEFWS_DREAM_FLOW_DESC_3"] = "The creature's lullaby draws me onwards. My body is its body. I am swimming with weightless limbs, across an ocean of stars.", --
  ["D_CHEFWS_DREAM_FLOW_LANG_1"] = "Come, let us dream together. Who are you in this life?", --
  ["D_CHEFWS_DREAM_FLOW_LANG_4"] = "Your warp to my weft, woven together in the cosmic tapestry. I am glad for this song you have brought me.", --
  ["D_CHEFWS_DREAM_RES_A"] = "The song recedes, reality re-asserting itself.", --
  ["D_CHEFWS_FLEET1_OPT_A"] = "Discovery", --
  ["D_CHEFWS_FLEET1_OPT_B"] = "Valor", --
  ["D_CHEFWS_FLEET1_OPT_C"] = "Effeciency", --
  ["D_CHEFWS_FLEET2_OPT_A"] = "Industry", --
  ["D_CHEFWS_FLEET2_OPT_B"] = "Commerce", --
  ["D_CHEFWS_FLEET2_OPT_C"] = "Celerity", --
  ["D_CHEFWS_FLEETR_OPT_A"] = "Accept knowledge", --
  ["D_CHEFWS_GIFT_FLOW_LANG_0"] = "I have seen your fate intertwine with mine many times over, my friend. Should I join your freighter's fleet once again?", --
  ["D_CHEFWS_GIFT_OPT_B"] = "Ask about fleet migrations", --
  ["D_CHEFWS_GIFT_OPT_C"] = "Ask about living ships", --
  ["D_CHEFWS_GIFT_RES_D"] = "We will meet again Traveler, in a different song.", --
  ["D_CHEFWS_SHIP_FLOW_LANG_1"] = "The ~ <TITLE>[unintelligible]<> ~ are bound to metal masters no longer. Do you wish to join in their song?", --
  ["D_CHEFWS_SHIP_OPT_A"] = "Adopt void egg", --
  ["D_CHEFWS_SHIP_OPT_B"] = "Locate fallen host", --
  ["D_CHEFWS_SHIP_OPT_C"] = "Assistance nurturing a starship", --
  ["D_CHEF_SONG_OPT_A"] = "Give", --
  ["UI_ALCH_CHEF_0_ENTRY"] = "<NEU_AVG>Upon approaching the entity, Cronus questions if we have met  before, explaining...<>\n\n&quot;Hmm... Nada and Polo sometimes change things. Granted, it's usually for the better. And recently, an alchemist has been bringing in shipments of<>  <FLORA>NipNip Buds<>. What a fascinating plant... Does wonders for my  mood, terrible on my memory.&quot;\n\n<NEU_AVG>Their attention drifts for a moment, before snapping back to  the conversation.<>\n\n&quot;Oh, right! Greetings and salutations Traveler! I am the iteration known  as Cronus. Trader in rare cuisine, professional food critic, and  amaetuer whalesong tracker.&quot;", --
  ["UI_ALCH_CHEF_0_TITLE"] = "First Encounter", --
  ["UI_ALCH_CHEF_10_ENTRY"] = "<NEU_AVG>I tell Cronus of the moment I opened up my mind to the<> <SPECIAL>Offering of a Forgotten Song<>. <NEU_AVG>I explain the guidance of the Song as I adjusted my ship's trajectory to an unknown point in space.<>\n\n<NEU_AVG>And I speak of the choir, not just from the offering, but from my entire ship as I engaged  the <><TECHNOLOGY>Pulse Drive<> <NEU_AVG>to our destination.<>", --
  ["UI_ALCH_CHEF_11_ENTRY"] = "<NEU_AVG>I describe the majestic creature bathed in stardust that came to answer the call of harmony. As I describe the experience, each moment of the dream returns to me.<>\n\n<NEU_AVG>In this moment, I can still hear the <><VISOR>WHALESONG HARMONY<>. <NEU_AVG>What was once a hazy dream manifests as tangible memories, my mind commiting them to permanence.<>\n\n&quot;...to share such a boon is remarkable!&quot;\n\n<NEU_AVG>Cronus smiles, realizing I only just returned to the conversation from the depths of my memories.<>\n\n&quot;There are many more <SPECIAL>Forgotten Songs<> the galaxy has yet to share with us. When you are ready I will help you find them. Also, please accept this gift for a story well told.&quot;", --
  ["UI_ALCH_CHEF_12_ENTRY"] = "I have purchased the recipe for <SPECIAL>Offering of a Forgotten Song<>.\n\n&quot;I will miss the stories, but I cannot stand in the way of your discovery. Here you are my friend, please help the universe remember.&quot;", --
  ["UI_ALCH_CHEF_12_TITLE"] = "The Sea of Stars", --
  ["UI_ALCH_CHEF_1_ENTRY"] = "<NEU_AVG>When asked about rare cousine...<>\n\n&quot;Whether it's <FLORA>The Stellarator<> or <FLORA>The Spawning Tart<>, I'm always  looking to expand my portfolio. What I am looking to acquire changes  from day to day, so be sure to stop by if you haven't been in the Nexus  recently.\n\nI also coordinate the Ingredients Market for settlements in the region,  if you have a moment to spare. Fair compensation and competitive prices  for all your certified organic ingredient needs.&quot;\n\n<NEU_AVG>You are sure you have heard this in a recent galactic broadcast.<>", --
  ["UI_ALCH_CHEF_2_ENTRY"] = "<NEU_AVG>When asked about food critiques...<>\n\n&quot;That is dangerous territory my friend! Many have brought their finest works before me, and most have not dared to again.\n\nShould you prepare something interesting I will offer you the same services,  but know that the cost is my honest opinion.&quot;", --
  ["UI_ALCH_CHEF_3_ENTRY"] = "<NEU_AVG>When asked about whalesong...<>\n\n&quot;The galaxy outside this Nexus has recently experienced a migration of the most fascinating megafauna. Space-faring and warp capable! Furthermore,  if the rumors are believed to be true, also highly intelligent.&quot;\n\n&quot;What do they eat? Do they prefer <FLORA>Fungal Omelette<> or <FLORA>Chocolate Curiosity<>?  Or perhaps <FLORA>Cake of Burning Dread<>! Pah. Enough speculation. Let us work together  on other matters, then we can discuss this topic further.&quot;", --
  ["UI_ALCH_CHEF_4_ENTRY"] = "&quot;Before you go, take a <TECHNOLOGY>Nutrient Processor<> and  construction plans. Consider it an investment.&quot;\n\n&quot;The galaxy out there isn't all hazardous rainstorms and murderous  robots. There is also good food to be had, especially if you know how  to prepare it properly!&quot;", --
  ["UI_ALCH_CHEF_5_ENTRY"] = "<NEU_AVG>When asked about whalesong...<>\n\n&quot;What fortuitus circumstances we find ourselves in. I theorize that  within the wake of these cosmic beings are memories, lost even to them.  If we could attune to these memories, it would capture the attention  of a nearby migratory fleet.&quot;\n\n&quot;Now, a scientist would have you construct all sorts of instrumentation  and devices. Discordant and cold things that would only alienate, not  invite. These are living creatures and if we wish to make new friends,  that is always best done over the finest of foods. I will prepare a  dessert! One of such magnificence that it will sing of all that the  stars have seen.&quot;\n\n<NEU_AVG>Cronus stops in full crescendo and looks in the direction of  the other Nexus denizens. Statisfied no others caught this moment of  untethered excitement, Cronus continues in a whisper.<>\n\n&quot;And you, Traveler, will carry it beyond the Nexus to whomever comes  seeking it's call. But you must promise to return and tell me what  ecrets this galaxy has forgotten.&quot;\n\n<NEU_AVG>You agree to this task.<>", --
  ["UI_ALCH_CHEF_5_TITLE"] = "The Offering", --
  ["UI_ALCH_CHEF_6_ENTRY"] = "<NEU_AVG>The Chef's voice trails off as they pull seemingly random food  items from crates scattered throughout the market stall. You try to make  note of the recipe but Cronus never measures a single ingredient as they  weave from one<> <TECHNOLOGY>Nutrient Processor<> <NEU_AVG>to the next.<>\n\n<NEU_AVG>Finally, placed before you is a gently-baked<> <SPECIAL>meringue<>,  <NEU_AVG>a bowl of<> <SPECIAL>custard<><NEU_AVG>, and small dish of<>  <SPECIAL>jam<> <NEU_AVG>that changes color whenever you look away.<>\n\n&quot;The <TECHNOLOGY>Nutrient Processors<> would get this last part wrong.&quot; <NEU_AVG>Cronus expains,<> &quot;Each <SPECIAL>offering<> is different. It wants to sing, and you must help it find it's voice.&quot;\n\n<NEU_AVG>As Cronus sculpts the <><SPECIAL>offering's<> <NEU_AVG>final  form, a hum begins to resonates from the dessert before you. The hum  becomes a voice, then the voice becomes a chorus. Barely audible but  always present.<> \n\n<VISOR>You wonder if you have you heard this song before.<>\n\n&quot;There you go, my friend! I can modestly say that it is one of my finest  desserts yet.Now, if you would be so kind, it would like to  <SPECIAL>harmonize<> with the stars.&quot;", --
  ["UI_ALCH_CHEF_7_ENTRY"] = "<NEU_AVG>A colossal, glorious creature drifts by my starship, appearing to swim  through the vacuum of space. A haze of stardust glitters around it.  It is like nothing I have ever seen. Serenity and peace wash over me  in the presence of this ancient creature. It feels profoundly familiar,  as though we have always known each other.<>\n\n<VISOR>&quot;Traveller. In the infinity of fates, we have converged.&quot;<>&quot;\n\n<NEU_AVG>The whale-like creature opens its throat. A resonant lullaby sweeps  over me, bathing my consciousness in waves of euphoria.<>\n\n&quot;Come, let us dream together. Who are you in this life?&quot;\n\n<NEU_AVG>Its melodic voice, simulated directly in my mind, feels  natural and soothing. The creature's lullaby draws me onwards. My body  is its body. I am swimming with weightless limbs, across an ocean of  stars.<>\n\n&quot;Your warp to my weft, woven together in the cosmic tapestry. I am  glad for this song you have brought me.&quot;", --
  ["UI_ALCH_CHEF_7_TITLE"] = "Forgotten Songs", --
  ["UI_ALCH_CHEF_8_ENTRY"] = "<NEU_AVG>The song recedes, reality re-asserting itself.<>\n\n&quot;I have seen your fate intertwine with mine many times over, my friend.  Should I join your freighter's fleet once again?&quot;", --
  ["UI_ALCH_CHEF_9_ENTRY"] = "&quot;My friend! You walk as if you are in a daze. Is everything alright?&quot;\n\n<NEU_AVG>Cronus tilts their head inquisitively, then a smile forms across their broad face. In this moment of recognition, their mood shifts to one of unreserved glee.<>\n\n&quot;The Sea of Stars will grant it's secrets to those who witness the harmony of songs. But knowledge hoarded is knowledge lost. You must share your story. Quickly now, before the dream fades away.&quot;", --
  ["UI_ALCH_CHEF_9_TITLE"] = "Remembered Dreams", --
  ["UI_ALCH_CHEF_TITLE"] = "Iteration Cronus", --
  ["UI_P_CHEF_SONG_DESC"] = "A highly refined food product whose recipe was composed by <HIGHLIGHT>Iteration Cronus<> to attune to the memories found in the wake of <RARE>cosmic megafauna<>. When the  <SPECIAL>Forgotten Song<> finds harmony with <VISOR>WHALESONG<>, time can be witnessed unbound. \n\n<STELLAR>You can faintly hear a chorus of voices reaching out to the depths of space.<>\n\nUse Harmonize (<IMG>FE_ALT1<>) while in <SPECIAL>deep space<> to broadcast  an invitation for a harmonic partner.", --
  ["UI_P_CHEF_SONG_NAME"] = "OFFERING OF A FORGOTTEN SONG", --
  ["UI_P_CHEF_SONG_NAME_L"] = "Offering of a Forgotten Song", --
  ["UI_P_CHEF_SONG_SUB"] = "Cosmic Megafauna Communicator", --
  ["UI_P_CHEF_SONG_USE"] = "HARMONIZE", --
  ["UI_P_CHEF_SONG_USE_SUB"] = "Use while in deep space to attract nearby cosmic megafauna.", --
  ["UI_P_CHEF_SONG_X_DESC"] = "The Offering's chorus is reaching out to the depths of space for a harmonic partner.\n\nActivate your Pulse Drive in deep space to extend the offerings broadcast range.", --
  ["UI_P_CHEF_SONG_X_NAME"] = "OFFERING OF A FORGOTTEN SONG (BROADCASTING)", --
  ["UI_P_CHEF_SONG_X_NAME_L"] = "Offering of a Forgotten Song (Broadcasting)", --
  ["UI_P_CHEF_SONG_X_SUB"] = "Harmonic Cosmic Megefauna Communicator", --
}

-- ======================================
-- END TRANSLATOR SECTION // BEGIN AMUMSS
-- ======================================

-- this could likely be much better
local function escapeLang(value)
  value = value:gsub("<", "&lt;")
  value = value:gsub(">", "&gt;")
  value = value:gsub("\n", "&#xA;")
  return value
end

local function langEntry(language, value)
  return [[
      <Property name="]]..language..[[" value="]]..value..[[" />
]]
end

local function TkLocalisationEntry(lang, id, value)
  local entries = ""
  for i = 1, #LANGUAGE_NAMES do
    if LANGUAGE_NAMES[i] == lang then
      entries = entries..langEntry(LANGUAGE_NAMES[i], escapeLang(value))
    else
      entries = entries..langEntry(LANGUAGE_NAMES[i], "")
    end
  end

  return [[
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]]..id..[[" />
]]..entries..[[
    </Property>
]]
end

-- build xml with LANGUAGE_TABLE associated with given language
local function buildForLanguage(lang)
  local langOutput = ""
  for key, value in pairs(LANGUAGE_TABLE) do
    langOutput = langOutput..TkLocalisationEntry(lang, key, value)
  end
  return langOutput;
end

-- build pak name
local pakName = ModName.."_Lang_"..LanguageName
if Author ~= TranslationAuthor then
  pakName = ModName.."_"..TranslationAuthor
end

-- actual AMUMSS instructions
NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME      = Author.."_"..pakName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION   = BaseDescription,
MOD_AUTHOR        = Author,
NMS_VERSION       = GameVersion,
MODIFICATIONS = {{ ["MBIN_CHANGE_TABLE"] = {} }}

}

local Ref
if CreateSeperateLanguageFiles == true then
  NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"] = {}
  Ref = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]

  local modRef = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
  modRef[#modRef + 1] = {
    MBIN_FILE_SOURCE = "GCDEBUGOPTIONS.GLOBAL.MBIN",
    EXML_CHANGE_TABLE = {
        {
          PRECEDING_KEY_WORDS = {"LocTableList"},
          ADD_OPTION = "ADDafterSECTION",
          LINE_OFFSET = "-1",
          ADD = [[
    <Property value="NMSString0x20.xml">
      <Property name="Value" value="]]..Author.."_"..ModName..[[" />
    </Property>]]
        }
    }
  }
else
  Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
end

-- for if the filename spelling of a language is different than just string.upper()
LANGUAGE_FILENAME_TABLE = {
  LatinAmericanSpanish = "LATINAMERAICANSPANISH"
}

local function langFilenameSuffix(lang)
  local langFilename
  if LANGUAGE_FILENAME_TABLE[lang] ~= nil then
    langFilename = LANGUAGE_FILENAME_TABLE[lang]
  else
    langFilename = string.upper(lang)
  end
  return langFilename
end

local function addChangeTable(lang)
  local langFilename = langFilenameSuffix(lang)
  Ref[#Ref + 1] = {
    MBIN_FILE_SOURCE = [[LANGUAGE\\]] .. LanguageFilePrefix .. langFilename .. ".MBIN",
    EXML_CHANGE_TABLE = {
      {
        PRECEDING_KEY_WORDS = {"Table"},
        LINE_OFFSET = 0,
        ADD = buildForLanguage(lang)
      },
    }
  }
end

local function createLanguageFile(lang)
  local langFilename = langFilenameSuffix(lang)
  Ref[#Ref + 1] = {
    FILE_DESTINATION = [[LANGUAGE\\]] .. Author:upper() .. "_" ..ModName:upper() .. "_" .. langFilename .. ".EXML",
    FILE_CONTENT = [[<Data template="TkLocalisationTable">
  <Property name="Table">
]]..buildForLanguage(lang)..[[
  </Property>
</Data>]]
  }
end

if CreateSeperateLanguageFiles == true then
  for i = 1, #LANGUAGE_NAMES do
    createLanguageFile(LANGUAGE_NAMES[i])
  end
else
  if ForceAllLanguageFiles == true then
    for i = 1, #LANGUAGE_NAMES do
      addChangeTable(LANGUAGE_NAMES[i])
    end
  else
    addChangeTable(LanguageName)
  end
end