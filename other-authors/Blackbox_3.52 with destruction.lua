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
      <Property name="MinDisplayDistanceOverride" value="-1" />
    </Property>
    <Property value="GcShootableComponentData.xml">
      <Property name="Health" value="2500" />
      <Property name="AutoAimTarget" value="False" />
      <Property name="PlayerOnly" value="False" />
      <Property name="IgnorePlayer" value="False" />
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
      <Property name="CouldCountAsArmourForParent" value="False" />
      <Property name="IgnoreTerrainEditKills" value="False" />
      <Property name="NameOverride" value="" />
      <Property name="RequiredTech" value="" />
      <Property name="DamageMultiplier" value="" />
      <Property name="IsPiercable" value="False" />
      <Property name="IsAffectedByPiercing" value="False" />
    </Property>
    <Property value="GcDestructableComponentData.xml">
      <Property name="Explosion" value="ROCKEXPLODE" />
      <Property name="ExplosionScale" value="1" />
      <Property name="ExplosionScaleToBounds" value="False" />
      <Property name="OnlyExplodeSelf" value="False" />
      <Property name="VehicleDestroyEffect" value="VEHICLECRASH" />
      <Property name="TriggerAction" value="" />
      <Property name="IncreaseWanted" value="0" />
      <Property name="IncreaseFiendWanted" value="False" />
      <Property name="IncreaseFiendWantedChance" value="1" />
      <Property name="NotifyEncounter" value="False" />
      <Property name="LootReward" value="" />
      <Property name="LootRewardAmountMin" value="50" />
      <Property name="LootRewardAmountMax" value="50" />
      <Property name="CanDestroyFromStoredInteraction" value="False" />
      <Property name="GivesSubstances" />
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="GcStatEnum" value="None" />
      </Property>
      <Property name="GivesReward" value="" />
      <Property name="PirateSystemAltReward" value="" />
      <Property name="RewardIfDestroyedByOther" value="False" />
      <Property name="HideReward" value="False" />
      <Property name="OverrideRewardLoc" value="" />
      <Property name="HardModeSubstanceMultiplier" value="1" />
      <Property name="RewardOverrideTable" />
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="RarityLocators">
        <Property name="Common" value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property name="Uncommon" value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property name="Rare" value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
      <Property name="UseSystemColorsForTexture" value="False" />
      <Property name="RemoveModel" value="True" />
      <Property name="HideModel" value="False" />
      <Property name="DestroyedModel" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="DestroyedModelUsesScale" value="True" />
      <Property name="DestroyedModelCollidesWithEverything" value="False" />
      <Property name="DestroyForce" value="10" />
      <Property name="DestroyForceRadius" value="50" />
      <Property name="DestroyEffect" value="" />
      <Property name="DestroyEffectOnSurface" value="False" />
      <Property name="DestroyEffectPoint" value="SFX" />
      <Property name="DestroyEffectTime" value="2" />
      <Property name="DestroyEffectMatrices" value="False" />
      <Property name="AreaDamage" value="" />
      <Property name="ShowInteract" value="True" />
      <Property name="HideInteractWhenAllArmourDestroyed" value="False" />
      <Property name="ShowInteractRange" value="8" />
      <Property name="GrenadeSingleHit" value="True" />
      <Property name="LootItems" />
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
  ["LUA_AUTHOR"] = "Updated for 3.93 by Lenni, Babscoole, Lo2k, and Gumsk",
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
              ["PRECEDING_KEY_WORDS"]	= {"Components"},
              -- ["LINE_OFFSET"] = "+0",
              -- ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              -- ["VALUE_CHANGE_TABLE"] ={{"IGNORE", "IGNORE"}},
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
