NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Testing",
["MOD_DESCRIPTION"]	= "Testing various stuff",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.24",
["MODIFICATIONS"]	=
	{
		{
		["PAK_FILE_SOURCE"] = "",
		["MBIN_CHANGE_TABLE"] = 
			{
				{
				["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
				["EXML_CHANGE_TABLE"] = 
					{
						{
						-- ["SPECIAL_KEY_WORDS"] = {"Id","PLAYER_SHIP"},
						-- ["VALUE_CHANGE_TABLE"] =
						-- {
							-- {"CanMine", "True"},
						-- },
						["SPECIAL_KEY_WORDS"] = {"Id","PLAYER_SHIP"},
						["VALUE_CHANGE_TABLE"] =
						{
							{"CanMine", "True"},
						}
							-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id","SHIPGUN"},
							-- ["PRECEDING_KEY_WORDS"] = {""},
							-- ["LINE_OFFSET"] = "+85",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"}},
							-- ["ADD"] = [[       <Property name="CanMine" value="True" />]]
							-- }
							-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id","SHIPGUN"},
							-- ["VALUE_CHANGE_TABLE"] =
							-- {
								-- {"BehaviourFlags", "DestroyTerrain"},
							-- }
						}
					}
				},
			}
		},
	}
}