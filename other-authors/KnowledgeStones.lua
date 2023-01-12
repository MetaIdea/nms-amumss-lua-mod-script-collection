-- Learning more words was created by ChoseSauvage ( https://www.nexusmods.com/nomanssky/mods/733 )

-- Please be aware if you set any of the values below to 0 or NOT integer, you
-- might break the math used and the .lua won't produce a useable .pak file!

------------------------------------------------------------------------------
------------------- YOU SHOULD ONLY EDIT THE VALUE BELOW ---------------------
------------------------------------------------------------------------------

WORDS_TO_LEARN			= 3		-- Default value is 1 | Sets the amount of words you learn from non npc sources

------------------------------------------------------------------------------
-------------------- DO NOT EDIT ANYTHING PAST THIS POINT --------------------
------------------------------------------------------------------------------

MISC_WORD =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

MISC_WORD_LEARN = string.rep(MISC_WORD, WORDS_TO_LEARN-1)

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "KnowledgeStones.pak",
["MOD_AUTHOR"]				= "",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{

-----------------------------------------------------------------------------------------------------
------------------------------------------ WORD -----------------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						}
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE