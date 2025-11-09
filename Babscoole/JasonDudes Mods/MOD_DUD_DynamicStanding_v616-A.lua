function  ALL_TRADE (Guild, PC)
    return
[[
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..PC..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding">
              <Property name="GcRewardFactionStanding">
                <Property name="Faction" value="GcMissionFaction">
                  <Property name="MissionFaction" value="]]..Guild..[[" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="SetToMinBeforeAdd" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..PC..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding">
              <Property name="GcRewardStanding">
                <Property name="Race" value="GcAlienRace">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="UseExpeditionEventSystemRace" value="false" />
              </Property>
            </Property>
          </Property>
]]
end

function  FACTIONREWARD (Guild, PC)
    return
[[
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..PC..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding">
              <Property name="GcRewardFactionStanding">
                <Property name="Faction" value="GcMissionFaction">
                  <Property name="MissionFaction" value="]]..Guild..[[" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-1" />
                <Property name="SetToMinBeforeAdd" value="false" />
              </Property>
            </Property>
          </Property>
]]
end

function  STANDINGREWARD (PC)
    return
[[
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..PC..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding">
              <Property name="GcRewardStanding">
                <Property name="Race" value="GcAlienRace">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-1" />
                <Property name="UseExpeditionEventSystemRace" value="false" />
              </Property>
            </Property>
          </Property>
]]
end

function  ALL_STAND (PC)
    return
[[
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..PC..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding">
              <Property name="GcRewardStanding">
                <Property name="Race" value="GcAlienRace">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="UseExpeditionEventSystemRace" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="]]..PC..[[" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding">
              <Property name="GcRewardStanding">
                <Property name="Race" value="GcAlienRace">
                  <Property name="AlienRace" value="None" />
                </Property>
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="UseExpeditionEventSystemRace" value="false" />
              </Property>
            </Property>
          </Property>
]]
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MOD_DUD_DynamicStanding_v616-A",
["MOD_AUTHOR"]      = "JasonDude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.16",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTER_SAVED", "List", "GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = 1, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_REP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BATTLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BATTLE", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = FACTIONREWARD ("Pirates", "100.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_FIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_FIGHT", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = FACTIONREWARD ("Pirates", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY1", "List", "GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = 1, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = FACTIONREWARD ("Pirates", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY2", "List", "GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = 1, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1"},
                                {"AmountMax", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = FACTIONREWARD ("Pirates", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY3", "List", "GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = 1, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                                {"AmountMax", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_BOUNTY3", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = FACTIONREWARD ("Pirates", "100.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DEFEND_RAID", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = FACTIONREWARD ("Pirates", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_POLICE_FIGHT", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = STANDINGREWARD ("50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_PIRATE", "List", "GcRewardTableItem"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_CREW_GUILD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_CAPT_GUILD", "List", "GcRewardTableItem"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "KILLED_CIV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-2"},
                                {"AmountMax", "-5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DE_SPACE_POI_1", "List", "GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                                {"AmountMax", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "SEC_STDHIGH_WAR", "List", "GcRewardTableItem"},
                                {"Id", "SEC_STDHIGH_TRA", "List", "GcRewardTableItem"},
                                {"Id", "SEC_STDHIGH_EXP", "List", "GcRewardTableItem"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_GUILD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5"},
                                {"AmountMax", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_HIGH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MB_STAND_MED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTER_SAVED", "List", "GcRewardTableItem"},
                            ["SECTION_ACTIVE"] = 1, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "RS_S1_S2M6", "List", "GcRewardTableItem"},
                                {"Id", "RS_S2_S4M5", "List", "GcRewardTableItem"},
                                {"Id", "RS_S3_S4M5", "List", "GcRewardTableItem"},
                            },
                            ["SECTION_ACTIVE"] = 1, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5"},
                                {"AmountMax", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "RS_S6_PARTY1", "List", "GcRewardTableItem"},
                                {"Id", "RS_S6_PARTY5", "List", "GcRewardTableItem"},
                                {"Id", "RS_S6_S3M3",   "List", "GcRewardTableItem"},
                            },
                            ["SECTION_ACTIVE"] = 1, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "8"},
                                {"AmountMax", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "RS_S2_S4M1", "List", "GcRewardTableItem"},
                                {"Id", "RS_S5_S1M3", "List", "GcRewardTableItem"},
                            },
                            ["SECTION_ACTIVE"] = 2, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5"},
                                {"AmountMax", "5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIPLOMATIC_3", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("WarriorGuild", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("WarriorGuild", "20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COMBAT_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("WarriorGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXPLORATION_3", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINING_3", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_DIP_EASY_3", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("TradeGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("WarriorGuild", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("WarriorGuild", "20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_COM_EASY_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("WarriorGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_EXP_EASY_3", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_TRADE ("ExplorerGuild", "10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_0", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("50.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_1", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("20.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_2", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("10.000000")
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MINE_EASY_3", "List", "GcRewardTableItemList"},
                            ["PRECEDING_KEY_WORDS"] = {"List"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = ALL_STAND ("10.000000")
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\RECURRINGMISSIONTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_AF_DAILY_SET", "List", "GcRewardTableItem"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property name="List" value="GcRewardTableItem" _index="1">
            <Property name="PercentageChance" value="25.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding">
              <Property name="GcRewardStanding">
                <Property name="Race" value="GcAlienRace">
                  <Property name="AlienRace" value="Explorers" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-2" />
                <Property name="UseExpeditionEventSystemRace" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="2">
            <Property name="PercentageChance" value="25.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding">
              <Property name="GcRewardStanding">
                <Property name="Race" value="GcAlienRace">
                  <Property name="AlienRace" value="Traders" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-2" />
                <Property name="UseExpeditionEventSystemRace" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="3">
            <Property name="PercentageChance" value="25.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardStanding">
              <Property name="GcRewardStanding">
                <Property name="Race" value="GcAlienRace">
                  <Property name="AlienRace" value="Warriors" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-2" />
                <Property name="UseExpeditionEventSystemRace" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="4">
            <Property name="PercentageChance" value="25.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding">
              <Property name="GcRewardFactionStanding">
                <Property name="Faction" value="GcMissionFaction">
                  <Property name="MissionFaction" value="ExplorerGuild" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-1" />
                <Property name="SetToMinBeforeAdd" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="5">
            <Property name="PercentageChance" value="25.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding">
              <Property name="GcRewardFactionStanding">
                <Property name="Faction" value="GcMissionFaction">
                  <Property name="MissionFaction" value="TradeGuild" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-1" />
                <Property name="SetToMinBeforeAdd" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="6">
            <Property name="PercentageChance" value="25.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardFactionStanding">
              <Property name="GcRewardFactionStanding">
                <Property name="Faction" value="GcMissionFaction">
                  <Property name="MissionFaction" value="WarriorGuild" />
                </Property>
                <Property name="AmountMin" value="-1" />
                <Property name="AmountMax" value="-1" />
                <Property name="SetToMinBeforeAdd" value="false" />
              </Property>
            </Property>
          </Property>
							<Property name="List" value="GcRewardTableItem" _index="7">
								<Property name="PercentageChance" value="50.000000" />
								<Property name="LabelID" value="" />
								<Property name="Reward" value="GcRewardStanding">
									<Property name="GcRewardStanding">
										<Property name="Race" value="GcAlienRace">
											<Property name="AlienRace" value="None" />
										</Property>
										<Property name="AmountMin" value="1" />
										<Property name="AmountMax" value="2" />
										<Property name="UseExpeditionEventSystemRace" value="false" />
									</Property>
								</Property>
							</Property>
]]
                        },
                    },
                },
            },
        },
    },
}