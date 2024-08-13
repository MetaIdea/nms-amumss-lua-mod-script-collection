local ModeName = "UniqueSpaceShips"
local Author = "Jackty89"

local SpaceShipGlobalsPath = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"
local InventoryTablePath = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

local ShuttleTakeOffReductionMultiplier = "0.75" -- Reduction of 25% for the base-value

local Reduce_High ="0.7"
local Reduce_Medium = "0.8"
local Reduce_Low = "0.9"

local Normal_Value = "1"
local Low_Value = "1.1"
local Low_Med_Value ="1.25"
local Med_Val = "1.5"
local Med_High_Value = "1.75"
local High_Value = "2"
local High_Extr_Value ="2.5"
local Extreme_Value = "3"

local Freighter_C = "5"
local Freighter_B = "6"
local Freighter_A = "7"
local Freighter_S = "8"

local Edit_Properties = false

local User_Choice_Edit_Properties = {Edit_Properties,
[[
    Would you like to manually edit properties?
    BE WARNED THESE ARE A LOT OF EDITS
    Default = >> ]] .. (Edit_Properties and "Y" or "N") .. [[ <<
]]}
Edit_Properties = GUIF(User_Choice_Edit_Properties, 10)

local Property_Changes =
{
    SHIP_HYPERDRIVE =
    {
        C =
        {
            Scientific = Med_High_Value,
            Dropship = Reduce_High,
            Fighter = Med_Val,
            Shuttle = Normal_Value,
            Robot = Low_Med_Value,
            Sail = Med_Val,
        },
        B =
        {
            Scientific = High_Value,
            Dropship = Reduce_Medium,
            Fighter = Med_High_Value,
            Shuttle = Low_Value,
            Robot = Med_Val,
            Sail = Med_High_Value,
        },
        A =
        {
            Scientific = High_Extr_Value,
            Dropship = Reduce_Low,
            Fighter = High_Value,
            Shuttle = Low_Med_Value,
            Robot = Med_High_Value,
            Sail = High_Value,
        },
        S =
        {
            Scientific = Extreme_Value,
            Dropship = Normal_Value,
            Fighter = High_Extr_Value,
            Shuttle = Med_Val,
            Royal = High_Value,
            Robot = High_Value,
            Sail = High_Extr_Value,
            Alien = High_Value
        }
    },
    SHIP_DAMAGE =
    {
        C =
        {
            Scientific = Low_Value,
            Dropship = Med_Val,
            Fighter = Med_High_Value,
            Shuttle = Normal_Value,
            Robot = Low_Med_Value,
            Sail = Med_Val,
        },
        B =
        {
            Scientific = Low_Med_Value,
            Dropship = Med_High_Value,
            Fighter = High_Value,
            Shuttle = Low_Value,
            Robot = Med_Val,
            Sail = Med_High_Value,
        },
        A =
        {
            Scientific = Med_Val,
            Dropship = High_Value,
            Fighter = High_Extr_Value,
            Shuttle = Low_Med_Value,
            Robot = Med_High_Value,
            Sail = High_Value,
        },
        S =
        {
            Scientific = Med_High_Value,
            Dropship = High_Extr_Value,
            Fighter = Extreme_Value,
            Shuttle = Med_Val,
            Robot = High_Value,
            Sail = High_Extr_Value,
            Royal = High_Value,
            Alien = High_Value
        }
    },
    SHIP_SHIELD =
    {
        C =
        {
            Scientific = Reduce_High,
            Dropship = Med_High_Value,
            Fighter = Low_Value,
            Shuttle = Normal_Value,
            Robot = Low_Med_Value,
            Sail = Normal_Value,
        },
        B =
        {
            Scientific = Reduce_Medium,
            Dropship = High_Value,
            Fighter = Low_Med_Value,
            Shuttle = Low_Value,
            Robot = Med_Val,
            Sail = Low_Value,
        },
        A =
        {
            Scientific = Reduce_Low,
            Dropship = High_Extr_Value,
            Fighter = Med_Val,
            Shuttle = Low_Med_Value,
            Robot = Med_High_Value,
            Sail = Low_Med_Value,
        },
        S =
        {
            Scientific = Normal_Value,
            Dropship = Extreme_Value,
            Fighter = Med_High_Value,
            Shuttle = Med_Val,
            Robot = High_Value,
            Sail = Med_Val,
            Royal = High_Value,
            Alien = High_Value
        }
    },
    SHIP_AGILE =
    {
        C =
        {
            Scientific = Normal_Value,
            Dropship = Normal_Value,
            Fighter = Low_Med_Value,
            Shuttle = Normal_Value,
            Robot = Med_High_Value,
            Sail = Reduce_Low,
        },
        B =
        {
            Scientific = Low_Value,
            Dropship = Low_Value,
            Fighter = Med_Val,
            Shuttle = Low_Value,
            Robot = High_Value,
            Sail = Normal_Value,
        },
        A =
        {
            Scientific = Low_Med_Value,
            Dropship = Low_Med_Value,
            Fighter = Med_High_Value,
            Shuttle = Low_Med_Value,
            Robot = High_Extr_Value,
            Sail = Low_Value,
        },
        S =
        {
            Scientific = Med_Val,
            Dropship = Med_Val,
            Fighter = High_Value,
            Shuttle = Med_Val,
            Robot = Extreme_Value,
            Sail = Low_Med_Value,
            Royal = High_Value,
            Alien = High_Value
        }
    },
    FREI_HYPERDRIVE =
    {
        C =
        {
            Freighter = Freighter_C
        },
        B =
        {
            Freighter = Freighter_B
        },
        A =
        {
            Freighter = Freighter_A
        },
        S =
        {
            Freighter = Freighter_S
        }
    }
}

