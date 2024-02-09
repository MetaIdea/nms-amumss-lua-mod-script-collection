-- if set to true, the script will automatically run without asking for user input
AUTORUN = true

---------------------------
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
---------------------------

-- Edition of Getting Head to use
DEFAULT_EDITION = "CLASSICS" -- CLASSICS, CLASSICS_B, FOURTH_A, FOURTH_B

-- Suit parts minus backpack
-- VYK = Armoured Suit
-- BUILDERS = Autophage/Builders Suit
GET_SUIT = "BUILDERS"

-- Default value to remove armour piece and allow subsequent torso piece selection
REMOVE_ARMOUR = true

DEFAULT_TORSO = "TORSO_GEK"
-- Choose the torso without armour
-- Copy and paste the IDs or your game may become unstable!
-- Unused if not removing armour piece
--[[
TORSO_VANILLA
TORSO_ASTRO
TORSO_GEK
TORSO_VYK
TORSO_FOURTH
TORSO_BUILDERS
]]

DEFAULT_CAPE = "CAPE_SEED"
-- Choose the cape
-- Copy and paste the IDs or your game may become unstable!
-- Leave this field empty if you don't want any capes
-- Some IDs may be unused in-game
--[[
CAPE_ATLAS
CAPE_PROTO
CAPE_PIRATE
CAPE_INFINITY
CAPE_FREIGHTER
CAPE_FRIGATE
CAPE_SANDWORM
CAPE_JELLY
CAPE_SEED
]]

DEFAULT_BACKPACK = "BACKPACK_ATLAS"
-- Choose the backpack
-- Copy and paste the IDs or your game may become unstable!
-- Leave this field empty if you want the default backpack
--[[
BACKPACK_RETRO
BACKPACK_EXPD1
BACKPACK_ROYAL
BACKPACK_SENT
BACKPACK_ATLAS
BACKPACK_CAPE
]]

-- Default value to set all presets to the Gek body type
SHORT_KING = false

NEW_COLOURS_HEX =
-- Hex colour values without the hashtag
-- Feel free to add a few of your own custom colours
-- Set colours to apply in the presets in PRESET_COLOURS, the table's index begins at 1
-- So first colour is 1, second colour is 2 and so on
-- but these colours will be visible in multiplayer even to players without the mod... possibly
{	"ff0000", --1
	"00ff00", --2
	"0000ff", --3
	"bbd5bf", --etc.
	"487473",
	"d46738",
}

PRESET_COLOURS = 
-- change the number in the "Colour" parameter to choose the custom colour to apply to the part
{				-- skip with GcCharacterCustomisationColourData.xml
				-- Palette, ColourAlt, and "Colour.xml" used as PRECEDING_KEY_WORDS
	{
		["Palette"] = 	"Custom_Head",		
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Head",
		["ColourAlt"] = "Alternative1",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Head",
		["ColourAlt"] = "Alternative2",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Torso",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Torso",
		["ColourAlt"] = "Alternative1",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Torso",
		["ColourAlt"] = "Alternative2",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Chest_Armour",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Chest_Armour",
		["ColourAlt"] = "Alternative1",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Chest_Armour",
		["ColourAlt"] = "Alternative2",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Backpack",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Backpack",
		["ColourAlt"] = "Alternative1",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Backpack",
		["ColourAlt"] = "Alternative2",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Hands",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Hands",
		["ColourAlt"] = "Alternative1",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Hands",
		["ColourAlt"] = "Alternative2",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Legs",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Legs",
		["ColourAlt"] = "Alternative1",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Legs",
		["ColourAlt"] = "Alternative2",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Feet",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Feet",
		["ColourAlt"] = "Alternative1",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Feet",
		["ColourAlt"] = "Alternative2",
		["Colour"] = 	6,		
	},
}


----------------------------------
-- END OF USER DEFAULTS SECTION --
-- END OF USER DEFAULTS SECTION --
-- END OF USER DEFAULTS SECTION --
-- END OF USER DEFAULTS SECTION --
-- END OF USER DEFAULTS SECTION --
-- END OF USER DEFAULTS SECTION --
-- END OF USER DEFAULTS SECTION --
-- END OF USER DEFAULTS SECTION --
----------------------------------

-- prints debug related variables in text
DEBUG_TEXT = false

EDITION_LIST = {"CLASSICS", "CLASSICS_B", "FOURTH_A", "FOURTH_B"}

SUIT_SETS = {"VYK", "BUILDERS"}
SUIT_PARTS =
{	
	["VYK"] 	= {"TORSO_VYK", "GLOVES_VYK", "LEGS_VYK", "BOOTS_VYK", "ARMOUR_VYK", },
	["BUILDERS"] 	= {"TORSO_BUILDERS", "GLOVES_BUILDERS", "LEGS_BUILDERS", "BOOTS_BUILDERS", "ARMOUR_NULL", },
	-- ["GOLD"] 	= {"TORSO_VYK", "ARMOUR_VYK", "GLOVES_VYK", "LEGS_VYK", "BOOTS_VYK"}, -- unused in game
}

NUM_VANILLA_COLOUR = 20				

-- racial preset prefix
RACES ={ "ASTRO", "KORVAX", "GEK", "VYKEEN", "FOURTH" , "BUI" }
-- actual race "base" body
RACES_BASE ={ "ASTRONAUT_BASE", "KORVAX_BASE", "GEK_BASE", "VYKEEN_BASE", "FOURTH_BASE" , "BUILDERS_BASE" }

-- heads to apply per edition
HEADS = 
{	["CLASSICS"]  	= 
	{	["ANY"] 	= {	["EXCLUDE"] = "NONE",
						["HEAD"]	= {
										"GEK_HEAD_S1",
										"VYK_HEAD_S1",
										"REG_HEAD_XO",
									  },
					  },
		["ASTRO"]	= {	["EXCLUDE"] = "ASTRO",
						["HEAD"]	= {
										"REG_HEAD_S1",
										"REG_HEAD_S2",
										"REG_HEAD_DIVING",
										"REG_HEAD_BIOME1",
										"HEAD_GEKHELM",
										"HEAD_G_GEKHELM",
									  },
					  },
							
	},
	["CLASSICS_B"]  	= 
	{	["ANY"] 	= {	["EXCLUDE"] = "NONE",
						["HEAD"]	= {
										"REG_HEAD_SAIL",
									  },
					  },
		["ASTRO"]	= {	["EXCLUDE"] = "ASTRO",
						["HEAD"]	= {
										"REG_HEAD_HOOD01",
										"HEAD_BUCKET",
										"HEAD_ASTBOT1",
										"HEAD_ASTBOT2",
										"HEAD_ATLAS",
									  },
					  },
							
	},
	["FOURTH_A"]	= 
	{	["FOURTH"]	= { ["EXCLUDE"] = "FOURTH",
						["HEAD"]	= {
										"VYK_HEAD_FROG",
										"GEK_HEAD_SNAKE",
										"KOR_HEAD_BRAIN",
										"FOR_HEAD_STING",
										"GEK_HEAD_NUT",
										"FOR_HEAD_HOOD",
										"VYK_HEAD_WORM",
									  },
					  },
	},
	["FOURTH_B"]		= 
	{	["FOURTH"]	= { ["EXCLUDE"] = "FOURTH",
						["HEAD"]	= {
										"VYK_HEAD_ORC",
										"KOR_HEAD_BUBBLE",
										"FOR_HEAD_OWL",
										"KOR_HEAD_TWIG",
										"GEK_HEAD_LIZ",
										"VYK_HEAD_SHARK",
										"FOR_HEAD_SPOOK",
									  },
					  },
	},
}

PRESET_SLOT = {"0", "1", "2", "3", "4", "5", "6", "7", "8"} -- default preset suffix of every race
-- PRESET_SLOT = {"DEFAULT", "0", "1", "2", "3", "4", "5", "6", "7", "8"} -- default preset suffix of every race

RGB = {"R", "G", "B"}

-- Descriptor ID of empty armour piece
NO_ARMOUR_PIECE = "ARMOUR_NULL"


function trunc(x)
	return math.modf(x*1000)/1000
end

function GetDescriptorGroupEntry(ENTRY)
return[[
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="]] .. ENTRY .. [[" />
          </Property>
]]
end

-- initialise all decision-making related variables
EDITION = ""
LIST_DISPLAY = ""
CAPE = ""
BACKPACK = ""
SUIT_EXPORT = ""
TORSO_EXPORT = ""
ARMOUR_DECISION = false
SHORT_DECISION = false
SHOULDERKNESSANDTOES = {}

-- either auto run or ask for user input
if AUTORUN then
	-- auto running
	EDITION = DEFAULT_EDITION
	CAPE = DEFAULT_CAPE
	BACKPACK = DEFAULT_BACKPACK
	SHOULDERKNESSANDTOES = SUIT_PARTS[GET_SUIT]
	ARMOUR_DECISION = REMOVE_ARMOUR
	SHORT_DECISION = SHORT_KING
	if REMOVE_ARMOUR then
		TORSO_EXPORT = DEFAULT_TORSO
	end
else

-- asking for user input

-- asking for edition
for i,j in pairs(EDITION_LIST) do
	LIST_DISPLAY = LIST_DISPLAY .. i .. [[ - ]] .. j .. [[

]]
end

EDITION_PROMPT =
{ 0,
[[Which Edition would you like to install?
]] .. LIST_DISPLAY .. [[
Ignore for 15 seconds to use default stated in DEFAULT_EDITION: ]] .. DEFAULT_EDITION .. [[

]] }

EDITION_DECISION = GUIF(EDITION_PROMPT, 15)
if EDITION_DECISION == 0 or EDITION_DECISION > #EDITION_LIST then
	EDITION = DEFAULT_EDITION
	else EDITION = EDITION_LIST[EDITION_DECISION]
end


-- asking for cape
CAPE_LIST = {"CAPE_ATLAS", "CAPE_PROTO", "CAPE_PIRATE", "CAPE_INFINITY", "CAPE_FREIGHTER", "CAPE_FRIGATE", "CAPE_SANDWORM", "CAPE_JELLY", "CAPE_SEED"}

LIST_DISPLAY = ""
for i,j in pairs(CAPE_LIST) do
	LIST_DISPLAY = LIST_DISPLAY .. i .. [[ - ]] .. j .. [[

]]
end

CAPE_PROMPT =
{ 69,
[[Which Cape would you like to equip?
0 - None
]] .. LIST_DISPLAY .. [[
Ignore for 15 seconds to use default stated in DEFAULT_CAPE: ]] .. DEFAULT_CAPE .. [[

]] }

CAPE_DECISION = GUIF(CAPE_PROMPT, 15)
if CAPE_DECISION > #CAPE_LIST then
	CAPE = DEFAULT_CAPE
	elseif CAPE_DECISION ~= 0 then
	CAPE = CAPE_LIST[CAPE_DECISION]
end


-- asking for backpack
BACKPACK_LIST = {"BACKPACK_RETRO", "BACKPACK_EXPD1", "BACKPACK_ROYAL", "BACKPACK_SENT", "BACKPACK_ATLAS", "BACKPACK_CAPE"}

LIST_DISPLAY = ""
for i,j in pairs(BACKPACK_LIST) do
	LIST_DISPLAY = LIST_DISPLAY .. i .. [[ - ]] .. j .. [[

]]
end

BACKPACK_PROMPT =
{ 69,
[[Which Backpack would you like to equip?
0 - Vanilla Default
]] .. LIST_DISPLAY .. [[
Ignore for 15 seconds to use default stated in DEFAULT_BACKPACK: ]] .. DEFAULT_BACKPACK .. [[

]] }

BACKPACK_DECISION = GUIF(BACKPACK_PROMPT, 15)
if BACKPACK_DECISION > #BACKPACK_LIST then
	BACKPACK = DEFAULT_BACKPACK
	elseif BACKPACK_DECISION ~= 0 then
	BACKPACK = BACKPACK_LIST[BACKPACK_DECISION]
end

LIST_DISPLAY = ""
for i,j in pairs(SUIT_SETS) do
	LIST_DISPLAY = LIST_DISPLAY .. i .. [[ - ]] .. j .. [[

]]
end


-- asking for suit
SUIT_PROMPT =
{ 69,
[[Which set of Body Part Set would you like to equip?
]] .. LIST_DISPLAY .. [[
Ignore for 15 seconds to use default stated in GET_SUIT: ]] .. GET_SUIT .. [[

]] }

