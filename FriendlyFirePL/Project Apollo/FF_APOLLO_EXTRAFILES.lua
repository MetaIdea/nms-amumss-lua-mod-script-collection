----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "EXTRAFILES"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for generating extra files (trails, bobbleheads, objects). Adds new files into the MODELS directory."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- vanilla files
--------------------------------------------------

-- files used as templates for custom trails' materials and scenes
FILE_MATERIAL_SHIPTRAIL_VANILLA =       "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTTRAIL.MATERIAL.MBIN"
FILE_SCENE_SHIPTRAIL_VANILLA =          "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTTRAIL.SCENE.MBIN"

-- files for vanilla jetpack effects
FILE_SCENE_JETPACK_ELECTRIC =           "MODELS\\EFFECTS\\PLAYER\\JETPACKEFFECTS\\ELECJETPACK.SCENE.MBIN"
FILE_SCENE_JETPACK_SENTINEL =           "MODELS\\EFFECTS\\PLAYER\\JETPACKEFFECTS\\SENTINELJETPACK.SCENE.MBIN"
FILE_SCENE_JETPACK_CORRUPTED =          "MODELS\\EFFECTS\\PLAYER\\JETPACKEFFECTS\\CORRUPTEDJETPACK.SCENE.MBIN"

-- files for space crystal
FILE_SCENE_SPACE_CRYSTAL =              "MODELS\\SPACE\\POI\\CRYSTAL.SCENE.MBIN"
FILE_MATERIAL_SPACE_CRYSTAL =           "MODELS\\SPACE\\POI\\CRYSTAL\\CRYSTALCREATUREMAT.MATERIAL.MBIN"
FILE_MATERIAL_SPACE_CLOUD =             "MODELS\\SPACE\\POI\\CRYSTAL\\HUGEBEAM_MAT.MATERIAL.MBIN"

-- files for bobbleheads
FILE_SCENE_HOLOBLOB_VANILLA =           "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\ACCESSORIES\\HOLOBLOB.SCENE.MBIN"
FILE_SCENE_HOLOFRIG_VANILLA =           "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\ACCESSORIES\\HOLOFRIGATE.SCENE.MBIN"
FILE_SCENE_HOLOSOLAR_VANILLA =          "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\ACCESSORIES\\HOLOSOLARSYSTEM.SCENE.MBIN"

FILE_SCENE_LAYLAPS_VANILLA =            "MODELS\\COMMON\\ROBOTS\\FRIENDLYDRONE.SCENE.MBIN"
FILE_SCENE_CRYSDRONE_VANILLA =          "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\SENTINELCRYSTALLDRONE.SCENE.MBIN"
FILE_SCENE_WALKER_VANILLA =             "MODELS\\COMMON\\ROBOTS\\WALKER.SCENE.MBIN"

FILE_SCENE_WORDSTONE_VANILLA =          "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\RUINPARTS\\WORDSTONE.SCENE.MBIN"
FILE_SCENE_GRAVE_VANILLA =              "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\GRAVEINCAVE\\GRAVEINCAVE.SCENE.MBIN"
FILE_SCENE_CRYSTAL_VANILLA =            "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\WATERCRYSTALDECORATION.SCENE.MBIN"

FILE_SCENE_JELLYFISH_VANILLA =          "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\TOY_JELLYFISH.SCENE.MBIN"
FILE_SCENE_SPACEEGG_VANILLA =           "MODELS\\SPACE\\POI\\SPACEEGG.SCENE.MBIN"
FILE_SCENE_MINIWORM_VANILLA =           "MODELS\\PLANETS\\CREATURES\\SANDWORMMINI\\SANDWORMMINI.SCENE.MBIN"

FILE_SCENE_HYDROPOD_VANILLA =           "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\FOLIAGE\\HYDROPOD.SCENE.MBIN"
FILE_SCENE_SHARD_VANILLA =              "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\FOLIAGE\\SHARDGARDEN.SCENE.MBIN"
FILE_SCENE_OSSIFIED_VANILLA =           "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\FOLIAGE\\STARJOINT.SCENE.MBIN"

FILE_SCENE_GLOWGLOBE_VANILLA =          "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\BAZAAR\\GLOWGLOBE.SCENE.MBIN"
FILE_SCENE_NEXUSORB_VANILLA =           "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\NEXUSORBPILLAR.SCENE.MBIN"
FILE_SCENE_SHIELDGEN_VANILLA =          "MODELS\\COMMON\\SPACECRAFT\\INDUSTRIAL\\DESTRUCTIBLEPARTS\\SHIELDGENERATOR0.SCENE.MBIN"

FILE_SCENE_GLOWRING_VANILLA =           "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\TOYDRONE_LOD.SCENE.MBIN"
FILE_SCENE_SHIELDCORE_VANILLA =         "MODELS\\COMMON\\SPACECRAFT\\INDUSTRIAL\\DESTRUCTIBLEPARTS\\GENERATORCORE.SCENE.MBIN"
FILE_MATERIAL_CRYSTAL_VANILLA =         "MODELS\\PLANETS\\BIOMES\\UNDERWATER\\UPDATEPROPS\\CRYSTALSSHAPE\\CRYSTALGLOWMAT.MATERIAL.MBIN"

--------------------------------------------------
-- custom starship trails: materials and scenes
--------------------------------------------------

FILE_MATERIAL_SHIPTRAIL_CYAN =          "MODELS\\TRAILS\\CYAN.MATERIAL.MBIN"
FILE_MATERIAL_SHIPTRAIL_ORANGE =        "MODELS\\TRAILS\\ORANGE.MATERIAL.MBIN"
FILE_MATERIAL_SHIPTRAIL_PINK =          "MODELS\\TRAILS\\PINK.MATERIAL.MBIN"
FILE_MATERIAL_SHIPTRAIL_WHITE =         "MODELS\\TRAILS\\WHITE.MATERIAL.MBIN"
FILE_MATERIAL_SHIPTRAIL_ELECTRIC =      "MODELS\\TRAILS\\ELECTRIC.MATERIAL.MBIN"
FILE_MATERIAL_SHIPTRAIL_GLITCH =        "MODELS\\TRAILS\\GLITCH.MATERIAL.MBIN"
FILE_MATERIAL_SHIPTRAIL_PSYCHIC =       "MODELS\\TRAILS\\PSYCHIC.MATERIAL.MBIN"

FILE_SCENE_SHIPTRAIL_CYAN =             "MODELS\\TRAILS\\CYAN.SCENE.MBIN"
FILE_SCENE_SHIPTRAIL_ORANGE =           "MODELS\\TRAILS\\ORANGE.SCENE.MBIN"
FILE_SCENE_SHIPTRAIL_PINK =             "MODELS\\TRAILS\\PINK.SCENE.MBIN"
FILE_SCENE_SHIPTRAIL_WHITE =            "MODELS\\TRAILS\\WHITE.SCENE.MBIN"
FILE_SCENE_SHIPTRAIL_ELECTRIC =         "MODELS\\TRAILS\\ELECTRIC.SCENE.MBIN"
FILE_SCENE_SHIPTRAIL_GLITCH =           "MODELS\\TRAILS\\GLITCH.SCENE.MBIN"
FILE_SCENE_SHIPTRAIL_PSYCHIC =          "MODELS\\TRAILS\\PSYCHIC.SCENE.MBIN"

--------------------------------------------------
-- temporal fracture object files
--------------------------------------------------

FILE_SCENE_FRACTURE_ENCOUNTER =         "MODELS\\OBJECTS\\FRACTURE.SCENE.MBIN"
FILE_MATERIAL_FRACTURE_CRYSTAL =        "MODELS\\OBJECTS\\CRYSTAL.MATERIAL.MBIN"
FILE_MATERIAL_FRACTURE_CLOUD =          "MODELS\\OBJECTS\\CLOUD.MATERIAL.MBIN"

--------------------------------------------------
-- custom bobbleheads
--------------------------------------------------

FILE_SCENE_BOBBLE_HOLOBLOB =            "MODELS\\BOBBLEHEADS\\BLOB.SCENE.MBIN"
FILE_SCENE_BOBBLE_HOLOFRIG =            "MODELS\\BOBBLEHEADS\\FRIGATE.SCENE.MBIN"
FILE_SCENE_BOBBLE_HOLOSOLAR =           "MODELS\\BOBBLEHEADS\\SOLAR.SCENE.MBIN"

FILE_SCENE_BOBBLE_LAYLAPS =             "MODELS\\BOBBLEHEADS\\LAYLAPS.SCENE.MBIN"
FILE_SCENE_BOBBLE_CRYSDRONE =           "MODELS\\BOBBLEHEADS\\CRYSDRONE.SCENE.MBIN"
FILE_SCENE_BOBBLE_WALKER =              "MODELS\\BOBBLEHEADS\\WALKER.SCENE.MBIN"

FILE_SCENE_BOBBLE_STONE =               "MODELS\\BOBBLEHEADS\\STONE.SCENE.MBIN"
FILE_SCENE_BOBBLE_GRAVE =               "MODELS\\BOBBLEHEADS\\GRAVE.SCENE.MBIN"
FILE_SCENE_BOBBLE_CRYSTAL =             "MODELS\\BOBBLEHEADS\\AQUATIC.SCENE.MBIN"

FILE_SCENE_BOBBLE_JELLYFISH =           "MODELS\\BOBBLEHEADS\\JELLYFISH.SCENE.MBIN"
FILE_SCENE_BOBBLE_SPACEEGG =            "MODELS\\BOBBLEHEADS\\EGG.SCENE.MBIN"
FILE_SCENE_BOBBLE_MINIWORM =            "MODELS\\BOBBLEHEADS\\WORM.SCENE.MBIN"

FILE_SCENE_BOBBLE_HYDROPOD =            "MODELS\\BOBBLEHEADS\\SHROOM.SCENE.MBIN"
FILE_SCENE_BOBBLE_SHARD =               "MODELS\\BOBBLEHEADS\\SHARD.SCENE.MBIN"
FILE_SCENE_BOBBLE_OSSIFIED =            "MODELS\\BOBBLEHEADS\\STAR.SCENE.MBIN"

