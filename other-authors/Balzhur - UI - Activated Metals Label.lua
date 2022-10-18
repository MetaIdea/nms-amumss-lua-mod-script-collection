ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
Maintainer	= ""
ModName		= "Activated Metals Label"
ModCategory	= "UI"
ModDescription	= "Adds plus symbol to the activated metal label to be visually distinguishable from regular metal"
GameVersion	= "4.04"
ModVersion	= "1.0"
-- Thanks to cmkushnir for ideas!

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= "METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["SPECIAL_KEY_WORDS"]	= {"ID", "EX_YELLOW"},	-- Activated Copper
				["VALUE_CHANGE_TABLE"]	= {
					{"Symbol",	"Cu+"}, 		-- Original "UI_YELLOW2_SYM"
				}
			},{
				["SPECIAL_KEY_WORDS"]	= {"ID", "EX_RED"},	-- Activated Cadmium
				["VALUE_CHANGE_TABLE"]	= {
					{"Symbol",	"Cd+"}, 		-- Original "UI_RED2_SYM"
				}
			},{
				["SPECIAL_KEY_WORDS"]	= {"ID", "EX_GREEN"},	-- Activated Emeril
				["VALUE_CHANGE_TABLE"]	= {
					{"Symbol",	"Em+"}, 		-- Original "UI_GREEN2_SYM"
				}
			},{
				["SPECIAL_KEY_WORDS"]	= {"ID", "EX_BLUE"},	-- Activated Indium
				["VALUE_CHANGE_TABLE"]	= {
					{"Symbol",	"In+"}, 		-- Original "UI_BLUE2_SYM"
				}
			}}
		}}
	}}
}
-- The END of mod definition container
