NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "Distinctive Exocrafts.pak",
["MOD_AUTHOR"]	  = "EMPTY.d",
["LUA_AUTHOR"]	  = "EMPTY.d",
["NMS_VERSION"]	  = "4.43.0",
["DESCRIPTION"]	  = "This mod make exocrafts distinctively functional to each other.",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{		
			
				{
					["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MechJetpackDrainRate",  "0.25"},
								{"VehicleFuelRate",  "0.2"},
								{"VehicleFuelRateTruckMultiplier",  "0.25"},
								{"VehicleBoostFuelRate",  "1"},
								{"VehicleBoostFuelRateSurvival",  "2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","BIKE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",  "36"},
								{"TopSpeedReverse",  "20"},
								{"WheelMaxDecelForceBraking",  "16"},
								{"VehicleJumpForce",  "715"},
								{"VehicleBoostMaxSpeed",  "64"},
								{"VehicleBoostForce",  "800"},
								{"VehicleBoostExtraMaxSpeedAir",  "80"},
								{"VehicleBoostTime",  "2"},
								{"VehicleBoostRechargeTime",  "3"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MED_BUGGY",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",  "32"},
								{"TopSpeedReverse",  "16"},
								{"WheelMaxDecelForceBraking",  "16"},
								{"VehicleJumpForce",  "630"},
								{"VehicleBoostMaxSpeed",  "60"},
								{"VehicleBoostForce",  "600"},
								{"VehicleBoostExtraMaxSpeedAir",  "80"},
								{"VehicleBoostTime",  "3"},
								{"VehicleBoostRechargeTime",  "4"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","TRUCK",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",  "24"},
								{"TopSpeedReverse",  "16"},
								{"WheelMaxDecelForceBraking",  "4"},
								{"VehicleJumpForce",  "600"},
								{"VehicleBoostMaxSpeed",  "60"},
								{"VehicleBoostForce",  "440"},
								{"VehicleBoostExtraMaxSpeedAir",  "80"},
								{"VehicleBoostTime",  "4"},
								{"VehicleBoostRechargeTime",  "5"},								
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name","WHEELEDBIKE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",  "38"},
								{"TopSpeedReverse",  "16"},
								{"WheelMaxDecelForceBraking",  "16"},
								{"VehicleJumpForce",  "675"},
								{"VehicleBoostMaxSpeed",  "70"},
								{"VehicleBoostForce",  "1200"},
								{"VehicleBoostExtraMaxSpeedAir",  "80"},
								{"VehicleBoostTime",  "1"},
								{"VehicleBoostRechargeTime",  "2"},								
							}
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SUBMARINE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnderwaterEngineMaxSpeed",  "36"},
								{"TopSpeedForward",  "30"},
								{"TopSpeedReverse",  "30"},
								{"WheelMaxDecelForceBraking",  "11"},
								{"VehicleJumpForce",  "1800"},
								{"VehicleBoostMaxSpeed",  "50"},
								{"VehicleBoostForce",  "1800"},
								{"VehicleBoostExtraMaxSpeedAir",  "20"},
								{"VehicleBoostTime",  "5"},
								{"VehicleBoostRechargeTime",  "5"},								
							}
						},
{
							["SPECIAL_KEY_WORDS"] = {"Name","MECH",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"VehicleJumpForce",  "1800"},
								{"VehicleBoostMaxSpeed",  "50"},
								{"VehicleBoostForce",  "1800"},
								{"VehicleBoostExtraMaxSpeedAir",  "20"},
								{"VehicleBoostTime",  "5"},
								{"VehicleBoostRechargeTime",  "5"},								
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"VehicleSmall","GcInventoryLayoutGenerationDataEntry.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",  "32"},
								{"MaxSlots",  "32"},
								{"MinTechSlots",  "24"},
								{"MaxTechSlots",  "24"},							
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"VehicleSmall","Bounds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",  "8"},
								{"MaxHeightSmall",  "4"},
								{"MaxWidthStandard",  "8"},
								{"MaxHeightStandard",  "4"},
								{"MaxWidthLarge",  "8"},
								{"MaxHeightLarge",  "4"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"VehicleSmall","TechBounds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",  "8"},
								{"MaxHeightSmall",  "3"},
								{"MaxWidthStandard",  "8"},
								{"MaxHeightStandard",  "3"},
								{"MaxWidthLarge",  "8"},
								{"MaxHeightLarge",  "3"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"VehicleMedium","GcInventoryLayoutGenerationDataEntry.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",  "45"},
								{"MaxSlots",  "45"},
								{"MinTechSlots",  "27"},
								{"MaxTechSlots",  "27"},						
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"VehicleMedium","Bounds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",  "9"},
								{"MaxHeightSmall",  "5"},
								{"MaxWidthStandard",  "9"},
								{"MaxHeightStandard",  "5"},
								{"MaxWidthLarge",  "9"},
								{"MaxHeightLarge",  "5"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"VehicleMedium","TechBounds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",  "9"},
								{"MaxHeightSmall",  "3"},
								{"MaxWidthStandard",  "9"},
								{"MaxHeightStandard",  "3"},
								{"MaxWidthLarge",  "9"},
								{"MaxHeightLarge",  "3"},								
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"VehicleLarge","GcInventoryLayoutGenerationDataEntry.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSlots",  "60"},
								{"MaxSlots",  "60"},
								{"MinTechSlots",  "30"},
								{"MaxTechSlots",  "30"},							
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"VehicleLarge","Bounds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",  "10"},
								{"MaxHeightSmall",  "6"},
								{"MaxWidthStandard",  "10"},
								{"MaxHeightStandard",  "6"},
								{"MaxWidthLarge",  "10"},
								{"MaxHeightLarge",  "6"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"VehicleLarge","TechBounds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxWidthSmall",  "10"},
								{"MaxHeightSmall",  "3"},
								{"MaxWidthStandard",  "10"},
								{"MaxHeightStandard",  "3"},
								{"MaxWidthLarge",  "10"},
								{"MaxHeightLarge",  "3"},								
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","VEHICLEGUN",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSpeed",  "480"},					
							}
						},	
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{	
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MECH_GUN",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",  "800"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MECH_GUN",},
							["PRECEDING_KEY_WORDS"] = {"StatBonuses","GcStatsBonus.xml","GcStatsBonus.xml","GcStatsBonus.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "0.175"},	
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= {
						{
							["PRECEDING_KEY_WORDS"] = {"DamageReceivedAIMechTechDamageHits"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", 0},
								{"Normal", 0},
								{"High", 0},
							}
						},
					}
				},
			}
		}
	}
}