SUIT_DECISION = GUIF(SUIT_PROMPT, 15)
if SUIT_DECISION > #SUIT_SETS or SUIT_DECISION <= 0 then
	SUIT_EXPORT = GET_SUIT
	else SUIT_EXPORT = SUIT_SETS[SUIT_DECISION]
end

SHOULDERKNESSANDTOES = SUIT_PARTS[SUIT_EXPORT]


-- asking to remove armour
ARMOUR_PROMPT =
{ REMOVE_ARMOUR,
[[Do you want to remove your Armour piece?
Ignore for 15 seconds to use default stated in REMOVE_ARMOUR: ]] .. tostring(REMOVE_ARMOUR) .. [[

]] }


-- asking for torso piece IF remove armour
TORSO_LIST = {"TORSO_VANILLA", "TORSO_ASTRO", "TORSO_GEK", "TORSO_VYK", "TORSO_FOURTH", "TORSO_BUILDERS"}

LIST_DISPLAY = ""
for i,j in pairs(TORSO_LIST) do
	LIST_DISPLAY = LIST_DISPLAY .. i .. [[ - ]] .. j .. [[

]]
end

TORSO_PROMPT =
{ 69,
[[Which Torso would you like to equip?
]] .. LIST_DISPLAY .. [[
Ignore for 15 seconds to use default stated in DEFAULT_TORSO: ]] .. DEFAULT_TORSO .. [[

]]}

-- actual logic to ask for torso
ARMOUR_DECISION = GUIF(ARMOUR_PROMPT, 15)
if ARMOUR_DECISION then
	TORSO_DECISION = GUIF(TORSO_PROMPT, 15)
	if TORSO_DECISION > #TORSO_LIST or TORSO_DECISION <= 0 then
		TORSO_EXPORT = DEFAULT_TORSO
		else TORSO_EXPORT = TORSO_LIST[TORSO_DECISION]
	end
end


-- asking to set Gek body type
SHORT_PROMPT =
{ SHORT_KING,
[[Do you want make all presets use the Gek body?
Ignore for 15 seconds to use default stated in SHORT_KING: ]] .. tostring(SHORT_KING) .. [[

]] }
	
SHORT_DECISION = GUIF(SHORT_PROMPT, 15)

end


-- taking decisions made and putting the body part set together
if DEBUG_TEXT then print("CAPE EMPTY? - " .. CAPE .. "") end
if BACKPACK ~= "" then
	table.insert(SHOULDERKNESSANDTOES, BACKPACK)
else table.insert(SHOULDERKNESSANDTOES, "BACKPACK_VANILL")
end
if CAPE ~= "" then
	table.insert(SHOULDERKNESSANDTOES, CAPE)
end
if ARMOUR_DECISION then
	SHOULDERKNESSANDTOES[5] = NO_ARMOUR_PIECE -- replacing armour piece to empty armour
	SHOULDERKNESSANDTOES[1] = TORSO_EXPORT -- replacing torso
end


-- inserting new character customisation colour palettes
NEW_COLOURS = {}
-- RGB in Vector3f format, truncated to 3 decimal places
for i,j in pairs(NEW_COLOURS_HEX) do
	NEW_COLOUR_TEMP = {}
	for k,l in pairs(RGB) do
	-- Converting 2 digits of the hex colour into decimal, dividing by 255 and truncating to 3 d.p
	NEW_COLOUR_TEMP[l] = trunc(tonumber(string.sub(j,((k-1)*2)+1,((k-1)*2)+2),16)/255)
	end
	table.insert(NEW_COLOURS,NEW_COLOUR_TEMP)
end

-- initialise final change table
-- everything going in CHARACTERCUSTOMISATIONPRESETCUSTOMISATIONSDATA goes in this
HEAD_CHANGE_TABLE = {} 

-- setting up removal of vanilla body parts
YEET_PRESET	 = {	["FSKWG"] = {},
					-- ["PRECEDING_KEY_WORDS"] = {"Data", "DescriptorGroups", "NMSString0x10.xml"},
					["PRECEDING_KEY_WORDS"] = {"Data", "DescriptorGroups"},
					-- ["WIS"] =
					-- {
						-- {"Value", "IGNORE"},
					-- },
					["REPLACE_TYPE"] = "ALL",
					["REMOVE"] = "SECTION"
				 }

