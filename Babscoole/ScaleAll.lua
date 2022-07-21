NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "ScaleAll.pak", 
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.88",
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
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"CanScale", "True"},					
							}
						}
					}
				},
			}
		}			
	}
}