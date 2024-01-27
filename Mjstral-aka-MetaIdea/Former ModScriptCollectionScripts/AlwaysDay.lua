NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AlwaysDay.pak",
["MOD_AUTHOR"]				= "Mjstral",
["NMS_VERSION"]				= "3.52",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",     -- use a single string or a list = {"PrecedingKeyWord1", "PrecedingKeyWord2"}, leave empty "" or {} if not necessary
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinNightFade",				"1.0"}, -- Original "0.62"  always leave the orig. value as a reference
								{"MaxNightFade",				"1.0"},	-- Original "0.68"
							} --2 global replacements	
						}, --for multiple EXML changes with PRECEDING_KEY_WORDS copy this chunk below and add a comma behind this line here
					}
				}, --for multiple MBIN sources: copy this chunk below and add a comma behind this line here
			}
		}, --for multiple pak sources: copy this chunk below and add a comma behind this line here
	}	
}
