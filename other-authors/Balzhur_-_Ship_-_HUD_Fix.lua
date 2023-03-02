ModAuthor	= "Virtual Voyager"
LuaAuthor	= "Balzhur"
Maintainer	= ""
ModName		= "Ship HUD Fix"
ModCategory	= "Ship"
ModDescription	= "Fixes planet name position on Explorer type ships HUD"
GameVersion	= "4.0"
ModVersion	= "1.0"
-- Original mod https://www.nexusmods.com/nomanssky/mods/1699

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= "UI\HUD\SHIP\SIDESCREENSOLARSYSTEM.MBIN",
			["EXML_CHANGE_TABLE"]	= {{
				["SPECIAL_KEY_WORDS"]	= {"ID", "PLANET"},
				["PRECEDING_KEY_WORDS"] = "Layout",
				["VALUE_CHANGE_TABLE"]	= {
					{"PositionX",	"40"}	-- Original "20"
				}
			}}
		}}
	}}
}
-- The END of mod definition container