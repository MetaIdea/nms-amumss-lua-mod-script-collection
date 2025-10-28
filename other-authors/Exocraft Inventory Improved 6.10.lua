 NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "Exocraft Inventory Improved 6.10", 
["MOD_AUTHOR"]				= "Zay",
["NMS_VERSION"]				= "6.10",
["MOD_DESCRIPTION"]			= "All tech slots 10x4. Inventories Small 10x5, Medium 10x6, Large 10x7",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["MXML_CHANGE_TABLE"]	=
					{
					
						-- All Exocraft tech slots increased to 40 slots (10x4)
						{	
							["SPECIAL_KEY_WORDS"]	=
							{
								{"VehicleSmall", "GcInventoryLayoutGenerationDataEntry"},
								{"VehicleMedium", "GcInventoryLayoutGenerationDataEntry"},
								{"VehicleLarge", "GcInventoryLayoutGenerationDataEntry"}
							},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"MinTechSlots",	40},	--26
								{"MaxTechSlots",	40}		--26
							},
						},

						{
							["SPECIAL_KEY_WORDS"]	=
							{
								{"VehicleSmall", "GcInventoryLayoutGenerationDataEntry"},
								{"VehicleMedium", "GcInventoryLayoutGenerationDataEntry"},
								{"VehicleLarge", "GcInventoryLayoutGenerationDataEntry"}
							},
							["PRECEDING_KEY_WORDS"]	= {"TechBounds"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxWidthSmall",		10},	--7
								{"MaxHeightStandard",	4},		--5
								{"MaxHeightLarge",		4}		--6
							},
						},
						
						-- Cargo slots increased
						{
							["PRECEDING_KEY_WORDS"]	= {"VehicleSmall"},		-- Nomad, Pilgrim - 50 slots (10x5)
							["VALUE_CHANGE_TABLE"]	=	
							{
								{"MinSlots",		50},	-- default 30
								{"MaxSlots",		50},	-- default 30
							},
						},
						
						{
							["PRECEDING_KEY_WORDS"]	= {"VehicleMedium"},	-- Roamer, Nautilon, Minotar - 60 slots (10x6)
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MinSlots",		60},	-- default 40
								{"MaxSlots",		60},	-- default 40
							},
						},
						
						{
							["PRECEDING_KEY_WORDS"]	= {"VehicleLarge"},		-- Colossus - 70 slots (10x7)
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MinSlots",		70},	-- default 50
								{"MaxSlots",		70},	-- default 50
							},
						},
						
						{
							["SPECIAL_KEY_WORDS"]	=
							{
								{"VehicleSmall", "GcInventoryLayoutGenerationDataEntry"},
								{"VehicleMedium", "GcInventoryLayoutGenerationDataEntry"},
								{"VehicleLarge", "GcInventoryLayoutGenerationDataEntry"}
							},
							["PRECEDING_KEY_WORDS"]	= {"Bounds"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxWidthSmall",		10},	--7
								{"MaxHeightStandard",	6},		--5
								{"MaxHeightLarge",		7}		--6
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