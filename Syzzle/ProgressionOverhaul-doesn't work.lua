Author = "Syzzle"
ModName = "Progression Overhaul"
GameVersion = "4.07"
ModVersion = "BETA"
Description = "Description"

HYPERDRIVE_REWARD  =  [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSpecificTech.xml">
              <Property name="TechId" value="HYPERDRIVE" />
              <Property name="AutoPin" value="True" />
              <Property name="Silent" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WALKER_LOOT",},
							["PRECEDING_KEY_WORDS"] = {"List",},
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"]  =
							{
								{"IGNORE", "IGNORE",}
							},
							["ADD"] = HYPERDRIVE_REWARD
						},	
					}
				},	
			}
		}
	}	
}