NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "Sentinel No Repair",
    ["MOD_AUTHOR"]      = "Exterra Project",
    ["MOD_DESCRIPTION"] = "Removes the Sentinel brain quest and makes the crashed interceptor repaired by default.",
    ["NMS_VERSION"]     = "6.45",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\COCKPITDATA.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PreInstalledTech", "GcMaintenanceElement"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Components", "GcMaintenanceComponentData"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"StartMissionOnUse",       ""}, 
								{"AutoCompleteOnStart",     "true"}, 
								{"VisibleMaintenanceSlots", "0"} 
							}
						}
					}
				}
			}
		}
	}
}