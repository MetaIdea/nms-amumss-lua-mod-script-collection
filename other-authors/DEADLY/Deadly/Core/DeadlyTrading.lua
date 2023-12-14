ShipTechSpecialist_AlwaysPresentProducts = [[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_LAUNCH1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_PULSE1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_HYPER1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHIPSHIELD1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHIPGUN1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHIPLAS1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHIPSHOT1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHIPMINI1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHIPBLOB1" />
</Property>
]]

SuitTechSpecialist_AlwaysPresentProducts = [[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_ENERGY1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_JETBOOST1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHIELDBOOST1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_UNW1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_RAD1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_TOX1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_COLDPROT1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_HOTPROT1" />
</Property>
]]

WeapTechSpecialist_AlwaysPresentProducts = [[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_LASER1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SCANNER1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_BOLT1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_GRENADE1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_TGRENADE1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_RAIL1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SHOTGUN1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_SMG1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_CANNON1" />
</Property>
]]

VehicleTechSpecialist_AlwaysPresentProducts = [[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_EXOGUN1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_EXO_ENG1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_EXOLAS1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_EXOBOOST1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_EXO_SUB1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_EXO_SUBGUN1" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_MECH_ENG2" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_MECHLAS2" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="U_MECHGUN2" />
</Property>
]]

