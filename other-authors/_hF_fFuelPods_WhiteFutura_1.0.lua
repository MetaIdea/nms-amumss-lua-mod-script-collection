Version = "1.0"
Game_Version = "4.23"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fFuelPods_WhiteFutura_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "fFuelPods: White Futura Freighter Fuel Pods",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	=	"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/FUELPOD/ENTITIES/COLOURDATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	=
										{
						{
							["PRECEDING_KEY_WORDS"] = {"PrimaryColour"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",		"0"}, 	--Original "0.318"	
								{"G",		"0"}, 	--Original "0.569"
								{"B",		"0"}, 	--Original "0.624"
							} 	--BLACK
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SecondaryColour"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",		"1"}, 	--Original "0.922"
								{"G",		"1"}, 	--Original "0.922"
								{"B",		"1"}, 	--Original "0.922"
							} 	-- Supposed to be WHITE but is GRAY
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TernaryColour"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",		"1"}, 	--Original "0.878"
								{"G",		"1"}, 	--Original "0.478"
								{"B",		"1"}, 	--Original "0.031"
							} 	-- Supposed to be WHITE but is GRAY
						}
					}
				} 
			}
		}, --9 global replacements
	}	
}