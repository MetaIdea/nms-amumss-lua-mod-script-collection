----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "CustomCorvetteInteriorModules"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
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

FILE_MODELS_VANILLA_EWA_BLANK =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_EMPTY0.SCENE.MBIN"

FILE_MODELS_VANILLA_EWA_EMPTY =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_A2.SCENE.MBIN"
FILE_MODELS_VANILLA_EWB_EMPTY =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_EMPTY0.SCENE.MBIN"
FILE_MODELS_VANILLA_EWC_EMPTY =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_EMPTY0.SCENE.MBIN"

FILE_MODELS_VANILLA_NSA_EMPTY =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_A_EMPTY1.SCENE.MBIN"
FILE_MODELS_VANILLA_NSB_EMPTY =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_B_EMPTY1.SCENE.MBIN"
FILE_MODELS_VANILLA_NSC_EMPTY =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_C_EMPTY1.SCENE.MBIN"

FILE_MODELS_VANILLA_SUITSHOP =              "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\SUITSHOP_SUITSLOTPOINT.SCENE.MBIN"
FILE_MODELS_MODDED_CUSTOMISER =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\CUSTOMISER.SCENE.MBIN"

FILE_ENTITY_VANILLA_CUSTOMISER =            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATIONTYPEB\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN"
FILE_ENTITY_MODDED_CUSTOMISER =             "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\CUSTOMISER.ENTITY.MBIN"

FILE_MODELS_VANILLA_WEAPONRACK =            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WEAPONRACK.SCENE.MBIN"

FILE_MODELS_VANILLA_EXTRACTOR =             "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0.SCENE.MBIN"
FILE_MODELS_MODDED_EXTRACTOR =              "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\EXTRACTOR.SCENE.MBIN"

FILE_ENTITY_VANILLA_EXTRACTOR =             "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN"
FILE_ENTITY_MODDED_EXTRACTOR =              "MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\EXTRACTOR.ENTITY.MBIN"



--------------------------------------------------
-- data structures for new rooms
--------------------------------------------------

-- empty wall EW
DATA_BLANK_EW =
{
["ID"] = "B_EW_BLANK",
["Style"] = "None",
["Show"] = "true",

["Name"] = "TEXT_WALL_BLANK_EW_N",
["NameLower"] = "TEXT_WALL_BLANK_EW_L",
["Description"] = "TEXT_WALL_BLANK_EW_D",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.CUBEINNERWALL.DDS",

["1"] = {"LAND2","Substance",50},
["2"] = {"CARBON_SEAL","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_A_BLANK.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_BLANK.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_C_BLANK.SCENE.MBIN",
}

-- appearance modifier EW
DATA_DRESS_EW =
{
["ID"] = "B_EW_DRESS",
["Style"] = "Wood",
["Show"] = "true",

["Name"] = "TEXT_WALL_DRESS_EW_N",
["NameLower"] = "TEXT_WALL_DRESS_EW_L",
["Description"] = "TEXT_WALL_DRESS_EW_D",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.DRESSINGROOM.DDS",

["1"] = {"ASTEROID1","Substance",50},
["2"] = {"POWERCELL","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_A_DRESS.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_DRESS.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_C_DRESS.SCENE.MBIN",
}

-- appearance modifier NS
DATA_DRESS_NS =
{
["ID"] = "B_NS_DRESS",
["Style"] = "Wood",
["Show"] = "true",

["Name"] = "TEXT_WALL_DRESS_NS_N",
["NameLower"] = "TEXT_WALL_DRESS_NS_L",
["Description"] = "TEXT_WALL_DRESS_NS_D",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.DRESSINGROOM.DDS",

["1"] = {"ASTEROID1","Substance",50},
["2"] = {"POWERCELL","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_A_DRESS.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_B_DRESS.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_C_DRESS.SCENE.MBIN",
}

-- weapon rack EW
DATA_WEAPONS_EW =
{
["ID"] = "B_EW_WEAPONS",
["Style"] = "Metal",
["Show"] = "true",

["Name"] = "TEXT_WALL_WEAPONS_EW_N",
["NameLower"] = "TEXT_WALL_WEAPONS_EW_L",
["Description"] = "TEXT_WALL_WEAPONS_EW_D",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECORATION.WEAPONRACK.DDS",

["1"] = {"CAVE1","Substance",50},
["2"] = {"MICROCHIP","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_A_WEAPONS.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_WEAPONS.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_C_WEAPONS.SCENE.MBIN",
}

-- weapon rack NS
DATA_WEAPONS_NS =
{
["ID"] = "B_NS_WEAPONS",
["Style"] = "Metal",
["Show"] = "true",

["Name"] = "TEXT_WALL_WEAPONS_NS_N",
["NameLower"] = "TEXT_WALL_WEAPONS_NS_L",
["Description"] = "TEXT_WALL_WEAPONS_NS_D",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECORATION.WEAPONRACK.DDS",

["1"] = {"CAVE1","Substance",50},
["2"] = {"MICROCHIP","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_A_WEAPONS.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_B_WEAPONS.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_C_WEAPONS.SCENE.MBIN",
}  

-- stellar extractor EW
DATA_STELLAR_EW =
{
["ID"] = "B_EW_STELLAR",
["Style"] = "Concrete",
["Show"] = "true",

["Name"] = "TEXT_WALL_STELLAR_EW_N",
["NameLower"] = "TEXT_WALL_STELLAR_EW_L",
["Description"] = "TEXT_WALL_STELLAR_EW_D",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/UTILITY.EXTRACTOR_SMALL.DDS",

["1"] = {"STELLAR2","Substance",50},
["2"] = {"BIO","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_A_STELLAR.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_B_STELLAR.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_EW_C_STELLAR.SCENE.MBIN",
}   

-- stellar extractor NS
DATA_STELLAR_NS =
{
["ID"] = "B_NS_STELLAR",
["Style"] = "Concrete",
["Show"] = "true",

["Name"] = "TEXT_WALL_STELLAR_NS_N",
["NameLower"] = "TEXT_WALL_STELLAR_NS_L",
["Description"] = "TEXT_WALL_STELLAR_NS_D",
["Icon"] = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/UTILITY.EXTRACTOR_SMALL.DDS",

["1"] = {"STELLAR2","Substance",50},
["2"] = {"BIO","Product",2},

["TypeA"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_A_STELLAR.SCENE.MBIN",
["TypeB"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_B_STELLAR.SCENE.MBIN",
["TypeC"] = "MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/PARTS/WALL_NS_C_STELLAR.SCENE.MBIN",
}



--------------------------------------------------
-- functions for products
--------------------------------------------------

local function Products_GetTemplate() return
{   ["SKW"] = {"ID","B_WALL_TOIL0",},   ["SEC_SAVE_TO"] = "SEC_PRODUCT",  }
end

local function Products_ChangeData(data) return
{   ["SEC_EDIT"] = "SEC_PRODUCT",   ["VCT"] = {{"ID",data["ID"],},{"Name",data["Name"],},{"NameLower",data["NameLower"],},{"Description",data["Description"],},},     }
end

local function Products_ChangeIcon(data) return
{   ["SEC_EDIT"] = "SEC_PRODUCT",   ["SKW"] = {"Icon","TkTextureResource",},    ["VCT"] = {{"Filename",data["Icon"],},},    }
end

local function Products_ChangeCrafting(data,slot) return
{   ["SEC_EDIT"] = "SEC_PRODUCT",   ["SKW"] = {"Requirements","GcTechnologyRequirement",},  ["SECTION_ACTIVE"] = slot-1,
    ["VCT"] = {{"ID",data[slot][1],},{"InventoryType",data[slot][2],},{"Amount",data[slot][3],},},     }
end

local function Products_AddProduct() return
{   ["PKW"] = "Table",  ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_PRODUCT",    }
end

--------------------------------------------------
-- functions for objects
--------------------------------------------------

local function Objects_GetTemplate() return
{   ["SKW"] = {"ID","B_WALL_TOIL0",},   ["SEC_SAVE_TO"] = "SEC_OBJECT",  }
end

local function Objects_ChangeID(data) return
{   ["SEC_EDIT"] = "SEC_OBJECT",    ["VCT"] = {{"ID",data["ID"],},{"ShowInBuildMenu",data["Show"],},},  }
end

local function Objects_ResetComposites() return
{   ["SEC_EDIT"] = "SEC_OBJECT",    ["PKW"] = "CompositePartObjectIDs",     ["CREATE_HOES"] = "TRUE",   }
end

local function Objects_ChangePlacement() return
{   ["SEC_EDIT"] = "SEC_OBJECT",    ["VCT"] = {{"Filename","MODELS/COMMON/SPACECRAFT/BIGGS/MODULES/INT_WINDOW_PLACEMENT.SCENE.MBIN",},},  }
end

local function Objects_ChangeStyle(data) return
{   ["SEC_EDIT"] = "SEC_OBJECT",    ["SKW"] = {"Style","GcBaseBuildingPartStyle",},     ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"Style",data["Style"],},},  }
end

local function Objects_SetModGroup() return
{   ["SEC_EDIT"] = "SEC_OBJECT",    ["SKW"] = {"Groups","GcBaseBuildingEntryGroup",},   ["VCT"] = {{"SubGroupName","BIGGS_INT_MOD",},},     }
end

local function Objects_AddObject() return
{   ["PKW"] = "Objects",    ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_OBJECT",    }
end                                        
                        
--------------------------------------------------
-- functions for parts
--------------------------------------------------                  

local function Parts_GetTemplate(id) return
{   ["SKW"] = {"ID",id,"StyleModels","GcBaseBuildingPartStyleModel",},      ["SECTION_ACTIVE"] = 0,     ["SEC_SAVE_TO"] = "SEC_BASEPART",  }
end

local function Parts_ChangeStyle(data) return
{   ["SEC_EDIT"] = "SEC_BASEPART",      ["SKW"] = {"Style","GcBaseBuildingPartStyle",},     ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"Style",data["Style"],},},  }
end

local function Parts_ChangeScene(data,type) return
{   ["SEC_EDIT"] = "SEC_BASEPART",      ["SKW"] = {"Model","TkModelResource",},     ["VCT"] = {{"Filename",data[type],},},     }
end

local function Parts_AddPart(id) return
{    ["SKW"] = {"ID",id,},      ["PKW"] = "StyleModels",    ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_BASEPART",    }
end

--------------------------------------------------
-- functions for scenes
--------------------------------------------------    

local function Scene_RemoveNodes(skws) return
{   ["SKW"] = skws,     ["REMOVE"] = "SECTION",     }
end

local function Scene_ChangeName(name) return
{   ["VCT"] = {{"Name",name,},{"NameHash",0,},},    }
end

local function Scene_AddEmptyWall() return
{   ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_WALL_TYPEA",   }
end

local function Scene_EditObject(name,link,trans,rot,scale) return
{
    ["SEC_EDIT"] = "SEC_REFERENCE",
    ["VCT"] = 
    {
        {"Name",name,},{"NameHash",0,},{"Value",link,},
        {"TransX",trans[1],},{"TransY",trans[2],},{"TransZ",trans[3],},
        {"RotX",rot[1],},{"RotY",rot[2],},{"RotZ",rot[3],},
        {"ScaleX",scale,},{"ScaleY",scale,},{"ScaleZ",scale,},
    },
}
end

local function Scene_AddObject() return
{   ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_REFERENCE",    }
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
                    -- empty wall
                    Difficulty_AddRegularKnown(DATA_BLANK_EW),Difficulty_AddAllKnown(DATA_BLANK_EW),

                    -- appearance modifier
                    Difficulty_AddRegularKnown(DATA_DRESS_EW),Difficulty_AddAllKnown(DATA_DRESS_EW),
                    Difficulty_AddRegularKnown(DATA_DRESS_NS),Difficulty_AddAllKnown(DATA_DRESS_NS),
                    
                    -- weapon rack
                    Difficulty_AddRegularKnown(DATA_WEAPONS_EW),Difficulty_AddAllKnown(DATA_WEAPONS_EW),
                    Difficulty_AddRegularKnown(DATA_WEAPONS_NS),Difficulty_AddAllKnown(DATA_WEAPONS_NS),

                    -- stellar extractor
                    Difficulty_AddRegularKnown(DATA_STELLAR_EW),Difficulty_AddAllKnown(DATA_STELLAR_EW),
                    Difficulty_AddRegularKnown(DATA_STELLAR_NS),Difficulty_AddAllKnown(DATA_STELLAR_NS),
                },
            },

            {
                --------------------------------------------------
                -- base parts products MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_BASEPARTS_PRODUCTS,
                ["MXML_CHANGE_TABLE"] =
                {
                    -- empty wall EW
                    Products_GetTemplate(),
                    Products_ChangeData(DATA_BLANK_EW),
                    Products_ChangeIcon(DATA_BLANK_EW),
                    Products_ChangeCrafting(DATA_BLANK_EW,"1"),
                    Products_ChangeCrafting(DATA_BLANK_EW,"2"),
                    Products_AddProduct(),

                    -- appearance modifier EW
                    Products_GetTemplate(),
                    Products_ChangeData(DATA_DRESS_EW),
                    Products_ChangeIcon(DATA_DRESS_EW),
                    Products_ChangeCrafting(DATA_DRESS_EW,"1"),
                    Products_ChangeCrafting(DATA_DRESS_EW,"2"),
                    Products_AddProduct(),

                    -- appearance modifier NS
                    Products_GetTemplate(),
                    Products_ChangeData(DATA_DRESS_NS),
                    Products_ChangeIcon(DATA_DRESS_NS),
                    Products_ChangeCrafting(DATA_DRESS_NS,"1"),
                    Products_ChangeCrafting(DATA_DRESS_NS,"2"),
                    Products_AddProduct(),

                    -- weapon rack EW
                    Products_GetTemplate(),
                    Products_ChangeData(DATA_WEAPONS_EW),
                    Products_ChangeIcon(DATA_WEAPONS_EW),
                    Products_ChangeCrafting(DATA_WEAPONS_EW,"1"),
                    Products_ChangeCrafting(DATA_WEAPONS_EW,"2"),
                    Products_AddProduct(),

                    -- weapon rack NS
                    Products_GetTemplate(),
                    Products_ChangeData(DATA_WEAPONS_NS),
                    Products_ChangeIcon(DATA_WEAPONS_NS),
                    Products_ChangeCrafting(DATA_WEAPONS_NS,"1"),
                    Products_ChangeCrafting(DATA_WEAPONS_NS,"2"),
                    Products_AddProduct(),

                    -- stellar extractor EW
                    Products_GetTemplate(),
                    Products_ChangeData(DATA_STELLAR_EW),
                    Products_ChangeIcon(DATA_STELLAR_EW),
                    Products_ChangeCrafting(DATA_STELLAR_EW,"1"),
                    Products_ChangeCrafting(DATA_STELLAR_EW,"2"),
                    Products_AddProduct(),

                    -- stellar extractor NS
                    Products_GetTemplate(),
                    Products_ChangeData(DATA_STELLAR_NS),
                    Products_ChangeIcon(DATA_STELLAR_NS),
                    Products_ChangeCrafting(DATA_STELLAR_NS,"1"),
                    Products_ChangeCrafting(DATA_STELLAR_NS,"2"),
                    Products_AddProduct(),
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

                    -- empty wall EW
                    Objects_GetTemplate(),
                    Objects_ChangeID(DATA_BLANK_EW),
                    Objects_ChangeStyle(DATA_BLANK_EW),
                    Objects_ResetComposites(),
                    Objects_SetModGroup(),
                    Objects_AddObject(),

                    -- appearance modifier EW
                    Objects_GetTemplate(),
                    Objects_ChangeID(DATA_DRESS_EW),
                    Objects_ChangeStyle(DATA_DRESS_EW),
                    Objects_ResetComposites(),
                    Objects_SetModGroup(),
                    Objects_AddObject(),

                    -- appearance modifier NS
                    Objects_GetTemplate(),
                    Objects_ChangePlacement(),
                    Objects_ChangeID(DATA_DRESS_NS),
                    Objects_ChangeStyle(DATA_DRESS_NS),
                    Objects_ResetComposites(),
                    Objects_SetModGroup(),
                    Objects_AddObject(),

                    -- weapon rack EW
                    Objects_GetTemplate(),
                    Objects_ChangeID(DATA_WEAPONS_EW),
                    Objects_ChangeStyle(DATA_WEAPONS_EW),
                    Objects_ResetComposites(),
                    Objects_SetModGroup(),
                    Objects_AddObject(),

                    -- weapon rack NS
                    Objects_GetTemplate(),
                    Objects_ChangePlacement(),
                    Objects_ChangeID(DATA_WEAPONS_NS),
                    Objects_ChangeStyle(DATA_WEAPONS_NS),
                    Objects_ResetComposites(),
                    Objects_SetModGroup(),
                    Objects_AddObject(),

                    -- stellar extractor EW
                    Objects_GetTemplate(),
                    Objects_ChangeID(DATA_STELLAR_EW),
                    Objects_ChangeStyle(DATA_STELLAR_EW),
                    Objects_ResetComposites(),
                    Objects_SetModGroup(),
                    Objects_AddObject(),

                    -- stellar extractor NS
                    Objects_GetTemplate(),
                    Objects_ChangePlacement(),
                    Objects_ChangeID(DATA_STELLAR_NS),
                    Objects_ChangeStyle(DATA_STELLAR_NS),
                    Objects_ResetComposites(),
                    Objects_SetModGroup(),
                    Objects_AddObject(),
                },
            },

            {
                --------------------------------------------------
                -- base parts table MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_METADATA_BASEPARTS_PARTSTABLE,
                ["MXML_CHANGE_TABLE"] =
                {
                    -- empty wall EW
                    -- type A
                    Parts_GetTemplate("_BIGGS_WALL_EW_A"),
                    Parts_ChangeStyle(DATA_BLANK_EW),
                    Parts_ChangeScene(DATA_BLANK_EW,"TypeA"),
                    Parts_AddPart("_BIGGS_WALL_EW_A"),
                    -- type B
                    Parts_GetTemplate("_BIGGS_WALL_EW_B"),
                    Parts_ChangeStyle(DATA_BLANK_EW),
                    Parts_ChangeScene(DATA_BLANK_EW,"TypeB"),
                    Parts_AddPart("_BIGGS_WALL_EW_B"),
                    -- type C
                    Parts_GetTemplate("_BIGGS_WALL_EW_C"),
                    Parts_ChangeStyle(DATA_BLANK_EW),
                    Parts_ChangeScene(DATA_BLANK_EW,"TypeC"),
                    Parts_AddPart("_BIGGS_WALL_EW_C"),

                    -- appearance modifier EW
                    -- type A
                    Parts_GetTemplate("_BIGGS_WALL_EW_A"),
                    Parts_ChangeStyle(DATA_DRESS_EW),
                    Parts_ChangeScene(DATA_DRESS_EW,"TypeA"),
                    Parts_AddPart("_BIGGS_WALL_EW_A"),
                    -- type B
                    Parts_GetTemplate("_BIGGS_WALL_EW_B"),
                    Parts_ChangeStyle(DATA_DRESS_EW),
                    Parts_ChangeScene(DATA_DRESS_EW,"TypeB"),
                    Parts_AddPart("_BIGGS_WALL_EW_B"),
                    -- type C
                    Parts_GetTemplate("_BIGGS_WALL_EW_C"),
                    Parts_ChangeStyle(DATA_DRESS_EW),
                    Parts_ChangeScene(DATA_DRESS_EW,"TypeC"),
                    Parts_AddPart("_BIGGS_WALL_EW_C"),

                    -- appearance modifier NS
                    -- type A
                    Parts_GetTemplate("_BIGGS_WALL_NS_A"),
                    Parts_ChangeStyle(DATA_DRESS_NS),
                    Parts_ChangeScene(DATA_DRESS_NS,"TypeA"),
                    Parts_AddPart("_BIGGS_WALL_NS_A"),
                    -- type B
                    Parts_GetTemplate("_BIGGS_WALL_NS_B"),
                    Parts_ChangeStyle(DATA_DRESS_NS),
                    Parts_ChangeScene(DATA_DRESS_NS,"TypeB"),
                    Parts_AddPart("_BIGGS_WALL_NS_B"),
                    -- type C
                    Parts_GetTemplate("_BIGGS_WALL_NS_C"),
                    Parts_ChangeStyle(DATA_DRESS_NS),
                    Parts_ChangeScene(DATA_DRESS_NS,"TypeC"),
                    Parts_AddPart("_BIGGS_WALL_NS_C"),

                    -- weapon rack EW
                    -- type A
                    Parts_GetTemplate("_BIGGS_WALL_EW_A"),
                    Parts_ChangeStyle(DATA_WEAPONS_EW),
                    Parts_ChangeScene(DATA_WEAPONS_EW,"TypeA"),
                    Parts_AddPart("_BIGGS_WALL_EW_A"),
                    -- type B
                    Parts_GetTemplate("_BIGGS_WALL_EW_B"),
                    Parts_ChangeStyle(DATA_WEAPONS_EW),
                    Parts_ChangeScene(DATA_WEAPONS_EW,"TypeB"),
                    Parts_AddPart("_BIGGS_WALL_EW_B"),
                    -- type C
                    Parts_GetTemplate("_BIGGS_WALL_EW_C"),
                    Parts_ChangeStyle(DATA_WEAPONS_EW),
                    Parts_ChangeScene(DATA_WEAPONS_EW,"TypeC"),
                    Parts_AddPart("_BIGGS_WALL_EW_C"),

                    -- weapon rack NS
                    -- type A
                    Parts_GetTemplate("_BIGGS_WALL_NS_A"),
                    Parts_ChangeStyle(DATA_WEAPONS_NS),
                    Parts_ChangeScene(DATA_WEAPONS_NS,"TypeA"),
                    Parts_AddPart("_BIGGS_WALL_NS_A"),
                    -- type B
                    Parts_GetTemplate("_BIGGS_WALL_NS_B"),
                    Parts_ChangeStyle(DATA_WEAPONS_NS),
                    Parts_ChangeScene(DATA_WEAPONS_NS,"TypeB"),
                    Parts_AddPart("_BIGGS_WALL_NS_B"),
                    -- type C
                    Parts_GetTemplate("_BIGGS_WALL_NS_C"),
                    Parts_ChangeStyle(DATA_WEAPONS_NS),
                    Parts_ChangeScene(DATA_WEAPONS_NS,"TypeC"),
                    Parts_AddPart("_BIGGS_WALL_NS_C"),

                    -- stellar extractor EW
                    -- type A
                    Parts_GetTemplate("_BIGGS_WALL_EW_A"),
                    Parts_ChangeStyle(DATA_STELLAR_EW),
                    Parts_ChangeScene(DATA_STELLAR_EW,"TypeA"),
                    Parts_AddPart("_BIGGS_WALL_EW_A"),
                    -- type B
                    Parts_GetTemplate("_BIGGS_WALL_EW_B"),
                    Parts_ChangeStyle(DATA_STELLAR_EW),
                    Parts_ChangeScene(DATA_STELLAR_EW,"TypeB"),
                    Parts_AddPart("_BIGGS_WALL_EW_B"),
                    -- type C
                    Parts_GetTemplate("_BIGGS_WALL_EW_C"),
                    Parts_ChangeStyle(DATA_STELLAR_EW),
                    Parts_ChangeScene(DATA_STELLAR_EW,"TypeC"),
                    Parts_AddPart("_BIGGS_WALL_EW_C"),

                    -- stellar extractor NS
                    -- type A
                    Parts_GetTemplate("_BIGGS_WALL_NS_A"),
                    Parts_ChangeStyle(DATA_STELLAR_NS),
                    Parts_ChangeScene(DATA_STELLAR_NS,"TypeA"),
                    Parts_AddPart("_BIGGS_WALL_NS_A"),
                    -- type B
                    Parts_GetTemplate("_BIGGS_WALL_NS_B"),
                    Parts_ChangeStyle(DATA_STELLAR_NS),
                    Parts_ChangeScene(DATA_STELLAR_NS,"TypeB"),
                    Parts_AddPart("_BIGGS_WALL_NS_B"),
                    -- type C
                    Parts_GetTemplate("_BIGGS_WALL_NS_C"),
                    Parts_ChangeStyle(DATA_STELLAR_NS),
                    Parts_ChangeScene(DATA_STELLAR_NS,"TypeC"),
                    Parts_AddPart("_BIGGS_WALL_NS_C"),
                },
            },

            {
                --------------------------------------------------
                -- create new MBIN files
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] =
                {
                    -- empty wall
                    -- EW
                    {   FILE_MODELS_VANILLA_EWA_BLANK,      DATA_BLANK_EW["TypeA"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWB_EMPTY,      DATA_BLANK_EW["TypeB"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWC_EMPTY,      DATA_BLANK_EW["TypeC"],           "REMOVE" },

                    -- appearance modifier
                    -- EW
                    {   FILE_MODELS_VANILLA_EWA_EMPTY,      DATA_DRESS_EW["TypeA"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWB_EMPTY,      DATA_DRESS_EW["TypeB"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWC_EMPTY,      DATA_DRESS_EW["TypeC"],           "REMOVE" },
                    -- NS
                    {   FILE_MODELS_VANILLA_NSA_EMPTY,      DATA_DRESS_NS["TypeA"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_NSB_EMPTY,      DATA_DRESS_NS["TypeB"],           "REMOVE" },
                    {   FILE_MODELS_VANILLA_NSC_EMPTY,      DATA_DRESS_NS["TypeC"],           "REMOVE" },
                    -- extras
                    {   FILE_MODELS_VANILLA_SUITSHOP,       FILE_MODELS_MODDED_CUSTOMISER,         "REMOVE" },
                    {   FILE_ENTITY_VANILLA_CUSTOMISER,     FILE_ENTITY_MODDED_CUSTOMISER,         "REMOVE" },

                    -- weapon rack
                    -- EW
                    {   FILE_MODELS_VANILLA_EWA_EMPTY,      DATA_WEAPONS_EW["TypeA"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWB_EMPTY,      DATA_WEAPONS_EW["TypeB"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWC_EMPTY,      DATA_WEAPONS_EW["TypeC"],         "REMOVE" },
                    -- NS
                    {   FILE_MODELS_VANILLA_NSA_EMPTY,      DATA_WEAPONS_NS["TypeA"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_NSB_EMPTY,      DATA_WEAPONS_NS["TypeB"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_NSC_EMPTY,      DATA_WEAPONS_NS["TypeC"],         "REMOVE" },

                    -- stellar extractor
                    -- EW
                    {   FILE_MODELS_VANILLA_EWA_EMPTY,      DATA_STELLAR_EW["TypeA"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWB_EMPTY,      DATA_STELLAR_EW["TypeB"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_EWC_EMPTY,      DATA_STELLAR_EW["TypeC"],         "REMOVE" },
                    -- NS
                    {   FILE_MODELS_VANILLA_NSA_EMPTY,      DATA_STELLAR_NS["TypeA"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_NSB_EMPTY,      DATA_STELLAR_NS["TypeB"],         "REMOVE" },
                    {   FILE_MODELS_VANILLA_NSC_EMPTY,      DATA_STELLAR_NS["TypeC"],         "REMOVE" },
                    -- extras
                    {   FILE_MODELS_VANILLA_EXTRACTOR,      FILE_MODELS_MODDED_EXTRACTOR,          "REMOVE" },
                    {   FILE_ENTITY_VANILLA_EXTRACTOR,      FILE_ENTITY_MODDED_EXTRACTOR,          "REMOVE" },
                }
            },

            ----------------------------------------------------------------------------------------------------
            -- appearance modifier modules
            ----------------------------------------------------------------------------------------------------

            {
                -- type A empty wall reference
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_VANILLA_EWA_BLANK,
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
                -- customiser tube MBIN
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_MODDED_CUSTOMISER,
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\CUSTOMISER"),
                    Scene_RemoveNodes({{"Name","CryoON",},}),

                    {
                        -- replace entity
                        ["SKW"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\CRYOCHAMBER\ENTITIES\CRYOCHAMBERINTERACTION.ENTITY.MBIN",},
                        ["VCT"] = {{"Value",FILE_ENTITY_MODDED_CUSTOMISER,},}
                    },
                },
            },

            {
                -- EWA
                ["MBIN_FILE_SOURCE"] = DATA_DRESS_EW["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_DRESS"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_AddEmptyWall(),
                    Scene_EditObject("REF_CUSTOMISER",FILE_MODELS_MODDED_CUSTOMISER,{1.5,0.1,1},{0,0,0},0.8),
                    Scene_AddObject(),
                },
            },

            {
                -- EWB
                ["MBIN_FILE_SOURCE"] = DATA_DRESS_EW["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_DRESS"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_EditObject("REF_CUSTOMISER",FILE_MODELS_MODDED_CUSTOMISER,{-1.5,0.1,1},{0,0,0},0.8),
                    Scene_AddObject(),
                },
            },

            {
                -- EWC
                ["MBIN_FILE_SOURCE"] = DATA_DRESS_EW["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_DRESS"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_EditObject("REF_CUSTOMISER",FILE_MODELS_MODDED_CUSTOMISER,{0,0.1,1.5},{0,0,0},0.8),
                    Scene_AddObject(),
                },
            },

            {
                -- NSA
                ["MBIN_FILE_SOURCE"] = DATA_DRESS_NS["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_A_DRESS"),
                    Scene_EditObject("REF_CUSTOMISER",FILE_MODELS_MODDED_CUSTOMISER,{0,0.1,1},{0,0,0},0.8),
                    Scene_AddObject(),
                },
            },

            {
                -- NSB
                ["MBIN_FILE_SOURCE"] = DATA_DRESS_NS["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_B_DRESS"),
                    Scene_EditObject("REF_CUSTOMISER",FILE_MODELS_MODDED_CUSTOMISER,{0,0.1,1},{0,0,0},0.8),
                    Scene_AddObject(),
                },
            },

            {
                -- NSC
                ["MBIN_FILE_SOURCE"] = DATA_DRESS_NS["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_C_DRESS"),
                    Scene_EditObject("REF_CUSTOMISER",FILE_MODELS_MODDED_CUSTOMISER,{0,0.1,1.4},{0,0,0},0.8),
                    Scene_AddObject(),
                },
            },

            ----------------------------------------------------------------------------------------------------
            -- weapon rack modules
            ----------------------------------------------------------------------------------------------------

            {
                -- EWA
                ["MBIN_FILE_SOURCE"] = DATA_WEAPONS_EW["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_WEAPONS"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_AddEmptyWall(),
                    Scene_EditObject("REF_WEAPONS",FILE_MODELS_VANILLA_WEAPONRACK,{-1,1.4,0.3},{90,0,0},0.6),
                    Scene_AddObject(),
                },
            },

            {
                -- EWB
                ["MBIN_FILE_SOURCE"] = DATA_WEAPONS_EW["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_WEAPONS"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_EditObject("REF_WEAPONS",FILE_MODELS_VANILLA_WEAPONRACK,{1.4,1.4,0.4},{90,0,0},0.6),
                    Scene_AddObject(),
                },
            },

            {
                -- EWC
                ["MBIN_FILE_SOURCE"] = DATA_WEAPONS_EW["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_WEAPONS"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_EditObject("REF_WEAPONS",FILE_MODELS_VANILLA_WEAPONRACK,{0,1.8,0.2},{90,0,0},0.6),
                    Scene_AddObject(),
                },
            },
                        
            {
                -- NSA
                ["MBIN_FILE_SOURCE"] = DATA_WEAPONS_NS["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_A_WEAPONS"),
                    Scene_EditObject("REF_WEAPONS",FILE_MODELS_VANILLA_WEAPONRACK,{0,1.4,0.3},{90,0,0},0.6),
                    Scene_AddObject(),
                },
            },

            {
                -- NSB
                ["MBIN_FILE_SOURCE"] = DATA_WEAPONS_NS["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_B_WEAPONS"),
                    Scene_EditObject("REF_WEAPONS",FILE_MODELS_VANILLA_WEAPONRACK,{0,1.4,0.2},{90,0,0},0.6),
                    Scene_AddObject(),
                },
            },

            {
                -- NSC
                ["MBIN_FILE_SOURCE"] = DATA_WEAPONS_NS["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_C_WEAPONS"),
                    Scene_EditObject("REF_WEAPONS",FILE_MODELS_VANILLA_WEAPONRACK,{0,1.5,0.5},{90,0,0},0.6),
                    Scene_AddObject(),
                },
            },

            ----------------------------------------------------------------------------------------------------
            -- stellar extractor modules
            ----------------------------------------------------------------------------------------------------

            {
                -- extractor entity MBIN
                ["MBIN_FILE_SOURCE"] = FILE_ENTITY_MODDED_EXTRACTOR,
                ["MXML_CHANGE_TABLE"] = 
                {
                    {
                        -- remove nodes
                        ["SKW"] = {"Components","TkAudioComponentData",},
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- reduce substance capacity to 100
                        ["SKW"] = 
                        {
                            {"Id","STELLAR2",},
                            {"Id","GAS1",},
                            {"Id","GAS2",},
                            {"Id","GAS3",},
                            {"Id","GAS4",},
                        },
                        ["VCT"] = {{"MaxCapacity",100,},},
                    },
                },
            },

            {
                -- extractor device MBIN
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_MODDED_EXTRACTOR,
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\EXTRAS\EXTRACTOR"),
                    Scene_RemoveNodes({{"Name","RefIndustrialFloor",},}),

                    {
                        -- replace entity
                        ["SKW"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\EXTRROOM\PARTS\FLOOR0\ENTITIES\EXTRACTORTERMINAL.ENTITY.MBIN",},
                        ["VCT"] = {{"Value",FILE_ENTITY_MODDED_EXTRACTOR,},}
                    },
                },
            },

            {
                -- EWA
                ["MBIN_FILE_SOURCE"] = DATA_STELLAR_EW["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_STELLAR"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_AddEmptyWall(),
                    Scene_EditObject("REF_EXTRACTOR",FILE_MODELS_MODDED_EXTRACTOR,{1,0.4,0.85},{0,0,0},0.5),
                    Scene_AddObject(),
                },
            },

            {
                -- EWB
                ["MBIN_FILE_SOURCE"] = DATA_STELLAR_EW["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_STELLAR"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_EditObject("REF_EXTRACTOR",FILE_MODELS_MODDED_EXTRACTOR,{-1.5,0.4,0.85},{0,0,0},0.5),
                    Scene_AddObject(),
                },
            },

            {
                -- EWC
                ["MBIN_FILE_SOURCE"] = DATA_STELLAR_EW["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_STELLAR"),
                    Scene_RemoveNodes({{"Name","Data",},}),
                    Scene_EditObject("REF_EXTRACTOR",FILE_MODELS_MODDED_EXTRACTOR,{0,0.4,0.8},{0,0,0},0.5),
                    Scene_AddObject(),
                },
            },

            {
                -- NSA
                ["MBIN_FILE_SOURCE"] = DATA_STELLAR_NS["TypeA"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_A_STELLAR"),
                    Scene_EditObject("REF_EXTRACTOR",FILE_MODELS_MODDED_EXTRACTOR,{0,0.4,0.8},{0,0,0},0.5),
                    Scene_AddObject(),
                },
            },

            {
                -- NSB
                ["MBIN_FILE_SOURCE"] = DATA_STELLAR_NS["TypeB"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_B_STELLAR"),
                    Scene_EditObject("REF_EXTRACTOR",FILE_MODELS_MODDED_EXTRACTOR,{0,0.4,0.8},{0,0,0},0.5),
                    Scene_AddObject(),
                },
            },

            {
                -- NSC
                ["MBIN_FILE_SOURCE"] = DATA_STELLAR_NS["TypeC"],
                ["MXML_CHANGE_TABLE"] =
                {
                    Scene_ChangeName("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_NS_C_STELLAR"),
                    Scene_EditObject("REF_EXTRACTOR",FILE_MODELS_MODDED_EXTRACTOR,{0,0.4,0.8},{0,0,0},0.5),
                    Scene_AddObject(),
                },
            },
        }
    }
},
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------