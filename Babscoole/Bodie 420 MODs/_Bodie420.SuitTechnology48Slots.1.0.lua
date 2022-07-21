NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420.SuitTechnology48Slots.1.0.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "1.0",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 	
							{							
								{"PlayerPersonalInventoryTechWidth",  "8"}, -- Original "7"
								{"PlayerPersonalInventoryTechHeight", "6"}, -- Original "2"
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 	
							{								
								{"PlayerPersonalInventoryTechWidth",  "8"}, -- Original "7"
								{"PlayerPersonalInventoryTechHeight", "6"}, -- Original "2"
							}
						},
					}
				},				
			}
		}
	}	
}