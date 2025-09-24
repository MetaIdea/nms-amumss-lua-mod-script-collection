----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "CustomCorvetteInteriorModules"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "605"
METADATA_MOD_DESC       = "This mod adds couple new functional interior modules for Corvette habs."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_METADATA_BASEPARTS_PRODUCTS =          "METADATA\REALITY\TABLES\NMS_BASEPARTPRODUCTS.MBIN"
FILE_METADATA_BASEPARTS_OBJECTSTABLE =      "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"
FILE_METADATA_BASEPARTS_PARTSTABLE =        "METADATA\REALITY\TABLES\BASEBUILDINGPARTSTABLE.MBIN"

FILE_GAMESTATE_DIFFICULTY =                 "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN"

--------------------------------------------------
-- templates and new files
--------------------------------------------------

FILE_MODELS_VANILLA_TYPEA_WALL_REF =        "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_EMPTY0.SCENE.MBIN"
FILE_MODELS_VANILLA_TYPEA_EMPTY =           "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_A2.SCENE.MBIN"
FILE_MODELS_VANILLA_TYPEB_EMPTY =           "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_EMPTY0.SCENE.MBIN"
FILE_MODELS_VANILLA_TYPEC_EMPTY =           "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_EMPTY0.SCENE.MBIN"

FILE_MODELS_VANILLA_SUITSHOP =              "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\SUITSHOP_SUITSLOTPOINT.SCENE.MBIN"
FILE_MODELS_MODDED_CUSTOMISER =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\CUSTOMISER.SCENE.MBIN"

FILE_ENTITY_VANILLA_CUSTOMISER =            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATIONTYPEB\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN"
FILE_ENTITY_MODDED_CUSTOMISER =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\CUSTOMISER.ENTITY.MBIN"

FILE_MATERIAL_VANILLA_CUSTOMISER =          "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\SUITSHOP_SUITSLOTPOINT\COMMONTILED_MAT.MATERIAL.MBIN"
FILE_MATERIAL_MODDED_CUSTOMISER =           "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\CUSTOMISER.MATERIAL.MBIN"

FILE_MODELS_VANILLA_EXTRACTOR =             "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN"
FILE_MODELS_MODDED_EXTRACTOR =              "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\EXTRACTOR.SCENE.MBIN"



--------------------------------------------------
-- data structures for new rooms
--------------------------------------------------

-- appearance modifier
DATA_ROOM_DRESS =
{
["ID"] = "B_WALL_DRESS",
["Style"] = "Wood",

["Name"] = "DRESSING_TABLE_NAME",
["NameLower"] = "DRESSING_TABLE_NAME_L",
["Description"] = "DRESSING_TABLE_DESC",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.DRESSINGROOM.DDS",

["1"] = {"LAND2","Substance",30},
["2"] = {"POWERCELL","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_A_DRESS.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_DRESS.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_C_DRESS.SCENE.MBIN",
}

-- weapon rack
DATA_ROOM_WEAPONS =
{
["ID"] = "B_WALL_WEAPON",
["Style"] = "Metal",

["Name"] = "BLD_WEAPONRACK_NAME",
["NameLower"] = "BLD_WEAPONRACK_NAME_L",
["Description"] = "BLD_WEAPONRACK_DESC",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECORATION.WEAPONRACK.DDS",

["1"] = {"CAVE1","Substance",30},
["2"] = {"MICROCHIP","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_A_WEAPONS.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_WEAPONS.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_C_WEAPONS.SCENE.MBIN",
}   

-- stellar extractor
DATA_ROOM_STELLAR =
{
["ID"] = "B_WALL_GASES",
["Style"] = "Concrete",

["Name"] = "BLD_FRE_ROOM_EXTR_NAME",
["NameLower"] = "BLD_FRE_ROOM_EXTR_NAME_L",
["Description"] = "BLD_FRE_ROOM_EXTR_DESC",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.GASHARVESTER.DDS",

["1"] = {"STELLAR2","Substance",50},
["2"] = {"BIO","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_A_GASES.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_GASES.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_C_GASES.SCENE.MBIN",
}   

--------------------------------------------------
-- functions for products
--------------------------------------------------

local function Products_GetTemplate(section) return
{   ["SKW"] = {"ID","B_WALL_TOIL0",},   ["SEC_SAVE_TO"] = section,  }
end

local function Products_ChangeData(section,data) return
{   ["SEC_EDIT"] = section,     ["VCT"] = {{"ID",data["ID"],},{"Name",data["Name"],},{"NameLower",data["NameLower"],},{"Description",data["Description"],},},     }
end

local function Products_ChangeIcon(section,data) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"Icon","TkTextureResource",},    ["VCT"] = {{"Filename",data["Icon"],},},    }
end

local function Products_ChangeCrafting(section,data,slot) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"Requirements","GcTechnologyRequirement",},  ["SECTION_ACTIVE"] = slot-1,
    ["VCT"] = {{"ID",data[slot][1],},{"InventoryType",data[slot][2],},{"Amount",data[slot][3],},},     }
end

local function Products_AddProduct(section) return
{   ["PKW"] = "Table",  ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = section,    }
end

--------------------------------------------------
-- functions for objects
--------------------------------------------------

local function Objects_GetTemplate(section) return
{   ["SKW"] = {"ID","B_WALL_TOIL0",},   ["SEC_SAVE_TO"] = section,  }
end

local function Objects_ChangeID(section,data) return
{   ["SEC_EDIT"] = section,     ["VCT"] = {{"ID",data["ID"],},},  }
end

local function Objects_ChangeStyle(section,data) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"Style","GcBaseBuildingPartStyle",},     ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"Style",data["Style"],},},  }
end

local function Objects_SetModGroup(section) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"Groups","GcBaseBuildingEntryGroup",},   ["VCT"] = {{"SubGroupName","BIGGS_INT_MOD",},},     }
end

local function Objects_AddObject(section) return
{   ["PKW"] = "Objects",    ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = section,    }
end                                        
                        
--------------------------------------------------
-- functions for parts
--------------------------------------------------                  

local function Parts_GetTemplate(section,id) return
{   ["SKW"] = {"ID",id,"StyleModels","GcBaseBuildingPartStyleModel",},      ["SECTION_ACTIVE"] = 0,     ["SEC_SAVE_TO"] = section,  }
end

local function Parts_ChangeStyle(section,data) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"Style","GcBaseBuildingPartStyle",},     ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"Style",data["Style"],},},  }
end

local function Parts_ChangeScene(section,data,type) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"Model","TkModelResource",},     ["VCT"] = {{"Filename",data[type],},},     }
end

local function Parts_AddPart(section,id) return
{    ["SKW"] = {"ID",id,},      ["PKW"] = "StyleModels",    ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = section,    }
end

--------------------------------------------------
-- other functions
--------------------------------------------------

local function Difficulty_AddRegularKnown(data) return
{
["SKW"] = {"StartWithAllItemsKnownDisabledData","GcDifficultyStartWithAllItemsKnownOptionData"},
["PKW"] = "KnownProducts",
["ADD_OPTION"] = "ADDendSECTION",
["ADD"] = [[<Property name="KnownProducts" value="]]..data["ID"]..[["/>]],
}
end

local function Difficulty_AddAllKnown(data) return
{
["SKW"] = {"StartWithAllItemsKnownEnabledData","GcDifficultyStartWithAllItemsKnownOptionData"},
["PKW"] = "KnownProducts",
["ADD_OPTION"] = "ADDendSECTION",
["ADD"] = [[<Property name="KnownProducts" value="]]..data["ID"]..[["/>]],
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
        ["MBIN_CHANGE_TABLE"]   =
        {
            {
                --------------------------------------------------
                -- difficulty config MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_DIFFICULTY,
                ["MXML_CHANGE_TABLE"] =
                {
                    -- appearance modifier
                    Difficulty_AddRegularKnown(DATA_ROOM_DRESS),
                    Difficulty_AddAllKnown(DATA_ROOM_DRESS),

                    -- weapon rack
                    Difficulty_AddRegularKnown(DATA_ROOM_WEAPONS),
                    Difficulty_AddAllKnown(DATA_ROOM_WEAPONS),

                    -- stellar extractor
                    Difficulty_AddRegularKnown(DATA_ROOM_STELLAR),
                    Difficulty_AddAllKnown(DATA_ROOM_STELLAR),
                },
            },

            {
                --------------------------------------------------
                -- base parts products MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_BASEPARTS_PRODUCTS,
                ["MXML_CHANGE_TABLE"] =
                {
                    -- appearance modifier
                    Products_GetTemplate("SEC_PRODUCT_DRESS"),
                    Products_ChangeData("SEC_PRODUCT_DRESS",DATA_ROOM_DRESS),
                    Products_ChangeIcon("SEC_PRODUCT_DRESS",DATA_ROOM_DRESS),
                    Products_ChangeCrafting("SEC_PRODUCT_DRESS",DATA_ROOM_DRESS,"1"),
                    Products_ChangeCrafting("SEC_PRODUCT_DRESS",DATA_ROOM_DRESS,"2"),
                    Products_AddProduct("SEC_PRODUCT_DRESS"),

                    -- weapon rack
                    Products_GetTemplate("SEC_PRODUCT_WEAPON"),
                    Products_ChangeData("SEC_PRODUCT_WEAPON",DATA_ROOM_WEAPONS),
                    Products_ChangeIcon("SEC_PRODUCT_WEAPON",DATA_ROOM_WEAPONS),
                    Products_ChangeCrafting("SEC_PRODUCT_WEAPON",DATA_ROOM_WEAPONS,"1"),
                    Products_ChangeCrafting("SEC_PRODUCT_WEAPON",DATA_ROOM_WEAPONS,"2"),
                    Products_AddProduct("SEC_PRODUCT_WEAPON"),

                    -- stellar extractor
                    Products_GetTemplate("SEC_PRODUCT_GASES"),
                    Products_ChangeData("SEC_PRODUCT_GASES",DATA_ROOM_STELLAR),
                    Products_ChangeIcon("SEC_PRODUCT_GASES",DATA_ROOM_STELLAR),
                    Products_ChangeCrafting("SEC_PRODUCT_GASES",DATA_ROOM_STELLAR,"1"),
                    Products_ChangeCrafting("SEC_PRODUCT_GASES",DATA_ROOM_STELLAR,"2"),
                    Products_AddProduct("SEC_PRODUCT_GASES"),
                },
            },

            {
                --------------------------------------------------
                -- base objects table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_BASEPARTS_OBJECTSTABLE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get template for modded rooms group
                        ["SKW"] = {"Id","BIGGS_INT_DEC",},
                        ["SEC_SAVE_TO"] = "SEC_OBJECT_GROUP",
                    },

                    {
                        -- edit the ID and name displayed
                        ["SEC_EDIT"] = "SEC_OBJECT_GROUP",
                        ["VCT"] = {{"Id","BIGGS_INT_MOD",},{"Name","UI_OPTIONS_MISC",},},
                    },

                    {
                        -- add new group to interiors family
                        ["SKW"] = {"Id","BIGGS_IN_STOR",},
                        ["ADD_OPTION"] = "ADDafterSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_OBJECT_GROUP",
                    },

                    -- appearance modifier
                    Objects_GetTemplate("SEC_OBJECT_DRESS"),
                    Objects_ChangeID("SEC_OBJECT_DRESS",DATA_ROOM_DRESS),
                    Objects_ChangeStyle("SEC_OBJECT_DRESS",DATA_ROOM_DRESS),
                    Objects_SetModGroup("SEC_OBJECT_DRESS"),
                    Objects_AddObject("SEC_OBJECT_DRESS"),

                    -- weapon rack
                    Objects_GetTemplate("SEC_OBJECT_WEAPON"),
                    Objects_ChangeID("SEC_OBJECT_WEAPON",DATA_ROOM_WEAPONS),
                    Objects_ChangeStyle("SEC_OBJECT_WEAPON",DATA_ROOM_WEAPONS),
                    Objects_SetModGroup("SEC_OBJECT_WEAPON"),
                    Objects_AddObject("SEC_OBJECT_WEAPON"),

                    -- stellar extractor
                    Objects_GetTemplate("SEC_OBJECT_GASES"),
                    Objects_ChangeID("SEC_OBJECT_GASES",DATA_ROOM_STELLAR),
                    Objects_ChangeStyle("SEC_OBJECT_GASES",DATA_ROOM_STELLAR),
                    Objects_SetModGroup("SEC_OBJECT_GASES"),
                    Objects_AddObject("SEC_OBJECT_GASES"),
                },
            },

            {
                --------------------------------------------------
                -- base parts table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_BASEPARTS_PARTSTABLE,
                ["MXML_CHANGE_TABLE"] =
                {
                    -- appearance modifier
                    -- type A
                    Parts_GetTemplate("SEC_PART_DRESS_EWA","_BIGGS_WALL_EW_A"),
                    Parts_ChangeStyle("SEC_PART_DRESS_EWA",DATA_ROOM_DRESS),
                    Parts_ChangeScene("SEC_PART_DRESS_EWA",DATA_ROOM_DRESS,"TypeA"),
                    Parts_AddPart("SEC_PART_DRESS_EWA","_BIGGS_WALL_EW_A"),
                    -- type B
                    Parts_GetTemplate("SEC_PART_DRESS_EWB","_BIGGS_WALL_EW_B"),
                    Parts_ChangeStyle("SEC_PART_DRESS_EWB",DATA_ROOM_DRESS),
                    Parts_ChangeScene("SEC_PART_DRESS_EWB",DATA_ROOM_DRESS,"TypeB"),
                    Parts_AddPart("SEC_PART_DRESS_EWB","_BIGGS_WALL_EW_B"),
                    -- type C
                    Parts_GetTemplate("SEC_PART_DRESS_EWC","_BIGGS_WALL_EW_C"),
                    Parts_ChangeStyle("SEC_PART_DRESS_EWC",DATA_ROOM_DRESS),
                    Parts_ChangeScene("SEC_PART_DRESS_EWC",DATA_ROOM_DRESS,"TypeC"),
                    Parts_AddPart("SEC_PART_DRESS_EWC","_BIGGS_WALL_EW_C"),

                    -- weapon rack
                    -- type A
                    Parts_GetTemplate("SEC_PART_WEAPON_EWA","_BIGGS_WALL_EW_A"),
                    Parts_ChangeStyle("SEC_PART_WEAPON_EWA",DATA_ROOM_WEAPONS),
                    Parts_ChangeScene("SEC_PART_WEAPON_EWA",DATA_ROOM_WEAPONS,"TypeA"),
                    Parts_AddPart("SEC_PART_WEAPON_EWA","_BIGGS_WALL_EW_A"),
                    -- type B
                    Parts_GetTemplate("SEC_PART_WEAPON_EWB","_BIGGS_WALL_EW_B"),
                    Parts_ChangeStyle("SEC_PART_WEAPON_EWB",DATA_ROOM_WEAPONS),
                    Parts_ChangeScene("SEC_PART_WEAPON_EWB",DATA_ROOM_WEAPONS,"TypeB"),
                    Parts_AddPart("SEC_PART_WEAPON_EWB","_BIGGS_WALL_EW_B"),
                    -- type C
                    Parts_GetTemplate("SEC_PART_WEAPON_EWC","_BIGGS_WALL_EW_C"),
                    Parts_ChangeStyle("SEC_PART_WEAPON_EWC",DATA_ROOM_WEAPONS),
                    Parts_ChangeScene("SEC_PART_WEAPON_EWC",DATA_ROOM_WEAPONS,"TypeC"),
                    Parts_AddPart("SEC_PART_WEAPON_EWC","_BIGGS_WALL_EW_C"),

                    -- stellar extractor room
                    -- type A
                    Parts_GetTemplate("SEC_PART_GASES_EWA","_BIGGS_WALL_EW_A"),
                    Parts_ChangeStyle("SEC_PART_GASES_EWA",DATA_ROOM_STELLAR),
                    Parts_ChangeScene("SEC_PART_GASES_EWA",DATA_ROOM_STELLAR,"TypeA"),
                    Parts_AddPart("SEC_PART_GASES_EWA","_BIGGS_WALL_EW_A"),
                    -- type B
                    Parts_GetTemplate("SEC_PART_GASES_EWB","_BIGGS_WALL_EW_B"),
                    Parts_ChangeStyle("SEC_PART_GASES_EWB",DATA_ROOM_STELLAR),
                    Parts_ChangeScene("SEC_PART_GASES_EWB",DATA_ROOM_STELLAR,"TypeB"),
                    Parts_AddPart("SEC_PART_GASES_EWB","_BIGGS_WALL_EW_B"),
                    -- type C
                    Parts_GetTemplate("SEC_PART_GASES_EWC","_BIGGS_WALL_EW_C"),
                    Parts_ChangeStyle("SEC_PART_GASES_EWC",DATA_ROOM_STELLAR),
                    Parts_ChangeScene("SEC_PART_GASES_EWC",DATA_ROOM_STELLAR,"TypeC"),
                    Parts_AddPart("SEC_PART_GASES_EWC","_BIGGS_WALL_EW_C"),
                },
            },

            {
                ["MBIN_FILE_SOURCE"] =
                {
                    -- appearance modifier module
                    {   FILE_MODELS_VANILLA_TYPEA_EMPTY,    DATA_ROOM_DRESS["TypeA"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_TYPEB_EMPTY,    DATA_ROOM_DRESS["TypeB"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_TYPEC_EMPTY,    DATA_ROOM_DRESS["TypeC"],           "REMOVE" },

                    -- appearance modifier extras
                    {   FILE_MODELS_VANILLA_SUITSHOP,       FILE_MODELS_MODDED_CUSTOMISER,      "REMOVE" },
                    {   FILE_ENTITY_VANILLA_CUSTOMISER,     FILE_ENTITY_MODDED_CUSTOMISER,      "REMOVE" },
                    {   FILE_MATERIAL_VANILLA_CUSTOMISER,   FILE_MATERIAL_MODDED_CUSTOMISER,    "REMOVE" },

                    -- weapon rack module
                    {   FILE_MODELS_VANILLA_TYPEA_EMPTY,    DATA_ROOM_WEAPONS["TypeA"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_TYPEB_EMPTY,    DATA_ROOM_WEAPONS["TypeB"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_TYPEC_EMPTY,    DATA_ROOM_WEAPONS["TypeC"],         "REMOVE" },

                    -- stellar extractor module
                    {   FILE_MODELS_VANILLA_TYPEA_EMPTY,    DATA_ROOM_STELLAR["TypeA"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_TYPEB_EMPTY,    DATA_ROOM_STELLAR["TypeB"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_TYPEC_EMPTY,    DATA_ROOM_STELLAR["TypeC"],         "REMOVE" },

                    -- stellar extractor extras
                    {   FILE_MODELS_VANILLA_EXTRACTOR,      FILE_MODELS_MODDED_EXTRACTOR,       "REMOVE" },
                }
            },

            ----------------------------------------------------------------------------------------------------
            -- appearance modifier modules
            ----------------------------------------------------------------------------------------------------

            {
                -- type A empty wall reference
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_VANILLA_TYPEA_WALL_REF,
                ["MBIN_FS_DISCARD"] = "TRUE",
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- get wall reference
                        ["SKW"] = {{"Type","REFERENCE",},},
                        ["SEC_SAVE_TO"] = "SEC_WALL_TYPEA",
                    },

                    {
                        -- get template of reference for other stuff
                        ["SKW"] = {{"Type","REFERENCE",},},
                        ["SEC_SAVE_TO"] = "SEC_REFERENCE",
                    },
                },
            },

            {
                -- customiser entity MBIN
                ["MBIN_FILE_SOURCE"] = FILE_ENTITY_MODDED_CUSTOMISER,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- remove nodes
                        ["SKW"] = 
                        {
                            {"Components","TkAudioComponentData",},
                            {"Components","TkAnimationComponentData",},
                            {"Components","TkSketchComponentData",},
                        },
                        ["REMOVE"] = "SECTION",
                    },
                },
            },

            {
                -- customiser material MBIN
                ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_MODDED_CUSTOMISER,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- link new texture
                        ["SKW"] = {"Name","gDiffuseMap",},
                        ["VCT"] = {{"Map","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\COMMONTILLED.DDS",},},  
                    },
                },
            },

            {
                -- customiser tube MBIN
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_MODDED_CUSTOMISER,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\CUSTOMISER",},{"NameHash",0,},},
                    },

                    {
                        -- remove nodes
                        ["SKW"] = {{"Name","CryoON",},},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- replace entity
                        ["SKW"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\CRYOCHAMBER\ENTITIES\CRYOCHAMBERINTERACTION.ENTITY.MBIN",},
                        ["VCT"] = {{"Value",FILE_ENTITY_MODDED_CUSTOMISER,},}
                    },

                    {
                        -- replace materials
                        ["SKW"] = {"Value","MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\SUITSHOP_SUITSLOTPOINT\COMMONTILED_MAT.MATERIAL.MBIN",},
                        ["REPLACE_TYPE"] = "ALL",
                        ["VCT"] = {{"Value",FILE_MATERIAL_MODDED_CUSTOMISER,},}
                    },
                },
            },

            {
                -- type A scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_DRESS["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_DRESS",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- add reference node with wall
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_WALL_TYPEA",
                    },

                    {
                        -- edit the reference node for tube
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_CUSTOMISER",},{"NameHash",0,},
                            {"TransX",1.5,},{"TransY",0.1,},{"TransZ",1,},
                            {"ScaleX",0.8,},{"ScaleY",0.8,},{"ScaleZ",0.8,},
                            {"Value",FILE_MODELS_MODDED_CUSTOMISER,},
                        },
                    },

                    {
                        -- add reference node with tube
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            {
                -- type B scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_DRESS["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_DRESS",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- edit the reference node for tube
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_CUSTOMISER",},{"NameHash",0,},
                            {"TransX",-1.5,},{"TransY",0.1,},{"TransZ",1,},
                            {"ScaleX",0.8,},{"ScaleY",0.8,},{"ScaleZ",0.8,},
                            {"Value",FILE_MODELS_MODDED_CUSTOMISER,},
                        },
                    },

                    {
                        -- add reference node with tube
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            {
                -- type C scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_DRESS["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_DRESS",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- edit the reference node for tube
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_CUSTOMISER",},{"NameHash",0,},
                            {"TransX",0,},{"TransY",0.1,},{"TransZ",1.5,},
                            {"ScaleX",0.8,},{"ScaleY",0.8,},{"ScaleZ",0.8,},
                            {"Value",FILE_MODELS_MODDED_CUSTOMISER,},
                        },
                    },

                    {
                        -- add reference node with tube
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            ----------------------------------------------------------------------------------------------------
            -- weapon rack modules
            ----------------------------------------------------------------------------------------------------

            {
                -- type A scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_WEAPONS["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_WEAPONS",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- add reference node with wall
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_WALL_TYPEA",
                    },

                    {
                        -- edit the reference node for weapon rack
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_WEAPONS",},{"NameHash",0,},
                            {"TransX",-1,},{"TransY",1.4,},{"TransZ",0.3,},
                            {"RotX",90,},{"RotY",0,},{"RotZ",0,},
                            {"ScaleX",0.6,},{"ScaleY",0.6,},{"ScaleZ",0.6,},
                            {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK.SCENE.MBIN",},
                        },
                    },

                    {
                        -- add reference node with weapon rack
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            {
                -- type B scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_WEAPONS["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_WEAPONS",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- edit the reference node for weapon rack
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_WEAPONS",},{"NameHash",0,},
                            {"TransX",1.4,},{"TransY",1.4,},{"TransZ",0.4,},
                            {"RotX",90,},{"RotY",0,},{"RotZ",0,},
                            {"ScaleX",0.6,},{"ScaleY",0.6,},{"ScaleZ",0.6,},
                            {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK.SCENE.MBIN",},
                        },
                    },

                    {
                        -- add reference node with weapon rack
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            {
                -- type C scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_WEAPONS["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_WEAPONS",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- edit the reference node for weapon rack
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_WEAPONS",},{"NameHash",0,},
                            {"TransX",0,},{"TransY",1.8,},{"TransZ",0.2,},
                            {"RotX",90,},{"RotY",0,},{"RotZ",0,},
                            {"ScaleX",0.6,},{"ScaleY",0.6,},{"ScaleZ",0.6,},
                            {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK.SCENE.MBIN",},
                        },
                    },

                    {
                        -- add reference node with weapon rack
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            ----------------------------------------------------------------------------------------------------
            -- stellar extractor modules
            ----------------------------------------------------------------------------------------------------

            {
                -- extractor device MBIN
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_MODDED_EXTRACTOR,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\EXTRACTOR",},{"NameHash",0,},},
                    },

                    {
                        -- remove nodes
                        ["SKW"] = {"Name","RefIndustrialFloor",},
                        ["REMOVE"] = "SECTION",
                    },
                },
            },

            {
                -- type A scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_STELLAR["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_GASES",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- add reference node with wall
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_WALL_TYPEA",
                    },

                    {
                        -- edit the reference node for extractor device
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_EXTRACTOR",},{"NameHash",0,},
                            {"TransX",1,},{"TransY",0.4,},{"TransZ",0.86,},
                            {"RotX",0,},{"RotY",0,},{"RotZ",0,},
                            {"ScaleX",0.5,},{"ScaleY",0.5},{"ScaleZ",0.5,},
                            {"Value",FILE_MODELS_MODDED_EXTRACTOR,},
                        },
                    },

                    {
                        -- add reference node with extractor device
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            {
                -- type B scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_STELLAR["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_GASES",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- edit the reference node for extractor device
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_EXTRACTOR",},{"NameHash",0,},
                            {"TransX",-1.5,},{"TransY",0.4,},{"TransZ",0.85,},
                            {"RotX",0,},{"RotY",0,},{"RotZ",0,},
                            {"ScaleX",0.5,},{"ScaleY",0.5},{"ScaleZ",0.5,},
                            {"Value",FILE_MODELS_MODDED_EXTRACTOR,},
                        },
                    },

                    {
                        -- add reference node with extractor device
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

            {
                -- type C scene MBIN
                ["MBIN_FILE_SOURCE"] = DATA_ROOM_STELLAR["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- change name and namehash
                        ["VCT"] = {{"Name","MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_GASES",},{"NameHash",0,},},
                    },

                    {
                        -- remove DATA node
                        ["SKW"] = {"Name","Data",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- edit the reference node for extractor device
                        ["SEC_EDIT"] = "SEC_REFERENCE",
                        ["VCT"] = 
                        {
                            {"Name","REF_EXTRACTOR",},{"NameHash",0,},
                            {"TransX",0,},{"TransY",0.4,},{"TransZ",0.8,},
                            {"RotX",0,},{"RotY",0,},{"RotZ",0,},
                            {"ScaleX",0.5,},{"ScaleY",0.5},{"ScaleZ",0.5,},
                            {"Value",FILE_MODELS_MODDED_EXTRACTOR,},
                        },
                    },

                    {
                        -- add reference node with extractor device
                        ["PKW"] = "Children",
                        ["ADD_OPTION"] = "ADDendSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                    },
                },
            },

        }
    }
},
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------