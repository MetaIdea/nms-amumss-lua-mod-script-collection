NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "RefinerRecipes.pak",
["MOD_DESCRIPTION"]		= "Adds refiner recipes to KnownRefinerRecipes Save",
["MOD_AUTHOR"]			= "CAD",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"]  = [[METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN]],
					["EXML_CHANGE_TABLE"] =
					{
                        {
                            ["PRECEDING_KEY_WORDS"] = {"KnownRefinerRecipes"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                                <Property value="NMSString0x20.xml">
                                    <Property name="Value" value="cadRecipeRefiner000001" />
                                </Property>
]]
                        },
					}
				}
			}
		}
	}
}