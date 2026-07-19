NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Unlock All Titles",
["MOD_AUTHOR"]      = "DY230",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.23",
["MOD_DESCRIPTION"] = "Unlock all titles by Station Core menu",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\PLAYERDATA\PLAYERTITLEDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RevealedBy",          ""},
                {"UnlockedByMission",   ""},
                {"UnlockedByStat",      ""},
                {"UnlockedByStatValue", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "T_EXPD22"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RevealedBy", "T_EXPD22"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "T_PB_WINS1"},
                {"ID", "T_PB_WINS2"},
                {"ID", "T_PB_WINS3"},
                {"ID", "T_PB_WINS4"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UnlockedByStat", "PB_WINS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "T_PB_BOSSES1"},
                {"ID", "T_PB_BOSSES2"},
                {"ID", "T_PB_BOSSES3"},
                {"ID", "T_PB_BOSSES4"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UnlockedByStat", "PB_BOSS_WINS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "T_PB_EGGS1"},
                {"ID", "T_PB_EGGS2"},
                {"ID", "T_PB_EGGS3"},
                {"ID", "T_PB_EGGS4"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UnlockedByStat", "EGGS_HATCHED"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "T_MAX_PETS1"},
                {"ID", "T_MAX_PETS2"},
                {"ID", "T_MAX_PETS3"},
                {"ID", "T_MAX_PETS4"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UnlockedByStat", "PB_PETS_MAXED"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "T_PB_D_NEXUS1"},
                {"ID", "T_PB_D_NEXUS2"},
                {"ID", "T_PB_D_NEXUS3"},
                {"ID", "T_PB_D_NEXUS4"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UnlockedByStat", "PB_D_NEXUS"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STATION_CORE", "Name", "ALL_REQUEST_LEAVE"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "STATION_CORE_DAMAGE", "Name", "ALL_REQUEST_LEAVE"},
                {"Id", "STATION_CORE_PIRATE", "Name", "ALL_REQUEST_LEAVE"},
              },
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "STATION_CORE",        "Name", "UI_STATION_CORE_ROBOT2_OPT"},
                {"Id", "STATION_CORE_DAMAGE", "Name", "UI_SPACE_STATION_CORE_DAM_OPT"},
                {"Id", "STATION_CORE_PIRATE", "Name", "UI_PIRATE_CORE_OPT"},
              },
              ["ADD_OPTION"] = "ADDafterSECTION",  
              ["ADD"] =
[[
				<Property name="Options" value="GcAlienPuzzleOption">
					<Property name="Name" value="UI_ULAT" />
					<Property name="Text" value="" />
					<Property name="IsAlien" value="false" />
					<Property name="ResponseLanguageOverride" value="GcAlienRace">
						<Property name="AlienRace" value="None" />
					</Property>
					<Property name="Cost" value="" />
					<Property name="Rewards">
						<Property name="Rewards" value="RW_ULAT" />
					</Property>
					<Property name="Mood" value="GcAlienMood">
						<Property name="Mood" value="Neutral" />
					</Property>
					<Property name="Prop" value="GcNPCPropType">
						<Property name="NPCProp" value="DontCare" />
					</Property>
					<Property name="OverrideWithAlienWord" value="false" />
					<Property name="AlienWordSpecificRace" value="GcAlienRace">
						<Property name="AlienRace" value="None" />
					</Property>
					<Property name="ReseedInteractionOnUse" value="false" />
					<Property name="KeepOpen" value="false" />
					<Property name="DisplayCost" value="false" />
					<Property name="TruncateCost" value="false" />
					<Property name="MarkInteractionComplete" value="false" />
					<Property name="NextInteraction" value="" />
					<Property name="SelectedOnBackOut" value="false" />
					<Property name="AudioEvent" value="GcAudioWwiseEvents">
						<Property name="AkEvent" value="INVALID_EVENT" />
					</Property>
					<Property name="TitleOverride" value="" />
					<Property name="SkipStraightToOptionsOnNextPuzzle" value="false" />
					<Property name="DisablingConditionTest" value="GcMissionConditionTest">
						<Property name="ConditionTest" value="AnyFalse" />
					</Property>
					<Property name="DisablingConditions" />
					<Property name="DisablingConditionId" value="" />
					<Property name="WordCategory" value="GcWordCategoryTableEnum">
						<Property name="wordcategorytableEnum" value="MISC" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STATION_CORE", "Name", "UI_ULAT"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "STATION_CORE_DAMAGE", "Name", "UI_ULAT"},
                {"Id", "STATION_CORE_PIRATE", "Name", "UI_ULAT"},
              },
              ["EXML_INDEX"] = "1",
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
              ["ADD_OPTION"] = "ADDendSECTION",  
              ["ADD"] =
[[
		<Property name="GenericTable" value="GcGenericRewardTableEntry" _id="RW_ULAT">
			<Property name="Id" value="RW_ULAT" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="true" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="true" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="true" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="true" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="true" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUI9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_GUILD9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_GUILD9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_GUILD9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_REALITY10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_HUB_VISIT" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_LORE10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ABANDLORE1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ABANDLORE2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ABANDLORE3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ABANDLORE4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_OLD" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BLACK_HOL" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_NADAPOLO" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ARTEMIS" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ATLASPATH" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ATLASDENY" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_NO_RESET" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RESET" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PURPM" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PORTAL" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WEEKEND" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_GIFT" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_GOAL" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_CENTRE_SURV" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_CENTRE_PERMA" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TRA_LORE" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXP_LORE" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_LORE1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WAR_LORE2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_CRASHED_SHIP" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_TELAMON" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_CHEF" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_WALK1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_WALK2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_WALK3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_CHAT1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_CHAT2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_CHAT3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_WORD1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_WORD2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_WORD3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_UNITS1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_UNITS2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_UNITS3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_SHIPS1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_SHIPS2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_SHIPS3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FIGHT1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FIGHT2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FIGHT3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_SURVIVE1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_SURVIVE2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_SURVIVE3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_EXPLORE1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_EXPLORE2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_EXPLORE3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_ZOO1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_ZOO2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_ZOO3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FARM1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FARM2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_RARESCAN1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_RARESCAN2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_RARESCAN3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_MINSCAN1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_MINSCAN2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FLORASCAN1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FLORASCAN2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JM_FLORASCAN3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PET1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PET2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PET3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUILDER1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUILDER2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUILDER3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FLEET1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FLEET2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FLEET3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BONES1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BONES2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BONES3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BONES4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BONES5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BONES6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DIG1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DIG2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DIG3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SALVAGE1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SALVAGE2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SALVAGE3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHIP_SCI" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHIP_FIGHT" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHIP_DROP" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHIP_SHUTTLE" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHIP_EXOTIC" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MECH" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHIP_ALIEN" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ABYSS" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP11" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP12" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP13" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP14" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP15" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP16" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP17" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP18" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP19" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP20" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP21" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP22" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP23" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP24" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP25" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP26" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP27" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP28" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP29" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SHOP30" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD2A" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD2B" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD11" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD12" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD13" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD14" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD15" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD16" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD17" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD18" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD19" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD20" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXPD21" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUGHUNT1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUGHUNT2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUGHUNT3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BUGHUNT4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_JELLYBOSS" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FISHCASH" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FISHING1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FISHFREE" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FISHLEGEND" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_FISHBOOT" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DEATH11" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_WATCHED" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SPOOKY1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_SPOOKY2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MAYOR" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_DRONEFRIEND" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_HIVELORE" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PIRATEMISS" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PIRATE_BETRAY" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PIRATE_HIDE" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_PPROD_5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_PPROD_7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_FIENDS_7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_FIENDS_9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_FLORA_4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_FLORA_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_NANITES_6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_NANITES_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_SMUGGLE_7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_SMUGGLE_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_WALKERS_4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_WALKERS_5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_WALKERS_7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_WARPS_1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_WARPS_9" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_WORDS_4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_WORDS_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_MISSION_2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_MISSION_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_PLANTS_1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_PLANTS_4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_PLANTS_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_SCANNER_5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_SCANNER_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_ENEMIES_6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_ENEMIES_10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_SENT_6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_SENT_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_SENT_10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_DIST_4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_DIST_10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_MONEY_6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_MONEY_10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_LIFE_EX_8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_MS_LIFE_EX_10" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_CORRUPT_SENT1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_CORRUPT_SENT2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ROBOMISS1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ROBOMISS2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_ROBOMISS3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PIR_STAND1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PIR_STAND2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PIR_STAND3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_PIR_STAND4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BOUNTY1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_BOUNTY2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RAIDER1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RAIDER2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RAIDER3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RAIDER4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE1" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE2" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE3" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE4" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE5" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE6" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE7" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_RECYCLE8" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
					<Property name="List" value="GcRewardTableItem">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardUnlockTitle">
							<Property name="GcRewardUnlockTitle">
								<Property name="TitleID" value="T_EXO_KILL" />
								<Property name="NoMusic" value="true" />
								<Property name="ShowEvenIfAlreadyUnlocked" value="false" />
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>
		</Property>
]]
            },
          }
        },
      }
    }
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "LocTable.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
	<Property name="Table">
		<Property name="Table" value="TkLocalisationEntry" _id="UI_ULAT">
			<Property name="Id" value="UI_ULAT" />
			<Property name="BrazilianPortuguese" value="Unlock All Titles" />
			<Property name="Dutch" value="Unlock All Titles" />
			<Property name="English" value="Unlock All Titles" />
			<Property name="French" value="Unlock All Titles" />
			<Property name="German" value="Unlock All Titles" />
			<Property name="Italian" value="Unlock All Titles" />
			<Property name="Japanese" value="Unlock All Titles" />
			<Property name="Korean" value="Unlock All Titles" />
			<Property name="LatinAmericanSpanish" value="Unlock All Titles" />
			<Property name="Polish" value="Unlock All Titles" />
			<Property name="Portuguese" value="Unlock All Titles" />
			<Property name="Russian" value="Unlock All Titles" />
			<Property name="SimplifiedChinese" value="解锁全头衔" />
			<Property name="Spanish" value="Unlock All Titles" />
			<Property name="TencentChinese" value="Unlock All Titles" />
			<Property name="TraditionalChinese" value="解鎖全頭銜" />
			<Property name="USEnglish" value="Unlock All Titles" />
		</Property>
	</Property>
</Data>
]]
    },
  }
}
