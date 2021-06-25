--NOTE: using LUA 5.3
--Beside all the basic language
--All available standard functions in {string, math, table} plus {tonumber, tostring, type} can be used here 

--xxxxxxxxxxxxxxx  WARNING  xxxxxxxxxxxxxxxxxxx
--NOTE: this script uses LINE_OFFSET
--      if NMS adds or removes lines leading to the end of the section
--      we are looking for to ADD the text, the EXML may not compile
--      or even work correctly

--      SEE the script "LearnMoreWords.lua" for a much better way WITHOUT using LINE_OFFSET

--xxxxxxxxxxxxxxx  WARNING  xxxxxxxxxxxxxxxxxxx

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

--for BEYOND, some added lines
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
                                                          
					["MBIN_FILE_SOURCE"] 	=                         --BOTH will be searched for on the SAME line
					{                                               --The SpecialKeyWords pair can point to a single line or multiple lines
                                                          
						"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"		--If you want to process multiple lines, you need to make ["REPLACE_TYPE"] = "ALL",
					},                                              --and lines that match down the file will also be processed
					["EXML_CHANGE_TABLE"] 	=                       --To limit the search to a region, use also some PRECEDING_KEY_WORDS
					{                                               
						{                                             --Using only a value like "WORD" here could work but is much more prone to errors!!!
							["SPECIAL_KEY_WORDS"] = {"Id","WORD",},     --here using a SpecialKeyWord "Id" with a value "WORD" to zoom in on the line we seek
							["LINE_OFFSET"] 		= "+19",                --forces changes to start +19 lines below the line pointed by the SPECIAL_KEY_WORDS
							["REPLACE_TYPE"] 		= "",			
							-- ["VALUE_CHANGE_TABLE"] 	=
              -- {
                -- {"IGNORE",	"IGNORE",},                    --means don't change anything on the line
              -- },
							["ADD"] 				= TEXT_TO_ADD,              --insert the text define in the user named variable TEXT_TO_ADD above
						},
						{                                                   --below, other changes to be done to the same MBIN_FILE_SOURCE file
							["SPECIAL_KEY_WORDS"]   = {"Id","TRA_WORD",},     --found on line 7509 (in the original EXML file v.1.78)
							["LINE_OFFSET"] 		    = "+19",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"},}, --not required or used
							["ADD"] 				= TEXT_TO_ADD,
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","TRA_WORD",},     --found on line 7509 (in the original EXML file v.1.78)
							["REPLACE_TYPE"]        = "ALL",
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"AlienRace",	"Traders"}, --to correct value="None" in the added sections
              },
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","EXP_WORD",},
							["LINE_OFFSET"] 		    = "+19",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"},},
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
							["SPECIAL_KEY_WORDS"]   = {"Id","WAR_WORD",},
							["LINE_OFFSET"] 		    = "+19",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"},},
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
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_EXP",},
							["LINE_OFFSET"] 		    = "+19",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"},},
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
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_TRA",},
							["LINE_OFFSET"] 		    = "+19",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"},},
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
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_WAR",},
							["LINE_OFFSET"] 		    = "+19",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"},},
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
							["SPECIAL_KEY_WORDS"]   = {"Id","TEACHWORD_ATLAS",},
							["LINE_OFFSET"] 		    = "+19",
							-- ["VALUE_CHANGE_TABLE"] 	= {{"IGNORE",	"IGNORE"},},
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