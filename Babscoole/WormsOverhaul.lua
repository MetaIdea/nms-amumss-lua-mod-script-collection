NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Sandworms_Overhaul.pak",
["MOD_AUTHOR"]    = "Redmas",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",            "80"},     -- Original "50"
                                {"MaxScale",            "100"},    -- Original "50"
                                {"MoveRange",           "10000"},
                                {"TurnRadiusScale",     "10"},        -- Original "1"
                                {"HeightMin",           "-100"},   -- Original "45"
                                {"SwarmMovementSpeed",  "1"},      -- Original "90"
                                {"SwarmMovementRadius", "1000"},   -- Original "100"
                                {"SwarmMovementType",   "Circle"}, -- Original "FollowPlayer"
                                {"MaxSpeed",            "70"},    -- Original "80"
                                {"CircleAttractor",     "Player"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
                            ["PRECEDING_KEY_WORDS"] = {"PredatorProbabilityModifier"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRoleFrequencyModifier", "Never"}, -- Original "Normal"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
                            ["PRECEDING_KEY_WORDS"] = {"HerbivoreProbabilityModifier"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRoleFrequencyModifier", "High"}, -- Original "Normal"
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"SandWormChangeDirectionTime", "0.001"},  -- Original "1"
                                {"SandWormSteerAdjustTime",     "0.2"},    -- Original "2"
                                {"SandWormMaxSteer",            "10"},     -- Original "0.3"
                                {"SandWormMaxHeightAdjust",     "380"},     -- Original "1"
                                {"SandWormJumpHeight",          "3"},     -- Original "120"
                                {"SandWormJumpTime",            "0.0001"}, -- Original "3"
                                {"SandWormSubmergeDepth",       "1"},      -- Original "100"
                                {"SandWormSubmergeTime",        "1"},      -- Original "3"
                                {"SandWormSurfaceTime",         "3"},      -- Original "1"
                                {"SandWormMaxJumps",            "1500"},   -- Original "5"
                                {"SandWormDespawnDist",         "1500"},   -- Original "1500"
                                {"SandWormSpawnTimer",          "30"},     -- Original "300"
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\SANDWORM\SANDWORM\ENTITIES\SANDWORM.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkCreatureTailComponentData"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property name="Components" value="GcInteractionComponentData">
      <Property name="GcInteractionComponentData">
        <Property name="InteractionAction" value="PressButton" />
        <Property name="InteractionType" value="GcInteractionType">
          <Property name="InteractionType" value="Pet" />
        </Property>
        <Property name="UseIntermediateUI" value="false" />
        <Property name="Renderer" value="TkModelRendererData">
          <Property name="Camera" value="TkModelRendererCameraData">
            <Property name="Distance" value="1.800000" />
            <Property name="Offset">
              <Property name="X" value="0.450000" />
              <Property name="Y" value="0.650000" />
              <Property name="Z" value="3.000000" />
            </Property>
            <Property name="Roll" value="0.000000" />
            <Property name="Pitch" value="10.000000" />
            <Property name="Rotate" value="180.000000" />
            <Property name="LightPitch" value="45.000000" />
            <Property name="LightRotate" value="45.000000" />
            <Property name="Wander" value="TkCameraWanderData">
              <Property name="CamWander" value="false" />
              <Property name="CamWanderPhase" value="0.003000" />
              <Property name="CamWanderAmplitude" value="0.500000" />
            </Property>
          </Property>
          <Property name="Fov" value="30.000000" />
          <Property name="AspectRatio" value="1.777700" />
          <Property name="LightIntensityMultiplier" value="1.000000" />
          <Property name="ThumbnailMode" value="None" />
          <Property name="FocusType" value="ResourceBounds" />
          <Property name="FocusLocator" value="" />
          <Property name="FocusOffset">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="FocusInterpTime" value="0.000000" />
          <Property name="BlendInTime" value="0.800000" />
          <Property name="BlendInOffset" value="0.000000" />
          <Property name="Anim" value="" />
          <Property name="HeightOffset" value="0.005000" />
          <Property name="UsePlayerCameraInHmd" value="true" />
          <Property name="AlignUIToCameraInHmd" value="false" />
          <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
          <Property name="LookForFocusInMasterModel" value="false" />
          <Property name="FlipRotationIfNecessary" value="false" />
        </Property>
        <Property name="RendererAlt" value="TkModelRendererData">
          <Property name="Camera" value="TkModelRendererCameraData">
            <Property name="Distance" value="10.500000" />
            <Property name="Offset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="Roll" value="0.000000" />
            <Property name="Pitch" value="0.000000" />
            <Property name="Rotate" value="180.000000" />
            <Property name="LightPitch" value="45.000000" />
            <Property name="LightRotate" value="45.000000" />
            <Property name="Wander" value="TkCameraWanderData">
              <Property name="CamWander" value="false" />
              <Property name="CamWanderPhase" value="0.003000" />
              <Property name="CamWanderAmplitude" value="0.500000" />
            </Property>
          </Property>
          <Property name="Fov" value="30.000000" />
          <Property name="AspectRatio" value="1.777700" />
          <Property name="LightIntensityMultiplier" value="1.000000" />
          <Property name="ThumbnailMode" value="None" />
          <Property name="FocusType" value="ResourceBounds" />
          <Property name="FocusLocator" value="" />
          <Property name="FocusOffset">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="FocusInterpTime" value="0.000000" />
          <Property name="BlendInTime" value="0.800000" />
          <Property name="BlendInOffset" value="0.000000" />
          <Property name="Anim" value="" />
          <Property name="HeightOffset" value="0.005000" />
          <Property name="UsePlayerCameraInHmd" value="false" />
          <Property name="AlignUIToCameraInHmd" value="false" />
          <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
          <Property name="LookForFocusInMasterModel" value="false" />
          <Property name="FlipRotationIfNecessary" value="false" />
        </Property>
        <Property name="Race" value="GcAlienRace">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="AttractDistanceSq" value="100.000000" />
        <Property name="SecondaryMeshAlwaysVisible" value="false" />
        <Property name="RepeatInteraction" value="true" />
        <Property name="UseInteractCamera" value="false" />
        <Property name="BlendToCameraTime" value="1.500000" />
        <Property name="BlendFromCameraTime" value="-1.000000" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="InteractAngle" value="360.000000" />
        <Property name="InteractDistance" value="1.800000" />
        <Property name="InteractInvertFace" value="true" />
        <Property name="SecondaryInteractionType" value="GcInteractionType">
          <Property name="InteractionType" value="Creature" />
        </Property>
        <Property name="SecondaryActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="EventRenderers" />
        <Property name="EventRenderersAlt" />
        <Property name="EventRenderersDoF" />
        <Property name="SecondaryCameraTransitionTime" value="1.000000" />
        <Property name="DepthOfField" value="GcInteractionDof">
          <Property name="IsEnabled" value="true" />
          <Property name="UseGlobals" value="true" />
          <Property name="NearPlaneMin" value="2.000000" />
          <Property name="NearPlaneAdjust" value="1.000000" />
          <Property name="FarPlane" value="3.000000" />
          <Property name="FarFadeDistance" value="2.000000" />
        </Property>
        <Property name="PuzzleMissionOverrideTable" />
        <Property name="AdditionalOptionsOverrideTable" />
        <Property name="StoryUtilityOverrideData" value="GcStoryUtilityOverride">
          <Property name="Name" value="" />
          <Property name="Reward" value="" />
          <Property name="SpecificRewardOverrideTable" />
        </Property>
        <Property name="OverrideInteriorExteriorMarker" value="No" />
        <Property name="ReseedAfterRewardSuccess" value="false" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="InWorldUIScaler" value="0.000000" />
        <Property name="InWorldUIMinDistOverride" value="0.000000" />
        <Property name="InWorldUIMinDistOverrideV2" value="0.000000" />
        <Property name="InWorldUIForcedOffset" value="0.000000" />
        <Property name="InWorldUIForcedOffsetV2" value="0.000000" />
        <Property name="InWorldUIUseCameraUp" value="false" />
        <Property name="StartMissionOnUse" value="" />
        <Property name="AllowMissionUnderwater" value="true" />
        <Property name="OnlyAvailableInAbandonedMode" value="false" />
        <Property name="UseUnlockedInteractionIfMaintDone" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcSimpleInteractionComponentData">
      <Property name="GcSimpleInteractionComponentData">
        <Property name="SimpleInteractionType" value="GenericReward" />
        <Property name="InteractDistance" value="1.800000" />
        <Property name="Use2dInteractDistance" value="false" />
        <Property name="Id" value="PROC_PROD_BONES" />
        <Property name="Rarity" value="GcRarity">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator">
          <Property name="SizeIndicator" value="Large" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="Delay" value="0.000000" />
        <Property name="HideContents" value="false" />
        <Property name="InteractIsCrime" value="false" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="1.000000" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="false" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="BONES_FOUND" />
        </Property>
        <Property name="StartsBuried" value="false" />
        <Property name="MustBeVisibleToInteract" value="false" />
        <Property name="NeedsStorm" value="false" />
        <Property name="Name" value="" />
        <Property name="ForceSubtitle" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="GcDiscoveryType">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="true" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride">
          <Property name="PersistencyBufferOverride" value="GcPersistencyMissionOverride">
            <Property name="Mission" value="MP_DIGSITE" />
            <Property name="Buffer" value="GcInteractionBufferType">
              <Property name="InteractionBufferType" value="FireteamSync" />
            </Property>
          </Property>
        </Property>
        <Property name="UsePersonalPersistentBuffer" value="true" />
        <Property name="ReseedOnRewardSuccess" value="false" />
        <Property name="CanCollectInMech" value="true" />
      </Property>
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkPhysicsComponentData", "Data", "TkPhysicsData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Mass",           "3"},   -- Original "1"
                                {"Friction",       "0"},   -- Original "0.5"
                                {"AngularDamping", "0.8"}, -- Original "0.2"
                                {"Gravity",        "90"},  -- Original "20"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DeathEffect", "FIENDDEATH"}, -- Original ""
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
                            ["PRECEDING_KEY_WORDS"] = {"ReplacementImpacts"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property name="ReplacementImpacts" value="GcReplacementEffectData">
          <Property name="Id" value="LASERCREATURE" />
          <Property name="ReplaceWith" value="LASERSUBSTANCE" />
        </Property>
        <Property name="ReplacementImpacts" value="GcReplacementEffectData">
          <Property name="Id" value="BLOODSPLAT" />
          <Property name="ReplaceWith" value="DUST" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property name="Components" value="GcShootableComponentData">
      <Property name="GcShootableComponentData">
        <Property name="Health" value="300000" />
        <Property name="LevelledExtraHealth" value="0" />
        <Property name="UseSpaceLevelForExtraHealth" value="false" />
        <Property name="AutoAimTarget" value="false" />
        <Property name="PlayerOnly" value="false" />
        <Property name="IgnorePlayer" value="false" />
        <Property name="ImpactShake" value="false" />
        <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
        <Property name="ForceImpactType" value="GcProjectileImpactType">
          <Property name="Impact" value="Default" />
        </Property>
        <Property name="ImpactOverrideData" value="GcProjectileImpactData">
          <Property name="Effect" value="" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Default" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseWantedThresholdTime" value="0.500000" />
        <Property name="FiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="FiendCrimeModifier" value="1.000000" />
        <Property name="RepairTime" value="1.000000" />
        <Property name="MinDamage" value="0" />
        <Property name="StaticUntilShot" value="false" />
        <Property name="IgnoreHitPush" value="true" />
        <Property name="HitEffectEnabled" value="true" />
        <Property name="HitEffectEntireModel" value="true" />
        <Property name="IsArmoured" value="false" />
        <Property name="CapHealthForMissingArmour" value="1.000000" />
        <Property name="CouldCountAsArmourForParent" value="true" />
        <Property name="IgnoreTerrainEditKills" value="false" />
        <Property name="NameOverride" value="" />
        <Property name="RequiredTech" value="" />
        <Property name="DamageMultiplier" value="FIEND" />
        <Property name="IsPiercable" value="false" />
        <Property name="IsAffectedByPiercing" value="false" />
      </Property>
    </Property>
]]
                        },
                    }
                },
            },
        },
    },
}