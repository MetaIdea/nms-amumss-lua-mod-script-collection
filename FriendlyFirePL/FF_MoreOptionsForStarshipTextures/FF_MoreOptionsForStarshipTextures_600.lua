----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MoreOptionsForStarshipTextures"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "600"
METADATA_MOD_DESC       = "This mod adds a bunch of new texture options for assembling custom fighter and hauler ships in starship fabricators."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- file affected by this mod
--------------------------------------------------

-- functionality and fabricator UI
FILE_METADATA_MODULAR_CUSTOM =          "METADATA\GAMESTATE\PLAYERDATA\MODULARCUSTOMISATIONDATATABLE.MBIN"
FILE_METADATA_TEXTURE_OPTION =          "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN"
FILE_UI_SHIP_FABRICATOR =               "UI\SHIP_BUILDER_PAGE.MBIN"

-- starship textures
FILE_TEXTURE_SHARED_MAIN1 =             "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\SHARED\PRIMARY.TEXTURE.MBIN"
FILE_TEXTURE_SHARED_MAIN2 =             "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\SHARED\SECONDARY.TEXTURE.MBIN"
FILE_TEXTURE_SHARED_MAIN3 =             "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\SHARED\TERTIARY.TEXTURE.MBIN"
FILE_TEXTURE_SHARED_TRIM1 =             "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\SHARED\HQTRIM_PRIMARY.TEXTURE.MBIN"
FILE_TEXTURE_SHARED_TRIM2 =             "TEXTURES\COMMON\SPACECRAFT\FIGHTERS\SHARED\HQTRIM_SECONDARY.TEXTURE.MBIN"

--------------------------------------------------
-- texture option data
--------------------------------------------------

-- Sean
OPTION_FF_SEAN =
{
["id"] = "FF_SEAN",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_CHAT_S13_DISTORTED1",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.SEAN.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.SEAN.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
}

-- rusted
OPTION_FF_RUST =
{
["id"] = "FF_RUST",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UP_TECH_ROBO_ADJ_13",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.RUSTED.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.RUSTED.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BROKENHQTRIM_SECONDARY.DDS",
}

