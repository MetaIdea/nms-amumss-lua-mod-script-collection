-- if set to true, the script will automatically run without asking for user input
AUTORUN = false

---------------------------
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
-- USER DEFAULTS SECTION --
---------------------------

-- Edition of Getting Head to use
DEFAULT_EDITION = "Anomaly" -- Anomaly, Traveller

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

DEFAULT_BACKPACK = "BACKPACK_DIVING"
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
BACKPACK_DIVING
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

PAK_NAME = { "Anomaly", "Traveller" }

NUM_VANILLA_COLOUR = 20				

-- racial preset prefix
RACES =	{ 	["ASTRO"] = 	{ 	["Name"] = "ASTRO", 
								["Base"] = "ASTRONAUT_BASE",
								["Head"] = "ASTRO_HEAD"
							},
			["KORVAX"] = 	{ 	["Name"] = "KORVAX", 
								["Base"] = "KORVAX_BASE",
								["Head"] = "KORVAX_HEAD"
							},
			["GEK"] = 		{ 	["Name"] = "GEK", 
								["Base"] = "GEK_BASE",
								["Head"] = "GEK_HEAD"
							},
			["VYKEEN"] = 	{ 	["Name"] = "VYKEEN", 
								["Base"] = "VYKEEN_BASE",
								["Head"] = "VYKEEN_HEAD"
							},
			["FOURTH"] = 	{ 	["Name"] = "FOURTH", 
								["Base"] = "FOURTH_BASE",
								["Head"] = "FOURTH_HEAD"
							},
			["BUI"] = 		{ 	["Name"] = "BUI", 
								["Base"] = "BUILDERS_BASE",
								["Head"] = "BUILDER_HEAD"
							}
		}
RACES_ARMOUR ={ "ARMOUR_VANILLA", "ARMOUR_ASTRO", "ARMOUR_GEK", "ARMOUR_VYK", "ARMOUR_FOURTH", "ARMOUR_BUI1", "ARMOUR_BUI2", "ARMOUR_BUI3", "ARMOUR_BUI4", "ARMOUR_APOD", "ARMOUR_DIVING"}
RACES_TORSO ={ "TORSO_ASTRO", "TORSO_VANILLA", "TORSO_GEK", "TORSO_VYK", "TORSO_FOURTH", "TORSO_BUILDERS"}

