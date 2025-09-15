NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Quick Milestone Notifications 2.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.04",
["MOD_DESCRIPTION"]			= "This mod makes notifications shorter",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN", "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"] = {"StatMessageType", "Full"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Quick"},
							}
						},
					},
				}	
			}
		}
	}	
}
