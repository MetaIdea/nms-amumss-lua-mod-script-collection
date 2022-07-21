NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "Ghazlawl.Pickup.AMU.0.1.pak", 
["MOD_AUTHOR"]    = "Ghazlawl",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.75",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","BUILDHARVESTER",},						
							["VALUE_CHANGE_TABLE"] = 
							{
								{"CanPickUp", "True"},
							}
						}
					}
				},
			}
		}
	}
}