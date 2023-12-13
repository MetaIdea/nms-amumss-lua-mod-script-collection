
--[[ Summery Description:
Increases the amount of words you learn by 1-4 each time.

The modules you can unlock and install that increases words learned never actually worked, so this is a workaround.

Copper B. - Decreasing grinding since 1997 -- Seriously, i started to seriously mod games back then too :D
]]--


TEXT_TO_ADD =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="80" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="60" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="40" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="20" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="wordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
          </Property>
]]

TEXT_TO_ADD2 = TEXT_TO_ADD..TEXT_TO_ADD

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "I_More_Words.pak",
    ["MOD_AUTHOR"]      = "ChoseSauvage converted by Mjjstral", -- Altered by Copper...
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
                            ["SPECIAL_KEY_WORDS"]   = {"Id","WORD","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD,
                        },
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TRA_WORD","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","EXP_WORD","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","WAR_WORD","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD,
                        },
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_EXP","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_TRA","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_WAR","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD,
                        },
                        { -- Adds the bonus words to learn twice with this one.
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_ATLAS","PercentageChance","IGNORE",},
                            ["ADD_OPTION"] 	        = "ADDafterSECTION",
                            ["ADD"]                 = TEXT_TO_ADD2,
                        },
                        
                        
                        
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TRA_WORD",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AlienRace", "Traders"}, --to correct value="None" in the added sections
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","EXP_WORD",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AlienRace", "Explorers"}, --to correct value="None" in the added sections
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","WAR_WORD",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AlienRace", "Warriors"}, --to correct value="None" in the added sections
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_EXP",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AlienRace", "Explorers"}, --to correct value="None" in the added sections
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_TRA",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AlienRace", "Traders"}, --to correct value="None" in the added sections
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_WAR",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AlienRace", "Warriors"}, --to correct value="None" in the added sections
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_ATLAS",},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"AlienRace", "Atlas"}, --to correct value="None" in the added sections
                            },
                        },
                    },
                },
            },
        },
    },
}

















--RAWR!!!
-- BOO!