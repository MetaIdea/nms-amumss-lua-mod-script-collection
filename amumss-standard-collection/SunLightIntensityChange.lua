SunLightIntensity = 2.1 --change to suit your taste, normal is 3.0. Higher is brighter, lower is darker

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SunLightIntensityChange.pak",
["MOD_AUTHOR"]				= "Wbertro",
["NMS_VERSION"]				= "1.78",  			--version on first mod release
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --globals
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",     -- use a single string or a list = {"PrecedingKeyWord1", "PrecedingKeyWord2"}, leave empty "" or {} if not necessary
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SunLightIntensity",				SunLightIntensity}, -- Original "3"  always leave the orig. value as a reference
							}
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
					} --1 global replacements
				}, --for multiple MBIN sources: copy this chunk below and add a comma behind this line here
			}
		}, --for multiple pak sources: copy this chunk below and add a comma behind this line here
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE