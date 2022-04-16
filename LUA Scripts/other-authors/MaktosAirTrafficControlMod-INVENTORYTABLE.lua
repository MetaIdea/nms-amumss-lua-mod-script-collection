
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "INVENTORYTABLE.pak",
    ["MOD_AUTHOR"] = "Makto",
    ["NMS_VERSION"] = "3.21",
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Poor", "ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] = {
								{"C", "20"},
								{"B", "70"},
								{"A", "5"},
								{"S", "5"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Average", "ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] = {
								{"C", "5"},
								{"B", "20"},
								{"A", "70"},
								{"S", "5"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Wealthy", "ClassProbabilities"},
							["VALUE_CHANGE_TABLE"] = {
								{"C", "5"},
								{"B", "5"},
								{"A", "20"},
								{"S", "70"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationData", "GenerationDataPerSizeType", "AlienSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "32"},
								{"MaxSlots", "32"},
								{"MinExtraTech", "24"},
								{"MaxExtraTech", "24"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationData", "GenerationDataPerSizeType", "AlienMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "40"},
								{"MaxSlots", "40"},
								{"MinExtraTech", "28"},
								{"MaxExtraTech", "28"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationData", "GenerationDataPerSizeType", "AlienLarge"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "48"},
								{"MaxSlots", "48"},
								{"MinExtraTech", "32"},
								{"MaxExtraTech", "32"}
							}
						}
 					}
				}
			}
		}
	}
}

