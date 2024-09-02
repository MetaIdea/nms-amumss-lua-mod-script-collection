Multiplier = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "largerderelicts.pak",
["MOD_AUTHOR"]    = "Luminance",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.05",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\FREIGHTERDUNGEONSTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = 
                            {
                                {"Name", "MEDI_TURRETS"},
                                {"Name", "MEDI_FLOATERS"},
                                {"Name", "MEDI_BUGS"},
                                {"Name", "MEDI_SLIME"},
                                {"Name", "MEDI_MAZE"},
                                {"Name", "CARGO_TURRETS"},
                                {"Name", "CARGO_FLOATERS"},
                                {"Name", "CARGO_BUGS"},
                                {"Name", "CARGO_SLIME"},
                                {"Name", "CARGO_MAZE"},
                            },
                            ["MATH_OPERATION"] = "*", 
							["VALUE_CHANGE_TABLE"] =
							{
								{"SizeX", Multiplier},
                                {"SizeY", Multiplier},
                                {"SizeZ", Multiplier},
                                {"Rooms", Multiplier},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =  {"GcRoomCountRule.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*", 
							["VALUE_CHANGE_TABLE"] =
							{
								{"Min", Multiplier},
                                {"Max", Multiplier},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = 
                            {
                                {"Value", "STANDINGLIGHT1"},
                                {"Value", "STANDINGLIGHT2"},
                                {"Value", "STANDINGLIGHT3"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION"
						},
					}
				},
			}
		}
	}
}