FILE_SCENE_BOBBLE_GLOWGLOBE =           "MODELS\\BOBBLEHEADS\\GLOBE.SCENE.MBIN"
FILE_SCENE_BOBBLE_NEXUSORB =            "MODELS\\BOBBLEHEADS\\NEXUSORB.SCENE.MBIN"
FILE_SCENE_BOBBLE_SHIELDGEN =           "MODELS\\BOBBLEHEADS\\SHIELDGEN.SCENE.MBIN"

FILE_SCENE_BOBBLE_GLOWRING =            "MODELS\\BOBBLEHEADS\\GLOWRING.SCENE.MBIN"
FILE_SCENE_BOBBLE_SHIELDCORE =          "MODELS\\BOBBLEHEADS\\SHIELDCORE.SCENE.MBIN"
FILE_MATERIAL_BOBBLE_CRYSTAL =          "MODELS\\BOBBLEHEADS\\AQUATIC.MATERIAL.MBIN"



----------------------------------------------------------------------------------------------------
-- functions
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- parameters for trail functions
--------------------------------------------------

-- trail effects transform values
TRAIL_TRANS = 2
TRAIL_SCALE = 4

-- VCT with transform values and NameHash set to 0
TRAIL_VCT = {{"NameHash",0,},{"TransZ",TRAIL_TRANS,},{"ScaleX",TRAIL_SCALE,},{"ScaleY",TRAIL_SCALE,},{"ScaleZ",TRAIL_SCALE,},}

--------------------------------------------------
-- nodes to be removed from scenes
--------------------------------------------------

NODES_LAYLAPS =
{   {"Name","Attack1"},{"Name","Patrol1"},{"Name","Scan"},{"Name","Identify"},{"Name","Patrol"},{"Name","Attack"},{"Name","InvestPointLight"},{"Name","InvestSpotLight"},{"Name","spotLight1"},{"Name","EXPLODE"},  }

NODES_CRYSDRONE = 
{   {"Name","DroneMeshLOD1"},{"Name","DroneMeshLOD2"},{"Name","DroneMeshLOD3"},{"Name","CrystalMeshLOD1"},{"Name","CrystalMeshLOD2"},{"Name","CrystalMeshLOD3"},    }
    
NODES_STONE =
{   {"Name","LightsOFF"},{"Name","ActivateVFX"},{"Name","ActivateVFX1"},{"Name","SFX1"},{"Name","SFX"},{"Name","INTERACT"},{"Name","WORLDUI"},{"Name","StoneBodyLOD4"},     }
    
NODES_SPACEEGG = {   {"Name","Vortex4"},{"Name","WingLight1"},{"Name","WingLight4"},{"Name","WingLight5"},   }

NODES_MINIWORM = {  {"Name","DROOLFX1"},{"Name","Data"},}    

NODES_HYDRPOD =
{   {"Name","MainPodLOD1"},{"Name","MainPodLOD2"},{"Name","ForcefieldLOD1"},{"Name","ForcefieldLOD2"},{"Name","INTERACT"},{"Name","pointLight1"},{"Name","HydroSparksEmitterREF1"},{"Name","HydroSparksEmitterREF2"},    }

NODES_GLOWGLOBE = {   {"Name","LOD0"},{"Name","LOD1"},    }

NODES_NEXUSORB = {   {"Name","SUB5NexusOrbPillarLOD0"},{"Name","NexusOrbPillarLOD1"},{"Name","NexusOrbPillarLOD2"},{"Name","Data"},     }

NODES_SHIELDGEN = {     {"Name","BaseLOD1"},{"Name","BaseLOD2"},{"Name","BaseLOD3"},{"Name","Data"},{"Name","foot_L0_1_jnt"},{"Name","RefRod0"},   }

NODES_SHIELDCORE = {   {"Name","REFGeneratorCoreVFX"},{"Name","pointLight1"},    }

--------------------------------------------------
-- functions for custom trails
--------------------------------------------------

function ReplaceTrailTexture(material,texture) return
{   ["MBIN_FILE_SOURCE"] = material,        ["EXML_CHANGE_TABLE"] = {{["VCT"] = {{"Map",texture},},},},     }
end

function ReplaceMaterial(scene,material) return
{   ["MBIN_FILE_SOURCE"] = scene,           ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"Name","MATERIAL",},["VCT"] = {{"Value",material,},},},},   }
end

function GetEffectsFromJetpack(scene) return
{
    ["MBIN_FILE_SOURCE"] = scene,
    ["MBIN_FS_DISCARD"] = "TRUE",
    ["EXML_CHANGE_TABLE"] = 
    {
        {   ["SKW"] = {"Name","RIpple",},           ["SEC_SAVE_TO"] = "SEC_RIPPLE",         },
        {   ["SKW"] = {"Name","Elec",},             ["SEC_SAVE_TO"] = "SEC_ELEC",           },
        {   ["SKW"] = {"Name","Triangles",},        ["SEC_SAVE_TO"] = "SEC_TRIANGLES",      },
        {   ["SKW"] = {"Name","Glow",},             ["SEC_SAVE_TO"] = "SEC_GLOW",           },
    
        {   ["SEC_EDIT"] = "SEC_RIPPLE",            ["VCT"] = TRAIL_VCT,   },
        {   ["SEC_EDIT"] = "SEC_ELEC",              ["VCT"] = TRAIL_VCT,   },
        {   ["SEC_EDIT"] = "SEC_TRIANGLES",         ["VCT"] = TRAIL_VCT,   },
        {   ["SEC_EDIT"] = "SEC_GLOW",              ["VCT"] = TRAIL_VCT,   },
    },
}
end

