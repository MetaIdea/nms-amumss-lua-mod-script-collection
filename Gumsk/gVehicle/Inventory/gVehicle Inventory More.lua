Author = "Gumsk"
ModName = "gVehicle Inventory"
ModNameSub = "More"
BaseDescription = "Increases vehicle inventory"
GameVersion = "399"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"

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
							["SPECIAL_KEY_WORDS"] = {"VehicleSmall","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots",24},		--16
								{"MaxSlots",24},		--16
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"VehicleMedium","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots",36},		--28
								{"MaxSlots",36},		--28
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"VehicleLarge","GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots",48},		--42
								{"MaxSlots",48},		--42
							},
						},
					},
				},
			}
		}
	}
}