-- GRENFUEL1: Unstable Plasma
MECH_GUN_NEW_AMMO = [[
<Property name="ChargeBy" value="GRENFUEL1" _index="0" />
]]

CANNON_CHARGEBY = [[
<Property name="ChargeBy">
    <Property name="ChargeBy" value="POWERCELL" _index="0" />
</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyRecharge.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Removes the ability to recharge Hazard Protection Shields, Life Support with substances.",
    ["NMS_VERSION"]     = "5.63",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Minotaur Cannon uses Unstable Plasma as charges
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "MECH_GUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ChargeMultiplier", 5.0 },
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
                                { "ChargeMultiplier", 5.0 },
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
                            ["SPECIAL_KEY_WORDS"] = {
                                { "ID", "SHIPSHIELD",      "ChargeBy", "CATALYST1" },
                                { "ID", "SHIPSHIELD",      "ChargeBy", "CATALYST2" },
                                { "ID", "SHIPSHIELD_ROBO", "ChargeBy", "CATALYST1" },
                                { "ID", "SHIPSHIELD_ROBO", "ChargeBy", "CATALYST2" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "LINE"
                        },
                        -- Disable recharging ANY protection shield with substances
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                { "ID", "PROTECT",    "ChargeBy", "CATALYST1" },
                                { "ID", "PROTECT",    "ChargeBy", "CATALYST2" },
                                { "ID", "T_HOTPROT",  "ChargeBy", "HOT1" },
                                { "ID", "T_COLDPROT", "ChargeBy", "COLD1" },
                                { "ID", "T_RAD",      "ChargeBy", "RADIO1" },
                                { "ID", "T_TOX",      "ChargeBy", "TOXIC1" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "LINE"
                        },
                        -- Disable recharging Life Support with substances
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                { "ID", "ENERGY", "ChargeBy", "OXYGEN" },
                                { "ID", "ENERGY", "ChargeBy", "COLD1" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "LINE"
                        },
                        -- Neutron Cannon (ChargeAmount = 500)
                        {
                            ["SPECIAL_KEY_WORDS"] = {
                                { "ID", "CANNON", "ChargeBy", "FUEL2" },
                            },
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "LINE"
                        },
                        -- Power cell charge value = 80
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "ID", "CANNON" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "ChargeMultiplier", 2.0 },
                        --     },
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "ID", "CANNON" },
                            ["PRECEDING_KEY_WORDS"] = { "ChargeBy" },
                            ["ADD_OPTION"]          = "REPLACEwholeSECTION",
                            ["ADD"]                 = CANNON_CHARGEBY
                        },
                    }
                }
            }
        }
    }
}