if Edit_Properties then
    for property_stat, values_per_class in pairs(Property_Changes) do
        for class, ship_stats_per_class in pairs(values_per_class) do
            for ship_type, property_multiplier_value in pairs(ship_stats_per_class) do
                local choice_user = {property_multiplier_value,
                [[
                    Would you like change the value ]] .. property_stat .. [[ at class: ]].. class ..[[ for ]].. ship_type ..[[?
                    Current = >> ]] .. property_multiplier_value .. [[ <<
                ]]}
                Property_Changes[property_stat][class][ship_type] = GUIF(choice_user, 10)
            end
        end
    end
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName..".pak",
    ["MOD_DESCRIPTION"] = "Rework of all Spaceships and their bonuses and price",
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = SpaceShipGlobalsPath, 
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            --Reduce launch cost for Shuttle
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShuttleTakeOffMod", ShuttleTakeOffReductionMultiplier} -- Original 0.66 => 25% * 0.66 = 16.5% launch cost - Mod 25% * 0.10 = 2.5%
                            }
                        }
                    }
                }, 
                {
                    ["MBIN_FILE_SOURCE"] = InventoryTablePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                }
            }
        }
    }
}

local Changes_To_Inventory_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
function Change_Properties()
    for property_stat, values_per_class in pairs(Property_Changes) do
        for class, ship_stats_per_class in pairs(values_per_class) do
            for ship_type, property_multiplier_value in pairs(ship_stats_per_class) do
                Changes_To_Inventory_Table[#Changes_To_Inventory_Table +1] =
                {
                    ["PRECEDING_FIRST"] = "TRUE",
                    ["MATH_OPERATION"] = "*",
                    ["INTEGER_TO_FLOAT"] = "FORCE",
                    ["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", ship_type, "BaseStatsPerClass", class},
                    ["SPECIAL_KEY_WORDS"] = {"BaseStatID", property_stat},
                    ["VALUE_CHANGE_TABLE"] =
                    {
                        {"Min", property_multiplier_value},
                        {"Max", property_multiplier_value}
                    }
                }
            end
        end
    end
end
Change_Properties()

-- for i = 1, #Shipchanges do
--     -- local Changes_To_Inventory_Table_temp
--     local StatID = Shipchanges[i][1][1]
--     local ShipTypes = Shipchanges[i][2]

--     for j = 1, #ShipTypes do
--         local ShipType = ShipTypes[j][1]
--         local Modifier
--         for k = 1, #Class do
--             if ShipType == "Alien" or ShipType ==  "Royal" then
--                 k = #Class
--             end

--             Modifier = ShipTypes[j][k+1]
--             Changes_To_Inventory_Table_temp =
--             {
--                 ["PRECEDING_FIRST"] = "TRUE",
--                 ["MATH_OPERATION"] = "*",
--                 ["INTEGER_TO_FLOAT"] = "FORCE",
--                 ["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", ShipType, "BaseStatsPerClass", Class[k]}, 
--                 ["SPECIAL_KEY_WORDS"] = {"BaseStatID", StatID},
--                 ["VALUE_CHANGE_TABLE"] =
--                 {
--                     {"Min", Modifier},
--                     {"Max", Modifier}
--                 }
--             }
--             Changes_To_Inventory_Table[#Changes_To_Inventory_Table+1] = Changes_To_Inventory_Table_temp
--         end
--     end
-- end