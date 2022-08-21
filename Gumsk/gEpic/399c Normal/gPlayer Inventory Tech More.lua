Author = "Gumsk"
ModName = "gPlayer Inventory Tech"
ModNameSub = "More"
BaseDescription = "Increases player tech inventory limits"
GameVersion = "399"
ModVersion = "a"
FileSource1 = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN"
FileSource2 = "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"

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
								{"PlayerPersonalInventoryTechWidth",8},		--7
								{"PlayerPersonalInventoryTechHeight",3},	--2
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"PlayerPersonalInventoryTechWidth",8},		--7
								{"PlayerPersonalInventoryTechHeight",3},	--2
							},
						},
					},
				},
			}
		}
	}
}