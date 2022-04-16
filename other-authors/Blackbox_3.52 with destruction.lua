SOUND =
[[
  	<Property value="GcAudioAreaTriggerComponentData.xml">
      <Property name="EventEnter" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
      </Property>
      <Property name="EventExit" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="NOTIFY_BASEOUTRANGE" />
      </Property>
      <Property name="EnterDistance" value="3999" />
      <Property name="ExitDistance" value="3999" />
    </Property>
]]

ICON =
[[
    <Property value="GcScannableComponentData.xml">
      <Property name="ScanRange" value="0" />
      <Property name="ScanName" value="SIGNAL_DISTRESS" />
      <Property name="ScanTime" value="60" />
      <Property name="CompassRangeMultiplier" value="1" />
      <Property name="AlwaysShowRange" value="3999" />
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
        <Property value="GcShootableComponentData.xml">
      <Property name="Health" value="2500" />
      <Property name="AutoAimTarget" value="False" />
      <Property name="PlayerOnly" value="False" />
      <Property name="ImpactShake" value="True" />
      <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
      <Property name="ForceImpactType" value="GcProjectileImpactType.xml">
        <Property name="Impact" value="Default" />
      </Property>
      <Property name="IncreaseWanted" value="0" />
      <Property name="IncreaseWantedThresholdTime" value="0.5" />
      <Property name="FiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="FiendCrimeModifier" value="1" />
      <Property name="RepairTime" value="8" />
      <Property name="MinDamage" value="0" />
      <Property name="StaticUntilShot" value="False" />
      <Property name="IgnoreHitPush" value="True" />
      <Property name="HitEffectEnabled" value="False" />
      <Property name="HitEffectEntireModel" value="False" />
      <Property name="IsArmoured" value="False" />
      <Property name="IgnoreTerrainEditKill" value="False" />
      <Property name="NameOverride" value="" />
      <Property name="RequiredTech" value="" />
      <Property name="DamageMultiplier" value="" />
    </Property>
    <Property value="GcDestructableComponentData.xml">
      <Property name="Explosion" value="ROCKEXPLODE" />
      <Property name="ExplosionScale" value="1" />
      <Property name="ExplosionScaleToBounds" value="False" />
      <Property name="VehicleDestroyEffect" value="VEHICLECRASH" /> 
      <Property name="TriggerAction" value="" />
      <Property name="IncreaseWanted" value="0" />
      <Property name="IncreaseFiendWanted" value="False" />
      <Property name="NotifyEncounter" value="False" />
      <Property name="LootReward" value="" />
      <Property name="LootRewardAmountMin" value="50" />
      <Property name="LootRewardAmountMax" value="50" />
      <Property name="GivesSubstances" />
      <Property name="GivesReward" value="R_NEXUS_CASH" />
      <Property name="HideReward" value="False" />
      <Property name="OverrideRewardLoc" value="" />
      <Property name="HardModeSubstanceMultiplier" value="1" />
      <Property name="RewardOverrideTable" />
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="UseSystemColorsForTexture" value="False" />
      <Property name="RemoveModel" value="True" />
      <Property name="HideModel" value="False" />
       <Property name="RarityLocators">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
    </Property>
]]

-- <Property name="StatsToTrack" value="GcStatsEnum.xml">
        -- <Property name="Stat" value="None" />
      -- </Property> 
      -- 
      --
  
      -- <Property name="DestroyedModel" value="TkTextureResource.xml">
        -- <Property name="Filename" value="" />
     

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "Blackbox.pak",
  ["MOD_AUTHOR"] = "NeuroHunter with huge help from Kiiritsugu and Lowkie",
  ["MOD_DESCRIPTION"] = "Blackbox have an icon",
  [[
  ]],
  ["NMS_VERSION"] = "3.52",
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
