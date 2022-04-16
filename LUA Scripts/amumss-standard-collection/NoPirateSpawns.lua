NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "NoPirateSpawns.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]		= "Wbertro",
["NMS_VERSION"]		= "1.77.0",  			--version on first mod release
["MODIFICATIONS"] = 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"]  = 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"]  = 
					{            {
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "Count", },     -- use a single string or a list = {"PrecedingKeyWord1", "PrecedingKeyWord2"}, leave empty "" or {} if not necessary
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0"}, 			-- Original "1"
                {"y", "0"}, 			-- Original "1"
							}
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
            {
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count", },     -- use a single string or a list = {"PrecedingKeyWord1", "PrecedingKeyWord2"}, leave empty "" or {} if not necessary
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0"}, 			-- Original "1"
                {"y", "0"}, 			-- Original "1"
							}
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
					} --4 global replacements
				}, --for multiple MBIN sources: copy this chunk below and add a comma behind this line here
			}
		}, --for multiple pak sources: copy this chunk below and add a comma behind this line here
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
--f67f20f459d7bdd6f3640b5ba48a31d76d54428b