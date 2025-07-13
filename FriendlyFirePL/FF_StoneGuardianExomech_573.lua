----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "StoneGuardianExomech"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "573"
METADATA_MOD_DESC       = "This mod adds Stone Guardian pieces and dedicated technology modules for the Minotaur exocraft."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_GLOBALS_VEHICLEGLOBALS =           "GCVEHICLEGLOBALS.GLOBAL.MBIN"

FILE_METADATA_REWARD_TABLE =            "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"
FILE_METADATA_TECHNOLOGY_TABLE =        "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
FILE_METADATA_DESCRIPTION_GROUPS =      "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"

FILE_MODELS_EXOMECH_SCENE =             "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT.SCENE.MBIN"
FILE_MODELS_MECH_DESCRIPTOR =           "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT.DESCRIPTOR.MBIN"
FILE_MODELS_RUINMECH_ENTITY =           "MODELS\COMMON\ROBOTS\MECH\ENTITIES\RUINMECH.ENTITY.MBIN"

-- files used to create new files (not modified)
FILE_MODELS_STONEMECH_SCENE =           "MODELS\COMMON\ROBOTS\RUINMECH.SCENE.MBIN"

FILE_VEHICLES_GUN_ENTITY =              "MODELS\COMMON\VEHICLES\BUGGY\ENTITIES\GUN.ENTITY.MBIN"
FILE_STONEMECH_GUN_ENTITY =             "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\ENTITIES\GUN.ENTITY.MBIN"

FILE_MODELS_MEMORY_STONE =              "MODELS\PLANETS\BIOMES\RUINS\RUINRESOURCE.SCENE.MBIN"
FILE_MODELS_RUINMECH_LOOT =             "MODELS\COMMON\ROBOTS\LOOTDROP\RUINLOOT.SCENE.MBIN"

FILE_MODELS_LOOT_ENTITY =               "MODELS\COMMON\ROBOTS\LOOTDROP\MECHLOOT\ENTITIES\MECHLOOT.ENTITY.MBIN"
FILE_MODELS_RUINLOOT_ENTITY =           "MODELS\COMMON\ROBOTS\LOOTDROP\RUINLOOT\ENTITIES\RUINLOOT.ENTITY.MBIN"



--------------------------------------------------
-- data structures for stone mech parts
--------------------------------------------------