-- gold
OPTION_FF_GOLD =
{
["id"] = "FF_GOLD",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_ASTEROID2_NAME_L",

["main1"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.DDS",
["main2"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.DDS",
["main3"] = "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/TILING/METALTILING.BASE.GOLD.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALHQTRIM_SECONDARY.DDS",
}

-- dirty / weathered
OPTION_FF_DIRTY =
{
["id"] = "FF_DIRTY",
["template"] = "COATING",
["palette"] = "SHIP",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "ITEMGEN_SALVAGE_ADJ_10",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARYWEATHERED.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
}

-- new metallic / chromatic
OPTION_FF_METAL =
{
["id"] = "FF_METAL",
["template"] = "COATING",
["palette"] = "SHIP",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "AP_SHIPLAS_SCLASS_ADJ_1",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SPECIALTRIMS.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
}

-- steel
OPTION_FF_STEEL =
{
["id"] = "FF_STEEL",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "STEEL_NAME_L",

["main1"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.DDS",
["main2"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.DDS",
["main3"] = "TEXTURES/COMMON/WEAPONS/ATLASMULTITOOL.3.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
}

-- rock / tectonic
OPTION_FF_ROCK =
{
["id"] = "FF_ROCK",
["template"] = "COATING",
["palette"] = "SHIP",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "MINERAL_FORMATION_28",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.ROCK.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.ROCK.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.ROCK.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
}

-- aether / iridescent
OPTION_FF_AETHER =
{
["id"] = "FF_AETHER",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "ITEMGEN_WATER_ADJ_8",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.AETHER.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.AETHER.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.AETHER.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
}

-- black
OPTION_FF_BLACK =
{
["id"] = "FF_BLACK",
["template"] = "STEALTH",
["palette"] = "NULL",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_PAINT_BLACK_DARK",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.BLACK.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.BLACK.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.BLACK.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/BLACKHQTRIM_SECONDARY.DDS",
}

-- hexagon / fractal
OPTION_FF_HEX =
{
["id"] = "FF_HEX",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "PLANT_ROOTS_2",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.HEXAGON.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.HEXAGON.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
}

-- circuit board
OPTION_FF_CIRCUIT =
{
["id"] = "FF_CIRCUIT",
["template"] = "STEALTH",
["palette"] = "SHIP_METALLIC",
["multitex"] = "SHIP_FIGHT",
["tooltip"] = "UI_FARMPROD_9_NAME_L",

["main1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.CIRCUIT.DDS",
["main2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/MORE/PRIMARY.CIRCUIT.DDS",
["main3"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/TERTIARY.DDS",
["trim1"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
["trim2"] = "TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/HQTRIM_PRIMARY.DDS",
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
{   ["SEC_EDIT"] = "SEC_LAYER",     ["VCT"] = {{"Name",data["id"],},{"Probability",0,},{"TextureName",data[texture],},},   }
end

local function Layer_Add() return
{   ["SKW"] = {"Name","BASE",},     ["PKW"] = "Textures",       ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_LAYER",    }
end

--------------------------------------------------
-- functions for colour palettes
--------------------------------------------------

local function Colour_GetTemplate(shiptype,data) return
{   ["SKW"] = {shiptype,"GcModularCustomisationConfig","RequiredTextureOption",data["template"],},     ["SEC_SAVE_TO"] = "SEC_COLOUR",     }
end

local function Colour_EditTemplate(data) return
{   ["SEC_EDIT"] = "SEC_COLOUR",    ["VCT"] = {{"RequiredTextureOption",data["id"],},{"PaletteID",data["palette"],},},     }
end

local function Colour_Add(shiptype) return
{   ["SKW"] = {shiptype,"GcModularCustomisationConfig",},   ["PKW"] = "ColourDataPriorityList",     ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_COLOUR",   }
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
{   ["SKW"] = {"MultiTextureOptionsID",data["multitex"],},  ["PKW"] = "Tips",    ["ADD_OPTION"] = "ADDendSECTION",      ["ADD"] = [[<Property name="Tips" value="]]..data["tooltip"]..[[" />]]  }
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
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
                    ["MXML_CHANGE_TABLE"] = {{["SKW"] = {"ID","COLOUR",},["VCT"] = {{"Position Y",44,},{"Height",520,},},},},
                },

                {
                    --------------------------------------------------
                    -- shared primary texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_MAIN1,
                    ["MXML_CHANGE_TABLE"] =
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
                    },
                },

                {
                    --------------------------------------------------
                    -- shared secondary texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_MAIN2,
                    ["MXML_CHANGE_TABLE"] =
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
                    },
                },

                {
                    --------------------------------------------------
                    -- shared tertiary texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_MAIN3,
                    ["MXML_CHANGE_TABLE"] =
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
                    },
                },

                {
                    --------------------------------------------------
                    -- shared primary trim texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_TRIM1,
                    ["MXML_CHANGE_TABLE"] =
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

                    },
                },

                {
                    -------------------------------------------------
                    -- shared secondary trim texture MBIN
                    -------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_SHARED_TRIM2,
                    ["MXML_CHANGE_TABLE"] =
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
                    },
                },

                {
                    -------------------------------------------------
                    -- modular customisation data MBIN
                    -------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_MODULAR_CUSTOM,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- move cockpit input slots for fighters and haulers up a bit
                            ["SKW"] = {{"SlotID","FIGHTER_COCKPIT",},{"SlotID","DROPSHIP_COCKPI",},{"SlotID","SAIL_BODY",},},
                            ["VCT"] = {{"Y",40},},
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
                    },
                },

                {
                    -------------------------------------------------
                    -- customisation textures data MBIN
                    -------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_TEXTURE_OPTION,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- add textures with default ship palette
                        TextureMode_GetTemplate(OPTION_FF_DIRTY),TextureMode_EditTemplate(OPTION_FF_DIRTY),TextureMode_Add(OPTION_FF_DIRTY),TextureMode_SetTooltip(OPTION_FF_DIRTY),
                        TextureMode_GetTemplate(OPTION_FF_METAL),TextureMode_EditTemplate(OPTION_FF_METAL),TextureMode_Add(OPTION_FF_METAL),TextureMode_SetTooltip(OPTION_FF_METAL),
                        TextureMode_GetTemplate(OPTION_FF_ROCK),TextureMode_EditTemplate(OPTION_FF_ROCK),TextureMode_Add(OPTION_FF_ROCK),TextureMode_SetTooltip(OPTION_FF_ROCK),

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