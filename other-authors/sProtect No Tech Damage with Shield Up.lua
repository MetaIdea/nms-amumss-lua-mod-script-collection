Author = "Syzzle"
ModName = "sProtect"
ModNameSub = "No Tech Damage with Shield Up"
BaseDescription = "Makes so your tech won't be breaking until your shield is down."
GameVersion = "4.06"
ModVersion = "v1.1"
FileSource1 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"TechDamageChanceShieldLevelMin",0},		-- Original 0.01
								{"TechDamageChanceShieldLevelMax",0},		-- Original 0.75
								{"TechDamageChanceToSelectPrimary",1},		-- Original 0.1
							},
						},
					},
				},
			}
		}
	}
}