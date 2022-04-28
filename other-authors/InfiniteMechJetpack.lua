NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "InfiniteMechJetpack.pak",
["MOD_AUTHOR"]				= "Striker0420",
["NMS_VERSION"]				= "3.88 ",
["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MechJetpackTurnSpeed","4"}, 
								{"MechJetpackMaxSpeed",	"45"} ,	
								{"MechJetpackDrainRate","0.0"}, 
								{"MechJetpackFillRate",	"10000"}, 		
							}
						}
					} --14 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE