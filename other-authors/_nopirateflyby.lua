NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "nopirateflyby.pak",
["MOD_AUTHOR"]    = "idea by kamosabe, script by Mjjstral, and edited by Dr. Kaii",
["NMS_VERSION"]   = "3.93",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {PlanetaryPirateFlybySpawns", "Count" },
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0"}, -- Original "1"
								{"y", "0"}, -- Original "1"						
							}
						},
					}
				}
			}
		}
	}	
}