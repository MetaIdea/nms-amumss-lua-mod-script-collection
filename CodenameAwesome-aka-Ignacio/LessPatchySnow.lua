NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "LessPatchySnow.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Ignacio",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENTILETYPES.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Palette","RockDark","ColourAlt","Alternative2"},
							["VALUE_CHANGE_TABLE"] = {
								{"Palette","Snow"},
								{"ColourAlt","Primary"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Palette","RockSaturated","ColourAlt","Alternative2"},
							["VALUE_CHANGE_TABLE"] = {
								{"Palette","Snow"},
								{"ColourAlt","Primary"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Palette","RockLight","ColourAlt","Primary"},
							["VALUE_CHANGE_TABLE"] = {
								{"Palette","Snow"},
								{"ColourAlt","Primary"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Palette","RockDark"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Palette","RockLight"},
							}
						},
					}
				}
			}
		},
	}
}