NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Space Eggs Remixed",
["MOD_AUTHOR"]      = "Raevyxn",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Shooting space eggs now has a chance to drop Spawning Sacs and Psychonic Eggs",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "DE_SPACE_EGG", "List", "GcRewardTableItemList"},
              ["PRECEDING_KEY_WORDS"] = {"List"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
          <Property name="List" value="GcRewardTableItem" _index="6">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="ALIEN_INV_TOKEN" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem" _index="7">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="ALIEN_TECHBOX" />
                <Property name="AmountMin" value="1" />
                <Property name="AmountMax" value="1" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>
]]
            },
          }
        },
      }
    },
  }
}