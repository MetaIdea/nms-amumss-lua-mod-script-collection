NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Bigger Derelicts",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Spawns larger derelict freighter with more and bigger rooms.",
["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\FREIGHTERDUNGEONSTABLE.MBIN",
					["MXML_CHANGE_TABLE"] =
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
							["VALUE_CHANGE_TABLE"] =
							{
								{"SizeX", "@*2"},
                {"SizeY", "@*2"},
                {"SizeZ", "@*2"},
                {"Rooms", "@+2"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =  {"GcRoomCountRule"},
              ["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								-- {"Min", "@*2"},
                {"Max", "@*2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = 
              {
                {"PruningRules", "STANDINGLIGHT1"},
                {"PruningRules", "STANDINGLIGHT2"},
                {"PruningRules", "STANDINGLIGHT3"},
              },
              ["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "LINE"
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\SPACE\POI\DUNGEON.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = 
              {
                {"Name", "MODELS\SPACE\POI\DUNGEON"},
              },
							["VALUE_CHANGE_TABLE"] =
							{
								{"ScaleX", "@*2"},
                {"ScaleY", "@*2"},
                {"ScaleZ", "@*2"},
							}
						},
					}
				},
			}
		}
	}
}