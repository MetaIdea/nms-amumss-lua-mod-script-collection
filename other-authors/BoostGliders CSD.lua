NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BoostGliderCSD.pak",
["MOD_AUTHOR"]		        = "Prescient Stones",
["NMS_VERSION"]				= "Worlds 5.2.0.2",
["MOD_DESCRIPTION"]			= "Authority scanning nullified 100% on Traveler's use of ships CSD, Hotkey advised",
["MODIFICATIONS"] 			= 
	{
		{
			--["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak", 
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CargoShieldStrength",					"1"},		-- Worlds "0.5" -- Tested 100% Cargo Scan Deflector 10 for 10
							}
						}
					} --1 global replacements
				}
		    }
	    }	
    }
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE