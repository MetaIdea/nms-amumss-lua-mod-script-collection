ModAuthor       =   "Redmas"
LuaAuthor       =   "Hypn0tick"
ModName         =   "_Redmas_Gameplay_Tweaks-More_Bodyshape_Options"
BaseDescription =   "Adds more body shape options to customization stations (visible by multiplayer encounters, and persistent in your saves)."
GameVersion     =   "3.99"

PositionData    =
[[
                          <Property name="Positions">
                      <Property value="1" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.05" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.1" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.15" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.2" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.25" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.3" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.35" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.4" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.45" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.5" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.55" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.6" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.65" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.7" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.75" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.8" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.85" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.9" /><!-- Redmas Fantasy Origins -->
                      <Property value="0.95" /><!-- Redmas Fantasy Origins --> 
                          </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = ModName..".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"]      = ModAuthor,
    ["LUA_AUTHOR"]      = LuaAuthor,
    ["NMS_VERSION"]     = GameVersion,
    ["MODIFICATIONS"]           = 
    {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            {
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\UI\CHARACTERCUSTOMISATIONUIDATA.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle","CUSTOMISE_FACESHAPE_L"},
                            ["PRECEDING_KEY_WORDS"] =   {"Positions"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            --["SECTION_ACTIVE"]    =   1,
                            ["REMOVE"]  =   "Section"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleBoneName","HEADPOSE"},
                            --["PRECEDING_KEY_WORDS"]   =   {"Positions"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            --["SECTION_ACTIVE"]    =   1,
                            ["ADD"] =   PositionData
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle","CUSTOMISE_FACESHAPE_L"},
                            --["PRECEDING_KEY_WORDS"]   =   {"Positions"},
                            --["REPLACE_TYPE"]  =   "ALL",
                            ["SECTION_ACTIVE"]  =   12,
                            ["SECTION_UP"]  =   1,
                            ["ADD_OPTION"]          =   "ADDafterSECTION",
                            ["ADD"] =   [[              <Property name="BoneScales" />]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle","CUSTOMISE_FACESHAPE_L"},
                            --["PRECEDING_KEY_WORDS"]   =   {"Positions"},
                            --["REPLACE_TYPE"]  =   "",
                            ["SECTION_ACTIVE"]  =   12,
                            ["SECTION_UP"]  =   1,
                            ["REMOVE"]  =   "Section"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupTitle","BODY_SHAPE"},
                            ["PRECEDING_KEY_WORDS"] =   {"Positions"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            --["SECTION_ACTIVE"]    =   1,
                            ["REMOVE"]  =   "Section"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleBoneName","BODYSHAPE"},
                            --["PRECEDING_KEY_WORDS"]   =   {"Positions"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            --["SECTION_ACTIVE"]    =   1,
                            ["ADD"] =   PositionData
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Freighter","GcCustomisationUI.xml"},
                            ["PRECEDING_KEY_WORDS"] =   {"Common","CustomisationGroups","ColourGroups"},
                            ["REPLACE_TYPE"]    =   "ALL",
                            --["SECTION_ACTIVE"]    =   1,
                            ["VALUE_MATCH"] =   "Alternative2",
                            ["VALUE_CHANGE_TABLE"]  =   {
                                {"ColourAlt","Primary"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Freighter","GcCustomisationUI.xml"},
                            ["PRECEDING_KEY_WORDS"] =   {"Common","CustomisationGroups","ColourGroups","Palette","Palette"},
                            ["REPLACE_TYPE"]    =   "",
                            --["SECTION_ACTIVE"]    =   2,
                            ["VALUE_MATCH"] =   "Primary",
                            ["VALUE_CHANGE_TABLE"]  =   {
                                {"ColourAlt","Alternative2"},
                            }
                        },
                        --{
                        --  ["SPECIAL_KEY_WORDS"] = {"Freighter","GcCustomisationUI.xml"},
                        --  ["PRECEDING_KEY_WORDS"] =   {"Common","CustomisationGroups","ColourGroups","Palette","Palette","Palette"},
                        --  ["REPLACE_TYPE"]    =   "",
                        --  --["SECTION_ACTIVE"]    =   3,
                        --  ["VALUE_MATCH"] =   "Alternative2",
                        --  ["VALUE_CHANGE_TABLE"]  =   {
                        --      {"ColourAlt","Primary"},
                        --  }
                        --},
                    }
                },
            }
        },
    },
}