-- marking each preset modified to have vanilla DescriptorGroups section removed
for i,j in pairs(RACES) do						
	PRESET_COUNT = 1						-- reset to beginning with each race
	for p,q in pairs(HEADS[EDITION]) do
		for k,l in pairs(q["HEAD"]) do			-- marking by the number of heads in the edition's set
			if j ~= q["EXCLUDE"] then
				table.insert(YEET_PRESET["FSKWG"], {"Name", j .. "_" .. PRESET_SLOT[PRESET_COUNT]})
				PRESET_COUNT = PRESET_COUNT + 1		-- proceed to next slot
			end
		end
	end
end
table.insert(HEAD_CHANGE_TABLE, YEET_PRESET)

-- inserting compiled presets, by race, by edition, by head sets
for i,j in pairs(RACES) do						
	PRESET_COUNT = 1						-- reset to beginning with each race
	for p,q in pairs(HEADS[EDITION]) do
		for k,l in pairs(q["HEAD"]) do			-- adding one head to one preset
			if j ~= q["EXCLUDE"] then			-- exclude head list from being added into race if excluded
				-- setting the preset to be inserted into
				ADD_HEAD_ENTRY = {	["SPECIAL_KEY_WORDS"] = {"Name", j .. "_" .. PRESET_SLOT[PRESET_COUNT]},
									["PRECEDING_KEY_WORDS"] = {"Data"},
									["ADD"] = {}
								 }
				-- putting body part IDs into EXML snippets
				TEMP_BODY_STRINGS = {[[<Property name="DescriptorGroups">]],}
				table.insert(TEMP_BODY_STRINGS, GetDescriptorGroupEntry(l))
				table.insert(TEMP_BODY_STRINGS, GetDescriptorGroupEntry(RACES_BASE[i]))
				-- for m,n in pairs (TEMP_BODY) do
					-- table.insert(TEMP_BODY_STRINGS, GetDescriptorGroupEntry(n))
				-- end
				for m,n in pairs(SHOULDERKNESSANDTOES) do
					table.insert(TEMP_BODY_STRINGS, GetDescriptorGroupEntry(n))
				end
				table.insert(TEMP_BODY_STRINGS, [[</Property>]])
				-- inserting EXML snippets into the change entry and change table
				table.insert(ADD_HEAD_ENTRY["ADD"], table.concat(TEMP_BODY_STRINGS))
				table.insert(HEAD_CHANGE_TABLE, ADD_HEAD_ENTRY)
				PRESET_COUNT = PRESET_COUNT + 1		-- proceed to next slot
			end
		end
	end
end

-- setting up Short King
if SHORT_DECISION then
	SHORT_KING_ENTRY= {	["FSKWG"] = {},
						["PRECEDING_KEY_WORDS"] = {"Data", "BoneScales"},
						["WISS"] =
						{
							{"BoneName", "GEKBODY"},
						},
						["VALUE_CHANGE_TABLE"] =
						{
							{"Scale", "1"}
						},
					 }
	-- setting all presets to use the body type, by race, by preset slot
	for i,j in pairs(RACES) do
		for k,l in pairs(PRESET_SLOT) do
			table.insert(SHORT_KING_ENTRY["FSKWG"], {"Name", j .. "_" .. l})
		end
	end
	table.insert(HEAD_CHANGE_TABLE, SHORT_KING_ENTRY)
end

