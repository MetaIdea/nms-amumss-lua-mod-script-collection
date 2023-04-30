ModName = "No Mans Land ION Battery production 50 Cobalt" --originally authored by Xen0nex for PtsD; modfiied by youngneil1
GameVersion = "4_23"
Description = "Increases ION Battery (POWERCELL) production in cobalt (CAVE1) by 3x times, to 30"



NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "youngneil1", --based on Xen0nex work
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"NameLower", "POWERCELL_NAME_L", "ID", "CAVE1"},				--Normal Ship Launch Thruster
							--["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"25"}			--10	
							}
						},
					}
				}
			}
		}
	}
}



