Author = "Bookworm"
ModName = "NoCreatureKill"
BaseDescription = "Eliminates all Creature and Predator Kill missions from space station agents."
GameVersion = "3.89"
ModVersion = "1_4"

FileSource1 = "METADATA\SIMULATION\MISSIONS\NPCMISSIONTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_"..ModName..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= FileSource1,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"MissionID","KILL_CREATURES"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Weighting","0"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MissionID","KILL_PREDATORS"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Weighting","0"},
							},
						},
					},
				},
			},
		},
	},	
}
