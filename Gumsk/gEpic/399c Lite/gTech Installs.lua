Author = "Gumsk"
ModName = "gTech"
ModNameSub = "Installs"
BaseDescription = "Enable restricted technology for alien ships and exocraft"
GameVersion = "397"
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

					--Minotaur
						{ --Exocraft combined hazard protection
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_PROT","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllVehicles"},
							},
						},

					--Core Tech
						{ --Photon Cannon Deletable
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPGUN1"},
							["VALUE_CHANGE_TABLE"] = {
								{"Core", "False"},
							},
						},
						{ --Multitool Mining Laser Deletable
							["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
							["VALUE_CHANGE_TABLE"] = {
								{"Core", "False"},
							},
						},
					}
				}
			}
		}
	}
}