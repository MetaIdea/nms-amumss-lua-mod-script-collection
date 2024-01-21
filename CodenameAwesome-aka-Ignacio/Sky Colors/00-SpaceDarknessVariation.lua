EXML_CHANGE_TABLE = {
	{
		["PRECEDING_KEY_WORDS"] = {"Settings"},
		["SEC_SAVE_TO"] = "space_colors",
		["SEC_KEEP"] = "TRUE"
	},
	{
		["SEC_EDIT"] = "space_colors",
		["REMOVE"] = "HBOS",
		["SEC_KEEP"] = "TRUE"
	}

}

for a = 0, 1, 0.1 do
	for b = a, 1, 0.1 do
	
	--Square the multiplier to make dark space more common
	brightness_multiplier = a^2
	nebulae_brightness_multiplier = b^2
	
	table.insert(EXML_CHANGE_TABLE,
	{
		["SEC_EDIT"] = {"space_colors"}, --Load from disk (by using brackets) to get an unedited saved section
		["PRECEDING_KEY_WORDS"]  = {"TopColour"},
		["REPLACE_TYPE"] 	= "ALL",
		["MATH_OPERATION"] = "*",
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"R",	brightness_multiplier},
			{"G",	brightness_multiplier},
			{"B",	brightness_multiplier},
		},
	})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"MidColour"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	brightness_multiplier},
				{"G",	brightness_multiplier},
				{"B",	brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"BottomColour"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	brightness_multiplier},
				{"G",	brightness_multiplier},
				{"B",	brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"TopColourPlanet"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	brightness_multiplier},
				{"G",	brightness_multiplier},
				{"B",	brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"MidColourPlanet"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	brightness_multiplier},
				{"G",	brightness_multiplier},
				{"B",	brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"BottomColourPlanet"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	brightness_multiplier},
				{"G",	brightness_multiplier},
				{"B",	brightness_multiplier},
			},
		})	
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"CloudColour"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	brightness_multiplier},
				{"G",	brightness_multiplier},
				{"B",	brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"NebulaColour1"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	nebulae_brightness_multiplier},
				{"G",	nebulae_brightness_multiplier},
				{"B",	nebulae_brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"NebulaColour2"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	nebulae_brightness_multiplier},
				{"G",	nebulae_brightness_multiplier},
				{"B",	nebulae_brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"NebulaColour3"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	nebulae_brightness_multiplier},
				{"G",	nebulae_brightness_multiplier},
				{"B",	nebulae_brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"FogColour"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	nebulae_brightness_multiplier},
				{"G",	nebulae_brightness_multiplier},
				{"B",	nebulae_brightness_multiplier},
			},
		})
	table.insert(EXML_CHANGE_TABLE,
		{
			["SEC_EDIT"] = "space_colors",
			["PRECEDING_KEY_WORDS"]  = {"FogColour2"},
			["REPLACE_TYPE"] 	= "ALL",
			["MATH_OPERATION"] = "*",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"R",	nebulae_brightness_multiplier},
				{"G",	nebulae_brightness_multiplier},
				{"B",	nebulae_brightness_multiplier},
			},
		})
	
	table.insert(EXML_CHANGE_TABLE,
	{
		["PRECEDING_KEY_WORDS"] = {"Settings"},
		["SEC_ADD_NAMED"] = "space_colors",
	})
	end
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "IgnaciosSkyColors.pak",
    ["MOD_BATCHNAME"]		= "Spacefarer-SkyColors",
  ["MOD_DESCRIPTION"] = "Creates hundreds of space variants in a spectrum from black space to black space with nebulae to full brightness (vanilla).",
    ["MOD_AUTHOR"] = "CodenameAwesome",
    ["NMS_VERSION"] = "4.04",
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
	["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = EXML_CHANGE_TABLE
				}
			}
        },
    }
}
-- NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
-- IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
-- DON'T ADD ANYTHING PAST THIS POINT
