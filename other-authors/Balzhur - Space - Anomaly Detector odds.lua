ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
ModName		= "Anomaly Detector odds"
ModCategory	= "Space"
ModDescription	= "Increase the chance of getting Anomaly Detector from asteroids"
GameVersion	= "3.98"
ModVersion	= "1.0"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription,
	["MOD_MAINTENANCE"]	= LuaAuthor,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["PRECEDING_KEY_WORDS"]	= "",
				["VALUE_CHANGE_TABLE"]	= {
--					{"RareAsteroidDataProduct",	"POI_LOCATOR"},	-- Original "POI_LOCATOR" = Anomaly Detector
					{"RareAsteroidDataProductOdds", "0.01"}, 	-- Original "0.005"	  = twice often
				}
			}}
		}}
	}}
}
-- The END of mod definition container