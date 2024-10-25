Author = "Gumsk"
ModName = "gCreatures Fauna Density"
ModNameSub = "3"
BaseDescription = ModNameSub.."x normal Fauna Density"
GameVersion = "5.2.0.0"
ModVersion = "a"

--[[Files Modified:
METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN
--]]


NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.."x "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "PRESERVE",
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
					EXML_CHANGE_TABLE = {
						{
							PRECEDING_KEY_WORDS = {"GroundGroupsPerKm"},
							["MATH_OPERATION"] = "*",
							VALUE_CHANGE_TABLE = {
								{"Sparse",ModNameSub},
								{"Normal",ModNameSub},
								{"Dense",ModNameSub},
								{"VeryDense",ModNameSub},
							},
						},
						{
							PRECEDING_KEY_WORDS = {"WaterGroupsPerKm"},
							["MATH_OPERATION"] = "*",
							VALUE_CHANGE_TABLE = {
								{"Sparse",ModNameSub},
								{"Normal",ModNameSub},
								{"Dense",ModNameSub},
								{"VeryDense",ModNameSub},
							},
						},
						{
							PRECEDING_KEY_WORDS = {"AirGroupsPerKm"},
							["MATH_OPERATION"] = "*",
							VALUE_CHANGE_TABLE = {
								{"Sparse",ModNameSub},
								{"Normal",ModNameSub},
								{"Dense",ModNameSub},
								{"VeryDense",ModNameSub},
							},
						},
						{
							PRECEDING_KEY_WORDS = {"CaveGroupsPerKm"},
							["MATH_OPERATION"] = "*",
							VALUE_CHANGE_TABLE = {
								{"Sparse",ModNameSub},
								{"Normal",ModNameSub},
								{"Dense",ModNameSub},
								{"VeryDense",ModNameSub},
							},
						},
					}
				}
			}
		}
	}
}