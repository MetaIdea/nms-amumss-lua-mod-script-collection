----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "SpaceAnomalyMarkers"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "528"
METADATA_MOD_DESC       = "This mod adds markes to various points of interest found in Space Anomaly. Modifies various files mostly in MODELS\SPACE\NEXUS directory."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

-- modified files
FILE_MODELS_QSSHOP_ENTITY =             "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\SHOPS\SPECIALSHOP\ENTITIES\SPECIALSHOPORB.ENTITY.MBIN"
FILE_MODELS_EGGMACHINE_ENTITY =         "MODELS\SPACE\NEXUS\PARTS\RIGHTSECTION\EGGMACHINE\ENTITIES\EGGMACHINE.ENTITY.MBIN"
FILE_MODELS_MTMACHINE_ENTITY =          "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\MULTITOOLSALVAGETERMINAL\ENTITIES\MULTITOOLSALVAGE.ENTITY.MBIN"
FILE_MODELS_NEXUSCOMP_ENTITY =          "MODELS\SPACE\NEXUS\NEXUS\ENTITIES\MPTERMINAL.ENTITY.MBIN"
FILE_MODELS_SIMMACHINE_ENTITY =         "MODELS\SPACE\NEXUS\PARTS\COMPUTER\COMPUTER\ENTITIES\COMPUTER.ENTITY.MBIN"
FILE_MODELS_TELEPORTER_ENTITY =         "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_NEXUS\ENTITIES\TELEPORTERNEXUSINTERACTION.ENTITY.MBIN"
FILE_MODELS_BASEPARTS_ENTITY =          "MODELS\SPACE\NEXUS\PARTS\TERMINALS\NEXUSBLUEPRINTANALYSER\ENTITIES\NEXUSBPANALYSER.ENTITY.MBIN"
FILE_MODELS_RECIPELAB_ENTITY =          "MODELS\SPACE\NEXUS\PARTS\TERMINALS\NEXUSRECIPETERMINAL\ENTITIES\NEXUSRECIPETERMINAL.ENTITY.MBIN"
FILE_MODELS_EXPEDITION_ENTITY =         "MODELS\SPACE\NEXUS\PARTS\TERMINALS\NEXUSSEASONTERMINAL\ENTITIES\SEASONTERMINAL.ENTITY.MBIN"

-- template for marker component (not modified)
FILE_MODEL_ORBSTONE_ENTITY =            "MODELS\SPACE\ATLASSTATION\MODULARPARTS\INTERIOR\INTERACTIONSTONE\INTERACTIONSTONE_1\ENTITIES\ORBSTONE_1.ENTITY.MBIN"

--------------------------------------------------
-- functions
--------------------------------------------------

DEFAULT_SCANRANGE = 200

function AddMarker(ScanName,ScanIconType) return
{
    {
        -- edit template: change scan range, assign tooltip text and marker icon
        ["SEC_EDIT"] = "SEC_COMPONENT",
        ["VCT"] = 
        {
            {"ScanRange",DEFAULT_SCANRANGE},
            {"ScanName",ScanName},
            {"CanTagIcon","False"},
            {"ScanIconType",ScanIconType},
        },
    },

    {
        -- add marker component
        ["PKW"] = "Components",
        ["SEC_ADD_NAMED"] = "SEC_COMPONENT",
    }, 
}
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
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_QSSHOP_ENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            --------------------------------------------------
                            -- Quicksilver shop entity MBIN
                            --------------------------------------------------
                            ["SKW"] = {"Template","GcScannableComponentData.xml",},
                            ["VCT"] = 
                            {
                                -- change scan rage and marker icon
                                {"ScanRange",DEFAULT_SCANRANGE,},
                                {"CanTagIcon","False",},
                                {"ScanIconType","RobotHead",},
                            },
                        }, 
                    }
                },

                {
                    --------------------------------------------------
                    -- Atlas station gift orb entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODEL_ORBSTONE_ENTITY,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for the visor marker component
                            ["SKW"] = {"Template","GcScannableComponentData.xml",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SEC_SAVE_TO"] = "SEC_COMPONENT",
                        }, 
                    }
                },

                {
                    -- Nexus missions terminal - add golden plate marker
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_NEXUSCOMP_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("UI_RETURN_MPMISSION_OBJ1_MARKER","BuriedRare"),
                },

                {
                    -- egg machine - add egg marker
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_EGGMACHINE_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("UI_EGG_MODIFIER_NAME_L","PetEgg"),
                },

                {
                    -- Multi-tool decomissioning station - add tech marker
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_MTMACHINE_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("UI_SALVAGE_MT_TITLE","Tech"),
                },

                {
                    -- simulation terminal - add freighter terminal marker
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_SIMMACHINE_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("UI_TERMINALCORE_WAIT_TITLE","FreighterTerminal"),
                },

                {
                    -- big teleporter - add tech marker
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_TELEPORTER_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("INTRCT_TELEPORT_NEXUS","Tech"),
                },

                {
                    -- base parts reasearch computer - add buried tech marker
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_BASEPARTS_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("UI_NEXUS_BP_ANALYSER","BuriedTech"),
                },

                {
                    -- product synthesis terminal - add purple crate marker
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_RECIPELAB_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("UI_NEXUS_PRODUCTLAB_LABEL","ArtifactCrate"),
                },

                {
                    -- expedition terminal - add pearl marker (lets assume it's planet and stars and shit)
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_EXPEDITION_ENTITY,
                    ["EXML_CHANGE_TABLE"] = AddMarker("UI_SEASON_TERMINAL_NAME","Pearl"),
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------