
-- ***************  THIS SCRIPT WILL FAIL TO COMPILE  *************

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Test_3_waysToReachTarget.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSETTLEMENTGLOBALS.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts","GroundStorey","Currency",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Currency",	"{:}"}, --Original "Units"
							}	
						},
            --alternate way
						{
              ["SPECIAL_KEY_WORDS"] = {"None","GcSettlementBuildingCost.xml",}, -- unique
							["PRECEDING_KEY_WORDS"] = {"StageCosts","Start","GroundStorey","Currency",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Currency",	"{:}"}, --Original "Units"
							}	
						},
            --alternate way
						{
              ["SPECIAL_KEY_WORDS"] = {"None","GcSettlementBuildingCost.xml","GroundStorey","GcSettlementBuildingCostData.xml","Currency","GcCurrency.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Currency",	"{:}"}, --Original "Units"
							}	
						},
            --alternate way
						{
              ["SPECIAL_KEY_WORDS"] = {"None","GcSettlementBuildingCost.xml","GroundStorey","GcSettlementBuildingCostData.xml",}, -- fast
							["PRECEDING_KEY_WORDS"] = {"Currency",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Currency",	"{:}"}, --Original "Units"
							}	
						},
            --alternate way
						{
							["SPECIAL_KEY_WORDS"] = {"None","GcSettlementBuildingCost.xml",}, -- unique
							["PRECEDING_KEY_WORDS"] = {"GroundStorey","Currency",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Currency",	"{:}"}, --Original "Units"
							}	
						},
					}
				},
			}
		}, --5 global replacements
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
