Multiplier = "2"

Author = "Gumsk"
ModName = "gCreatures Giants"
ModNameSub = Multiplier.."x"
BaseDescription = "Increases creature sizes"
GameVersion = "450"
ModVersion = "a"

--[[
METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN
GCCREATUREGLOBALS.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"MaxScale", Multiplier},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"MaxCreatureSize", Multiplier},
							},
						},
					},
				},
			}
		}
	}
}