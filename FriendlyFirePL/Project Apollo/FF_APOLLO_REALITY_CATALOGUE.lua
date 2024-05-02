----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_CATALOGUE"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for Catalogue and Guide section. Modifies files in METADATA\\REALITY."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- list of tech IDs added with Apollo
LIST_CUSTOM_TECH_IDS =
{
    "TECH_SCANNER",
    "TECH_SHIELD","TECH_PHOTON","TECH_SENTINEL","TECH_SHOTGUN","TECH_ROCKET","TECH_PHASE","TECH_CYCLO",
    "TECH_COMPUTER","TECH_TRANSFER","TECH_POLICE","TECH_LOCATOR","TECH_DISSONANT","TECH_HYPERDRIVE",
    "TECH_BOOSTL","TECH_BOOSTD","TECH_BOOSTS","TECH_BOOSTW","TECH_BOOSTP","TECH_BOOSTM",
    "TECH_WHITE","TECH_CYAN","TECH_ORANGE","TECH_PINK","TECH_ELECTRIC","TECH_GLITCH","TECH_PSYCHIC",
}

-- list of item IDs added with Apollo
LIST_CUSTOM_ITEM_IDS =
{
    "ITEM_TOKEN",
    "ITEM_PLATING","ITEM_FRAGMENT","ITEM_CIRCUIT",
    "ITEM_BOXA","ITEM_DICTIONARY",
    "ITEM_BOXB","ITEM_CRYSTAL",
    "ITEM_BOXC","ITEM_BYPASS",
}

-- function to build list for wiki page
function BuildWikiListProperty(list)

  local ListStart = [[<Property name="Items">]]
  local ListEnd = [[</Property>]]
  local EntryStart = [[<Property value="NMSString0x10.xml"><Property name="Value" value="]]
  local EntryEnd = [[" /></Property>]]
  local ListEntries = {}

  for i=1,#list do
    ListEntries[#ListEntries+1] = EntryStart .. list[i] .. EntryEnd
  end

  return ListStart .. table.concat(ListEntries) .. ListEnd

end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_CATALOGUE_TECH = "METADATA\\REALITY\\CATALOGUECRAFTING.MBIN"
FILE_REALITY_CATALOGUE_ITEMS = "METADATA\\REALITY\\CATALOGUEMATERIALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    -- catalogue and guide - technology section
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_CATALOGUE_TECH,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add section for Apollo tech
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_TECH_WEIRD",},   ["SEC_SAVE_TO"] = "SEC_WIKI_TECH",                                                                                                },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["VCT"] ={{"CategoryID","TEXT_WIKI_BUTTON_MAIN",},{"CategoryIDUpper","TEXT_WIKI_LABEL_MAIN",},},                                                        },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["SKW"] = {"IconOn","TkTextureResource.xml",},    ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.ON.DDS",},},                  },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["SKW"] = {"IconOff","TkTextureResource.xml",},   ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.OFF.DDS",},},                 },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["PKW"] = "Items",    ["REMOVE"] = "SECTION",                                                                                                           },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["SKW"] = {"WikiTopicType","CustomTechnologyList",},    ["ADD_OPTION"] = "ADDafterSECTION",   ["ADD"] = BuildWikiListProperty(LIST_CUSTOM_TECH_IDS),    },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_TECH_WEIRD",},   ["ADD_OPTION"] = "ADDafterSECTION",   ["SEC_ADD_NAMED"] = "SEC_WIKI_TECH",                                                        },
                    },
                },

                {
                    -- catalogue and guide - materials section
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_CATALOGUE_ITEMS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add section for Apollo items
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_COOK",},   ["SEC_SAVE_TO"] = "SEC_WIKI_ITEMS",   },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["VCT"] ={{"CategoryID","TEXT_WIKI_BUTTON_MAIN",},{"CategoryIDUpper","TEXT_WIKI_LABEL_MAIN",},},                                                 },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["SKW"] = {"IconOn","TkTextureResource.xml",},    ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.ON.DDS",},},           },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["SKW"] = {"IconOff","TkTextureResource.xml",},   ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.OFF.DDS",},},          },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["PKW"] = "Items",    ["REMOVE"] = "SECTION",                                                                                                    },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["SKW"] = {"WikiTopicType","CustomItemList",},    ["ADD_OPTION"] = "ADDafterSECTION",   ["ADD"] = BuildWikiListProperty(LIST_CUSTOM_ITEM_IDS),   },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_COOK",},   ["ADD_OPTION"] = "ADDafterSECTION",   ["SEC_ADD_NAMED"] = "SEC_WIKI_ITEMS",                                                   },

                        -- merge 2 "raw materials" sections into one to make place for Apollo section
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW2",},   ["PKW"] = "Items",    ["SEC_SAVE_TO"] = "SEC_RESOURCES",                                                                    },
                        {   ["SEC_EDIT"] = "SEC_RESOURCES",    ["REMOVE"] = "HBOS",                                                                                                                           },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW1",},   ["PKW"] = "Items",    ["ADD_OPTION"] = "ADDafterSECTION",   ["LINE_OFFSET"] = -1,   ["SEC_ADD_NAMED"] = "SEC_RESOURCES",    },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW1",},   ["VCT"] ={{"CategoryID","UI_GUIDE_HEADING_SUB_CATA",},{"CategoryIDUpper","UI_GUIDE_HEADING_SUB_CATA_U",},},                 },     
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW2",},   ["REMOVE"] = "SECTION",                                                                                                     },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------