local MECH_DATA_BODY =
{
["Template"] = "MECH_SENT_HEAD",

["ID"] = "FFPL_STONE_BODY",
["Name"] = "FFPL_MECH_STONE_BODY_N",
["NameLower"] = "FFPL_MECH_STONE_BODY_L",
["Subtitle"] = "FFPL_MECH_STONE_BODY_S",
["Description"] = "FFPL_MECH_STONE_BODY_D",
["Filename"] = "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/EXPEDITION.S18.STONEARMOUR.DDS",

[1] = {"STONE_EYE_PROD","Product",1},
[2] = {"CAVECUBE","Product",4},
[3] = {"RUINSUB","Substance",100},

["BaseStat"] = "Vehicle_AutoPilot",
["StatBonus"] = {"Vehicle_AutoPilot",1,6},

["Part"] = "Body",
["DescriptorGroupID"] = "MECH_BODY_STONE",
["Descriptors"] = "_BODY_STONE",
["Node"] = "_Body_STONE",
["Scene"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\STONE_BODY.SCENE.MBIN",

["Delete"] = {
{"Name","TrajectorySHJnt",},{"Name","RootLocator",},{"Name","Mech",},
{"Name","RuinMechLegsLOD0",},{"Name","RuinMechLegsLOD1",},{"Name","RuinMechLegsLOD2",},{"Name","RuinMechLegsLOD3",},
{"Name","RuinMechRightArmLOD0",},{"Name","RuinMechRightArmLOD1",},{"Name","RuinMechRightArmLOD2",},{"Name","RuinMechRightArmLOD3",},
{"Name","RuinMechLeftArmLOD0",},{"Name","RuinMechLeftArmLOD1",},{"Name","RuinMechLeftArmLOD2",},{"Name","RuinMechLeftArmLOD3",},
{"Name","RuinMechCannonLOD0",},{"Name","RuinMechCannonLOD1",},{"Name","RuinMechCannonLOD2",},{"Name","RuinMechCannonLOD3",},},
}

local MECH_DATA_LEGS =
{
["Template"] = "MECH_SENT_LEGS",

["ID"] = "FFPL_STONE_LEGS",
["Name"] = "FFPL_MECH_STONE_LEGS_N",
["NameLower"] = "FFPL_MECH_STONE_LEGS_L",
["Subtitle"] = "FFPL_MECH_STONE_LEGS_S",
["Description"] = "FFPL_MECH_STONE_LEGS_D",
["Filename"] = "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/EXPEDITION.S18.STONELEGS.DDS",

[1] = {"QUAD_PROD","Product",2},
[2] = {"LAND2","Substance",200},

["BaseStat"] = "Vehicle_Engine",
["StatBonus"] = {"Vehicle_EngineFuelUse",0.9,2},

["Part"] = "Legs",
["DescriptorGroupID"] = "MECH_LEGS_STONE",
["Descriptors"] = "_LEGS_STONE",
["Node"] = "_Legs_STONE",
["Scene"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\STONE_LEGS.SCENE.MBIN",

["Delete"] = {
{"Name","TrajectorySHJnt",},{"Name","RootLocator",},{"Name","Mech",},
{"Name","RuinMechHeadLOD0",},{"Name","RuinMechHeadLOD1",},{"Name","RuinMechHeadLOD2",},{"Name","RuinMechHeadLOD3",},
{"Name","RuinMechTorsoLOD0",},{"Name","RuinMechTorsoLOD1",},{"Name","RuinMechTorsoLOD2",},{"Name","RuinMechTorsoLOD3",},
{"Name","RuinMechInnerBodyLOD0",},{"Name","RuinMechInnerBodyLOD1",},{"Name","RuinMechInnerBodyLOD2",},{"Name","RuinMechInnerBodyLOD3",},
{"Name","RuinMechRightArmLOD0",},{"Name","RuinMechRightArmLOD1",},{"Name","RuinMechRightArmLOD2",},{"Name","RuinMechRightArmLOD3",},
{"Name","RuinMechLeftArmLOD0",},{"Name","RuinMechLeftArmLOD1",},{"Name","RuinMechLeftArmLOD2",},{"Name","RuinMechLeftArmLOD3",},
{"Name","RuinMechCannonLOD0",},{"Name","RuinMechCannonLOD1",},{"Name","RuinMechCannonLOD2",},{"Name","RuinMechCannonLOD3",},},
}

local MECH_DATA_ARML =
{
["Template"] = "MECH_SENT_R_ARM",

["ID"] = "FFPL_STONE_ARML",
["Name"] = "FFPL_MECH_STONE_ARML_N",
["NameLower"] = "FFPL_MECH_STONE_ARML_L",
["Subtitle"] = "FFPL_MECH_STONE_ARML_S",
["Description"] = "FFPL_MECH_STONE_ARML_D",
["Filename"] = "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.S17.RUINSTAFF.DDS",

[1] = {"GRENFUEL1","Product",1},
[2] = {"LAVA1","Substance",100},
[3] = {"STELLAR2","Substance",50},

["BaseStat"] = "Vehicle_Gun",
["StatBonus"] = {"Vehicle_GunDamage",10,2},

["Part"] = "LeftArm",
["DescriptorGroupID"] = "MECH_ARML_STONE",
["Descriptors"] = "_ARML_STONE",
["Node"] = "_ArmL_STONE",
["Scene"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\STONE_ARML.SCENE.MBIN",

["Delete"] = {
{"Name","TrajectorySHJnt",},{"Name","RootLocator",},{"Name","Mech",},
{"Name","RuinMechHeadLOD0",},{"Name","RuinMechHeadLOD1",},{"Name","RuinMechHeadLOD2",},{"Name","RuinMechHeadLOD3",},
{"Name","RuinMechTorsoLOD0",},{"Name","RuinMechTorsoLOD1",},{"Name","RuinMechTorsoLOD2",},{"Name","RuinMechTorsoLOD3",},
{"Name","RuinMechLegsLOD0",},{"Name","RuinMechLegsLOD1",},{"Name","RuinMechLegsLOD2",},{"Name","RuinMechLegsLOD3",},
{"Name","RuinMechInnerBodyLOD0",},{"Name","RuinMechInnerBodyLOD1",},{"Name","RuinMechInnerBodyLOD2",},{"Name","RuinMechInnerBodyLOD3",},
{"Name","RuinMechRightArmLOD0",},{"Name","RuinMechRightArmLOD1",},{"Name","RuinMechRightArmLOD2",},{"Name","RuinMechRightArmLOD3",},},
}

local MECH_DATA_ARMR =
{
["Template"] = "MECH_SENT_L_ARM",

["ID"] = "FFPL_STONE_ARMR",
["Name"] = "FFPL_MECH_STONE_ARMR_N",
["NameLower"] = "FFPL_MECH_STONE_ARMR_L",
["Subtitle"] = "FFPL_MECH_STONE_ARMR_S",
["Description"] = "FFPL_MECH_STONE_ARMR_D",
["Filename"] = "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/EXPEDITION.S18.STONEGLOVES.DDS",

[1] = {"HYDRALIC","Product",2},
[2] = {"RUINSUB","Substance",100},
[3] = {"STELLAR2","Substance",50},

["BaseStat"] = "Vehicle_Laser",
["StatBonus"] = {"Vehicle_LaserDamage",20,2},

["Part"] = "RightArm",
["DescriptorGroupID"] = "MECH_ARMR_STONE",
["Descriptors"] = "_ARMR_STONE",
["Node"] = "_ArmR_STONE",
["Scene"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\STONE_ARMR.SCENE.MBIN",

["Delete"] = {
{"Name","TrajectorySHJnt",},{"Name","RootLocator",},{"Name","Mech",},
{"Name","RuinMechHeadLOD0",},{"Name","RuinMechHeadLOD1",},{"Name","RuinMechHeadLOD2",},{"Name","RuinMechHeadLOD3",},
{"Name","RuinMechTorsoLOD0",},{"Name","RuinMechTorsoLOD1",},{"Name","RuinMechTorsoLOD2",},{"Name","RuinMechTorsoLOD3",},
{"Name","RuinMechLegsLOD0",},{"Name","RuinMechLegsLOD1",},{"Name","RuinMechLegsLOD2",},{"Name","RuinMechLegsLOD3",},
{"Name","RuinMechInnerBodyLOD0",},{"Name","RuinMechInnerBodyLOD1",},{"Name","RuinMechInnerBodyLOD2",},{"Name","RuinMechInnerBodyLOD3",},
{"Name","RuinMechLeftArmLOD0",},{"Name","RuinMechLeftArmLOD1",},{"Name","RuinMechLeftArmLOD2",},{"Name","RuinMechLeftArmLOD3",},
{"Name","RuinMechCannonLOD0",},{"Name","RuinMechCannonLOD1",},{"Name","RuinMechCannonLOD2",},{"Name","RuinMechCannonLOD3",},},
}

local MECH_DATA_BODY_ARMOR =
{
["Scene"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\ARMOR_BODY.SCENE.MBIN",
["Node"] = "_Body_STONE",

["TransX"] = -2.431594,
["TransY"] = -0.082701,
["TransZ"] = 0.000082,
["RotX"] = 90.000000,
["RotY"] = 0.000000,
["RotZ"] = -90.000000,
}

local MECH_DATA_ARMR_ARMOR =
{
["Scene"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\ARMOR_ARMR.SCENE.MBIN",
["Node"] = "_ArmR_STONE",

["TransX"] = 3.803675,
["TransY"] = -1.678642,
["TransZ"] = 0.107650,
["RotX"] = 0.538663,
["RotY"] = 0.652788,
["RotZ"] = 90.3929138,
}

local MECH_DATA_ARML_ARMOR =
{
["Scene"] = "MODELS\COMMON\VEHICLES\MECH_SUIT\STONEMECH\ARMOR_ARML.SCENE.MBIN",
["Node"] = "_ArmL_STONE",

["TransX"] = -3.803674,
["TransY"] = 1.678478,
["TransZ"] = -0.107652,
["RotX"] = -0.538663,
["RotY"] = -179.347214,
["RotZ"] = 89.6070862,
}



--------------------------------------------------
-- functions
--------------------------------------------------

local function Vehicle_SetStoneDescriptor(data) return
{
    ["SKW"] = {"MechMeshPartsTable","GcMechMeshPartTable",data["Part"],"GcMechMeshPartData","Stone","GcMechMeshPartTypeData",},
    ["VCT"] = {{"DescriptorGroupID",data["DescriptorGroupID"],},},
}
end

local function Vehicle_SetStoneTechnology(data) return
{
    ["SKW"] = {"MechMeshPartsTable","GcMechMeshPartTable",data["Part"],"GcMechMeshPartData","Stone","GcMechMeshPartTypeData",},
    ["PKW"] = "RequiredTechs",
    ["CREATE_HOS"] = "TRUE",
    ["ADD"] = [[<Property name="RequiredTechs" value="]]..data["ID"]..[[" />]]
}
end

--------------------------------------------------

local function Technology_GetTemplate(section,data) return
{   ["SKW"] = {"ID",data["Template"],},     ["SEC_SAVE_TO"] = section,  }
end

local function Technology_EditTemplate(section,data) return
{
    ["SEC_EDIT"] = section,
    ["VCT"] =
    {
        {"ID",data["ID"],},
        {"Name",data["Name"],},
        {"NameLower",data["NameLower"],},
        {"Subtitle",data["Subtitle"],},
        {"Description",data["Description"],},
        {"Filename",data["Filename"],},
        {"R",0.800000,},
        {"G",0.800000,},
        {"B",0.800000,},
        {"StatsType",data["BaseStat"]},
    },
}
end

local function Technology_AddModule(section) return
{   ["PKW"] = "Table",      ["SEC_ADD_NAMED"] = section,    }
end

local function Technology_EditCrafting(section,data,slot) return
{
    ["SEC_EDIT"] = section,
    ["SKW"] = {"Requirements","GcTechnologyRequirement",},
    ["SECTION_ACTIVE"] = slot-1,
    ["VCT"] =
    {
        {"ID",data[slot][1],},
        {"InventoryType",data[slot][2],},
        {"Amount",data[slot][3],},
    },
}
end

local function Technology_ResetStatBonuses(section) return
{   ["SEC_EDIT"] = section,    ["PKW"] = "StatBonuses",     ["CREATE_HOES"] = "TRUE",   }
end

local function Technology_SetBonusStat(section,data) return
    {
        ["SEC_EDIT"] = section,
        ["PKW"] = "StatBonuses",
        ["CREATE_HOS"] = "TRUE",
        ["ADD"] =
        [[
        <Property name="StatBonuses" value="GcStatsBonus">
            <Property name="Stat" value="GcStatsTypes">
                <Property name="StatsType" value="]]..data["StatBonus"][1]..[[" />
            </Property>
            <Property name="Bonus" value="]]..data["StatBonus"][2]..[[" />
            <Property name="Level" value="]]..data["StatBonus"][3]..[[" />
        </Property>
        ]]
    }
end

--------------------------------------------------

local function CharDescr_GetTemplate(section,descr) return
{   ["SKW"] = {"GroupID",descr,},     ["SEC_SAVE_TO"] = section,  }
end

local function CharDescr_EditGroup(section,data) return
{   ["SEC_EDIT"] = section,      ["VCT"] =  {{"GroupID",data["DescriptorGroupID"],},},  }
end

local function CharDescr_EditDescr(section,data) return
{   ["SEC_EDIT"] = section,      ["PKW"] = "Descriptors",       ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] =  {{"Descriptors",data["Descriptors"],},},  }
end

local function CharDescr_AddGroup(section,group) return
{
    ["SKW"] = {"Id",group,},
    ["PKW"] = "DescriptorGroups",
    ["ADD_OPTION"] = "ADDendSECTION",
    ["SEC_ADD_NAMED"] = section,
}
end

--------------------------------------------------

local function MechDescr_GetTemplate(section,id) return
{   ["SKW"] = {"Id",id,},     ["SEC_SAVE_TO"] = section,  }
end

local function MechDescr_EditTemplate(section,data) return
{   ["SEC_EDIT"] = section,     ["VCT"] = {{"Id",data["Descriptors"],},{"Name",data["Node"],},},      }
end

local function MechDescr_AddGroup(section,group) return
{
    ["SKW"] = {"TypeId",group,},
    ["PKW"] = "Descriptors",
    ["ADD_OPTION"] = "ADDendSECTION",
    ["SEC_ADD_NAMED"] = section,
}
end   

--------------------------------------------------

local function MechScene_EditName(section,data) return
{   ["SEC_EDIT"] = section,     ["VCT"] = {{"Name",data["Node"]},}    }
end

local function MechScene_EditLink(section,data) return
{   ["SEC_EDIT"] = section,     ["SKW"] = {"Name","SCENEGRAPH",},   ["VCT"] = {{"Value",data["Scene"]},}    }
end

local function MechScene_AddNode(section,after) return
{   ["SKW"] = {"Name",after,},  ["ADD_OPTION"] = "ADDafterSECTION",     ["SEC_ADD_NAMED"] = section,    }
end

--------------------------------------------------

local function PartScene_RemoveNodes(data) return
{{   ["SKW"] = data["Delete"],   ["REMOVE"] = "SECTION",     },}
end

local function PartScene_SaveNode(section,name) return
{   ["SKW"] = {"Name",name,},     ["SEC_SAVE_TO"] = section,  }
end

local function PartScene_RemoveAll() return
{   ["PKW"] = "Children",   ["CREATE_HOES"] = "TRUE",   }
end

local function PartScene_AddSaved(section) return
{   ["PKW"] = "Children",   ["CREATE_HOS"] = "TRUE",   ["ADD_OPTION"] = "ADDendSECTION",    ["SEC_ADD_NAMED"] = section,    }
end

local function PartScene_Transform(section,data) return
{
    ["SEC_EDIT"] = section,
    ["VCT"] =
    {
        {"TransX",data["TransX"],},{"TransY",data["TransY"],},{"TransZ",data["TransZ"],},
        {"RotX",data["RotX"],},{"RotY",data["RotY"],},{"RotZ",data["RotZ"],},
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
    ["AMUMSS_SUPPRESS_MSG"] = "NUMBERtoSTRING",
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- create new files for stone mech parts
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {   FILE_MODELS_STONEMECH_SCENE,    MECH_DATA_BODY["Scene"]     },
                        {   FILE_MODELS_STONEMECH_SCENE,    MECH_DATA_LEGS["Scene"]     },
                        {   FILE_MODELS_STONEMECH_SCENE,    MECH_DATA_ARML["Scene"]     },
                        {   FILE_MODELS_STONEMECH_SCENE,    MECH_DATA_ARMR["Scene"]     },

                        {   FILE_MODELS_STONEMECH_SCENE,    MECH_DATA_BODY_ARMOR["Scene"]   },
                        {   FILE_MODELS_STONEMECH_SCENE,    MECH_DATA_ARMR_ARMOR["Scene"]   },
                        {   FILE_MODELS_STONEMECH_SCENE,    MECH_DATA_ARML_ARMOR["Scene"],          "REMOVE" },

                        {   FILE_VEHICLES_GUN_ENTITY,       FILE_STONEMECH_GUN_ENTITY,              "REMOVE" },
                        {   FILE_MODELS_MEMORY_STONE,       FILE_MODELS_RUINMECH_LOOT,              "REMOVE" },
                        {   FILE_MODELS_LOOT_ENTITY,        FILE_MODELS_RUINLOOT_ENTITY,            "REMOVE" },
                    }
                },

                {
                    --------------------------------------------------
                    -- original stone mech scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_STONEMECH_SCENE,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- grab a template for reference node
                            ["SKW"] = {"Type","REFERENCE",},
                            ["SEC_SAVE_TO"] = "SEC_REFERENCE",
                        },

                        {
                            -- edit the template: reset transform data and namehash
                            ["SEC_EDIT"] = "SEC_REFERENCE",
                            ["VCT"] =
                            {
                                {"NameHash",0,},
                                {"TransX",0,},{"TransY",0,},{"TransZ",0,},
                                {"RotX",0,},{"RotY",0,},{"RotZ",0,},
                            },
                        },

                        {
                            -- edit the template: reset geometry embed
                            ["SEC_EDIT"] = "SEC_REFERENCE",
                            ["SKW"] = {"Name","EMBEDGEOMETRY",},
                            ["VCT"] = {{"Value","FALSE",},},
                        },
                    }
                },

                --------------------------------------------------

                {
                    -- stone body scene MBIN
                    ["MBIN_FILE_SOURCE"] = MECH_DATA_BODY["Scene"],
                    ["EXML_CHANGE_TABLE"] =  PartScene_RemoveNodes(MECH_DATA_BODY)
                },

                {
                    -- stone legs scene MBIN
                    ["MBIN_FILE_SOURCE"] = MECH_DATA_LEGS["Scene"],
                    ["EXML_CHANGE_TABLE"] = PartScene_RemoveNodes(MECH_DATA_LEGS)
                },

                {
                    -- stone left arm scene MBIN
                    ["MBIN_FILE_SOURCE"] = MECH_DATA_ARML["Scene"],
                    ["EXML_CHANGE_TABLE"] = PartScene_RemoveNodes(MECH_DATA_ARML)
                },

                {
                    -- stone right arm scene MBIN
                    ["MBIN_FILE_SOURCE"] = MECH_DATA_ARMR["Scene"],
                    ["EXML_CHANGE_TABLE"] = PartScene_RemoveNodes(MECH_DATA_ARMR)
                },

                --------------------------------------------------

                {
                    --------------------------------------------------
                    -- stone body armor MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = MECH_DATA_BODY_ARMOR["Scene"],
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        -- save armor bits
                        PartScene_SaveNode("SEC_TORSO_ARMOR1","RuinMechTorsoBreak1"),
                        PartScene_SaveNode("SEC_TORSO_ARMOR2","RuinMechTorsoBreak2"),
                        PartScene_SaveNode("SEC_TORSO_ARMOR3","RuinMechTorsoBreak3"),
                        PartScene_SaveNode("SEC_TORSO_ARMOR4","RuinMechSpineBreak"),
                        PartScene_SaveNode("SEC_TORSO_ARMOR5","RuinMechHeadBreak"),

                        -- apply transform to them
                        PartScene_Transform("SEC_TORSO_ARMOR1",MECH_DATA_BODY_ARMOR),
                        PartScene_Transform("SEC_TORSO_ARMOR2",MECH_DATA_BODY_ARMOR),
                        PartScene_Transform("SEC_TORSO_ARMOR3",MECH_DATA_BODY_ARMOR),
                        PartScene_Transform("SEC_TORSO_ARMOR4",MECH_DATA_BODY_ARMOR),
                        PartScene_Transform("SEC_TORSO_ARMOR5",MECH_DATA_BODY_ARMOR),

                        -- remove all children elements
                        PartScene_RemoveAll(),

                        -- add armor bits back
                        PartScene_AddSaved("SEC_TORSO_ARMOR1"),
                        PartScene_AddSaved("SEC_TORSO_ARMOR2"),
                        PartScene_AddSaved("SEC_TORSO_ARMOR3"),
                        PartScene_AddSaved("SEC_TORSO_ARMOR4"),
                        PartScene_AddSaved("SEC_TORSO_ARMOR5"),
                    }
                },

                {
                    --------------------------------------------------
                    -- right arm armor MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = MECH_DATA_ARMR_ARMOR["Scene"],
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        PartScene_SaveNode("SEC_ARMR_ARMOR","RuinMechRightArmBreak"),
                        PartScene_Transform("SEC_ARMR_ARMOR",MECH_DATA_ARMR_ARMOR),
                        PartScene_RemoveAll(),
                        PartScene_AddSaved("SEC_ARMR_ARMOR"),
                    }
                },

                {
                    --------------------------------------------------
                    -- left arm armor MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = MECH_DATA_ARML_ARMOR["Scene"],
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        PartScene_SaveNode("SEC_ARML_ARMOR","RuinMechLeftArmBreak"),
                        PartScene_Transform("SEC_ARML_ARMOR",MECH_DATA_ARML_ARMOR),
                        PartScene_RemoveAll(),
                        PartScene_AddSaved("SEC_ARML_ARMOR"),
                    }
                },

                {
                    --------------------------------------------------
                    -- player exomech scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_EXOMECH_SCENE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add node for stone body mesh
                        MechScene_EditName("SEC_REFERENCE",MECH_DATA_BODY),
                        MechScene_EditLink("SEC_REFERENCE",MECH_DATA_BODY),
                        MechScene_AddNode("SEC_REFERENCE","_RightArm_ARMY"),

                        -- add node for stone legs mesh
                        MechScene_EditName("SEC_REFERENCE",MECH_DATA_LEGS),
                        MechScene_EditLink("SEC_REFERENCE",MECH_DATA_LEGS),
                        MechScene_AddNode("SEC_REFERENCE","_RightArm_ARMY"),

                        -- add node for stone left arm mesh
                        MechScene_EditName("SEC_REFERENCE",MECH_DATA_ARML),
                        MechScene_EditLink("SEC_REFERENCE",MECH_DATA_ARML),
                        MechScene_AddNode("SEC_REFERENCE","_RightArm_ARMY"),

                        -- add node for stone right arm mesh
                        MechScene_EditName("SEC_REFERENCE",MECH_DATA_ARMR),
                        MechScene_EditLink("SEC_REFERENCE",MECH_DATA_ARMR),
                        MechScene_AddNode("SEC_REFERENCE","_RightArm_ARMY"),

                        --------------------------------------------------

                        -- add node for stone body armor
                        MechScene_EditName("SEC_REFERENCE",MECH_DATA_BODY_ARMOR),
                        MechScene_EditLink("SEC_REFERENCE",MECH_DATA_BODY_ARMOR),
                        MechScene_AddNode("SEC_REFERENCE","THRUSTERLOCATOR"),

                        -- add node for right arm armor
                        MechScene_EditName("SEC_REFERENCE",MECH_DATA_ARMR_ARMOR),
                        MechScene_EditLink("SEC_REFERENCE",MECH_DATA_ARMR_ARMOR),
                        MechScene_AddNode("SEC_REFERENCE","CONTRAIL1"),

                        -- add node for left arm armor
                        MechScene_EditName("SEC_REFERENCE",MECH_DATA_ARML_ARMOR),
                        MechScene_EditLink("SEC_REFERENCE",MECH_DATA_ARML_ARMOR),
                        MechScene_AddNode("SEC_REFERENCE","CONTRAIL"),

                        --------------------------------------------------

                        {
                            -- link new gun entity to remove the turret with installing stone body
                            ["SKW"] = {"Name","Gun","Name","ATTACHMENT",},
                            ["VCT"] = {{"Value",FILE_STONEMECH_GUN_ENTITY,},},
                        },

                        {
                            -- remove meshes on scanner node
                            ["SKW"] = {"Name","_Scanner_EXOCRAFT",},
                            ["PKW"] = "Children",
                            ["CREATE_HOES"] = "TRUE",
                        },
                    }
                },
                
                {
                    --------------------------------------------------
                    -- vehicle globals MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_GLOBALS_VEHICLEGLOBALS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- create links between tech IDs and descriptor groups
                        Vehicle_SetStoneDescriptor(MECH_DATA_BODY),Vehicle_SetStoneTechnology(MECH_DATA_BODY),
                        Vehicle_SetStoneDescriptor(MECH_DATA_LEGS),Vehicle_SetStoneTechnology(MECH_DATA_LEGS),
                        Vehicle_SetStoneDescriptor(MECH_DATA_ARML),Vehicle_SetStoneTechnology(MECH_DATA_ARML),
                        Vehicle_SetStoneDescriptor(MECH_DATA_ARMR),Vehicle_SetStoneTechnology(MECH_DATA_ARMR),
                    }
                },

                {
                    --------------------------------------------------
                    -- technology table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_TECHNOLOGY_TABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- create tech module for body mesh
                        Technology_GetTemplate("SEC_TECH_BODY",MECH_DATA_BODY),
                        Technology_EditTemplate("SEC_TECH_BODY",MECH_DATA_BODY),
                        Technology_EditCrafting("SEC_TECH_BODY",MECH_DATA_BODY,1),
                        Technology_EditCrafting("SEC_TECH_BODY",MECH_DATA_BODY,2),
                        Technology_EditCrafting("SEC_TECH_BODY",MECH_DATA_BODY,3),
                        Technology_AddModule("SEC_TECH_BODY"),

                        -- create tech module for legs mesh
                        Technology_GetTemplate("SEC_TECH_LEGS",MECH_DATA_LEGS),
                        Technology_EditTemplate("SEC_TECH_LEGS",MECH_DATA_LEGS),
                        Technology_EditCrafting("SEC_TECH_LEGS",MECH_DATA_LEGS,1),
                        Technology_EditCrafting("SEC_TECH_LEGS",MECH_DATA_LEGS,2),
                        Technology_ResetStatBonuses("SEC_TECH_LEGS"),
                        Technology_SetBonusStat("SEC_TECH_LEGS",MECH_DATA_LEGS),
                        Technology_AddModule("SEC_TECH_LEGS"),

                        -- create tech module for left arm mesh
                        Technology_GetTemplate("SEC_TECH_ARML",MECH_DATA_ARML),
                        Technology_EditTemplate("SEC_TECH_ARML",MECH_DATA_ARML),
                        Technology_EditCrafting("SEC_TECH_ARML",MECH_DATA_ARML,1),
                        Technology_EditCrafting("SEC_TECH_ARML",MECH_DATA_ARML,2),
                        Technology_EditCrafting("SEC_TECH_ARML",MECH_DATA_ARML,3),
                        Technology_ResetStatBonuses("SEC_TECH_ARML"),
                        Technology_SetBonusStat("SEC_TECH_ARML",MECH_DATA_ARML),
                        Technology_AddModule("SEC_TECH_ARML"),

                        -- create tech module for right arm mesh
                        Technology_GetTemplate("SEC_TECH_ARMR",MECH_DATA_ARMR),
                        Technology_EditTemplate("SEC_TECH_ARMR",MECH_DATA_ARMR),
                        Technology_EditCrafting("SEC_TECH_ARMR",MECH_DATA_ARMR,1),
                        Technology_EditCrafting("SEC_TECH_ARMR",MECH_DATA_ARMR,2),
                        Technology_EditCrafting("SEC_TECH_ARMR",MECH_DATA_ARMR,3),
                        Technology_ResetStatBonuses("SEC_TECH_ARMR"),
                        Technology_SetBonusStat("SEC_TECH_ARMR",MECH_DATA_ARMR),
                        Technology_AddModule("SEC_TECH_ARMR"),
                    }
                },

                {
                    --------------------------------------------------
                    -- character descriptor groups MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_DESCRIPTION_GROUPS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- create a descriptor group for body mesh
                        CharDescr_GetTemplate("SEC_CHAR_BODY","MECH_BODY_SEN"),
                        CharDescr_EditGroup("SEC_CHAR_BODY",MECH_DATA_BODY),
                        CharDescr_EditDescr("SEC_CHAR_BODY",MECH_DATA_BODY),
                        CharDescr_AddGroup("SEC_CHAR_BODY","MECH_BODY"),

                        -- create a descriptor group for legs mesh
                        CharDescr_GetTemplate("SEC_CHAR_LEGS","MECH_LEGS_SEN"),
                        CharDescr_EditGroup("SEC_CHAR_LEGS",MECH_DATA_LEGS),
                        CharDescr_EditDescr("SEC_CHAR_LEGS",MECH_DATA_LEGS),
                        CharDescr_AddGroup("SEC_CHAR_LEGS","MECH_LEGS"),

                        -- create a descriptor group for left arm mesh
                        CharDescr_GetTemplate("SEC_CHAR_ARML","MECH_ARM_L_SEN"),
                        CharDescr_EditGroup("SEC_CHAR_ARML",MECH_DATA_ARML),
                        CharDescr_EditDescr("SEC_CHAR_ARML",MECH_DATA_ARML),
                        CharDescr_AddGroup("SEC_CHAR_ARML","MECH_ARM_L"),

                        -- create a descriptor group for right arm mesh
                        CharDescr_GetTemplate("SEC_CHAR_ARMR","MECH_ARM_R_SEN"),
                        CharDescr_EditGroup("SEC_CHAR_ARMR",MECH_DATA_ARMR),
                        CharDescr_EditDescr("SEC_CHAR_ARMR",MECH_DATA_ARMR),
                        CharDescr_AddGroup("SEC_CHAR_ARMR","MECH_ARM_R"),
                    }
                },

                {
                    --------------------------------------------------
                    -- exomech descriptor MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_MECH_DESCRIPTOR,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- create a descriptor group for body mesh
                        MechDescr_GetTemplate("SEC_MECH_BODY","_BODY_SENTINEL"),
                        MechDescr_EditTemplate("SEC_MECH_BODY",MECH_DATA_BODY),
                        MechDescr_AddGroup("SEC_MECH_BODY","_BODY_"),

                        -- create a descriptor group for legs mesh
                        MechDescr_GetTemplate("SEC_MECH_LEGS","_LEGS_SENTINEL"),
                        MechDescr_EditTemplate("SEC_MECH_LEGS",MECH_DATA_LEGS),
                        MechDescr_AddGroup("SEC_MECH_LEGS","_LEGS_"),

                        -- create a descriptor group for left arm mesh
                        MechDescr_GetTemplate("SEC_MECH_ARML","_LEFTARM_SENTINEL"),
                        MechDescr_EditTemplate("SEC_MECH_ARML",MECH_DATA_ARML),
                        MechDescr_AddGroup("SEC_MECH_ARML","_LEFTARM_"),

                        -- create a descriptor group for right arm mesh
                        MechDescr_GetTemplate("SEC_MECH_ARMR","_RIGHTARM_SENTINEL"),
                        MechDescr_EditTemplate("SEC_MECH_ARMR",MECH_DATA_ARMR),
                        MechDescr_AddGroup("SEC_MECH_ARMR","_RIGHTARM_"),
                    }
                },

                {
                    --------------------------------------------------
                    -- new turret entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_STONEMECH_GUN_ENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- reset list of tech activators, put stone body tech
                        -- set the logic to inverted (hide node on tech install)
                        {   ["PKW"] = "Techs",      ["CREATE_HOES"] = "TRUE",   },
                        {   ["PKW"] = "Techs",      ["CREATE_HOS"] = "TRUE",    ["ADD"] = [[<Property name="Techs" value="]]..MECH_DATA_BODY["ID"]..[[" />]]    },    
                        {   ["VCT"] = {{"Inverted","true",},},  },
                    }
                },

                {
                    --------------------------------------------------
                    -- reward table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_REWARD_TABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for glowing mineral reward
                            ["SKW"] = {"Reward","GcRewardSpecificProduct","ID","GEODE_RARE",},
                            ["SECTION_UP_SPECIAL"] = 2,
                            ["SEC_SAVE_TO"] = "SEC_REWARD_CRYSTAL",
                        },

                        {
                            -- chance percentage change
                            ["SEC_EDIT"] = "SEC_REWARD_CRYSTAL",
                            ["VCT"] = {{"PercentageChance",50,},},
                        },

                        --------------------------------------------------

                        {
                            -- get template for reward object
                            ["SKW"] = {"Id","TECH_WEAPON",},
                            ["SEC_SAVE_TO"] = "SEC_REWARD_MAIN",
                        },

                        {
                            -- edit the template
                            ["SEC_EDIT"] = "SEC_REWARD_MAIN",
                            ["VCT"] =
                            {
                                {"Id","R_RUINLOOT",},
                                {"RewardChoice","SelectAlways",},
                                {"OverrideZeroSeed","true",},
                                {"PercentageChance",50,},
                                {"FailIfAllKnown","true",},
                            },
                        },

                        {
                            -- reset the list of tech
                            ["SEC_EDIT"] = "SEC_REWARD_MAIN",
                            ["PKW"] = "TechList",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- add stone techs to the list
                            ["SEC_EDIT"] = "SEC_REWARD_MAIN",
                            ["PKW"] = "TechList",
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = 
                            [[
                            <Property name="TechList" value="]]..MECH_DATA_LEGS["ID"]..[[" />
                            <Property name="TechList" value="]]..MECH_DATA_ARMR["ID"]..[[" />
                            <Property name="TechList" value="]]..MECH_DATA_ARML["ID"]..[[" />
                            <Property name="TechList" value="]]..MECH_DATA_BODY["ID"]..[[" />
                            ]]
                        },

                        {
                            -- add mineral reward component
                            ["SEC_EDIT"] = "SEC_REWARD_MAIN",
                            ["SKW"] = {"UseInventoryChoiceOverride","false",},
                            ["PKW"] = "List",
                            ["SEC_ADD_NAMED"] = "SEC_REWARD_CRYSTAL",
                        },

                        {
                            -- add new reward object to the list
                            ["PKW"] = "InteractionTable",
                            ["SEC_ADD_NAMED"] = "SEC_REWARD_MAIN",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- ruin mech entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_RUINMECH_ENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- remove the polished stone drop mechanic
                            ["PKW"] = "GivesSubstances",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- add loot drop object
                            ["SKW"] = {"DestroyedModel","TkModelResource",},
                            ["VCT"] = {{"Filename",FILE_MODELS_RUINMECH_LOOT,},},
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- ruin loot scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_RUINMECH_LOOT,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- remove thruster bit
                            ["SKW"] = {"Name","REFEngineVFX",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- replace entity link
                            ["SKW"] = {"Name","ATTACHMENT",},
                            ["VCT"] = {{"Value",FILE_MODELS_RUINLOOT_ENTITY,},},
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- ruin loot entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_RUINLOOT_ENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- link new reward object, change name
                            ["PKW"] = "GcSimpleInteractionComponentData",
                            ["VCT"] =
                            {
                                {"Id","R_RUINLOOT",},
                                {"HideContents","true",},
                                {"Name","UI_RUIN_CHEST_NAME",},
                            },
                        },

                        {
                            -- change name and marker icon
                            ["PKW"] = "GcScannableComponentData",
                            ["VCT"] =
                            {
                                {"ScanName","UI_RUIN_CHEST_NAME",},
                                {"ScanIconType","RuinBeacon",},
                            },
                        },

                        {
                            ["PKW"] = "GcDestructableComponentData",
                            ["VCT"] =
                            {
                                {"Explosion","STONEPARTEXPL",},
                                {"GivesReward","R_RUINLOOT",},
                                {"HideReward","true",},
                            },
                        },

                        {
                            ["PKW"] = "GcShootableComponentData",
                            ["VCT"] =
                            {
                                {"Health",1500,},
                                {"NameOverride","UI_RUIN_CHEST_NAME",},
                            },
                        },
                    }
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------