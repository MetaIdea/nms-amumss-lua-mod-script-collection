Version = "1.0"
Game_Version = "4.23"
Mod_Author = "hemis FEAR"
Lua_Author = "hemis FEAR"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fBeam_Defogger_"..Version..".pak",
["MOD_AUTHOR"]		= Mod_Author,
["LUA_AUTHOR"]		= Lua_Author,
["NMS_VERSION"]		= Game_Version,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "Removes Fog from the Freighter Entrance Beam",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
					"MODELS/EFFECTS/DUST/FREIGHTERENTRANCEMIST/MIST.PARTICLE.MBIN",
					"MODELS/EFFECTS/DUST/FREIGHTERENTRANCEMIST/RINGMIST.PARTICLE.MBIN",					
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ColourMiddle"},
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"A",	"0"}, 		-- Original "0.7 & 1" 
							}
						}
					}
				}	
			}
		}
	}	
}