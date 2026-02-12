NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "Corvette Tech Expanded", 
["MOD_AUTHOR"]				= "Zay",
["NMS_VERSION"]				= "6.2",
["MOD_DESCRIPTION"]			= "Increases Corvette tech slot upgrade capacity by 2 more rows for all classes.",
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
								{"C",	50},	--30
								{"B",	60},	--40
								{"A",	70},	--50
								{"S",	80}		--60
						
							}
						},						
						{
							["SPECIAL_KEY_WORDS"]	= {"Corvette", "GcInventoryLayoutGenerationDataEntry"},
							["PRECEDING_KEY_WORDS"]	= {"TechBounds"},						
							["VALUE_CHANGE_TABLE"]	=
							{			
								{"MaxWidthSmall",		10},	--7
								{"MaxHeightSmall",		8},		--3
								{"MaxHeightStandard",	8},		--3								
								{"MaxHeightLarge",		8}		--6
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE