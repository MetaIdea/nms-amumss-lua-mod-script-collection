local ModName = "MoreAndCheaperStarmaps"
local Author = "Jackty89"

local Product_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
local Reward_Table_Path = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
local Consumeable_Item_Table_Path = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN"
local Default_Reality_Path = "METADATA/REALITY/DEFAULTREALITY.MBIN"

local Custom_Star_Charts =
{
    {
        ID = 'MAP_CRASHSHIP',
        REWARD_EVENT = 'DISTRESS',
        DATA = {
            NAME = 'BUILDING_DISTRESSSIGNAL',
            NAMELOWER = 'BUILDING_DISTRESSSIGNAL_L',
            SUB ='UI_CORE_TUTORIAL1_MSG1C',
            DESC = 'UI_STARCHART_DESC_DISTRESS',
            FILENAME = 'TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.SEASON9.DDS'
        }
    },
    {
        ID = 'MAP_LIBRARY',
        REWARD_EVENT = 'LIBRARY',
        DATA = {
            NAME = 'BUILDING_LARGEBUILDING_L',
            NAMELOWER = 'BUILDING_LARGEBUILDING_L',
            SUB ='BUILDING_LARGEBUILDING_L',
            DESC = 'BUILDING_LARGEBUILDING_L',
            FILENAME = 'TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.DOSIMETER.1.DDS'
        }
    }
}

local HiveMap_Id = "CHART_HIVE"
local Id_List_For_Lower_Prices =
{
    "CHART_SETTLE",
    "CHART_TREASURE",
    "NAV_DATA_DROP"
}

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModName,
    MOD_DESCRIPTION = ModName,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = Product_Table_Path,
                    MXML_CHANGE_TABLE =
                    {}
                },
                {
                    MBIN_FILE_SOURCE = Reward_Table_Path,
                    MXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = Consumeable_Item_Table_Path,
                    MXML_CHANGE_TABLE = {}
                },
                {
                    MBIN_FILE_SOURCE = Default_Reality_Path,
                    MXML_CHANGE_TABLE = {}
                }
            }
        }
    }
}
local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].MXML_CHANGE_TABLE
local Changes_To_Reward_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2].MXML_CHANGE_TABLE
local Changes_To_Consumable_Item_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[3].MXML_CHANGE_TABLE
local Changes_To_Default_Reality = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[4].MXML_CHANGE_TABLE

function Reduce_Map_cost()
    for i = 1, #Id_List_For_Lower_Prices, 1 do
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            -- This reduces the cost of settlement maps to 1
            SPECIAL_KEY_WORDS = {"Id", Id_List_For_Lower_Prices[i]},
            VALUE_CHANGE_TABLE =
            {
                {"RecipeCost", "1"}
            }
        }
    end
end

function Create_New_Starmap(New_Id, Starmap_Data)
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID", "CHART_TREASURE"},
        SEC_SAVE_TO = "STARCHART_COPY"
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = "STARCHART_COPY",
        VALUE_CHANGE_TABLE =
        {
            {"ID", New_Id},
            {"Name", Starmap_Data.NAME},
            {"NameLower", Starmap_Data.NAMELOWER},
            {"RecipeCost", 1},
            {"Subtitle", Starmap_Data.SUB},
            {"Description", Starmap_Data.DESC}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        SEC_EDIT = "STARCHART_COPY",
        SPECIAL_KEY_WORDS = {"Icon", "TkTextureResource"},
        VALUE_CHANGE_TABLE =
        {
            {"Filename", Starmap_Data.FILENAME}
        }
    }
    Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
    {
        PRECEDING_KEY_WORDS = {"Table"},
        SEC_ADD_NAMED = "STARCHART_COPY"
    }
end

function Create_Starmap_Reward(Reward_Id, Reward_Event)
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {"Id", "R_STARCHART_A", "List", "GcRewardTableItem"},
        -- PRECEDING_KEY_WORDS = {"List", "List", "GcRewardTableItem.xml"},
        SEC_SAVE_TO = "STARCHART_REWARD_ITEM_COPY"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        SEC_EDIT = "STARCHART_REWARD_ITEM_COPY",
        VALUE_CHANGE_TABLE =
        {
            {"PercentageChance", "100"},
            {"Event", Reward_Event},
            {"LabelID", Reward_Event}
        }
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {"Id", "R_STARCHART_A"},
        SEC_SAVE_TO = "STARCHART_REWARD_COPY"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        SEC_EDIT = "STARCHART_REWARD_COPY",
        VALUE_CHANGE_TABLE =
        {
            {"Id", Reward_Id},
            {"RewardChoice", "GiveAll"}
        }
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        SEC_EDIT = "STARCHART_REWARD_COPY",
        SPECIAL_KEY_WORDS = { "List", "GcRewardTableItem"},
        REPLACE_TYPE = "ALL",
        REMOVE = "SECTION"
    }
    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        SEC_EDIT = "STARCHART_REWARD_COPY",
        SPECIAL_KEY_WORDS = {"Id", Reward_Id},
        PRECEDING_KEY_WORDS = {"List","List"},
        SEC_ADD_NAMED =  "STARCHART_REWARD_ITEM_COPY"
    }

    Changes_To_Reward_Table[#Changes_To_Reward_Table + 1] =
    {
        PRECEDING_KEY_WORDS = {"SpecialRewardTable"},
        SEC_ADD_NAMED = "STARCHART_REWARD_COPY"
    }
end

function Create_Starmap_Consumable(Consumable_Id, New_Reward_Id)
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID", "STARCHART_A"},
        SEC_SAVE_TO = "STARCHART_CONSUMABLE_COPY"
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        SEC_EDIT = "STARCHART_CONSUMABLE_COPY",
        VALUE_CHANGE_TABLE =
        {
            {"ID", Consumable_Id},
            {"RewardID", New_Reward_Id},
        }
    }
    Changes_To_Consumable_Item_Table[#Changes_To_Consumable_Item_Table + 1] =
    {
        PRECEDING_KEY_WORDS = {"Table"},
        SEC_ADD_NAMED = "STARCHART_CONSUMABLE_COPY"
    }
end

function Create_Mapshop_Entry(Mapshop_Entry_Id)
    Changes_To_Default_Reality[#Changes_To_Default_Reality + 1] =
    {
        PRECEDING_KEY_WORDS = {"TradeSettings", "MapShop", "AlwaysPresentProducts"},
        ADD = [[<Property name="AlwaysPresentProducts" value="]]..Mapshop_Entry_Id..[[" />]]
    }
end

function Create_Custom_Maps()
    for i = 1, #Custom_Star_Charts, 1 do
        local id = Custom_Star_Charts[i].ID
        local reward_id = "R_" .. id
        local reward_evemt = Custom_Star_Charts[i].REWARD_EVENT
        local starmap_data = Custom_Star_Charts[i].DATA

        Create_New_Starmap(id, starmap_data)
        Create_Starmap_Reward(reward_id, reward_evemt)
        Create_Starmap_Consumable(id, reward_id)
        Create_Mapshop_Entry(id)
    end
end

Create_Custom_Maps()
Reduce_Map_cost()
Create_Mapshop_Entry(HiveMap_Id)