function AddEffectsToTrail(scene) return
{
    ["MBIN_FILE_SOURCE"] = scene,
    ["EXML_CHANGE_TABLE"] = 
    {
        {   ["PKW"] = "Children",       ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_RIPPLE",       },
        {   ["PKW"] = "Children",       ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_ELEC",         },
        {   ["PKW"] = "Children",       ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_TRIANGLES",    },
        {   ["PKW"] = "Children",       ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = "SEC_GLOW",         },
    },
}
end

function ReplaceDiffuseMap(material,texture) return
{    ["MBIN_FILE_SOURCE"] = material,   ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"Name","gDiffuseMap",},["VCT"] = {{"Map",texture,},},},},      }
end

--------------------------------------------------
-- functions for custom bobbleheads
--------------------------------------------------

function ApplyTransform(scene,name,transxyz,rotxyz,scalexyz) return
{
    ["MBIN_FILE_SOURCE"] = scene,
    ["EXML_CHANGE_TABLE"] =
    {
        {
            ["ITF"] = "FORCE",
            ["SKW"] = {"Name",name,},
            ["VCT"] =
            {
                {"TransX",transxyz[1],},    {"TransY",transxyz[2],},    {"TransZ",transxyz[3],},
                {"RotX",rotxyz[1],},        {"RotY",rotxyz[2],},        {"RotZ",rotxyz[3],},
                {"ScaleX",scalexyz[1],},    {"ScaleY",scalexyz[2],},    {"ScaleZ",scalexyz[3],},
            },
        },
    }
}
end

function RemoveNodes(scene,nodes) return
{   ["MBIN_FILE_SOURCE"] = scene,    ["EXML_CHANGE_TABLE"] = {{["SKW"] = nodes,["REMOVE"] = "SECTION",},}      }
end

function KeywordLODs(number)
    if number == 2 then return {{"Name","LODDIST1",},{"Name","LODDIST2",},} end
    if number == 3 then return {{"Name","LODDIST1",},{"Name","LODDIST2",},{"Name","LODDIST3",},} end
    if number == 4 then return {{"Name","LODDIST1",},{"Name","LODDIST2",},{"Name","LODDIST3",},{"Name","LODDIST4",}} end
end

function RemoveLODs(scene,number) return
{   ["MBIN_FILE_SOURCE"] = scene,   ["EXML_CHANGE_TABLE"] = {{["SKW"] = KeywordLODs(number),["REMOVE"] = "SECTION",},{["SKW"] = {"Name","NUMLODS",},["VCT"] = {{"Value",1,},},},}   }
end

function GetGlowRing(scene) return
{   ["MBIN_FILE_SOURCE"] = scene,   ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"Type","REFERENCE",},["SEC_SAVE_TO"] = "SEC_GLOWRING",},
    {["SEC_EDIT"] = "SEC_GLOWRING",["VCT"] = {{"Name","GlowRingRef",},{"NameHash",0,},{"Value",FILE_SCENE_BOBBLE_GLOWRING,},},},}   }
end

function AddGlowRing(scene) return
{   ["MBIN_FILE_SOURCE"] = scene,   ["EXML_CHANGE_TABLE"] = {{["PKW"] = "Children",["ADD_OPTION"] = "ADDendSECTION",["SEC_ADD_NAMED"] = "SEC_GLOWRING",},}  }
end

function GetHoloLight(scene) return
{   ["MBIN_FILE_SOURCE"] = scene,   ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"Type","LIGHT",},["SEC_SAVE_TO"] = "SEC_HOLOLIGHT",},}     }
end

function AddHoloLight(scene) return
{   ["MBIN_FILE_SOURCE"] = scene,   ["EXML_CHANGE_TABLE"] = {{["PKW"] = "Children",["ADD_OPTION"] = "ADDendSECTION",["SEC_ADD_NAMED"] = "SEC_HOLOLIGHT",},}  }
end

function GetHoloBase(scene) return
{   ["MBIN_FILE_SOURCE"] = scene,   ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"Type","REFERENCE",},["SEC_SAVE_TO"] = "SEC_HOLOBASE",},}     }
end

