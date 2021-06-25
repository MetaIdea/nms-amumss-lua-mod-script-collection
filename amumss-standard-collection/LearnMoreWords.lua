--NOTE: using LUA 5.3
--Beside all the basic language
--All available standard functions in {string, math, table} plus {tonumber, tostring, type} can be used here 

-- NOTE:
-- This script does NOT use LINE_OFFSET, much better
-- Some other word types exist in the EXML file. YOU COULD ADD THEM ALSO...
--

WORDS_TO_LEARN = 5 --a user named variable with a value of 5

TEXT_TO_ADD =

--was used with 1.78
-- [[
          -- <Property value="GcRewardTableItem.xml">
            -- <Property name="PercentageChance" value="100" />
            -- <Property name="Reward" value="GcRewardTeachWord.xml">
              -- <Property name="Race" value="GcAlienRace.xml">
                -- <Property name="AlienRace" value="None" />
              -- </Property>
              -- <Property name="AmountMin" value="1" />
              -- <Property name="AmountMax" value="1" />
            -- </Property>
            -- <Property name="LabelID" value="" />
          -- </Property>
-- ]] --a long text assigned to a user named variable

--for BEYOND, added new lines by NMS
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="WordCategory" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]] --a long text assigned to a user named variable

TEXT_TO_ADD = string.rep(TEXT_TO_ADD, WORDS_TO_LEARN - 1) --creates a text made of 4(five minus one) copies of TEXT_TO_ADD above

--each time the variable name TEXT_TO_ADD is found inside NMS_MOD_DEFINITION_CONTAINER, it is replaced by its value

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LearnMoreWords.pak",
["MOD_AUTHOR"]				= "ChoseSauvage converted by Mjjstral",
["MOD_DESCRIPTION"]       =
[[
From https://www.nexusmods.com/nomanssky/mods/733
Last Updated: 10 August 20185:29PM
by ChoseSauvage

*I will no longer be updating the mod, the way modding is structured in No Man Sky, the upkeep to maintain mods up-to-date is a hassle and takes time. Maybe they will learn from this and NMS2 will allow single lines to be edited like Skyrim. If someone wants to take it from here, be my guest.

Every time you learn a new word, no matter how, you'll learn 2, 5 or 10 words instead (depending on the file you download), including Atlas words.
It will always be that fixed amount and always from the alien race in that system.

The "You have learned the word X" events will queue up and will appear on screen one after the other, slowly. Be mindful if you intend to visit the mission board on a space station, if you queue a lot of words up and decide to accept or turn a quest, you will have to wait for all of them before getting back to the mission board menu. And if you ask an alien for directions on top of that, the menu might never show up and you'll have to ctrl-alt-del your wait out, just a heads up.

Modify
METADATA\REALITY\TABLES\REWARDTABLE.MBIN
]],
["NMS_VERSION"]				= "2.0",
["MODIFICATIONS"] 		= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",       
			["MBIN_CHANGE_TABLE"] 	=                           
			{                                                   --Using a SPECIAL_KEY_WORDS pair forces this tool
				{                                                 --   to find a line matching BOTH the first (the Property) AND the second (the value)
                                                          
					["MBIN_FILE_SOURCE"] 	=                         --EVERY SPECIAL_KEY_WORDS pairs will be searched for on the SAME line
					{                                               --SPECIAL_KEY_WORDS pairs, as a group, will point to a section of the EXML file
                                                          
						"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"		--If you want to process multiple lines, you need to make ["REPLACE_TYPE"] = "ALL",
					},                                              --and lines that match down the file will also be processed
					["EXML_CHANGE_TABLE"] 	=                       --To limit the search to a region, use also some PRECEDING_KEY_WORDS
					{                                               
						{                                             
							["SPECIAL_KEY_WORDS"] = {"Id","WORD","PercentageChance","IGNORE",},

                    -- Here we are using a SpecialKeyWord pair "Id" with a value="WORD" to zoom in on a master section we seek
                    -- WITH the addition of the second pair "PercentageChance","IGNORE" points to the right sub-section

                    -- NOTE: the use of "IGNORE" (as a replacement for the real value="100") makes sure we still find the right section
                    -- EVEN if the value "100" was ever changed by NMS
                      
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,              --insert the text define in the user named variable TEXT_TO_ADD above
						},
						{                                             --below, other changes to be done to the same MBIN_FILE_SOURCE file
							["SPECIAL_KEY_WORDS"]   = {"Id","TRA_WORD",},
							["PRECEDING_KEY_WORDS"]   = {"PercentageChance",},  
              
                    -- THIS can work also to specify the right section
                    -- SPECIAL_KEY_WORDS pair to specify a section
                    -- AND one PRECEDING_KEY_WORDS to narrow it down to the right section
                    
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TRA_WORD",},
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Traders"}, --to correct value="None" in the added sections
              },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","EXP_WORD","PercentageChance","IGNORE",},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","EXP_WORD",},
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Explorers"}, --to correct value="None" in the added sections
              },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","WAR_WORD","PercentageChance","IGNORE",},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","WAR_WORD",},
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Warriors"}, --to correct value="None" in the added sections
              },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_EXP","PercentageChance","IGNORE",},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_EXP",},
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Explorers"}, --to correct value="None" in the added sections
              },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_TRA","PercentageChance","IGNORE",},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_TRA",},
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Traders"}, --to correct value="None" in the added sections
              },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_WAR","PercentageChance","IGNORE",},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_WAR",},
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Warriors"}, --to correct value="None" in the added sections
              },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_ATLAS","PercentageChance","IGNORE",},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_ATLAS",},
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Atlas"}, --to correct value="None" in the added sections
              },
						},
					} --8 ADD + 7*5 value replacements
				}, --43 global replacements
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE