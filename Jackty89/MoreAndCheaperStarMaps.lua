ModName = "MoreAndCheaperStarmaps"
Author = "Jackty89"

Product_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
Reward_Table_Path = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
Consumeable_Item_Table_Path = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN"
Default_Reality_Path = "METADATA/REALITY/DEFAULTREALITY.MBIN"

Starmap_Crashed_Ship_Id = "MAP_CRASHSHIP"
HiveMap_Id = "CHART_HIVE"


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName .. ".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = Product_Table_Path,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- This reduces the cost of settlement maps to 1
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CHART_SETTLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RecipeCost", "1"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = Reward_Table_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Consumeable_Item_Table_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Default_Reality_Path,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "7"},
                                {"MaxItemsForSale", "7"}
                            }
                        }
                    }
                }
            }
        }
    }
}
local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Reward_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local Changes_To_Consumable_Item_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]

function Create_New_Starmap(New_Id)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "CHART_TREASURE"},
        ["SEC_SAVE_TO"] = "STARCHART_COPY"
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_COPY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", New_Id},
            {"Name", "BUILDING_DISTRESSSIGNAL"},
            {"NameLower", "BUILDING_DISTRESSSIGNAL_L"},
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_COPY",
        ["PRECEDING_KEY_WORDS"] = {"Subtitle"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", "UI_CORE_TUTORIAL1_MSG1C"}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_COPY",
        ["PRECEDING_KEY_WORDS"] = {"Description"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", "UI_STARCHART_DESC_DISTRESS"}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_COPY",
        ["SPECIAL_KEY_WORDS"] = {"Icon", "TkTextureResource.xml"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Filename", "TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.CRASHEDSHIP.DDS"}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "STARCHART_COPY"
    }
end

function Create_Starmap_Reward(Reward_Id)
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_A"},
        ["PRECEDING_KEY_WORDS"] = {"List", "List", "GcRewardTableItem.xml"},
        ["SEC_SAVE_TO"] = "STARCHART_REWARD_ITEM_COPY"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_REWARD_ITEM_COPY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"PercentageChance", "100"},
            {"Event", "DISTRESS"},
            {"LabelID", "Distress"}
        }
    }

    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_A"},
        ["SEC_SAVE_TO"] = "STARCHART_REWARD_COPY"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_REWARD_COPY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id", Reward_Id},
            {"RewardChoice", "GiveAll"}
        }
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_REWARD_COPY",
        ["PRECEDING_KEY_WORDS"] = { "GcRewardTableItem.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_REWARD_COPY",
        ["SPECIAL_KEY_WORDS"] = {"Id", Reward_Id},
        ["PRECEDING_KEY_WORDS"] = {"List","List"},
        ["SEC_ADD_NAMED"] =  "STARCHART_REWARD_ITEM_COPY"
    }

    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"SpecialRewardTable"},
        ["SEC_ADD_NAMED"] = "STARCHART_REWARD_COPY"
    }
end

function Create_Starmap_Consumable(Consumable_Id, New_Reward_Id)
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "STARCHART_A"},
        ["SEC_SAVE_TO"] = "STARCHART_CONSUMABLE_COPY"
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["SEC_EDIT"] = "STARCHART_CONSUMABLE_COPY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", Consumable_Id},
            {"RewardID", New_Reward_Id},

        }
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["SEC_ADD_NAMED"] = "STARCHART_CONSUMABLE_COPY"
    }
end

function Create_Mapshop_Entry(Mapshop_Entry_Id)
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop", "AlwaysPresentProducts", "NMSString0x10.xml"},
        ["SEC_SAVE_TO"] = "MAPSHOP_ENTRY"
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["SEC_EDIT"] = "MAPSHOP_ENTRY",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", Mapshop_Entry_Id}
        }
    }
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"TradeSettings", "MapShop", "AlwaysPresentProducts"},
        ["SEC_ADD_NAMED"] = "MAPSHOP_ENTRY"
    }
end

Create_New_Starmap(Starmap_Crashed_Ship_Id)
Create_Starmap_Reward("R_" .. Starmap_Crashed_Ship_Id)
Create_Starmap_Consumable(Starmap_Crashed_Ship_Id, "R_" .. Starmap_Crashed_Ship_Id)

Create_Mapshop_Entry(Starmap_Crashed_Ship_Id)
Create_Mapshop_Entry(HiveMap_Id)