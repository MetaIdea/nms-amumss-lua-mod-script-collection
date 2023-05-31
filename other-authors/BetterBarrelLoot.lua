NEW_SUBSTANCE =
[[
                <Property value="GcRewardTableItem.xml">				
                  <Property name="PercentageChance" value="35" />
                  <Property name="Reward" value="GcRewardSpecificSubstance.xml">
                    <Property name="Default" value="GcDefaultMissionProduct.xml">
                      <Property name="Product" value="GcProductTableEnum.xml">
                        <Property name="Product" value="None" />
                      </Property>
                    </Property>
                    <Property name="Id" value="ROCKETSUB" />
                    <Property name="AmountMin" value="25" />
                    <Property name="AmountMax" value="30" />
                    <Property name="HardModeMultiplier" value="1" />
                    <Property name="DisableMultiplier" value="False" />
                    <Property name="RewardAsBlobs" value="False" />
                    <Property name="UseFuelMultiplier" value="False" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "BetterBarrelLoot.pak",
["MOD_AUTHOR"]				= "Makto",
["NMS_VERSION"]				= "3.21",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Id", "NAV_DATA"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "5"},
								{"Id", "SHIP_INV_TOKEN"},--must be product
								{"AmountMin", "1"},
								{"AmountMax", "1"}
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Id", "FUEL2"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "35"},
								{"Id", "LAUNCHSUB2"}, --Must be substance
								{"AmountMin", "25"},
								{"AmountMax", "30"}								
							}
                        },						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Id", "AM_HOUSING"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "5"},
								{"Id", "WEAP_INV_TOKEN"}, --must be product
								{"AmountMin", "1"},
								{"AmountMax", "1"}
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Id", "ANTIMATTER"},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "20"},
								{"Id", "ANTIMATTER"}, --must be product								
								{"AmountMin", "1"},
								{"AmountMax", "1"}								
							}
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Id", "HYPERFUEL1"}, --38077-38349 / 38195-38203
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = NEW_SUBSTANCE -- adds new substance section
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Id", "HYPERFUEL1"},
							["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION", -- removes this product section replaced by new substance section above
                        }

					}
				}
			}
		}
	}
} --30 global replacements
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
