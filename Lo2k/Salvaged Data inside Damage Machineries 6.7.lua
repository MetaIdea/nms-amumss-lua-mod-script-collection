NMS_MOD_DEFINITION_CONTAINER =
{
MOD_FILENAME      = "Salvaged Data inside Damage Machineries 6.7",
MOD_AUTHOR        = "Lo2k",
LUA_AUTHOR        = "Lo2k",
NMS_VERSION       = "7.00",
MOD_DESCRIPTION   = "This mod place salvaged blueprints directly into damaged machineries",
MODIFICATIONS     =
  {
    {
      MBIN_CHANGE_TABLE =
      {
        {
          MBIN_FILE_SOURCE  = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
          EXML_CHANGE_TABLE =
          {
            {
              SPECIAL_KEY_WORDS = {"Id", "TECHDEBRIS"},
              VALUE_CHANGE_TABLE =
              {
                {"RewardChoice",  "GiveAll"},
              },
            },
            {
              SPECIAL_KEY_WORDS = {"Id", "TECHDEBRIS", "Currency", "Nanites"},
              SECTION_UP = 2,
              REPLACE_TYPE = "ADDAFTERSECTION",
              ADD = [[
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificProduct">
              <Property name="GcRewardSpecificProduct">
                <Property name="Default" value="GcDefaultMissionProductEnum">
                  <Property name="DefaultProductType" value="None" />
                </Property>
                <Property name="ID" value="BP_SALVAGE" />
                <Property name="AmountMin" value="2" />
                <Property name="AmountMax" value="4" />
                <Property name="HideAmountInMessage" value="false" />
                <Property name="ForceSpecialMessage" value="false" />
                <Property name="HideInSeasonRewards" value="false" />
                <Property name="Silent" value="false" />
                <Property name="SeasonRewardListFormat" value="" />
                <Property name="RequiresTech" value="" />
              </Property>
            </Property>
          </Property>]],
            },
          },
        }
      }
    }
  }
}

