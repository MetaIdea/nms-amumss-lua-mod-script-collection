Author = "courtykat and Babscoole"
ModName = "Forever Babies (InstaEggs)"
BaseDescription = "Companions will stay as cute lil babies forever."
GameVersion = "6.00"
FileSource1 = "GCCREATUREGLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName,
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["MXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"PetGrowthTime", 864000000},		--1209600
								{"PetIncubationTime", 1},			--86400
								{"PetEggLayingInterval", 1},		--86400
								{"PetEggFirstEggDelay", 1},			--86400
								{"CanAlwaysLayEgg", "True"},		--False
								{"PetEggMinGrowthToLay", "0"},		--0.25
							},
						},
					},
				},
			}
		}
	}
}