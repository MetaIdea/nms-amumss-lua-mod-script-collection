MinInventorySlotsShip = 120
MaxInventorySlotsShip = 120
MinTechSlotsShip = 60
MaxTechSlotsShip = 60

MinInventorySlotsMultiTool = 24
MaxInventorySlotsMultiTool = 24

MinInventorySlotsFreighter = 120
MaxInventorySlotsFreighter = 120
MinTechSlotsFreighter = 60
MaxTechSlotsFreighter = 60

--Ship spawn probabilities
--The sum of values below shouldn't exceed 100% chance
SClassChancePercent	=	100
AClassChancePercent	=	0
BClassChancePercent	=	0
CClassChancePercent	=	0

-- Max inventory capacity for different ship classes
SClassMaxInventorySize = 120
AClassMaxInventorySize = 120
BClassMaxInventorySize = 120
CClassMaxInventorySize = 120

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_SquareSCSlots_OnlyS_MaxSlots.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.50",
    ["MOD_DESCRIPTION"] = "Make the generated ships, multitools, freighters and frigates only have S class with max slots and square super charged slots. Make frigates have max stats.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = { 
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "SpecialTechSlotMaxIndex",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"X", "1"},
                                {"Y", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "SciSmall",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "SciMedium",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "SciLarge",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "RobotSmall",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "RobotMedium",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "RobotLarge",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "FgtSmall",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "FgtMedium",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "FgtLarge",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "ShuSmall",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "ShtMedium",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "ShtLarge",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "DrpSmall",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "DrpMedium",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "DrpLarge",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "RoySmall",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "RoyMedium",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "RoyLarge",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "SailSmall",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "SailMedium",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "SailLarge",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "AlienSmall",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "AlienMedium",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "AlienLarge",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsShip},
                                {"MaxSlots", MaxInventorySlotsShip},
                                {"MinTechSlots", MinTechSlotsShip},
                                {"MaxTechSlots", MaxTechSlotsShip},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "WeaponSmall",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsMultiTool},
                                {"MaxSlots", MaxInventorySlotsMultiTool},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "WeaponMedium",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsMultiTool},
                                {"MaxSlots", MaxInventorySlotsMultiTool},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "WeaponLarge",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsMultiTool},
                                {"MaxSlots", MaxInventorySlotsMultiTool},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "FreighterSmall",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsFreighter},
                                {"MaxSlots", MaxInventorySlotsFreighter},
                                {"MinTechSlots", MinTechSlotsFreighter},
                                {"MaxTechSlots", MaxTechSlotsFreighter},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "FreighterMedium",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsFreighter},
                                {"MaxSlots", MaxInventorySlotsFreighter},
                                {"MinTechSlots", MinTechSlotsFreighter},
                                {"MaxTechSlots", MaxTechSlotsFreighter},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "FreighterLarge",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSlots", MinInventorySlotsFreighter},
                                {"MaxSlots", MaxInventorySlotsFreighter},
                                {"MinTechSlots", MinTechSlotsFreighter},
                                {"MaxTechSlots", MaxTechSlotsFreighter},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Poor", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "C", CClassChancePercent },
                                { "B", BClassChancePercent },
                                { "A", AClassChancePercent },
                                { "S", SClassChancePercent },
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Average", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "C", CClassChancePercent },
                                { "B", BClassChancePercent },
                                { "A", AClassChancePercent },
                                { "S", SClassChancePercent },
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Wealthy", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "C", CClassChancePercent },
                                { "B", BClassChancePercent },
                                { "A", AClassChancePercent },
                                { "S", SClassChancePercent },
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Pirate", "ClassProbabilities"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "C", CClassChancePercent },
                                { "B", BClassChancePercent },
                                { "A", AClassChancePercent },
                                { "S", SClassChancePercent },
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "MaxInventoryCapacity",
                            ["REPLACE_TYPE"] 		= "ALL",
                            ["VALUE_MATCH"] 		= "",
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                { "C", CClassMaxInventorySize },
                                { "B", BClassMaxInventorySize },
                                { "A", AClassMaxInventorySize },
                                { "S", SClassMaxInventorySize },
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PercentChangeOfFrigateBeingPurchasable",100},			--60
                                {"PercentChanceOfFrigateAdditionalSpawnedTrait",100},	--55
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Combat","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Exploration","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Mining","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Diplomatic","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FuelBurnRate","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",0},
                                {"Maximum",0},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FuelCapacity","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Speed","GcFrigateStatRange.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum",50},
                                {"Maximum",50},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength", "NegativeSmall"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Combat", 0},
                                {"Exploration", 0},
                                {"Mining", 0},
                                {"Diplomacy", 0},
                                {"Support", 0},
                                {"Normandy", 0},
                                {"DeepSpace", 0},
                                {"DeepSpaceCommon", 0},
                                {"Pirate", 0},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength", "NegativeMedium"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Combat", 0},
                                {"Exploration", 0},
                                {"Mining", 0},
                                {"Diplomacy", 0},
                                {"Support", 0},
                                {"Normandy", 0},
                                {"DeepSpace", 0},
                                {"DeepSpaceCommon", 0},
                                {"Pirate", 0},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FrigateTraitStrength", "NegativeLarge"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Combat", 0},
                                {"Exploration", 0},
                                {"Mining", 0},
                                {"Diplomacy", 0},
                                {"Support", 0},
                                {"Normandy", 0},
                                {"DeepSpace", 0},
                                {"DeepSpaceCommon", 0},
                                {"Pirate", 0},
                            },
                        },
                    }
                },
            },
        },
    }
}