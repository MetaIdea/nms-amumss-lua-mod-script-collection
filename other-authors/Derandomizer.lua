NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Derandomizer.pak",
  --["MOD_BATCHNAME"]         = "mod.pak",
  ["MOD_AUTHOR"]			= "AcThPaU",
  ["NMS_VERSION"]			= "4.00",
  ["MOD_DESCRIPTION"]       = "Destroy RNG, everything S class and best stat, best rewards, and more",
  ["MODIFICATIONS"] 		=             
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{  --Ship and MultiTool Max Slot and Stat
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{                                           
							["MATH_OPERATION"] 		= "*F:MaxSlots", 
							["REPLACE_TYPE"] 		= "ALL",			      
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinSlots",		"1"},							 
							}
						},
						{
							["MATH_OPERATION"] 		= "*F:MaxTechSlots", 
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinTechSlots",	"1"},
							}
						},
						{
							["MATH_OPERATION"] 		= "*F:MaxCargoSlots", 
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinCargoSlots",	"1"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ClassProbabilities",},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"C","0"},
								{"B","0"},
								{"A","0"},
								{"S","100"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*F:Max",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","1"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*F:Max",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Min","1"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"] = {"GcInventoryTableEntry.xml",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*F:MaxSize",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSize","1"},
							},
						},							
					}
				},
				-- {  -- Max ProcTech Stat Alt
					-- ["MBIN_FILE_SOURCE"] 	= {"GCPLAYERGLOBALS.GLOBAL.MBIN",},
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- {                                          			      
							-- ["VALUE_CHANGE_TABLE"] 	= 	
							-- {
								-- {"LuckyWithTech",		"True"},		
							-- }
						-- },
					-- }
				-- },
				{  -- Max ProcTech Stat
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{			
							["MATH_OPERATION"] 		= "*F:NumStatsMax",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NumStatsMin",	"1"},
							}
						},
---------------------------------------BEGIN CORRECTION---------------------------------------
						{			
							["SPECIAL_KEY_WORDS"]   = {"ID", "UP_SNSUIT", "StatsType", "Suit_Armour_Shield_Strength"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*F:ValueMax",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ValueMin",	"1"},
							}
						},
						{			
							["SPECIAL_KEY_WORDS"]   = {"StatsType","Freighter_Fleet_Fuel"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*F:ValueMax",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ValueMin",	"1"},
							}
						},
-----------------------------------------END CORRECTION---------------------------------------
						{
							["SPECIAL_KEY_WORDS"]   = {"WeightingCurve", "MinIsSuperRare"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*FB:ValueMin",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ValueMax",	"1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"WeightingCurve", "MinIsRare"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*FB:ValueMin",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ValueMax",	"1"},			
							}
						},
						{			
							["SPECIAL_KEY_WORDS"]   = {"WeightingCurve", "MinIsUncommon"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*FB:ValueMin",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ValueMax",	"1"},			
							}
						},
						{			
							["MATH_OPERATION"] 		= "*F:ValueMax",
							["INTEGER_TO_FLOAT"]    = "FORCE",						
							["REPLACE_TYPE"] 		= "ALL",	
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ValueMin",	"1"},				
							}
						},
					}
				},
				{   -- All S Class ProcTech in reward
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{    
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"MultiItemRewardType","ProcTech"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProcTechQuality",		"3"},						      
							}
						},	
						{    
							["REPLACE_TYPE"] 		= "ALL",
							["SPECIAL_KEY_WORDS"] = {"Reward","GcRewardProcTechProduct.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightedChanceNormal",		"0"},
								{"WeightedChanceRare",			"0"},
								{"WeightedChanceEpic",			"0"},
								{"WeightedChanceLegendary",	  "100"},								
							}
						},								
					}
				},	
				{   -- All S Class ProcTech for freighter
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\PROCEDURALPRODUCTTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_MATCH"] 	= "U_FR_HYP%d",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeployableProductID",		"U_FR_HYP4"},						      
							}
						},
						{
							["VALUE_MATCH"] 	= "U_FR_SPE%d",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeployableProductID",		"U_FR_SPE4"},						      
							}
						},
						{
							["VALUE_MATCH"] 	= "U_FR_FUEL%d",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeployableProductID",		"U_FR_FUEL4"},						      
							}
						},
						{    
							["VALUE_MATCH"] 	= "U_FR_COM%d",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeployableProductID",		"U_FR_COM4"},						      
							}
						},
						{    
							["VALUE_MATCH"] 	= "U_FR_TRA%d",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeployableProductID",		"U_FR_TRA4"},						      
							}
						},
						{    
							["VALUE_MATCH"] 	= "U_FR_EXP%d",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeployableProductID",		"U_FR_EXP4"},						      
							}
						},	
						{    
							["VALUE_MATCH"] 	= "U_FR_MINE%d",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeployableProductID",		"U_FR_MINE4"},						      
							}
						},							
					}
				},
				{	--Settlement Expedition Always Success
					["MBIN_FILE_SOURCE"]     = "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"]     =
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"]     =
							{
								{"SettlementMiniExpeditionSuccessChance",    "1"},
								{"ConflictJudgementSelector",    "0"},
							}
						},
					}
				},
				{	--Frigate max stat
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PercentChangeOfFrigateBeingPurchasable", "100"},
								{"PercentChanceOfFrigateAdditionalSpawnedTrait", "100"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"FuelBurnRate", "GcFrigateStatRange.xml"},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*FB:Minimum",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Maximum", "1"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*F:Maximum",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Minimum", "1"},
							}
						},
					}
				},	
				{  --Always CapitalFreighter
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "AmbientSpawns",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WarpIn",		"True"}, 	-- Original "False"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","Role"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AIShipRole",		"CapitalFreighter"}, 	-- Original "Freighter"			
							}
						}
					} 
				},
				{	-- Frigate no bad trait (All S Class)
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"FrigateTraitStrength","NegativeLarge"},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"FrigateTraitStrength","NegativeMedium"},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"FrigateTraitStrength","NegativeSmall"},
							["SECTION_UP_SPECIAL"] = 1,
							["PRECEDING_KEY_WORDS"] = {"ChanceOfBeingOffered",},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE", "0"},
							}
						},
					}
				},	
			}
		},
	}
}