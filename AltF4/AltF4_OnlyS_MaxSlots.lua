local Stats = true
local Traits = true

inputPrompts = {
    ChangeScriptSettings = {false,
[[  Would you like to change the script's settings?
    The script will also modify the stats and traits of frigates.
    You can disable those modifications to frigates through this selection.
    Press ENTER for default value.
    Default: N
]]},
    ChangeBestStats = {Stats,
[[  Do you want the frigate to have the best stats?
    Default: Y | Current: >> ]] .. (Stats and "Y" or "N") .. [[ <<
]]},
    ChangePositiveTraits = {Traits,
[[  Do you want the frigate to have five positive traits?
    Default: Y | Current: >> ]] .. (Traits and "Y" or "N") .. [[ <<
]]},
}

if GUIF(inputPrompts.ChangeScriptSettings,10) then
    Stats = GUIF(inputPrompts.ChangeBestStats,10)
    Traits = GUIF(inputPrompts.ChangePositiveTraits,10)
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_OnlyS_MaxSlots",
    ["MOD_AUTHOR"] = "AltF4",
	["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "6.01",
    ["MOD_DESCRIPTION"] = "Make the generated ships, multitools, freighters and frigates only have S class with max slots. Make frigates have max stats.",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = { 
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDABLESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Class"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"InventoryClass","S"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipLayout"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Slots","120"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilities"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "C", "0"},
                                { "B", "0"},
                                { "A", "0"},
                                { "S", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "C", "120"},
                                { "B", "120"},
                                { "A", "120"},
                                { "S", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {
                                {"SciSmall"},
                                {"SciMedium"},
                                {"SciLarge"},
                                {"FgtSmall"},
                                {"FgtMedium"},
                                {"FgtLarge"},
                                {"ShuSmall"},
                                {"ShtMedium"},
                                {"ShtLarge"},
                                {"DrpSmall"},
                                {"DrpMedium"},
                                {"DrpLarge"},
                                {"RoySmall"},
                                {"RoyMedium"},
                                {"RoyLarge"},
                                {"AlienSmall"},
                                {"AlienMedium"},
                                {"AlienLarge"},
                                {"SailSmall"},
                                {"SailMedium"},
                                {"SailLarge"},
                                {"RobotSmall"},
                                {"RobotMedium"},
                                {"RobotLarge"},
                                {"FreighterSmall"},
                                {"FreighterMedium"},
                                {"FreighterLarge"},
                                {"Corvette"},
                                {"CorvetteStorage"},
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSlots", "120"},
                                {"MaxSlots", "120"},
                                {"MinTechSlots", "60"},
                                {"MaxTechSlots", "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {
                                {"WeaponSmall"},
                                {"WeaponMedium"},
                                {"WeaponLarge"},
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinTechSlots", "60"},
                                {"MaxTechSlots", "60"},
                            }
                        },
                    }
                },
            },
        },
    },
}

if Stats then
    local addMBINChangeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
    addMBINChangeTable[#addMBINChangeTable + 1] = {
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PercentChangeOfFrigateBeingPurchasable", "100"},         --60
                                {"PercentChanceOfFrigateAdditionalSpawnedTrait", "100"},   --55
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                {"Combat","GcFrigateStatRange"},
                                {"Exploration","GcFrigateStatRange"},
                                {"Mining","GcFrigateStatRange"},
                                {"Diplomatic","GcFrigateStatRange"},
                                {"FuelCapacity","GcFrigateStatRange"},
                                {"Speed","GcFrigateStatRange"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum", "50"},
                                {"Maximum", "50"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FuelBurnRate","GcFrigateStatRange"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Minimum", "0"},
                                {"Maximum", "0"},
                            },
                        },
                    }
                }
end

if Traits then
    local addMBINChangeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
    addMBINChangeTable[#addMBINChangeTable + 1] = {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\FRIGATETRAITTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                {"FrigateTraitStrength", "NegativeSmall"},
                                {"FrigateTraitStrength", "NegativeMedium"},
                                {"FrigateTraitStrength", "NegativeLarge"},
                            },
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Combat", "0"},
                                {"Exploration", "0"},
                                {"Mining", "0"},
                                {"Diplomacy", "0"},
                                {"Support", "0"},
                                {"Normandy", "0"},
                                {"DeepSpace", "0"},
                                {"DeepSpaceCommon", "0"},
                                {"Pirate", "0"},
                                {"GhostShip", "0"},
                            },
                        },
                    }
                }
end