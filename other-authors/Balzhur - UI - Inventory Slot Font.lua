ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
Maintainer	= ""
ModName		= "Inventory Slot Font"
ModCategory	= "UI"
ModDescription	= "Changes the font style of Substances/Products amount and Tech charge to be consistent with Product XX/YY style"
GameVersion	= "4.04"
ModVersion	= "1.1"
-- Thanks to lyravega for ideas!

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= "UI\COMPONENTS\INVENTORY\SQU_SLOT_ITEM.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["SPECIAL_KEY_WORDS"]	= {"ID", "TEXTLOW"},	-- font style for inventory Substances/Products amount and Tech charge
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"]	= "ALL",
				["VALUE_CHANGE_TABLE"]	= {
					{"PositionY",		"84"}, 	-- Original "82"
					{"Height",		"25"}, 	-- Original "32"
					{"DropShadowOffset",	"1"}, 	-- Original "3"
					{"OutlineSize",		"2"}, 	-- Original "4"
				}
			}}
		},{
			["MBIN_FILE_SOURCE"]	= "UI/SLOTS/SLOT_ITEM.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["SPECIAL_KEY_WORDS"]	= {"ID", "TEXTLOW"},	-- font style for inventory Substances/Products amount and Tech charge when picked
				["SECTION_UP"] = 1,
				["REPLACE_TYPE"]	= "ALL",
				["VALUE_CHANGE_TABLE"]	= {
					{"Height",		"25"}, 	-- Original "30"
					{"PaddingX",		"0"}, 	-- Original "3"
					{"PaddingY",		"0"}, 	-- Original "1"
				}
			}}
		}}
	}}
}
-- The END of mod definition container
