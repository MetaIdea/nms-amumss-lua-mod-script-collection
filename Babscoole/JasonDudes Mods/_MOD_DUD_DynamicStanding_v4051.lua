NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_MOD_DUD_DynamicStanding_v4051.pak",
["MOD_AUTHOR"]      = "JasonDude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.05",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BATTLE",},
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"AmountMin", "2",},
                                {"AmountMax", "3",},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FIGHT",},
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"AmountMin", "1",},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY1",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"AmountMax", "2",},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY2",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "2",},
                                {"AmountMax", "3",},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BOUNTY3",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml","GcRewardTableItem.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "3",},
                                {"AmountMax", "4",},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","KILLED_CIV",},
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"AmountMax", "-3",},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","DE_SPACE_POI_1",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["SECTION_ACTIVE"] = {4,},
                            ["VALUE_CHANGE_TABLE"] = 
							{
								{"AmountMin", "1",},
							}
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_STDHIGH_WAR",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_STDHIGH_TRA",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Warriors" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Explorers" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEC_STDHIGH_EXP",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Warriors" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="50" />
            <Property name="Reward" value="GcRewardStanding.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Traders" />
              </Property>
              <Property name="AmountMin" value="-1" />
              <Property name="AmountMax" value="-1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
						},
                    }
                },
				{
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\RECURRINGMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
					{
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id","R_AF_DAILY_SET",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="50" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Explorers" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="50" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Traders" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="50" />
                <Property name="Reward" value="GcRewardStanding.xml">
                  <Property name="Race" value="GcAlienRace.xml">
                    <Property name="AlienRace" value="Warriors" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="15" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="ExplorerGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="15" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="TradeGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="15" />
                <Property name="Reward" value="GcRewardFactionStanding.xml">
                  <Property name="Faction" value="GcMissionFaction.xml">
                    <Property name="MissionFaction" value="WarriorGuild" />
                  </Property>
                  <Property name="AmountMin" value="-1" />
                  <Property name="AmountMax" value="-1" />
                  <Property name="SetToMinBeforeAdd" value="False" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
]]
						},
                    }
                },
            }
        },
    }
}