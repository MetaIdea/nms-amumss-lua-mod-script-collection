----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MoreOptionsForStarshipTextures"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "510"
METADATA_MOD_DESC       = "This mod adds a bunch of new texture options for assembling custom fighter and hauler ships in starship fabricators."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- file affected by this mod
--------------------------------------------------

-- functionality and fabricator UI
FILE_METADATA_MODULAR_CUSTOM =          "METADATA\\GAMESTATE\\PLAYERDATA\\MODULARCUSTOMISATIONDATATABLE.MBIN"
FILE_METADATA_TEXTURE_OPTION =          "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN"
FILE_UI_SHIP_FABRICATOR =               "UI\\SHIP_BUILDER_PAGE.MBIN"

-- main textures
FILE_TEXTURE_SHARED_MAIN1 =             "TEXTURES\\COMMON\\SPACECRAFT\\FIGHTERS\\SHARED\\PRIMARY.TEXTURE.MBIN"
FILE_TEXTURE_SHARED_MAIN2 =             "TEXTURES\\COMMON\\SPACECRAFT\\FIGHTERS\\SHARED\\SECONDARY.TEXTURE.MBIN"
FILE_TEXTURE_SHARED_MAIN3 =             "TEXTURES\\COMMON\\SPACECRAFT\\FIGHTERS\\SHARED\\TERTIARY.TEXTURE.MBIN"

-- trims
FILE_TEXTURE_SHARED_TRIM1 =             "TEXTURES\\COMMON\\SPACECRAFT\\FIGHTERS\\SHARED\\HQTRIM_PRIMARY.TEXTURE.MBIN"
FILE_TEXTURE_SHARED_TRIM2 =             "TEXTURES\\COMMON\\SPACECRAFT\\FIGHTERS\\SHARED\\HQTRIM_SECONDARY.TEXTURE.MBIN"



----------------------------------------------------------------------------------------------------
-- texture option data
----------------------------------------------------------------------------------------------------
--[[

Explanation of data fields:

["id"] - unique ID used for texture layer and colour option
["template"] - existing colour option used as a template for SEC instructions
["palette"] - target colour palette for starship fabricator
["multitex"] - multitexture option ID needed for SKW
["tooltip"] - text displayed in tooltip when hovering on the option in starship fabricator

followed by 5 sets of 3 textures (diffuse, normal and mask) for 5 material files:
- main primary, main secondary, main tertiary
- HQ trim primary, HQ trim secondary

important notice: texture needs to be tileable (seamless) to have continuity through different parts of the ship !!

]]

--------------------------------------------------
-- Sean
--------------------------------------------------

OPTION_FF_SEAN =
{
["id"] = "FF_SEAN",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_CHAT_S13_DISTORTED1",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.ANOMALY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.ANOMALY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},
}

--------------------------------------------------
-- rusted
--------------------------------------------------

OPTION_FF_RUST =
{
["id"] = "FF_RUST",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UP_TECH_ROBO_ADJ_13",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.BROKEN.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENSECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENSECONDARY.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.BROKEN.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENSECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENSECONDARY.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.MASKS.DDS",
},
}

--------------------------------------------------
-- gold
--------------------------------------------------

OPTION_FF_GOLD =
{
["id"] = "FF_GOLD",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_ASTEROID2_NAME_L",

["main1"] =
{
["diffuse"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.DDS",
["normal"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.NORMAL.DDS",
["mask"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.DDS",
["normal"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.NORMAL.DDS",
["mask"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.DDS",
["normal"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.NORMAL.DDS",
["mask"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.MASKS.DDS",
},
}

--------------------------------------------------
-- dirty / weathered
--------------------------------------------------

OPTION_FF_DIRTY =
{
["id"] = "FF_DIRTY",
["template"] = "COATING",
["palette"] = "SHIP",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "ITEMGEN_SALVAGE_ADJ_10",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},
}

--------------------------------------------------
-- new metallic / chromatic
--------------------------------------------------

OPTION_FF_METAL =
{
["id"] = "FF_METAL",
["template"] = "COATING",
["palette"] = "SHIP",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "AP_SHIPLAS_SCLASS_ADJ_1",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.MASKS.DDS",
},
}

--------------------------------------------------
-- steel
--------------------------------------------------

OPTION_FF_STEEL =
{
["id"] = "FF_STEEL",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "STEEL_NAME_L",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.DDS",
["normal"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.DDS",
["normal"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.DDS",
["normal"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.MASKS.DDS",
},
}

--------------------------------------------------
-- rock / tectonic
--------------------------------------------------

OPTION_FF_ROCK =
{
["id"] = "FF_ROCK",
["template"] = "COATING",
["palette"] = "SHIP",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "MINERAL_FORMATION_28",

["main1"] =
{
["diffuse"] = "TEXTURES/ATLASES/TERRAIN/RADIOACTIVEHQ/TILEMAP.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/ATLASES/TERRAIN/RADIOACTIVEHQ/TILEMAP.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/ATLASES/TERRAIN/RADIOACTIVEHQ/TILEMAP.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},
}

--------------------------------------------------
-- aether / iridescent
--------------------------------------------------

OPTION_FF_AETHER =
{
["id"] = "FF_AETHER",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "ITEMGEN_WATER_ADJ_8",

["main1"] =
{
["diffuse"] = "TEXTURES/ATLASES/TERRAIN/RADIOACTIVE/TILEMAP.NORMAL.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALPRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALPRIMARY.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/ATLASES/TERRAIN/RADIOACTIVE/TILEMAP.NORMAL.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALPRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALPRIMARY.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/ATLASES/TERRAIN/RADIOACTIVE/TILEMAP.NORMAL.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},
}

--------------------------------------------------
-- black
--------------------------------------------------

OPTION_FF_BLACK =
{
["id"] = "FF_BLACK",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_PAINT_BLACK_DARK",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASSGLASS.DDS",
["normal"] = "TEXTURES/SPACE/NEXUS/NEXUSINTERIORALT1.BASE.NORMAL.DDS",
["mask"] = "TEXTURES/SPACE/NEXUS/NEXUSINTERIORALT1.BASE.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASSGLASS.DDS",
["normal"] = "TEXTURES/SPACE/NEXUS/NEXUSINTERIORALT1.BASE.NORMAL.DDS",
["mask"] = "TEXTURES/SPACE/NEXUS/NEXUSINTERIORALT1.BASE.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASSGLASS.DDS",
["normal"] = "TEXTURES/SPACE/NEXUS/NEXUSINTERIORALT1.BASE.NORMAL.DDS",
["mask"] = "TEXTURES/SPACE/NEXUS/NEXUSINTERIORALT1.BASE.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.MASKS.DDS",
},
}

--------------------------------------------------
-- hexagon / fractal
--------------------------------------------------

OPTION_FF_HEX =
{
["id"] = "FF_HEX",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "PLANT_ROOTS_2",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.HEXAGON.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASSGLASS.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.HEXAGON.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASSGLASS.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},
}

--------------------------------------------------
-- circuit board
--------------------------------------------------

OPTION_FF_CIRCUIT =
{
["id"] = "FF_CIRCUIT",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_FARMPROD_9_NAME_L",

["main1"] =
{
["diffuse"] = "TEXTURES/SPACE/NEXUS/FLOOR_1.PARALLAX.DDS",
["normal"] = "TEXTURES/SPACE/NEXUS/FLOOR_1.NORMAL.DDS",
["mask"] = "TEXTURES/SPACE/NEXUS/FLOOR_1.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/SPACE/NEXUS/FLOOR_1.PARALLAX.DDS",
["normal"] = "TEXTURES/SPACE/NEXUS/FLOOR_1.NORMAL.DDS",
["mask"] = "TEXTURES/SPACE/NEXUS/FLOOR_1.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},
}

--------------------------------------------------
-- stripes
--------------------------------------------------

OPTION_FF_STRIPES =
{
["id"] = "FF_STRIPES",
["template"] = "COATING",
["palette"] = "SHIP",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_TIP_HEAD_SPECIAL2_TEX2",

["main1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.STRIPES.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.STRIPES.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS",
},

["main3"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.MASKS.DDS",
},

["trim1"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},

["trim2"] =
{
["diffuse"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["normal"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.NORMAL.DDS",
["mask"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.MASKS.DDS",
},
}



----------------------------------------------------------------------------------------------------
-- functions
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- functions for texture files
--------------------------------------------------

local function Layer_GetTemplate(data) return
{   ["SKW"] = {"Name",data["template"],},   ["SEC_SAVE_TO"] = "SEC_LAYER"   }
end

local function Layer_Edit(texture,data) return
{   ["SEC_EDIT"] = "SEC_LAYER",     ["VCT"] = {{"Name",data["id"],},{"Probability",0,},{"Diffuse",data[texture]["diffuse"],},{"Normal",data[texture]["normal"],},{"Mask",data[texture]["mask"],},},   }
end

local function Layer_Add() return
{   ["SKW"] = {"Name","BASE",},     ["PKW"] = "Textures",       ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_LAYER",    }
end

--------------------------------------------------
-- functions for colour palettes
--------------------------------------------------

local function Colour_GetTemplate(shiptype,data) return
{   ["SKW"] = {shiptype,"GcModularCustomisationConfig.xml","RequiredTextureOption",data["template"],},     ["SEC_SAVE_TO"] = "SEC_COLOUR",     }
end

local function Colour_EditTemplate(data) return
{   ["SEC_EDIT"] = "SEC_COLOUR",    ["VCT"] = {{"RequiredTextureOption",data["id"],},{"PaletteID",data["palette"],},},     }
end

local function Colour_Add(shiptype) return
{   ["SKW"] = {shiptype,"GcModularCustomisationConfig.xml",},  ["PKW"] = "ColourDataPriorityList",     ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_COLOUR",   }
end

--------------------------------------------------
-- functions for texture mode for fabricator
--------------------------------------------------

local function TextureMode_GetTemplate(data) return
{   ["SKW"] = {"TextureOptionsID",data["template"],},   ["SEC_SAVE_TO"] = "SEC_TEXTURE",     }
end

local function TextureMode_EditTemplate(data) return
{   ["SEC_EDIT"] = "SEC_TEXTURE",   ["VCT"] = {{"TextureOptionsID",data["id"],},{"Option",data["id"],},},   }
end

local function TextureMode_Add(data) return
{   ["SKW"] = {"MultiTextureOptionsID",data["multitex"],},  ["PKW"] = "Options",    ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_TEXTURE",  }
end

local function TextureMode_SetTooltip(data) return
{   ["SKW"] = {"MultiTextureOptionsID",data["multitex"],},  ["SPECIAL_UP"] = 1,     ["PKW"] = "Tips",    ["ADD_OPTION"] = "ADDendSECTION",
    ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="]]..data["tooltip"]..[[" /></Property>]]     }
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- fabricator UI MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_SHIP_FABRICATOR,
                    ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"ID","COLOUR",},["VCT"] = {{"PositionY",44,},{"Height",520,},},},},
                },

                {
                    --------------------------------------------------
                    -- shared primary texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_MAIN1,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        Layer_GetTemplate(OPTION_FF_SEAN),Layer_Edit("main1",OPTION_FF_SEAN),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_RUST),Layer_Edit("main1",OPTION_FF_RUST),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_GOLD),Layer_Edit("main1",OPTION_FF_GOLD),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_DIRTY),Layer_Edit("main1",OPTION_FF_DIRTY),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_METAL),Layer_Edit("main1",OPTION_FF_METAL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STEEL),Layer_Edit("main1",OPTION_FF_STEEL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_ROCK),Layer_Edit("main1",OPTION_FF_ROCK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_AETHER),Layer_Edit("main1",OPTION_FF_AETHER),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_BLACK),Layer_Edit("main1",OPTION_FF_BLACK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_HEX),Layer_Edit("main1",OPTION_FF_HEX),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_CIRCUIT),Layer_Edit("main1",OPTION_FF_CIRCUIT),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STRIPES),Layer_Edit("main1",OPTION_FF_STRIPES),Layer_Add(),
                    },
                },

                {
                    --------------------------------------------------
                    -- shared secondary texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_MAIN2,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        Layer_GetTemplate(OPTION_FF_SEAN),Layer_Edit("main2",OPTION_FF_SEAN),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_RUST),Layer_Edit("main2",OPTION_FF_RUST),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_GOLD),Layer_Edit("main2",OPTION_FF_GOLD),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_DIRTY),Layer_Edit("main2",OPTION_FF_DIRTY),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_METAL),Layer_Edit("main2",OPTION_FF_METAL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STEEL),Layer_Edit("main2",OPTION_FF_STEEL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_ROCK),Layer_Edit("main2",OPTION_FF_ROCK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_AETHER),Layer_Edit("main2",OPTION_FF_AETHER),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_BLACK),Layer_Edit("main2",OPTION_FF_BLACK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_HEX),Layer_Edit("main2",OPTION_FF_HEX),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_CIRCUIT),Layer_Edit("main2",OPTION_FF_CIRCUIT),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STRIPES),Layer_Edit("main2",OPTION_FF_STRIPES),Layer_Add(),
                    },
                },

                {
                    --------------------------------------------------
                    -- shared tertiary texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_MAIN3,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        Layer_GetTemplate(OPTION_FF_SEAN),Layer_Edit("main3",OPTION_FF_SEAN),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_RUST),Layer_Edit("main3",OPTION_FF_RUST),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_GOLD),Layer_Edit("main3",OPTION_FF_GOLD),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_DIRTY),Layer_Edit("main3",OPTION_FF_DIRTY),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_METAL),Layer_Edit("main3",OPTION_FF_METAL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STEEL),Layer_Edit("main3",OPTION_FF_STEEL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_ROCK),Layer_Edit("main3",OPTION_FF_ROCK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_AETHER),Layer_Edit("main3",OPTION_FF_AETHER),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_BLACK),Layer_Edit("main3",OPTION_FF_BLACK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_HEX),Layer_Edit("main3",OPTION_FF_HEX),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_CIRCUIT),Layer_Edit("main3",OPTION_FF_CIRCUIT),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STRIPES),Layer_Edit("main3",OPTION_FF_STRIPES),Layer_Add(),
                    },
                },

                {
                    --------------------------------------------------
                    -- shared primary trim texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_TRIM1,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        Layer_GetTemplate(OPTION_FF_SEAN),Layer_Edit("trim1",OPTION_FF_SEAN),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_RUST),Layer_Edit("trim1",OPTION_FF_RUST),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_GOLD),Layer_Edit("trim1",OPTION_FF_GOLD),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_DIRTY),Layer_Edit("trim1",OPTION_FF_DIRTY),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_METAL),Layer_Edit("trim1",OPTION_FF_METAL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STEEL),Layer_Edit("trim1",OPTION_FF_STEEL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_ROCK),Layer_Edit("trim1",OPTION_FF_ROCK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_AETHER),Layer_Edit("trim1",OPTION_FF_AETHER),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_BLACK),Layer_Edit("trim1",OPTION_FF_BLACK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_HEX),Layer_Edit("trim1",OPTION_FF_HEX),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_CIRCUIT),Layer_Edit("trim1",OPTION_FF_CIRCUIT),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STRIPES),Layer_Edit("trim1",OPTION_FF_STRIPES),Layer_Add(),
                    },
                },

                {
                    -------------------------------------------------
                    -- shared secondary trim texture MBIN
                    -------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_TRIM2,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        Layer_GetTemplate(OPTION_FF_SEAN),Layer_Edit("trim2",OPTION_FF_SEAN),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_RUST),Layer_Edit("trim2",OPTION_FF_RUST),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_GOLD),Layer_Edit("trim2",OPTION_FF_GOLD),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_DIRTY),Layer_Edit("trim2",OPTION_FF_DIRTY),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_METAL),Layer_Edit("trim2",OPTION_FF_METAL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STEEL),Layer_Edit("trim2",OPTION_FF_STEEL),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_ROCK),Layer_Edit("trim2",OPTION_FF_ROCK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_AETHER),Layer_Edit("trim2",OPTION_FF_AETHER),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_BLACK),Layer_Edit("trim2",OPTION_FF_BLACK),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_HEX),Layer_Edit("trim2",OPTION_FF_HEX),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_CIRCUIT),Layer_Edit("trim2",OPTION_FF_CIRCUIT),Layer_Add(),
                        Layer_GetTemplate(OPTION_FF_STRIPES),Layer_Edit("trim2",OPTION_FF_STRIPES),Layer_Add(),
                    },
                },

                {
                    -------------------------------------------------
                    -- modular customisation data MBIN
                    -------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_MODULAR_CUSTOM,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- move cockpit input slots for fighters and haulers up a bit
                            ["SKW"] = {{"SlotID","FIGHTER_COCKPIT",},{"SlotID","DROPSHIP_COCKPI",},{"SlotID","SAIL_BODY",},},
                            ["VCT"] = {{"y",40},},
                        },

                        -- add new options to fighters
                        Colour_GetTemplate("Fighter",OPTION_FF_SEAN),Colour_EditTemplate(OPTION_FF_SEAN),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_RUST),Colour_EditTemplate(OPTION_FF_RUST),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_GOLD),Colour_EditTemplate(OPTION_FF_GOLD),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_DIRTY),Colour_EditTemplate(OPTION_FF_DIRTY),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_METAL),Colour_EditTemplate(OPTION_FF_METAL),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_STEEL),Colour_EditTemplate(OPTION_FF_STEEL),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_ROCK),Colour_EditTemplate(OPTION_FF_ROCK),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_AETHER),Colour_EditTemplate(OPTION_FF_AETHER),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_BLACK),Colour_EditTemplate(OPTION_FF_BLACK),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_HEX),Colour_EditTemplate(OPTION_FF_HEX),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_CIRCUIT),Colour_EditTemplate(OPTION_FF_CIRCUIT),Colour_Add("Fighter"),
                        Colour_GetTemplate("Fighter",OPTION_FF_STRIPES),Colour_EditTemplate(OPTION_FF_STRIPES),Colour_Add("Fighter"),

                        -- add new options to haulers
                        Colour_GetTemplate("Dropship",OPTION_FF_SEAN),Colour_EditTemplate(OPTION_FF_SEAN),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_RUST),Colour_EditTemplate(OPTION_FF_RUST),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_GOLD),Colour_EditTemplate(OPTION_FF_GOLD),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_DIRTY),Colour_EditTemplate(OPTION_FF_DIRTY),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_METAL),Colour_EditTemplate(OPTION_FF_METAL),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_STEEL),Colour_EditTemplate(OPTION_FF_STEEL),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_ROCK),Colour_EditTemplate(OPTION_FF_ROCK),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_AETHER),Colour_EditTemplate(OPTION_FF_AETHER),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_BLACK),Colour_EditTemplate(OPTION_FF_BLACK),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_HEX),Colour_EditTemplate(OPTION_FF_HEX),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_CIRCUIT),Colour_EditTemplate(OPTION_FF_CIRCUIT),Colour_Add("Dropship"),
                        Colour_GetTemplate("Dropship",OPTION_FF_STRIPES),Colour_EditTemplate(OPTION_FF_STRIPES),Colour_Add("Dropship"),

                        -- add new options to solars
                        Colour_GetTemplate("Sail",OPTION_FF_SEAN),Colour_EditTemplate(OPTION_FF_SEAN),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_RUST),Colour_EditTemplate(OPTION_FF_RUST),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_GOLD),Colour_EditTemplate(OPTION_FF_GOLD),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_DIRTY),Colour_EditTemplate(OPTION_FF_DIRTY),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_METAL),Colour_EditTemplate(OPTION_FF_METAL),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_STEEL),Colour_EditTemplate(OPTION_FF_STEEL),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_ROCK),Colour_EditTemplate(OPTION_FF_ROCK),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_AETHER),Colour_EditTemplate(OPTION_FF_AETHER),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_BLACK),Colour_EditTemplate(OPTION_FF_BLACK),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_HEX),Colour_EditTemplate(OPTION_FF_HEX),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_CIRCUIT),Colour_EditTemplate(OPTION_FF_CIRCUIT),Colour_Add("Sail"),
                        Colour_GetTemplate("Sail",OPTION_FF_STRIPES),Colour_EditTemplate(OPTION_FF_STRIPES),Colour_Add("Sail"),
                    },
                },

                {
                    -------------------------------------------------
                    -- customisation textures data MBIN
                    -------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_TEXTURE_OPTION,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add textures with default ship palette
                        TextureMode_GetTemplate(OPTION_FF_DIRTY),TextureMode_EditTemplate(OPTION_FF_DIRTY),TextureMode_Add(OPTION_FF_DIRTY),TextureMode_SetTooltip(OPTION_FF_DIRTY),
                        TextureMode_GetTemplate(OPTION_FF_METAL),TextureMode_EditTemplate(OPTION_FF_METAL),TextureMode_Add(OPTION_FF_METAL),TextureMode_SetTooltip(OPTION_FF_METAL),
                        TextureMode_GetTemplate(OPTION_FF_ROCK),TextureMode_EditTemplate(OPTION_FF_ROCK),TextureMode_Add(OPTION_FF_ROCK),TextureMode_SetTooltip(OPTION_FF_ROCK),
                        TextureMode_GetTemplate(OPTION_FF_STRIPES),TextureMode_EditTemplate(OPTION_FF_STRIPES),TextureMode_Add(OPTION_FF_STRIPES),TextureMode_SetTooltip(OPTION_FF_STRIPES),

                        -- add textures with metallic ship palette
                        TextureMode_GetTemplate(OPTION_FF_RUST),TextureMode_EditTemplate(OPTION_FF_RUST),TextureMode_Add(OPTION_FF_RUST),TextureMode_SetTooltip(OPTION_FF_RUST),
                        TextureMode_GetTemplate(OPTION_FF_HEX),TextureMode_EditTemplate(OPTION_FF_HEX),TextureMode_Add(OPTION_FF_HEX),TextureMode_SetTooltip(OPTION_FF_HEX),
                        TextureMode_GetTemplate(OPTION_FF_CIRCUIT),TextureMode_EditTemplate(OPTION_FF_CIRCUIT),TextureMode_Add(OPTION_FF_CIRCUIT),TextureMode_SetTooltip(OPTION_FF_CIRCUIT),
                        TextureMode_GetTemplate(OPTION_FF_SEAN),TextureMode_EditTemplate(OPTION_FF_SEAN),TextureMode_Add(OPTION_FF_SEAN),TextureMode_SetTooltip(OPTION_FF_SEAN),

                        -- add textures with no palette assigned
                        TextureMode_GetTemplate(OPTION_FF_BLACK),TextureMode_EditTemplate(OPTION_FF_BLACK),TextureMode_Add(OPTION_FF_BLACK),TextureMode_SetTooltip(OPTION_FF_BLACK),
                        TextureMode_GetTemplate(OPTION_FF_STEEL),TextureMode_EditTemplate(OPTION_FF_STEEL),TextureMode_Add(OPTION_FF_STEEL),TextureMode_SetTooltip(OPTION_FF_STEEL),
                        TextureMode_GetTemplate(OPTION_FF_GOLD),TextureMode_EditTemplate(OPTION_FF_GOLD),TextureMode_Add(OPTION_FF_GOLD),TextureMode_SetTooltip(OPTION_FF_GOLD),
                        TextureMode_GetTemplate(OPTION_FF_AETHER),TextureMode_EditTemplate(OPTION_FF_AETHER),TextureMode_Add(OPTION_FF_AETHER),TextureMode_SetTooltip(OPTION_FF_AETHER),
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------