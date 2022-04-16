local TEXT_TO_ADD =
  [[
  <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="6" />
    <Property name="Reward" value="GcRewardScanEvent.xml">
      <Property name="Event" value="OBSERVATORY" />
      <Property name="ScanEventTable" value="Planet" />
      <Property name="DoAerialScan" value="True" />
      <Property name="UseMissionSeedForEvent" value="False" />
    </Property>
    <Property name="LabelID" value="Observatory" />
  </Property>
  <Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="6" />
    <Property name="Reward" value="GcRewardScanEvent.xml">
      <Property name="Event" value="ABANDONED" />
      <Property name="ScanEventTable" value="Planet" />
      <Property name="DoAerialScan" value="True" />
      <Property name="UseMissionSeedForEvent" value="False" />
    </Property>
    <Property name="LabelID" value="Abandoned" />
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"] = "SensiblePlanetaryCharts_MS.pak",
  ["MOD_DESCRIPTION"] = [[ 
      Adjusts Planetary Charts to not find Observatories and Abandoned Buildings with Ancient Artifact Site charts instead of Distress Signal charts.
  ]],
  ["MOD_AUTHOR"] = "Bladehawke",
  ["NMS_VERSION"] = "2.42", -- oldest version I'm sure it'll work on
  ["MODIFICATIONS"] = {
    {
      ["MBIN_CHANGE_TABLE"] = {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] = {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Abandoned"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Distress"},
              ["VALUE_CHANGE_TABLE"] = {{"PercentageChance", "6"}}
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Crashed Freighter"},
              ["VALUE_CHANGE_TABLE"] = {{"PercentageChance", "8"}}
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_B", "LabelID", "Observatory"},
              ["VALUE_CHANGE_TABLE"] = {{"Event", "RADIOTOWER"}, {"LabelID", "RadioTower"}}
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_D", "LabelID", "Ruin"},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["ADD"] = TEXT_TO_ADD
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_C", "LabelID", "Shelter"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_C", "LabelID", "Outpost"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_C", "LabelID", "RadioTower"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_C", "LabelID", "Observatory"},
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "R_STARCHART_C", "LabelID", "Shop"},
              ["VALUE_CHANGE_TABLE"] = {{"PercentageChance", "100"}}
            }
          }
        }
      }
    }
  }
}
