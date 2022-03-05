EDITION = "CLASSICS"	-- CLASSICS, FOURTH_A, FOURTH_B

NUM_VANILLA_COLOUR = 20

-- Suit parts minus backpack
-- VYK = Armoured Suit
-- GOLD = Golden Suit
GET_SUIT = "VYK"

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
		["ColourAlt"] = "Alternative4",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Head",
		["ColourAlt"] = "Alternative5",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Torso",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Torso",
		["ColourAlt"] = "Alternative4",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Torso",
		["ColourAlt"] = "Alternative5",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Chest_Armour",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Chest_Armour",
		["ColourAlt"] = "Alternative4",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Chest_Armour",
		["ColourAlt"] = "Alternative5",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Backpack",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Backpack",
		["ColourAlt"] = "Alternative4",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Backpack",
		["ColourAlt"] = "Alternative5",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Hands",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Hands",
		["ColourAlt"] = "Alternative4",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Hands",
		["ColourAlt"] = "Alternative5",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Legs",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Legs",
		["ColourAlt"] = "Alternative4",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Legs",
		["ColourAlt"] = "Alternative5",
		["Colour"] = 	6,		
	},
	{
		["Palette"] = 	"Custom_Feet",
		["ColourAlt"] = "Primary",
		["Colour"] = 	4,		
	},
	{
		["Palette"] = 	"Custom_Feet",
		["ColourAlt"] = "Alternative4",
		["Colour"] = 	5,		
	},
	{
		["Palette"] = 	"Custom_Feet",
		["ColourAlt"] = "Alternative5",
		["Colour"] = 	6,		
	},
}
				
				
RACES ={ "ASTRO", "KORVAX", "GEK", "VYKEEN", "FOURTH" }

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
	}
}

SUIT_PARTS =
{	
	["VYK"] 	= {"TORSO_VYK", "ARMOUR_VYK", "GLOVES_VYK", "LEGS_VYK", "BOOTS_VYK"},
	["GOLD"] 	= {"TORSO_VYK", "ARMOUR_VYK", "GLOVES_VYK", "LEGS_VYK", "BOOTS_VYK"},
}

SHOULDERKNESSANDTOES = SUIT_PARTS[GET_SUIT]


PRESET_SLOT = {"DEFAULT", "0", "1", "2", "3", "4", "5", "6", "7", "8"} -- default preset suffix of every race

RGB = {"R", "G", "B"}


function trunc(x)
	return math.modf(x*1000)/1000
end

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

HEAD_CHANGE_TABLE = {}
for i,j in pairs(RACES) do						-- adding all the heads to each race
		PRESET_COUNT = 1						-- reset to beginning with each race
		for p,q in pairs(HEADS[EDITION]) do
		for k,l in pairs(q["HEAD"]) do			-- adding one head to one preset
			if j ~= q["EXCLUDE"] then			-- exclude head list from being added into race if excluded
			ADD_HEAD_ENTRY = {}
			ADD_HEAD_ENTRY = {["SPECIAL_KEY_WORDS"] = {"Name", j .. "_" .. PRESET_SLOT[PRESET_COUNT]}, ["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml", "NMSString0x10.xml"}, ["REPLACE_TYPE"] = "", ["VALUE_CHANGE_TABLE"] = {}}
			-- replace value at 2nd NMSString0x10.xml since first is race
			HEAD_TEMP = {"Value", l}
			table.insert(ADD_HEAD_ENTRY["VALUE_CHANGE_TABLE"], HEAD_TEMP)
			table.insert(HEAD_CHANGE_TABLE, ADD_HEAD_ENTRY)
			for m,n in pairs(SHOULDERKNESSANDTOES) do			-- adding each body part sequentially in their own EXML_CHANGE_TABLE entry
				ADD_HEAD_ENTRY = {}
				ADD_HEAD_ENTRY = {["SPECIAL_KEY_WORDS"] = {"Name", j .. "_" .. PRESET_SLOT[PRESET_COUNT]}, ["PRECEDING_KEY_WORDS"] = {"NMSString0x10.xml", "NMSString0x10.xml"}, ["REPLACE_TYPE"] = "", ["VALUE_CHANGE_TABLE"] = {}}
				for o=1, m do					-- adding more NMSString0x10.xml for m times for each body part
					table.insert(ADD_HEAD_ENTRY["PRECEDING_KEY_WORDS"], "NMSString0x10.xml")
				end
				HEAD_TEMP = {"Value", n}
				table.insert(ADD_HEAD_ENTRY["VALUE_CHANGE_TABLE"], HEAD_TEMP)
				table.insert(HEAD_CHANGE_TABLE, ADD_HEAD_ENTRY)
			end
			for	m,n in pairs(PRESET_COLOURS) do	-- set colours to preset color according to PRESET_COLOURS
				-- ADD_HEAD_ENTRY = {["PRECEDING_FIRST"] = "TRUE", ["PRECEDING_KEY_WORDS"] = j .. "_" .. PRESET_SLOT[PRESET_COUNT], ["SPECIAL_KEY_WORDS"] = {"Palette", n["Palette"],"ColourAlt", n["ColourAlt"]}, ["SECTION_UP"] = 1, ["VALUE_CHANGE_TABLE"] = {}}
				-- Replace machine broke, now using archaic method
				print(m)
				ADD_HEAD_ENTRY = {["SPECIAL_KEY_WORDS"] = {"Name", j .. "_" .. PRESET_SLOT[PRESET_COUNT]},
									-- ["PRECEDING_KEY_WORDS"] = {"Colours"}, 
									["PRECEDING_KEY_WORDS"] = {"GcCharacterCustomisationColourData.xml"}, 
									["SECTION_ACTIVE"] = m,
									["INTEGER_TO_FLOAT"] = "FORCE", ["VALUE_CHANGE_TABLE"] = {},
									["REPLACE_TYPE"] = ""}
				-- for t=2, m do
					-- table.insert(ADD_HEAD_ENTRY["PRECEDING_KEY_WORDS"],"GcCharacterCustomisationColourData.xml")
				-- end
				for r,s in pairs(RGB) do
					HEAD_TEMP = {s, NEW_COLOURS[n["Colour"]][s]}
					table.insert(ADD_HEAD_ENTRY["VALUE_CHANGE_TABLE"], HEAD_TEMP)
				end		
				table.insert(HEAD_CHANGE_TABLE, ADD_HEAD_ENTRY)	
			end
			PRESET_COUNT = PRESET_COUNT + 1		-- proceed to next slot
			end
		end
	end
