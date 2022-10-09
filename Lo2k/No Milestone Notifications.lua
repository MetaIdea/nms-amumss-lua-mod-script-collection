NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Milestone Notifications.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.03",
["MOD_DESCRIPTION"]			= "This mod removes milestones notifications",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Silent"},
							}
						},
					},
				}	
			}
		}
	}	
}
