NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "Corvette Tech Expanded 6.10", 
["MOD_AUTHOR"]				= "Zay",
["NMS_VERSION"]				= "6.10",
["MOD_DESCRIPTION"]			= "Increases Corvette tech slot upgrade capacity by 2 more rows (10x8)",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["MXML_CHANGE_TABLE"]	=
					{
						---Corvette Tech Expansion
						{	
							["SPECIAL_KEY_WORDS"]	= {"Corvette", "GcShipInventoryMaxUpgradeCapacity"},						
							["PRECEDING_KEY_WORDS"]	= {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"]	=
							{							
								{"S",	80},	--60
						
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Corvette", "GcInventoryLayoutGenerationDataEntry"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxTechSlots",	80},	--30
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Corvette", "GcInventoryLayoutGenerationDataEntry"},
							["PRECEDING_KEY_WORDS"]	= {"TechBounds"},						
							["VALUE_CHANGE_TABLE"]	=
							{							
								{"MaxHeightLarge",	8}		--6
							},
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE