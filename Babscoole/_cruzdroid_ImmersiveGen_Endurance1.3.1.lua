ADD_BLANK =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="GcExternalObjectList">
  <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    <Property name="Creatures" />
    <Property name="DistantObjects" />
    <Property name="Landmarks" />
    <Property name="Objects" />
    <Property name="DetailObjects" />
    <Property name="SelectableObjects" />
  </Property>
</Data>
]]	

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_cruzdroid_ImmersiveGen_Endurance1.3.1.pak",
["MOD_AUTHOR"]    = "cruzdroid",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.98",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_PET_ROCK", "ID", "BP_SALVAGE"},
							--["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_PLANT_MED", "ID", "FUEL1"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "OXYGEN"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_WATERPLANT_A", "ID", "FUEL1"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "CATALYST1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DE_WATERPLANT_S", "ID", "WATERPLANT"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "CATALYST1"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT2", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT3", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_TGUILD_GIFT4", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE", "ID","BP_SALVAGE",},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "6"},
								{"AmountMax", "14"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "S3_SALVAGE", "ID","BP_SALVAGE",},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Amount", "6"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE_ONLY", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
							["SECTION_ACTIVE"] = {8},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_PIRATEBOARD_A", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] = 
							{							
								{"AmountMin", "6"},
								{"AmountMax", "14"}							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE",},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "50"},						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "100"},						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {4,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "80"},						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "FUEL2"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "60"},
								{"AmountMax", "90"}								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "CATALYST1"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "60"},
								{"AmountMax", "90"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "OXYGEN"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "60"},
								{"AmountMax", "90"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "AMMO"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "40"},
								{"AmountMax", "90"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "CATALYST2"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "60"},
								{"AmountMax", "90"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "FUEL2"},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "60"},
								{"AmountMax", "90"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "AMMO"},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "60"},
								{"AmountMax", "90"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {7,},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="30" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="POWERCELL" />
                    <Property name="AmountMin" value="2" />
                    <Property name="AmountMax" value="5" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="7" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="SCRAP_GOODS" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="2" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="30" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="PRODFUEL2" />
                    <Property name="AmountMin" value="2" />
                    <Property name="AmountMax" value="5" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "CATALYST2"},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "CATALYST1"},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "100"},
								{"AmountMax", "150"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "POWERCELL"},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "2"},
								{"AmountMax", "5"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "PRODFUEL2"},
							["SECTION_ACTIVE"] = {2},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "2"},
								{"AmountMax", "5"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "ID", "JELLY"},
							["SECTION_ACTIVE"] = {1},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "2"},
								{"AmountMax", "5"}						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {16,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "7"},						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "7"},						
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Common","GcRewardTableCategory.xml", "Large","GcRewardTableItemList.xml", "ID", "AMMO"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "1"},
								{"AmountMax", "2"},
								{"ID", "SCRAP_GOODS"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml", "ID", "AMMO"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "1"},
								{"AmountMax", "2"},
								{"ID", "SCRAP_GOODS"},								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml", "ID", "PRODFUEL2"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "2"},
								{"AmountMax", "5"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml", "ID", "MICROCHIP"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMax", "5"},							
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml",},
							-- ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							-- ["SECTION_ACTIVE"] = {4,},
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"PercentageChance", "10"},						
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml", },
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {3,},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="10" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TECH_COMP" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="CASING" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="5" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="40" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="REPAIRKIT" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="MAGNET" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="COMPUTER" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="HYDRALIC" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="CARBON_SEAL" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="5" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
]]
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml", },
							-- ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							-- ["SECTION_ACTIVE"] = {11,},
							-- ["ADD_OPTION"] = "ADDafterSECTION",
							-- ["ADD"] =
