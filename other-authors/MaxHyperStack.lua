StorageMultiplier = 1 
StorageMultiplierBaseBuilding = 100 

SubstanceStackSizeExosuit = 9999999 
ProductStackSizeExosuit = 9999999 

SubstanceStackSizeShip = 9999999 
ProductStackSizeShip = 9999999 

SubstanceStackSizeVehicle = 9999999 
ProductStackSizeVehicle = 9999999 

SubstanceStackSizeFreighter = 9999999 
ProductStackSizeFreighter = 9999999 

SubstanceStackSizeContainer = 9999999 
ProductStackSizeContainer = 9999999 

SubstanceStackSizeDefault = 9999999
ProductStackSizeDefault = 9999999 

SubstanceStackSizeCapsule = 9999999 
ProductStackSizeCapsule = 9999999 

SubstanceStackSizeObject = 9999999 
ProductStackSizeObject = 9999999 

SubstanceStackSizeUIPopup = 9999999 

SubstanceStackSizeMax = 99999999 
ProductStackSizeMax = 99999999 


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MaxHyperStack.pak",
["MOD_AUTHOR"]    = "Onykron",
["LUA_AUTHOR"]    = "Onykron",
["NMS_VERSION"]   = "5.3.1",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
					{
							["SPECIAL_KEY_WORDS"] = {"InventoryStackLimits","GcDifficultySettingCommonData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"DifficultySettingEditability","FullyEditable"}, 
							}
						},
					
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"High","GcDifficultyInventoryStackSizeOptionData.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", SubstanceStackSizeMax},
                                {"ProductStackLimit",   ProductStackSizeMax},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"GcDifficultyInventoryStackSizeOptionData.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", SubstanceStackSizeDefault},
                                {"Personal", SubstanceStackSizeExosuit},
                                {"Ship", SubstanceStackSizeShip},
                                {"Freighter", SubstanceStackSizeFreighter},
                                {"Vehicle", SubstanceStackSizeVehicle},
                                {"Chest", SubstanceStackSizeContainer},
                                {"BaseCapsule", SubstanceStackSizeCapsule},
                                {"MaintenanceObject", SubstanceStackSizeObject},
                                {"UIPopup", SubstanceStackSizeUIPopup},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"GcDifficultyInventoryStackSizeOptionData.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"MaxProductStackSizes",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", ProductStackSizeDefault},
                                {"Personal", ProductStackSizeExosuit},
                                {"Ship", ProductStackSizeShip},
                                {"Freighter", ProductStackSizeFreighter},
                                {"Vehicle", ProductStackSizeVehicle},
                                {"Chest",  ProductStackSizeContainer},
                                {"BaseCapsule", ProductStackSizeCapsule},
                                {"MaintenanceObject", ProductStackSizeObject},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"ID", "U_EXTRACTOR_S"},
                                {"ID", "U_GASEXTRACTOR"},
                                {"ID", "U_SILO_S"},
                                {"ID", "U_BIOGENERATOR"},
                                {"ID", "U_BATTERY_S"},
								{"ID", "BUILD_REFINER1"},
								{"ID", "BUILD_REFINER2"},
								{"ID", "BUILD_REFINER3"},
								{"ID", "FRE_ROOM_REFINE"},
                            },
                            ["MATH_OPERATION"]  = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", StorageMultiplierBaseBuilding},
                            }
                        },
                    }
                },
				{
                    ["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "Table",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"StackMultiplier",	StorageMultiplier},
							}
                        }
                    }
                },
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\ANTIMATTERHARVESTER\ENTITIES\ANTIMATTERHARVESTER.ENTITY.MBIN",
						
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
						    ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
							["SECTION_ACTIVE"] = {2,}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",20},
							}
						},
						
					}
				}
            }
        }
    }
}