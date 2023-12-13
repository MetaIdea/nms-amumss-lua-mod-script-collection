
--[[ Summery Description:
Increases the amount of glyphs you learn by 1-4 each time.
Due to rarity of glyphs, the chances to learn multiple is slightly higher than that of words.

Copper B. - Decreasing grinding since 1997 -- Seriously, i started to seriously mod games back then too :D
]]--


TEXT_TO_ADD1 =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="77" />
            <Property name="LabelID" value="PortalRune" />
            <Property name="Reward" value="GcRewardDiscoverRune.xml">
              <Property name="AllRunes" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="44" />
            <Property name="LabelID" value="PortalRune" />
            <Property name="Reward" value="GcRewardDiscoverRune.xml">
              <Property name="AllRunes" value="False" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="15" />
            <Property name="LabelID" value="PortalRune" />
            <Property name="Reward" value="GcRewardDiscoverRune.xml">
              <Property name="AllRunes" value="False" />
            </Property>
          </Property>
]]

TEXT_TO_ADD2 =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="77" />
            <Property name="LabelID" value="PortalRune" />
            <Property name="Reward" value="GcRewardDiscoverRune.xml">
              <Property name="AllRunes" value="True" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="44" />
            <Property name="LabelID" value="PortalRune" />
            <Property name="Reward" value="GcRewardDiscoverRune.xml">
              <Property name="AllRunes" value="True" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="15" />
            <Property name="LabelID" value="PortalRune" />
            <Property name="Reward" value="GcRewardDiscoverRune.xml">
              <Property name="AllRunes" value="True" />
            </Property>
          </Property>
]]


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "I_More_Glyphs.pak",
    ["MOD_AUTHOR"]      = "Copper Boltwire",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE1","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE2","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE3","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE4","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE5","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE6","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE7","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE8","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE9","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE10","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE11","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE12","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE13","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE14","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE15","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","PORTALRUNE16","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD1,
                        },
                        
                        -- Not 100% sure about these, but added them anyways...
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","RS_GLYPHS","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD2,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","RS_S4_S2M2","AllRunes","True",},
                            ["SECTION_UP"]          = 1,
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD2,
                        },
                    },
                },
            },
        },
    },
}



















--RAWR!!!
-- BOO!