-- heads to apply per race to exclude
HEADS = 
{	["ANOMALY"]	=
	{
		["ANY"] 	= {	["EXCLUDE"] = "NONE",
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
										"REG_HEAD_SAIL",
										"REG_HEAD_HOOD01",
										"HEAD_BUCKET",
										"HEAD_ATLAS",
										"HEAD_APODSPIKE",
										"HEAD_APODWASP",
										"HEAD_APODCRY",
										"HEAD_APODTOXIC",
										"HEAD_DIVING",
									  },
					  },
		["BUI"] 	= {	["EXCLUDE"] = "BUI",
						["HEAD"]	= {
										"HEAD_ASTBOT1",
										"HEAD_ASTBOT2",
									  },
					  },
	},
	["TRAVELLER"]	=
	{
		["FOURTH"]	= { ["EXCLUDE"] = "FOURTH",
						["HEAD"]	= {
										"VYK_HEAD_FROG",
										"GEK_HEAD_SNAKE",
										"KOR_HEAD_BRAIN",
										"FOR_HEAD_STING",
										"GEK_HEAD_NUT",
										"FOR_HEAD_HOOD",
										"VYK_HEAD_WORM",
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

-- For heads that do not have a CHARACTERCUSTOMISATIONUIDATA antry
-- copies an entry with a DescriptorOption value define in CopyFrom and then replaces that with Name
CUSTOM_HEAD_ENTRIES =
{
	["GEK_HEAD_S1"] =
	{
		["Name"] = "GEK_HEAD_S1",
		["CopyFrom"] = "REG_HEAD_S1"
	},
	["VYK_HEAD_S1"] =
	{
		["Name"] = "VYK_HEAD_S1",
		["CopyFrom"] = "REG_HEAD_S1"
	},
}

PRESET_SLOT = {"0", "1", "2", "3", "4", "5", "6", "7", "8"} -- default preset suffix of every race
-- PRESET_SLOT = {"DEFAULT", "0", "1", "2", "3", "4", "5", "6", "7", "8"} -- default preset suffix of every race

RGB = {"R", "G", "B"}

-- Descriptor ID of empty armour piece
NO_ARMOUR_PIECE = "ARMOUR_NULL"

-- prefixes for extracted vanilla exml sections
DESCRIPTORGROUP_SEC_PREFIX = "GettingHead_DESC_"
CUSTOMISATIONUIDATASEC_PREFIX = "GettingHead_CUSTOM_"

-- UI file stuff
-- VAN_MAX_HEAD = 50 -- number of vanilla head slots
-- UI_HEAD_LINE = 10 -- number of heads per line in UI
-- NEW_MAX_HEAD = 80
-- HEADUI_PREFIX = "HEADUI_"

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
-- SUIT_EXPORT = ""
TORSO_EXPORT = ""
ARMOUR_DECISION = false
SHORT_DECISION = false
-- SHOULDERKNESSANDTOES = {}

-- either auto run or ask for user input
if AUTORUN then
	-- auto running
	EDITION = DEFAULT_EDITION
	CAPE = DEFAULT_CAPE
	BACKPACK = DEFAULT_BACKPACK
	-- SHOULDERKNESSANDTOES = SUIT_PARTS[GET_SUIT]
	ARMOUR_DECISION = REMOVE_ARMOUR
	SHORT_DECISION = SHORT_KING
	if REMOVE_ARMOUR then
		TORSO_EXPORT = DEFAULT_TORSO
	end
else

-- asking for user input

-- asking for edition
for i,j in pairs(PAK_NAME) do
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
if EDITION_DECISION == 0 or EDITION_DECISION > #PAK_NAME then
	EDITION = DEFAULT_EDITION
	else EDITION = PAK_NAME[EDITION_DECISION]
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
BACKPACK_LIST = {"BACKPACK_RETRO", "BACKPACK_EXPD1", "BACKPACK_ROYAL", "BACKPACK_SENT", "BACKPACK_ATLAS", "BACKPACK_CAPE", "BACKPACK_DIVING"}

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
-- everything going in CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA goes in this
DESCRIPTORGROUP_CHANGE_TABLE = {}
-- everything going in CHARACTERCUSTOMISATIONUIDATA goes in this
CUSTOMISATIONUIDATA_CHANGE_TABLE = {}
-- everything going in NUMBEROPTIONS goes in this
-- HEAD_UI_CHANGE_TABLE = {}


-- Batch replacement in presets if each element is defined
if BACKPACK ~= "" then
	table.insert(HEAD_CHANGE_TABLE,
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "BACKPACK_VANILL",
		["VALUE_CHANGE_TABLE"] =
		{
			{"IGNORE", BACKPACK}
		}
	})
end

if CAPE ~= "" then
	table.insert(HEAD_CHANGE_TABLE,
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = "CAPE_NULL",
		["VALUE_CHANGE_TABLE"] =
		{
			{"IGNORE", CAPE}
		}
	})
end

if ARMOUR_DECISION then 
	table.insert(HEAD_CHANGE_TABLE,
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = RACES_ARMOUR,
		["VALUE_CHANGE_TABLE"] =
		{
			{"IGNORE", NO_ARMOUR_PIECE}
		}
	})
	table.insert(HEAD_CHANGE_TABLE,
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_MATCH"] = RACES_TORSO,
		["VALUE_CHANGE_TABLE"] =
		{
			{"IGNORE", TORSO_EXPORT}
		}
	})
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
			table.insert(SHORT_KING_ENTRY["FSKWG"], {"Name", j["Name"] .. "_" .. l})
		end
	end
	table.insert(HEAD_CHANGE_TABLE, SHORT_KING_ENTRY)
	-- also setting all races to have "Gek body" switched on for anim/cam position stuff
	table.insert(CUSTOMISATIONUIDATA_CHANGE_TABLE,
	{
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] =
		{
			{"IsGek", "True"}
		},
	})
end

