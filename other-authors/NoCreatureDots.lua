NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoCreatureDots.pak",
["MOD_AUTHOR"]				= "DeathWrench",
["LUA_AUTHOR"]				= "Babscoole+DeathWrench",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\HUD\SCANNERICONS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "CreatureDiscovered", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	""}, -- Original "TEXTURES/UI/HUD/CREATURE.GREEN.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CreatureUndiscovered", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	""}, -- Original "TEXTURES/UI/HUD/CREATURE.RED.DDS"
							}
						},						
					}
				},
			}
		},
	}	
}