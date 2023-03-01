Author = "Gumsk"
ModName = "gTech Mech Laser"
ModNameSub = "1m"
BaseDescription = ""
GameVersion = "399"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource,
					["EXML_CHANGE_TABLE"]	= {
						--Increase mech laser damage
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_LASER","StatsType","Vehicle_LaserDamage"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", 1000000},
							},
						},
					}
				}
			}
		}
	}
}