-- [[

-- ]]
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {11,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "10"},	
								{"AmountMin", "100"},
								{"AmountMax", "150"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {12,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PercentageChance", "10"},	
								{"AmountMin", "2"},
								{"AmountMax", "5"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Small","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {13,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "2"},
								{"AmountMax", "5"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Large","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CRATE", "Rare","GcRewardTableCategory.xml", "Large","GcRewardTableItemList.xml", "UseInventoryChoiceOverride","False",},
							["ADD_OPTION"] = "ADDafterLINE",
							["ADD"] = 
[[
              <Property name="List">
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="FARMPROD1" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="FARMPROD2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="40" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="FARMPROD4" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_COMMODITY2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_COMMODITY1" />
                    <Property name="AmountMin" value="3" />
                    <Property name="AmountMax" value="30" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="POWERCELL" />
                    <Property name="AmountMin" value="2" />
                    <Property name="AmountMax" value="5" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_CURIO1" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="15" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_CURIO2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="EXP_CURIO1" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="15" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="EXP_CURIO2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="WAR_CURIO1" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="15" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="WAR_CURIO2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_COMMODITY3" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="20" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_COMMODITY5" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
              </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BARREL", "Common","GcRewardTableCategory.xml", "Medium","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "SALVAGE_TECH1"},	
								{"AmountMax", "5"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BARREL", "Common","GcRewardTableCategory.xml", "Medium","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "TRA_ENERGY2"},	
								{"AmountMax", "3"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BARREL", "Common","GcRewardTableCategory.xml", "Medium","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "TRA_MINERALS1"},	
								{"AmountMax", "10"},							
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BARREL", "Rare","GcRewardTableCategory.xml", "Medium","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},
							--["SECTION_ACTIVE"] = {1,},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BARREL", "Rare","GcRewardTableCategory.xml", "Medium","GcRewardTableItemList.xml", "UseInventoryChoiceOverride","False",},
							["ADD_OPTION"] = "ADDafterLINE",
							["ADD"] = 
[[
              <Property name="List">
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_MINERALS3" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="5" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_ENERGY1" />
                    <Property name="AmountMin" value="5" />
                    <Property name="AmountMax" value="10" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_TECH3" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_ALLOY2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_ALLOY3" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_COMPONENT3" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="15" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_ENERGY4" />
                    <Property name="AmountMin" value="2" />
                    <Property name="AmountMax" value="10" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
              </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Common","GcRewardTableCategory.xml", "Large","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},
							--["SECTION_ACTIVE"] = {1,},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Common","GcRewardTableCategory.xml", "Large","GcRewardTableItemList.xml", "UseInventoryChoiceOverride","False",},
							["ADD_OPTION"] = "ADDafterLINE",
							["ADD"] = 
[[
              <Property name="List">
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="50" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="REPAIRKIT" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="40" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="AM_HOUSING" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="30" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="ANTIMATTER" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="15" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="HYPERFUEL1" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="3" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="90" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_EXOTICS3" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="4" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="90" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="TRA_ALLOY2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="10" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="40" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="ILLEGAL_PROD2" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="4" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="10" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="ALLOY8" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="5" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="NAV_DATA_DROP" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
              </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Rare","GcRewardTableCategory.xml", "Medium","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"List",},
							--["SECTION_ACTIVE"] = {1,},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Rare","GcRewardTableCategory.xml", "Medium","GcRewardTableItemList.xml", "UseInventoryChoiceOverride","False",},
							["ADD_OPTION"] = "ADDafterLINE",
							["ADD"] = 
[[
              <Property name="List">
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="REPAIRKIT" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="2" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="100" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="GEODE_CRYSTAL" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="10" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="ALLOY8" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
                <Property value="GcRewardTableItem.xml">
                  <Property name="PercentageChance" value="20" />
                  <Property name="Reward" value="GcRewardSpecificProduct.xml">
                    <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                      <Property name="DefaultProductType" value="None" />
                    </Property>
                    <Property name="ID" value="NAV_DATA_DROP" />
                    <Property name="AmountMin" value="1" />
                    <Property name="AmountMax" value="1" />
                    <Property name="HideAmountInMessage" value="False" />
                    <Property name="ForceSpecialMessage" value="False" />
                    <Property name="HideInSeasonRewards" value="False" />
                    <Property name="Silent" value="False" />
                    <Property name="SeasonRewardListFormat" value="" />
                    <Property name="RequiresTech" value="" />
                  </Property>
                  <Property name="LabelID" value="" />
                </Property>
              </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "DEBRIS", "Rare","GcRewardTableCategory.xml", "Large","GcRewardTableItemList.xml",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ID", "TRA_ALLOY1"},
								{"AmountMin", "3"},									
								{"AmountMax", "10"},							
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\ENVIRONMENT\SELECTABLEOBJECTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_SMALLB_RARE.SCENE.MBIN", },
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="GcSelectableObjectData.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_SMALLB.SCENE.MBIN" />
        </Property>
        <Property value="GcSelectableObjectData.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_SMALLA.SCENE.MBIN" />
        </Property>
        <Property value="GcSelectableObjectData.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_SMALLA_RARE.SCENE.MBIN" />
        </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_SMALLA.SCENE.MBIN", },
							["SECTION_ACTIVE"] = {2,},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/BARREL/BARREL_MEDIUM.SCENE.MBIN", },
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="GcSelectableObjectData.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/BARREL/BARREL_MEDIUM_RARE.SCENE.MBIN" />
        </Property>
        <Property value="GcSelectableObjectData.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_MEDIUM_RARE.SCENE.MBIN" />
        </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_LARGE_RARE.SCENE.MBIN", },
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="GcSelectableObjectData.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_LARGE.SCENE.MBIN" />
        </Property>
]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CAVEEGG", },
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
    <Property value="GcSelectableObjectList.xml">
      <Property name="Name" value="CAVECUBE" />
      <Property name="Race" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="Options">
        <Property value="GcSelectableObjectData.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CAVE/METALCUBE.SCENE.MBIN" />
        </Property>
      </Property>
    </Property>
]]
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "VALUABLE_STUFF"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "550"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "WORDSTONE"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Active",      "False"},
								{"PatchSize",   "10000000"},
								{"RegionScale", "20"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRATES"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "610"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "DEBRIS"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "425"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FUELCRYSTAL"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "400"},
								{"RegionScale", "15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "UNDERGROUND"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "250"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "90"},
								{"RegionScale", "0.2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL2"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "250"},
								{"RegionScale", "0.15"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "CRYSTAL3"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "90"},
								{"RegionScale", "0.25"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RARE_BONES"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize", "275"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SCRAPHEAP"},
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PatchSize",   "685"},
								{"RegionScale", "1"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Placement", "CRYSTAL"},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {3, 4,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "10"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement", "FUELCRYSTAL"},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "20"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","WORDSTONE",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","WORDSTONE",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeDensity",    "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","CRATES",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0.02"},
								{"FlatDensity",     "0.05"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","CRATES",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0.002"},
								{"SlopeDensity",    "0.002"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0"},
								{"FlatDensity",     "0"},
								{"SlopeDensity",    "0"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0.02"},
								{"FlatDensity",     "0.05"},
								{"SlopeMultiplier", "0"},
								{"MaxRegionRadius", "0"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement","GRASSCLUMP",},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["SECTION_ACTIVE"] = {3,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage",        "0.01"},
								{"MaxRegionRadius", "0"},
							}
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\BARREN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZEN.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\LUSH.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\RADIOACTIVE.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SCORCHED.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TOXIC.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Placement", "BIOMEPLANT"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale", "0.7"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Placement", "BIOMEPLANT"},
							["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Coverage", "10"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinScale", "10"},
								{"MaxScale", "10"},
								{"Coverage", "0"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISWARRIOR\ENTITIES\DEBRIS_RARE.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Cost", "0"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\FIREBERRY.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Light1"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TransY", "100.99608"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\HEXABERRY.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "Light1"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TransY", "100.963524"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\IMPULSEBEANS.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FruitLight"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TransY", "103.14326"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\ALOEFLESH\FRUITGLOWMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/SCROLLGLOW2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = 
					{
						"MODELS\PLANETS\BIOMES\COMMON\COOKING\FIREBERRY\FIREPLANTGLOWMAT.MATERIAL.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\COOKING\FIREBERRY\FIREPLANTMAT.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/FIREBERRYPLANT2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\FIREFLIES\FIREFLIESMAT1.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/FIREFLY2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\FROZENTUBERS\GLOWSCROLLMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/SCROLLGLOW2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\HEXABERRY\FRUITGLOWMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/BERRYGLOW2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = 
					{
						"MODELS\PLANETS\BIOMES\COMMON\COOKING\HEXABERRY\HEXABERRYFLOATMAT.MATERIAL.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\COOKING\HEXABERRY\HEXABERRYORBMAT.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/HEXABERRYFRUIT2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\IMPULSEBEANS\IMPULSEGLOWMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"TkMaterialSampler.xml",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/IMPULSEGLOW2.DDS"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TkMaterialSampler.xml",},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/IMPULSEGLOW2.MASKS.DDS"},
							}
						},							
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\IMPULSEBEANS\IMPULSESCROLLGLOWMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/SCROLLGLOW2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\JADEPEAS\JADEPEASGLOWMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/JADEPEAS2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\JADEPEAS\JADEPEASMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"TkMaterialSampler.xml",},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/JADEPEAS2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\PULPYROOTS\COOKINGGLOWMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/SCROLLGLOW2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\COOKING\SWEETROOT\GLOWSCROLLMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Map", "TEXTURES/PLANETS/BIOMES/COMMON/COOKING/SCROLLGLOW2.DDS"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = 
					{
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\COMMODITYPLANT.SCENE.MBIN",
						"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\COMMODITYPLANT1.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ComPlantLight"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TransY", "100.8841"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FUELPLANT1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "FuelPlantLight"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TransY", "100.78158"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TECHPLANT1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "TechPlantLight"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"TransY", "100.00274"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\BARRENPLANT\TOXICPLANT_PLANTUNLIT_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4",},
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0.267228"},
								{"y", "0.6"},
								{"z", "0.266667"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gCustomParams01Vec4",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"y", "1"},
							}
						},						
					}
				},
				-- {
					-- ["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\LUSHPLANT\STARBULB_MAT.MATERIAL.MBIN",
					-- ["EXML_CHANGE_TABLE"] =
					-- {
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Name", "gCustomParams01Vec4",},
							-- ["INTEGER_TO_FLOAT"] = "FORCE",	
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"y", "1"},
							-- }
						-- },						
					-- }
				-- },
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\SCORCHEDPLANT\FRUITYELLOW_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gCustomParams01Vec4",},
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] = 
							{
								{"y", "0.2"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\SNOWPLANT\AIRCRYSTAL_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gCustomParams01Vec4",},
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] = 
							{
								{"y", "0.1"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\TOXICPLANT\PLANTUNLIT_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F34_GLOW", },
							["ADD_OPTION"] = "ADDafterSECTION",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gCustomParams01Vec4",},
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0"},
								{"y", "0"},
							}
						},						
					}
				},
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
		{
			["FILE_DESTINATION"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.EXML",
			["FILE_CONTENT"] = 	ADD_BLANK	
		},
	}
}