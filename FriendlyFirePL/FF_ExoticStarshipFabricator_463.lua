----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ExoticStarshipFabricator"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "463"
METADATA_MOD_DESC       = 
[[
This mod enables synthesis of exotic starships based on the Guppy / Ball cockpit in starship fabricators. 
Modifies files in METADATA and UI directories. This mod requires the usage of the Royal Palette mod by lMonk: 
https://www.nexusmods.com/nomanssky/mods/2349
]]



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_METADATA_CUSTOMISATION =           "METADATA\\GAMESTATE\\PLAYERDATA\\MODULARCUSTOMISATIONDATATABLE.MBIN"
FILE_METADATA_DESCRIPTORS =             "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"

FILE_UI_SHIP_BUILDER =                  "UI\\SHIP_BUILDER_PAGE.MBIN"



--------------------------------------------------
-- items used in assembly
--------------------------------------------------

ITEM_COCKPIT_A = "MEGAPROD2"
ITEM_COCKPIT_B = "MEGAPROD1"
ITEM_COCKPIT_C = "MEGAPROD3"

ITEM_WINGS_A = "COMPOUND5"
ITEM_WINGS_B = "COMPOUND4"
ITEM_WINGS_C = "COMPOUND6"

ITEM_ENGINE_A = "SALVAGE_TECH10"
ITEM_ENGINE_B = "ULTRAPROD1"
ITEM_ENGINE_C = "ULTRAPROD2"



--------------------------------------------------
-- descriptor group for cockpit variants
--------------------------------------------------

PROPERTY_EXOTICS_COCKPIT =
[[
<Property value="GcCustomisationDescriptorGroupSet.xml">
    <Property name="Id" value="EXOTIC_COCK" />
    <Property name="DescriptorGroups">
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_ROYALA" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_SClassShip_Royal" />
        </Property>
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_TopWing_A" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_ROYALB" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_SClassShip_Royal" />
        </Property>
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_TopWing_B" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_ROYALC" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_SClassShip_Royal" />
        </Property>
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_TopWing_C" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    </Property>
</Property>
]]

--------------------------------------------------
-- descriptor group for wing variants
--------------------------------------------------

PROPERTY_EXOTICS_WINGS =
[[
<Property value="GcCustomisationDescriptorGroupSet.xml">
    <Property name="Id" value="EXOTIC_WING" />
    <Property name="DescriptorGroups">
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_WINGSA" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_Wings_A" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_WINGSB" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_Wings_B" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_WINGSC" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_Wings_C" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    </Property>
</Property>
]]

--------------------------------------------------
-- descriptor group for engine variants
--------------------------------------------------

PROPERTY_EXOTICS_ENGINES =
[[
<Property value="GcCustomisationDescriptorGroupSet.xml">
    <Property name="Id" value="EXOTIC_ASS" />
    <Property name="DescriptorGroups">
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_ENGINEA" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_Engine_A" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_ENGINEB" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_Engine_B" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    <Property value="GcCustomisationDescriptorGroup.xml">
        <Property name="GroupID" value="EXOTIC_ENGINEC" />
        <Property name="Title" value="" />
        <Property name="Image" value="" />
        <Property name="Descriptors">
        <Property value="NMSString0x20.xml">
            <Property name="Value" value="_Engine_C" />
        </Property>
        </Property>
        <Property name="SuffixInclusionList" />
        <Property name="LinkedSpecialID" value="" />
        <Property name="Tip" value="" />
        <Property name="HiddenInCustomiser" value="False" />
    </Property>
    </Property>
</Property>
]]



--------------------------------------------------
-- list of substances for colour options
-------------------------------------------------

LIST_SUBSTANCES = 
{
  "FUEL1",
  "FUEL2",
  "OXYGEN",
  "LAUNCHSUB",
  "LAUNCHSUB2",
  "ROCKETSUB",
  "LAND1",
  "LAND2",
  "LAND3",
  "SAND1",
  "CATALYST1",
  "CATALYST2",
  "CAVE1",
  "CAVE2",
  "WATER1",
  "WATER2",
  "WATERPLANT",
  "YELLOW2",
  "RED2",
  "GREEN2",
  "BLUE2",
  "STELLAR2",
  "LUSH1",
  "DUSTY1",
  "TOXIC1",
  "RADIO1",
  "COLD1",
  "HOT1",
  "LAVA1",
  "CREATURE1",
  "ROBOT1",
  "ROBOT2",
  "ASTEROID1",
  "ASTEROID2",
  "ASTEROID3",
  "GAS1",
  "GAS2",
  "GAS3",
  "EX_YELLOW",
  "EX_RED",
  "EX_GREEN",
  "EX_BLUE",
  "AF_METAL",
  "BUI_SCRAP",
  "SPECIAL_POOP",
  "SUNGOLD",
  "SOULFRAG",
  "WORMDUST",
  "TIMEDUST",
  "TIMEMILK",
}



--------------------------------------------------
-- functions to work with SEC templates
--------------------------------------------------

function EditSection(section,item,descr) return
{
    ["SEC_EDIT"] = section,
    ["VCT"] = 
    {
        {"ItemID",item,},
        {"ActivatedDescriptorGroupID",descr,},
    },
}
end

function PasteSection (section,slotid) return
{
    ["SKW"] = {"SlotID",slotid,},
    ["PKW"] = "SlottableItems",
    ["SEC_ADD_NAMED"] = section,
}
end

function BuildItemDataProperty (item) return
[[
<Property value="GcModularCustomisationSlotItemData.xml">
    <Property name="ItemID" value="]]..item..[[" />
    <Property name="DescriptorGroupSalvageRule" value="All" />
    <Property name="DescriptorGroupData">
        <Property value="GcModularCustomisationDescriptorGroupData.xml">
            <Property name="ActivatedDescriptorGroupID" value="" />
        </Property>
    </Property>
    <Property name="SetInventoryClass" value="False" />
    <Property name="InventoryClass" value="GcInventoryClass.xml">
        <Property name="InventoryClass" value="C" />
    </Property>
</Property>
]]
end

function BuildItemListProperty (list)
    local ListStart = [[<Property name="SlottableItems">]]
    local ListEnd = [[</Property>]]
    local ListItems = {}
    for i=1,#list do
        ListItems[#ListItems+1] = BuildItemDataProperty(list[i])
    end
    return ListStart .. table.concat(ListItems) .. ListEnd
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
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOMISATION,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --------------------------------------------------
                        -- basic stuff
                        --------------------------------------------------

                        {
                            -- enable shuttles in fabricator, change proc gen scene
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["VCT"] = 
                            {
                                {"IsEnabled","True",},
                                {"TitleLocId","UI_PORTAL_CAT_TECH_WEIRD_U",},
                                {"Filename","MODELS\COMMON\SPACECRAFT\S-CLASS\S-CLASS_PROC.SCENE.MBIN",},
                            },
                        },

                        --------------------------------------------------
                        -- cockpits:
                        -- ROYALC - guppy no top / front addons
                        -- ROYALB - royal (double front spike, short top wing)
                        -- ROYALA - mosquito (single front spike, long top wing)
                        --------------------------------------------------

                        {
                            -- change default preview to cockpit C
                            ["SKW"] = {"SlotID","SHUTTLE_COCKPIT",},
                            ["VCT"] =
                            {
                                {"IncludeInSeed","False",},
                                {"ActivatedDescriptorGroupID","EXOTIC_ROYALC",},
                            },
                        },

                        {
                            -- replace 2 shuttle cockpit options with 4 exotic cockpit options (3 guppy + squid)
                            ["SKW"] = {"ItemID","SHUTT_COCKA",},
                            ["SEC_SAVE_TO"] = "SEC_COCKPIT",
                        },

                        EditSection("SEC_COCKPIT",ITEM_COCKPIT_A,"EXOTIC_ROYALA"),PasteSection("SEC_COCKPIT","SHUTTLE_COCKPIT"),
                        EditSection("SEC_COCKPIT",ITEM_COCKPIT_B,"EXOTIC_ROYALB"),PasteSection("SEC_COCKPIT","SHUTTLE_COCKPIT"),
                        EditSection("SEC_COCKPIT",ITEM_COCKPIT_C,"EXOTIC_ROYALC"),PasteSection("SEC_COCKPIT","SHUTTLE_COCKPIT"),    

                        {
                            -- remove the 2 shuttle cockpit options
                            ["SKW"] =
                            {
                                {"ItemID","SHUTT_COCKA",},
                                {"ItemID","SHUTT_COCKB",},
                            },
                            ["REMOVE"] = "SECTION",
                        },

                        --------------------------------------------------
                        -- wings:
                        -- WINGSA - big folding wings
                        -- WINGSB - small static wings
                        -- WINGSC - side boosters
                        --------------------------------------------------

                        {
                            -- change default preview to wings B
                            ["SKW"] = {"SlotID","SHUTTLE_WING",},
                            ["VCT"] =
                            {
                                {"IncludeInSeed","False",},
                                {"ActivatedDescriptorGroupID","EXOTIC_WINGSB",},
                            },
                        },

                        {
                            -- replace shuttle wing options with 3 exotic wing options
                            ["SKW"] = {"ItemID","SHUTT_WINGA",},
                            ["SEC_SAVE_TO"] = "SEC_WINGS",
                        },

                        EditSection("SEC_WINGS",ITEM_WINGS_A,"EXOTIC_WINGSA"),PasteSection("SEC_WINGS","SHUTTLE_WING"),
                        EditSection("SEC_WINGS",ITEM_WINGS_B,"EXOTIC_WINGSC"),PasteSection("SEC_WINGS","SHUTTLE_WING"),
                        EditSection("SEC_WINGS",ITEM_WINGS_C,"EXOTIC_WINGSB"),PasteSection("SEC_WINGS","SHUTTLE_WING"),

                        {
                            -- remove the shuttle wing options
                            ["SKW"] =
                            {
                                {"ItemID","SHUTT_WINGA",},{"ItemID","SHUTT_WINGD",},{"ItemID","SHUTT_WINGG",},{"ItemID","SHUTT_WINGH",},
                                {"ItemID","SHUTT_WINGI",},{"ItemID","SHUTT_WINGJ",},{"ItemID","SHUTT_WINGK",},{"ItemID","SHUTT_WINGL",},
                            },
                            ["REMOVE"] = "SECTION",
                        },

                        --------------------------------------------------
                        -- engines:
                        -- ENGINEA - small
                        -- ENGINEB - spike
                        -- ENGINEC - clamshell
                        --------------------------------------------------

                        {
                            -- change default preview to engine A, change label and icon for engine slot
                            ["SKW"] = {"SlotID","SHUTTLE_HULL",},
                            ["VCT"] =
                            {
                                {"LabelLocID","UI_SHIP_BUILDER_INPUT_ENGINE",},
                                {"UISlotGraphicLayer","THRUSTER",},
                                {"IncludeInSeed","False",},
                                {"ActivatedDescriptorGroupID","EXOTIC_ENGINEA",},
                            },
                        },

                        {
                            -- replace shuttle hull options with 3 exotic engine options
                            ["SKW"] = {"ItemID","SHUTT_CYLIN0A",},
                            ["SEC_SAVE_TO"] = "SEC_ENGINE",
                        },

                        EditSection("SEC_ENGINE",ITEM_ENGINE_A,"EXOTIC_ENGINEA"),PasteSection("SEC_ENGINE","SHUTTLE_HULL"),
                        EditSection("SEC_ENGINE",ITEM_ENGINE_B,"EXOTIC_ENGINEB"),PasteSection("SEC_ENGINE","SHUTTLE_HULL"),
                        EditSection("SEC_ENGINE",ITEM_ENGINE_C,"EXOTIC_ENGINEC"),PasteSection("SEC_ENGINE","SHUTTLE_HULL"),

                        {
                            -- remove the shuttle hull options
                            ["SKW"] =
                            {
                                {"ItemID","SHUTT_CYLIN0A",},{"ItemID","SHUTT_CYLIN0B",},
                                {"ItemID","SHUTT_CYLIN1A",},{"ItemID","SHUTT_CYLIN1B",},
                                {"ItemID","SHUTT_CYLIN2A",},{"ItemID","SHUTT_2CYLIN1A",},
                                {"ItemID","SHUTT_2CYLIN1B",},{"ItemID","SHUTT_2CYLIN2A",},
                                {"ItemID","SHUTT_BOX0A",},{"ItemID","SHUTT_BOX1A",},
                                {"ItemID","SHUTT_BOX2A",},{"ItemID","SHUTT_BOX3A",},
                                {"ItemID","SHUTT_2BOX0A",},{"ItemID","SHUTT_2BOX1A",},
                            },
                            ["REMOVE"] = "SECTION",
                        },

                        --------------------------------------------------
                        -- reactor core
                        --------------------------------------------------

                        {
                            -- keep only the S class reactor core option
                            ["SKW"] =
                            {
                                {"SlotID","SHUTTLE_CORE","ItemID","SHIP_CORE_C",},
                                {"SlotID","SHUTTLE_CORE","ItemID","SHIP_CORE_B",},
                                {"SlotID","SHUTTLE_CORE","ItemID","SHIP_CORE_A",},
                            },
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- remove seed rerolling
                            ["SKW"] = {{"SlotID","SHUTTLE_CORE",},},
                            ["VCT"] = {{"IncludeInSeed","False",},},
                        },

                        --------------------------------------------------
                        -- colour slot
                        --------------------------------------------------

                        {
                            -- remove default colour picker
                            ["SKW"] = 
                            {
                                {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_PRIMARY",},
                                {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_SECONDARY",},
                                {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_TERTIARY",},
                            },
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- get template for a new slot
                            ["SKW"] = {"SlotID","SHUTTLE_HULL",},
                            ["SEC_SAVE_TO"] = "SEC_COLOUR",
                        },

                        {
                            -- edit basic data
                            ["SEC_EDIT"] = "SEC_COLOUR",
                            ["VCT"] = 
                            {
                                {"SlotID","SHUTTLE_COLOUR",},
                                {"LabelLocID","UI_BOOT_OPTIONS_U",},
                                {"IncludeInSeed","True",},
                                {"UILocatorName","SLOT_WINGS1",},
                                {"x",30,},
                                {"y",50,},
                                {"UISlotGraphicLayer","REACTOR",},
                                {"ActivatedDescriptorGroupID","",},
                            },
                        },

                        {
                            -- remove all item options
                            ["SEC_EDIT"] = "SEC_COLOUR",
                            ["PKW"] = "SlottableItems",
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- add new options from the list
                            ["SEC_EDIT"] = "SEC_COLOUR",
                            ["SKW"] = {"SlotEmptyCustomisation","GcModularCustomisationSlotItemData.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BuildItemListProperty(LIST_SUBSTANCES),
                        },

                        {
                            -- add new slot
                            ["SKW"] = {"SlotID","SHUTTLE_WING",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_COLOUR",
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_DESCRIPTORS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add all the new descriptor groups
                            ["SKW"] = {"Id","RACE"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = 
                            {
                                PROPERTY_EXOTICS_COCKPIT,
                                PROPERTY_EXOTICS_WINGS,
                                PROPERTY_EXOTICS_ENGINES,
                            },
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_SHIP_BUILDER,
                    ["EXML_CHANGE_TABLE"] =
                    {

                        {
                            -- save slot UI data template
                            ["SKW"] = {"ID","SLOT04GRP",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SEC_SAVE_TO"] = "SEC_UI_SLOT",
                        },

                        {
                            -- change the ID and move the whole group to the right
                            ["SEC_EDIT"] = "SEC_UI_SLOT",
                            ["VCT"] = {{"ID","SLOT05GRP",},},
                        },

                        {
                            -- remove the old label
                            ["SEC_EDIT"] = "SEC_UI_SLOT",
                            ["SKW"] = {"Text","UI_SHIP_BUILDER_INPUT_CORE",},
                            ["VCT"] = {{"Text","",},},
                        },

                        {
                            -- insert the new slot after the pole slot
                            ["SKW"] = {"ID","SLOT04GRP",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_UI_SLOT",
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