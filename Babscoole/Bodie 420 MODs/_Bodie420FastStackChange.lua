NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420FastStackChange.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "1.0",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"StackSizeChangeMaxRate",   "1000"},   --Original 60
								{"AllowInWorldDebugBorders", "True"},   --Original False
								{"EnableHandMenuDebug",      "True"},   --Original False
								{"EnableCraftingTree",       "True"},   --Original False
								{"HandControlButtonSize",    "0.10"},   --Original 0.05
								{"QuickMenuAllowCycle",      "True"},   --Original False
								{"BuildingShopMaxItems",     "999999"}, --Original 32
							}
						},
					}
				}
			}
		}
	}	
}