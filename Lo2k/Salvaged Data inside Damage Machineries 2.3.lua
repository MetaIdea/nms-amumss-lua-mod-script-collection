NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Salvaged Data inside Damage Machineries 2.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.84",
["MOD_DESCRIPTION"]			= "This mod place salvaged blueprints directly into damaged machineries",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TECHDEBRIS"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RewardChoice",	"GiveAll"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TECHDEBRIS", "Currency", "Nanites"},
							["SECTION_UP"] = 2,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="None" />
              </Property>
              <Property name="ID" value="BP_SALVAGE" />
              <Property name="AmountMin" value="2" />
              <Property name="AmountMax" value="4" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>]],
						},
					},
				}	
			}
		}
	}	
}

