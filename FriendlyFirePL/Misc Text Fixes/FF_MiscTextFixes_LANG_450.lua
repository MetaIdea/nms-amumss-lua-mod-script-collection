----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "LANG"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."



--------------------------------------------------
-- credits
--------------------------------------------------
--[[

bk201
pointing out typos, providing feedback on changes

Devilin Pixy, members of NMS Discord
pointing out typos

Gumsk, Lyravega, Alchemist, Wberto
LUA script optimizations

]]



----------------------------------------------------------------------------------------------------
-- localization file 1
----------------------------------------------------------------------------------------------------

-- UI - new save message in multiplayer
TEXT_SAVE_MULTIPLAYER = "&lt;IMG&gt;SLASH&lt;&gt;Multiplayer&lt;IMG&gt;SLASH&lt;&gt;Player position not saved.&#xA;&#xa0; Mission progress and player inventory saved."

-- UI - new save message for Nexus mission
TEXT_SAVE_NEXUSMISSION = "&lt;IMG&gt;SLASH&lt;&gt; Nexus mission &lt;IMG&gt;SLASH&lt;&gt; Player inventory saved.&#xA;&#xa0; Mission progress and player position not saved."

-- DIALOGUE - fixed typo in word "travelers"
TEXT_TRAVELLER_DIALOGUE = "Have the travellers come? Are they here?"

-- UI - new verbiage for Solar Panel Power stat
TEXT_LIFESUPPORT_SOLAR = "Daytime Efficiency"

-- OBJECT - fixed wrong growing time info for Albumen Pearl plant
TEXT_ALBUMEN_GROWTIME = 
[[
A medium-sized, farmable Crystal Orb that yields an occasional harvest of valuable Albumen Pearls.&#xA;&#xA;
Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;
Approximate growing time: &lt;TECHNOLOGY&gt;2 hours&lt;&gt;
]]

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_HOT = 
[[
Provides relief from intense atmospheric and solar heat through a threaded dermal distribution network of liquid frenium.&#xA;&#xA;
This device grants user increased resistance to heat damage. Operates automatically once constructed within user's exosuit inventory.
]]

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_COLD = 
[[
Heat capillaries threaded through a user's suit that evenly distributes liquid calidium to maintain a comfortable body temperature.&#xA;&#xA;
This device grants increased resistance to cold damage. Operates automatically once constructed within user's exosuit inventory.
]]

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_TOXIC = 
[[
Reactive compounds within the suppressor remove toxic liquids that fall on the user, thereby reducing peril and choking hazards.&#xA;&#xA;
This device grants increased resistance to toxic damage. Operates automatically once constructed within user's exosuit inventory.
]]

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_RADIO = 
[[
Greatly reduces user peril during the exploration of irradiated worlds. Micro-vibrations increase electromagnetic wave reflection, thereby reducing absorption.&#xA;&#xA;
This device grants increased resistance to radiation damage. Operates automatically once constructed within user's exosuit inventory.
]]

-- DIALOGUE - new verbiage for "offer to buy lifeform's starship" option
TEXT_BUY_STARSHIP = "Buy the lifeform's starship"

-- UI - changed label for Multi-Tool's damage stat
TEXT_LABEL_DAMAGESTAT = "Damage Per Second"

-- ITEM - added info about using higher level Atlas Pass on lower level locks
TEXT_ATLASPASS_V2 = 
[[
Security and permissions pass granted to specific travellers by many primary galactic species.&#xA;&#xA;
Provides access to mid-tier restricted areas and outpost systems. Can be used to overwrite AtlasPass v1 credentials.
]]

-- ITEM - added info about using higher level Atlas Pass on lower level locks
TEXT_ATLASPASS_V3 = 
[[
Security and permissions pass granted to specific travellers by many primary galactic species.&#xA;&#xA;
Provides access to high level restricted areas and outpost systems. Can be used to overwrite both AtlasPass v1 and v2 credentials.
]]

-- DIALOGUE - fixed wrong resource name on Vykeen monolith offering
TEXT_MONOLITH_FERRITE = "Surrender Magnetised Ferrite"

-- UI - new message for exiting pulse jump near space station
TEXT_PULSE_SPACESTATION = "%ITEM% Disengaged &lt;IMG&gt;SLASH&lt;&gt; Space Station Proximity"

-- OBJECT - various base building modules - fixed capitalization in subtitle
TEXT_BUILD_SHARED_MODULE = "Base Construction Module"

-- OBJECT - various base building modules - fixed capitalization in subtitle
TEXT_BUILD_SHARED_ITEM = "Base Construction Item"

-- OBJECT - Signal Scanner - fixed capitalization in subtitle
TEXT_BUILD_SIGNALSCANNER_SUB = "Environmental Scanner"

-- OBJECT - Save Beacon - fixed capitalization in subtitle
TEXT_BUILD_SAVEBEACON_SUB = "Portable Waypoint Marker"

-- OBJECT - Autonomous Mining Unit - fixed capitalization in subtitle
TEXT_BUILD_MININGUNIT_SUB = "Portable Mining Device"

-- OBJECT - Communications Station, Message Module - fixed capitalization in subtitle
TEXT_BUILD_COMMBALL_SUB = "Communications Terminal"

-- OBJECT - Health Station - fixed capitalization in subtitle
TEXT_BUILD_HEALTHSTATION_SUB = "Health Recharge Module"

-- OBJECT - Hydroponic Tray, Standing Planter - fixed capitalization in subtitle
TEXT_BUILD_FARMING_SUB = "Farming Technology"

-- OBJECT - Race Initiator, Obstacle and Amplifier - change subtitle
TEXT_BUILD_RACING_SUB = "Exocraft Racetrack Component"

-- OBJECT - Albumen Pearl plant - changed subtitle to be in line with other plantable flora
TEXT_BUILD_ALBUMEN_SUB = "Plantable Seed"

-- OBJECT - Galactic Trading Terminal - fixed capitalization in subtitle
TEXT_BUILD_TRADING_SUB = "Trading Terminal"

-- OBJECT - Storage Containers - fixed capitalization in subtitle
TEXT_BUILD_STORAGE_SUB = "Base Storage Unit"

-- OBJECT - various specialist terminals - fxied capitalization in subtitle
TEXT_BUILD_SPECIALIST_SUB = "Base Specialist Terminal"

-- OBJECT - Pilgrim Geobay - changed generic subtitle to unique one
TEXT_BUILD_PILGRIM_SUB = "Light Motorbike Storage Bay"

-- OBJECT - Nomad Geobay - changed generic subtitle to unique one
TEXT_BUILD_NOMAD_SUB = "Hovercraft Docking Bay"

-- OBJECT - Roamer Geobay - changed generic subtitle to unique one
TEXT_BUILD_THEROAMEREXOCRAF_SUB = "Versatile Rover Storage Bay"

-- OBJECT - Colossus Geobay - changed generic subtitle to unique one
TEXT_BUILD_COLOSSUS_SUB = "Freight Transporter Storage Bay"



----------------------------------------------------------------------------------------------------
-- localization file 3
----------------------------------------------------------------------------------------------------

-- ITEM - removed double dot from Cactus Flesh description
TEXT_CACTUSFLESH_DESC = 
[[
Succulent, edible cactus flesh from the &lt;TRADEABLE&gt;Echinocactus plant&lt;&gt;. As well as being juicy on the tongue, the flesh has many industrial uses.&#xA;&#xA;
The Echinocactus thrives only on &lt;STELLAR&gt;desert planets&lt;&gt;, but can be farmed in all environments with the aid of a &lt;TECHNOLOGY&gt;Hydroponics Tray&lt;&gt;.
]]

-- OBJECT - fixed description of NipNip plant
TEXT_NIPNIP_GROWTIME = 
[[
This medicinal herb is known for its pungent buds, which are harvested to produce Gek Nip. NipNip thrives in dank environments, and often grows as a weed.&#xA;&#xA;
Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;
Approximate growing time: &lt;TECHNOLOGY&gt;4 hours&lt;&gt;
]]

-- OBJECT - changed verbiage for "better ratios" in refiners descriptions
TEXT_BETTERRATIO_REFINER2 = 
[[
A vital piece of planetary equipment. The &lt;TECHNOLOGY&gt;Refiner&lt;&gt; allows gathered substances to be processed into more powerful and more advanced materials.&#xA;&#xA;
The Medium Refiner features &lt;COMMODITY&gt;two&lt;&gt; input slots, allowing user to combine more substances and utilise new refining techniques.&#xA;&#xA;
The Medium Refiner must be installed in a &lt;VAL_ON&gt;Habitable Base&lt;&gt;, but does not require additional power sources.
]]

