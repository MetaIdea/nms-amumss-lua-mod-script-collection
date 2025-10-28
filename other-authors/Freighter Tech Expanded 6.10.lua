NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "Freighter Tech Expanded 6.10", 
["MOD_AUTHOR"]				= "Zay",
["NMS_VERSION"]				= "6.10",
["MOD_DESCRIPTION"]			= "Increases upgradable Freighter Tech slots to 100 at S class (10x10)",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["MXML_CHANGE_TABLE"]	=
					{
						--Freighter Tech Expansion Capacity
						{
							["PRECEDING_KEY_WORDS"]	= {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"C",		50},		--30
								{"B",		60},		--40
								{"A",		70},		--50
								{"S",		100},		--60
							},
						},
						--Freighter Tech Max Default slots
						{
							["SPECIAL_KEY_WORDS"] = {"FreighterSmall", "GcInventoryLayoutGenerationDataEntry"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"MaxTechSlots",	24},	--12
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FreighterMedium", "GcInventoryLayoutGenerationDataEntry"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"MaxTechSlots",	40},	--20
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FreighterLarge", "GcInventoryLayoutGenerationDataEntry"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"MaxTechSlots",	60},	--30
							},
						},
						--Freighter Tech Bounds
						{	
							["SPECIAL_KEY_WORDS"] =
							{
								{"FreighterSmall", "GcInventoryLayoutGenerationDataEntry"},
								{"FreighterMedium", "GcInventoryLayoutGenerationDataEntry"},
								{"FreighterLarge", "GcInventoryLayoutGenerationDataEntry"},
							},
							["PRECEDING_KEY_WORDS"]	= {"TechBounds"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"MaxWidthSmall",		10},	--7
								{"MaxHeightSmall",		10},	--3
								{"MaxHeightStandard",	10},	--3
								{"MaxHeightLarge",		10},	--6
							},
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