----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "430"
METADATA_LOCATIZATION   = "LOC4"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game. Module for localization file 4."

-- credits:
-- bk201                                        pointing out typos, providing feedback on changes
-- Devilin Pixy, members of NMS Discord         pointing out typos
-- Gumsk, lyravega                              optimizations of the LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

-- fixed typo in commercial
TEXT_COMMERCIAL_BUILD = "Commercial HoloTerminus"

-- renamed sodium crystals
TEXT_SODIUM_CRYSTALS = "Sodium Crystals"

-- fixed description for Osmosis Generator (reduced fuel usage)
TEXT_SUBMARINE_RECHARGE = "Installed into the drive system aboard the &lt;STELLAR&gt;Nautilon Submarine&lt;&gt;.&#xA;&#xA;Captures energy by exploiting the saline gradient in deep water environments, reducing the fuel consumption of &lt;TECHNOLOGY&gt;Humboldt Drive&lt;&gt; by a substantial amount."

-- fixed typo in Nitrogen in names of refining recipies
TEXT_NITROGEN_REFINING = "Requested Operation: Harness Organic Nitrogen"

-- new crafting tooltip for Warp Hypercore
PROPERTY_CRAFT_HYPERCORE =
[[<Property value="TkLocalisationEntry.xml">
<Property name="Id" value="UI_PIN_HYPERFUEL2_OBJ_TIP" />
<Property name="English" value="VariableSizeString.xml">
  <Property name="Value" value="Craft %ITEM% from &lt;FUEL&gt;Antimatter&lt;&gt; and &lt;RARE&gt;Storm Crystal&lt;&gt;. Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;." />
</Property>
<Property name="French" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Italian" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="German" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Spanish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Russian" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Polish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Dutch" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Portuguese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="LatinAmericanSpanish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="BrazilianPortuguese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="SimplifiedChinese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="TraditionalChinese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="TencentChinese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Korean" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Japanese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="USEnglish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
</Property>]]

-- label for portal glyphs with no name assigned
TEXT_DATA_CORRUPTED = "// DATA CORRUPTED //"

-- portal glyph names from Starbirth quest
TEXT_PORTALGLYPH_01 = "THE STAR OVER WATER"
TEXT_PORTALGLYPH_02 = "THE HUNTER"
TEXT_PORTALGLYPH_03 = "THE REFLECTION"
TEXT_PORTALGLYPH_04 = "THE ANCIENT GIANT"
TEXT_PORTALGLYPH_05 = "THE OBSCURED COMPANION"
TEXT_PORTALGLYPH_06 = "THE ASCENDING ORB"
TEXT_PORTALGLYPH_07 = "THE SAILOR"
TEXT_PORTALGLYPH_08 = "THE LOWLY INSECT"

TEXT_PORTALGLYPH_09 = TEXT_DATA_CORRUPTED
TEXT_PORTALGLYPH_10 = "THE SPIRAL OF REALITY"
TEXT_PORTALGLYPH_11 = "THE ANOMALY"
TEXT_PORTALGLYPH_12 = "THE OCEAN KING"
TEXT_PORTALGLYPH_13 = TEXT_DATA_CORRUPTED
TEXT_PORTALGLYPH_14 = "THE VESSEL TO BEYOND"
TEXT_PORTALGLYPH_15 = TEXT_DATA_CORRUPTED
TEXT_PORTALGLYPH_16 = TEXT_DATA_CORRUPTED



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- localization file path
PATH_LANGUAGE = "LANGUAGE\\NMS_LOC4_ENGLISH.MBIN"

-- product table path (for new Warp Hypercore crafting tooltip)
PATH_PRODUCT_TABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"

-- data array
DATA = 
{
    UI_BASE_SHOP_SUB = TEXT_COMMERCIAL_BUILD,
    UI_YELLOW_CRYSTAL_NAME = TEXT_SODIUM_CRYSTALS,
    UI_SUB_RECHARGE_DESC = TEXT_SUBMARINE_RECHARGE,
    RECIPE_PLANT_CAVE_CATALYST1 = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_WATER_CATALYST1 = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_CAVE_CATALYST2 = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_WATER_CATALYST2 = TEXT_NITROGEN_REFINING,

    UI_GUIDE_PORTAL_01_NAME = TEXT_PORTALGLYPH_01,
    UI_GUIDE_PORTAL_02_NAME = TEXT_PORTALGLYPH_02,
    UI_GUIDE_PORTAL_03_NAME = TEXT_PORTALGLYPH_03,
    UI_GUIDE_PORTAL_04_NAME = TEXT_PORTALGLYPH_04,
    UI_GUIDE_PORTAL_05_NAME = TEXT_PORTALGLYPH_05,
    UI_GUIDE_PORTAL_06_NAME = TEXT_PORTALGLYPH_06,
    UI_GUIDE_PORTAL_07_NAME = TEXT_PORTALGLYPH_07,
    UI_GUIDE_PORTAL_08_NAME = TEXT_PORTALGLYPH_08,

    UI_GUIDE_PORTAL_09_NAME = TEXT_PORTALGLYPH_09,
    UI_GUIDE_PORTAL_10_NAME = TEXT_PORTALGLYPH_10,
    UI_GUIDE_PORTAL_11_NAME = TEXT_PORTALGLYPH_11,
    UI_GUIDE_PORTAL_12_NAME = TEXT_PORTALGLYPH_12,
    UI_GUIDE_PORTAL_13_NAME = TEXT_PORTALGLYPH_13,
    UI_GUIDE_PORTAL_14_NAME = TEXT_PORTALGLYPH_14,
    UI_GUIDE_PORTAL_15_NAME = TEXT_PORTALGLYPH_15,
    UI_GUIDE_PORTAL_16_NAME = TEXT_PORTALGLYPH_16,
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_LOCATIZATION.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                      {
                          ["SKW"] = {"Id","UI_PIN_HYPERFUEL1_OBJ_TIP",},
                          ["ADD_OPTION"] = "ADDafterSECTION",
                          ["ADD"] = PROPERTY_CRAFT_HYPERCORE,
                      },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_PRODUCT_TABLE,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SKW"] = {"ID","HYPERFUEL2"},
                            ["VCT"] = {{"PinObjectiveTip","UI_PIN_HYPERFUEL2_OBJ_TIP"},},
                        },
                    },
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- mod functions
----------------------------------------------------------------------------------------------------

-- EXML Change Table for the file
local EXML = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

-- function to modify tables
function MODIFY(_data,_exml)
    if _data~=nil and _exml~=nil then
        for id,value in next,_data do
            local change = {["SKW"] = {"Id",id,},["VCT"] = {{"Value",value},},}
            _exml[#_exml+1] = change
        end
    end
end

-- modify the localization file
MODIFY(DATA,EXML)



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------