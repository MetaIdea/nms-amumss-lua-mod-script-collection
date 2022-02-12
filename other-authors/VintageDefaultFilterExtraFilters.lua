NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VintageDefaultFilterExtraFilters.pak",
["MOD_AUTHOR"]				= "Jordan_Twiggza",
["NMS_VERSION"]				= "3.02",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\SCREENFILTERS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Default",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",						"TEXTURES/LUT/FILTERS/VINTAGE.DDS"},	-- Original "TEXTURES/LUT/FILTERS/DEFAULT.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceStation",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",						"TEXTURES/LUT/FILTERS/VINTAGE.DDS"},	-- Original "TEXTURES/LUT/FILTERS/DEFAULT.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Freighter",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",						"TEXTURES/LUT/FILTERS/VINTAGE.DDS"},	-- Original "TEXTURES/LUT/FILTERS/DEFAULT.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Frigate",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",						"TEXTURES/LUT/FILTERS/VINTAGE.DDS"},	-- Original "TEXTURES/LUT/FILTERS/DEFAULT.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird1",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird3",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird4",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird5",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird6",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird7",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird8",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Isolation",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Filmic",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Apocalypse",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Solarise",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SelectableInPhotoMode",						"True"},	-- Original "False"
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE