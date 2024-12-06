NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "PlanetarySystemScanner.pak",
["MOD_AUTHOR"] = "Aristotale",
["MOD_DESCRIPTION"] = "Replaces the Save Point with the functionality of the Freighter Scanner room",
["LUA_AUTHOR"]    = "Aristotale",
["NMS_VERSION"]   = "5.2x",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SAVEPOINT/ENTITIES/SAVEPOINT.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
            }
        }
    }
}

local ChangeToTerminalSaveEntity = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local ChangeToSavePointRecipe = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

function DoTheWork()
    ChangeToTerminalSaveEntity[#ChangeToTerminalSaveEntity+1] =
    {
        ["SKW"] = {"Template", "GcSimpleInteractionComponentData.xml"},
        ["VALUE_CHANGE_TABLE"] = {
            {"SimpleInteractionType", "SuperDoopaScanner"},
            {"Name", "BLD_FRE_ROOM_SCAN_SUB"},
        }
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SEC_EMPTY"] = "PRODUCT_REQ_MASTER"
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "CASING"},
        ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
        ["SEC_SAVE_TO"] = "SINGLE_REQ"
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SEC_EDIT"] = "SINGLE_REQ",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", "ASTEROID1"},
            {"InventoryType", "Substance"},
            {"Amount", "60"}
        }
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_REQ_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SINGLE_REQ"
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SEC_EDIT"] = "SINGLE_REQ",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", "ASTEROID2"},
            {"InventoryType", "Substance"},
            {"Amount", "30"}
        }
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_REQ_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SINGLE_REQ"
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SEC_EDIT"] = "SINGLE_REQ",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ID", "POWERCELL"},
            {"InventoryType", "Product"},
            {"Amount", "1"}
        }
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SEC_EDIT"] = "PRODUCT_REQ_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SINGLE_REQ"
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDSAVE"},
        ["VALUE_CHANGE_TABLE"] = {
            {"Name", "BLD_FRE_ROOM_SCAN_SUB"},
            {"NameLower", "BLD_FRE_ROOM_SCAN_SUB"},
            {"Description", "A portable scanner device used to map the local solar system."},
        }
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDSAVE"},
        ["PKW"] = {"GcTechnologyRequirement.xml"},
        ["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION",
    }
    ChangeToSavePointRecipe[#ChangeToSavePointRecipe + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDSAVE"},
        ["PRECEDING_KEY_WORDS"] = {"Requirements"},
        ["CREATE_HOS"] = "TRUE",
        ["SEC_ADD_NAMED"] = "PRODUCT_REQ_MASTER"
    }

end

DoTheWork()