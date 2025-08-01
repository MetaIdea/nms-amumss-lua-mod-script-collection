ModName = "Multiplies Plant Harvest"
Author = "KuroPeach"
HarvestMultiple = 10

PlantRewardIds =
{
    "PLANT_BARREN",
    "PLANT_LUSH",
    "PLANT_CREATURE",
    "PLANT_POOP",
    "PLANT_RADIO",
    "PLANT_SCORCHED",
    "PLANT_SNOW",
    "PLANT_TOXIC",
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName .. "-" .. HarvestMultiple .. "X",
    ["MOD_DESCRIPTION"] = ModName .. "-" .. HarvestMultiple .. "X",
    ["MOD_AUTHOR"] = Author,
    ["NMS_VERSION"] = "5.75",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
            }
        }
    }
}

local ChangesToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]
    ["MXML_CHANGE_TABLE"]
for k = 1, #PlantRewardIds do
    local rewardId = PlantRewardIds[k]
    ChangesToRewardTable[#ChangesToRewardTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = { "Id", rewardId, "List", "GcRewardTableItemList" },
        ["MATH_OPERATION"] = "*",
        ["VALUE_CHANGE_TABLE"] =
        {
            { "AmountMin", HarvestMultiple },
            { "AmountMax", HarvestMultiple }
        }
    }
end
