----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "AtlasStaffRecolour_COLOURS"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "451"
METADATA_MOD_DESC       = "This mod applies new colours to elements of the Atlas Spectre (Expedition 12 reward). Modifies files in MODELS\\COMMON\\WEAPONS\\MULTITOOL\\STAFFMULTITOOLATLAS"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files edited by this mod
--------------------------------------------------

FILE_ATLASSTAFF_SCENE =             "MODELS\\COMMON\\WEAPONS\\MULTITOOL\\STAFFMULTITOOLATLAS.SCENE.MBIN"

FILE_ATLASSTAFF_GLOW_MATERIAL =     "MODELS\\COMMON\\WEAPONS\\MULTITOOL\\STAFFMULTITOOLATLAS\\ATLASGLOW2W.MATERIAL.MBIN"
FILE_ATLASSTAFF_ORB_MATERIAL =      "MODELS\\COMMON\\WEAPONS\\MULTITOOL\\STAFFMULTITOOLATLAS\\ATLASCORE_MAT.MATERIAL.MBIN"

--------------------------------------------------
-- files copied by this mod
--------------------------------------------------

FILE_VANILLA_ATLASORB_SCENE =       "MODELS\\EFFECTS\\WEAPONS\\ATLASORB.SCENE.MBIN"
FILE_MODDED_ATLASORB_SCENE =        "MODELS\\EFFECTS\\WEAPONS\\STAFFORB.SCENE.MBIN"

FILE_VANILLA_MIST_PARTICLE =        "MODELS\\EFFECTS\\WEAPONS\\ATLASORB\\MIST.PARTICLE.MBIN"
FILE_MODDED_MIST_PARTICLE =         "MODELS\\EFFECTS\\WEAPONS\\STAFFORB\\MIST.PARTICLE.MBIN"

FILE_VANILLA_LIGHTGLOW_PARTICLE =   "MODELS\\EFFECTS\\WEAPONS\\ATLASORB\\LIGHTGLOW.PARTICLE.MBIN"
FILE_MODDED_LIGHTGLOW_PARTICLE =    "MODELS\\EFFECTS\\WEAPONS\\STAFFORB\\LIGHTGLOW.PARTICLE.MBIN"

FILE_VANILLA_ELECPOWER_PARTICLE =   "MODELS\\EFFECTS\\WEAPONS\\ATLASORB\\ELECPOWER.PARTICLE.MBIN"
FILE_MODDED_ELECPOWER_PARTICLE =    "MODELS\\EFFECTS\\WEAPONS\\STAFFORB\\ELECPOWER.PARTICLE.MBIN"

FILE_VANILLA_EMBERBITS_PARTICLE =   "MODELS\\EFFECTS\\WEAPONS\\ATLASORB\\EMBERBITS.PARTICLE.MBIN"
FILE_MODDED_EMBERBITS_PARTICLE =    "MODELS\\EFFECTS\\WEAPONS\\STAFFORB\\EMBERBITS.PARTICLE.MBIN"

FILE_VANILLA_GLOW_PARTICLE =        "MODELS\\EFFECTS\\WEAPONS\\ATLASORB\\GLOW.PARTICLE.MBIN"
FILE_MODDED_GLOW_PARTICLE =         "MODELS\\EFFECTS\\WEAPONS\\STAFFORB\\GLOW.PARTICLE.MBIN"


--------------------------------------------------
-- user input for colour variant selection
--------------------------------------------------

GUIF_TIME = 30
COLOUR = 1

GUIF_TEXT = 
[[
.
---------------------------------------------------------------------
| Select colour variant for the Atlas Staff elements. Valid values: |
---------------------------------------------------------------------
| [1] = ORANGE      [2] = GREEN     [3] = CYAN      [4] = BLUE      |
| [5] = PURPLE      [6] = PINK      [7] = GRAY      [8] = WHITE     |
| [9] = HE COMETH                                                   |
---------------------------------------------------------------------
| Script will proceed with default option []]..COLOUR..[[] in ]]..GUIF_TIME..[[ seconds.        |
---------------------------------------------------------------------
.
]]

COLOUR=GUIF({COLOUR,GUIF_TEXT},GUIF_TIME)



--------------------------------------------------
-- table of RGB glow values (DO NOT TOUCH)
--------------------------------------------------
RGB =
{
    {  1.000,   0.549,  0.000   },      -- orange
    {  0.027,   0.510,  0.000   },      -- green

    {  0.000,   0.490,  0.490   },      -- cyan
    {  0.000,   0.176,  0.529   },      -- blue

    {  0.251,   0.000,  0.522   },      -- purple
    {  0.600,   0.000,  0.522   },      -- pink

    {  0.000,   0.000,  0.000,  },      -- gray
    {  1.000,   1.000,  1.000,  },      -- white

    {  0.600,   0.475,  0.373,  },      -- HE COMETH
}



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
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- texture for the orb
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_ATLASSTAFF_ORB_MATERIAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- point the map to a new colour texture
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map",[[TEXTURES/SPACE/ATLASSTATION/ATLASCORE.]]..COLOUR..[[.BASE.DDS]],},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- glow material on staff head and pole
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_ATLASSTAFF_GLOW_MATERIAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- replace the glow RGB values with values from the table
                            ["SKW"] = {"Name","gMaterialColourVec4",},
                            ["VCT"] = 
                            {
                                {"x",RGB[COLOUR][1],},
                                {"y",RGB[COLOUR][2],},
                                {"z",RGB[COLOUR][3],},
                            },
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- Atlas staff scene
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_ATLASSTAFF_SCENE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- point to another effects file
                            ["SKW"] = {"Name","SCENEGRAPH",},
                            ["VCT"] = {{"Value",FILE_MODDED_ATLASORB_SCENE,},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- make copies of vanilla effects files
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        {   FILE_VANILLA_ATLASORB_SCENE,        FILE_MODDED_ATLASORB_SCENE          ,"REMOVE"},
                        {   FILE_VANILLA_MIST_PARTICLE,         FILE_MODDED_MIST_PARTICLE           ,"REMOVE"},
                        {   FILE_VANILLA_LIGHTGLOW_PARTICLE,    FILE_MODDED_LIGHTGLOW_PARTICLE      ,"REMOVE"},
                        {   FILE_VANILLA_ELECPOWER_PARTICLE,    FILE_MODDED_ELECPOWER_PARTICLE      ,"REMOVE"},
                        {   FILE_VANILLA_EMBERBITS_PARTICLE,    FILE_MODDED_EMBERBITS_PARTICLE      ,"REMOVE"},
                        {   FILE_VANILLA_GLOW_PARTICLE,         FILE_MODDED_GLOW_PARTICLE           ,"REMOVE"},
                    },
                },

                {
                    --------------------------------------------------
                    -- rework the new effects file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODDED_ATLASORB_SCENE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change name just to be sure lol
                            ["VCT"] = {{"Name","Models\\Effects\\Weapons\\STAFFORB.SCENE.MXML"},},
                        },

                        -- point the new scene to new individual effect files x5
                        {
                            ["SKW"] = {"Name","Mist","Name","DATA",},
                            ["VCT"] = {{"Value",FILE_MODDED_MIST_PARTICLE},},
                        },

                        {
                            ["SKW"] = {"Name","LightGlow","Name","DATA",},
                            ["VCT"] = {{"Value",FILE_MODDED_LIGHTGLOW_PARTICLE},},
                        },

                        {
                            ["SKW"] = {"Name","ElecPower","Name","DATA",},
                            ["VCT"] = {{"Value",FILE_MODDED_ELECPOWER_PARTICLE},},
                        },

                        {
                            ["SKW"] = {"Name","EmberBits","Name","DATA",},
                            ["VCT"] = {{"Value",FILE_MODDED_EMBERBITS_PARTICLE},},
                        },

                        {
                            ["SKW"] = {"Name","Glow","Name","DATA",},
                            ["VCT"] = {{"Value",FILE_MODDED_GLOW_PARTICLE},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- rework the new particle files
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        FILE_MODDED_MIST_PARTICLE,
                        FILE_MODDED_LIGHTGLOW_PARTICLE,
                        FILE_MODDED_ELECPOWER_PARTICLE,
                        FILE_MODDED_EMBERBITS_PARTICLE,
                        FILE_MODDED_GLOW_PARTICLE,
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change the colour in 3 sections
                            ["FSKWG"] = 
                            {
                                {"ColourStart","Colour.xml",},
                                {"ColourMiddle","Colour.xml",},
                                {"ColourEnd","Colour.xml",},
                            },
                            ["VCT"] = 
                            {
                                {"R",RGB[COLOUR][1],},
                                {"G",RGB[COLOUR][2],},
                                {"B",RGB[COLOUR][3],},
                            },
                        },
                    },
                },



            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------