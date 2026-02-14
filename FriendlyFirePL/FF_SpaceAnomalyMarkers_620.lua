----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "SpaceAnomalyMarkers"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
METADATA_MOD_DESC       = "This mod adds markes to various points of interest found in Space Anomaly. Modifies various files mostly in MODELS\SPACE\NEXUS directory."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

-- modified files
FILE_MODELS_SPECIALSHOP_ENTITY =        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SPECIALSHOP\ENTITIES\SPECIALSHOPORB.ENTITY.MBIN"
FILE_MODELS_EGGMACHINE_ENTITY =         "MODELS\SPACE\NEXUS\PARTS\RIGHTSECTION\EGGMACHINE\ENTITIES\EGGMACHINE.ENTITY.MBIN"
FILE_MODELS_MT_SALVAGE_ENTITY =         "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\MULTITOOLSALVAGETERMINAL\ENTITIES\MULTITOOLSALVAGE.ENTITY.MBIN"
FILE_MODELS_NEXUSCOMP_ENTITY =          "MODELS\SPACE\NEXUS\NEXUS\ENTITIES\MPTERMINAL.ENTITY.MBIN"
FILE_MODELS_TERMINALPRIME_ENTITY =      "MODELS\SPACE\NEXUS\PARTS\COMPUTER\COMPUTER\ENTITIES\COMPUTER.ENTITY.MBIN"
FILE_MODELS_TELEPORTER_ENTITY =         "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_NEXUS\ENTITIES\TELEPORTERNEXUSINTERACTION.ENTITY.MBIN"
FILE_MODELS_BASEPARTS_ENTITY =          "MODELS\SPACE\NEXUS\PARTS\TERMINALS\NEXUSBLUEPRINTANALYSER\ENTITIES\NEXUSBPANALYSER.ENTITY.MBIN"
FILE_MODELS_RECIPELAB_ENTITY =          "MODELS\SPACE\NEXUS\PARTS\TERMINALS\NEXUSRECIPETERMINAL\ENTITIES\NEXUSRECIPETERMINAL.ENTITY.MBIN"
FILE_MODELS_EXPEDITION_ENTITY =         "MODELS\SPACE\NEXUS\PARTS\TERMINALS\NEXUSSEASONTERMINAL\ENTITIES\SEASONTERMINAL.ENTITY.MBIN"

-- vanilla template for marker component (not modified)
FILE_MODEL_ORBSTONE_ENTITY =            "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\INTERACTIONSTONE\INTERACTIONSTONE_1\ENTITIES\ORBSTONE_1.ENTITY.MBIN"

--------------------------------------------------
-- data structures and functions
--------------------------------------------------

local DATA_EGG_MACHINE =
{
["file"] = FILE_MODELS_EGGMACHINE_ENTITY,
["name"] = "UI_EGG_MODIFIER_NAME_L",
["icon"] = "PetEgg",
["offset"] = 0,
}

local DATA_MT_SALVAGE =
{
["file"] = FILE_MODELS_MT_SALVAGE_ENTITY,
["name"] = "UI_SALVAGE_MT_TITLE",
["icon"] = "Tech",
["offset"] = -2,
}

local DATA_NEXUS_COMPUTER =
{
["file"] = FILE_MODELS_NEXUSCOMP_ENTITY,
["name"] = "UI_RETURN_MPMISSION_OBJ1_MARKER",
["icon"] = "BuriedRare",
["offset"] = 2,
}

local DATA_TERMINAL_PRIME =
{
["file"] = FILE_MODELS_TERMINALPRIME_ENTITY,
["name"] = "UI_TERMINALCORE_WAIT_TITLE",
["icon"] = "FreighterTerminal",
["offset"] = -4,
}

local DATA_TELEPORTER =
{
["file"] = FILE_MODELS_TELEPORTER_ENTITY,
["name"] = "INTRCT_TELEPORT_NEXUS",
["icon"] = "Tech",
["offset"] = 0,
}

local DATA_BASEPARTS_COMPUTER =
{
["file"] = FILE_MODELS_BASEPARTS_ENTITY,
["name"] = "UI_NEXUS_BP_ANALYSER",
["icon"] = "BuriedTech",
["offset"] = 0,
}

local DATA_PRODUCTS_COMPUTER =
{
["file"] = FILE_MODELS_RECIPELAB_ENTITY,
["name"] = "UI_NEXUS_PRODUCTLAB_LABEL",
["icon"] = "ArtifactCrate",
["offset"] = 0,
}

local DATA_EXPEDITIONS_TERMINAL =
{
["file"] = FILE_MODELS_EXPEDITION_ENTITY,
["name"] = "UI_SEASON_TERMINAL_NAME",
["icon"] = "Pearl",
["offset"] = -8,
}



local function Entity_AddMarker(data) return
{
    ["MBIN_FILE_SOURCE"] = data["file"],
    ["MXML_CHANGE_TABLE"] =
    {
        {
            ["SEC_EDIT"] = "SEC_COMPONENT",
            ["VCT"] = 
            {
                {"ScanRange",200},
                {"ScanName",data["name"],},
                {"CanTagIcon","false"},
                {"ScanIconType",data["icon"],},
                {"MarkerOffsetOverride",data["offset"],},
            },
        },

        {
            ["PKW"] = "Components",
            ["SEC_ADD_NAMED"] = "SEC_COMPONENT",
        }, 
    },
}
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
                    -- Quicksilver shop entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_SPECIALSHOP_ENTITY,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change scan rage and marker icon
                            ["SKW"] = {"Components","GcScannableComponentData",},
                            ["VCT"] = 
                            {
                                {"ScanRange",200,},
                                {"CanTagIcon","false",},
                                {"ScanIconType","RobotHead",},
                                {"MarkerOffsetOverride",2,},
                            },
                        }, 
                    }
                },

                {
                    --------------------------------------------------
                    -- Atlas interface orb entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODEL_ORBSTONE_ENTITY,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for the visor marker component
                            ["SKW"] = {"Components","GcScannableComponentData",},
                            ["SEC_SAVE_TO"] = "SEC_COMPONENT",
                        }, 
                    }
                },

                -- add markers to objects in Space Anomaly
                Entity_AddMarker(DATA_EGG_MACHINE),
                Entity_AddMarker(DATA_MT_SALVAGE),
                Entity_AddMarker(DATA_NEXUS_COMPUTER),
                Entity_AddMarker(DATA_TERMINAL_PRIME),
                Entity_AddMarker(DATA_TELEPORTER),
                Entity_AddMarker(DATA_BASEPARTS_COMPUTER),
                Entity_AddMarker(DATA_PRODUCTS_COMPUTER),
                Entity_AddMarker(DATA_EXPEDITIONS_TERMINAL),

            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------