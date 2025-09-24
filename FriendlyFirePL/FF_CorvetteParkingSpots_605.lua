----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "CorvetteParkingSpots"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "605"
METADATA_MOD_DESC       = "This mod adds parking / docking spots for corvettes and matching teleporters to trading outposts and planetary archives."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_MODELS_TRADINGPOST_COMMON =        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.SCENE.MBIN"
FILE_MODELS_ARCHIVE_LAYOUT1 =           "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\VYKEEN\PARTS\LAYOUT.SCENE.MBIN"
FILE_MODELS_ARCHIVE_LAYOUT2 =           "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\KORVAX\LAYOUT.SCENE.MXML"

-- template files (not modified)
FILE_MODELS_DERELICT_ENTRANCE =         "MODELS\SPACE\POI\PARTS\DUNGEON_ENTRANCE.SCENE.MBIN"

--------------------------------------------------
-- functions
--------------------------------------------------

local function Scene_MoveDocking(x,y,z) return
{   ["SEC_EDIT"] = "SEC_CORVETTE_DOCK",     ["VCT"] = {{"TransX",x,},{"TransY",y,},{"TransZ",z,},},   }
end

local function Scene_AddDocking() return
{   ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_CORVETTE_DOCK",    }
end

local function Scene_MoveTeleport(x,y,z) return
{   ["SEC_EDIT"] = "SEC_CORVETTE_TELE",     ["VCT"] = {{"TransX",x,},{"TransY",y,},{"TransZ",z,},},   }
end

local function Scene_RotateTeleport(x,y,z) return
{   ["SEC_EDIT"] = "SEC_CORVETTE_TELE",     ["VCT"] = {{"RotX",x,},{"RotY",y,},{"RotZ",z,},},   }
end

local function Scene_AddTeleport() return
{   ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_CORVETTE_TELE",    }
end



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
["NMS_VERSION"]		    = METADATA_NMS_VERSION,
["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

["MODIFICATIONS"] =
{
    {
        ["MBIN_CHANGE_TABLE"]   =
        {
            {
                --------------------------------------------------
                -- derelict entrance scene
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_DERELICT_ENTRANCE,
                ["MBIN_FS_DISCARD"] = "TRUE",
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get template for corvette dock
                        ["SKW"] = {"Name","BIGGSPLATFORM_HOVERPAD_DOCK1",},
                        ["SEC_SAVE_TO"] = "SEC_CORVETTE_DOCK",
                    },

                    {
                        -- get template for corvette teleporter
                        ["SKW"] = {"Name","RefBiggsTeleporter",},
                        ["SEC_SAVE_TO"] = "SEC_CORVETTE_TELE",
                    },
                },
            },

            {
                --------------------------------------------------
                -- trading outposts common part
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_TRADINGPOST_COMMON,
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_MoveDocking(80,40,0),
                    Scene_AddDocking(),

                    Scene_MoveTeleport(18,16.6,2),
                    Scene_AddTeleport(),

                    -- prepare changes for 2 layouts of archives
                    Scene_MoveDocking(-150,50,0),
                    Scene_MoveTeleport(-26,19,15),
                    Scene_RotateTeleport(0,180,0),
                },
            },

            {
                --------------------------------------------------
                -- planetary archive layouts
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] =
                {
                    FILE_MODELS_ARCHIVE_LAYOUT1,
                    FILE_MODELS_ARCHIVE_LAYOUT2,
                },
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_AddDocking(),
                    Scene_AddTeleport(),
                },
            },
        }
    }
},
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------