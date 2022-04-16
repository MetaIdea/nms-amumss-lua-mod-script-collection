NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= "LivingShipRefuel.pak",
	["MOD_AUTHOR"]				= "Makto",
	["NMS_VERSION"]				= "3.21",
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]	= 'METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {'ID', 'SHIPJUMP_ALIEN'},
							["PRECEDING_KEY_WORDS"] = {"ChargeType"},
							["VALUE_CHANGE_TABLE"] 	= {
								{'SubstanceCategory', 'Special'}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {'ID', 'SHIPJUMP_ALIEN'},
							["PRECEDING_KEY_WORDS"] = {"ChargeBy"},
							["VALUE_CHANGE_TABLE"] 	= {
								{'Value', 'SUNGOLD'}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {'ID', 'SHIPJUMP_ALIEN', 'Value', 'ASTEROID2'},
							["VALUE_CHANGE_TABLE"] 	= {
								{'Value', 'SPACEGUNK4'}
							}

						},
						{
							["SPECIAL_KEY_WORDS"]	= {'ID', 'WARP_ALIEN'},
							["PRECEDING_KEY_WORDS"] = {"ChargeType"},
							["VALUE_CHANGE_TABLE"] 	= {
								{'SubstanceCategory', 'Special'}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {'ID', 'WARP_ALIEN'},
							["PRECEDING_KEY_WORDS"] = {"ChargeBy"},
							["VALUE_CHANGE_TABLE"] 	= {
								{'Value', 'SOULFRAG'}
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED

