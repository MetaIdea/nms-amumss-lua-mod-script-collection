-- Variables - only edit here unless you know what you are doing
-- Note: Ensure ALL stacks in ALL inventories are not bigger than any value you set, as that would lead to loss of said stacks

MaterialStackSizeMax = 9999 --Maximum Stack size, set to highest value you use below - Default values: 9999/9999/9999
ProductStackSizeMax = 9999 --Maximum Stack size, set to highest value you use below - Default values: 9999/9999/9999

-- Main inventories
MaterialStackSizeExosuit = 9999 --Maximum Stack size for materials in the Exosuit - Default values: 9999/500/300
ProductStackSizeExosuit = 10 --Maximum Stack size for products in the Exosuit - Default values: 10/10/3

MaterialStackSizeShip = 9999 --Maximum Stack size for materials in Ships - Default values: 9999/1000/300
ProductStackSizeShip = 10 --Maximum Stack size for products in Ships - Default values: 10/10/3

MaterialStackSizeVehicle = 9999 --Maximum Stack size for materials in Vehicles - Default values: 9999/1000/300
ProductStackSizeVehicle = 10 --Maximum Stack size for products in Vehicles - Default values: 10/10/3

MaterialStackSizeFreighter = 9999 --Maximum Stack size for materials in the Freighter - Default values: 9999/2000/750
ProductStackSizeFreighter = 20 --Maximum Stack size for products in the Freighter - Default values: 20/10/5

MaterialStackSizeContainer = 9999 --Maximum Stack size for materials in the Storage Container - Default values: 9999/1000/750
ProductStackSizeContainer = 20 --Maximum Stack size for products in the Storage Container - Default values: 20/20/10

-- Other inventories
MaterialStackSizeDefault = 9999 --Maximum Stack size for materials in tba - Default values: 9999/500/150
ProductStackSizeDefault = 5 --Maximum Stack size for products in tba - Default values: 5/5/3

MaterialStackSizeCapsule = 9999 --Maximum Stack size for materials in the Base Capsule - Default values: 9999/2000/1250
ProductStackSizeCapsule = 100 --Maximum Stack size for products in the Base Capsule - Default values: 100/100/50

MaterialStackSizeObject = 9999 --Maximum Stack size for materials in tba - Default values: 9999/250/150
ProductStackSizeObject = 10 --Maximum Stack size for products in tba - Default values: 10/10/5

MaterialStackSizeUIPopup = 9999 --Maximum Stack size for materials in tba - Default values: 9999/250/150

StorageMultiplier = 1 --Multiplier for storage size of Extractors, Silos, Biogenerators and Batteries


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "StacksizeChanger.pak",
["MOD_AUTHOR"]    = "pottedfrog+Delta4Phoenix",
["LUA_AUTHOR"]    = "pottedfrog+Delta4Phoenix",
["NMS_VERSION"]   = "4.36",
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
								{"DifficultySettingEditability","FullyEditable"}, --Enables editing inventory difficulty after game has started, made by Gumsk: https://www.nexusmods.com/nomanssky/mods/2068
							}
						},
					
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            -- ["SPECIAL_KEY_WORDS"] = {"High","GcDifficultyInventoryStackSizeOptionData.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubstanceStackLimit", MaterialStackSizeMax},
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
                            -- ["SPECIAL_KEY_WORDS"] = {"GcDifficultyInventoryStackSizeOptionData.xml",},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSubstanceStackSizes",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Default", MaterialStackSizeDefault},
                                {"Personal", MaterialStackSizeExosuit},
                                {"Ship", MaterialStackSizeShip},
                                {"Freighter", MaterialStackSizeFreighter},
                                {"Vehicle", MaterialStackSizeVehicle},
                                {"Chest", MaterialStackSizeContainer},
                                {"BaseCapsule", MaterialStackSizeCapsule},
                                {"MaintenanceObject", MaterialStackSizeObject},
                                {"UIPopup", MaterialStackSizeUIPopup},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"High",   "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Normal", "GcDifficultyInventoryStackSizeOptionData.xml"},
                                {"Low",    "GcDifficultyInventoryStackSizeOptionData.xml"},
                            },
                            -- ["SPECIAL_KEY_WORDS"] = {"GcDifficultyInventoryStackSizeOptionData.xml",},
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
                            },
                            ["MATH_OPERATION"]  = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Storage", StorageMultiplier},
                            }
                        },
                    }
                },
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\ANTIMATTERHARVESTER\ENTITIES\ANTIMATTERHARVESTER.ENTITY.MBIN",
						
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
						    ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
							["SECTION_ACTIVE"] = {2,}, -- This is a fix for the Antimatter Reactor made by wmrojer: https://www.nexusmods.com/nomanssky/mods/2636
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",20},	--  Vanilla value: -1, causes it to generate a full stack of Antimatter
							}
						},
						
					}
				},
            }
        }
    }
}