MapShop_NewOptionalProducts = [[
<Property value="NMSString0x10.xml">
    <Property name="Value" value="STARCHART_A" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="STARCHART_B" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="STARCHART_D" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="CHART_SETTLE" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="NAV_DATA_DROP" />
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyTrading.pak",
    ["MOD_BATCHNAME"]   = "_Deadly.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Adjust Trader preferences and settings.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/DEFAULTREALITY.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        --
                        -- PirateTech
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "PirateTech", "GcTradeData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MinItemsForSale", 1 }, -- 12
                                { "MaxItemsForSale", 6 }, -- 12
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "PirateTech", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "MaxAmountOfProductAvailable" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "Poor",    1 }, -- 3
                                { "Average", 1 }, -- 3
                                { "Wealthy", 1 }, -- 3
                                { "Pirate",  1 }, -- 3
                            },
                        },
                        --
                        -- ShipTechSpecialist
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_LAUNCH1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_PULSE1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_HYPER1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_SHIPSHIELD1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_SHIPGUN1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_SHIPLAS1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_SHIPSHOT1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_SHIPMINI1" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "U_SHIPBLOB1" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "ShipTechSpecialist", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "OptionalProducts" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = ShipTechSpecialist_AlwaysPresentProducts
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ShipTechSpecialist", "GcTradeData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MinItemsForSale", 1 }, -- 12
                                { "MaxItemsForSale", 6 }, -- 18
                            },
                        },
                        --
                        -- SuitTechSpecialist
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_ENERGY1" },
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_JETBOOST1" },
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_SHIELDBOOST1" },
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_UNW1" },
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_RAD1" },
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_TOX1" },
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_COLDPROT1" },
                                { "SuitTechSpecialist", "GcTradeData.xml", "Value", "U_HOTPROT1" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "SuitTechSpecialist", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "OptionalProducts" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = SuitTechSpecialist_AlwaysPresentProducts
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "SuitTechSpecialist", "GcTradeData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MinItemsForSale", 1 }, -- 12
                                { "MaxItemsForSale", 6 }, -- 18
                            },
                        },
                        --
                        -- WeapTechSpecialist
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_LASER1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_SCANNER1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_BOLT1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_GRENADE1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_TGRENADE1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_RAIL1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_SHOTGUN1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_SMG1" },
                                { "WeapTechSpecialist", "GcTradeData.xml", "Value", "U_CANNON1" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "WeapTechSpecialist", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "OptionalProducts" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = WeapTechSpecialist_AlwaysPresentProducts
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "WeapTechSpecialist", "GcTradeData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MinItemsForSale", 1 }, -- 12
                                { "MaxItemsForSale", 6 }, -- 18
                            },
                        },
                        --
                        -- VehicleTechSpecialist
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_EXOGUN1" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_EXO_ENG1" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_EXOLAS1" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_EXOBOOST1" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_EXO_SUB1" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_EXO_SUBGUN1" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_MECH_ENG2" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_MECHLAS2" },
                                { "VehicleTechSpecialist", "GcTradeData.xml", "Value", "U_MECHGUN2" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "VehicleTechSpecialist", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "OptionalProducts" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = VehicleTechSpecialist_AlwaysPresentProducts
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "VehicleTechSpecialist", "GcTradeData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MinItemsForSale", 1 }, -- 12
                                { "MaxItemsForSale", 6 }, -- 12
                            },
                        },
                        --
                        -- ExpShip
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "ExpShip", "GcTradeData.xml", "Value", "EXP_CURIO1" },
                                { "ExpShip", "GcTradeData.xml", "Value", "EXP_CURIO2" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        --
                        -- TraShip
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "TraShip", "GcTradeData.xml", "Value", "TRA_CURIO1" },
                                { "TraShip", "GcTradeData.xml", "Value", "TRA_CURIO2" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        --
                        -- WarShip
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "WarShip", "GcTradeData.xml", "Value", "WAR_CURIO1" },
                                { "WarShip", "GcTradeData.xml", "Value", "WAR_CURIO2" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        --
                        -- LoneExp
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "LoneExp", "GcTradeData.xml", "Value", "EXP_CURIO1" },
                                { "LoneExp", "GcTradeData.xml", "Value", "EXP_CURIO2" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        --
                        -- LoneTra
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "LoneTra", "GcTradeData.xml", "Value", "TRA_CURIO1" },
                                { "LoneTra", "GcTradeData.xml", "Value", "TRA_CURIO2" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        --
                        -- LoneWar
                        --
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "LoneWar", "GcTradeData.xml", "Value", "WAR_CURIO1" },
                                { "LoneWar", "GcTradeData.xml", "Value", "WAR_CURIO2" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        --
                        -- MapShop
                        --
                        -- STARCHART_A:   secure site of interest
                        -- STARCHART_B:   distress signal
                        -- STARCHART_C:   inhabited outpost
                        -- STARCHART_D:   ancient artifact site
                        -- CHART_SETTLE:  planetary settlement
                        -- NAV_DATA_DROP: Exosuit Upgrade Chart
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "MapShop", "GcTradeData.xml", "Value", "STARCHART_A" },
                                { "MapShop", "GcTradeData.xml", "Value", "STARCHART_B" },
                                { "MapShop", "GcTradeData.xml", "Value", "STARCHART_D" },
                                { "MapShop", "GcTradeData.xml", "Value", "CHART_SETTLE" },
                                { "MapShop", "GcTradeData.xml", "Value", "NAV_DATA_DROP" },
                            },
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "MapShop", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "OptionalProducts" },
                            ["CREATE_HOS"]          = "TRUE",
                            ["ADD"]                 = MapShop_NewOptionalProducts
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MapShop", "GcTradeData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MinItemsForSale", 1 }, -- 6
                                { "MaxItemsForSale", 6 }, -- 6
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "MapShop", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "MinAmountOfProductAvailable" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "Poor",    10 }, -- 99
                                { "Average", 30 }, -- 99
                                { "Wealthy", 50 }, -- 99
                                { "Pirate",  99 }, -- 99
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "MapShop", "GcTradeData.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "MaxAmountOfProductAvailable" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "Poor",    10 }, -- 99
                                { "Average", 30 }, -- 99
                                { "Wealthy", 50 }, -- 99
                                { "Pirate",  99 }, -- 99
                            },
                        },
                    }
                },
                --
                -- METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- STARCHART_A:   secure site of interest
                        -- STARCHART_B:   distress signal
                        -- STARCHART_C:   inhabited outpost
                        -- STARCHART_D:   ancient artifact site
                        -- CHART_SETTLE:  planetary settlement
                        -- NAV_DATA_DROP: Exosuit Upgrade Chart
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "STARCHART_A" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RecipeCost", 10 }, -- 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "STARCHART_B" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RecipeCost", 10 }, -- 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "STARCHART_D" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RecipeCost", 5 }, -- 1
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "ID", "NAV_DATA_DROP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RecipeCost", 10 }, -- 3
                            },
                        },
                    }
                },
            }
        }
    }
}
