ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
ModName		= "Anomaly Detector odds"
ModCategory	= "Space"
ModDescription	= "Increased chance of getting Anomaly Detector from asteroids"
GameVersion	= "3.98"
ModVersion	= "1.1"
-- Change next line to suit your taste.
ChanceMult	= 5	-- x times more often to find Anomaly detector

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.." ("..ChanceMult.."x)-"..ModVersion..".pak",
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
				["MATH_OPERATION"]	= "*",
				["VALUE_CHANGE_TABLE"]	= {
					{"RareAsteroidDataProductOdds", ChanceMult}, 	-- Original "0.005". Multiplies original value by user defined amount.
				}
			}}
		}}
	}}
}
-- The END of mod definition container