-- fetching and adding heads exml sections by race exclusion, by head
for _i,j in pairs(HEADS[string.upper(EDITION)]) do
	for _k,l in pairs(j["HEAD"]) do
		-- taking CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA section
		-- all heads have entries in this one so no need to use CUSTOM_HEAD_ENTRIES
		table.insert(DESCRIPTORGROUP_CHANGE_TABLE,
		{
			["SPECIAL_KEY_WORDS"] = { "GroupID", l},
			["SEC_COPY"] = DESCRIPTORGROUP_SEC_PREFIX .. l,
		})
		-- taking CHARACTERCUSTOMISATIONUIDATA section
		CUSTOM_UIDATA_ENTRY = false
		-- check if head does not already have entry in CHARACTERCUSTOMISATIONUIDATA
		-- this is manually defined in CUSTOM_HEAD_ENTRIES
		for _o,p in pairs(CUSTOM_HEAD_ENTRIES) do
			if l == p["Name"] then 
				CUSTOM_UIDATA_ENTRY = true
			end
		end
		-- either cannibalise a defined vanilla entry and replace DescriptorOption value to make custom entry
		-- or fetch vanilla section directly
		if CUSTOM_UIDATA_ENTRY then
			table.insert(CUSTOMISATIONUIDATA_CHANGE_TABLE,
			{
				["SPECIAL_KEY_WORDS"] = { "DescriptorOption", CUSTOM_HEAD_ENTRIES[l]["CopyFrom"]},
				["SEC_COPY"] = CUSTOMISATIONUIDATASEC_PREFIX .. l,
			})
			table.insert(CUSTOMISATIONUIDATA_CHANGE_TABLE,
			{
				["SEC_EDIT"] = CUSTOMISATIONUIDATASEC_PREFIX .. l,
				-- ["SPECIAL_KEY_WORDS"] = { "DescriptorOption", l},
				["VALUE_CHANGE_TABLE"] = { { "DescriptorOption", l } },
			})
			else table.insert(CUSTOMISATIONUIDATA_CHANGE_TABLE,
			{
				["SPECIAL_KEY_WORDS"] = { "DescriptorOption", l},
				["SEC_COPY"] = CUSTOMISATIONUIDATASEC_PREFIX .. l,
			})
		end
		-- adding sections back in, if race is not excluded
		for _m,n in pairs(RACES) do
			if n["Name"] ~= j["EXCLUDE"] then
				table.insert(DESCRIPTORGROUP_CHANGE_TABLE,
				{
					["SPECIAL_KEY_WORDS"] = { "Id", n["Head"]},
					["PRECEDING_KEY_WORDS"] = {"DescriptorGroups"},
					["ADD_OPTION"]  = "ADDendSECTION",
					["SEC_PASTE"] = DESCRIPTORGROUP_SEC_PREFIX .. l,
				})
				table.insert(CUSTOMISATIONUIDATA_CHANGE_TABLE,
				{
					["SPECIAL_KEY_WORDS"] = { "DescriptorGroupOption", n["Base"], "GroupID", "HEAD"},
					["PRECEDING_KEY_WORDS"] = {"DescriptorOptions", "GcCustomisationDescriptorGroupOptions.xml", "DescriptorGroupOptions"},
					["ADD_OPTION"]  = "ADDendSECTION",
					["SEC_PASTE"] = CUSTOMISATIONUIDATASEC_PREFIX .. l,
				})
			end
		end
	end
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
	{	["SPECIAL_KEY_WORDS"] = { "ID", "PLAYER" },
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

-- unlocking heads for all races
table.insert(DESCRIPTORGROUP_CHANGE_TABLE,
{ 
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] =
		{
			{"RequiresGroup", ""}
		}
})

-- unlocking all mutually exclusive parts i.e. null armour/cape w/ jetpack
-- table.insert(CUSTOMISATIONUIDATA_CHANGE_TABLE,
-- { 
		-- ["PRECEDING_KEY_WORDS"] = 
		-- {
			-- { "HideIfGroupActive", "NMSString0x10.xml" },
			-- { "SelectingRemovesGroup", "NMSString0x10.xml" },
			-- { "SelectingAddsGroup", "NMSString0x10.xml" },
			-- { "UnselectingRemovesGroup", "NMSString0x10.xml" },
			-- { "UnselectingAddsGroup", "NMSString0x10.xml" },
		-- },
		-- ["REPLACE_TYPE"] = "ALL",
		-- ["REMOVE"] = "SECTION",
-- })