function AddHoloBase(scene) return
{   ["MBIN_FILE_SOURCE"] = scene,   ["EXML_CHANGE_TABLE"] = {{["PKW"] = "Children",["ADD_OPTION"] = "ADDendSECTION",["SEC_ADD_NAMED"] = "SEC_HOLOBASE",},}  }
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                ----------------------------------------------------------------------------------------------------
                -- copy vanilla files
                ----------------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        -- starship trail materials
                        {   FILE_MATERIAL_SHIPTRAIL_VANILLA,        FILE_MATERIAL_SHIPTRAIL_CYAN                    },
                        {   FILE_MATERIAL_SHIPTRAIL_VANILLA,        FILE_MATERIAL_SHIPTRAIL_ORANGE                  },
                        {   FILE_MATERIAL_SHIPTRAIL_VANILLA,        FILE_MATERIAL_SHIPTRAIL_PINK                    },
                        {   FILE_MATERIAL_SHIPTRAIL_VANILLA,        FILE_MATERIAL_SHIPTRAIL_WHITE                   },
                        {   FILE_MATERIAL_SHIPTRAIL_VANILLA,        FILE_MATERIAL_SHIPTRAIL_ELECTRIC                },
                        {   FILE_MATERIAL_SHIPTRAIL_VANILLA,        FILE_MATERIAL_SHIPTRAIL_GLITCH                  },
                        {   FILE_MATERIAL_SHIPTRAIL_VANILLA,        FILE_MATERIAL_SHIPTRAIL_PSYCHIC,        "REMOVE"},

                        -- starship trail scenes
                        {   FILE_SCENE_SHIPTRAIL_VANILLA,           FILE_SCENE_SHIPTRAIL_CYAN                       },
                        {   FILE_SCENE_SHIPTRAIL_VANILLA,           FILE_SCENE_SHIPTRAIL_ORANGE                     },
                        {   FILE_SCENE_SHIPTRAIL_VANILLA,           FILE_SCENE_SHIPTRAIL_PINK                       },
                        {   FILE_SCENE_SHIPTRAIL_VANILLA,           FILE_SCENE_SHIPTRAIL_WHITE                      },
                        {   FILE_SCENE_SHIPTRAIL_VANILLA,           FILE_SCENE_SHIPTRAIL_ELECTRIC                   },
                        {   FILE_SCENE_SHIPTRAIL_VANILLA,           FILE_SCENE_SHIPTRAIL_GLITCH                     },
                        {   FILE_SCENE_SHIPTRAIL_VANILLA,           FILE_SCENE_SHIPTRAIL_PSYCHIC,           "REMOVE"},

                        -- files for temporal fracture
                        {   FILE_SCENE_SPACE_CRYSTAL,               FILE_SCENE_FRACTURE_ENCOUNTER,          "REMOVE"},
                        {   FILE_MATERIAL_SPACE_CRYSTAL,            FILE_MATERIAL_FRACTURE_CRYSTAL,         "REMOVE"},
                        {   FILE_MATERIAL_SPACE_CLOUD,              FILE_MATERIAL_FRACTURE_CLOUD,           "REMOVE"},

                        -- files for bobbleheads
                        {   FILE_SCENE_HOLOBLOB_VANILLA,            FILE_SCENE_BOBBLE_HOLOBLOB,             "REMOVE"},
                        {   FILE_SCENE_HOLOFRIG_VANILLA,            FILE_SCENE_BOBBLE_HOLOFRIG,             "REMOVE"},
                        {   FILE_SCENE_HOLOSOLAR_VANILLA,           FILE_SCENE_BOBBLE_HOLOSOLAR,            "REMOVE"},
                        {   FILE_SCENE_LAYLAPS_VANILLA,             FILE_SCENE_BOBBLE_LAYLAPS,              "REMOVE"},
                        {   FILE_SCENE_CRYSDRONE_VANILLA,           FILE_SCENE_BOBBLE_CRYSDRONE,            "REMOVE"},
                        {   FILE_SCENE_WALKER_VANILLA,              FILE_SCENE_BOBBLE_WALKER,               "REMOVE"},
                        {   FILE_SCENE_WORDSTONE_VANILLA,           FILE_SCENE_BOBBLE_STONE,                "REMOVE"},
                        {   FILE_SCENE_GRAVE_VANILLA,               FILE_SCENE_BOBBLE_GRAVE,                "REMOVE"},
                        {   FILE_SCENE_CRYSTAL_VANILLA,             FILE_SCENE_BOBBLE_CRYSTAL,              "REMOVE"},
                        {   FILE_SCENE_JELLYFISH_VANILLA,           FILE_SCENE_BOBBLE_JELLYFISH,            "REMOVE"},
                        {   FILE_SCENE_SPACEEGG_VANILLA,            FILE_SCENE_BOBBLE_SPACEEGG,             "REMOVE"},
                        {   FILE_SCENE_MINIWORM_VANILLA,            FILE_SCENE_BOBBLE_MINIWORM,             "REMOVE"},
                        {   FILE_SCENE_HYDROPOD_VANILLA,            FILE_SCENE_BOBBLE_HYDROPOD,             "REMOVE"},
                        {   FILE_SCENE_SHARD_VANILLA,               FILE_SCENE_BOBBLE_SHARD,                "REMOVE"},
                        {   FILE_SCENE_OSSIFIED_VANILLA,            FILE_SCENE_BOBBLE_OSSIFIED,             "REMOVE"},
                        {   FILE_SCENE_GLOWGLOBE_VANILLA,           FILE_SCENE_BOBBLE_GLOWGLOBE,            "REMOVE"},
                        {   FILE_SCENE_NEXUSORB_VANILLA,            FILE_SCENE_BOBBLE_NEXUSORB,             "REMOVE"},
                        {   FILE_SCENE_SHIELDGEN_VANILLA,           FILE_SCENE_BOBBLE_SHIELDGEN,            "REMOVE"}, 
                        {   FILE_SCENE_GLOWRING_VANILLA,            FILE_SCENE_BOBBLE_GLOWRING,             "REMOVE"},
                        {   FILE_SCENE_SHIELDCORE_VANILLA,          FILE_SCENE_BOBBLE_SHIELDCORE,           "REMOVE"},
                        {   FILE_MATERIAL_CRYSTAL_VANILLA,          FILE_MATERIAL_BOBBLE_CRYSTAL,           "REMOVE"},
                    },
                },

                ----------------------------------------------------------------------------------------------------
                -- custom starship trails
                ----------------------------------------------------------------------------------------------------

                --------------------------------------------------
                -- point material files to new textures
                --------------------------------------------------
                ReplaceTrailTexture(FILE_MATERIAL_SHIPTRAIL_CYAN,"TEXTURES/TRAILS/CYAN.DDS"),
                ReplaceTrailTexture(FILE_MATERIAL_SHIPTRAIL_ORANGE,"TEXTURES/TRAILS/ORANGE.DDS"),
                ReplaceTrailTexture(FILE_MATERIAL_SHIPTRAIL_PINK,"TEXTURES/TRAILS/PINK.DDS"),
                ReplaceTrailTexture(FILE_MATERIAL_SHIPTRAIL_WHITE,"TEXTURES/TRAILS/WHITE.DDS"),
                ReplaceTrailTexture(FILE_MATERIAL_SHIPTRAIL_ELECTRIC,"TEXTURES/TRAILS/CYAN.DDS"),
                ReplaceTrailTexture(FILE_MATERIAL_SHIPTRAIL_GLITCH,"TEXTURES/TRAILS/ORANGE.DDS"),
                ReplaceTrailTexture(FILE_MATERIAL_SHIPTRAIL_PSYCHIC,"TEXTURES/TRAILS/DARK.DDS"),

                --------------------------------------------------
                -- point scene files to new materials
                --------------------------------------------------
                ReplaceMaterial(FILE_SCENE_SHIPTRAIL_CYAN,FILE_MATERIAL_SHIPTRAIL_CYAN),
                ReplaceMaterial(FILE_SCENE_SHIPTRAIL_ORANGE,FILE_MATERIAL_SHIPTRAIL_ORANGE),
                ReplaceMaterial(FILE_SCENE_SHIPTRAIL_PINK,FILE_MATERIAL_SHIPTRAIL_PINK),
                ReplaceMaterial(FILE_SCENE_SHIPTRAIL_WHITE,FILE_MATERIAL_SHIPTRAIL_WHITE),
                ReplaceMaterial(FILE_SCENE_SHIPTRAIL_ELECTRIC,FILE_MATERIAL_SHIPTRAIL_ELECTRIC),
                ReplaceMaterial(FILE_SCENE_SHIPTRAIL_GLITCH,FILE_MATERIAL_SHIPTRAIL_GLITCH),
                ReplaceMaterial(FILE_SCENE_SHIPTRAIL_PSYCHIC,FILE_MATERIAL_SHIPTRAIL_PSYCHIC),

                --------------------------------------------------
                -- copy selected effects from jetpack trails
                --------------------------------------------------
                GetEffectsFromJetpack(FILE_SCENE_JETPACK_ELECTRIC),AddEffectsToTrail(FILE_SCENE_SHIPTRAIL_ELECTRIC),
                GetEffectsFromJetpack(FILE_SCENE_JETPACK_SENTINEL),AddEffectsToTrail(FILE_SCENE_SHIPTRAIL_GLITCH),
                GetEffectsFromJetpack(FILE_SCENE_JETPACK_CORRUPTED),AddEffectsToTrail(FILE_SCENE_SHIPTRAIL_PSYCHIC),

                {
                    ["MBIN_FILE_SOURCE"] = FILE_SCENE_SHIPTRAIL_ELECTRIC,
                    ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"Name","Triangles",},["REMOVE"] = "SECTION",},},
                },

                ----------------------------------------------------------------------------------------------------
                -- temporal fracture space encounter
                ----------------------------------------------------------------------------------------------------

                --------------------------------------------------
                -- object scene MBIN
                --------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = FILE_SCENE_FRACTURE_ENCOUNTER,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        -- remove reference to stellar ice entity, replace vanilla materials with new ones
                        {   ["SKW"] = {"Name","CrystalData",},      ["PKW"] = "Attributes",     ["CREATE_HOES"] = "TRUE",       },
                        {   ["SKW"] = {"Value","MODELS\SPACE\POI\CRYSTAL\CRYSTALCREATUREMAT.MATERIAL.MBIN",},   ["REPLACE_TYPE"] = "ALL",   ["VCT"] = {{"Value",FILE_MATERIAL_FRACTURE_CRYSTAL,},},     },
                        {   ["SKW"] = {"Value","MODELS\SPACE\POI\CRYSTAL\HUGEBEAM_MAT.MATERIAL.MBIN",},         ["REPLACE_TYPE"] = "ALL",   ["VCT"] = {{"Value",FILE_MATERIAL_FRACTURE_CLOUD,},},       },
                    },
                },

                --------------------------------------------------
                -- crystal and cloud material MBINs
                --------------------------------------------------
                ReplaceDiffuseMap(FILE_MATERIAL_FRACTURE_CRYSTAL,"TEXTURES/OBJECTS/CRYSTAL.BASE.DDS"),
                ReplaceDiffuseMap(FILE_MATERIAL_FRACTURE_CLOUD,"TEXTURES/OBJECTS/CLOUD.DDS"),

                ----------------------------------------------------------------------------------------------------
                -- custom bobbleheads
                ----------------------------------------------------------------------------------------------------

                --------------------------------------------------
                -- add new elements to some bobbleheads
                --------------------------------------------------
                GetGlowRing(FILE_SCENE_BOBBLE_JELLYFISH),
                AddGlowRing(FILE_SCENE_BOBBLE_JELLYFISH),
                AddGlowRing(FILE_SCENE_BOBBLE_SPACEEGG),
                AddGlowRing(FILE_SCENE_BOBBLE_HYDROPOD),
                AddGlowRing(FILE_SCENE_BOBBLE_SHARD),

                GetHoloLight(FILE_SCENE_BOBBLE_HOLOBLOB),AddHoloLight(FILE_SCENE_BOBBLE_GLOWGLOBE),
                GetHoloBase(FILE_SCENE_BOBBLE_HOLOBLOB),AddHoloBase(FILE_SCENE_BOBBLE_GLOWGLOBE),

                --------------------------------------------------
                -- apply simple transforms to selected nodes
                --------------------------------------------------
                ApplyTransform(FILE_SCENE_BOBBLE_HOLOBLOB,      "HoloBlobProper",           {0,0.03,0},         {0,0,0},        {0.5,0.5,0.5}           ),
                ApplyTransform(FILE_SCENE_BOBBLE_HOLOFRIG,      "HoloFrigate",              {0,0.05,0},         {0,90,0},       {0.6,0.6,0.6}           ),
                ApplyTransform(FILE_SCENE_BOBBLE_HOLOSOLAR,     "HoloSystem",               {0.02,0.02,0},      {0,270,0},      {0.7,0.7,0.7}           ),

                ApplyTransform(FILE_SCENE_BOBBLE_LAYLAPS,       "IGNORE",                   {0,0.1,0},          {0,0,0},        {0.08,0.08,0.08}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_CRYSDRONE,     "IGNORE",                   {0,0,0},            {0,180,0},      {0.05,0.05,0.05}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_WALKER,        "IGNORE",                   {0,0,0},            {0,0,0},        {0.05,0.05,0.05}        ),

                ApplyTransform(FILE_SCENE_BOBBLE_STONE,         "IGNORE",                   {0,0,0},            {0,0,0},        {0.04,0.04,0.04}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_GRAVE,         "IGNORE",                   {0,0,0},            {0,90,0},       {0.1,0.1,0.1}           ),
                ApplyTransform(FILE_SCENE_BOBBLE_CRYSTAL,       "IGNORE",                   {0,0,0},            {0,0,0},        {0.06,0.06,0.06}        ),

                ApplyTransform(FILE_SCENE_BOBBLE_JELLYFISH,     "JellyFishRef",             {0,0.15,0},         {0,0,0},        {0.02,0.02,0.02}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_JELLYFISH,     "GlowRingRef",              {0,-0.02,0},        {0,0,0},        {0.1,0.1,0.1}           ),
                ApplyTransform(FILE_SCENE_BOBBLE_SPACEEGG,      "SpaceEgg",                 {0,0.05,0},         {0,0,0},        {0.01,0.01,0.01}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_SPACEEGG,      "GlowRingRef",              {0,-0.02,0},        {0,0,0},        {0.1,0.1,0.1}           ),

                ApplyTransform(FILE_SCENE_BOBBLE_MINIWORM,      "IGNORE",                   {0,0,0},            {0,0,0},        {0.02,0.02,0.02}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_MINIWORM,      "spine_C0_1_jnt",           {0,1.243723,0},     {5,0,0},        {1,1,1}                 ),
                ApplyTransform(FILE_SCENE_BOBBLE_MINIWORM,      "spine_C0_2_jnt",           {0,1.24371,0},      {5,0,0},        {1,1,1}                 ),
                ApplyTransform(FILE_SCENE_BOBBLE_MINIWORM,      "spine_C0_3_jnt",           {0,1.243716,0},     {5,0,0},        {1,1,1}                 ),
                ApplyTransform(FILE_SCENE_BOBBLE_MINIWORM,      "spine_C0_4_jnt",           {0,1.243716,0},     {5,0,0},        {1,1,1}                 ),
                ApplyTransform(FILE_SCENE_BOBBLE_MINIWORM,      "spine_C0_5_jnt",           {0,1.24371,0},      {5,0,0},        {1,1,1}                 ),
                ApplyTransform(FILE_SCENE_BOBBLE_MINIWORM,      "spine_C0_6_jnt",           {0,1.243723,0},     {5,0,0},        {1,1,1}                 ),

                ApplyTransform(FILE_SCENE_BOBBLE_HYDROPOD,      "PodGrowing",               {0,0.08,0},         {0,0,0},        {0.05,0.05,0.05}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_HYDROPOD,      "HydroSparksEmitterREF",    {0,0.08,0},         {0,0,0},        {0.05,0.05,0.05}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_HYDROPOD,      "GlowRingRef",              {0,-0.02,0},        {0,0,0},        {0.1,0.1,0.1}           ),
                ApplyTransform(FILE_SCENE_BOBBLE_SHARD,         "Shard",                    {0,0.05,0},         {0,0,0},        {0.03,0.03,0.03}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_SHARD,         "GlowRingRef",              {0,-0.02,0},        {0,0,0},        {0.1,0.1,0.1}           ),
                ApplyTransform(FILE_SCENE_BOBBLE_OSSIFIED,      "IGNORE",                   {0,0,0},            {0,0,0},        {0.04,0.04,0.04}        ),

                ApplyTransform(FILE_SCENE_BOBBLE_GLOWGLOBE,     "Data",                     {0,0,0},            {0,0,0},        {0.06,0.06,0.06}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_GLOWGLOBE,     "CartographDevice",         {0,0.10,0},         {0,0,0},        {0.06,0.06,0.06}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_GLOWGLOBE,     "GlowGlobe",                {0,0.10,0},         {0,0,0},        {0.06,0.06,0.06}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_NEXUSORB,      "IGNORE",                   {0,0,0},            {0,0,0},        {0.08,0.08,0.08}        ),
                ApplyTransform(FILE_SCENE_BOBBLE_SHIELDGEN,     "IGNORE",                   {0,0,0},            {0,0,0},        {0.0012,0.0012,0.0012}  ),
                ApplyTransform(FILE_SCENE_BOBBLE_SHIELDGEN,     "RefCore",                  {0,56,0},           {0,0,0},        {1,1,1}                 ),

                --------------------------------------------------
                -- remove selected nodes and LOD data
                --------------------------------------------------
                RemoveNodes(FILE_SCENE_BOBBLE_GLOWRING,         {"Name","DroneJNT"}     ),
                RemoveNodes(FILE_SCENE_BOBBLE_LAYLAPS,          NODES_LAYLAPS           ),
                RemoveNodes(FILE_SCENE_BOBBLE_CRYSDRONE,        NODES_CRYSDRONE         ),
                RemoveNodes(FILE_SCENE_BOBBLE_STONE,            NODES_STONE             ),
                RemoveNodes(FILE_SCENE_BOBBLE_JELLYFISH,        {"Name","Data"}         ),
                RemoveNodes(FILE_SCENE_BOBBLE_SPACEEGG,         NODES_SPACEEGG          ),
                RemoveNodes(FILE_SCENE_BOBBLE_MINIWORM,         NODES_MINIWORM          ),
                RemoveNodes(FILE_SCENE_BOBBLE_HYDROPOD,         NODES_HYDRPOD           ),
                RemoveNodes(FILE_SCENE_BOBBLE_SHARD,            {"Name","INTERACT"}     ),
                RemoveNodes(FILE_SCENE_BOBBLE_GLOWGLOBE,        NODES_GLOWGLOBE         ),
                RemoveNodes(FILE_SCENE_BOBBLE_NEXUSORB,         NODES_NEXUSORB          ),
                RemoveNodes(FILE_SCENE_BOBBLE_SHIELDGEN,        NODES_SHIELDGEN         ),
                RemoveNodes(FILE_SCENE_BOBBLE_SHIELDCORE,       NODES_SHIELDCORE        ),
   
                RemoveLODs(FILE_SCENE_BOBBLE_CRYSDRONE,3),
                RemoveLODs(FILE_SCENE_BOBBLE_STONE,4),
                RemoveLODs(FILE_SCENE_BOBBLE_HYDROPOD,2),
                RemoveLODs(FILE_SCENE_BOBBLE_GLOWGLOBE,3),
                RemoveLODs(FILE_SCENE_BOBBLE_NEXUSORB,2),
                RemoveLODs(FILE_SCENE_BOBBLE_SHIELDGEN,3),

                --------------------------------------------------
                -- other reworks
                --------------------------------------------------
                ReplaceMaterial(FILE_SCENE_BOBBLE_CRYSTAL,FILE_MATERIAL_BOBBLE_CRYSTAL),
                ReplaceDiffuseMap(FILE_MATERIAL_BOBBLE_CRYSTAL,"TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/CRYSTAL.DDS"),

                {
                    -- point shield gen bobblehead to a new core scene
                    ["MBIN_FILE_SOURCE"] = FILE_SCENE_BOBBLE_SHIELDGEN,
                    ["EXML_CHANGE_TABLE"] = {{["SKW"] = {"Name","RefCore",},["VCT"] = {{"Value",FILE_SCENE_BOBBLE_SHIELDCORE,},},},}
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------