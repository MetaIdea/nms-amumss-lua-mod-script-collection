ModeName = "QuietParts"
Author = "Jackty89"

PATHS = {
    "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/HEALTHSTATION/ENTITIES/HEALTHSTATION.ENTITY.MBIN",
    "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/CREATUREHARVESTER/ENTITIES/CREATUREHARVESTER.ENTITY.MBIN",
    "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIELDSTATION/ENTITIES/SHIELDSTATION.ENTITY.MBIN",
    -- "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/CREATUREFOODMAKER/ENTITIES/CREATUREFOODMAKER.ENTITY.MBIN"
}
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
            }
        }
    }
}

local ChangesToAudio = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #PATHS do
    local entity_path = PATHS[i]

    ChangesToAudio[#ChangesToAudio +1]=
    {
        ["MBIN_FILE_SOURCE"] = entity_path,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["REPLACE_TYPE"] = "ALL",
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Sound", ""}
                }
            }
        }
    }
end