-- UI changes
-- fetching end of line button
-- table.insert(HEAD_UI_CHANGE_TABLE,
-- {
	-- ["SPECIAL_KEY_WORDS"] = { "ID", "OPTION" .. tostring(UI_HEAD_LINE)},
	-- ["SECTION_UP"] = 1,
	-- ["SEC_COPY"] = HEADUI_PREFIX .. "EOL",
-- })
-- -- fetching not end of line button
-- table.insert(HEAD_UI_CHANGE_TABLE,
-- {
	-- ["SPECIAL_KEY_WORDS"] = { "ID", "OPTION" .. tostring(UI_HEAD_LINE+1)},
	-- ["SECTION_UP"] = 1,
	-- ["SEC_COPY"] = HEADUI_PREFIX .. "notEOL",
-- })

-- -- changing ID and then adding each extra button
-- for i=VAN_MAX_HEAD+1,NEW_MAX_HEAD do
	-- -- check if end of line
	-- if i % UI_HEAD_LINE > 0 then
		-- table.insert(HEAD_UI_CHANGE_TABLE,
		-- {
			-- ["SEC_EDIT"] = HEADUI_PREFIX .. "notEOL",
			-- ["VALUE_CHANGE_TABLE"] = { { "ID", "OPTION" .. tostring(i)} },
		-- })
		-- table.insert(HEAD_UI_CHANGE_TABLE,
		-- {
			-- ["SPECIAL_KEY_WORDS"] = { "ID", "OPTION" .. tostring(i-1)},
			-- ["SECTION_UP"] = 1,
			-- ["ADD_OPTION"]  = "ADDafterSECTION",
			-- ["SEC_PASTE"] = HEADUI_PREFIX .. "notEOL",
		-- })
	-- else
		-- table.insert(HEAD_UI_CHANGE_TABLE,
		-- {
			-- ["SEC_EDIT"] = HEADUI_PREFIX .. "EOL",
			-- ["VALUE_CHANGE_TABLE"] = { { "ID", "OPTION" .. tostring(i)} },
		-- })
		-- table.insert(HEAD_UI_CHANGE_TABLE,
		-- {
			-- ["SPECIAL_KEY_WORDS"] = { "ID", "OPTION" .. tostring(i-1)},
			-- ["SECTION_UP"] = 1,
			-- ["ADD_OPTION"]  = "ADDafterSECTION",
			-- ["SEC_PASTE"] = HEADUI_PREFIX .. "EOL",
		-- })
	-- end
-- end

-- table.insert(HEAD_UI_CHANGE_TABLE,
-- {
	-- ["SPECIAL_KEY_WORDS"] = { "ID", "OPTIONS1", "Layout", "GcNGuiLayoutData.xml"},
	-- -- ["SECTION_UP"] = 1,
	-- ["VALUE_CHANGE_TABLE"] = { { "Height", "540"} },
-- })

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
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Winder_GettingHead_GettingOn_" .. EDITION .. ".pak",
-- ["MOD_FILENAME"] 			= PAK_NAME[EDITION],
["MOD_AUTHOR"]				= "WinderTP",
["AMUMSS_SUPPRESS_MSG"] 	= "UNUSED_VARIABLE",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= DESCRIPTORGROUP_CHANGE_TABLE
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\CHARACTERCUSTOMISATIONUIDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= CUSTOMISATIONUIDATA_CHANGE_TABLE
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN",
					["EXML_CHANGE_TABLE"] 	= COLOUR_CHANGE_TABLE
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONPRESETCUSTOMISATIONSDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= HEAD_CHANGE_TABLE
				},
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= "UI\COMPONENTS\CHARCUSTOMISE\NUMBEROPTIONS.MBIN",
					-- ["EXML_CHANGE_TABLE"] 	= HEAD_UI_CHANGE_TABLE
				-- },
			}
		},
	}	
}