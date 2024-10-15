----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "SentinelStarshipFabricator"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "512"
METADATA_MOD_DESC       = "This mod allows players to synthesize Interceptor-type starships in the fabricator machines using a very simplified assembly process. Modifies files in METADATA\\GAMESTATE\\PLAYERDATA\\ and UI directories."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_METADATA_CUSTOM_MODULES =              "METADATA\\GAMESTATE\\PLAYERDATA\\MODULARCUSTOMISATIONDATATABLE.MBIN"
FILE_METADATA_CUSTOM_DESCRIPTORS =          "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"

FILE_UI_SHIP_BUILDER =                      "UI\\SHIP_BUILDER_PAGE.MBIN"
FILE_UI_SHIP_SLOT =                         "UI\\SLOTS\\SLOT_SHIPITEM.MBIN"

--------------------------------------------------
-- slot positions on the fabricator screen
--------------------------------------------------

UI_COCKPIT = {28,30}
UI_LIGHTS = {28,40}
UI_GRILL = {28,60}
UI_SKIRT = {33,60}

UI_WINGSO = {33,30}
UI_WINGSU = {33,40}
UI_WINGSH = {38,30}
UI_WINGSB = {48,30}

UI_FLAPS = {43,30}
UI_ADDON = {65,60}
UI_FLAME = {70,60}
UI_REACTOR = {53,35}

----------------------------------------------------------------------------------------------------
-- items used in assembly process
----------------------------------------------------------------------------------------------------

FUNCTION_SECTION = ""

--------------------------------------------------
-- products for misc. slots
--------------------------------------------------
PRODUCTS_REACTOR = {}
PRODUCTS_REACTOR["C"] = "DRONE_SALVAGE"
PRODUCTS_REACTOR["B"] = "SPIDER_PROD"
PRODUCTS_REACTOR["A"] = "SHIPBRAIN"
PRODUCTS_REACTOR["S"] = "SENTFREI_PROD"

PRODUCTS_COCKPITS = {}
PRODUCTS_COCKPITS["A"] = "LAND1"
PRODUCTS_COCKPITS["B"] = "LAND2"
PRODUCTS_COCKPITS["C"] = "LAND3"

PRODUCTS_FLAPS = {}
PRODUCTS_FLAPS["N"] = "OXYGEN"
PRODUCTS_FLAPS["A"] = "ROBOT1"

--------------------------------------------------
-- products for front lights
--------------------------------------------------
PRODUCTS_LIGHTS = {}

-- subgroup cockpit B
PRODUCTS_LIGHTS["N1"] = "OXYGEN"
PRODUCTS_LIGHTS["A1"] = "YELLOW2"
PRODUCTS_LIGHTS["B1"] = "RED2"
PRODUCTS_LIGHTS["C1"] = "GREEN2"
PRODUCTS_LIGHTS["D1"] = "BLUE2"
PRODUCTS_LIGHTS["E1"] = "EX_YELLOW"
PRODUCTS_LIGHTS["F1"] = "EX_RED"
PRODUCTS_LIGHTS["G1"] = "EX_GREEN"
PRODUCTS_LIGHTS["H1"] = "EX_BLUE"
PRODUCTS_LIGHTS["I1"] = "ASTEROID1"
PRODUCTS_LIGHTS["J2"] = "ASTEROID2"
PRODUCTS_LIGHTS["G8"] = "ASTEROID3"

-- subgroup cockpit C
PRODUCTS_LIGHTS["N"] = "OXYGEN"
PRODUCTS_LIGHTS["A"] = "LUSH1"
PRODUCTS_LIGHTS["B"] = "DUSTY1"
PRODUCTS_LIGHTS["C"] = "TOXIC1"
PRODUCTS_LIGHTS["D"] = "RADIO1"
PRODUCTS_LIGHTS["E"] = "COLD1"
PRODUCTS_LIGHTS["F"] = "HOT1"
PRODUCTS_LIGHTS["G"] = "LAVA1"
PRODUCTS_LIGHTS["H"] = "LAND1"
PRODUCTS_LIGHTS["I"] = "LAND2"
PRODUCTS_LIGHTS["J"] = "LAND3"

--------------------------------------------------
-- products for skirts
--------------------------------------------------
PRODUCTS_SKIRT = {}

-- subgroup skirt A dark
PRODUCTS_SKIRT["A6A2"] = "HOT1"
PRODUCTS_SKIRT["A6A4"] = "FUEL1"
PRODUCTS_SKIRT["A6AE"] = "FUEL2"
PRODUCTS_SKIRT["A1S6A2"] = "RADIO1"
PRODUCTS_SKIRT["A1S6A4"] = "CATALYST1"
PRODUCTS_SKIRT["A1S6AE"] = "CATALYST2"
PRODUCTS_SKIRT["A1S3A2"] = "TOXIC1"
PRODUCTS_SKIRT["A1S3A4"] = "WATER1"
PRODUCTS_SKIRT["A1S3AE"] = "WATER2"
PRODUCTS_SKIRT["A1SA2"] = "COLD1"
PRODUCTS_SKIRT["A1SA4"] = "CAVE1"
PRODUCTS_SKIRT["A1SAE"] = "CAVE2"

-- subgroup skirt A light
PRODUCTS_SKIRT["A8A2"] = "CREATURE1"
PRODUCTS_SKIRT["A8A4"] = "ROBOT1"
PRODUCTS_SKIRT["A8AE"] = "ROBOT2"
PRODUCTS_SKIRT["A1S10A2"] = "DUSTY1"
PRODUCTS_SKIRT["A1S10A4"] = "ASTEROID2"
PRODUCTS_SKIRT["A1S10AE"] = "SUNGOLD"
PRODUCTS_SKIRT["A1S11A2"] = "LUSH1"
PRODUCTS_SKIRT["A1S11A4"] = "LAVA1"
PRODUCTS_SKIRT["A1S11AE"] = "STELLAR2"
PRODUCTS_SKIRT["A1S12A2"] = "ROCKETSUB"
PRODUCTS_SKIRT["A1S12A4"] = "ASTEROID1"
PRODUCTS_SKIRT["A1S12AE"] = "ASTEROID3"

-- subgroup skirt B
PRODUCTS_SKIRT["ANAN"] = "OXYGEN"
PRODUCTS_SKIRT["A7AN"] = "YELLOW2"
PRODUCTS_SKIRT["A7AA"] = "EX_YELLOW"
PRODUCTS_SKIRT["A1S7AN"] = "RED2"
PRODUCTS_SKIRT["A1S7AA"] = "EX_RED"
PRODUCTS_SKIRT["A1S8AN"] = "GREEN2"
PRODUCTS_SKIRT["A1S8AA"] = "EX_GREEN"
PRODUCTS_SKIRT["A1S9AN"] = "BLUE2"
PRODUCTS_SKIRT["A1S9AA"] = "EX_BLUE"
PRODUCTS_SKIRT["A9AN"] = "SPACEGUNK1"
PRODUCTS_SKIRT["A9AA"] = "SPACEGUNK2"
PRODUCTS_SKIRT["A1S13AN"] = "SPACEGUNK3"
PRODUCTS_SKIRT["A1S13AA"] = "SPACEGUNK4"
PRODUCTS_SKIRT["A1S14AN"] = "SPACEGUNK5"
PRODUCTS_SKIRT["A1S14AA"] = "PLANT_POOP"
PRODUCTS_SKIRT["A1S15AN"] = "AF_METAL"
PRODUCTS_SKIRT["A1S15AA"] = "BUI_SCRAP"

--------------------------------------------------
-- products for Vertical Top wings
--------------------------------------------------
PRODUCTS_WINGSO = {}
PRODUCTS_WINGSO["NONE"] = "OXYGEN"

-- subgroup Misc
PRODUCTS_WINGSO["NULL"] = "ROBOT2"
PRODUCTS_WINGSO["CLSD"] = "ROBOT1"

-- subgroup Flip
PRODUCTS_WINGSO["FLPN"] = "SAND1"
PRODUCTS_WINGSO["FLPB"] = "LAND1"
PRODUCTS_WINGSO["FLPW"] = "LAND2"
PRODUCTS_WINGSO["FLPS"] = "LAND3"

-- subgroup Top Prong No Extra Wing
PRODUCTS_WINGSO["TPNN"] = "YELLOW2"
PRODUCTS_WINGSO["TPBN"] = "RED2"
PRODUCTS_WINGSO["TPWN"] = "GREEN2"
PRODUCTS_WINGSO["TPSN"] = "BLUE2"

-- subgroup Top Prong Extra Wing
PRODUCTS_WINGSO["TPNE"] = "EX_YELLOW"
PRODUCTS_WINGSO["TPBE"] = "EX_RED"
PRODUCTS_WINGSO["TPWE"] = "EX_GREEN"
PRODUCTS_WINGSO["TPSE"] = "EX_BLUE"

--------------------------------------------------
-- products for Vertical Bottom wings
--------------------------------------------------
PRODUCTS_WINGSU = {}
PRODUCTS_WINGSU["NONE"] = "OXYGEN"

-- subgroup Misc
PRODUCTS_WINGSU["NULL"] = "ROBOT2"
PRODUCTS_WINGSU["CLSD"] = "ROBOT1"
PRODUCTS_WINGSU["LEGS"] = "STELLAR2"

-- subgroup Bottom Prong
PRODUCTS_WINGSU["BOTN"] = "YELLOW2"
PRODUCTS_WINGSU["BOTB"] = "RED2"
PRODUCTS_WINGSU["BOTW"] = "GREEN2"
PRODUCTS_WINGSU["BOTS"] = "BLUE2"

--------------------------------------------------
-- products for Horizontal wings
--------------------------------------------------
PRODUCTS_WINGSH = {}
PRODUCTS_WINGSH["NONE"] = "OXYGEN"

-- subgroup Horizontal Misc
PRODUCTS_WINGSH["NULL"] = "ROBOT2"
PRODUCTS_WINGSH["CLSD"] = "ROBOT1"

-- subgroup Horizontal Open
PRODUCTS_WINGSH["HONN"] = "SAND1"
PRODUCTS_WINGSH["HOAN"] = "LAND1"
PRODUCTS_WINGSH["HONA"] = "LAND2"
PRODUCTS_WINGSH["HOAA"] = "LAND3"

-- subgroup Horizontal Bottom No Extra Wing
PRODUCTS_WINGSH["HBONN"] = "YELLOW2"
PRODUCTS_WINGSH["HBOCN"] = "RED2"
PRODUCTS_WINGSH["HBCNN"] = "STELLAR2"
PRODUCTS_WINGSH["HBCON"] = "GREEN2"
PRODUCTS_WINGSH["HBCAN"] = "BLUE2"

-- subgroup Horizontal Bottom Extra Wing
PRODUCTS_WINGSH["HBONA"] = "EX_YELLOW"
PRODUCTS_WINGSH["HBOCA"] = "EX_RED"
PRODUCTS_WINGSH["HBCOA"] = "EX_GREEN"
PRODUCTS_WINGSH["HBCAA"] = "EX_BLUE"

-- subgroup Horizontal Top
PRODUCTS_WINGSH["HTONN"] = "LUSH1"
PRODUCTS_WINGSH["HTONA"] = "DUSTY1"
PRODUCTS_WINGSH["HTOCN"] = "TOXIC1"
PRODUCTS_WINGSH["HTOCA"] = "COLD1"
PRODUCTS_WINGSH["HTCN"] = "HOT1"
PRODUCTS_WINGSH["HTCON"] = "LAVA1"
PRODUCTS_WINGSH["HTCOA"] = "RADIO1"

--------------------------------------------------
-- products for Back wings
--------------------------------------------------
PRODUCTS_WINGSB = {}
PRODUCTS_WINGSB["NONE"] = "OXYGEN"

-- subgroup Carriage A
PRODUCTS_WINGSB["BANN"] = "LUSH1"
PRODUCTS_WINGSB["BANA"] = "DUSTY1"
PRODUCTS_WINGSB["BANB"] = "TOXIC1"
PRODUCTS_WINGSB["BAAN"] = "COLD1"
PRODUCTS_WINGSB["BAAA"] = "HOT1"
PRODUCTS_WINGSB["BAAB"] = "LAVA1"
PRODUCTS_WINGSB["BABN"] = "RADIO1"
PRODUCTS_WINGSB["BABA"] = "CREATURE1"
PRODUCTS_WINGSB["BABB"] = "ROCKETSUB"

-- subgroup Carriage B Bottom Full
PRODUCTS_WINGSB["BBFL"] = "EX_YELLOW"
PRODUCTS_WINGSB["BBFU"] = "EX_RED"
PRODUCTS_WINGSB["BBFH"] = "EX_GREEN"
PRODUCTS_WINGSB["BBFC"] = "EX_BLUE"

-- subgroup Carriage B Bottom Half
PRODUCTS_WINGSB["BBHL"] = "YELLOW2"
PRODUCTS_WINGSB["BBHU"] = "RED2"
PRODUCTS_WINGSB["BBHH"] = "GREEN2"
PRODUCTS_WINGSB["BBHC"] = "BLUE2"

-- subgroup Carriage B Bottom Carriage
PRODUCTS_WINGSB["BBCL"] = "SAND1"
PRODUCTS_WINGSB["BBCU"] = "LAND1"
PRODUCTS_WINGSB["BBCH"] = "LAND2"
PRODUCTS_WINGSB["BBCC"] = "LAND3"

--------------------------------------------------
-- products for grill piece
--------------------------------------------------

PRODUCTS_GRILL = {}
PRODUCTS_GRILL["NULL"] = "OXYGEN"

PRODUCTS_GRILL["S1S3"] = "LUSH1"
PRODUCTS_GRILL["S3"] = "DUSTY1"
PRODUCTS_GRILL["S11"] = "TOXIC1"
PRODUCTS_GRILL["S1S6"] = "COLD1"
PRODUCTS_GRILL["S22A"] = "HOT1"
PRODUCTS_GRILL["S22B"] = "LAVA1"
PRODUCTS_GRILL["S22C"] = "RADIO1"
PRODUCTS_GRILL["S22D"] = "CREATURE1"

--------------------------------------------------
-- products for engine flame
--------------------------------------------------

PRODUCTS_FLAME = {}

PRODUCTS_FLAME["1"] = "LUSH1"
PRODUCTS_FLAME["2"] = "DUSTY1"
PRODUCTS_FLAME["3"] = "TOXIC1"
PRODUCTS_FLAME["4"] = "COLD1"
PRODUCTS_FLAME["5"] = "HOT1"
PRODUCTS_FLAME["6"] = "LAVA1"
PRODUCTS_FLAME["7"] = "RADIO1"

--------------------------------------------------
-- products for addons
--------------------------------------------------

PRODUCTS_ADDON = {}
PRODUCTS_ADDON["NONE"] = "OXYGEN"

-- subgroup wing ends
PRODUCTS_ADDON["SEA2"] = "GREEN2"
PRODUCTS_ADDON["AEWA"] = "EX_GREEN"

-- subgroup elytra
PRODUCTS_ADDON["ASA7"] = "BLUE2"
PRODUCTS_ADDON["ASA8"] = "EX_BLUE"

-- subgroup wing jets and antennas
PRODUCTS_ADDON["JETS"] = "RED2"
PRODUCTS_ADDON["ANTS"] = "EX_RED"

-- subgroup skirt B misc
PRODUCTS_ADDON["ENGA"] = "ROCKETSUB"



----------------------------------------------------------------------------------------------------
-- misc functions
----------------------------------------------------------------------------------------------------

function ReplaceReactorCore(class) return
{   ["SKW"] = {"SlotID","SENT_CORE","ItemID","SHIP_CORE_"..class,},["VCT"] = {{"ItemID",PRODUCTS_REACTOR[class],}},   }
end

function GetSlotTemplate() return
{   ["SKW"] = {"ID","SLOT04GRP",},  ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = "SEC_UI_SLOT",    }
end

function RenameSlotGroup(name) return
{   ["SEC_EDIT"] = "SEC_UI_SLOT",   ["VCT"] = {{"ID",name,},},      }
end

function RemoveLabelText() return
{   ["SEC_EDIT"] = "SEC_UI_SLOT",   ["SKW"] = {"Text","UI_SHIP_BUILDER_INPUT_CORE",},   ["VCT"] = {{"Text","",},},  }
end

function AddSlotAfter(id) return
{   ["SKW"] = {"ID",id,},   ["SECTION_UP_SPECIAL"] = 1,     ["ADD_OPTION"] = "ADDafterSECTION",     ["SEC_ADD_NAMED"] = "SEC_UI_SLOT",  }
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

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    --------------------------------------------------
                    -- modular customisation data
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOM_MODULES,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- enable Sentinel ships in fabricator
                            -- change label in bottom bar and point to proc gen scene
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["VCT"] = 
                            {
                                {"IsEnabled","True",},
                                {"TitleLocId","BASESTATS_ROBOTSHIP",},
                                {"Filename","MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.SCENE.MBIN",},
                            },
                        },

                        {
                             -- change reactor slot name, move the input slot
                            ["SKW"] = {"SlotID","SHUTTLE_CORE",},
                            ["VCT"] = 
                            {
                                {"SlotID","SENT_CORE",},
                                {"x",UI_REACTOR[1],},
                                {"y",UI_REACTOR[2],},
                                {"LabelLocID","NUCLEUS",},
                            },
                        },

                        -- replace core upgrades with Sentinel themed items
                        ReplaceReactorCore("C"),
                        ReplaceReactorCore("B"),
                        ReplaceReactorCore("A"),
                        ReplaceReactorCore("S"),

                        {
                            -- remove secondary and tertiary colour pickers
                            ["SKW"] = 
                            {
                                {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_SECONDARY",},
                                {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_TERTIARY",},
                            },
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- set orange as default colour
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_PRIMARY",},
                            ["VCT"] = {{"DefaultColourIndex",1,},},
                        },

                        --------------------------------------------------
                        -- rest of table populated by functions below         
                        --------------------------------------------------
                    }
                },

                {
                    --------------------------------------------------
                    -- descriptor groups MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOM_DESCRIPTORS,
                    ["EXML_CHANGE_TABLE"] = {} -- table populated by functions below
                },

                {
                    --------------------------------------------------
                    -- ship fabricator UI
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_SHIP_BUILDER,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add new slots to the fabricator UI
                        GetSlotTemplate(),RenameSlotGroup("SLOT05GRP"),RemoveLabelText(),AddSlotAfter("SLOT04GRP"),
                        GetSlotTemplate(),RenameSlotGroup("SLOT06GRP"),RemoveLabelText(),AddSlotAfter("SLOT05GRP"),
                        GetSlotTemplate(),RenameSlotGroup("SLOT07GRP"),RemoveLabelText(),AddSlotAfter("SLOT06GRP"),
                        GetSlotTemplate(),RenameSlotGroup("SLOT08GRP"),RemoveLabelText(),AddSlotAfter("SLOT07GRP"),
                        GetSlotTemplate(),RenameSlotGroup("SLOT09GRP"),RemoveLabelText(),AddSlotAfter("SLOT08GRP"),
                        GetSlotTemplate(),RenameSlotGroup("SLOT10GRP"),RemoveLabelText(),AddSlotAfter("SLOT09GRP"),
                        GetSlotTemplate(),RenameSlotGroup("SLOT11GRP"),RemoveLabelText(),AddSlotAfter("SLOT10GRP"),
                        GetSlotTemplate(),RenameSlotGroup("SLOT12GRP"),RemoveLabelText(),AddSlotAfter("SLOT11GRP"),

                        -- add 5th indicator dot to the bottom bar, move all dots to center them out
                        {   ["SKW"] = {"ID","DOT04",},      ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = "SEC_UI_DOT",                                             },
                        {   ["SEC_EDIT"] = "SEC_UI_DOT",    ["VCT"] = {{"ID","DOT05",},{"PositionX","@+10",},},                                                         },
                        {   ["SKW"] = {"ID","DOT04",},      ["SECTION_UP_SPECIAL"] = 1,     ["ADD_OPTION"] = "ADDafterSECTION",     ["SEC_ADD_NAMED"] = "SEC_UI_DOT",   },
                        {   ["SKW"] ={{"ID","DOT01",},{"ID","DOT02",},{"ID","DOT03",}, {"ID","DOT04",},{"ID","DOT05",},},   ["VCT"] = {{"PositionX","@-5",},},          },
                    }
                },

                {
                    --------------------------------------------------
                    -- ship part slot MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_SHIP_SLOT,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- force input slots to show substance icons
                        {   ["SKW"] = {"ID","PRODUCT",},    ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = "SEC_ITEM",  },
                        {   ["SEC_EDIT"] = "SEC_ITEM",      ["VCT"] = {{"ID","SUBSTANCE",},},   },
                        {   ["SKW"] = {"ID","BACKGROUND_NO",},  ["SECTION_UP_SPECIAL"] = 1,     ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_ITEM",     },
                    }
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- functions for EXML tables
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- functions for modular MBIN
--------------------------------------------------

function Modules_GetSlotTemplate(id) return
{   ["SKW"] = {"SlotID",id,},   ["SEC_SAVE_TO"] = FUNCTION_SECTION,     }
end

function Modules_ApplyVCT(vct) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = vct,  }
end

function Modules_EditSlotItemData(old,new,descr) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"ItemID",old,},  ["VCT"] = {{"ItemID",new,},{"ActivatedDescriptorGroupID",descr,},},   }
end

function AddSlotToShuttles(slotid) return
{   ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},  ["PKW"] = "Slots",  ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = slotid, }
end

function Modules_RemoveItems(list)

    local SKW = {}

    for i=1,#list do
        SKW[#SKW+1] = {"ItemID",list[i]}
    end

    return {["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = SKW,      ["REMOVE"] = "SECTION",}

end

function Modules_AddNonProcNode(id) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "AssociatedNonProcNodes",     ["CREATE_HOS"] = "TRUE",
    ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="]]..id..[[" /></Property>]],      }
end

--------------------------------------------------
-- functions for descriptors MBIN
--------------------------------------------------

function Descr_GetGroupTemplate(id) return
{   ["SKW"] = {"Id",id,},    ["SEC_SAVE_TO"] = FUNCTION_SECTION,    }
end

function Descr_RenameAndRequire(name,group) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"Id",name,},{"RequiresGroup",group,},},    }
end

function Descr_Fill(id,old,new) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {id,old,},    ["VCT"] = {{id,new,},},     }
end

function Descr_AddNewGroup() return
{   ["PKW"] = "DescriptorGroupSets",    ["SEC_ADD_NAMED"] = FUNCTION_SECTION,   }
end
    
function Descr_Reset(id) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"GroupID",id,},      ["PKW"] = "Descriptors",    ["CREATE_HOES"] = "TRUE",  }
end

function Descr_RemoveGroups(list)

    local SKW = {}

    for i=1,#list do
        SKW[#SKW+1] = {"GroupID",list[i]}
    end

    return {["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = SKW,      ["REMOVE"] = "SECTION",}

end

function Descr_Add(id,list)

    local ListAdd = {}

    for i=1, #list do
        ListAdd[#ListAdd+1] =
        [[
        <Property value="NMSString0x20.xml">
        <Property name="Value" value="]]..list[i]..[[" />
        </Property>
        ]]
    end

    local ChangeTable =
    {
        ["SEC_EDIT"] = FUNCTION_SECTION,
        ["SKW"] = {"GroupID",id,},
        ["PKW"] = "Descriptors",
        ["CREATE_HOS"] = "TRUE",
        ["ADD"] = ListAdd,
    }

    return ChangeTable

end



----------------------------------------------------------------------------------------------------
-- main function for modules MBIN
----------------------------------------------------------------------------------------------------

function Modules_BuildChangeTable(exml)

    --------------------------------------------------
    -- slot 1: cockpit (only the black bit)
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_COCKPIT"

    local VCT = 
    {
        {"SlotID","SENT_COCKPIT",},
        {"LabelLocID","COCKPIT",},
        {"UILocatorName","SLOT_COCKPIT",},
        {"x",UI_COCKPIT[1],},
        {"y",UI_COCKPIT[2],},
        {"UISlotGraphicLayer","FUSELAGE",},
        {"ActivatedDescriptorGroupID","SENT_PIT_A",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("FIGHTER_ENGINES"),
        Modules_ApplyVCT(VCT),
        Modules_EditSlotItemData("FIGHT_ENGIB",PRODUCTS_COCKPITS["A"],"SENT_PIT_A"),
        Modules_EditSlotItemData("FIGHT_ENGIC",PRODUCTS_COCKPITS["B"],"SENT_PIT_B"),
        Modules_EditSlotItemData("FIGHT_ENGID",PRODUCTS_COCKPITS["C"],"SENT_PIT_C"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 2: lights / decals on cockpit
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_LIGHTS"

    local VCT = 
    {
        {"SlotID","SENT_LIGHTS",},
        {"LabelLocID","DECAL",},
        {"UILocatorName","SLOT_COCKPIT",},
        {"x",UI_LIGHTS[1],},
        {"y",UI_LIGHTS[2],},
        {"UISlotGraphicLayer","REACTOR",},
        {"ActivatedDescriptorGroupID","",},
    }

    local ITEMS = 
    {"SCIEN_WINGHC","SCIEN_WINGHD","SCIEN_WINGI","SCIEN_WINGKA","SCIEN_WINGKB","SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL"}

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SCI_L_WING"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems(ITEMS),

        -- add light variants for cockpit B
        Modules_EditSlotItemData("SCIEN_WINGEMP",PRODUCTS_LIGHTS["A1"],"SENT_LIGHT_A1"),
        Modules_EditSlotItemData("SCIEN_WINGT_A",PRODUCTS_LIGHTS["B1"],"SENT_LIGHT_B1"),
        Modules_EditSlotItemData("SCIEN_WINGT_C",PRODUCTS_LIGHTS["C1"],"SENT_LIGHT_C1"),
        Modules_EditSlotItemData("SCIEN_WINGT_F",PRODUCTS_LIGHTS["D1"],"SENT_LIGHT_D1"),
        Modules_EditSlotItemData("SCIEN_WINGT_G",PRODUCTS_LIGHTS["E1"],"SENT_LIGHT_E1"),
        Modules_EditSlotItemData("SCIEN_WINGT_I",PRODUCTS_LIGHTS["F1"],"SENT_LIGHT_F1"),
        Modules_EditSlotItemData("SCIEN_WINGA",PRODUCTS_LIGHTS["G1"],"SENT_LIGHT_G1"),
        Modules_EditSlotItemData("SCIEN_WINGBA",PRODUCTS_LIGHTS["H1"],"SENT_LIGHT_H1"),
        Modules_EditSlotItemData("SCIEN_WINGBB",PRODUCTS_LIGHTS["I1"],"SENT_LIGHT_I1"),
        Modules_EditSlotItemData("SCIEN_WINGBC",PRODUCTS_LIGHTS["J2"],"SENT_LIGHT_J2"),
        Modules_EditSlotItemData("SCIEN_WINGBD",PRODUCTS_LIGHTS["G8"],"SENT_LIGHT_G8"),
        Modules_EditSlotItemData("SCIEN_WINGC",PRODUCTS_LIGHTS["N1"],"SENT_LIGHT_N1"),

        -- add light variants for cockpit C
        Modules_EditSlotItemData("SCIEN_WINGDA",PRODUCTS_LIGHTS["A"],"SENT_LIGHT_A"),
        Modules_EditSlotItemData("SCIEN_WINGDB",PRODUCTS_LIGHTS["B"],"SENT_LIGHT_B"),
        Modules_EditSlotItemData("SCIEN_WINGDC",PRODUCTS_LIGHTS["C"],"SENT_LIGHT_C"),
        Modules_EditSlotItemData("SCIEN_WINGDD",PRODUCTS_LIGHTS["D"],"SENT_LIGHT_D"),
        Modules_EditSlotItemData("SCIEN_WINGE",PRODUCTS_LIGHTS["E"],"SENT_LIGHT_E"),
        Modules_EditSlotItemData("SCIEN_WINGF",PRODUCTS_LIGHTS["F"],"SENT_LIGHT_F"),
        Modules_EditSlotItemData("SCIEN_WINGFA",PRODUCTS_LIGHTS["G"],"SENT_LIGHT_G"),
        Modules_EditSlotItemData("SCIEN_WINGG",PRODUCTS_LIGHTS["H"],"SENT_LIGHT_H"),
        Modules_EditSlotItemData("SCIEN_WINGGA",PRODUCTS_LIGHTS["I"],"SENT_LIGHT_I"),
        Modules_EditSlotItemData("SCIEN_WINGHA",PRODUCTS_LIGHTS["J"],"SENT_LIGHT_J"),
        Modules_EditSlotItemData("SCIEN_WINGHB",PRODUCTS_LIGHTS["N"],"SENT_LIGHT_N"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 3: top flap - None or Type A
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_FLAPS"

    local VCT = 
    {
        {"SlotID","SENT_FLAPS",},
        {"LabelLocID","AILERON",},
        {"UILocatorName","SLOT_ENGINES",},
        {"x",UI_FLAPS[1],},
        {"y",UI_FLAPS[2],},
        {"UISlotGraphicLayer","FUSELAGE",},
        {"ActivatedDescriptorGroupID","SENT_FLAPS_A",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SHUTTLE_COCKPIT"),
        Modules_ApplyVCT(VCT),
        Modules_EditSlotItemData("SHUTT_COCKA",PRODUCTS_FLAPS["A"],"SENT_FLAPS_A"),
        Modules_EditSlotItemData("SHUTT_COCKB",PRODUCTS_FLAPS["N"],"SENT_FLAPS_N"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 4: skirt
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_SKIRTB"

    local VCT = 
    {
        {"SlotID","SENT_SKIRTB",},
        {"LabelLocID","CHASSIS",},
        {"UILocatorName","SLOT_HULL",},
        {"x",UI_SKIRT[1],},
        {"y",UI_SKIRT[2],},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_A1S6A2",},
    }

    local ITEMS = 
    {
        "FIGHT_WINGHD","FIGHT_WINGHD_FI","FIGHT_WINGI","FIGHT_WINGI_FI",
        "FIGHT_WINGJFULL","FIGHT_WINGJMID","FIGHT_WINGJLOW","FIGHT_WINGKA",
        "FIGHT_WINGKAA","FIGHT_WINGKBA","FIGHT_WINGKBB","FIGHT_WINGKBC"
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("FIGHTER_WINGS"),
        Modules_AddNonProcNode("CockpitData"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems(ITEMS),

        -- add skirt A dark variants
        Modules_EditSlotItemData("FIGHT_WINGA",PRODUCTS_SKIRT["A6A2"],"SENT_A6A2"),
        Modules_EditSlotItemData("FIGHT_WINGA_FI",PRODUCTS_SKIRT["A6A4"],"SENT_A6A4"),
        Modules_EditSlotItemData("FIGHT_WINGB",PRODUCTS_SKIRT["A6AE"],"SENT_A6AE"),
        Modules_EditSlotItemData("FIGHT_WINGB_FI",PRODUCTS_SKIRT["A1S6A2"],"SENT_A1S6A2"),
        Modules_EditSlotItemData("FIGHT_WINGBA",PRODUCTS_SKIRT["A1S6A4"],"SENT_A1S6A4"),
        Modules_EditSlotItemData("FIGHT_WINGBA_FI",PRODUCTS_SKIRT["A1S6AE"],"SENT_A1S6AE"),
        Modules_EditSlotItemData("FIGHT_WINGBB",PRODUCTS_SKIRT["A1S3A2"],"SENT_A1S3A2"),
        Modules_EditSlotItemData("FIGHT_WINGBB_FI",PRODUCTS_SKIRT["A1S3A4"],"SENT_A1S3A4"),
        Modules_EditSlotItemData("FIGHT_WINGBC",PRODUCTS_SKIRT["A1S3AE"],"SENT_A1S3AE"),
        Modules_EditSlotItemData("FIGHT_WINGBC_FI",PRODUCTS_SKIRT["A1SA2"],"SENT_A1SA2"),
        Modules_EditSlotItemData("FIGHT_WINGBD",PRODUCTS_SKIRT["A1SA4"],"SENT_A1SA4"),
        Modules_EditSlotItemData("FIGHT_WINGBD_FI",PRODUCTS_SKIRT["A1SAE"],"SENT_A1SAE"),

        -- add skirt A light variants
        Modules_EditSlotItemData("FIGHT_WINGD",PRODUCTS_SKIRT["A8A2"],"SENT_A8A2"),
        Modules_EditSlotItemData("FIGHT_WINGEA",PRODUCTS_SKIRT["A8A4"],"SENT_A8A4"),
        Modules_EditSlotItemData("FIGHT_WINGEA_FI",PRODUCTS_SKIRT["A8AE"],"SENT_A8AE"),
        Modules_EditSlotItemData("FIGHT_WINGEB",PRODUCTS_SKIRT["A1S10A2"],"SENT_A1S10A2"),
        Modules_EditSlotItemData("FIGHT_WINGEB_FI",PRODUCTS_SKIRT["A1S10A4"],"SENT_A1S10A4"),
        Modules_EditSlotItemData("FIGHT_WINGEC",PRODUCTS_SKIRT["A1S10AE"],"SENT_A1S10AE"),
        Modules_EditSlotItemData("FIGHT_WINGEC_FI",PRODUCTS_SKIRT["A1S11A2"],"SENT_A1S11A2"),
        Modules_EditSlotItemData("FIGHT_WINGED",PRODUCTS_SKIRT["A1S11A4"],"SENT_A1S11A4"),
        Modules_EditSlotItemData("FIGHT_WINGED_FI",PRODUCTS_SKIRT["A1S11AE"],"SENT_A1S11AE"),
        Modules_EditSlotItemData("FIGHT_WINGEE",PRODUCTS_SKIRT["A1S12A2"],"SENT_A1S12A2"),
        Modules_EditSlotItemData("FIGHT_WINGEE_FI",PRODUCTS_SKIRT["A1S12A4"],"SENT_A1S12A4"),
        Modules_EditSlotItemData("FIGHT_WINGEF",PRODUCTS_SKIRT["A1S12AE"],"SENT_A1S12AE"),

        -- add skirt B variants
        Modules_EditSlotItemData("FIGHT_WINGEF_FI",PRODUCTS_SKIRT["ANAN"],"SENT_ANAN"),
        Modules_EditSlotItemData("FIGHT_WINGFC",PRODUCTS_SKIRT["A7AN"],"SENT_A7AN"),
        Modules_EditSlotItemData("FIGHT_WINGFC_FI",PRODUCTS_SKIRT["A7AA"],"SENT_A7AA"),
        Modules_EditSlotItemData("FIGHT_WINGFD",PRODUCTS_SKIRT["A1S7AN"],"SENT_A1S7AN"),
        Modules_EditSlotItemData("FIGHT_WINGFD_FI",PRODUCTS_SKIRT["A1S7AA"],"SENT_A1S7AA"),
        Modules_EditSlotItemData("FIGHT_WINGFE",PRODUCTS_SKIRT["A1S8AN"],"SENT_A1S8AN"),
        Modules_EditSlotItemData("FIGHT_WINGFE_FI",PRODUCTS_SKIRT["A1S8AA"],"SENT_A1S8AA"),
        Modules_EditSlotItemData("FIGHT_WINGG",PRODUCTS_SKIRT["A1S9AN"],"SENT_A1S9AN"),
        Modules_EditSlotItemData("FIGHT_WINGG_FI",PRODUCTS_SKIRT["A1S9AA"],"SENT_A1S9AA"),
        Modules_EditSlotItemData("FIGHT_WINGH",PRODUCTS_SKIRT["A9AN"],"SENT_A9AN"),
        Modules_EditSlotItemData("FIGHT_WINGH_FI",PRODUCTS_SKIRT["A9AA"],"SENT_A9AA"),
        Modules_EditSlotItemData("FIGHT_WINGHA",PRODUCTS_SKIRT["A1S13AN"],"SENT_A1S13AN"),
        Modules_EditSlotItemData("FIGHT_WINGHA_FI",PRODUCTS_SKIRT["A1S13AA"],"SENT_A1S13AA"),
        Modules_EditSlotItemData("FIGHT_WINGHB",PRODUCTS_SKIRT["A1S14AN"],"SENT_A1S14AN"),
        Modules_EditSlotItemData("FIGHT_WINGHB_FI",PRODUCTS_SKIRT["A1S14AA"],"SENT_A1S14AA"),
        Modules_EditSlotItemData("FIGHT_WINGHC",PRODUCTS_SKIRT["A1S15AN"],"SENT_A1S15AN"),
        Modules_EditSlotItemData("FIGHT_WINGHC_FI",PRODUCTS_SKIRT["A1S15AA"],"SENT_A1S15AA"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 5: top wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSO"

    local VCT = 
    {
        {"SlotID","SENT_WINGV_T",},
        {"LabelLocID","UPPER WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSO[1],},
        {"y",UI_WINGSO[2],},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WO_NONE",},
    }

    local ITEMS = 
    {
        "SCIEN_WINGDD","SCIEN_WINGE","SCIEN_WINGF","SCIEN_WINGFA",
        "SCIEN_WINGG","SCIEN_WINGGA","SCIEN_WINGHA","SCIEN_WINGHB",
        "SCIEN_WINGHC","SCIEN_WINGHD","SCIEN_WINGI","SCIEN_WINGKA",
        "SCIEN_WINGKB","SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL"
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SCI_L_WING"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems(ITEMS),

        Modules_EditSlotItemData("SCIEN_WINGEMP",PRODUCTS_WINGSO["NONE"],"SENT_WO_NONE"),
        Modules_EditSlotItemData("SCIEN_WINGT_A",PRODUCTS_WINGSO["NULL"],"SENT_WO_NULL"),
        Modules_EditSlotItemData("SCIEN_WINGT_C",PRODUCTS_WINGSO["CLSD"],"SENT_WO_CLSD"),

        Modules_EditSlotItemData("SCIEN_WINGT_F",PRODUCTS_WINGSO["FLPN"],"SENT_WO_FLPN"),
        Modules_EditSlotItemData("SCIEN_WINGT_G",PRODUCTS_WINGSO["FLPB"],"SENT_WO_FLPB"),
        Modules_EditSlotItemData("SCIEN_WINGT_I",PRODUCTS_WINGSO["FLPW"],"SENT_WO_FLPW"),
        Modules_EditSlotItemData("SCIEN_WINGA",PRODUCTS_WINGSO["FLPS"],"SENT_WO_FLPS"),

        Modules_EditSlotItemData("SCIEN_WINGBA",PRODUCTS_WINGSO["TPNN"],"SENT_WO_TPNN"),
        Modules_EditSlotItemData("SCIEN_WINGBB",PRODUCTS_WINGSO["TPBN"],"SENT_WO_TPBN"),
        Modules_EditSlotItemData("SCIEN_WINGBC",PRODUCTS_WINGSO["TPWN"],"SENT_WO_TPWN"),
        Modules_EditSlotItemData("SCIEN_WINGBD",PRODUCTS_WINGSO["TPSN"],"SENT_WO_TPSN"),

        Modules_EditSlotItemData("SCIEN_WINGC",PRODUCTS_WINGSO["TPNE"],"SENT_WO_TPNE"),
        Modules_EditSlotItemData("SCIEN_WINGDA",PRODUCTS_WINGSO["TPBE"],"SENT_WO_TPBE"),
        Modules_EditSlotItemData("SCIEN_WINGDB",PRODUCTS_WINGSO["TPWE"],"SENT_WO_TPWE"),
        Modules_EditSlotItemData("SCIEN_WINGDC",PRODUCTS_WINGSO["TPSE"],"SENT_WO_TPSE"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 6: bottom wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSU"

    local VCT = 
    {
        {"SlotID","SENT_WINGV_B",},
        {"LabelLocID","LOWER WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSU[1],},
        {"y",UI_WINGSU[2],},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WU_NONE",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("DROPSHIP_COCKPI"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems({"DROPS_COCKS13"}),

        Modules_EditSlotItemData("DROPS_COCKA",PRODUCTS_WINGSU["NONE"],"SENT_WU_NONE"),
        Modules_EditSlotItemData("DROPS_COCKB",PRODUCTS_WINGSU["NULL"],"SENT_WU_NULL"),
        Modules_EditSlotItemData("DROPS_COCKC",PRODUCTS_WINGSU["CLSD"],"SENT_WU_CLSD"),
        Modules_EditSlotItemData("DROPS_COCKD",PRODUCTS_WINGSU["LEGS"],"SENT_WU_LEGS"),

        Modules_EditSlotItemData("DROPS_COCKE",PRODUCTS_WINGSU["BOTN"],"SENT_WU_BOTN"),
        Modules_EditSlotItemData("DROPS_COCKF",PRODUCTS_WINGSU["BOTB"],"SENT_WU_BOTB"),
        Modules_EditSlotItemData("DROPS_COCKG",PRODUCTS_WINGSU["BOTW"],"SENT_WU_BOTW"),
        Modules_EditSlotItemData("DROPS_COCKH",PRODUCTS_WINGSU["BOTS"],"SENT_WU_BOTS"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 7: horizontal wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSH"

    local VCT = 
    {
        {"SlotID","SENT_WINGH",},
        {"LabelLocID","SIDE WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSH[1],},
        {"y",UI_WINGSH[2],},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WH_NONE",},
    }

    local ITEMS = 
    {
        "SCIEN_WINGHC","SCIEN_WINGHD","SCIEN_WINGI","SCIEN_WINGKA",
        "SCIEN_WINGKB","SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL"
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SCI_L_WING"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems(ITEMS),

        Modules_EditSlotItemData("SCIEN_WINGEMP",PRODUCTS_WINGSH["NONE"],"SENT_WH_NONE"),
        Modules_EditSlotItemData("SCIEN_WINGT_A",PRODUCTS_WINGSH["NULL"],"SENT_WH_NULL"),
        Modules_EditSlotItemData("SCIEN_WINGT_C",PRODUCTS_WINGSH["CLSD"],"SENT_WH_CLSD"),

        Modules_EditSlotItemData("SCIEN_WINGT_F",PRODUCTS_WINGSH["HONN"],"SENT_WH_HONN"),
        Modules_EditSlotItemData("SCIEN_WINGT_G",PRODUCTS_WINGSH["HOAN"],"SENT_WH_HOAN"),
        Modules_EditSlotItemData("SCIEN_WINGT_I",PRODUCTS_WINGSH["HONA"],"SENT_WH_HONA"),
        Modules_EditSlotItemData("SCIEN_WINGA",PRODUCTS_WINGSH["HOAA"],"SENT_WH_HOAA"),

        Modules_EditSlotItemData("SCIEN_WINGBA",PRODUCTS_WINGSH["HBONN"],"SENT_WH_HBONN"),
        Modules_EditSlotItemData("SCIEN_WINGBB",PRODUCTS_WINGSH["HBOCN"],"SENT_WH_HBOCN"),
        Modules_EditSlotItemData("SCIEN_WINGBC",PRODUCTS_WINGSH["HBCNN"],"SENT_WH_HBCNN"),
        Modules_EditSlotItemData("SCIEN_WINGBD",PRODUCTS_WINGSH["HBCON"],"SENT_WH_HBCON"),
        Modules_EditSlotItemData("SCIEN_WINGC",PRODUCTS_WINGSH["HBCAN"],"SENT_WH_HBCAN"),

        Modules_EditSlotItemData("SCIEN_WINGDA",PRODUCTS_WINGSH["HBONA"],"SENT_WH_HBONA"),
        Modules_EditSlotItemData("SCIEN_WINGDB",PRODUCTS_WINGSH["HBOCA"],"SENT_WH_HBOCA"),
        Modules_EditSlotItemData("SCIEN_WINGDC",PRODUCTS_WINGSH["HBCOA"],"SENT_WH_HBCOA"),
        Modules_EditSlotItemData("SCIEN_WINGDD",PRODUCTS_WINGSH["HBCAA"],"SENT_WH_HBCAA"),

        Modules_EditSlotItemData("SCIEN_WINGE",PRODUCTS_WINGSH["HTONN"],"SENT_WH_HTONN"),
        Modules_EditSlotItemData("SCIEN_WINGF",PRODUCTS_WINGSH["HTONA"],"SENT_WH_HTONA"),
        Modules_EditSlotItemData("SCIEN_WINGFA",PRODUCTS_WINGSH["HTOCN"],"SENT_WH_HTOCN"),
        Modules_EditSlotItemData("SCIEN_WINGG",PRODUCTS_WINGSH["HTOCA"],"SENT_WH_HTOCA"),

        Modules_EditSlotItemData("SCIEN_WINGGA",PRODUCTS_WINGSH["HTCN"],"SENT_WH_HTCN"),
        Modules_EditSlotItemData("SCIEN_WINGHA",PRODUCTS_WINGSH["HTCON"],"SENT_WH_HTCON"),
        Modules_EditSlotItemData("SCIEN_WINGHB",PRODUCTS_WINGSH["HTCOA"],"SENT_WH_HTCOA"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 8: back wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSB"

    local VCT = 
    {
        {"SlotID","SENT_WINGH",},
        {"LabelLocID","BACK WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSB[1],},
        {"y",UI_WINGSB[2],},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WB_NONE",},
    }

    local ITEMS = 
    {
        "SCIEN_WINGHB","SCIEN_WINGHC","SCIEN_WINGHD",
        "SCIEN_WINGI","SCIEN_WINGKA","SCIEN_WINGKB",
        "SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL"
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SCI_L_WING"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems(ITEMS),

        Modules_EditSlotItemData("SCIEN_WINGEMP",PRODUCTS_WINGSB["NONE"],"SENT_WB_NONE"),

        Modules_EditSlotItemData("SCIEN_WINGT_A",PRODUCTS_WINGSB["BANN"],"SENT_WB_BANN"),
        Modules_EditSlotItemData("SCIEN_WINGT_C",PRODUCTS_WINGSB["BANA"],"SENT_WB_BANA"),
        Modules_EditSlotItemData("SCIEN_WINGT_F",PRODUCTS_WINGSB["BANB"],"SENT_WB_BANB"),
        Modules_EditSlotItemData("SCIEN_WINGT_G",PRODUCTS_WINGSB["BAAN"],"SENT_WB_BAAN"),
        Modules_EditSlotItemData("SCIEN_WINGT_I",PRODUCTS_WINGSB["BAAA"],"SENT_WB_BAAA"),
        Modules_EditSlotItemData("SCIEN_WINGA",PRODUCTS_WINGSB["BAAB"],"SENT_WB_BAAB"),
        Modules_EditSlotItemData("SCIEN_WINGBA",PRODUCTS_WINGSB["BABN"],"SENT_WB_BABN"),
        Modules_EditSlotItemData("SCIEN_WINGBB",PRODUCTS_WINGSB["BABA"],"SENT_WB_BABA"),
        Modules_EditSlotItemData("SCIEN_WINGBC",PRODUCTS_WINGSB["BABB"],"SENT_WB_BABB"),

        Modules_EditSlotItemData("SCIEN_WINGBD",PRODUCTS_WINGSB["BBFL"],"SENT_WB_BBFL"),
        Modules_EditSlotItemData("SCIEN_WINGC",PRODUCTS_WINGSB["BBFU"],"SENT_WB_BBFU"),
        Modules_EditSlotItemData("SCIEN_WINGDA",PRODUCTS_WINGSB["BBFH"],"SENT_WB_BBFH"),
        Modules_EditSlotItemData("SCIEN_WINGDB",PRODUCTS_WINGSB["BBFC"],"SENT_WB_BBFC"),

        Modules_EditSlotItemData("SCIEN_WINGDC",PRODUCTS_WINGSB["BBHL"],"SENT_WB_BBHL"),
        Modules_EditSlotItemData("SCIEN_WINGDD",PRODUCTS_WINGSB["BBHU"],"SENT_WB_BBHU"),
        Modules_EditSlotItemData("SCIEN_WINGE",PRODUCTS_WINGSB["BBHH"],"SENT_WB_BBHH"),
        Modules_EditSlotItemData("SCIEN_WINGF",PRODUCTS_WINGSB["BBHC"],"SENT_WB_BBHC"),

        Modules_EditSlotItemData("SCIEN_WINGFA",PRODUCTS_WINGSB["BBCL"],"SENT_WB_BBCL"),
        Modules_EditSlotItemData("SCIEN_WINGG",PRODUCTS_WINGSB["BBCU"],"SENT_WB_BBCU"),
        Modules_EditSlotItemData("SCIEN_WINGGA",PRODUCTS_WINGSB["BBCH"],"SENT_WB_BBCH"),
        Modules_EditSlotItemData("SCIEN_WINGHA",PRODUCTS_WINGSB["BBCC"],"SENT_WB_BBCC"), 
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 9: grill
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_GRILL"

    local VCT = 
    {
        {"SlotID","SENT_GRILL",},
        {"LabelLocID","MAXILLA",},
        {"UILocatorName","SLOT_COCKPIT",},
        {"x",UI_GRILL[1],},
        {"y",UI_GRILL[2],},
        {"UISlotGraphicLayer","FUSELAGE",},
        {"ActivatedDescriptorGroupID","SENT_GRILL_NULL",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("FIGHTER_COCKPIT"),
        Modules_ApplyVCT(VCT),

        Modules_EditSlotItemData("FIGHT_COCKAA",PRODUCTS_GRILL["NULL"],"SENT_GRILL_NULL"),
        Modules_EditSlotItemData("FIGHT_COCKAB",PRODUCTS_GRILL["S1S3"],"SENT_GRILL_S1S3"),
        Modules_EditSlotItemData("FIGHT_COCKAC",PRODUCTS_GRILL["S3"],"SENT_GRILL_S3"),
        Modules_EditSlotItemData("FIGHT_COCKAD",PRODUCTS_GRILL["S11"],"SENT_GRILL_S11"),
        Modules_EditSlotItemData("FIGHT_COCKAE",PRODUCTS_GRILL["S1S6"],"SENT_GRILL_S1S6"),
        Modules_EditSlotItemData("FIGHT_COCKB",PRODUCTS_GRILL["S22A"],"SENT_GRILL_S22A"),
        Modules_EditSlotItemData("FIGHT_COCKD",PRODUCTS_GRILL["S22B"],"SENT_GRILL_S22B"),
        Modules_EditSlotItemData("FIGHT_COCKE",PRODUCTS_GRILL["S22C"],"SENT_GRILL_S22C"),
        Modules_EditSlotItemData("FIGHT_COCKF",PRODUCTS_GRILL["S22D"],"SENT_GRILL_S22D"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 10: engine flames
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_FLAME"

    local VCT = 
    {
        {"SlotID","SENT_FLAME",},
        {"LabelLocID","FLAME",},
        {"UILocatorName","SLOT_ENGINES",},
        {"x",UI_FLAME[1],},
        {"y",UI_FLAME[2],},
        {"UISlotGraphicLayer","THRUSTER",},
        {"ActivatedDescriptorGroupID","SENT_FLAME_1",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("DROPSHIP_ENGINE"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems({"DROPS_ENGIS13"}),

        Modules_EditSlotItemData("DROPS_ENGIA",PRODUCTS_FLAME["1"],"SENT_FLAME_1"),
        Modules_EditSlotItemData("DROPS_ENGIAA",PRODUCTS_FLAME["2"],"SENT_FLAME_2"),
        Modules_EditSlotItemData("DROPS_ENGIAB",PRODUCTS_FLAME["3"],"SENT_FLAME_3"),
        Modules_EditSlotItemData("DROPS_ENGIB",PRODUCTS_FLAME["4"],"SENT_FLAME_4"),
        Modules_EditSlotItemData("DROPS_ENGIBA",PRODUCTS_FLAME["5"],"SENT_FLAME_5"),
        Modules_EditSlotItemData("DROPS_ENGIBB",PRODUCTS_FLAME["6"],"SENT_FLAME_6"),
        Modules_EditSlotItemData("DROPS_ENGIC",PRODUCTS_FLAME["7"],"SENT_FLAME_7"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 11: accessory
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_ADDON"

    local VCT = 
    {
        {"SlotID","SENT_ADDON",},
        {"LabelLocID","ACCEESSORY",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_ADDON[1],},
        {"y",UI_ADDON[2],},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_ADDON_NONE",},
    }

    local ITEMS = 
    {
        "SCIEN_WINGBB","SCIEN_WINGBC","SCIEN_WINGBD",
        "SCIEN_WINGC","SCIEN_WINGDA","SCIEN_WINGDB","SCIEN_WINGDC",
        "SCIEN_WINGDD","SCIEN_WINGE","SCIEN_WINGF","SCIEN_WINGFA",
        "SCIEN_WINGG","SCIEN_WINGGA","SCIEN_WINGHA","SCIEN_WINGHB",
        "SCIEN_WINGHC","SCIEN_WINGHD","SCIEN_WINGI","SCIEN_WINGKA",
        "SCIEN_WINGKB","SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL"
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SCI_L_WING"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems(ITEMS),

        Modules_EditSlotItemData("SCIEN_WINGEMP",PRODUCTS_ADDON["NONE"],"SENT_ADDON_NONE"),

        Modules_EditSlotItemData("SCIEN_WINGT_A",PRODUCTS_ADDON["SEA2"],"SENT_ADDON_SEA2"),
        Modules_EditSlotItemData("SCIEN_WINGT_C",PRODUCTS_ADDON["AEWA"],"SENT_ADDON_AEWA"),
        
        Modules_EditSlotItemData("SCIEN_WINGT_F",PRODUCTS_ADDON["ASA7"],"SENT_ADDON_ASA7"),
        Modules_EditSlotItemData("SCIEN_WINGT_G",PRODUCTS_ADDON["ASA8"],"SENT_ADDON_ASA8"),

        Modules_EditSlotItemData("SCIEN_WINGT_I",PRODUCTS_ADDON["JETS"],"SENT_ADDON_JETS"),
        Modules_EditSlotItemData("SCIEN_WINGA",PRODUCTS_ADDON["ANTS"],"SENT_ADDON_ANTS"),

        Modules_EditSlotItemData("SCIEN_WINGBA",PRODUCTS_ADDON["ENGA"],"SENT_ADDON_ENGA"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- rebuilding the shuttle fabricator slots
    --------------------------------------------------

    local INSTRUCTIONS = 
    {
        {
            -- remove vanilla shuttle slots apart of reactore core (reworked at beginning)
            ["SKW"] = {{"SlotID","SHUTTLE_COCKPIT",}, {"SlotID","SHUTTLE_HULL",},{"SlotID","SHUTTLE_WING",},},
            ["REMOVE"] = "SECTION",
        },

        -- add the Sentinel parts slots
        AddSlotToShuttles("SEC_SLOT_COCKPIT"),
        AddSlotToShuttles("SEC_SLOT_LIGHTS"),
        AddSlotToShuttles("SEC_SLOT_FLAPS"),
        AddSlotToShuttles("SEC_SLOT_SKIRTB"),
        AddSlotToShuttles("SEC_SLOT_WINGSO"),
        AddSlotToShuttles("SEC_SLOT_WINGSU"),
        AddSlotToShuttles("SEC_SLOT_WINGSH"),
        AddSlotToShuttles("SEC_SLOT_WINGSB"),
        AddSlotToShuttles("SEC_SLOT_GRILL"),
        AddSlotToShuttles("SEC_SLOT_FLAME"),
        AddSlotToShuttles("SEC_SLOT_ADDON"),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

end



----------------------------------------------------------------------------------------------------
-- main function for descriptors MBIN
----------------------------------------------------------------------------------------------------

function Descriptors_BuildChangeTable(exml)

    --------------------------------------------------
    -- slot 1: cockpit
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_COCKPIT"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("FIGHT_ENG"),
        Descr_RenameAndRequire("SENTINEL_PIT",""),
        Descr_Fill("GroupID","FIGHT_ENGIB","SENT_PIT_A"),
        Descr_Fill("Value","_ENGINE_B","_Pit_A"),
        Descr_Fill("GroupID","FIGHT_ENGIC","SENT_PIT_B"),
        Descr_Fill("Value","_ENGINE_C","_Pit_B"),
        Descr_Fill("GroupID","FIGHT_ENGID","SENT_PIT_C"),
        Descr_Fill("Value","_ENGINE_D","_Pit_C"),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 2: lights for cockpit B
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_LIGHTSB"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("VYKEEN_HEAD"),
        Descr_RenameAndRequire("SENTINEL_LIGHTSB","SENT_PIT_B"),

        Descr_Fill("GroupID","VYKEEN_HEAD_1","SENT_LIGHT_A1"),Descr_Reset("SENT_LIGHT_A1"),Descr_Add("SENT_LIGHT_A1",{"_Lights_A1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_2","SENT_LIGHT_B1"),Descr_Reset("SENT_LIGHT_B1"),Descr_Add("SENT_LIGHT_B1",{"_Lights_B1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_3","SENT_LIGHT_C1"),Descr_Reset("SENT_LIGHT_C1"),Descr_Add("SENT_LIGHT_C1",{"_Lights_C1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_4","SENT_LIGHT_D1"),Descr_Reset("SENT_LIGHT_D1"),Descr_Add("SENT_LIGHT_D1",{"_Lights_D1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_5","SENT_LIGHT_E1"),Descr_Reset("SENT_LIGHT_E1"),Descr_Add("SENT_LIGHT_E1",{"_Lights_E1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_6","SENT_LIGHT_F1"),Descr_Reset("SENT_LIGHT_F1"),Descr_Add("SENT_LIGHT_F1",{"_Lights_F1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_7","SENT_LIGHT_G1"),Descr_Reset("SENT_LIGHT_G1"),Descr_Add("SENT_LIGHT_G1",{"_Lights_G1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_8","SENT_LIGHT_H1"),Descr_Reset("SENT_LIGHT_H1"),Descr_Add("SENT_LIGHT_H1",{"_Lights_H1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_9","SENT_LIGHT_I1"),Descr_Reset("SENT_LIGHT_I1"),Descr_Add("SENT_LIGHT_I1",{"_Lights_I1"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_10","SENT_LIGHT_J2"),Descr_Reset("SENT_LIGHT_J2"),Descr_Add("SENT_LIGHT_J2",{"_Lights_J2"}),
        Descr_Fill("GroupID","VYK_HEAD_WORM","SENT_LIGHT_G8"),Descr_Reset("SENT_LIGHT_G8"),Descr_Add("SENT_LIGHT_G8",{"_Lights_G8"}),
        Descr_Fill("GroupID","VYK_HEAD_S1","SENT_LIGHT_N1"),Descr_Reset("SENT_LIGHT_N1"),Descr_Add("SENT_LIGHT_N1",{"_Lights_NULL1"}),
        
        Descr_RemoveGroups({"VYK_HEAD_S2"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 2: lights for cockpit C
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_LIGHTSC"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("VYKEEN_HEAD"),
        Descr_RenameAndRequire("SENTINEL_LIGHTSC","SENT_PIT_C"),

        Descr_Fill("GroupID","VYKEEN_HEAD_1","SENT_LIGHT_A"),Descr_Reset("SENT_LIGHT_A"),Descr_Add("SENT_LIGHT_A",{"_Lights_A"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_2","SENT_LIGHT_B"),Descr_Reset("SENT_LIGHT_B"),Descr_Add("SENT_LIGHT_B",{"_Lights_B"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_3","SENT_LIGHT_C"),Descr_Reset("SENT_LIGHT_C"),Descr_Add("SENT_LIGHT_C",{"_Lights_C"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_4","SENT_LIGHT_D"),Descr_Reset("SENT_LIGHT_D"),Descr_Add("SENT_LIGHT_D",{"_Lights_D"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_5","SENT_LIGHT_E"),Descr_Reset("SENT_LIGHT_E"),Descr_Add("SENT_LIGHT_E",{"_Lights_E"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_6","SENT_LIGHT_F"),Descr_Reset("SENT_LIGHT_F"),Descr_Add("SENT_LIGHT_F",{"_Lights_F"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_7","SENT_LIGHT_G"),Descr_Reset("SENT_LIGHT_G"),Descr_Add("SENT_LIGHT_G",{"_Lights_G"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_8","SENT_LIGHT_H"),Descr_Reset("SENT_LIGHT_H"),Descr_Add("SENT_LIGHT_H",{"_Lights_H"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_9","SENT_LIGHT_I"),Descr_Reset("SENT_LIGHT_I"),Descr_Add("SENT_LIGHT_I",{"_Lights_I"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_10","SENT_LIGHT_J"),Descr_Reset("SENT_LIGHT_J"),Descr_Add("SENT_LIGHT_J",{"_Lights_J"}),
        Descr_Fill("GroupID","VYK_HEAD_WORM","SENT_LIGHT_N"),Descr_Reset("SENT_LIGHT_N"),Descr_Add("SENT_LIGHT_N",{"_Lights_NULL"}),
        
        Descr_RemoveGroups({"VYK_HEAD_S1","VYK_HEAD_S2"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 3: top flap
    --------------------------------------------------
    
    FUNCTION_SECTION = "SEC_DESCR_FLAPS"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("SHUTT_COCK"),
        Descr_RenameAndRequire("SENTINEL_FLAPS",""),
        Descr_Fill("GroupID","SHUTT_COCKA","SENT_FLAPS_A"),Descr_Reset("SENT_FLAPS_A"),Descr_Add("SENT_FLAPS_A",{"_TopFlap_A"}),
        Descr_Fill("GroupID","SHUTT_COCKB","SENT_FLAPS_N"),Descr_Reset("SENT_FLAPS_N"),Descr_Add("SENT_FLAPS_N",{"_TopFlap_Null"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 4: top wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSO"

    local GROUPS = 
    {
        "SCIEN_L_WINGDD","SCIEN_L_WINGE","SCIEN_L_WINGF","SCIEN_L_WINGFA",
        "SCIEN_L_WINGG","SCIEN_L_WINGGA","SCIEN_L_WINGHA","SCIEN_L_WINGHB",
        "SCIEN_L_WINGHC","SCIEN_L_WINGHD","SCIEN_L_WINGI","SCIEN_L_WINGKA",
        "SCIEN_L_WINGKB","SCIEN_L_WINGKC","SCIEN_L_WINGKD","SCIEN_L_WINGL"
    }

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("SCIEN_L_WING"),
        Descr_RenameAndRequire("SENTINEL_WINGSO",""),

        Descr_Fill("GroupID","SCIEN_L_WINGT_A","SENT_WO_NONE"),Descr_Reset("SENT_WO_NONE"),Descr_Add("SENT_WO_NONE",{""}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_C","SENT_WO_NULL"),Descr_Reset("SENT_WO_NULL"),Descr_Add("SENT_WO_NULL",{"_Wings_V","_WingsO_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_F","SENT_WO_CLSD"),Descr_Reset("SENT_WO_CLSD"),Descr_Add("SENT_WO_CLSD",{"_Wings_V","_WingsO_cTop"}),

        Descr_Fill("GroupID","SCIEN_L_WINGT_G","SENT_WO_FLPN"),Descr_Reset("SENT_WO_FLPN"),Descr_Add("SENT_WO_FLPN",{"_Wings_V","_WingsO_oFlip","_extrawings_NULLq"}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_I","SENT_WO_FLPB"),Descr_Reset("SENT_WO_FLPB"),Descr_Add("SENT_WO_FLPB",{"_Wings_V","_WingsO_oFlip","_extrawings_tops4q","_Type_Black1q"}),
        Descr_Fill("GroupID","SCIEN_L_NONE","SENT_WO_FLPW"),Descr_Reset("SENT_WO_FLPW"),Descr_Add("SENT_WO_FLPW",{"_Wings_V","_WingsO_oFlip","_extrawings_tops4q","_Type_White1q"}),
        Descr_Fill("GroupID","SCIEN_L_WINGA","SENT_WO_FLPS"),Descr_Reset("SENT_WO_FLPS"),Descr_Add("SENT_WO_FLPS",{"_Wings_V","_WingsO_oFlip","_extrawings_tops4q","_Type_Sentinel1q"}),

        Descr_Fill("GroupID","SCIEN_L_WINGBA","SENT_WO_TPNN"),Descr_Reset("SENT_WO_TPNN"),Descr_Add("SENT_WO_TPNN",{"_Wings_V","_WingsO_oTop","_Type_Non"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBB","SENT_WO_TPBN"),Descr_Reset("SENT_WO_TPBN"),Descr_Add("SENT_WO_TPBN",{"_Wings_V","_WingsO_oTop","_Type_Black1"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBC","SENT_WO_TPWN"),Descr_Reset("SENT_WO_TPWN"),Descr_Add("SENT_WO_TPWN",{"_Wings_V","_WingsO_oTop","_Type_White1"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBD","SENT_WO_TPSN"),Descr_Reset("SENT_WO_TPSN"),Descr_Add("SENT_WO_TPSN",{"_Wings_V","_WingsO_oTop","_Type_Sentinel1"}),

        Descr_Fill("GroupID","SCIEN_L_WINGC","SENT_WO_TPNE"),Descr_Reset("SENT_WO_TPNE"),Descr_Add("SENT_WO_TPNE",{"_Wings_V","_WingsO_oTop","_Type_Non","_exWings_5s436"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDA","SENT_WO_TPBE"),Descr_Reset("SENT_WO_TPBE"),Descr_Add("SENT_WO_TPBE",{"_Wings_V","_WingsO_oTop","_Type_Black1","_exWings_5s436"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDB","SENT_WO_TPWE"),Descr_Reset("SENT_WO_TPWE"),Descr_Add("SENT_WO_TPWE",{"_Wings_V","_WingsO_oTop","_Type_White1","_exWings_5s436"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDC","SENT_WO_TPSE"),Descr_Reset("SENT_WO_TPSE"),Descr_Add("SENT_WO_TPSE",{"_Wings_V","_WingsO_oTop","_Type_Sentinel1","_exWings_5s436"}),

        Descr_RemoveGroups(GROUPS),
        Descr_AddNewGroup(),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 5: bottom wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSU"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("DROPS_COCK"),
        Descr_RenameAndRequire("SENTINEL_WINGSU",""),

        Descr_Fill("GroupID","DROPS_COCKA","SENT_WU_NONE"),Descr_Reset("SENT_WU_NONE"),Descr_Add("SENT_WU_NONE",{""}),
        Descr_Fill("GroupID","DROPS_COCKB","SENT_WU_NULL"),Descr_Reset("SENT_WU_NULL"),Descr_Add("SENT_WU_NULL",{"_Wings_V","_WingsU_NULL"}),
        Descr_Fill("GroupID","DROPS_COCKC","SENT_WU_CLSD"),Descr_Reset("SENT_WU_CLSD"),Descr_Add("SENT_WU_CLSD",{"_Wings_V","_WingsU_cBot"}),
        Descr_Fill("GroupID","DROPS_COCKD","SENT_WU_LEGS"),Descr_Reset("SENT_WU_LEGS"),Descr_Add("SENT_WU_LEGS",{"_Wings_V","_WingsU_Legs"}),

        Descr_Fill("GroupID","DROPS_COCKE","SENT_WU_BOTN"),Descr_Reset("SENT_WU_BOTN"),Descr_Add("SENT_WU_BOTN",{"_Wings_V","_WingsU_oBot","_Type_non1"}),
        Descr_Fill("GroupID","DROPS_COCKF","SENT_WU_BOTB"),Descr_Reset("SENT_WU_BOTB"),Descr_Add("SENT_WU_BOTB",{"_Wings_V","_WingsU_oBot","_Type_Black2"}),
        Descr_Fill("GroupID","DROPS_COCKG","SENT_WU_BOTW"),Descr_Reset("SENT_WU_BOTW"),Descr_Add("SENT_WU_BOTW",{"_Wings_V","_WingsU_oBot","_Type_White2"}),
        Descr_Fill("GroupID","DROPS_COCKH","SENT_WU_BOTS"),Descr_Reset("SENT_WU_BOTS"),Descr_Add("SENT_WU_BOTS",{"_Wings_V","_WingsU_oBot","_Type_Sentinel2"}),

        Descr_RemoveGroups({"DROPS_COCKS13"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 6: horizontal wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSH"

    local GROUPS =
    {
        "SCIEN_L_WINGHC","SCIEN_L_WINGHD","SCIEN_L_WINGI","SCIEN_L_WINGKA",
        "SCIEN_L_WINGKB","SCIEN_L_WINGKC","SCIEN_L_WINGKD","SCIEN_L_WINGL"
    }

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("SCIEN_L_WING"),
        Descr_RenameAndRequire("SENTINEL_WINGSH",""),

        Descr_Fill("GroupID","SCIEN_L_WINGT_A","SENT_WH_NONE"),Descr_Reset("SENT_WH_NONE"),Descr_Add("SENT_WH_NONE",{""}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_C","SENT_WH_NULL"),Descr_Reset("SENT_WH_NULL"),Descr_Add("SENT_WH_NULL",{"_Wings_H","_Wings1_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_F","SENT_WH_CLSD"),Descr_Reset("SENT_WH_CLSD"),Descr_Add("SENT_WH_CLSD",{"_Wings_H","_Wings1_C","_exWingsb_NULL4"}),

        Descr_Fill("GroupID","SCIEN_L_WINGT_G","SENT_WH_HONN"),Descr_Reset("SENT_WH_HONN"),Descr_Add("SENT_WH_HONN",{"_Wings_H","_Wings1_O","_SWings_NULL","_HorTopW_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_I","SENT_WH_HOAN"),Descr_Reset("SENT_WH_HOAN"),Descr_Add("SENT_WH_HOAN",{"_Wings_H","_Wings1_O","_SWings_A2","_HorTopW_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_NONE","SENT_WH_HONA"),Descr_Reset("SENT_WH_HONA"),Descr_Add("SENT_WH_HONA",{"_Wings_H","_Wings1_O","_SWings_NULL","_HorTopW_A"}),
        Descr_Fill("GroupID","SCIEN_L_WINGA","SENT_WH_HOAA"),Descr_Reset("SENT_WH_HOAA"),Descr_Add("SENT_WH_HOAA",{"_Wings_H","_Wings1_O","_SWings_A2","_HorTopW_A"}),

        Descr_Fill("GroupID","SCIEN_L_WINGBA","SENT_WH_HBONN"),Descr_Reset("SENT_WH_HBONN"),Descr_Add("SENT_WH_HBONN",{"_Wings_H","_Wings1_BF","_Wings1_oBot","_Wings1b_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBB","SENT_WH_HBOCN"),Descr_Reset("SENT_WH_HBOCN"),Descr_Add("SENT_WH_HBOCN",{"_Wings_H","_Wings1_BF","_Wings1_oBot","_Wings1b_closedTop"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBC","SENT_WH_HBCNN"),Descr_Reset("SENT_WH_HBCNN"),Descr_Add("SENT_WH_HBCNN",{"_Wings_H","_Wings1_BF","_Wings1_cBot","_Wings1c_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBD","SENT_WH_HBCON"),Descr_Reset("SENT_WH_HBCON"),Descr_Add("SENT_WH_HBCON",{"_Wings_H","_Wings1_BF","_Wings1_cBot","_Wings1c_openTop","_HorTopW_NULL56"}),
        Descr_Fill("GroupID","SCIEN_L_WINGC","SENT_WH_HBCAN"),Descr_Reset("SENT_WH_HBCAN"),Descr_Add("SENT_WH_HBCAN",{"_Wings_H","_Wings1_BF","_Wings1_cBot","_Wings1c_openTop","_HorTopW_A1"}),

        Descr_Fill("GroupID","SCIEN_L_WINGDA","SENT_WH_HBONA"),Descr_Reset("SENT_WH_HBONA"),Descr_Add("SENT_WH_HBONA",{"_Wings_H","_Wings1_BF","_Wings1_oBot","_Wings1b_NULL","_SWings_A4"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDB","SENT_WH_HBOCA"),Descr_Reset("SENT_WH_HBOCA"),Descr_Add("SENT_WH_HBOCA",{"_Wings_H","_Wings1_BF","_Wings1_oBot","_Wings1b_closedTop","_SWings_A4"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDC","SENT_WH_HBCOA"),Descr_Reset("SENT_WH_HBCOA"),Descr_Add("SENT_WH_HBCOA",{"_Wings_H","_Wings1_BF","_Wings1_cBot","_Wings1c_openTop","_HorTopW_NULL56","_exWings_5s1"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDD","SENT_WH_HBCAA"),Descr_Reset("SENT_WH_HBCAA"),Descr_Add("SENT_WH_HBCAA",{"_Wings_H","_Wings1_BF","_Wings1_cBot","_Wings1c_openTop","_HorTopW_A1","_exWings_5s1"}),

        Descr_Fill("GroupID","SCIEN_L_WINGE","SENT_WH_HTONN"),Descr_Reset("SENT_WH_HTONN"),Descr_Add("SENT_WH_HTONN",{"_Wings_H","_Wings1_TF","_Wings1H_oTop","_Wings1H_NULL","_HorBotW_NULL33"}),
        Descr_Fill("GroupID","SCIEN_L_WINGF","SENT_WH_HTONA"),Descr_Reset("SENT_WH_HTONA"),Descr_Add("SENT_WH_HTONA",{"_Wings_H","_Wings1_TF","_Wings1H_oTop","_Wings1H_NULL","_HorBotW_A2"}),
        Descr_Fill("GroupID","SCIEN_L_WINGFA","SENT_WH_HTOCN"),Descr_Reset("SENT_WH_HTOCN"),Descr_Add("SENT_WH_HTOCN",{"_Wings_H","_Wings1_TF","_Wings1H_oTop","_Wings1H_closedBot","_HorBotW_NULL33"}),
        Descr_Fill("GroupID","SCIEN_L_WINGG","SENT_WH_HTOCA"),Descr_Reset("SENT_WH_HTOCA"),Descr_Add("SENT_WH_HTOCA",{"_Wings_H","_Wings1_TF","_Wings1H_oTop","_Wings1H_closedBot","_HorBotW_A2"}),

        Descr_Fill("GroupID","SCIEN_L_WINGGA","SENT_WH_HTCN"),Descr_Reset("SENT_WH_HTCN"),Descr_Add("SENT_WH_HTCN",{"_Wings_H","_Wings1_TF","_Wings1H_cTop","_Wings1H_NULL1"}),
        Descr_Fill("GroupID","SCIEN_L_WINGHA","SENT_WH_HTCON"),Descr_Reset("SENT_WH_HTCON"),Descr_Add("SENT_WH_HTCON",{"_Wings_H","_Wings1_TF","_Wings1H_cTop","_Wings1H_openBot","_SWings_Nu3"}),
        Descr_Fill("GroupID","SCIEN_L_WINGHB","SENT_WH_HTCOA"),Descr_Reset("SENT_WH_HTCOA"),Descr_Add("SENT_WH_HTCOA",{"_Wings_H","_Wings1_TF","_Wings1H_cTop","_Wings1H_openBot","_SWings_A7"}),

        Descr_RemoveGroups(GROUPS),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 7: back wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSB"

    local GROUPS = 
    {
        "SCIEN_L_WINGHB","SCIEN_L_WINGHC","SCIEN_L_WINGHD",
        "SCIEN_L_WINGI","SCIEN_L_WINGKA","SCIEN_L_WINGKB",
        "SCIEN_L_WINGKC","SCIEN_L_WINGKD","SCIEN_L_WINGL"
    }

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("SCIEN_L_WING"),
        Descr_RenameAndRequire("SENTINEL_WINGSB",""),

        Descr_Fill("GroupID","SCIEN_L_WINGT_A","SENT_WB_NONE"),Descr_Reset("SENT_WB_NONE"),Descr_Add("SENT_WB_NONE",{""}),

        Descr_Fill("GroupID","SCIEN_L_WINGT_C","SENT_WB_BANN"),Descr_Reset("SENT_WB_BANN"),Descr_Add("SENT_WB_BANN",{"_Wings_B","_Carriage_A","_TrunkTOP_NULL","_TrunkBOT_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_F","SENT_WB_BANA"),Descr_Reset("SENT_WB_BANA"),Descr_Add("SENT_WB_BANA",{"_Wings_B","_Carriage_A","_TrunkTOP_NULL","_TrunkBOT_A"}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_G","SENT_WB_BANB"),Descr_Reset("SENT_WB_BANB"),Descr_Add("SENT_WB_BANB",{"_Wings_B","_Carriage_A","_TrunkTOP_NULL","_TrunkBOT_B"}),
        Descr_Fill("GroupID","SCIEN_L_WINGT_I","SENT_WB_BAAN"),Descr_Reset("SENT_WB_BAAN"),Descr_Add("SENT_WB_BAAN",{"_Wings_B","_Carriage_A","_TrunkTOP_A","_TrunkBOT_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_NONE","SENT_WB_BAAA"),Descr_Reset("SENT_WB_BAAA"),Descr_Add("SENT_WB_BAAA",{"_Wings_B","_Carriage_A","_TrunkTOP_A","_TrunkBOT_A"}),
        Descr_Fill("GroupID","SCIEN_L_WINGA","SENT_WB_BAAB"),Descr_Reset("SENT_WB_BAAB"),Descr_Add("SENT_WB_BAAB",{"_Wings_B","_Carriage_A","_TrunkTOP_A","_TrunkBOT_B"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBA","SENT_WB_BABN"),Descr_Reset("SENT_WB_BABN"),Descr_Add("SENT_WB_BABN",{"_Wings_B","_Carriage_A","_TrunkTOP_B","_TrunkBOT_NULL"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBB","SENT_WB_BABA"),Descr_Reset("SENT_WB_BABA"),Descr_Add("SENT_WB_BABA",{"_Wings_B","_Carriage_A","_TrunkTOP_B","_TrunkBOT_A"}),
        Descr_Fill("GroupID","SCIEN_L_WINGBC","SENT_WB_BABB"),Descr_Reset("SENT_WB_BABB"),Descr_Add("SENT_WB_BABB",{"_Wings_B","_Carriage_A","_TrunkTOP_B","_TrunkBOT_B"}),

        Descr_Fill("GroupID","SCIEN_L_WINGBD","SENT_WB_BBFL"),Descr_Reset("SENT_WB_BBFL"),Descr_Add("SENT_WB_BBFL",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Flip"}),
        Descr_Fill("GroupID","SCIEN_L_WINGC","SENT_WB_BBFU"),Descr_Reset("SENT_WB_BBFU"),Descr_Add("SENT_WB_BBFU",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Full"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDA","SENT_WB_BBFH"),Descr_Reset("SENT_WB_BBFH"),Descr_Add("SENT_WB_BBFH",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Half"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDB","SENT_WB_BBFC"),Descr_Reset("SENT_WB_BBFC"),Descr_Add("SENT_WB_BBFC",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Carriage"}),

        Descr_Fill("GroupID","SCIEN_L_WINGDC","SENT_WB_BBHL"),Descr_Reset("SENT_WB_BBHL"),Descr_Add("SENT_WB_BBHL",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Flip"}),
        Descr_Fill("GroupID","SCIEN_L_WINGDD","SENT_WB_BBHU"),Descr_Reset("SENT_WB_BBHU"),Descr_Add("SENT_WB_BBHU",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Full"}),
        Descr_Fill("GroupID","SCIEN_L_WINGE","SENT_WB_BBHH"),Descr_Reset("SENT_WB_BBHH"),Descr_Add("SENT_WB_BBHH",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Half"}),
        Descr_Fill("GroupID","SCIEN_L_WINGF","SENT_WB_BBHC"),Descr_Reset("SENT_WB_BBHC"),Descr_Add("SENT_WB_BBHC",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Carriage"}),

        Descr_Fill("GroupID","SCIEN_L_WINGFA","SENT_WB_BBCL"),Descr_Reset("SENT_WB_BBCL"),Descr_Add("SENT_WB_BBCL",{"_Wings_B","_Carriage_B","_NWBot_Carriage","_NWTop_Flip"}),
        Descr_Fill("GroupID","SCIEN_L_WINGG","SENT_WB_BBCU"),Descr_Reset("SENT_WB_BBCU"),Descr_Add("SENT_WB_BBCU",{"_Wings_B","_Carriage_B","_NWBot_Carriage","_NWTop_Full"}),
        Descr_Fill("GroupID","SCIEN_L_WINGGA","SENT_WB_BBCH"),Descr_Reset("SENT_WB_BBCH"),Descr_Add("SENT_WB_BBCH",{"_Wings_B","_Carriage_B","_NWBot_Carriage","_NWTop_Half"}),
        Descr_Fill("GroupID","SCIEN_L_WINGHA","SENT_WB_BBCC"),Descr_Reset("SENT_WB_BBCC"),Descr_Add("SENT_WB_BBCC",{"_Wings_B","_Carriage_B","_NWBot_Carriage","_NWTop_Carriage"}),

        Descr_RemoveGroups(GROUPS),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 8: skirt
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_SKIRTB"

    local GROUPS = 
    {
        "FIGHT_WINGHD","FIGHT_WINGHD_FI","FIGHT_WINGI","FIGHT_WINGI_FI",
        "FIGHT_WINGJFULL","FIGHT_WINGJMID","FIGHT_WINGJLOW","FIGHT_WINGKA",
        "FIGHT_WINGKAA","FIGHT_WINGKBA","FIGHT_WINGKBB","FIGHT_WINGKBC"
    }

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("FIGHT_WING"),
        Descr_RenameAndRequire("SENTINEL_SKIRTB",""),

        Descr_Fill("GroupID","FIGHT_WINGA","SENT_A6A2"),Descr_Reset("SENT_A6A2"),Descr_Add("SENT_A6A2",{"_Skirt_A","_askirting_A6","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGA_FI","SENT_A6A4"),Descr_Reset("SENT_A6A4"),Descr_Add("SENT_A6A4",{"_Skirt_A","_askirting_A6","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGB","SENT_A6AE"),Descr_Reset("SENT_A6AE"),Descr_Add("SENT_A6AE",{"_Skirt_A","_askirting_A6","_asides_Ae"}),
        Descr_Fill("GroupID","FIGHT_WINGB_FI","SENT_A1S6A2"),Descr_Reset("SENT_A1S6A2"),Descr_Add("SENT_A1S6A2",{"_Skirt_A","_askirting_A1s6","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGBA","SENT_A1S6A4"),Descr_Reset("SENT_A1S6A4"),Descr_Add("SENT_A1S6A4",{"_Skirt_A","_askirting_A1s6","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGBA_FI","SENT_A1S6AE"),Descr_Reset("SENT_A1S6AE"),Descr_Add("SENT_A1S6AE",{"_Skirt_A","_askirting_A1s6","_asides_Ae"}),
        Descr_Fill("GroupID","FIGHT_WINGBB","SENT_A1S3A2"),Descr_Reset("SENT_A1S3A2"),Descr_Add("SENT_A1S3A2",{"_Skirt_A","_askirting_A1s3","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGBB_FI","SENT_A1S3A4"),Descr_Reset("SENT_A1S3A4"),Descr_Add("SENT_A1S3A4",{"_Skirt_A","_askirting_A1s3","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGBC","SENT_A1S3AE"),Descr_Reset("SENT_A1S3AE"),Descr_Add("SENT_A1S3AE",{"_Skirt_A","_askirting_A1s3","_asides_Ae"}),
        Descr_Fill("GroupID","FIGHT_WINGBC_FI","SENT_A1SA2"),Descr_Reset("SENT_A1SA2"),Descr_Add("SENT_A1SA2",{"_Skirt_A","_askirting_A1s","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGBD","SENT_A1SA4"),Descr_Reset("SENT_A1SA4"),Descr_Add("SENT_A1SA4",{"_Skirt_A","_askirting_A1s","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGBD_FI","SENT_A1SAE"),Descr_Reset("SENT_A1SAE"),Descr_Add("SENT_A1SAE",{"_Skirt_A","_askirting_A1s","_asides_Ae"}),

        Descr_Fill("GroupID","FIGHT_WINGD","SENT_A8A2"),Descr_Reset("SENT_A8A2"),Descr_Add("SENT_A8A2",{"_Skirt_A","_askirting_A8","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGEA","SENT_A8A4"),Descr_Reset("SENT_A8A4"),Descr_Add("SENT_A8A4",{"_Skirt_A","_askirting_A8","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGEA_FI","SENT_A8AE"),Descr_Reset("SENT_A8AE"),Descr_Add("SENT_A8AE",{"_Skirt_A","_askirting_A8","_asides_Ae"}),
        Descr_Fill("GroupID","FIGHT_WINGEB","SENT_A1S10A2"),Descr_Reset("SENT_A1S10A2"),Descr_Add("SENT_A1S10A2",{"_Skirt_A","_askirting_A1s10","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGEB_FI","SENT_A1S10A4"),Descr_Reset("SENT_A1S10A4"),Descr_Add("SENT_A1S10A4",{"_Skirt_A","_askirting_A1s10","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGEC","SENT_A1S10AE"),Descr_Reset("SENT_A1S10AE"),Descr_Add("SENT_A1S10AE",{"_Skirt_A","_askirting_A1s10","_asides_Ae"}),
        Descr_Fill("GroupID","FIGHT_WINGEC_FI","SENT_A1S11A2"),Descr_Reset("SENT_A1S11A2"),Descr_Add("SENT_A1S11A2",{"_Skirt_A","_askirting_A1s11","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGED","SENT_A1S11A4"),Descr_Reset("SENT_A1S11A4"),Descr_Add("SENT_A1S11A4",{"_Skirt_A","_askirting_A1s11","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGED_FI","SENT_A1S11AE"),Descr_Reset("SENT_A1S11AE"),Descr_Add("SENT_A1S11AE",{"_Skirt_A","_askirting_A1s11","_asides_Ae"}),
        Descr_Fill("GroupID","FIGHT_WINGEE","SENT_A1S12A2"),Descr_Reset("SENT_A1S12A2"),Descr_Add("SENT_A1S12A2",{"_Skirt_A","_askirting_A1s12","_asides_A2"}),
        Descr_Fill("GroupID","FIGHT_WINGEE_FI","SENT_A1S12A4"),Descr_Reset("SENT_A1S12A4"),Descr_Add("SENT_A1S12A4",{"_Skirt_A","_askirting_A1s12","_asides_A4"}),
        Descr_Fill("GroupID","FIGHT_WINGEF","SENT_A1S12AE"),Descr_Reset("SENT_A1S12AE"),Descr_Add("SENT_A1S12AE",{"_Skirt_A","_askirting_A1s12","_asides_Ae"}),

        Descr_Fill("GroupID","FIGHT_WINGEF_FI","SENT_ANAN"),Descr_Reset("SENT_ANAN"),Descr_Add("SENT_ANAN",{"_Skirt_B","_SkirtWings_A","_askirting_NULL3","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGFC","SENT_A7AN"),Descr_Reset("SENT_A7AN"),Descr_Add("SENT_A7AN",{"_Skirt_B","_SkirtWings_A","_askirting_A7","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGFC_FI","SENT_A7AA"),Descr_Reset("SENT_A7AA"),Descr_Add("SENT_A7AA",{"_Skirt_B","_SkirtWings_A","_askirting_A7","_AltSkirting_A"}),
        Descr_Fill("GroupID","FIGHT_WINGFD","SENT_A1S7AN"),Descr_Reset("SENT_A1S7AN"),Descr_Add("SENT_A1S7AN",{"_Skirt_B","_SkirtWings_A","_askirting_A1s7","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGFD_FI","SENT_A1S7AA"),Descr_Reset("SENT_A1S7AA"),Descr_Add("SENT_A1S7AA",{"_Skirt_B","_SkirtWings_A","_askirting_A1s7","_AltSkirting_A"}),
        Descr_Fill("GroupID","FIGHT_WINGFE","SENT_A1S8AN"),Descr_Reset("SENT_A1S8AN"),Descr_Add("SENT_A1S8AN",{"_Skirt_B","_SkirtWings_A","_askirting_A1s8","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGFE_FI","SENT_A1S8AA"),Descr_Reset("SENT_A1S8AA"),Descr_Add("SENT_A1S8AA",{"_Skirt_B","_SkirtWings_A","_askirting_A1s8","_AltSkirting_A"}),
        Descr_Fill("GroupID","FIGHT_WINGG","SENT_A1S9AN"),Descr_Reset("SENT_A1S9AN"),Descr_Add("SENT_A1S9AN",{"_Skirt_B","_SkirtWings_A","_askirting_A1s9","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGG_FI","SENT_A1S9AA"),Descr_Reset("SENT_A1S9AA"),Descr_Add("SENT_A1S9AA",{"_Skirt_B","_SkirtWings_A","_askirting_A1s9","_AltSkirting_A"}),
        Descr_Fill("GroupID","FIGHT_WINGH","SENT_A9AN"),Descr_Reset("SENT_A9AN"),Descr_Add("SENT_A9AN",{"_Skirt_B","_SkirtWings_A","_askirting_A9","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGH_FI","SENT_A9AA"),Descr_Reset("SENT_A9AA"),Descr_Add("SENT_A9AA",{"_Skirt_B","_SkirtWings_A","_askirting_A9","_AltSkirting_A"}),
        Descr_Fill("GroupID","FIGHT_WINGHA","SENT_A1S13AN"),Descr_Reset("SENT_A1S13AN"),Descr_Add("SENT_A1S13AN",{"_Skirt_B","_SkirtWings_A","_askirting_A1s13","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGHA_FI","SENT_A1S13AA"),Descr_Reset("SENT_A1S13AA"),Descr_Add("SENT_A1S13AA",{"_Skirt_B","_SkirtWings_A","_askirting_A1s13","_AltSkirting_A"}),
        Descr_Fill("GroupID","FIGHT_WINGHB","SENT_A1S14AN"),Descr_Reset("SENT_A1S14AN"),Descr_Add("SENT_A1S14AN",{"_Skirt_B","_SkirtWings_A","_askirting_A1s14","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGHB_FI","SENT_A1S14AA"),Descr_Reset("SENT_A1S14AA"),Descr_Add("SENT_A1S14AA",{"_Skirt_B","_SkirtWings_A","_askirting_A1s14","_AltSkirting_A"}),
        Descr_Fill("GroupID","FIGHT_WINGHC","SENT_A1S15AN"),Descr_Reset("SENT_A1S15AN"),Descr_Add("SENT_A1S15AN",{"_Skirt_B","_SkirtWings_A","_askirting_A1s15","_AltSkirting_NULL"}),
        Descr_Fill("GroupID","FIGHT_WINGHC_FI","SENT_A1S15AA"),Descr_Reset("SENT_A1S15AA"),Descr_Add("SENT_A1S15AA",{"_Skirt_B","_SkirtWings_A","_askirting_A1s15","_AltSkirting_A"}),

        Descr_RemoveGroups(GROUPS),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end


    
    --------------------------------------------------
    -- slot 9: grill
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_GRILL"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("FIGHT_COCK"),
        Descr_RenameAndRequire("SENTINEL_GRILL",""),

        Descr_Fill("GroupID","FIGHT_COCKAA","SENT_GRILL_NULL"),Descr_Reset("SENT_GRILL_NULL"),Descr_Add("SENT_GRILL_NULL",{"_aFront_snout2","_grill_NULL1"}),
        Descr_Fill("GroupID","FIGHT_COCKAB","SENT_GRILL_S1S3"),Descr_Reset("SENT_GRILL_S1S3"),Descr_Add("SENT_GRILL_S1S3",{"_aFront_snout2","_grill_snout10s3"}),
        Descr_Fill("GroupID","FIGHT_COCKAC","SENT_GRILL_S3"),Descr_Reset("SENT_GRILL_S3"),Descr_Add("SENT_GRILL_S3",{"_aFront_snout2","_grill_snout3"}),
        Descr_Fill("GroupID","FIGHT_COCKAD","SENT_GRILL_S11"),Descr_Reset("SENT_GRILL_S11"),Descr_Add("SENT_GRILL_S11",{"_aFront_snout2","_grill_snout11"}),
        Descr_Fill("GroupID","FIGHT_COCKAE","SENT_GRILL_S1S6"),Descr_Reset("SENT_GRILL_S1S6"),Descr_Add("SENT_GRILL_S1S6",{"_aFront_snout2","_grill_snout10s6"}),
        Descr_Fill("GroupID","FIGHT_COCKB","SENT_GRILL_S22A"),Descr_Reset("SENT_GRILL_S22A"),Descr_Add("SENT_GRILL_S22A",{"_aFront_snout2","_grill_snout22","_Teeth_A"}),
        Descr_Fill("GroupID","FIGHT_COCKD","SENT_GRILL_S22B"),Descr_Reset("SENT_GRILL_S22B"),Descr_Add("SENT_GRILL_S22B",{"_aFront_snout2","_grill_snout22","_Teeth_B"}),
        Descr_Fill("GroupID","FIGHT_COCKE","SENT_GRILL_S22C"),Descr_Reset("SENT_GRILL_S22C"),Descr_Add("SENT_GRILL_S22C",{"_aFront_snout2","_grill_snout22","_Teeth_C"}),
        Descr_Fill("GroupID","FIGHT_COCKF","SENT_GRILL_S22D"),Descr_Reset("SENT_GRILL_S22D"),Descr_Add("SENT_GRILL_S22D",{"_aFront_snout2","_grill_snout22","_Teeth_D"}),

        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 10: engine flame
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_FLAME"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("DROPS_ENG"),
        Descr_RenameAndRequire("SENTINEL_FLAME",""),

        Descr_Fill("GroupID","DROPS_ENGIA","SENT_FLAME_1"),Descr_Reset("SENT_FLAME_1"),Descr_Add("SENT_FLAME_1",{"_EngineFlame_1"}),
        Descr_Fill("GroupID","DROPS_ENGIAA","SENT_FLAME_2"),Descr_Reset("SENT_FLAME_2"),Descr_Add("SENT_FLAME_2",{"_EngineFlame_2"}),
        Descr_Fill("GroupID","DROPS_ENGIAB","SENT_FLAME_3"),Descr_Reset("SENT_FLAME_3"),Descr_Add("SENT_FLAME_3",{"_EngineFlame_3"}),
        Descr_Fill("GroupID","DROPS_ENGIB","SENT_FLAME_4"),Descr_Reset("SENT_FLAME_4"),Descr_Add("SENT_FLAME_4",{"_EngineFlame_4"}),
        Descr_Fill("GroupID","DROPS_ENGIBA","SENT_FLAME_5"),Descr_Reset("SENT_FLAME_5"),Descr_Add("SENT_FLAME_5",{"_EngineFlame_5"}),
        Descr_Fill("GroupID","DROPS_ENGIBB","SENT_FLAME_6"),Descr_Reset("SENT_FLAME_6"),Descr_Add("SENT_FLAME_6",{"_EngineFlame_6"}),
        Descr_Fill("GroupID","DROPS_ENGIC","SENT_FLAME_7"),Descr_Reset("SENT_FLAME_7"),Descr_Add("SENT_FLAME_7",{"_EngineFlame_7"}),

        Descr_RemoveGroups({"DROPS_ENGIS13"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end



    --------------------------------------------------
    -- slot 11: accessory
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_ADDON"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("VYKEEN_HEAD"),
        Descr_RenameAndRequire("SENTINEL_ADDON",""),

        Descr_Fill("GroupID","VYKEEN_HEAD_1","SENT_ADDON_NONE"),Descr_Reset("SENT_ADDON_NONE"),Descr_Add("SENT_ADDON_NONE",{""}),

        Descr_Fill("GroupID","VYKEEN_HEAD_2","SENT_ADDON_SEA2"),Descr_Reset("SENT_ADDON_SEA2"),Descr_Add("SENT_ADDON_SEA2",{"_sideEngines_A2"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_3","SENT_ADDON_AEWA"),Descr_Reset("SENT_ADDON_AEWA"),Descr_Add("SENT_ADDON_AEWA",{"_aEndWings_Ant"}),

        Descr_Fill("GroupID","VYKEEN_HEAD_4","SENT_ADDON_ASA7"),Descr_Reset("SENT_ADDON_ASA7"),Descr_Add("SENT_ADDON_ASA7",{"_aAltSkirt_A","_Var_A7"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_5","SENT_ADDON_ASA8"),Descr_Reset("SENT_ADDON_ASA8"),Descr_Add("SENT_ADDON_ASA8",{"_aAltSkirt_A","_Var_A8"}),

        Descr_Fill("GroupID","VYKEEN_HEAD_6","SENT_ADDON_JETS"),Descr_Reset("SENT_ADDON_JETS"),Descr_Add("SENT_ADDON_JETS",{"_JetTop_A","_TopJets_A","_JetBots_A","_JetBot_A","_Engines_A","_Jets_C"}),
        Descr_Fill("GroupID","VYKEEN_HEAD_7","SENT_ADDON_ANTS"),Descr_Reset("SENT_ADDON_ANTS"),Descr_Add("SENT_ADDON_ANTS",{"_axWingss_12","_exWingsb_5sts3","_exWings_444"}),

        Descr_Fill("GroupID","VYKEEN_HEAD_8","SENT_ADDON_ENGA"),Descr_Reset("SENT_ADDON_ENGA"),Descr_Add("SENT_ADDON_ENGA",{"_Engine_A"}),

        Descr_RemoveGroups({"VYKEEN_HEAD_9","VYKEEN_HEAD_10","VYK_HEAD_WORM","VYK_HEAD_S1","VYK_HEAD_S2"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

end



--------------------------------------------------
-- populating change tables
--------------------------------------------------

local EXML_MODULES = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
Modules_BuildChangeTable(EXML_MODULES)

local EXML_DESCRIPTORS = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
Descriptors_BuildChangeTable(EXML_DESCRIPTORS)

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------