end


MAX_COLOUR_SLOTS = 64 - NUM_VANILLA_COLOUR -- limits number of custom colours since colour palettes are fixed 64 slots
-- SECTION_RATIO_GENERAL = ""

COLOUR_CHANGE_TABLE = {}
for i,j in pairs(NEW_COLOURS) do	-- building the EXML_CHANGE_TABLE for player colour palette
    print(i)
	ADD_COLOUR_ENTRY = {["PRECEDING_KEY_WORDS"] = { "Player", "Colours" }, ["INTEGER_TO_FLOAT"] = "FORCE", ["VALUE_CHANGE_TABLE"] = {}}	
	for k=1, NUM_VANILLA_COLOUR + i do
		table.insert(ADD_COLOUR_ENTRY["PRECEDING_KEY_WORDS"], "Colour.xml")
	end
    for m,n in pairs(RGB) do
        COLOUR_TEMP = { n, j[n] }
        table.insert(ADD_COLOUR_ENTRY["VALUE_CHANGE_TABLE"], COLOUR_TEMP)
        print(COLOUR_TEMP[1] ..", ".. COLOUR_TEMP[2])
    end
	table.insert(COLOUR_CHANGE_TABLE, ADD_COLOUR_ENTRY)
	if i == NUM_VANILLA_COLOUR then break end
end

-- This will help you understand the content of COLOUR_CHANGE_TABLE by printing its contents
--[[for i,j in pairs(COLOUR_CHANGE_TABLE) do
	for m,n in pairs(j["PRECEDING_KEY_WORDS"]) do
		print(n .. ", ")
	end
	for m,n in pairs(j["VALUE_CHANGE_TABLE"])do
		for k,l in pairs(n) do
			print(l .. ", ")
		end
	end
end]]

-- This will help you understand the content of HEAD_CHANGE_TABLE by printing its contents
--[[for i,j in pairs(HEAD_CHANGE_TABLE) do
	for m,n in pairs(j["SPECIAL_KEY_WORDS"]) do
		print(n .. ", ")
	end
	for m,n in pairs(j["VALUE_CHANGE_TABLE"])do
		for k,l in pairs(n) do
			print(l .. ", ")
		end
	end
end]]


PAK_NAME =
{
	["CLASSICS"] = "_Winder_GettingHead_Classics.pak",
	["FOURTH_A"] = "_Winder_GettingHead_Fourth_A.pak",
	["FOURTH_B"] = "_Winder_GettingHead_Fourth_B.pak"
}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= PAK_NAME[EDITION],
["MOD_AUTHOR"]				= "WinderTP",
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