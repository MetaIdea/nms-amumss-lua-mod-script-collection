NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipGunTerrainDamage.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
              ["SPECIAL_KEY_WORDS"]   = {"Id", "SHIPGUN"},	--see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BehaviourFlags",		"DestroyTerrain"}		-- Original "None"
							}
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Id", "SHIPSHOTGUN"},	--By using this, we are zooming in on the right lines section, more precise
            --["PRECEDING_KEY_WORDS"] = "SHIPSHOTGUN",          --AND less prone to erroneous replacement if this EXML is ever upgraded by NMS folks
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BehaviourFlags",		"DestroyTerrain"}		-- Original "None"
							}
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Id", "SHIPMINIGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BehaviourFlags",		"DestroyTerrain"}		-- Original "None"
							}
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Id", "SHIPPLASMAGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BehaviourFlags",		"DestroyTerrain"}		-- Original "None"
							}
						}							
					} --4 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE