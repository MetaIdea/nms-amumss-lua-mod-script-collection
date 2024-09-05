----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ExoticStarshipFabricator"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "5051"
METADATA_MOD_DESC       = "This mod enables synthesis of exotic starships based on the Guppy / Ball cockpit in starship fabricators. Modifies files in METADATA\\GAMESTATE\\PLAYERDATA and TEXTURES\\COMMON\\SPACECRAFT\\S-CLASS."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_METADATA_CUSTOM_MODULES =              "METADATA\\GAMESTATE\\PLAYERDATA\\MODULARCUSTOMISATIONDATATABLE.MBIN"
FILE_METADATA_CUSTOM_DESCRIPTORS =          "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"
FILE_METADATA_CUSTOM_TEXTURES =             "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONTEXTUREOPTIONDATA.MBIN"

FILE_TEXTURES_ROYAL_TRIM =                  "TEXTURES\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALSCLASS_TRIM.TEXTURE.MBIN"
FILE_TEXTURES_ROYAL_DETAILS =               "TEXTURES\\COMMON\\SPACECRAFT\\S-CLASS\\DETAILS.TEXTURE.MBIN"

FILE_UI_SHIP_BUILDER =                      "UI\\SHIP_BUILDER_PAGE.MBIN"

--------------------------------------------------
-- items used in assembly process
--------------------------------------------------

-- products for cockpits
ITEM_COCKPIT_A = "MEGAPROD2"
ITEM_COCKPIT_B = "MEGAPROD1"
ITEM_COCKPIT_C = "MEGAPROD3"

-- products for wings
ITEM_WINGS_A = "COMPOUND5"
ITEM_WINGS_B = "COMPOUND4"
ITEM_WINGS_C = "COMPOUND6"

-- products for engines
ITEM_ENGINE_A = "SALVAGE_TECH10"
ITEM_ENGINE_B = "ULTRAPROD1"
ITEM_ENGINE_C = "ULTRAPROD2"



--------------------------------------------------
-- functions to work with SEC templates
--------------------------------------------------

function EditSection(section,item,descr) return
{   ["SEC_EDIT"] = section,     ["VCT"] = {{"ItemID",item,},{"ActivatedDescriptorGroupID",descr,},},    }
end

function PasteSection (section,slotid) return
{   ["SKW"] = {"SlotID",slotid,},   ["PKW"] = "SlottableItems",     ["SEC_ADD_NAMED"] = section,        }
end

function FillInField(id,old,new) return
{   ["SEC_EDIT"] = "SEC_OPTIONS",   ["SKW"] = {id,old,},    ["VCT"] = {{id,new,},},     }
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
    ["AMUMSS_SUPPRESS_MSG"] = "NUMBERtoSTRING",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ----------------------------------------------------------------------------------------------------
                    -- modular customisation data
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOM_MODULES,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- enable shuttles in fabricator, change label in bottom bar
                            -- change proc gen scene to exotic ships
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["VCT"] = 
                            {
                                {"IsEnabled","True",},
                                {"TitleLocId","BASESTATS_ROYAL",},
                                {"Filename","MODELS\COMMON\SPACECRAFT\S-CLASS\S-CLASS_PROC.SCENE.MBIN",},
                            },
                        },

                        --------------------------------------------------
                        -- cockpits:
                        -- ROYALA - mosquito (single front spike, long top wing)
                        -- ROYALB - royal (double front spike, short top wing)
                        -- ROYALC - guppy no top / front addons
                        --------------------------------------------------

                        {
                            -- change default preview to cockpit C, point line to locator node
                            ["SKW"] = {"SlotID","SHUTTLE_COCKPIT",},
                            ["VCT"] = {{"ActivatedDescriptorGroupID","EXOTIC_ROYALC",},{"UILocatorName","CockpitPos",},},
                        },

                        {
                            -- add shared cockpit node for preview with no parts
                            ["SKW"] = {"SlotID","SHUTTLE_COCKPIT",},
                            ["PKW"] = "AssociatedNonProcNodes",
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="_SClassShip_Royal" /></Property>]],
                        },

                        {
                            -- get data template for the cockpit section
                            ["SKW"] = {"ItemID","SHUTT_COCKA",},
                            ["SEC_SAVE_TO"] = "SEC_COCKPIT",
                        },

                        -- replace 2 shuttle cockpit options with 3 guppy options
                        EditSection("SEC_COCKPIT",ITEM_COCKPIT_A,"EXOTIC_ROYALA"),PasteSection("SEC_COCKPIT","SHUTTLE_COCKPIT"),
                        EditSection("SEC_COCKPIT",ITEM_COCKPIT_B,"EXOTIC_ROYALB"),PasteSection("SEC_COCKPIT","SHUTTLE_COCKPIT"),
                        EditSection("SEC_COCKPIT",ITEM_COCKPIT_C,"EXOTIC_ROYALC"),PasteSection("SEC_COCKPIT","SHUTTLE_COCKPIT"),    

                        {
                            -- remove the 2 shuttle cockpit options
                            ["SKW"] = {{"ItemID","SHUTT_COCKA",},{"ItemID","SHUTT_COCKB",},},
                            ["REMOVE"] = "SECTION",
                        },

                        --------------------------------------------------
                        -- wings:
                        -- WINGSA - big folding wings
                        -- WINGSB - small static wings
                        -- WINGSC - side boosters
                        --------------------------------------------------

                        {
                            -- change default preview to wings B, point line to locator node
                            ["SKW"] = {"SlotID","SHUTTLE_WING",},
                            ["VCT"] = {{"ActivatedDescriptorGroupID","EXOTIC_WINGSB",},{"UILocatorName","Inventory",},},
                        },

                        {
                            -- get data template for the wings section
                            ["SKW"] = {"ItemID","SHUTT_WINGA",},
                            ["SEC_SAVE_TO"] = "SEC_WINGS",
                        },

                        -- replace shuttle wing options with 3 exotic wing options
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
                        -- ENGINEA - double exhaust
                        -- ENGINEB - single exhaust with spike
                        -- ENGINEC - single exhaust in clamshell
                        --------------------------------------------------

                        {
                            -- change default preview to engine A, change label and icon for engine slot, point line to locator node
                            ["SKW"] = {"SlotID","SHUTTLE_HULL",},
                            ["VCT"] =
                            {
                                {"LabelLocID","UI_SHIP_BUILDER_INPUT_ENGINE",},
                                {"UISlotGraphicLayer","THRUSTER",},
                                {"ActivatedDescriptorGroupID","EXOTIC_ENGINEA",},
                                {"UILocatorName","MaintenanceSlot1",},
                            },
                        },

                        {
                            -- get data template for the engine section
                            ["SKW"] = {"ItemID","SHUTT_CYLIN0A",},
                            ["SEC_SAVE_TO"] = "SEC_ENGINE",
                        },

                        -- replace shuttle hull options with 3 exotic engine options
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
                            -- point line to locator node
                            ["SKW"] = {"SlotID","SHUTTLE_CORE",},
                            ["VCT"] = {{"UILocatorName","MaintenanceSlot0",},},
                        },

                        {
                            -- remove options for C-B-A class reactor cores
                            ["SKW"] =
                            {
                                {"SlotID","SHUTTLE_CORE","ItemID","SHIP_CORE_C",},
                                {"SlotID","SHUTTLE_CORE","ItemID","SHIP_CORE_B",},
                                {"SlotID","SHUTTLE_CORE","ItemID","SHIP_CORE_A",},
                            },
                            ["REMOVE"] = "SECTION",
                        },

                        --------------------------------------------------
                        -- colour and texture pickers
                        --------------------------------------------------

                        {
                            -- remove secondary colour picker option
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_SECONDARY",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- edit primary colour picker to affect BASE layer
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["PKW"] = "ColourDataPriorityList",
                            ["VCT"] = {{"RequiredTextureGroup","EXOTIC_BASE",},},
                        },

                        {
                            -- change default primary colour (white)
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_PRIMARY",},
                            ["VCT"] = {{"DefaultColourIndex",9,},},
                        },

                        {
                            -- change default accent colour (blue)
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml","Title","CUSTOMISE_TERTIARY",},
                            ["VCT"] = {{"DefaultColourIndex",5,},},
                        },

                        {
                            -- open the section for texture pickers for shuttles
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["PKW"] = "TextureData",
                            ["CREATE_HOS"] = "TRUE",
                        },

                        {
                            -- get texture picker template from fighters
                            ["SKW"] = {"Fighter","GcModularCustomisationConfig.xml",},
                            ["PKW"] = "GcModularCustomisationTextureGroup.xml",
                            ["SEC_SAVE_TO"] = "SEC_PICKER",
                        },

                        {
                            -- edit template for accent colour
                            ["SEC_EDIT"] = "SEC_PICKER",
                            ["VCT"] = {{"Title","CUSTOMISE_TERTIARY",},{"TextureOptionGroup","EXOTIC_BITS",},},
                        },

                        {
                            -- add it to the section
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["PKW"] = "TextureData",
                            ["SEC_ADD_NAMED"] = "SEC_PICKER",
                        },

                        {
                            -- edit template for primary colour
                            ["SEC_EDIT"] = "SEC_PICKER",
                            ["VCT"] = {{"Title","CUSTOMISE_PRIMARY",},{"TextureOptionGroup","EXOTIC_BODY",},},
                        },

                        {
                            -- add it to the section
                            ["SKW"] = {"Shuttle","GcModularCustomisationConfig.xml",},
                            ["PKW"] = "TextureData",
                            ["SEC_ADD_NAMED"] = "SEC_PICKER",
                        },
                    }
                },

                {
                    ----------------------------------------------------------------------------------------------------
                    -- descriptor groups MBIN
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOM_DESCRIPTORS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --------------------------------------------------
                        -- cockpit group
                        --------------------------------------------------

                        {
                            -- get data template for descriptor group with 3 options
                            ["SKW"] = {"Id","FIGHT_ENG",},
                            ["SEC_SAVE_TO"] = "SEC_OPTIONS",
                        },

                        {
                            -- edit data for exotic cockpit options
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["VCT"] = {{"Id","EXOTIC_COCK",},},
                        },

                        -- fill in the fields with new values
                        FillInField("GroupID","FIGHT_ENGIB","EXOTIC_ROYALA"),
                        FillInField("GroupID","FIGHT_ENGIC","EXOTIC_ROYALB"),
                        FillInField("GroupID","FIGHT_ENGID","EXOTIC_ROYALC"),

                        FillInField("Value","_ENGINE_B","_TopWing_A"),
                        FillInField("Value","_ENGINE_C","_TopWing_B"),
                        FillInField("Value","_ENGINE_D","_TopWing_C"),

                        {
                            -- for each group add the main body node
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["SKW"] =
                            {
                                {"GroupID","EXOTIC_ROYALA",},
                                {"GroupID","EXOTIC_ROYALB",},
                                {"GroupID","EXOTIC_ROYALC",},
                            },
                            ["PKW"] = "Descriptors",
                            ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="_SClassShip_Royal" /></Property>]]
                        },

                        {
                            -- add new description group
                            ["PKW"] = "DescriptorGroupSets",
                            ["SEC_ADD_NAMED"] = "SEC_OPTIONS",
                        },

                        --------------------------------------------------
                        -- wings group
                        --------------------------------------------------

                        {
                            -- get data template for descriptor group with 3 options
                            ["SKW"] = {"Id","FIGHT_ENG",},
                            ["SEC_SAVE_TO"] = "SEC_OPTIONS",
                        },

                        {
                            -- edit data for exotic cockpit options
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["VCT"] = {{"Id","EXOTIC_WING",},},
                        },

                        -- fill in the fields with new values
                        FillInField("GroupID","FIGHT_ENGIB","EXOTIC_WINGSA"),
                        FillInField("GroupID","FIGHT_ENGIC","EXOTIC_WINGSB"),
                        FillInField("GroupID","FIGHT_ENGID","EXOTIC_WINGSC"),

                        FillInField("Value","_ENGINE_B","_Wings_A"),
                        FillInField("Value","_ENGINE_C","_Wings_B"),
                        FillInField("Value","_ENGINE_D","_Wings_C"),

                        {
                            -- add new description group
                            ["PKW"] = "DescriptorGroupSets",
                            ["SEC_ADD_NAMED"] = "SEC_OPTIONS",
                        },

                        --------------------------------------------------
                        -- engines group
                        --------------------------------------------------

                        {
                            -- get data template for descriptor group with 3 options
                            ["SKW"] = {"Id","FIGHT_ENG",},
                            ["SEC_SAVE_TO"] = "SEC_OPTIONS",
                        },

                        {
                            -- edit data for exotic cockpit options
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["VCT"] = {{"Id","EXOTIC_ASS",},},
                        },

                        -- fill in the fields with new values
                        FillInField("GroupID","FIGHT_ENGIB","EXOTIC_ENGINEA"),
                        FillInField("GroupID","FIGHT_ENGIC","EXOTIC_ENGINEB"),
                        FillInField("GroupID","FIGHT_ENGID","EXOTIC_ENGINEC"),

                        FillInField("Value","_ENGINE_B","_Engine_A"),
                        FillInField("Value","_ENGINE_C","_Engine_B"),
                        FillInField("Value","_ENGINE_D","_Engine_C"),

                        {
                            -- add new description group
                            ["PKW"] = "DescriptorGroupSets",
                            ["SEC_ADD_NAMED"] = "SEC_OPTIONS",
                        },
                    }
                },

                {
                    ----------------------------------------------------------------------------------------------------
                    -- texture options MBIN
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOM_TEXTURES,
                    ["EXML_CHANGE_TABLE"] =
                    {                        
                        --------------------------------------------------
                        -- texture options for body (OVERLAY layer):
                        -- 1 option for "transparent" layer for proc colour BASE
                        -- 6 options for fixed colour textures: 5 vanilla + 1 black
                        --------------------------------------------------

                        {
                            -- get data template for texture option with 7 fields
                            ["SKW"] = {"TextureOptionsID","HEAD_VTOP",},
                            ["SEC_SAVE_TO"] = "SEC_OPTIONS",
                        },

                        {
                            -- edit data for exotic body option
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["VCT"] =
                            {
                                {"TextureOptionsID","EXOTIC_BODY",},
                                {"Layer","OVERLAY",},
                                {"Group","",},
                            },
                        },

                        -- fill in new fields for options
                        FillInField("Value","1","EMPTY"),FillInField("Value","2","YELLOW"),FillInField("Value","3","BLUE"),
                        FillInField("Value","4","RED"),FillInField("Value","5","DEFAULT"),FillInField("Value","6","BROWN"),
                        FillInField("Value","7","BLACK"),
                        
                        -- fill in new fields for tips
                        FillInField("Value","UI_TIP_HEAD_VTOP_TEX1","UI_SELECT"),
                        FillInField("Value","UI_TIP_HEAD_VTOP_TEX2","UI_PAINT_YELLOW"),
                        FillInField("Value","UI_TIP_HEAD_VTOP_TEX3","UI_PAINT_BLUE"),
                        FillInField("Value","UI_TIP_HEAD_VTOP_TEX4","UI_PAINT_RED"),
                        FillInField("Value","UI_TIP_HEAD_VTOP_TEX5","UI_PAINT_WHITE"),
                        FillInField("Value","UI_TIP_HEAD_VTOP_TEX6","UI_PAINT_ORANGE"),
                        FillInField("Value","UI_TIP_HEAD_VTOP_TEX7","UI_PAINT_BLACK_DARK"),

                        {
                            -- add new texture group
                            ["PKW"] = "TextureOptions",
                            ["SEC_ADD_NAMED"] = "SEC_OPTIONS",
                        },

                        --------------------------------------------------
                        -- texture options for accents (OVERLAYMETAL):
                        -- 1 painted option
                        -- 2 vanilla options (silver and gold accents)
                        --------------------------------------------------

                        {
                            -- get data template for texture option with 3 fields
                            ["SKW"] = {"TextureOptionsID","ARMOUR_ASTRO",},
                            ["SEC_SAVE_TO"] = "SEC_OPTIONS",
                        },

                        {
                            -- edit data for exotic accents option
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["VCT"] =
                            {
                                {"TextureOptionsID","EXOTIC_BITS",},
                                {"Layer","OVERLAYMETAL",},
                                {"Group","",},
                            },
                        },

                        -- fill in new fields for options
                        FillInField("Value","CHESTARMOUR_0","PAINTED"),
                        FillInField("Value","CHESTARMOUR_1","SILVER"),
                        FillInField("Value","CHESTARMOUR_2","GOLD"),

                        -- fill in new fields for tips
                        FillInField("Value","UI_TIP_ARMOUR_ASTRO_TEX1","UI_SELECT"),
                        FillInField("Value","UI_TIP_ARMOUR_ASTRO_TEX2","UI_MEDAL_RANK_2"),
                        FillInField("Value","UI_TIP_ARMOUR_ASTRO_TEX3","UI_MEDAL_RANK_3"),

                        {
                            -- add new texture group
                            ["PKW"] = "TextureOptions",
                            ["SEC_ADD_NAMED"] = "SEC_OPTIONS",
                        },

                        --------------------------------------------------
                        -- texture option base layer (BASE):
                        -- no actual options, just forcing a colour palette
                        --------------------------------------------------

                        {
                            -- get data template for texture option with 2 fields
                            ["SKW"] = {"TextureOptionsID","TORSO_VANILLA",},
                            ["SEC_SAVE_TO"] = "SEC_OPTIONS",
                        },

                        {
                            -- edit data for exotic accents option
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["VCT"] =
                            {
                                {"TextureOptionsID","EXOTIC_BASE",},
                                {"Layer","BASE",},
                                {"Group","",},
                            },
                        },

                        {
                            -- yeet out Options and Tips sections
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["PKW"] = "Options",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- yeet out Options and Tips sections
                            ["SEC_EDIT"] = "SEC_OPTIONS",
                            ["PKW"] = "Tips",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- add new texture group
                            ["PKW"] = "TextureOptions",
                            ["SEC_ADD_NAMED"] = "SEC_OPTIONS",
                        },
                    }
                },

                {
                    ----------------------------------------------------------------------------------------------------
                    -- guppy exotic proc texture MBIN
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURES_ROYAL_TRIM,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            --  get data template for overlay layer
                            ["SKW"] = {"Name","YELLOW",},
                            ["SEC_SAVE_TO"] = "SEC_LAYER",
                        },

                        {
                            -- edit template: remove from proc gen spawning, remove texture
                            ["SEC_EDIT"] = "SEC_LAYER",
                            ["VCT"] = 
                            {
                                {"Name","EMPTY",},
                                {"Probability",0,},
                                {"Diffuse","",},
                            },
                        },
                        
                        {
                            -- add the transparent layer
                            ["SKW"] = {"Name","OVERLAY",},
                            ["PKW"] = "Textures",
                            ["SEC_ADD_NAMED"] = "SEC_LAYER",
                        },

                        {
                            -- edit template: set name and assign new texture
                            ["SEC_EDIT"] = "SEC_LAYER",
                            ["VCT"] = 
                            {
                                {"Name","BLACK",},
                                {"Probability",0,},
                                {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.BLACK.DDS",},
                            },
                        },

                        {
                            -- add the black layer
                            ["SKW"] = {"Name","BROWN",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_LAYER",
                        },

                        {
                            -- edit base layer to force a colour palette
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VCT"] = {{"Palette","Paint",},},
                        },

                        {
                            -- edit base layer to force a colour palette
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = {{"ColourAlt","Primary",},},
                        },

                        {
                            --  get data template for metal bits layer
                            ["SKW"] = {"Name","SILVER",},
                            ["SEC_SAVE_TO"] = "SEC_METAL",
                        },

                        {
                            -- edit template: set name and assign new texture
                            ["SEC_EDIT"] = "SEC_METAL",
                            ["VCT"] = 
                            {
                                {"Name","PAINTED",},
                                {"Probability",0,},
                                {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAYMETAL.GOLD.DDS",},
                            },
                        },

                        {
                            -- add the new layer
                            ["SKW"] = {"Name","GOLD",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_METAL",
                        },

                        {
                            -- edit new layer to force a colour palette
                            ["SKW"] = {"Name","PAINTED","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VCT"] = {{"Palette","Paint",},},
                        },

                        {
                            -- edit new layer to force a colour palette
                            ["SKW"] = {"Name","PAINTED",},
                            ["VCT"] = {{"ColourAlt","Alternative2",},},
                        },
                    }
                },

                {
                    ----------------------------------------------------------------------------------------------------
                    -- exotic details proc texture MBIN
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURES_ROYAL_DETAILS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            --  get data template for details layer
                            ["SKW"] = {"Name","SILVER",},
                            ["SEC_SAVE_TO"] = "SEC_DETAIL",
                        },

                        {
                            -- edit template: set name and assign new texture
                            ["SEC_EDIT"] = "SEC_DETAIL",
                            ["VCT"] = 
                            {
                                {"Name","PAINTED",},
                                {"Probability",0,},
                                {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S-CLASS/DETAILS.OVERLAYMETAL.GOLD.DDS",},
                            },
                        },

                        {
                            -- add the new layer
                            ["SKW"] = {"Name","GOLD",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_DETAIL",
                        },
                        
                        {
                            -- edit new layer to force a colour palette
                            ["SKW"] = {"Name","PAINTED","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VCT"] = {{"Palette","Paint",},},
                        },

                        {
                            -- edit new layer to force a colour palette
                            ["SKW"] = {"Name","PAINTED",},
                            ["VCT"] = {{"ColourAlt","Alternative2",},},
                        },
                    }
                },

                {
                    ----------------------------------------------------------------------------------------------------
                    -- ship fabricator UI MBIN
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_SHIP_BUILDER,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            --  get data template for indicator dot
                            ["SKW"] = {"ID","DOT04",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SEC_SAVE_TO"] = "SEC_UI_DOT",
                        },

                        {
                            -- edit template: change ID and position
                            ["SEC_EDIT"] = "SEC_UI_DOT",
                            ["VCT"] = 
                            {
                                {"ID","DOT05",},
                                {"PositionX","@+10",},
                            },
                        },

                        {
                            -- add the new indicator
                            ["SKW"] = {"ID","DOT04",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_UI_DOT",
                        },

                        {
                            -- move all the dots 5px to the left
                            ["SKW"] = {{"ID","DOT01",},{"ID","DOT02",},{"ID","DOT03",}, {"ID","DOT04",}, {"ID","DOT05",},},
                            ["VCT"] = {{"PositionX","@-5",},}
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