MECH_GUN_NEW_AMMO = [[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="GRENFUEL1" />
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyRecharge.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Removes the ability to recharge Hazard Protection Shields, Life Support with substances.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Minotaur Cannon uses Unstable Plasma as charges
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "MECH_GUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ChargeMultiplier", 5 },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "ID", "MECH_GUN" },
                            ["PRECEDING_KEY_WORDS"] = { "ChargeBy" },
                            ["CREATE_HOS"]          = "TRUE",
                            ["ADD"]                 = MECH_GUN_NEW_AMMO
                        },
                        -- Mounted Cannon uses Unstable Plasma as charges
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "VEHICLE_GUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ChargeMultiplier", 5 },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "ID", "VEHICLE_GUN" },
                            ["PRECEDING_KEY_WORDS"] = { "ChargeBy" },
                            ["CREATE_HOS"]          = "TRUE",
                            ["ADD"]                 = MECH_GUN_NEW_AMMO
                        },
                        -- Disable recharging ship's shield with Sodium
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "ID", "SHIPSHIELD",      "Value", "CATALYST1" },
                                { "ID", "SHIPSHIELD",      "Value", "CATALYST2" },
                                { "ID", "SHIPSHIELD_ROBO", "Value", "CATALYST1" },
                                { "ID", "SHIPSHIELD_ROBO", "Value", "CATALYST2" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "SECTION"
                        },
                        -- Disable recharging ANY protection shield with substances
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "ID", "PROTECT",    "Value", "CATALYST1" },
                                { "ID", "PROTECT",    "Value", "CATALYST2" },
                                { "ID", "T_HOTPROT",  "Value", "HOT1" },
                                { "ID", "T_COLDPROT", "Value", "COLD1" },
                                { "ID", "T_RAD",      "Value", "RADIO1" },
                                { "ID", "T_TOX",      "Value", "TOXIC1" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "SECTION"
                        },
                        -- Disable recharging Life Support with substances
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "ID", "ENERGY", "Value", "OXYGEN" },
                                { "ID", "ENERGY", "Value", "COLD1" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "SECTION"
                        },
                        -- Neutron Cannon (ChargeAmount = 500)
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                -- { "ID", "CANNON", "Value", "FUEL1" },
                                { "ID", "CANNON", "Value", "FUEL2" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "SECTION"
                        },
                        -- Power cell charge value = 80
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "ID", "CANNON" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "ChargeMultiplier", 2 },
                        --     },
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "CANNON", "Value", "FUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Value", "POWERCELL" },
                            },
                        },
                    }
                }
            }
        }
    }
}
