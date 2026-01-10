local ModName = "ExpensiveCharts"
local Author = "Corvo"

local Product_Table_Path = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"

local Id_List_For_3_Price =
{
	--habitable
    "STARCHART_C",
	--alien
    "STARCHART_D",
}

local Id_List_For_6_Price =
{
	--buried treasure
    "CHART_TREASURE",
	--factory
	"STARCHART_A",
}

local Id_List_For_9_Price =
{
    --distress
    "STARCHART_B",
}

local Id_List_For_12_Price =
{
    --drop pod
    "NAV_DATA_DROP",
}

local Id_List_For_15_Price =
{
	--settlement
    "CHART_SETTLE",
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
                    EXML_CHANGE_TABLE =
                    {}
                }
            }
        }
    }
}
local Changes_To_Product_Table = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].EXML_CHANGE_TABLE

function Increase_Map_cost()
    for i = 1, #Id_List_For_3_Price, 1 do
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", Id_List_For_3_Price[i]},
            VALUE_CHANGE_TABLE =
            {
                {"RecipeCost", "3"}
            }
        }
    end
    for i = 1, #Id_List_For_6_Price, 1 do
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", Id_List_For_6_Price[i]},
            VALUE_CHANGE_TABLE =
            {
                {"RecipeCost", "6"}
            }
        }
    end
    for i = 1, #Id_List_For_9_Price, 1 do
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", Id_List_For_9_Price[i]},
            VALUE_CHANGE_TABLE =
            {
                {"RecipeCost", "9"}
            }
        }
    end
    for i = 1, #Id_List_For_12_Price, 1 do
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", Id_List_For_12_Price[i]},
            VALUE_CHANGE_TABLE =
            {
                {"RecipeCost", "12"}
            }
        }
    end
    for i = 1, #Id_List_For_15_Price, 1 do
        Changes_To_Product_Table[#Changes_To_Product_Table + 1] =
        {
            SPECIAL_KEY_WORDS = {"Id", Id_List_For_15_Price[i]},
            VALUE_CHANGE_TABLE =
            {
                {"RecipeCost", "15"}
            }
        }
    end
end

Increase_Map_cost()