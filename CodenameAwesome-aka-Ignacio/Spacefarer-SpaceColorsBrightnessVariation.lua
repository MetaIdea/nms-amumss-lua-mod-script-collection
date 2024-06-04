MBIN_CHANGE_TABLE = {
	{
		["MBIN_FILE_SOURCE"] 	= {
			"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN",
		},
		["EXML_CHANGE_TABLE"] = {
			{
				["PRECEDING_KEY_WORDS"] = {"LightColour"},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] = {
					{"R",1.0},
					{"G",1.0},
					{"B",1.0},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Settings"},
				["SEC_SAVE_TO"] = "space_sky_colors"
			},
			{
				["SEC_EDIT"] = "space_sky_colors",
				["REMOVE"] = "HBOS",
				["SEC_KEEP"] = "TRUE"
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {
			"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN",
		},
		["EXML_CHANGE_TABLE"] = {
			{
				["PRECEDING_KEY_WORDS"] = {"LightColour"},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] = {
					{"R",1.0},
					{"G",1.0},
					{"B",1.0},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Settings"},
				["SEC_SAVE_TO"] = "space_rare_sky_colors"
			},
			{
				["SEC_EDIT"] = "space_rare_sky_colors",
				["REMOVE"] = "HBOS",
				["SEC_KEEP"] = "TRUE"
			}
		}
	},
}

for power = 2, 5 do
	MBIN_CHANGE_TABLE[#MBIN_CHANGE_TABLE+1] = {
		["MBIN_FILE_SOURCE"] 	= {
		"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACESKYCOLOURS.MBIN",
		},
		["EXML_CHANGE_TABLE"] = {
			{
				["SEC_EDIT"] = {"space_sky_colors"},
				["MATH_OPERATION"] = "^",
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] = {
					{"R",power},
					{"G",power},
					{"B",power},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Settings"},
				["SEC_ADD_NAMED"] = "space_sky_colors"
			}
		}
	}
	
	MBIN_CHANGE_TABLE[#MBIN_CHANGE_TABLE+1] = {
		["MBIN_FILE_SOURCE"] 	= {
		"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/SKYSETTINGS/SPACERARESKYCOLOURS.MBIN",
		},
		["EXML_CHANGE_TABLE"] = {
			{
				["SEC_EDIT"] = {"space_rare_sky_colors"},
				["MATH_OPERATION"] = "^",
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] = {
					{"R",power},
					{"G",power},
					{"B",power},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"Settings"},
				["SEC_ADD_NAMED"] = "space_rare_sky_colors"
			}
		}
	}
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		= "Spacefarer-Skies.pak",
  ["MOD_BATCHNAME"]		= "SpacefarerOverhaul.pak",
  ["MOD_DESCRIPTION"]	= "Adds a variety of space colors, at different levels of darkness.",
  ["MOD_AUTHOR"]		= "CodenameAwesome",
  ["MODIFICATIONS"]		=
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}