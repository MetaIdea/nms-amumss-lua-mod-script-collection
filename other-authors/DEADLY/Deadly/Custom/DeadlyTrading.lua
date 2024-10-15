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
    <Property name="Value" value="SHIP_CORE_C" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="SHIP_CORE_B" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="SHIP_CORE_A" />
</Property>
<Property value="NMSString0x10.xml">
    <Property name="Value" value="SHIP_CORE_S" />
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
<Property value="NMSString0x10.xml">
    <Property name="Value" value="CHART_TREASURE" />
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyTrading.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Adjust Trader preferences and settings.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "5.0",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        --
                        -- PirateTech
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "PirateTech", "GcTradeData.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MinItemsForSale", 3 }, -- 12
                                { "MaxItemsForSale", 6 }, -- 12
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
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "SHIP_CORE_C" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "SHIP_CORE_B" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "SHIP_CORE_A" },
                                { "ShipTechSpecialist", "GcTradeData.xml", "Value", "SHIP_CORE_S" },
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
                                { "MinItemsForSale", 1 }, -- 16
                                { "MaxItemsForSale", 6 }, -- 24
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
                        -- STARCHART_A:    secure site of interest
                        -- STARCHART_B:    distress signal
                        -- STARCHART_C:    inhabited outpost
                        -- STARCHART_D:    ancient artifact site
                        -- CHART_SETTLE:   planetary settlement
                        -- NAV_DATA_DROP:  Exosuit Upgrade Chart
                        -- CHART_TREASURE: ancient ruined site
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "MapShop", "GcTradeData.xml", "Value", "STARCHART_A" },
                                { "MapShop", "GcTradeData.xml", "Value", "STARCHART_B" },
                                { "MapShop", "GcTradeData.xml", "Value", "STARCHART_D" },
                                { "MapShop", "GcTradeData.xml", "Value", "CHART_SETTLE" },
                                { "MapShop", "GcTradeData.xml", "Value", "NAV_DATA_DROP" },
                                { "MapShop", "GcTradeData.xml", "Value", "CHART_TREASURE" }, -- added in OMEGA
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
                                { "MinItemsForSale", 1 }, -- 7
                                { "MaxItemsForSale", 6 }, -- 7
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
            }
        }
    }
}
