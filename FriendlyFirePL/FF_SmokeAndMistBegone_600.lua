----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "SmokeAndMistBegone"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
METADATA_MOD_DESC       = "This mod removes mist, clouds and smoke effects from selected structures/buildings found on planets. Modifies various files in MODELS\PLANETS\BIOMES\COMMON\BUILDINGS directory."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_MODELS_MONOLITH_SCENE =    "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\MONOLITH.SCENE.MBIN"
FILE_MODELS_PLAQUE_SCENE =      "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\PLAQUE.SCENE.MBIN"
FILE_MODELS_PORTAL_SCENE =      "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL.SCENE.MBIN"
FILE_MODELS_FREIGHTER_SCENE =   "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\CRASHEDFREIGHTER.SCENE.MBIN"
FILE_MODELS_ARCHIVE_SMOKE =     "MODELS\EFFECTS\OUTPOST\LARGEBUILDINGLOWERVENT.SCENE.MBIN"

--------------------------------------------------
-- lists of node names to remove from scenes
--------------------------------------------------

NODES_MONOLITH = {"REFMonolithCloudsVFX","REFMonolithMistVFX"}
NODES_PORTAL = {"REFPortalMistVFX","REFPortalCloudsVFX"}
NODES_PLAQUE = {"REFPlaqueAmbientMistVFX"}

NODES_FREIGHTER = 
{
"REFSmokeVFX","REFSmokeVFX1","REFSmokeVFX2","REFSmokeVFX3",

"REFLargeCrashedFreighterSmokeVFX","REFLargeCrashedFreighterSmokeVFX1",
"REFLargeCrashedFreighterSmokeVFX2","REFLargeCrashedFreighterSmokeVFX3",
"REFLargeCrashedFreighterSmokeVFX4","REFLargeCrashedFreighterSmokeVFX5",
"REFLargeCrashedFreighterSmokeVFX6","REFLargeCrashedFreighterSmokeVFX7",
"REFLargeCrashedFreighterSmokeVFX8","REFLargeCrashedFreighterSmokeVFX9",

"REFPlatformMistVFX","REFCrashedFreightMistVFX",
"REFCrashedFreighterCloudsVFX","REFCrashedFreighterCloudsVFX1",
"REFCrashedFreighterCloudsVFX2","REFCrashedFreighterCloudsVFX4",
"REFLargeCrashedFreighterCloudsVFX4","REFLargeCrashedFreighterCloudsVFX3"
}

--------------------------------------------------
-- functions 
--------------------------------------------------

function BuildSKWList(nodes)
    local list = {}
    for i=1,#nodes do
        local skw = {"Name",nodes[i]}
        table.insert(list,skw)
    end
    return list
end

function RemoveNodes(scene,nodes) return
{
    ["MBIN_FILE_SOURCE"] = scene,
    ["MXML_CHANGE_TABLE"] =
    {
        {
            ["SKW"] = BuildSKWList(nodes),
            ["REMOVE"] = "SECTION",
        },
    },
}
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
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    --------------------------------------------------
                    -- archive smoke emitter MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_ARCHIVE_SMOKE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- yeet out the smoke emitter
                            ["PKW"] = "Children",
                            ["CREATE_HOES"] = "TRUE",
                        },
                    },
                },

                -- rework other scenes using functions
                RemoveNodes(FILE_MODELS_MONOLITH_SCENE,NODES_MONOLITH),
                RemoveNodes(FILE_MODELS_PORTAL_SCENE,NODES_PORTAL),
                RemoveNodes(FILE_MODELS_PLAQUE_SCENE,NODES_PLAQUE),
                RemoveNodes(FILE_MODELS_FREIGHTER_SCENE,NODES_FREIGHTER),
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------