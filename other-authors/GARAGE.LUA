NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_PM_Garage.pak",
["MOD_AUTHOR"]    = "Phantom",
["LUA_AUTHOR"]    = "Phantom",
["NMS_VERSION"]   = "1.0.",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanPickUp", "true"}
                            }
                        },
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_S"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"CanPickUp", "true"} 
                            }							
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_M"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanPickUp", "true"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_L"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanPickUp", "true"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_MECH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanPickUp", "true"} 
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_SUB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanPickUp", "true"} 
                            }
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_FLOAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanPickUp", "true"} 
                            }
                        },	
                    }						
                },
            }
        }
    }
}