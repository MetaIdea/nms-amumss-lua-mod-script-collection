SOUND =
[[
  	<Property value="GcAudioAreaTriggerComponentData.xml">
      <Property name="EventEnter" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
      </Property>
      <Property name="EventExit" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
      </Property>
      <Property name="EnterDistance" value="1900" />
      <Property name="ExitDistance" value="1900" />
    </Property>
]]

ICON =
[[
    <Property value="GcScannableComponentData.xml">
      <Property name="ScanRange" value="0" />
      <Property name="ScanName" value="SIGNAL_DISTRESS" />
      <Property name="ScanTime" value="60" />
      <Property name="CompassRangeMultiplier" value="1" />
      <Property name="AlwaysShowRange" value="1900" />
      <Property name="CanTagIcon" value="True" />
      <Property name="ClearTagOnArrival" value="True" />
      <Property name="DisableIfBuildingPart" value="False" />
      <Property name="DisableIfInBase" value="False" />
      <Property name="UseModelNode" value="False" />
      <Property name="Icon" value="GcScannerIconTypes.xml">
        <Property name="ScanIconType" value="HazardPlant" />
      </Property>
      <Property name="ScannableType" value="Binoculars" />
      <Property name="IsPlacedMarker" value="False" />
      <Property name="ShowInFreighterBranchRoom" value="False" />
      <Property name="TellPlayerIfFreighterObjectUsed" value="False" />
      <Property name="FreighterObjectAlreadyUsedLocID" value="" />
      <Property name="AllowedToMerge" value="False" />
      <Property name="MissionSurveyId" value="" />
    </Property>
]]

     

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "Blackbox.pak",
  ["MOD_AUTHOR"] = "NeuroHunter with huge help from Kiiritsugu",
  ["MOD_DESCRIPTION"] = "Blackbox have an icon",
  [[
  ]],
  ["NMS_VERSION"] = "3.15",
  ["MODIFICATIONS"] =
  {
    {
      ["PAK_FILE_SOURCE"] = "",
      ["MBIN_CHANGE_TABLE"] =
      {

        {--Add New Text
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\PARTS\BLACKBOX\ENTITIES\BLACKBOX.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	= {"EncounterType","CorruptedDroneReward"},
              ["LINE_OFFSET"] = "+0",
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["VALUE_CHANGE_TABLE"] ={{"IGNORE", "IGNORE"}},
              ["ADD"] = SOUND
            }
          }
        },
        {--Add New Text
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\PARTS\BLACKBOX\ENTITIES\BLACKBOX.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	= {"InteractionRequiresPower","False"},
              ["LINE_OFFSET"] = "+0",
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["VALUE_CHANGE_TABLE"] ={{"IGNORE", "IGNORE"}},
              ["ADD"] = ICON
            }
          }
        }, 
      }
    }
  }
}
