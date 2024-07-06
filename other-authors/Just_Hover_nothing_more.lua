NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "JustHover.pak",
	["MOD_DESCRIPTION"]	= "Makes your spaceship able to hover",
	["MOD_AUTHOR"]		= "Nastyperson",
	["LUA_AUTHOR"]		= "Techno-necromancers from Alpha Centauri",
	["NMS_VERSION"]		= "4.64",
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["VALUE_CHANGE_TABLE"]	= {
					{"HoverMinSpeed",	"0"}
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"PlanetEngine"},
				["REPLACE_TYPE"]	= "ALL",
				["VALUE_CHANGE_TABLE"]	= {
					{"MinSpeed",		"0"}
				}
			}}
		}}
	}}
}
-- The END of mod definition container