ModName = "More Modules Sold"
Author = "Jaggid Edje"

DefaultRealityPath = "METADATA/REALITY/DEFAULTREALITY.MBIN"


NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = "__JE_MoreModules.pak",
	["MOD_DESCRIPTION"] = "More Modules Sold",
	["MOD_AUTHOR"] = "Jaggid Edje",
	["NMS_VERSION"]				= "4.06",
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = DefaultRealityPath,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "ShipTechSpecialist","MinAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist","MinAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "WeapTechSpecialist","MinAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "VehicleTechSpecialist","MinAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "ShipTechSpecialist","MaxAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "SuitTechSpecialist","MaxAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "WeapTechSpecialist","MaxAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "VehicleTechSpecialist","MaxAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "PirateTech","MinAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "3"}
							},
						{
							["PRECEDING_KEY_WORDS"] = {"TradeSettings", "PirateTech","MaxAmountOfProductAvailable"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Poor", "2"},
								{"Average", "3"},
								{"Wealthy", "4"},
								{"Pirate", "6"}
							}
						}
					}
				}
			}
		}
	}
}
