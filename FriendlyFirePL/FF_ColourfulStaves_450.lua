----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ColourfulStaves"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod adds option to apply a substance to generate a new seed and colour combination for a staff Multi-Tool."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_METADATA_CUSTOMISATION =     "METADATA\\GAMESTATE\\PLAYERDATA\\MODULARCUSTOMISATIONDATATABLE.MBIN"
FILE_UI_STAFFBUILDER =            "UI\\MULTITOOL_BUILDER_PAGE.MBIN"

--------------------------------------------------
-- list of substances to generate seeds
--------------------------------------------------

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
-- functions to build new properties
--------------------------------------------------

function BuildItemDataProperty (item) return
[[
<Property value="GcModularCustomisationSlotItemData.xml">
    <Property name="ItemID" value="]]..item..[[" />
    <Property name="ActivatedDescriptorGroupIDs">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="" />
        </Property>
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
                        {
                            -- save customization slot data template
                            ["SKW"] = {"SlotID","STAFF_HEAD",},
                            ["SEC_SAVE_TO"] = "SEC_STAFF_SLOT",
                        },

                        {
                            -- change text elements on the template
                            ["SEC_EDIT"] = "SEC_STAFF_SLOT",
                            ["VCT"] =
                            {
                                {"SlotID","STAFF_COLOR",},
                                {"LabelLocID","UI_BUILD_MENU_RECOLOUR_NAME",},
                                {"Value","",},
                            },
                        },

                        {
                            -- remove staff parts from the template
                            ["SEC_EDIT"] = "SEC_STAFF_SLOT",
                            ["PKW"] = "SlottableItems",
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- insert the list of substances into the template
                            ["SEC_EDIT"] = "SEC_STAFF_SLOT",
                            ["SKW"] = {"SlotEmptyCustomisation","GcModularCustomisationSlotItemData.xml",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = BuildItemListProperty(LIST_SUBSTANCES),
                        },

                        {
                            -- add the template as a new slot after the pole section
                            ["SKW"] = {"SlotID","STAFF_POLE",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_STAFF_SLOT",
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_STAFFBUILDER,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- push the arrow more to right
                            ["SKW"] = {"ID","INPUTARROW",},
                            ["VCT"] = {{"PositionX",886},},
                        },

                        {
                            -- resize the staff preview to make space for new slot
                            ["SKW"] = {"ID","STAFF_RENDER",},
                            ["VCT"] = 
                            {
                                {"PositionX",70},
                                {"PositionY",30},
                                {"Width",782},
                                {"Height",82},
                            },
                        },

                        {
                            -- save slot UI data template
                            ["SKW"] = {"ID","SLOT03GRP",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SEC_SAVE_TO"] = "SEC_UI_SLOT",
                        },

                        {
                            -- change the ID and move the whole group to the right
                            ["SEC_EDIT"] = "SEC_UI_SLOT",
                            ["VCT"] = 
                            {
                                {"ID","SLOT04GRP",},
                                {"PositionX","49.60241",},
                            },
                        },

                        {
                            -- remove the old label
                            ["SEC_EDIT"] = "SEC_UI_SLOT",
                            ["SKW"] = {"ID","LABEL",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VCT"] = {{"Text","",},},
                        },

                        {
                            -- remove the extra line
                            ["SEC_EDIT"] = "SEC_UI_SLOT",
                            ["SKW"] = {"ID","LINE1",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- edit the vertical line
                            ["SEC_EDIT"] = "SEC_UI_SLOT",
                            ["SKW"] = {"ID","LINE2",},
                            ["VCT"] = 
                            {
                                {"Height",164,},
                                {"HeightPercentage","False",},
                            },
                        },

                        {
                            -- insert the new slot after the pole slot
                            ["SKW"] = {"ID","SLOT03GRP",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_UI_SLOT",
                        },
                    }
                }
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------