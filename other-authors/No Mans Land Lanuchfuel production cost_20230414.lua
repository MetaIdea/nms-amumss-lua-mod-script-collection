ModName = "No Mans Land Launchfuel production cost" --originally authored by Xen0nex for PtsD; modfiied by youngneil1
GameVersion = "4_20"
Description = "Increase Launchfuel production cost in Di-Hydrogen by 40x"



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
						
						--yn1: Makes produing Launchfuel require 40x more launchsub (Di-Hydrogen)
						{
							["REPLACE_TYPE"] = "",
							["MATH_OPERATION"] 		= "",
							["SPECIAL_KEY_WORDS"] = {"NameLower", "LAUNCHFUEL_NAME_L"},				--Normal Ship Launch Thruster
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"1600"}			--40	
							}
						},
					}
				}
			}
		}
	}
}



