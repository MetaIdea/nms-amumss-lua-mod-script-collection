NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Xeno Arena Rewards - WORTH",
["MOD_AUTHOR"]      = "MurdockBerk",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "This mod aims to make rewards from winning Xeno Arena PVE battles worthwhile",
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
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "R_PB_PVE_STD_W",  "List", "GcRewardTableItem"},
                {"Id", "R_PB_TUT_W",      "List", "GcRewardTableItem"},
                {"Id", "R_PB_PVE_SYSC_W", "List", "GcRewardTableItem"},
                {"Id", "R_PB_PVE_SYSS_W", "List", "GcRewardTableItem"},
                {"Id", "R_PB_PVE_PLAC_W", "List", "GcRewardTableItem"},
                {"Id", "R_PB_PVE_EASY_W", "List", "GcRewardTableItem"},
                {"Id", "R_PB_PVE_EZ_NI",  "List", "GcRewardTableItem"},
                {"Id", "R_PB_PVE_HARD_W", "List", "GcRewardTableItem"},
                {"Id", "R_PB_D_NEXUS_W",  "List", "GcRewardTableItem"},
              },
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AmountMin", "@*10"},
                {"AmountMax", "@*10"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "R_PB_PVE_STD_W",  "List", "GcRewardTableItem"},
                {"Id", "R_PB_PVE_HARD_W", "List", "GcRewardTableItem"},
              },
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "15.000000"},
                {"AmountMax",        "@*3"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PB_PVE_SYSC_W", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ID", "CHART_PB_CHALNX"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PB_PVE_SYSC_W", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "75.000000"},
                {"AmountMax",        "@*5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PB_PVE_SYSS_W", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "40.000000"},
                {"AmountMax",        "@*3"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PB_PVE_PLAC_W", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "15.000000"},
                {"AmountMax",        "@*3"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PB_PVE_EASY_W"},
              ["PRECEDING_KEY_WORDS"] = {"ProductList"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
									<Property name="ProductList" value="CHART_PB_CHALNX" _index="1" />
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PB_D_NEXUS_W", "List", "GcRewardTableItem"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentageChance", "90.000000"},
                {"AmountMax",        "@*5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_PB_INV_CHALL"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
		<Property name="GameTableRewards" value="GcGenericRewardTableEntry" _id="R_PB_INV_CHALNX">
			<Property name="Id" value="R_PB_INV_CHALNX" />
			<Property name="List" value="GcRewardTableItemList">
				<Property name="RewardChoice" value="GiveAll" />
				<Property name="OverrideZeroSeed" value="false" />
				<Property name="UseInventoryChoiceOverride" value="false" />
				<Property name="IncrementStat" value="" />
				<Property name="List">
					<Property name="List" value="GcRewardTableItem" _index="0">
						<Property name="PercentageChance" value="100.000000" />
						<Property name="LabelID" value="" />
						<Property name="Reward" value="GcRewardMissionSeeded">
							<Property name="GcRewardMissionSeeded">
								<Property name="Mission" value="PB_CHAL_INV_NXT" />
								<Property name="MissionNoGroundCombat" value="" />
								<Property name="MissionNoSpaceCombat" value="" />
								<Property name="InheritActiveMultiplayerMissionSeed" value="false" />
								<Property name="SelectMissionAsLocalMissionBoard" value="false" />
								<Property name="ForceUseConversationSeed" value="false" />
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
  }
}