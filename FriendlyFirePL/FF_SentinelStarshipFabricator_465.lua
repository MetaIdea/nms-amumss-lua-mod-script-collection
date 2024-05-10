----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "SentinelStarshipFabricator"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "This mod allows players to synthesize Interceptor-type starships in the fabricator machines using a very simplified assembly process"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_METADATA_CUSTOM_MODULES =              "METADATA\\GAMESTATE\\PLAYERDATA\\MODULARCUSTOMISATIONDATATABLE.MBIN"
FILE_METADATA_CUSTOM_DESCRIPTORS =          "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"

FILE_UI_SHIP_BUILDER =                      "UI\\SHIP_BUILDER_PAGE.MBIN"

--------------------------------------------------
-- slot positions on the fabricator screen
--------------------------------------------------

UI_COCKPIT_X = 28
UI_COCKPIT_Y = 30

UI_LIGHTS_X = 28
UI_LIGHTS_Y = 40

UI_WINGSO_X = 33
UI_WINGSO_Y = 30

UI_WINGSU_X = 33
UI_WINGSU_Y = 40

UI_WINGSH_X = 38
UI_WINGSH_Y = 30

UI_FLAPS_X = 43
UI_FLAPS_Y = 30

UI_WINGSB_X = 48
UI_WINGSB_Y = 30

UI_REACTOR_X = 53
UI_REACTOR_Y = 35

UI_GRILL_X = 28
UI_GRILL_Y = 60

UI_SKIRT_X = 33
UI_SKIRT_Y = 60

----------------------------------------------------------------------------------------------------
-- items used in assembly process
----------------------------------------------------------------------------------------------------

FUNCTION_SECTION = ""

--------------------------------------------------
-- products for misc. slots
--------------------------------------------------
PRODUCTS_REACTOR = {}
PRODUCTS_COCKPITS = {}
PRODUCTS_FLAPS = {}

PRODUCTS_REACTOR["C"] = "DRONE_SALVAGE"
PRODUCTS_REACTOR["B"] = "SPIDER_PROD"
PRODUCTS_REACTOR["A"] = "SHIPBRAIN"
PRODUCTS_REACTOR["S"] = "SENTFREI_PROD"

PRODUCTS_COCKPITS["A"] = "LAND1"
PRODUCTS_COCKPITS["B"] = "LAND2"
PRODUCTS_COCKPITS["C"] = "LAND3"

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
PRODUCTS_SKIRTSB = {}

-- subgroup skirt A
PRODUCTS_SKIRTSB["A6"] = "YELLOW2"
PRODUCTS_SKIRTSB["A1S6"] = "RED2"
PRODUCTS_SKIRTSB["A1S3"] = "GREEN2"
PRODUCTS_SKIRTSB["A1S"] = "BLUE2"
PRODUCTS_SKIRTSB["A8"] = "EX_YELLOW"
PRODUCTS_SKIRTSB["A1S10"] = "EX_RED"
PRODUCTS_SKIRTSB["A1S11"] = "EX_GREEN"
PRODUCTS_SKIRTSB["A1S12"] = "EX_BLUE"

-- subgroup skirt B
PRODUCTS_SKIRTSB["BN"] = "OXYGEN"
PRODUCTS_SKIRTSB["A7"] = "CATALYST1"
PRODUCTS_SKIRTSB["A1S7"] = "CAVE1"
PRODUCTS_SKIRTSB["A1S8"] = "WATER1"
PRODUCTS_SKIRTSB["A1S9"] = "LAUNCHSUB"
PRODUCTS_SKIRTSB["A9"] = "CATALYST2"
PRODUCTS_SKIRTSB["A1S13"] = "CAVE2"
PRODUCTS_SKIRTSB["A1S14"] = "WATER2"
PRODUCTS_SKIRTSB["A1S15"] = "LAUNCHSUB2"

--------------------------------------------------
-- products for vertical wings
--------------------------------------------------
PRODUCTS_WINGSV = {}
PRODUCTS_WINGSV["OO"] = "OXYGEN"
PRODUCTS_WINGSV["UU"] = "OXYGEN"

-- subgroup Over
PRODUCTS_WINGSV["ON"] = "STELLAR2"
PRODUCTS_WINGSV["OF"] = "EX_YELLOW"
PRODUCTS_WINGSV["OT"] = "EX_RED"
PRODUCTS_WINGSV["OC"] = "EX_GREEN"
PRODUCTS_WINGSV["OS"] = "EX_BLUE"

-- subgroup Under
PRODUCTS_WINGSV["UN"] = "STELLAR2"
PRODUCTS_WINGSV["UO"] = "EX_YELLOW"
PRODUCTS_WINGSV["UC"] = "EX_RED"
PRODUCTS_WINGSV["UL"] = "EX_GREEN"
PRODUCTS_WINGSV["US"] = "EX_BLUE"

--------------------------------------------------
-- products for horizontal wings
--------------------------------------------------
PRODUCTS_WINGSH = {}
PRODUCTS_WINGSH["NONE"] = "OXYGEN"

-- subgroup Horizontal misc
PRODUCTS_WINGSH["HNLL"] = "SAND1"
PRODUCTS_WINGSH["HONN"] = "LAND1"
PRODUCTS_WINGSH["HONA"] = "LAND2"
PRODUCTS_WINGSH["HCN4"] = "LAND3"

-- subgroup Horizontal Bottom spikes
PRODUCTS_WINGSH["HBON"] = "EX_YELLOW"
PRODUCTS_WINGSH["HBOC"] = "EX_RED"
PRODUCTS_WINGSH["HBCN"] = "EX_GREEN"
PRODUCTS_WINGSH["HBCO"] = "EX_BLUE"

-- subgroup Horizontal Top spikes
PRODUCTS_WINGSH["HTON"] = "YELLOW2"
PRODUCTS_WINGSH["HTOC"] = "RED2"
PRODUCTS_WINGSH["HTCN"] = "GREEN2"
PRODUCTS_WINGSH["HTCO"] = "BLUE2"

--------------------------------------------------
-- products for back wings
--------------------------------------------------
PRODUCTS_WINGSB = {}
PRODUCTS_WINGSB["NONE"] = "OXYGEN"

-- subgroup carriage A
PRODUCTS_WINGSB["BANN"] = "LAND1"
PRODUCTS_WINGSB["BAAS"] = "LAND2"
PRODUCTS_WINGSB["BABS"] = "LAND3"

-- subgroup carriage B Full
PRODUCTS_WINGSB["BBFL"] = "YELLOW2"
PRODUCTS_WINGSB["BBFU"] = "RED2"
PRODUCTS_WINGSB["BBFH"] = "GREEN2"
PRODUCTS_WINGSB["BBFC"] = "BLUE2"

-- subgroup carriage B Half
PRODUCTS_WINGSB["BBHL"] = "EX_YELLOW"
PRODUCTS_WINGSB["BBHU"] = "EX_RED"
PRODUCTS_WINGSB["BBHH"] = "EX_GREEN"
PRODUCTS_WINGSB["BBHC"] = "EX_BLUE"

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
                        --------------------------------------------------
                        -- enable Sentinel ships in fabricator
                        -- change label in bottom bar
                        -- change proc gen scene to Sentinel ships
                        --------------------------------------------------
                        {
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["VCT"] = 
                            {
                                {"IsEnabled","True",},
                                {"TitleLocId","BASESTATS_ROBOTSHIP",},
                                {"Filename","MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.SCENE.MBIN",},
                            },
                        },

                        --------------------------------------------------
                        -- reactor cores
                        --------------------------------------------------

                        {
                             -- change slot name, move the input slot
                            ["SKW"] = {"SlotID","SHUTTLE_CORE",},
                            ["VCT"] = 
                            {
                                {"SlotID","SENT_CORE",},
                                {"x",UI_REACTOR_X,},
                                {"y",UI_REACTOR_Y,},
                                {"LabelLocID","NUCLEUS",},
                            },
                        },

                        -- replace core upgrades with Sentinel themed items
                        ReplaceReactorCore("C"),
                        ReplaceReactorCore("B"),
                        ReplaceReactorCore("A"),
                        ReplaceReactorCore("S"),

                        --------------------------------------------------
                        -- colour customisation                  
                        --------------------------------------------------

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

--------------------------------------------------
-- functions for descriptors MBIN
--------------------------------------------------

function Descr_GetGroupTemplate(id) return
{   ["SKW"] = {"Id",id,},    ["SEC_SAVE_TO"] = FUNCTION_SECTION,    }
end

function Descr_RenameAndRequire(name,group) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"Id",name,},{"RequiresGroup",group,},},    }
end

function Descr_FillInField(id,old,new) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {id,old,},    ["VCT"] = {{id,new,},},     }
end

function Descr_AddNewGroup() return
{   ["PKW"] = "DescriptorGroupSets",    ["SEC_ADD_NAMED"] = FUNCTION_SECTION,   }
end
    
function Descr_ResetDescriptors(id) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"GroupID",id,},      ["PKW"] = "Descriptors",    ["CREATE_HOES"] = "TRUE",  }
end

function Descr_RemoveGroups(list)

    local SKW = {}

    for i=1,#list do
        SKW[#SKW+1] = {"GroupID",list[i]}
    end

    return {["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = SKW,      ["REMOVE"] = "SECTION",}

end

function Descr_AddDescriptors(id,list)

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
    -- Cockpit A - medium-sized
    -- Cockpit B - wide
    -- Cockpit C - narrow
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_COCKPIT"

    local VCT = 
    {
        {"SlotID","SENT_COCKPIT",},
        {"LabelLocID","COCKPIT",},
        {"UILocatorName","SLOT_COCKPIT",},
        {"x",UI_COCKPIT_X,},
        {"y",UI_COCKPIT_Y,},
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
    -- Cockpit A - does not accept lights
    -- Cockpit B - Lights Null1 + Lights Ax-Jx (12 variants)
    -- Cockpit C - Lights Null + Lights A-J (11 cariants)
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_LIGHTS"

    local VCT = 
    {
        {"SlotID","SENT_LIGHTS",},
        {"LabelLocID","DECAL",},
        {"UILocatorName","SLOT_COCKPIT",},
        {"x",UI_LIGHTS_X,},
        {"y",UI_LIGHTS_Y,},
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
        {"x",UI_FLAPS_X,},
        {"y",UI_FLAPS_Y,},
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
    -- SKIRT A - 4 black and 4 white (8 variants)
    -- SKIRT B - 4 black and 4 white + No Skirt (9 variants)
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_SKIRTB"

    local VCT = 
    {
        {"SlotID","SENT_SKIRTB",},
        {"LabelLocID","CHASSIS",},
        {"UILocatorName","SLOT_HULL",},
        {"x",UI_SKIRT_X,},
        {"y",UI_SKIRT_Y,},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_SB_A1S6",},
    }

    local ITEMS = 
    {
        "SCIEN_WINGF","SCIEN_WINGFA","SCIEN_WINGG","SCIEN_WINGGA","SCIEN_WINGHA","SCIEN_WINGHB","SCIEN_WINGHC",
        "SCIEN_WINGHD","SCIEN_WINGI","SCIEN_WINGKA","SCIEN_WINGKB","SCIEN_WINGKC","SCIEN_WINGKD","SCIEN_WINGL"
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SCI_L_WING"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems(ITEMS),

        -- add skirt A variants
        Modules_EditSlotItemData("SCIEN_WINGEMP",PRODUCTS_SKIRTSB["A6"],"SENT_SB_A6"),
        Modules_EditSlotItemData("SCIEN_WINGT_A",PRODUCTS_SKIRTSB["A1S6"],"SENT_SB_A1S6"),
        Modules_EditSlotItemData("SCIEN_WINGT_C",PRODUCTS_SKIRTSB["A1S3"],"SENT_SB_A1S3"),
        Modules_EditSlotItemData("SCIEN_WINGT_F",PRODUCTS_SKIRTSB["A1S"],"SENT_SB_A1S"),
        Modules_EditSlotItemData("SCIEN_WINGT_G",PRODUCTS_SKIRTSB["A8"],"SENT_SB_A8"),
        Modules_EditSlotItemData("SCIEN_WINGT_I",PRODUCTS_SKIRTSB["A1S10"],"SENT_SB_A1S10"),
        Modules_EditSlotItemData("SCIEN_WINGA",PRODUCTS_SKIRTSB["A1S11"],"SENT_SB_A1S11"),
        Modules_EditSlotItemData("SCIEN_WINGBA",PRODUCTS_SKIRTSB["A1S12"],"SENT_SB_A1S12"),

        -- add skirt B variants
        Modules_EditSlotItemData("SCIEN_WINGBB",PRODUCTS_SKIRTSB["BN"],"SENT_SB_BN"),
        Modules_EditSlotItemData("SCIEN_WINGBC",PRODUCTS_SKIRTSB["A7"],"SENT_SB_A7"),
        Modules_EditSlotItemData("SCIEN_WINGBD",PRODUCTS_SKIRTSB["A1S7"],"SENT_SB_A1S7"),
        Modules_EditSlotItemData("SCIEN_WINGC",PRODUCTS_SKIRTSB["A1S8"],"SENT_SB_A1S8"),
        Modules_EditSlotItemData("SCIEN_WINGDA",PRODUCTS_SKIRTSB["A1S9"],"SENT_SB_A1S9"),
        Modules_EditSlotItemData("SCIEN_WINGDB",PRODUCTS_SKIRTSB["A9"],"SENT_SB_A9"),
        Modules_EditSlotItemData("SCIEN_WINGDC",PRODUCTS_SKIRTSB["A1S13"],"SENT_SB_A1S13"),
        Modules_EditSlotItemData("SCIEN_WINGDD",PRODUCTS_SKIRTSB["A1S14"],"SENT_SB_A1S14"),
        Modules_EditSlotItemData("SCIEN_WINGE",PRODUCTS_SKIRTSB["A1S15"],"SENT_SB_A1S15"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 5a: vertical wings top
    --------------------------------------------------
    -- 5 variants + None option
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSO"

    local VCT = 
    {
        {"SlotID","SENT_WINGV_T",},
        {"LabelLocID","UPPER WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSO_X,},
        {"y",UI_WINGSO_Y,},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WV_OO",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("DROPSHIP_ENGINE"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems({"DROPS_ENGIC"}),

        Modules_EditSlotItemData("DROPS_ENGIA",PRODUCTS_WINGSV["OO"],"SENT_WV_OO"),
        Modules_EditSlotItemData("DROPS_ENGIAA",PRODUCTS_WINGSV["ON"],"SENT_WV_ON"),
        Modules_EditSlotItemData("DROPS_ENGIAB",PRODUCTS_WINGSV["OF"],"SENT_WV_OF"),
        Modules_EditSlotItemData("DROPS_ENGIB",PRODUCTS_WINGSV["OT"],"SENT_WV_OT"),
        Modules_EditSlotItemData("DROPS_ENGIBA",PRODUCTS_WINGSV["OC"],"SENT_WV_OC"),
        Modules_EditSlotItemData("DROPS_ENGIBB",PRODUCTS_WINGSV["OS"],"SENT_WV_OS"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 5b: vertical wings bottom
    --------------------------------------------------
    -- 5 variants + None option
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSU"

    local VCT = 
    {
        {"SlotID","SENT_WINGV_B",},
        {"LabelLocID","LOWER WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSU_X,},
        {"y",UI_WINGSU_Y,},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WV_UU",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("DROPSHIP_ENGINE"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems({"DROPS_ENGIC"}),

        Modules_EditSlotItemData("DROPS_ENGIA",PRODUCTS_WINGSV["UU"],"SENT_WV_UU"),
        Modules_EditSlotItemData("DROPS_ENGIAA",PRODUCTS_WINGSV["UN"],"SENT_WV_UN"),
        Modules_EditSlotItemData("DROPS_ENGIAB",PRODUCTS_WINGSV["UO"],"SENT_WV_UO"),
        Modules_EditSlotItemData("DROPS_ENGIB",PRODUCTS_WINGSV["UC"],"SENT_WV_UC"),
        Modules_EditSlotItemData("DROPS_ENGIBA",PRODUCTS_WINGSV["UL"],"SENT_WV_UL"),
        Modules_EditSlotItemData("DROPS_ENGIBB",PRODUCTS_WINGSV["US"],"SENT_WV_US"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 6a: horizontal wings
    --------------------------------------------------
    -- 12 models + 1 None (13 variants)
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSH"

    local VCT = 
    {
        {"SlotID","SENT_WINGH",},
        {"LabelLocID","SIDE WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSH_X,},
        {"y",UI_WINGSH_Y,},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WH_NONE",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SHUTTLE_HULL"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems({"SHUTT_2BOX1A"}),

        Modules_EditSlotItemData("SHUTT_CYLIN0A",PRODUCTS_WINGSH["NONE"],"SENT_WH_NONE"),

        Modules_EditSlotItemData("SHUTT_CYLIN0B",PRODUCTS_WINGSH["HNLL"],"SENT_WH_HNLL"),
        Modules_EditSlotItemData("SHUTT_CYLIN1A",PRODUCTS_WINGSH["HONN"],"SENT_WH_HONN"),
        Modules_EditSlotItemData("SHUTT_CYLIN1B",PRODUCTS_WINGSH["HONA"],"SENT_WH_HONA"),
        Modules_EditSlotItemData("SHUTT_CYLIN2A",PRODUCTS_WINGSH["HCN4"],"SENT_WH_HCN4"),

        Modules_EditSlotItemData("SHUTT_2CYLIN1A",PRODUCTS_WINGSH["HBON"],"SENT_WH_HBON"),
        Modules_EditSlotItemData("SHUTT_2CYLIN1B",PRODUCTS_WINGSH["HBOC"],"SENT_WH_HBOC"),
        Modules_EditSlotItemData("SHUTT_2CYLIN2A",PRODUCTS_WINGSH["HBCN"],"SENT_WH_HBCN"),
        Modules_EditSlotItemData("SHUTT_BOX0A",PRODUCTS_WINGSH["HBCO"],"SENT_WH_HBCO"),

        Modules_EditSlotItemData("SHUTT_BOX1A",PRODUCTS_WINGSH["HTON"],"SENT_WH_HTON"),
        Modules_EditSlotItemData("SHUTT_BOX2A",PRODUCTS_WINGSH["HTOC"],"SENT_WH_HTOC"),
        Modules_EditSlotItemData("SHUTT_BOX3A",PRODUCTS_WINGSH["HTCN"],"SENT_WH_HTCN"),
        Modules_EditSlotItemData("SHUTT_2BOX0A",PRODUCTS_WINGSH["HTCO"],"SENT_WH_HTCO"),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 6b: back wings
    --------------------------------------------------
    -- 11 models + 1 None (12 variants)
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_WINGSB"

    local VCT = 
    {
        {"SlotID","SENT_WINGH",},
        {"LabelLocID","BACK WINGS",},
        {"UILocatorName","SLOT_WINGS",},
        {"x",UI_WINGSB_X,},
        {"y",UI_WINGSB_Y,},
        {"UISlotGraphicLayer","WINGS",},
        {"ActivatedDescriptorGroupID","SENT_WB_NONE",},
    }

    local INSTRUCTIONS = 
    {
        Modules_GetSlotTemplate("SHUTTLE_HULL"),
        Modules_ApplyVCT(VCT),
        Modules_RemoveItems({"SHUTT_2BOX0A","SHUTT_2BOX1A"}),

        Modules_EditSlotItemData("SHUTT_CYLIN0A",PRODUCTS_WINGSB["NONE"],"SENT_WB_NONE"),

        Modules_EditSlotItemData("SHUTT_CYLIN0B",PRODUCTS_WINGSB["BANN"],"SENT_WB_BANN"),
        Modules_EditSlotItemData("SHUTT_CYLIN1A",PRODUCTS_WINGSB["BAAS"],"SENT_WB_BAAS"),
        Modules_EditSlotItemData("SHUTT_CYLIN1B",PRODUCTS_WINGSB["BABS"],"SENT_WB_BABS"),

        Modules_EditSlotItemData("SHUTT_CYLIN2A",PRODUCTS_WINGSB["BBFL"],"SENT_WB_BBFL"),
        Modules_EditSlotItemData("SHUTT_2CYLIN1A",PRODUCTS_WINGSB["BBFU"],"SENT_WB_BBFU"),
        Modules_EditSlotItemData("SHUTT_2CYLIN1B",PRODUCTS_WINGSB["BBFH"],"SENT_WB_BBFH"),
        Modules_EditSlotItemData("SHUTT_2CYLIN2A",PRODUCTS_WINGSB["BBFC"],"SENT_WB_BBFC"),

        Modules_EditSlotItemData("SHUTT_BOX0A",PRODUCTS_WINGSB["BBHL"],"SENT_WB_BBHL"),
        Modules_EditSlotItemData("SHUTT_BOX1A",PRODUCTS_WINGSB["BBHU"],"SENT_WB_BBHU"),
        Modules_EditSlotItemData("SHUTT_BOX2A",PRODUCTS_WINGSB["BBHH"],"SENT_WB_BBHH"),
        Modules_EditSlotItemData("SHUTT_BOX3A",PRODUCTS_WINGSB["BBHC"],"SENT_WB_BBHC"), 
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 7 : grill
    --------------------------------------------------
    -- 4 non-teeth, 4 teeth, 1 None (9 variants)
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_SLOT_GRILL"

    local VCT = 
    {
        {"SlotID","SENT_GRILL",},
        {"LabelLocID","MAXILLA",},
        {"UILocatorName","SLOT_COCKPIT",},
        {"x",UI_GRILL_X,},
        {"y",UI_GRILL_Y,},
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
        Descr_FillInField("GroupID","FIGHT_ENGIB","SENT_PIT_A"),
        Descr_FillInField("Value","_ENGINE_B","_Pit_A"),
        Descr_FillInField("GroupID","FIGHT_ENGIC","SENT_PIT_B"),
        Descr_FillInField("Value","_ENGINE_C","_Pit_B"),
        Descr_FillInField("GroupID","FIGHT_ENGID","SENT_PIT_C"),
        Descr_FillInField("Value","_ENGINE_D","_Pit_C"),
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

        Descr_FillInField("GroupID","VYKEEN_HEAD_1","SENT_LIGHT_A1"),Descr_ResetDescriptors("SENT_LIGHT_A1"),Descr_AddDescriptors("SENT_LIGHT_A1",{"_Lights_A1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_2","SENT_LIGHT_B1"),Descr_ResetDescriptors("SENT_LIGHT_B1"),Descr_AddDescriptors("SENT_LIGHT_B1",{"_Lights_B1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_3","SENT_LIGHT_C1"),Descr_ResetDescriptors("SENT_LIGHT_C1"),Descr_AddDescriptors("SENT_LIGHT_C1",{"_Lights_C1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_4","SENT_LIGHT_D1"),Descr_ResetDescriptors("SENT_LIGHT_D1"),Descr_AddDescriptors("SENT_LIGHT_D1",{"_Lights_D1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_5","SENT_LIGHT_E1"),Descr_ResetDescriptors("SENT_LIGHT_E1"),Descr_AddDescriptors("SENT_LIGHT_E1",{"_Lights_E1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_6","SENT_LIGHT_F1"),Descr_ResetDescriptors("SENT_LIGHT_F1"),Descr_AddDescriptors("SENT_LIGHT_F1",{"_Lights_F1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_7","SENT_LIGHT_G1"),Descr_ResetDescriptors("SENT_LIGHT_G1"),Descr_AddDescriptors("SENT_LIGHT_G1",{"_Lights_G1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_8","SENT_LIGHT_H1"),Descr_ResetDescriptors("SENT_LIGHT_H1"),Descr_AddDescriptors("SENT_LIGHT_H1",{"_Lights_H1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_9","SENT_LIGHT_I1"),Descr_ResetDescriptors("SENT_LIGHT_I1"),Descr_AddDescriptors("SENT_LIGHT_I1",{"_Lights_I1"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_10","SENT_LIGHT_J2"),Descr_ResetDescriptors("SENT_LIGHT_J2"),Descr_AddDescriptors("SENT_LIGHT_J2",{"_Lights_J2"}),
        Descr_FillInField("GroupID","VYK_HEAD_WORM","SENT_LIGHT_G8"),Descr_ResetDescriptors("SENT_LIGHT_G8"),Descr_AddDescriptors("SENT_LIGHT_G8",{"_Lights_G8"}),
        Descr_FillInField("GroupID","VYK_HEAD_S1","SENT_LIGHT_N1"),Descr_ResetDescriptors("SENT_LIGHT_N1"),Descr_AddDescriptors("SENT_LIGHT_N1",{"_Lights_NULL1"}),
        
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

        Descr_FillInField("GroupID","VYKEEN_HEAD_1","SENT_LIGHT_A"),Descr_ResetDescriptors("SENT_LIGHT_A"),Descr_AddDescriptors("SENT_LIGHT_A",{"_Lights_A"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_2","SENT_LIGHT_B"),Descr_ResetDescriptors("SENT_LIGHT_B"),Descr_AddDescriptors("SENT_LIGHT_B",{"_Lights_B"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_3","SENT_LIGHT_C"),Descr_ResetDescriptors("SENT_LIGHT_C"),Descr_AddDescriptors("SENT_LIGHT_C",{"_Lights_C"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_4","SENT_LIGHT_D"),Descr_ResetDescriptors("SENT_LIGHT_D"),Descr_AddDescriptors("SENT_LIGHT_D",{"_Lights_D"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_5","SENT_LIGHT_E"),Descr_ResetDescriptors("SENT_LIGHT_E"),Descr_AddDescriptors("SENT_LIGHT_E",{"_Lights_E"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_6","SENT_LIGHT_F"),Descr_ResetDescriptors("SENT_LIGHT_F"),Descr_AddDescriptors("SENT_LIGHT_F",{"_Lights_F"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_7","SENT_LIGHT_G"),Descr_ResetDescriptors("SENT_LIGHT_G"),Descr_AddDescriptors("SENT_LIGHT_G",{"_Lights_G"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_8","SENT_LIGHT_H"),Descr_ResetDescriptors("SENT_LIGHT_H"),Descr_AddDescriptors("SENT_LIGHT_H",{"_Lights_H"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_9","SENT_LIGHT_I"),Descr_ResetDescriptors("SENT_LIGHT_I"),Descr_AddDescriptors("SENT_LIGHT_I",{"_Lights_I"}),
        Descr_FillInField("GroupID","VYKEEN_HEAD_10","SENT_LIGHT_J"),Descr_ResetDescriptors("SENT_LIGHT_J"),Descr_AddDescriptors("SENT_LIGHT_J",{"_Lights_J"}),
        Descr_FillInField("GroupID","VYK_HEAD_WORM","SENT_LIGHT_N"),Descr_ResetDescriptors("SENT_LIGHT_N"),Descr_AddDescriptors("SENT_LIGHT_N",{"_Lights_NULL"}),
        
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
        Descr_FillInField("GroupID","SHUTT_COCKA","SENT_FLAPS_A"),Descr_ResetDescriptors("SENT_FLAPS_A"),Descr_AddDescriptors("SENT_FLAPS_A",{"_TopFlap_A"}),
        Descr_FillInField("GroupID","SHUTT_COCKB","SENT_FLAPS_N"),Descr_ResetDescriptors("SENT_FLAPS_N"),Descr_AddDescriptors("SENT_FLAPS_N",{"_TopFlap_Null"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 4a: wings vertical top
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSO"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("DROPS_ENG"),
        Descr_RenameAndRequire("SENTINEL_WINGSO",""),

        Descr_FillInField("GroupID","DROPS_ENGIA","SENT_WV_OO"),Descr_ResetDescriptors("SENT_WV_OO"),Descr_AddDescriptors("SENT_WV_OO",{""}),
        Descr_FillInField("GroupID","DROPS_ENGIAA","SENT_WV_ON"),Descr_ResetDescriptors("SENT_WV_ON"),Descr_AddDescriptors("SENT_WV_ON",{"_Wings_V","_WingsO_NULL"}),
        Descr_FillInField("GroupID","DROPS_ENGIAB","SENT_WV_OF"),Descr_ResetDescriptors("SENT_WV_OF"),Descr_AddDescriptors("SENT_WV_OF",{"_Wings_V","_WingsO_oFlip"}),
        Descr_FillInField("GroupID","DROPS_ENGIB","SENT_WV_OT"),Descr_ResetDescriptors("SENT_WV_OT"),Descr_AddDescriptors("SENT_WV_OT",{"_Wings_V","_WingsO_oTop"}),
        Descr_FillInField("GroupID","DROPS_ENGIBA","SENT_WV_OC"),Descr_ResetDescriptors("SENT_WV_OC"),Descr_AddDescriptors("SENT_WV_OC",{"_Wings_V","_WingsO_cTop"}),
        Descr_FillInField("GroupID","DROPS_ENGIBB","SENT_WV_OS"),Descr_ResetDescriptors("SENT_WV_OS"),Descr_AddDescriptors("SENT_WV_OS",{"_Wings_V","_WingsO_oTop","_Type_Sentinel1"}),

        Descr_RemoveGroups({"DROPS_ENGIC"}),
        Descr_AddNewGroup(),
    }
    
    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 4b: wings vertical bottom
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSU"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("DROPS_ENG"),
        Descr_RenameAndRequire("SENTINEL_WINGSU",""),

        Descr_FillInField("GroupID","DROPS_ENGIA","SENT_WV_UU"),Descr_ResetDescriptors("SENT_WV_UU"),Descr_AddDescriptors("SENT_WV_UU",{""}),
        Descr_FillInField("GroupID","DROPS_ENGIAA","SENT_WV_UN"),Descr_ResetDescriptors("SENT_WV_UN"),Descr_AddDescriptors("SENT_WV_UN",{"_Wings_V","_WingsU_NULL"}),
        Descr_FillInField("GroupID","DROPS_ENGIAB","SENT_WV_UO"),Descr_ResetDescriptors("SENT_WV_UO"),Descr_AddDescriptors("SENT_WV_UO",{"_Wings_V","_WingsU_oBot"}),
        Descr_FillInField("GroupID","DROPS_ENGIB","SENT_WV_UC"),Descr_ResetDescriptors("SENT_WV_UC"),Descr_AddDescriptors("SENT_WV_UC",{"_Wings_V","_WingsU_cBot"}),
        Descr_FillInField("GroupID","DROPS_ENGIBA","SENT_WV_UL"),Descr_ResetDescriptors("SENT_WV_UL"),Descr_AddDescriptors("SENT_WV_UL",{"_Wings_V","_WingsU_Legs"}),
        Descr_FillInField("GroupID","DROPS_ENGIBB","SENT_WV_US"),Descr_ResetDescriptors("SENT_WV_US"),Descr_AddDescriptors("SENT_WV_US",{"_Wings_V","_WingsU_oBot","_Type_Sentinel2"}),

        Descr_RemoveGroups({"DROPS_ENGIC"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 5a: horizontal wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSH"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("SHUTT_HULL"),
        Descr_RenameAndRequire("SENTINEL_WINGSH",""),

        Descr_FillInField("GroupID","SHUTT_CYLIN0A","SENT_WH_NONE"),Descr_ResetDescriptors("SENT_WH_NONE"),Descr_AddDescriptors("SENT_WH_NONE",{""}),

        Descr_FillInField("GroupID","SHUTT_CYLIN0B","SENT_WH_HNLL"),Descr_ResetDescriptors("SENT_WH_HNLL"),Descr_AddDescriptors("SENT_WH_HNLL",{"_Wings_H","_Wings1_NULL"}),
        Descr_FillInField("GroupID","SHUTT_CYLIN1A","SENT_WH_HONN"),Descr_ResetDescriptors("SENT_WH_HONN"),Descr_AddDescriptors("SENT_WH_HONN",{"_Wings_H","_Wings1_O","_SWings_NULL","_HorTopW_NULL"}),
        Descr_FillInField("GroupID","SHUTT_CYLIN1B","SENT_WH_HONA"),Descr_ResetDescriptors("SENT_WH_HONA"),Descr_AddDescriptors("SENT_WH_HONA",{"_Wings_H","_Wings1_O","_SWings_NULL","_HorTopW_A"}),
        Descr_FillInField("GroupID","SHUTT_CYLIN2A","SENT_WH_HCN4"),Descr_ResetDescriptors("SENT_WH_HCN4"),Descr_AddDescriptors("SENT_WH_HCN4",{"_Wings_H","_Wings1_C","_exWingsb_NULL4"}),

        Descr_FillInField("GroupID","SHUTT_2CYLIN1A","SENT_WH_HBON"),Descr_ResetDescriptors("SENT_WH_HBON"),Descr_AddDescriptors("SENT_WH_HBON",{"_Wings_H","_Wings1_BF","_Wings1_oBot","_Wings1b_NULL"}),
        Descr_FillInField("GroupID","SHUTT_2CYLIN1B","SENT_WH_HBOC"),Descr_ResetDescriptors("SENT_WH_HBOC"),Descr_AddDescriptors("SENT_WH_HBOC",{"_Wings_H","_Wings1_BF","_Wings1_oBot","_Wings1b_closedTop"}),
        Descr_FillInField("GroupID","SHUTT_2CYLIN2A","SENT_WH_HBCN"),Descr_ResetDescriptors("SENT_WH_HBCN"),Descr_AddDescriptors("SENT_WH_HBCN",{"_Wings_H","_Wings1_BF","_Wings1_cBot","_Wings1c_NULL"}),
        Descr_FillInField("GroupID","SHUTT_BOX0A","SENT_WH_HBCO"),Descr_ResetDescriptors("SENT_WH_HBCO"),Descr_AddDescriptors("SENT_WH_HBCO",{"_Wings_H","_Wings1_BF","_Wings1_cBot","_Wings1c_openTop"}),

        Descr_FillInField("GroupID","SHUTT_BOX1A","SENT_WH_HTON"),Descr_ResetDescriptors("SENT_WH_HTON"),Descr_AddDescriptors("SENT_WH_HTON",{"_Wings_H","_Wings1_TF","_Wings1H_oTop","_Wings1H_NULL"}),
        Descr_FillInField("GroupID","SHUTT_BOX2A","SENT_WH_HTOC"),Descr_ResetDescriptors("SENT_WH_HTOC"),Descr_AddDescriptors("SENT_WH_HTOC",{"_Wings_H","_Wings1_TF","_Wings1H_oTop","_Wings1H_closedBot"}),
        Descr_FillInField("GroupID","SHUTT_BOX3A","SENT_WH_HTCN"),Descr_ResetDescriptors("SENT_WH_HTCN"),Descr_AddDescriptors("SENT_WH_HTCN",{"_Wings_H","_Wings1_TF","_Wings1H_cTop","_Wings1H_NULL1"}),
        Descr_FillInField("GroupID","SHUTT_2BOX0A","SENT_WH_HTCO"),Descr_ResetDescriptors("SENT_WH_HTCO"),Descr_AddDescriptors("SENT_WH_HTCO",{"_Wings_H","_Wings1_TF","_Wings1H_cTop","_Wings1H_openBot"}),

        Descr_RemoveGroups({"SHUTT_2BOX1A"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 5b: back wings
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_WINGSB"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("SHUTT_HULL"),
        Descr_RenameAndRequire("SENTINEL_WINGSH",""),

        Descr_FillInField("GroupID","SHUTT_CYLIN0A","SENT_WB_NONE"),Descr_ResetDescriptors("SENT_WB_NONE"),Descr_AddDescriptors("SENT_WB_NONE",{""}),
        Descr_FillInField("GroupID","SHUTT_CYLIN0B","SENT_WB_BANN"),Descr_ResetDescriptors("SENT_WB_BANN"),Descr_AddDescriptors("SENT_WB_BANN",{"_Wings_B","_Carriage_A","_TrunkTOP_NULL","_TrunkBOT_NULL"}),
        Descr_FillInField("GroupID","SHUTT_CYLIN1A","SENT_WB_BAAS"),Descr_ResetDescriptors("SENT_WB_BAAS"),Descr_AddDescriptors("SENT_WB_BAAS",{"_Wings_B","_Carriage_A","_TrunkTOP_A","_TypeA_Sentinel4x","_TrunkBOT_A","_Type_Sentinel5"}),
        Descr_FillInField("GroupID","SHUTT_CYLIN1B","SENT_WB_BABS"),Descr_ResetDescriptors("SENT_WB_BABS"),Descr_AddDescriptors("SENT_WB_BABS",{"_Wings_B","_Carriage_A","_TrunkTOP_B","_Type_Sentinel4e","_TrunkBOT_B","_Type_Sentinel6"}),

        Descr_FillInField("GroupID","SHUTT_CYLIN2A","SENT_WB_BBFL"),Descr_ResetDescriptors("SENT_WB_BBFL"),Descr_AddDescriptors("SENT_WB_BBFL",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Flip"}),
        Descr_FillInField("GroupID","SHUTT_2CYLIN1A","SENT_WB_BBFU"),Descr_ResetDescriptors("SENT_WB_BBFU"),Descr_AddDescriptors("SENT_WB_BBFU",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Full"}),
        Descr_FillInField("GroupID","SHUTT_2CYLIN1B","SENT_WB_BBFH"),Descr_ResetDescriptors("SENT_WB_BBFH"),Descr_AddDescriptors("SENT_WB_BBFH",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Half"}),
        Descr_FillInField("GroupID","SHUTT_2CYLIN2A","SENT_WB_BBFC"),Descr_ResetDescriptors("SENT_WB_BBFC"),Descr_AddDescriptors("SENT_WB_BBFC",{"_Wings_B","_Carriage_B","_NWBot_Full","_NWTop_Carriage"}),

        Descr_FillInField("GroupID","SHUTT_BOX0A","SENT_WB_BBHL"),Descr_ResetDescriptors("SENT_WB_BBHL"),Descr_AddDescriptors("SENT_WB_BBHL",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Flip"}),
        Descr_FillInField("GroupID","SHUTT_BOX1A","SENT_WB_BBHU"),Descr_ResetDescriptors("SENT_WB_BBHU"),Descr_AddDescriptors("SENT_WB_BBHU",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Full"}),
        Descr_FillInField("GroupID","SHUTT_BOX2A","SENT_WB_BBHH"),Descr_ResetDescriptors("SENT_WB_BBHH"),Descr_AddDescriptors("SENT_WB_BBHH",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Half"}),
        Descr_FillInField("GroupID","SHUTT_BOX3A","SENT_WB_BBHC"),Descr_ResetDescriptors("SENT_WB_BBHC"),Descr_AddDescriptors("SENT_WB_BBHC",{"_Wings_B","_Carriage_B","_NWBot_Half","_NWTop_Carriage"}),

        Descr_RemoveGroups({"SHUTT_2BOX0A","SHUTT_2BOX1A"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 6: bottom skirt
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_SKIRTB"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("ASTRO_HEAD"),
        Descr_RenameAndRequire("SENTINEL_SKIRTB",""),

        Descr_FillInField("GroupID","ASTRO_HEAD_0","SENT_SB_A6"),Descr_ResetDescriptors("SENT_SB_A6"),Descr_AddDescriptors("SENT_SB_A6",{"_Skirt_A","_askirting_A6"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_1","SENT_SB_A1S6"),Descr_ResetDescriptors("SENT_SB_A1S6"),Descr_AddDescriptors("SENT_SB_A1S6",{"_Skirt_A","_askirting_A1s6"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_2","SENT_SB_A1S3"),Descr_ResetDescriptors("SENT_SB_A1S3"),Descr_AddDescriptors("SENT_SB_A1S3",{"_Skirt_A","_askirting_A1s3"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_3","SENT_SB_A1S"),Descr_ResetDescriptors("SENT_SB_A1S"),Descr_AddDescriptors("SENT_SB_A1S",{"_Skirt_A","_askirting_A1s"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_4","SENT_SB_A8"),Descr_ResetDescriptors("SENT_SB_A8"),Descr_AddDescriptors("SENT_SB_A8",{"_Skirt_A","_askirting_A8"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_5","SENT_SB_A1S10"),Descr_ResetDescriptors("SENT_SB_A1S10"),Descr_AddDescriptors("SENT_SB_A1S10",{"_Skirt_A","_askirting_A1s10"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_6","SENT_SB_A1S11"),Descr_ResetDescriptors("SENT_SB_A1S11"),Descr_AddDescriptors("SENT_SB_A1S11",{"_Skirt_A","_askirting_A1s11"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_7","SENT_SB_A1S12"),Descr_ResetDescriptors("SENT_SB_A1S12"),Descr_AddDescriptors("SENT_SB_A1S12",{"_Skirt_A","_askirting_A1s12"}),

        Descr_FillInField("GroupID","ASTRO_HEAD_8","SENT_SB_BN"),Descr_ResetDescriptors("SENT_SB_BN"),Descr_AddDescriptors("SENT_SB_BN",{"_Skirt_B","_SkirtWings_NULL"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_9","SENT_SB_A7"),Descr_ResetDescriptors("SENT_SB_A7"),Descr_AddDescriptors("SENT_SB_A7",{"_Skirt_B","_SkirtWings_A","_askirting_A7"}),
        Descr_FillInField("GroupID","ASTRO_HEAD_10","SENT_SB_A1S7"),Descr_ResetDescriptors("SENT_SB_A1S7"),Descr_AddDescriptors("SENT_SB_A1S7",{"_Skirt_B","_SkirtWings_A","_askirting_A1s7"}),
        Descr_FillInField("GroupID","TRAVLR_HEAD_1","SENT_SB_A1S8"),Descr_ResetDescriptors("SENT_SB_A1S8"),Descr_AddDescriptors("SENT_SB_A1S8",{"_Skirt_B","_SkirtWings_A","_askirting_A1s8"}),
        Descr_FillInField("GroupID","REG_HEAD_S1","SENT_SB_A1S9"),Descr_ResetDescriptors("SENT_SB_A1S9"),Descr_AddDescriptors("SENT_SB_A1S9",{"_Skirt_B","_SkirtWings_A","_askirting_A1s9"}),
        Descr_FillInField("GroupID","REG_HEAD_S2","SENT_SB_A9"),Descr_ResetDescriptors("SENT_SB_A9"),Descr_AddDescriptors("SENT_SB_A9",{"_Skirt_B","_SkirtWings_A","_askirting_A9"}),
        Descr_FillInField("GroupID","REG_HEAD_XO","SENT_SB_A1S13"),Descr_ResetDescriptors("SENT_SB_A1S13"),Descr_AddDescriptors("SENT_SB_A1S13",{"_Skirt_B","_SkirtWings_A","_askirting_A1s13"}),
        Descr_FillInField("GroupID","REG_HEAD_DIVING","SENT_SB_A1S14"),Descr_ResetDescriptors("SENT_SB_A1S14"),Descr_AddDescriptors("SENT_SB_A1S14",{"_Skirt_B","_SkirtWings_A","_askirting_A1s14"}),
        Descr_FillInField("GroupID","REG_HEAD_BIOME1","SENT_SB_A1S15"),Descr_ResetDescriptors("SENT_SB_A1S15"),Descr_AddDescriptors("SENT_SB_A1S15",{"_Skirt_B","_SkirtWings_A","_askirting_A1s15"}),

        Descr_RemoveGroups({"HEAD_BUCKET","HEAD_GEKHELM","HEAD_G_GEKHELM","HEAD_ATLAS","REG_HEAD_HOOD01","REG_HEAD_SAIL"}),
        Descr_AddNewGroup(),
    }

    for i=1,#INSTRUCTIONS do
        table.insert(exml,INSTRUCTIONS[i])
    end

    --------------------------------------------------
    -- slot 7: grill
    --------------------------------------------------

    FUNCTION_SECTION = "SEC_DESCR_GRILL"

    local INSTRUCTIONS =
    {
        Descr_GetGroupTemplate("FIGHT_COCK"),
        Descr_RenameAndRequire("SENTINEL_GRILL",""),

        Descr_FillInField("GroupID","FIGHT_COCKAA","SENT_GRILL_NULL"),Descr_ResetDescriptors("SENT_GRILL_NULL"),Descr_AddDescriptors("SENT_GRILL_NULL",{"_aFront_snout2","_grill_NULL1"}),
        Descr_FillInField("GroupID","FIGHT_COCKAB","SENT_GRILL_S1S3"),Descr_ResetDescriptors("SENT_GRILL_S1S3"),Descr_AddDescriptors("SENT_GRILL_S1S3",{"_aFront_snout2","_grill_snout10s3"}),
        Descr_FillInField("GroupID","FIGHT_COCKAC","SENT_GRILL_S3"),Descr_ResetDescriptors("SENT_GRILL_S3"),Descr_AddDescriptors("SENT_GRILL_S3",{"_aFront_snout2","_grill_snout3"}),
        Descr_FillInField("GroupID","FIGHT_COCKAD","SENT_GRILL_S11"),Descr_ResetDescriptors("SENT_GRILL_S11"),Descr_AddDescriptors("SENT_GRILL_S11",{"_aFront_snout2","_grill_snout11"}),
        Descr_FillInField("GroupID","FIGHT_COCKAE","SENT_GRILL_S1S6"),Descr_ResetDescriptors("SENT_GRILL_S1S6"),Descr_AddDescriptors("SENT_GRILL_S1S6",{"_aFront_snout2","_grill_snout10s6"}),
        Descr_FillInField("GroupID","FIGHT_COCKB","SENT_GRILL_S22A"),Descr_ResetDescriptors("SENT_GRILL_S22A"),Descr_AddDescriptors("SENT_GRILL_S22A",{"_aFront_snout2","_grill_snout22","_Teeth_A"}),
        Descr_FillInField("GroupID","FIGHT_COCKD","SENT_GRILL_S22B"),Descr_ResetDescriptors("SENT_GRILL_S22B"),Descr_AddDescriptors("SENT_GRILL_S22B",{"_aFront_snout2","_grill_snout22","_Teeth_B"}),
        Descr_FillInField("GroupID","FIGHT_COCKE","SENT_GRILL_S22C"),Descr_ResetDescriptors("SENT_GRILL_S22C"),Descr_AddDescriptors("SENT_GRILL_S22C",{"_aFront_snout2","_grill_snout22","_Teeth_C"}),
        Descr_FillInField("GroupID","FIGHT_COCKF","SENT_GRILL_S22D"),Descr_ResetDescriptors("SENT_GRILL_S22D"),Descr_AddDescriptors("SENT_GRILL_S22D",{"_aFront_snout2","_grill_snout22","_Teeth_D"}),

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