-- OBJECT - changed verbiage for "better ratios" in refiners descriptions
TEXT_BETTERRATIO_REFINER3 = 
[[
A vital piece of planetary equipment. The &lt;TECHNOLOGY&gt;Refiner&lt;&gt; allows gathered substances to be processed into more powerful and more advanced materials.&#xA;&#xA;
The Large Refiner features &lt;COMMODITY&gt;three&lt;&gt; input slots, allowing user to combine more substances and utilise new refining techniques.&#xA;&#xA;
The Large Refiner must be installed in a &lt;VAL_ON&gt;Habitable Base&lt;&gt;, but does not require additional power sources.
]]

-- TECH - specified the exact distance range for Teleport Receiver
TEXT_TELEPORTER_RANGE = 
[[
A device that modulates standard starship communication signals to &lt;TECHNOLOGY&gt;enable the transport of matter&lt;&gt; as well as data.&#xA;&#xA;
Starships fitted with such a device can send and receive products and substances to a user's exosuit over a distance of &lt;VAL_ON&gt;up to 150 units&lt;&gt;.
]]

-- UI - added missing text entry for Sentinel Mech name for Analysis Visor
TEXT_SENTINEL_MECHNAME = "Sentinel Mech"

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_SIGNAL_1 = 
[[
Exosuit detected &lt;STELLAR&gt;automated signal broadcast&lt;&gt;&#xA;
Reach the marked signal
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_VISOR_1 = 
[[
Test the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;
The &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; highlights points of interest&#xA;
Analyse &lt;TRADEABLE&gt;Flora&lt;&gt;, &lt;COMMODITY&gt;Fauna&lt;&gt; or &lt;EARTH&gt;Minerals&lt;&gt; to earn units
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_VISOR_2 = 
[[
Test the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)&#xA;
With the Visor active, hold &lt;IMG&gt;BINOCSCAN&lt;&gt; to analyse target&#xA;
The &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; highlights points of interest
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_TERRAIN_1 = 
[[
Install the &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;&#xA;
Open the Inventory with &lt;IMG&gt;INVENTORY&lt;&gt;&#xA;
Select empty Multi-Tool slot with &lt;IMG&gt;TECHMENU&lt;&gt; to begin
]]

-- QUEST - removed dot from end of a tooltip line
TEXT_AWAKENIGNS_DOT = 
[[
All systems functional&#xA;
Seek answers among the stars&#xA;
Use &lt;IMG&gt;THRUST&lt;&gt; to take off
]]



----------------------------------------------------------------------------------------------------
-- localization file 4
----------------------------------------------------------------------------------------------------

-- ITEM - added crafting tooltip for Warp Hypercore
TEXT_CRAFT_HYPERCORE = "Craft %ITEM% from &lt;FUEL&gt;Antimatter&lt;&gt; and &lt;RARE&gt;Storm Crystal&lt;&gt;. Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;."

-- OBJECT - removed "Nitride" from sodium crystals
TEXT_SODIUM_CRYSTALS = "Sodium Crystals"

-- TECH - fixed description for Osmosis Generator (reduced fuel usage)
TEXT_SUBMARINE_RECHARGE = 
[[
Installed into the drive system aboard the &lt;STELLAR&gt;Nautilon Submarine&lt;&gt;.&#xA;&#xA;
Captures energy by exploiting the saline gradient in deep water environments, reducing the fuel consumption of &lt;TECHNOLOGY&gt;Humboldt Drive&lt;&gt; by a substantial amount.
]]

-- UI - fixed typo in word "Nitrogren" in names of refining recipies
TEXT_NITROGEN_REFINING = "Requested Operation: Harness Organic Nitrogen"

-- UI - added portal glyph names from Starbirth quest and a "DATA CORRUPTED" label for missing names for the Catalogue and Guide
TEXT_PORTALGLYPH_01 = "THE STAR OVER WATER"
TEXT_PORTALGLYPH_02 = "THE HUNTER"
TEXT_PORTALGLYPH_03 = "THE REFLECTION"
TEXT_PORTALGLYPH_04 = "THE ANCIENT GIANT"
TEXT_PORTALGLYPH_05 = "THE OBSCURED COMPANION"
TEXT_PORTALGLYPH_06 = "THE ASCENDING ORB"
TEXT_PORTALGLYPH_07 = "THE SAILOR"
TEXT_PORTALGLYPH_08 = "THE LOWLY INSECT"
TEXT_PORTALGLYPH_09 = "// DATA CORRUPTED //"
TEXT_PORTALGLYPH_10 = "THE SPIRAL OF REALITY"
TEXT_PORTALGLYPH_11 = "THE ANOMALY"
TEXT_PORTALGLYPH_12 = "THE OCEAN KING"
TEXT_PORTALGLYPH_13 = "// DATA CORRUPTED //"
TEXT_PORTALGLYPH_14 = "THE VESSEL TO BEYOND"
TEXT_PORTALGLYPH_15 = "// DATA CORRUPTED //"
TEXT_PORTALGLYPH_16 = "// DATA CORRUPTED //"

-- ITEM - removed info about Advanced Ion Batteries from description of Ionized Cobalt
TEXT_DESC_IONCOBALT = "A highly energised form of &lt;TECHNOLOGY&gt;Cobalt&lt;&gt;. This processed metal is in widespread use as a key component in the creation of &lt;TECHNOLOGY&gt;advanced technologies and structures&lt;&gt;."

-- ITEM - removed info about undeground deposits from description of Platinum
TEXT_DESC_PLATINUM = 
[[
Extremely valuable interstellar trading mineral, typically &lt;COMMODITY&gt;mined from asteroids&lt;&gt;.&#xA;&#xA;
Universally prized for its hardiness and versatility.
]]

-- ITEM - added a bit of info to description of Emeril to bring it in line with other stellar metals
TEXT_DESC_EMERIL = 
[[
A &lt;STELLAR&gt;chromatic metal&lt;&gt;, generated by fusion in the heart of a star. Such stellar material ends up forming deposits in the crust of local planets.&#xA;&#xA;
Emeril is found on planets orbiting &lt;TRADEABLE&gt;green stars&lt;&gt;, and can be placed in a &lt;TECHNOLOGY&gt;Refiner&lt;&gt; to create purified &lt;STELLAR&gt;Chromatic Metal&lt;&gt; for use in the manufacture of advanced technologies.
]]

-- QUEST - added info about increased drain on hazard protection during storms
TEXT_TUTORIAL_STORMS_1 = 
[[
Storms cause increased drain on &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; module&#xA;
Seek shelter in natural caves or various buildings&#xA;
Charge your &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; with &lt;CATALYST&gt;Sodium&lt;&gt;&#xA;
Use the Scanner (&lt;IMG&gt;SCAN&lt;&gt;) to locate &lt;CATALYST&gt;Sodium&lt;&gt;
]]

-- QUEST - added info about increased drain on hazard protection during storms
TEXT_TUTORIAL_STORMS_2 = 
[[
Storms cause increased drain on &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; module&#xA;
Seek shelter in natural caves or various buildings&#xA;
Charge your &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; with &lt;CATALYST&gt;Sodium&lt;&gt;&#xA;
To locate Sodium, equip the Multi-Tool (reach over your shoulder and press &lt;IMG&gt;VR_HOLSTER&lt;&gt;)
]]

-- QUEST - added info about increased drain on hazard protection during storms
TEXT_TUTORIAL_STORMS_3 = 
[[
Storms cause increased drain on &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; module&#xA;
Seek shelter in natural caves or various buildings&#xA;
Charge your &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; with &lt;CATALYST&gt;Sodium&lt;&gt;&#xA;
To locate Sodium, point at the rear of your &lt;TECHNOLOGY&gt;Multi-Tool&lt;&gt;
]]

-- QUEST - added info about increased drain on hazard protection during storms
TEXT_TUTORIAL_STORMS_4 = 
[[
Storms cause increased drain on &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; module&#xA;
Seek shelter in natural caves or various buildings&#xA;
Charge your &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; with &lt;CATALYST&gt;Sodium&lt;&gt;&#xA;
To locate Sodium, point at 'Scan' and select with &lt;IMG&gt;FE_ALTSELECT&lt;&gt;
]]

-- QUEST - added info about increased drain on hazard protection during storms
TEXT_TUTORIAL_STORMS_5 = 
[[
Storms cause increased drain on &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; module&#xA;
Seek shelter in natural caves or various buildings&#xA;
Charge your &lt;TECHNOLOGY&gt;Hazard Protection&lt;&gt; with &lt;CATALYST&gt;Sodium&lt;&gt;&#xA;
Sodium has been marked by your Scanner
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_SIGNAL_2 = 
[[
Reach the marked signal&#xA;
Use the &lt;TECHNOLOGY&gt;Jetpack&lt;&gt; (&lt;IMG&gt;JUMP&lt;&gt;) to fly short distances&#xA;
Or the &lt;TECHNOLOGY&gt;Exosuit Speed Boost&lt;&gt; (&lt;IMG&gt;RUN&lt;&gt;) to sprint
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_SIGNAL_3 = 
[[
Reach the marked signal&#xA;
Exosuit detected &lt;STELLAR&gt;automated signal broadcast&lt;&gt;&#xA;
Use the &lt;TECHNOLOGY&gt;Scanner&lt;&gt; (&lt;IMG&gt;SCAN&lt;&gt;) to highlight &lt;COMMODITY&gt;key resources&lt;&gt;
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_CHART_1 = 
[[
Structure location uploaded to exosuit's display&#xA;
Reach the &lt;STELLAR&gt;marked coordinates&lt;&gt;
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_VISOR_3 = 
[[
Use the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate starship&#xA;
Return to the ship and continue repairs
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_VISOR_3_VR = 
[[
Use &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to locate starship&#xA;
Raise your &lt;STELLAR&gt;%SECONDARY_HAND%&lt;&gt; beside your head, then press &lt;IMG&gt;AIM&lt;&gt; to toggle&#xA;
Return to the ship and continue repairs
]]

-- QUEST - removed the fake "0 / 1" counters from Awakenings tooltips
TEXT_AWAKENINGS_RESEARCH_1 = 
[[
Deploy the &lt;TECHNOLOGY&gt;Construction Research Unit&lt;&gt;&#xA;
Access the Build Menu with &lt;IMG&gt;BUILD_MENU&lt;&gt;
]]

-- QUEST - Nexus missions - removed dots from tooltip about returning to Space Anomaly
TEXT_NEXUS_RETURN_DOTS =
[[
Return to the Nexus to receive your reward&#xA;
Summon the Space Anomaly from the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;) when in space
]]

-- UI - replaced  the // signs in NPC trader space encounter OSD with the fancy slash icon
TEXT_TRADER_OSD = "INCOMING MESSAGE &lt;IMG&gt;SLASH&lt;&gt; TRADE FREQUENCY"



----------------------------------------------------------------------------------------------------
-- localization file 5
----------------------------------------------------------------------------------------------------

-- DIALOGUE - fixed typo in word "practice" (verb, British spelling)
TEXT_DIALOGUE_PRACTISE = "Practise language skills"

-- UI - changed label for automatic recharge on starship tech
TEXT_LAUNCHER_RECHARGE = "Standby Recharging"

-- UI - new tip for Heart of the Sun displayed in pinned instructions in Mission Log
TEXT_RECIPE_ATLASSEED = 
[[
&lt;TECHNOLOGY&gt;%ITEM%&lt;&gt; is a bespoke item obtained at the end of &lt;STELLAR&gt;the Atlas Path&lt;&gt;.&#xA;
Progress the Atlas Path by selecting the dedicated primary mission in the &lt;VAL_ON&gt;Mission Log&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;).
]]

-- UI - space station tutorial - emphasis on inhabited systems
TEXT_TUTORIAL_STATION_0 = "Every inhabited system has a &lt;COMMODITY&gt;Space Station&lt;&gt; serving as its hub. Speaking to lifeforms aboard the station brings the chance to trade, learn words, or gain standing."

-- UI - space station tutorial - removed the mentions of ship
TEXT_TUTORIAL_STATION_1 = "Visit Technology Merchants to &lt;TECHNOLOGY&gt;upgrade your equipment&lt;&gt;"

-- UI - space station tutorial - hint about different types of charts
TEXT_TUTORIAL_STATION_2 = "Visit the &lt;TRADEABLE&gt;Cartographer&lt;&gt; to purchase maps leading to various &lt;TRADEABLE&gt;structures and buildings&lt;&gt;"

-- UI - space station tutorial - added info about traveling to other space stations
TEXT_TUTORIAL_STATION_4 = "Use the &lt;TECHNOLOGY&gt;Teleporter&lt;&gt; to instantly travel between other stations and your bases"

-- UI - starship repair tutorial - replaced ":" > "with"
TEXT_TUTORIAL_SHIPREPAIR_1 = "Repair Pulse Engine with &lt;COMMODITY&gt;Metal Plating&lt;&gt;"

-- UI - starship repair tutorial - replaced ":" > "with"
TEXT_TUTORIAL_SHIPREPAIR_2 = "Repair Pulse Engine with &lt;STELLAR&gt;Hermetic Seal&lt;&gt;"

-- UI - starship repair tutorial - replaced ":" > "with"
TEXT_TUTORIAL_SHIPREPAIR_3 = "Repair Launch Thrusters with &lt;TECHNOLOGY&gt;Di-hydrogen Jelly&lt;&gt;"

-- UI - starship repair tutorial - replaced ":" > "with"
TEXT_TUTORIAL_SHIPREPAIR_4 = "Repair Launch Thrusters with &lt;EARTH&gt;Pure Ferrite&lt;&gt;"

-- UI - base tutorial - reworked the line about storing and processing items
TEXT_TUTORIAL_BASE_3 = "Build and power up &lt;TECHNOLOGY&gt;Storage Containers&lt;&gt; to store large amounts of resources in your base"

-- UI - terrain manipulator tutorial - removed the word "upgrade" (it's a blueprint but it's too early to explain the difference)
TEXT_TUTORIAL_TERRAIN_1 = "The Terrain Manipulator is a &lt;TECHNOLOGY&gt;Multi-Tool technology&lt;&gt;"

-- UI - terrain manipulator tutorial - reworked line about reshaping the world
TEXT_TUTORIAL_TERRAIN_3 = "Use it to &lt;STELLAR&gt;modify the terrain on planets&lt;&gt;: dig tunnels, flatten out terrain and create new landmasses"

-- UI - factions tutorial - removed ... from last line
TEXT_TUTORIAL_FACTIONS_5 = "Exploring &lt;TECHNOLOGY&gt;planetary buildings&lt;&gt; and other sites of interest"

-- UI - tech upgrades tutorial - removed info about "rare upgrades"
TEXT_TUTORIAL_UPGRADES_0 = "&lt;VAL_ON&gt;Upgrade Modules&lt;&gt; improve a specific technology you have already installed. Each module is &lt;STELLAR&gt;unique&lt;&gt;; look for specific types of modules at each Space Station."

-- UI - tech upgrades tutorial - reworked 3rd line (redundant info with header), added info about higher class
TEXT_TUTORIAL_UPGRADES_3 = "&lt;SPECIAL&gt;Higher class modules&lt;&gt; can offer better bonuses to installed technology"

-- UI - Space Anomaly tutorial - specified Travellers that give nanites
TEXT_TUTORIAL_NEXUS_1 = "Speak to Iterations: Ares and Helios to &lt;STELLAR&gt;earn nanites&lt;&gt;"

-- UI - freighter tutorial - reworked info about hangar functionality
TEXT_TUTORIAL_FREIGHTER_2 = "Use the hangar to access &lt;STELLAR&gt;any ship in your collection&lt;&gt;"

-- UI - freighter tutorial - reworked line about frigates and expeditions
TEXT_TUTORIAL_FREIGHTER_3 = "Recruit &lt;STELLAR&gt;frigates&lt;&gt; to your fleet and send them on interstellar expeditions"

-- TECH - Personal Refiner - removed the capitalization on the word "interface" in button subtitle
TEXT_PERSONAL_REFINER_CAPS = "Open Personal Refiner interface"



----------------------------------------------------------------------------------------------------
-- localization file 6
----------------------------------------------------------------------------------------------------

-- UI - new label for not boardable derelict freighters (red icon, broken in half, no visible landing pads)
TEXT_DESTROYED_FREIGHTER = "Destroyed Freighter"

-- QUEST - fixed tooltip for source of Living Water (not on space station)
TEXT_LIVING_WATER = 
[[
The Void Egg host requires a &lt;COMMODITY&gt;Shell&lt;&gt;&#xA;
Gather %ITEM% to craft &lt;TECHNOLOGY&gt;Impossible Membrane&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;
Seek %ITEM% in deep space
]]

-- QUEST - fixed tooltips for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_1 = 
[[
Install the gifted &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;&#xA;
The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;
Gather &lt;STELLAR&gt;Liquid Sun&lt;&gt; to craft Pulsating Core&#xA;
The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;
]]

-- QUEST - fixed tooltips for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_2 = 
[[
The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;
Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;
The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;
]]

-- QUEST - fixed tooltips for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_3 = 
[[
The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;
Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;
The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;&#xA;
Press &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to equip the &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;
]]

-- ITEM - changed description for Multitool Expansion Slot
TEXT_MULTITOOL_EXPANSION = 
[[
A flexible upgrade circuit, compatible with &lt;STELLAR&gt;all Multi-Tool types&lt;&gt;.&#xA;&#xA;
This module can be wired into a Multi-Tool at a dedicated &lt;TECHNOLOGY&gt;Multi-Tool Upgrade Station&lt;&gt;, granting the user more space in the Multi-Tool's internal layout to add further upgrades or technology specialisations.
]]

-- ITEM - changed description for Cargo Bulkhead
TEXT_CARGO_BULKHEAD = 
[[
A technology module harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be acquired from &lt;STELLAR&gt;rescued capital freighters&lt;&gt; after defeating pirates.&#xA;&#xA;
Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. This module is compatible with both Technology and Cargo space. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;.
]]

-- ITEM - changed description for Exosuit Expansion Slot
TEXT_EXOSUIT_EXPANSION = 
[[
An advanced survival technology module that allows expansion of a user's &lt;STELLAR&gt;Exosuit Storage&lt;&gt;.&#xA;&#xA;
Pre-packed nano-expanders create stablised sub-warp voids within the Exosuit, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply this augmentation at the &lt;TECHNOLOGY&gt;Exosuit upgrade terminal&lt;&gt; on board of a space station or at planetary drop pods.
]]

-- UI - updated companion tutorial info for new number of pets
TEXT_TUTORIAL_COMPANIONS_0 = 
[[
A creature has become your &lt;STELLAR&gt;companion&lt;&gt;!&#xA;
You can adopt up to 18 alien creatures as companions.
]]

-- UI - pet food tutorial - changed the title to specify animals
TEXT_TUTORIAL_PETFOOD_0 = "Interacting with alien animals"

-- UI - Exploration Guide - new titles for tooltips
TEXT_EXPL_GUIDE_TITLE_SYSTEM = "Exploration Guide&lt;IMG&gt;SLASH&lt;&gt;%NAME% system"

-- UI - Exploration Guide - new titles for tooltips
TEXT_EXPL_GUIDE_TITLE_PLANET = "Exploration Guide&lt;IMG&gt;SLASH&lt;&gt;planet %NAME%"

-- UI - Exploration Guide - changed objective to mention uploading all animals for large nanite reward
TEXT_EXPL_GUIDE_OBJECTIVE =
[[
Scan animals, plants and minerals with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;). Once the Visor is activated, use &lt;IMG&gt;BINOCSCAN&lt;&gt; to analyse your target.&#xA;&#xA;

Every discovery is logged on the &lt;VAL_ON&gt;Discoveries Page&lt;&gt; (&lt;IMG&gt;OPTIONS&lt;&gt;). Visit the Discoveries Page to &lt;COMMODITY&gt;rename or upload&lt;&gt; your discoveries and &lt;TECHNOLOGY&gt;earn nanites&lt;&gt;.&#xA;&#xA;

Discover and upload &lt;STELLAR&gt;all animal life&lt;&gt; on a planet to receive a &lt;STELLAR&gt;large nanite reward&lt;&gt;.
]]

-- UI - Exploration Guide regulated systems - changed stellar region to galaxy region, added line breaks, changed line about trade routes and "high quality ships"
TEXT_EXPL_GUIDE_DETAILS_SYSTEM =
[[
&lt;VAL_ON&gt;Stellar Classification&lt;&gt;: %STAR%&#xA;
%STARAGE%&#xA;
&lt;VAL_ON&gt;Galaxy Region&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;

&lt;VAL_ON&gt;Planets Discovered&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Dominant Lifeform&lt;&gt;: &lt;%RACE_GRADE%&gt;The %RACE%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Conflict Level&lt;&gt;: &lt;%CONFLICT_GRADE%&gt;%CONFLICT%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Economy Type&lt;&gt;: %ECON%, &lt;%WEALTH_GRADE%&gt;%WEALTH%&lt;&gt;&#xA;&#xA;

Find complementary economy types to plan an optimal resource trade route.&#xA;
The wealth of a system influences how many goods they have available to sell.&#xA;
High wealth systems are also more likely to have higher class starships.&#xA;
High conflict systems carry a risk of greater pirate interference.
]]

-- UI - Exploration Guide abandoned systems -  changed stellar region to galaxy region, added line breaks, replaced "???" in system info
TEXT_EXPL_GUIDE_DETAILS_ABAND =
[[
&lt;VAL_ON&gt;Stellar Classification&lt;&gt;: %STAR%&#xA;
%STARAGE%&#xA;
&lt;VAL_ON&gt;Galaxy Region&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;

&lt;VAL_ON&gt;Planets Discovered&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Dominant Lifeform&lt;&gt;: &lt;FUEL&gt;[ EVACUATED ]&lt;&gt;&#xA;
&lt;VAL_ON&gt;Conflict Level&lt;&gt;: no data&#xA;
&lt;VAL_ON&gt;Economy Type&lt;&gt;: no data&#xA;&#xA;

WARNING&lt;IMG&gt;SLASH&lt;&gt;NO SPACE STATION SIGNAL DETECTED&#xA;
EMERGENCY BROADCAST CHANNELS REMAIN SILENT
]]

-- UI - Exploration Guide uncharted systems - changed stellar region to galaxy region, added line breaks, replaced "None" in system info
TEXT_EXPL_GUIDE_DETAILS_EMPTY =
[[
&lt;VAL_ON&gt;Stellar Classification&lt;&gt;: %STAR%&#xA;
%STARAGE%&#xA;
&lt;VAL_ON&gt;Galaxy Region&lt;&gt;: %SYSTEM_FACT%&#xA;&#xA;

&lt;VAL_ON&gt;Planets Discovered&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Dominant Lifeform&lt;&gt;: &lt;TECHNOLOGY&gt;None&lt;&gt;&#xA;
&lt;VAL_ON&gt;Conflict Level&lt;&gt;: no data&#xA;
&lt;VAL_ON&gt;Economy Type&lt;&gt;: no data&#xA;&#xA;

This system is &lt;SPECIAL&gt;uninhabited&lt;&gt;. There is no space station, and no sign of life upon any world.
]]

-- UI - Exploration Guide regulated systems - changed tooltip to be in line with the details page
TEXT_EXPL_GUIDE_TOOLTIP_SYSTEM =
[[
&lt;VAL_ON&gt;Planets Discovered&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Dominant Lifeform&lt;&gt;: &lt;%RACE_GRADE%&gt;The %RACE%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Conflict Level&lt;&gt;: &lt;%CONFLICT_GRADE%&gt;%CONFLICT%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Economy Type&lt;&gt;: %ECON%, &lt;%WEALTH_GRADE%&gt;%WEALTH%&lt;&gt;
]]

-- UI - Exploration Guide abandoned systems - changed tooltip to be in line with the details page
TEXT_EXPL_GUIDE_TOOLTIP_ABAND =
[[
&lt;VAL_ON&gt;Planets Discovered&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Dominant Lifeform&lt;&gt;: &lt;FUEL&gt;[ EVACUATED ]&lt;&gt;&#xA;
&lt;VAL_ON&gt;Conflict Level&lt;&gt;: no data&#xA;
&lt;VAL_ON&gt;Economy Type&lt;&gt;: no data
]]

-- UI - Exploration Guide uncharted systems - changed tooltip to be in line with the details page
TEXT_EXPL_GUIDE_TOOLTIP_EMPTY =
[[
&lt;VAL_ON&gt;Planets Discovered&lt;&gt;: &lt;%GRADE%&gt;%PLANET_CURR%&lt;&gt; / &lt;%GRADE%&gt;%PLANET_MAX%&lt;&gt;&#xA;
&lt;VAL_ON&gt;Dominant Lifeform&lt;&gt;: &lt;TECHNOLOGY&gt;None&lt;&gt;&#xA;
&lt;VAL_ON&gt;Conflict Level&lt;&gt;: no data&#xA;
&lt;VAL_ON&gt;Economy Type&lt;&gt;: no data
]]



----------------------------------------------------------------------------------------------------
-- localization file 7
----------------------------------------------------------------------------------------------------

-- TECH - removed info about "mining activities" from exomech technology modules
TEXT_EXOMECH_AI_MODULE = 
[[
A semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt; for the Minotaur Heavy Exocraft Hybrid. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;
The AI pilot will always cede control to the primary operator when they enter the cockpit.&#xA;&#xA;
Piloting routines are highly localised. It is incapable of developing emotional bonds nor exercising independent control of the Minotaur.
]]

-- TECH - removed info about "mining activities" from exomech technology modules
TEXT_EXOMECH_HARDFRAME = 
[[
A collection of salvaged components from a Sentinel Hardframe, reconditioned to fit the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid.&#xA;&#xA;
Will function as a semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt;. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;
The AI pilot will always cede control to the primary operator when they enter the cockpit.
]]

-- UI - fixed typo in word "scambled"
TEXT_CARGOSCAN_SCRAMBLED = "Incoming Cargo Probe Scrambled!"

-- ITEM - added Boltcaster to description of Sentinel Weapons Shards
TEXT_WEAPON_SHARD = 
[[
An &lt;SPECIAL&gt;anomalous&lt;&gt; upgrade for the Multi-Tool's &lt;TECHNOLOGY&gt;Boltcaster weapon system&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;
This eerie, glassy shard was extracted from &lt;SPECIAL&gt;Sentinel debris&lt;&gt;. Its exact effect upon the Multi-Tool will not be known until after installation is complete.
]]

-- TECH - changed technology group name for Sentinel upgrades
TEXT_SENTGUN_NAME = "Boltcaster"

-- UI - new verbiage for "cannot change difficulty settings at this time"
TEXT_DIFFICULTY_MULTIPLAYER = "- Not available during Nexus mission or Multiplayer -"

-- UI - fixed typo in word "Nitrogren" in names of refining recipies
TEXT_NITROGEN_REFINING = "Harness Organic Nitrogen"

-- TECH - changed description of Vesper Sail module to stress the recharge functionality works only when ship is not in active use
TEXT_SAIL_RECHARGE = 
[[
A high-performance &lt;STELLAR&gt;solar sail&lt;&gt;, deployed automatically during flight. This advanced &lt;TECHNOLOGY&gt;propulsion device&lt;&gt; generates an electric field within the sails themselves, allowing the starship to build momentum from the solar wind.&#xA;&#xA;
Offers substantial gains in &lt;STELLAR&gt;fuel efficiency&lt;&gt; and &lt;STELLAR&gt;boost&lt;&gt; performance over conventional engine systems. Additionally it enables photovoltaic &lt;STELLAR&gt;recharge&lt;&gt; of the starship's &lt;TECHNOLOGY&gt;launch systems&lt;&gt; while the craft is not in active use.
]]

-- UI - outlaw systems tutorial - added a whole new tutorial message box
TEXT_TUTORIAL_PIRATES_0 = "Across the galaxy, star systems have fallen under &lt;FUEL&gt;outlaw control&lt;&gt;. System authority has been surrendered to rebel forces, leaving space unpoliced and &lt;FUEL&gt;ripe for piracy&lt;&gt;."

-- UI - outlaw systems tutorial - added a whole new tutorial message box
TEXT_TUTORIAL_PIRATES_1 = "Outlaw systems allow the purchase of profitable &lt;SPECIAL&gt;black market goods&lt;&gt;"

-- UI - outlaw systems tutorial - added a whole new tutorial message box
TEXT_TUTORIAL_PIRATES_2 = "Complete lucrative missions for the station's &lt;COMMODITY&gt;Bounty Master&lt;&gt;"

-- UI - outlaw systems tutorial - added a whole new tutorial message box
TEXT_TUTORIAL_PIRATES_3 = "Acquire &lt;SPECIAL&gt;Forged Passports&lt;&gt; to restore reputation in regulated systems"

-- UI - outlaw systems tutorial - added a whole new tutorial message box
TEXT_TUTORIAL_PIRATES_4 = "Highly advanced &lt;STELLAR&gt;solar starships&lt;&gt; can be found commonly in outlaw systems"

-- QUEST - changed objective label for size rare item mission to prevent text overflow
TEXT_PIRATE_SEIZE_OBJ = "Seize %PRIMARYITEM% from trader convoy"

-- TECH - Trade Rocket - changed last line to point player to Quick Menu
TEXT_TRADEROCKET_QUICKMENU =
[[
A personal rocketry device with a direct link to the &lt;TECHNOLOGY&gt;Galactic Trade Network&lt;&gt;. This unit allows the user to load a small spacecraft with goods. Upon launch, the goods will be transported to the nearest trade terminus and &lt;STELLAR&gt;automatically sold&lt;&gt;.&#xA;&#xA;

Summon Trade Rocket from the &lt;VAL_ON&gt;Summon Vehicles&lt;&gt; section of the Quick Menu (&lt;IMG&gt;QUICK_MENU&lt;&gt;).
]]



----------------------------------------------------------------------------------------------------
-- localization file 8
----------------------------------------------------------------------------------------------------

-- this functionality is currently bugged in game, I'm leaving the description in case HG comes around to fix it
--[[
-- TECH - changed description of Anti-Gravity Well to mention recharge functionality
TEXT_GRAVITYWELL_RECHARGE = 
[[
Gently detaches the starship from gravitational fields, lifting it toward the stars.&#xA;&#xA;
The well hungers for &lt;SPECIAL&gt;Pugneum&lt;&gt; or &lt;SPECIAL&gt;Radiant Shards&lt;&gt;, and must be sufficiently fueled before launch. When in slumber, it dreams of realm of &lt;SPECIAL&gt;g l a s s&lt;&gt;, harnessing the otherworldly energy to &lt;STELLAR&gt;recharge&lt;&gt; the starship's transcendental &lt;TECHNOLOGY&gt;launch systems&lt;&gt;.&#xA;&#xA;
Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet.&#xA;
Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.
]]

-- UI - added portal glyph names from Starbirth quest and a "DATA CORRUPTED" label for missing names for the Harmonic Camp glyph dialogue
-- the definitions are already provided in section for localization file 4

-- TECH - fixed capitalization of resource names in Anti-Gravity Well description
TEXT_GRAVITYWELL_CAPS = 
[[
Gently detaches the starship from gravitational fields, lifting it toward the stars.&#xA;&#xA;
The well hungers for &lt;SPECIAL&gt;Pugneum&lt;&gt; or &lt;SPECIAL&gt;Radiant Shards&lt;&gt;, and must be sufficiently fueled before launch.&#xA;&#xA;
Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost.
]]

-- UI - added missing description for milestone guidance for pirate missions medal
TEXT_GUIDE_PIRATEMISSIONS = 
[[
Complete missions for the &lt;FUEL&gt;Outlaw faction&lt;&gt; by visiting the &lt;COMMODITY&gt;Bounty Master&lt;&gt; in pirate-controlled systems.&#xA;&#xA;
Earn valuable rewards including &lt;SPECIAL&gt;contraband items&lt;&gt;, which can be sold in regulated systems for a &lt;TRADE&gt;profit&lt;&gt;.&#xA;&#xA;
Be advised that acts of piracy will &lt;FUEL&gt;negatively impact&lt;&gt; your standing with the system's &lt;STELLAR&gt;dominant race&lt;&gt;.
]]

-- QUEST - fixed typo in word "feed" in tooltips for missions to destroy Dissonance Resonators
TEXT_SWARM_FEEDS_1 = 
[[
Destroy &lt;FUEL&gt;Dissonance Resonators&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;
The corrupted swarm feeds on disharmonic energy&#xA;
Locate dissonant extractors with the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;)
]]

-- QUEST - fixed typo in word "feed" in tooltips for missions to destroy Dissonance Resonators
TEXT_SWARM_FEEDS_2 = 
[[
Destroy &lt;FUEL&gt;Dissonance Resonators&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;
The corrupted swarm feeds on disharmonic energy&#xA;
Use the &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; to locate their foul extractors
]]

-- QUEST - fixed typo in word "feed" in tooltips for missions to destroy Dissonance Resonators
TEXT_SWARM_FEEDS_3 = 
[[
Destroy &lt;FUEL&gt;Dissonance Resonators&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;
The corrupted swarm feeds on disharmonic energy&#xA;
Activate a &lt;TECHNOLOGY&gt;Target Sweep&lt;&gt; with &lt;IMG&gt;SURVEYFILTERL&lt;&gt;/&lt;IMG&gt;SURVEYFILTERR&lt;&gt;
]]

-- QUEST - fixed typo in word "feed" in tooltips for missions to destroy Dissonance Resonators
TEXT_SWARM_FEEDS_4 = 
[[
Destroy &lt;FUEL&gt;Dissonance Resonators&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;
The corrupted swarm feeds on disharmonic energy&#xA;
Activate a &lt;STELLAR&gt;Target Sweep&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to locate their foul extractors
]]



----------------------------------------------------------------------------------------------------
-- list used to create a new localization file
----------------------------------------------------------------------------------------------------

LIST_FIXES =
{
    -- localization file 1
    INTRCT_SAVE_NO_POS              = TEXT_SAVE_MULTIPLAYER,
    INTRCT_SAVE_NO_POS_NEXUS        = TEXT_SAVE_NEXUSMISSION,
    EXP_1_PORT_LANG_1               = TEXT_TRAVELLER_DIALOGUE,
    SUIT_ENERGY_REGEN               = TEXT_LIFESUPPORT_SOLAR,
    PLANT_PEARL_DESC                = TEXT_ALBUMEN_GROWTIME,
    HOT1_DESCRIPTION                = TEXT_HAZARDPROT_HOT,
    COLD1_DESCRIPTION               = TEXT_HAZARDPROT_COLD,
    TOX1_DESCRIPTION                = TEXT_HAZARDPROT_TOXIC,
    RAD1_DESCRIPTION                = TEXT_HAZARDPROT_RADIO,
    NPC_TRADER_BUY_SHIP             = TEXT_BUY_STARSHIP,
    STATS_WEAPON_ATTACK             = TEXT_LABEL_DAMAGESTAT,
    ACCESS2_DESCRIPTION             = TEXT_ATLASPASS_V2,
    ACCESS3_DESCRIPTION             = TEXT_ATLASPASS_V3,
    WAR_MON_OPT_C_10                = TEXT_MONOLITH_FERRITE,
    JUMP_STATION_ENTRY              = TEXT_PULSE_SPACESTATION,
    BLD_SIGNAL_SUBTITLE             = TEXT_BUILD_SIGNALSCANNER_SUB,
    BLD_BEACON_SUBTITLE             = TEXT_BUILD_SAVEBEACON_SUB,
    BLD_HARVESTER_SUBTITLE          = TEXT_BUILD_MININGUNIT_SUB,
    BLD_HEALTHSTATION_SUBTITLE      = TEXT_BUILD_HEALTHSTATION_SUB,
    PLANT_PEARL_SUBTITLE            = TEXT_BUILD_ALBUMEN_SUB,
    BLD_TRADETERMINAL_SUBTITLE      = TEXT_BUILD_TRADING_SUB,
    BLD_GARAGE_B_SUBTITLE           = TEXT_BUILD_PILGRIM_SUB,
    BLD_GARAGE_S_SUBTITLE           = TEXT_BUILD_NOMAD_SUB,
    BLD_GARAGE_M_SUBTITLE           = TEXT_BUILD_THEROAMEREXOCRAF_SUB,
    BLD_GARAGE_L_SUBTITLE           = TEXT_BUILD_COLOSSUS_SUB,
    BLD_MESSAGE_SUBTITLE            = TEXT_BUILD_COMMBALL_SUB,
    BLD_MESSAGEMODULE_SUBTITLE      = TEXT_BUILD_COMMBALL_SUB,
    BLD_CARBONPLANTER_SUBTITLE      = TEXT_BUILD_FARMING_SUB,
    BLD_PLANTER_SUBTITLE            = TEXT_BUILD_FARMING_SUB,
    BLD_STORAGE_SUBTITLE            = TEXT_BUILD_STORAGE_SUB,
    BLD_RACE_STARTLINE_SUBTITLE     = TEXT_BUILD_RACING_SUB,
    BLD_RACE_CHECKPOINT_SUBTITLE    = TEXT_BUILD_RACING_SUB,
    BLD_RACE_OBSTACLE_SUBTITLE      = TEXT_BUILD_RACING_SUB,
    BLD_RACE_BOOST_SUBTITLE         = TEXT_BUILD_RACING_SUB,
    BLD_NPCSCIENCE_SUBTITLE         = TEXT_BUILD_SPECIALIST_SUB,
    BLD_NPCWEAPON_SUBTITLE          = TEXT_BUILD_SPECIALIST_SUB,
    BLD_NPCFARM_SUBTITLE            = TEXT_BUILD_SPECIALIST_SUB,
    BLD_NPCVEHICLE_SUBTITLE         = TEXT_BUILD_SPECIALIST_SUB,
    BLD_NPCBUILDER_SUBTITLE         = TEXT_BUILD_SPECIALIST_SUB,
    BLD_CORNERPOST_SUBTITLE         = TEXT_BUILD_SHARED_MODULE,
    BLD_ROOMFLOOR_SUBTITLE          = TEXT_BUILD_SHARED_MODULE,
    BLD_BIOROOM_SUBTITLE            = TEXT_BUILD_SHARED_MODULE,
    BLD_CURVEDROOF_SUBTITLE         = TEXT_BUILD_SHARED_MODULE,
    BLD_CURVEDWALL_SUBTITLE         = TEXT_BUILD_SHARED_MODULE,
    BLD_GLASSCUBE_SUBTITLE          = TEXT_BUILD_SHARED_MODULE,
    BLD_CUBEINNERDOOR_SUBTITLE      = TEXT_BUILD_SHARED_MODULE,
    BLD_CUBEINNERWALL_SUBTITLE      = TEXT_BUILD_SHARED_MODULE,
    BLD_CUBEROOFCAP_SUBTITLE        = TEXT_BUILD_SHARED_MODULE,
    BLD_MAINROOMFRAME_SUBTITLE      = TEXT_BUILD_SHARED_MODULE,
    BLD_VIEWSPHERE_SUBTITLE         = TEXT_BUILD_SHARED_MODULE,
    BLD_CORRIDORC_SUBTITLE          = TEXT_BUILD_SHARED_MODULE,
    BLD_MAINROOMCUBE_SUBTITLE       = TEXT_BUILD_SHARED_MODULE,
    BLD_FOUNDATION_SUBTITLE         = TEXT_BUILD_SHARED_MODULE,
    BLD_LANDINGPAD_SUBTITLE         = TEXT_BUILD_SHARED_MODULE,
    BLD_CORRIDORL_SUBTITLE          = TEXT_BUILD_SHARED_MODULE,
    BLD_CORRIDOR_SUBTITLE           = TEXT_BUILD_SHARED_MODULE,
    BLD_CORRIDORT_SUBTITLE          = TEXT_BUILD_SHARED_MODULE,
    BLD_CORRIDORX_SUBTITLE          = TEXT_BUILD_SHARED_MODULE,
    BLD_MAINROOM_SUBTITLE           = TEXT_BUILD_SHARED_MODULE,
    BLD_TOWER_SUBTITLE              = TEXT_BUILD_SHARED_MODULE,
    BLD_CUBEROOM_SUBTITLE           = TEXT_BUILD_SHARED_MODULE,
    BLD_GLASSCORRIDOR_SUBTITLE      = TEXT_BUILD_SHARED_MODULE,
    BLD_SAVEPOINT_SUBTITLE          = TEXT_BUILD_SHARED_ITEM,
    BLD_LADDER_SUBTITLE             = TEXT_BUILD_SHARED_ITEM,
    BLD_INFRALADDER_SUBTITLE        = TEXT_BUILD_SHARED_ITEM,
    BLD_DOOR_SUBTITLE               = TEXT_BUILD_SHARED_ITEM,
    BLD_DOORVARIANT_SUBTITLE        = TEXT_BUILD_SHARED_ITEM,
    BLD_FOUNDLEG_SUBTITLE           = TEXT_BUILD_SHARED_ITEM,
    BLD_WINDOW_SUBTITLE             = TEXT_BUILD_SHARED_ITEM,
    BLD_PAVING_SUBTITLE             = TEXT_BUILD_SHARED_ITEM,
    BLD_CUBEFOUND1_SUBTITLE         = TEXT_BUILD_SHARED_ITEM,
    BLD_CUBEFOUND4_SUBTITLE         = TEXT_BUILD_SHARED_ITEM,
    BLD_CUBEFLOOR_SUBTITLE          = TEXT_BUILD_SHARED_ITEM,
    BLD_CUBELADDER_SUBTITLE         = TEXT_BUILD_SHARED_ITEM,
    BLD_FOUNDLEG4_SUBTITLE          = TEXT_BUILD_SHARED_ITEM,
    BLD_RAMP_SUBTITLE               = TEXT_BUILD_SHARED_ITEM,
    BLD_CUBEFRAME_SUBTITLE          = TEXT_BUILD_SHARED_ITEM,
    BLD_CUBEINTSTAIRS_SUBTITLE      = TEXT_BUILD_SHARED_ITEM,
    
    --------------------------------------------------

    -- localization file 3
    UI_PLANTSUB_BARREN_DESC         = TEXT_CACTUSFLESH_DESC,
    UI_PLANT_11_DESC                = TEXT_NIPNIP_GROWTIME,
    REFINER2_DESC                   = TEXT_BETTERRATIO_REFINER2,
    REFINER3_DESC                   = TEXT_BETTERRATIO_REFINER3,
    SHIP_TELEPORT_DESC              = TEXT_TELEPORTER_RANGE,
    SENTINEL_MECH_NAME              = TEXT_SENTINEL_MECHNAME,
    UI_CORE_TUTORIAL1_MSG1          = TEXT_AWAKENINGS_SIGNAL_1,
    UI_CORE_TUTORIAL1Z_MSG2         = TEXT_AWAKENINGS_VISOR_1,
    UI_CORE_TUTORIAL1Z_MSG3         = TEXT_AWAKENINGS_VISOR_2,
    UI_CORE_TUTORIAL1_MSG3          = TEXT_AWAKENIGNS_DOT,
    UI_CORE_TERRAINEDIT_MSG8B       = TEXT_AWAKENINGS_TERRAIN_1,
    BLD_PLANTERMEGA_SUBTITLE        = TEXT_BUILD_FARMING_SUB,

    --------------------------------------------------

    -- localization file 4
    UI_PIN_HYPERFUEL2_OBJ_TIP       = TEXT_CRAFT_HYPERCORE,
    UI_YELLOW_CRYSTAL_NAME          = TEXT_SODIUM_CRYSTALS,
    UI_SUB_RECHARGE_DESC            = TEXT_SUBMARINE_RECHARGE,
    RECIPE_PLANT_CAVE_CATALYST1     = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_WATER_CATALYST1    = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_CAVE_CATALYST2     = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_WATER_CATALYST2    = TEXT_NITROGEN_REFINING,
    UI_GUIDE_PORTAL_01_NAME         = TEXT_PORTALGLYPH_01,
    UI_GUIDE_PORTAL_02_NAME         = TEXT_PORTALGLYPH_02,
    UI_GUIDE_PORTAL_03_NAME         = TEXT_PORTALGLYPH_03,
    UI_GUIDE_PORTAL_04_NAME         = TEXT_PORTALGLYPH_04,
    UI_GUIDE_PORTAL_05_NAME         = TEXT_PORTALGLYPH_05,
    UI_GUIDE_PORTAL_06_NAME         = TEXT_PORTALGLYPH_06,
    UI_GUIDE_PORTAL_07_NAME         = TEXT_PORTALGLYPH_07,
    UI_GUIDE_PORTAL_08_NAME         = TEXT_PORTALGLYPH_08,
    UI_GUIDE_PORTAL_09_NAME         = TEXT_PORTALGLYPH_09,
    UI_GUIDE_PORTAL_10_NAME         = TEXT_PORTALGLYPH_10,
    UI_GUIDE_PORTAL_11_NAME         = TEXT_PORTALGLYPH_11,
    UI_GUIDE_PORTAL_12_NAME         = TEXT_PORTALGLYPH_12,
    UI_GUIDE_PORTAL_13_NAME         = TEXT_PORTALGLYPH_13,
    UI_GUIDE_PORTAL_14_NAME         = TEXT_PORTALGLYPH_14,
    UI_GUIDE_PORTAL_15_NAME         = TEXT_PORTALGLYPH_15,
    UI_GUIDE_PORTAL_16_NAME         = TEXT_PORTALGLYPH_16,
    UI_CAVE2_DESC                   = TEXT_DESC_IONCOBALT,
    UI_ASTEROID3_DESC               = TEXT_DESC_PLATINUM,
    UI_GREEN2_DESC                  = TEXT_DESC_EMERIL,
    ALL_TRADER_OSD                  = TEXT_TRADER_OSD,
    UI_TUT_ADV_MATS_MSG7            = TEXT_TUTORIAL_STORMS_1,
    UI_TUT_ADV_MATS_MSG7_GUN        = TEXT_TUTORIAL_STORMS_2,
    UI_TUT_ADV_MATS_MSG7_VRA        = TEXT_TUTORIAL_STORMS_3,
    UI_TUT_ADV_MATS_MSG7_VRB        = TEXT_TUTORIAL_STORMS_4,
    UI_TUT_ADV_MATS_MSG7_VRC        = TEXT_TUTORIAL_STORMS_5,
    UI_FIRST_WALK_MSG2              = TEXT_AWAKENINGS_SIGNAL_2,
    UI_FIRST_WALK_MSG3              = TEXT_AWAKENINGS_SIGNAL_3,
    UI_TUT_ADV_MATS_MSG4            = TEXT_AWAKENINGS_CHART_1,
    UI_TUT_ADV_MATS_MSG6A           = TEXT_AWAKENINGS_VISOR_3,
    UI_TUT_ADV_MATS_MSG6A_VR        = TEXT_AWAKENINGS_VISOR_3_VR,
    TUT_BASEBUILD_MSGC              = TEXT_AWAKENINGS_RESEARCH_1,
    UI_RETURN_MPMISSION_OBJ1_MSG    = TEXT_NEXUS_RETURN_DOTS,

    --------------------------------------------------

    -- localization file 5
    ALL_REQUEST_WORD_SAY            = TEXT_DIALOGUE_PRACTISE,
    SHIP_LAUNCHER_AUTOCHARGE        = TEXT_LAUNCHER_RECHARGE,
    UI_PIN_ATLASSEED_OBJ_TIP        = TEXT_RECIPE_ATLASSEED,
    UI_STATION_DETAIL_DESC          = TEXT_TUTORIAL_STATION_0,
    UI_STATION_DETAIL_LINE1         = TEXT_TUTORIAL_STATION_1,
    UI_STATION_DETAIL_LINE2         = TEXT_TUTORIAL_STATION_2,
    UI_STATION_DETAIL_LINE4         = TEXT_TUTORIAL_STATION_4,
    UI_SHIP_DETAIL_LINE1            = TEXT_TUTORIAL_SHIPREPAIR_1,
    UI_SHIP_DETAIL_LINE2            = TEXT_TUTORIAL_SHIPREPAIR_2,
    UI_SHIP_DETAIL_LINE3            = TEXT_TUTORIAL_SHIPREPAIR_3,
    UI_SHIP_DETAIL_LINE4            = TEXT_TUTORIAL_SHIPREPAIR_4,
    UI_BASE_DETAIL_LINE3            = TEXT_TUTORIAL_BASE_3,
    UI_TERRAINEDIT_DETAIL_LINE1     = TEXT_TUTORIAL_TERRAIN_1,
    UI_TERRAINEDIT_DETAIL_LINE3     = TEXT_TUTORIAL_TERRAIN_3,
    UI_FACTIONS_DETAIL_LINE5        = TEXT_TUTORIAL_FACTIONS_5,
    UI_UPGRADES_DETAIL_DESC         = TEXT_TUTORIAL_UPGRADES_0,
    UI_UPGRADES_DETAIL_LINE3        = TEXT_TUTORIAL_UPGRADES_3,
    UI_NEXUS_DETAIL_LINE1           = TEXT_TUTORIAL_NEXUS_1,
    UI_FREIGHTER_DETAIL_LINE2       = TEXT_TUTORIAL_FREIGHTER_2,
    UI_FREIGHTER_DETAIL_LINE3       = TEXT_TUTORIAL_FREIGHTER_3,
    UI_SUIT_REFINE_SUB              = TEXT_PERSONAL_REFINER_CAPS,

    --------------------------------------------------

    -- localization file 6
    UI_DERELICT1_LABEL              = TEXT_DESTROYED_FREIGHTER,
    UI_BIO_SHIP_MISSION3_MSG2C      = TEXT_LIVING_WATER,
    UI_BIO_SHIP_MISSION2_MSG2A      = TEXT_SOLARRAY_1,
    UI_BIO_SHIP_MISSION2_MSG2B      = TEXT_SOLARRAY_2,
    UI_BIO_SHIP_MISSION2_MSG2B2     = TEXT_SOLARRAY_3,
    UI_WEAPON_INV_TOKEN_DESC        = TEXT_MULTITOOL_EXPANSION,
    UI_FREIGHT_INV_TOKEN_DESC       = TEXT_CARGO_BULKHEAD,
    UI_SUIT_INV_TOKEN_DESC          = TEXT_EXOSUIT_EXPANSION,
    UI_PETCARE_DETAIL_DESC          = TEXT_TUTORIAL_COMPANIONS_0,
    UI_PETFOOD_DETAIL_TITLE         = TEXT_TUTORIAL_PETFOOD_0,
    UI_EXPLORE_LOG_OBJ_CLASS        = TEXT_EXPL_GUIDE_TITLE_SYSTEM,
    UI_EXPLORE_LOG_OBJ_PLANET_SHORT = TEXT_EXPL_GUIDE_TITLE_PLANET,
    UI_EXPLORE_LOG_DESC             = TEXT_EXPL_GUIDE_OBJECTIVE,
    UI_EXPLORE_LOG_SYSTEM           = TEXT_EXPL_GUIDE_DETAILS_SYSTEM,
    UI_EXPLORE_LOG_ABAND            = TEXT_EXPL_GUIDE_DETAILS_ABAND,
    UI_EXPLORE_LOG_EMPTY            = TEXT_EXPL_GUIDE_DETAILS_EMPTY,
    UI_EXPLORE_LOG_MSG              = TEXT_EXPL_GUIDE_TOOLTIP_SYSTEM,
    UI_EXPLORE_LOG_MSG_ABAND        = TEXT_EXPL_GUIDE_TOOLTIP_ABAND,
    UI_EXPLORE_LOG_MSG_EMPTY        = TEXT_EXPL_GUIDE_TOOLTIP_EMPTY,

    --------------------------------------------------

    -- localization file 7
    UI_MECH_AUTOPILOT_DESC          = TEXT_EXOMECH_AI_MODULE,
    UI_MECH_SENT_HEAD_DESC          = TEXT_EXOMECH_HARDFRAME,
    UI_SCAN_BLOCKER_SUCCESS         = TEXT_CARGOSCAN_SCRAMBLED,
    UP_SENTGUN_DESC                 = TEXT_WEAPON_SHARD,
    SENTINEL_GUN_NAME_L             = TEXT_SENTGUN_NAME,
    UI_OPTIONS_DIFFICULTY_BAN       = TEXT_DIFFICULTY_MULTIPLAYER,
    R_NAME_PLANT_CAVE_CATALYST1     = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_WATER_CATALYST1    = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_CAVE_CATALYST2     = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_WATER_CATALYST2    = TEXT_NITROGEN_REFINING,
    UI_SOLAR_SAIL_DESC              = TEXT_SAIL_RECHARGE,
    TEXT_TUTORIAL_PIRATES_0         = TEXT_TUTORIAL_PIRATES_0,
    TEXT_TUTORIAL_PIRATES_1         = TEXT_TUTORIAL_PIRATES_1,
    TEXT_TUTORIAL_PIRATES_2         = TEXT_TUTORIAL_PIRATES_2,
    TEXT_TUTORIAL_PIRATES_3         = TEXT_TUTORIAL_PIRATES_3,
    TEXT_TUTORIAL_PIRATES_4         = TEXT_TUTORIAL_PIRATES_4,
    UI_TRADER_ATTACK_OBJ1           = TEXT_PIRATE_SEIZE_OBJ,
    UI_SUIT_ROCKET_DESC             = TEXT_TRADEROCKET_QUICKMENU,

    --------------------------------------------------

    -- localization file 8
    UI_LAUNCHER_ROBO_DESC           = TEXT_GRAVITYWELL_CAPS,
    UI_PORTAL_GLYPH_NAME_1          = TEXT_PORTALGLYPH_01,
    UI_PORTAL_GLYPH_NAME_2          = TEXT_PORTALGLYPH_02,
    UI_PORTAL_GLYPH_NAME_3          = TEXT_PORTALGLYPH_03,
    UI_PORTAL_GLYPH_NAME_4          = TEXT_PORTALGLYPH_04,
    UI_PORTAL_GLYPH_NAME_5          = TEXT_PORTALGLYPH_05,
    UI_PORTAL_GLYPH_NAME_6          = TEXT_PORTALGLYPH_06,
    UI_PORTAL_GLYPH_NAME_7          = TEXT_PORTALGLYPH_07,
    UI_PORTAL_GLYPH_NAME_8          = TEXT_PORTALGLYPH_08,
    UI_PORTAL_GLYPH_NAME_9          = TEXT_PORTALGLYPH_09,
    UI_PORTAL_GLYPH_NAME_10         = TEXT_PORTALGLYPH_10,
    UI_PORTAL_GLYPH_NAME_11         = TEXT_PORTALGLYPH_11,
    UI_PORTAL_GLYPH_NAME_12         = TEXT_PORTALGLYPH_12,
    UI_PORTAL_GLYPH_NAME_13         = TEXT_PORTALGLYPH_13,
    UI_PORTAL_GLYPH_NAME_14         = TEXT_PORTALGLYPH_14,
    UI_PORTAL_GLYPH_NAME_15         = TEXT_PORTALGLYPH_15,
    UI_PORTAL_GLYPH_NAME_16         = TEXT_PORTALGLYPH_16,
    UI_MEDAL_DESC_MISSIONS_PIRUILD  = TEXT_GUIDE_PIRATEMISSIONS,
    UI_MP_CORRUPT_MSG2              = TEXT_SWARM_FEEDS_1,
    UI_MP_CORRUPT_SURVEY            = TEXT_SWARM_FEEDS_2,
    UI_MP_CORRUPT_SURVEY_SWAP       = TEXT_SWARM_FEEDS_3,
    UI_MP_CORRUPT_SURVEY_OFF        = TEXT_SWARM_FEEDS_4,
}



----------------------------------------------------------------------------------------------------
-- script data and functions
----------------------------------------------------------------------------------------------------

PREFIX = "FF_MTF"
SUFFIX = "English"

--------------------------------------------------
-- data for AMUMMS
--------------------------------------------------

-- path to Debug global file
FILE_GLOBAL_DEBUGOPTIONS = "GCDEBUGOPTIONS.GLOBAL.MBIN"

-- link to new localization file
PROPERTY_DEBUG_LOCFILE =
[[
<Property value="NMSString0x20.xml">
    <Property name="Value" value="]]..PREFIX..[[" />
</Property>
]]

-- path to new localization file
FILE_LANG_MISCTEXTFIXES = "LANGUAGE\\" .. PREFIX .. "_" .. SUFFIX .. ".EXML"

-- fix for typo in LAS localization file name
if SUFFIX == "LatinAmericanSpanish" then
FILE_LANG_MISCTEXTFIXES = "LANGUAGE\\" .. PREFIX .. "_LATINAMERAICANSPANISH.EXML"
end

--------------------------------------------------
-- function to build the text entries
--------------------------------------------------

function BuildTextProperty(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="]]..id..[[" />
    <Property name="]]..SUFFIX..[[" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
    </Property>
</Property>
]]
end

--------------------------------------------------
-- function to build the localization file
--------------------------------------------------

function BuildLocFile(list)
    local FileStart = [[<?xml version="1.0" encoding="utf-8"?><Data template="TkLocalisationTable"><Property name="Table">]]
    local FileEnd = [[</Property></Data>]]
    local FileTable = {}
    for id,value in pairs(list) do
        FileTable[#FileTable+1] = BuildTextProperty(id,value)
    end
    return FileStart .. table.concat(FileTable) .. FileEnd
end



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

    ["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = FILE_LANG_MISCTEXTFIXES,
			["FILE_CONTENT"] = BuildLocFile(LIST_FIXES),
		},		
	},

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_GLOBAL_DEBUGOPTIONS,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PKW"] = "LocTableList",
                            ["ADD"] = PROPERTY_DEBUG_LOCFILE,
                        },
                    },
                },
            }
        }
    },
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------