-- set colours to preset color according to PRESET_COLOURS
for	m,n in pairs(PRESET_COLOURS) do	
	-- Replace machine broke, now using archaic method
	if DEBUG_TEXT then print(m) end
	CHANGE_PRESET_COLOUR = {}
	CHANGE_PRESET_COLOUR = {	-- ["PRECEDING_KEY_WORDS"] = {"Colours"}, 
								["PRECEDING_KEY_WORDS"] = {"GcCharacterCustomisationColourData.xml"}, 
								-- ["CUSTOM_ORDER"] = {"WIS","SU"},
								-- ["SECTION_UP"] = 1,
								["WIS"] =
								{
									{"Palette", n["Palette"]},
									{"ColourAlt", n["ColourAlt"]},
								},
								["INTEGER_TO_FLOAT"] = "FORCE",
								["WISEC_LOP"] = "AND",
								-- ["WISUBSEC_OPTION"] = "ALL",
								["REPLACE_TYPE"] = "ALL",
								["VALUE_CHANGE_TABLE"] = {},
							}
	-- for t=2, m do
		-- table.insert(CHANGE_PRESET_COLOUR["PRECEDING_KEY_WORDS"],"GcCharacterCustomisationColourData.xml")
	-- end
	for r,s in pairs(RGB) do
		HEAD_TEMP = {s, NEW_COLOURS[n["Colour"]][s]}
		table.insert(CHANGE_PRESET_COLOUR["VALUE_CHANGE_TABLE"], HEAD_TEMP)
	end		
	table.insert(HEAD_CHANGE_TABLE, CHANGE_PRESET_COLOUR)	
end

MAX_COLOUR_SLOTS = 64 - NUM_VANILLA_COLOUR -- limits number of custom colours since colour palettes are fixed 64 slots
-- SECTION_RATIO_GENERAL = ""

COLOUR_CHANGE_TABLE = {}
-- building the EXML_CHANGE_TABLE for player colour palette
for i,j in pairs(NEW_COLOURS) do	
    if DEBUG_TEXT then print(i) end
	ADD_COLOUR_ENTRY =
	{	["SPECIAL_KEY_WORDS"] = { "Player", "GcPaletteData.xml" },
		["PRECEDING_KEY_WORDS"] = { "Colour.xml" },
		["INTEGER_TO_FLOAT"] = "FORCE",
		["SECTION_ACTIVE"] = -(NUM_VANILLA_COLOUR + i),
		["VALUE_CHANGE_TABLE"] = {}
	}	
	-- for k=1, NUM_VANILLA_COLOUR + i do
		-- table.insert(ADD_COLOUR_ENTRY["PRECEDING_KEY_WORDS"], "Colour.xml")
	-- end
    for m,n in pairs(RGB) do
        COLOUR_TEMP = { n, j[n] }
        table.insert(ADD_COLOUR_ENTRY["VALUE_CHANGE_TABLE"], COLOUR_TEMP)
        if DEBUG_TEXT then print(COLOUR_TEMP[1] ..", ".. COLOUR_TEMP[2]) end
    end
	table.insert(COLOUR_CHANGE_TABLE, ADD_COLOUR_ENTRY)
	if i == NUM_VANILLA_COLOUR then break end
end

if DEBUG_TEXT then 
	-- This will help you understand the content of COLOUR_CHANGE_TABLE by printing its contents
	for i,j in pairs(COLOUR_CHANGE_TABLE) do
		for m,n in pairs(j["PRECEDING_KEY_WORDS"]) do
			print(n .. ", ")
		end
		for m,n in pairs(j["VALUE_CHANGE_TABLE"])do
			for k,l in pairs(n) do
				print(l .. ", ")
			end
		end
	end

	-- This will help you understand the content of HEAD_CHANGE_TABLE by printing its contents
	for i,j in pairs(HEAD_CHANGE_TABLE) do
		for m,n in pairs(j["SPECIAL_KEY_WORDS"]) do
			print(n .. ", ")
		end
		for m,n in pairs(j["VALUE_CHANGE_TABLE"])do
			for k,l in pairs(n) do
				print(l .. ", ")
			end
		end
	end
end

PAK_NAME =
{
	["CLASSICS"] = "_Winder_GettingHead_Classics.pak",
	["CLASSICS_B"] = "_Winder_GettingHead_Classics_B.pak",
	["FOURTH_A"] = "_Winder_GettingHead_Fourth_A.pak",
	["FOURTH_B"] = "_Winder_GettingHead_Fourth_B.pak",
}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= PAK_NAME[EDITION],
["MOD_AUTHOR"]				= "WinderTP",
["AMUMSS_SUPPRESS_MSG"] 	= "UNUSED_VARIABLE",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN",
					["EXML_CHANGE_TABLE"] 	= COLOUR_CHANGE_TABLE
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONPRESETCUSTOMISATIONSDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= HEAD_CHANGE_TABLE
				},
			}
		},
	}	
}