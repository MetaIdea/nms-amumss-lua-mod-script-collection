--[[ This is the script to increase the number of words from knowledge stones]]

-- Change this to your liking
WORDS_LEARN = 10



ORIGINAL_CODE = [[
		  <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
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

EXPLORER_CODE  = string.gsub(ORIGINAL_CODE, "None", "Explorers")
TRADER_CODE    = string.gsub(ORIGINAL_CODE, "None", "Traders")
WARRIOR_CODE   = string.gsub(ORIGINAL_CODE, "None", "Warriors")
BUILDER_CODE   = string.gsub(ORIGINAL_CODE, "None", "Builders")

-- Since there is already one block of this inside the EXML file, we only need to add the number of words to learn minus 1.
EXPLORER_CODE = string.rep(EXPLORER_CODE, WORDS_LEARN -1)
TRADER_CODE   = string.rep(TRADER_CODE, WORDS_LEARN)
WARRIOR_CODE  = string.rep(WARRIOR_CODE, WORDS_LEARN)
BUILDER_CODE  = string.rep(BUILDER_CODE, WORDS_LEARN)
CODE_TO_INCLUDE = EXPLORER_CODE..TRADER_CODE..WARRIOR_CODE..BUILDER_CODE

-- If you need more information on how this works, refer back to the Script_Rules.txt file.
NMS_MOD_DEFINITION_CONTAINER = {

    -- Just stuff to define the .pak file
    ["MOD_FILENAME"]    = "LearnMoreWordsMultiLangx10.pak",
    ["MOD_AUTHOR"]      = "TheJollyDuck with help from AMUMSS and Nexus lua scripts",
    ["MOD_DESCRIPTION"] = "Increases the number of words learned from different sources",
    ["NMS_VERSION"]     = "Echoes",

    -- This contains all the stuff to append
    ["MODIFICATIONS"] = {{      

        ["MBIN_CHANGE_TABLE"] = {{

            -- This is the location of the things we will change
            ["MBIN_FILE_SOURCE"]  = {"METADATA/REALITY/TABLES/REWARDTABLE.MBIN"},   
            ["EXML_CHANGE_TABLE"] = {{               

                  ["SPECIAL_KEY_WORDS"] = {"Id", "WORD", "PercentageChance", "IGNORE"},
                  ["REPLACE_TYPE"] = "ALL",
                  
                  ["VALUE_CHANGE_TABLE"] = {{"AlienRace", "Explorers"}}

              }, {

                  -- This modification only edits the words taken from Knowledge Stones and Encyclopedias
                  -- Special Keywords help locate the place in the code to add the extra blocks seen above
                  -- The stuff comes in pairs: "Id" is paired with "WORD", etc
                  ["SPECIAL_KEY_WORDS"] = {"Id", "WORD", "PercentageChance", "IGNORE"},
                  ["REPLACE_TYPE"] = "ADDAFTERSECTION",

                    -- This part just adds the code we found seen on the top of the script
                  ["ADD"] = CODE_TO_INCLUDE,            
            }}
        }}
    }}
}