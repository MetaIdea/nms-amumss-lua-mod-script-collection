local CUSTOM_TEXTURE_ROOT = "TEXTURES/MAJESTICCRYSTALS/"

-- Each group binds one diffuse/normal pair to all resource materials which use that visual family.
-- Keeping these lists together makes future game-path updates straightforward.
local MATERIAL_GROUPS =
{
    {
        id = "A", -- Large blue / Di-hydrogen
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_MOUNTAIN/CRYSTAL_LARGE.MATERIAL.MBIN",
        },
    },
    {
        id = "B", -- Large green / cave
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE/CRYSTAL_LARGE.MATERIAL.MBIN",
        },
    },
    {
        id = "C", -- Large red / Condensed Carbon
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE/CRYSTAL_LARGE.MATERIAL.MBIN",
        },
    },
    {
        id = "D", -- Large yellow / Sodium
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_UNDERWATER/CRYSTAL_LARGE.MATERIAL.MBIN",
        },
    },
    {
        id = "E", -- Medium, small and fragment blue
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_MOUNTAIN/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL_MOUNTAIN/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT_MOUNTAIN/ICEFORMATION_MAT1.MATERIAL.MBIN",
        },
    },
    {
        id = "F", -- Medium, small and fragment green
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE/ICEFORMATION_MAT.MATERIAL.MBIN",
        },
    },
    {
        id = "G", -- Medium, small and fragment red
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT/ICEFORMATION_MAT.MATERIAL.MBIN",
        },
    },
    {
        id = "H", -- Medium, small and fragment yellow
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_UNDERWATER/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL_UNDERWATER/ICEFORMATION_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT_UNDERWATER/ICEFORMATION_MAT.MATERIAL.MBIN",
        },
    },
    {
        id = "J", -- Active rare/storm crystal shell
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/LIGHTNINGROCK/CRYSTAL_MAT3.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/SEAGLASSCRYSTAL/CRYSTAL_MAT3.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/STORMCRYSTALS/CRYSTAL_MAT3.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/UNDERGROUNDCRYSTALS/CRYSTAL_MAT3.MATERIAL.MBIN",
        },
    },
    {
        id = "K", -- Storm crystal rock and harvest debris
        files =
        {
            "MODELS/EFFECTS/DEBRIS/STORMCRYSTALSDEBRIS/STORMCRYSTALROCK_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/LIGHTNINGROCK/STORMCRYSTALROCK_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/STORMCRYSTALS/STORMCRYSTALROCK_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/UNDERGROUNDCRYSTALS/STORMCRYSTALROCK_MAT.MATERIAL.MBIN",
        },
    },
    {
        id = "L", -- Air crystal and storm inner crystal layers
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/FLOATINGGASBAGS/AIRCRYSTAL_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/GASBAGPARTS/FLOATINGRESOURCE/AIRCRYSTAL_MAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/LIGHTNINGROCK/STORMCRYSTALMAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/LIGHTNINGROCK/STORMCRYSTALMAT1.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/STORMCRYSTALS/STORMCRYSTALMAT.MATERIAL.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/STORMCRYSTALS/STORMCRYSTALMAT1.MATERIAL.MBIN",
        },
    },
    {
        id = "M", -- Space crystal and buried/underground crystal
        files =
        {
            "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/UNDERGROUNDCRYSTALS/UNDERGROUNDCRYATAL.MATERIAL.MBIN",
            "MODELS/SPACE/POI/CRYSTAL/CRYSTALCREATUREMAT.MATERIAL.MBIN",
        },
    },
    {
        id = "N", -- Blue space crystal
        files =
        {
            "MODELS/SPACE/POI/SKULLCRYSTAL01/CRYSTALPOI.MATERIAL.MBIN",
        },
    },
}

local material_changes = {}

for _, group in ipairs(MATERIAL_GROUPS) do
    local texture_base = CUSTOM_TEXTURE_ROOT .. "MAJESTICCRYSTALS_" .. group.id
    material_changes[#material_changes + 1] =
    {
        ["MBIN_FILE_SOURCE"] = group.files,
        ["MXML_CHANGE_TABLE"] =
        {
            {
                ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Map", texture_base .. ".DDS"},
                },
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                ["VALUE_CHANGE_TABLE"] =
                {
                    {"Map", texture_base .. "_NORMAL.DDS"},
                },
            },
        },
    }
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "Majestic_Crystals.pak",
    ["MOD_AUTHOR"] = "MindDoser",
    ["LUA_AUTHOR"] = "MindDoser",
    ["NMS_VERSION"] = "7.01",
    ["MOD_DESCRIPTION"] = "A Humble Crystal Retexture.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = material_changes,
        },
    },
}