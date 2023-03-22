Version = "1.0"
GameVersion = "4.15"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_LivingFrigateSpawner.pak",
["MOD_AUTHOR"]		= "hemis FEAR",
["NMS_VERSION"]		= GameVersion,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "Encounter a Bio Frigate almost everytime when pulsing w/ Anamoly Detector",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "BIO_FRIG"},
							["PRECEDING_KEY_WORDS"] = "GcPulseEncounterSpawnFrigateFlyby.xml",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"StandardEncounter",		"True"}, 	-- Original "False"
								{"SpawnChance",		"80"}, 	-- Original "1"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "BIO_FRIG_FIRST"},
							["PRECEDING_KEY_WORDS"] = "GcPulseEncounterSpawnFrigateFlyby.xml",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"SpawnChance",		"80"}, 	-- Original "0"
							}
						}
					}
				}
			}
		}
	}
}
