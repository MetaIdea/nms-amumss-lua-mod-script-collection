NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Milestone Fixes - Standard 1.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.85",
["MOD_DESCRIPTION"]			= "This mod fixes incorrect milestone total count",
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
							["SPECIAL_KEY_WORDS"] = {"StatId", "PIRATES_KILLED",},
							--["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StatMessageType",	"Silent"},
								{"ShowInTerminal",	"False"},
								{"ShowStatLevel", "False"},
							}
						},
					},
				}	
			}
		}
	}	
}
