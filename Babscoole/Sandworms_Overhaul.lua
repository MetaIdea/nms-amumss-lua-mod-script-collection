NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Sandworms_Overhaul.pak",
["MOD_AUTHOR"]              = "Redmas",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.70",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkCreatureTailComponentData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcInteractionComponentData.xml">
      <Property name="InteractionAction" value="PressButton" />
      <Property name="InteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Pet" />
      </Property>
      <Property name="UseIntermediateUI" value="False" />
      <Property name="Renderer" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="1.8" />
          <Property name="Offset" value="Vector3f.xml">
            <Property name="x" value="0.45" />
            <Property name="y" value="0.65" />
            <Property name="z" value="3" />
          </Property>
          <Property name="Roll" value="0" />
          <Property name="Pitch" value="10" />
          <Property name="Rotate" value="180" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="True" />
        <Property name="AlignUIToCameraInHmd" value="False" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
        <Property name="LookForFocusInMasterModel" value="False" />
      </Property>
      <Property name="RendererAlt" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="10.5" />
          <Property name="Offset" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="Roll" value="0" />
          <Property name="Pitch" value="0" />
          <Property name="Rotate" value="180" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="False" />
        <Property name="AlignUIToCameraInHmd" value="False" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
        <Property name="LookForFocusInMasterModel" value="False" />
      </Property>
      <Property name="Race" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="AttractDistanceSq" value="100" />
      <Property name="SecondaryMeshAlwaysVisible" value="False" />
      <Property name="RepeatInteraction" value="True" />
      <Property name="UseInteractCamera" value="False" />
      <Property name="BlendToCameraTime" value="1.5" />
      <Property name="BlendFromCameraTime" value="-1" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
        <Property name="UseCostID" value="" />
        <Property name="StartMissionOnCantAfford" value="" />
        <Property name="OnlyChargeDuringSeasons" />
      </Property>
      <Property name="TriggerAction" value="INACTIVE" />
      <Property name="TriggerActionOnPrepare" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="InteractAngle" value="360" />
      <Property name="InteractDistance" value="1.8" />
      <Property name="InteractInvertFace" value="True" />
      <Property name="SecondaryInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Creature" />
      </Property>
      <Property name="SecondaryActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
        <Property name="UseCostID" value="" />
        <Property name="StartMissionOnCantAfford" value="" />
        <Property name="OnlyChargeDuringSeasons" />
      </Property>
      <Property name="EventRenderers" />
      <Property name="EventRenderersAlt" />
      <Property name="SecondaryCameraTransitionTime" value="1" />
      <Property name="DepthOfField" value="GcInteractionDof.xml">
        <Property name="IsEnabled" value="True" />
        <Property name="UseGlobals" value="True" />
        <Property name="NearPlaneMin" value="2" />
        <Property name="NearPlaneAdjust" value="1" />
        <Property name="FarPlane" value="3" />
        <Property name="FarFadeDistance" value="2" />
      </Property>
      <Property name="PuzzleMissionOverrideTable" />
      <Property name="StoryUtilityOverrideData" value="GcStoryUtilityOverride.xml">
        <Property name="Name" value="" />
        <Property name="Reward" value="" />
        <Property name="SpecificRewardOverrideTable" />
      </Property>
      <Property name="OverrideInteriorExteriorMarker" value="No" />
      <Property name="ReseedAfterRewardSuccess" value="False" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="InWorldUIScaler" value="0" />
      <Property name="InWorldUIMinDistOverride" value="0" />
      <Property name="InWorldUIMinDistOverrideV2" value="0" />
      <Property name="InWorldUIForcedOffset" value="0" />
      <Property name="InWorldUIForcedOffsetV2" value="0" />
      <Property name="InWorldUIUseCameraUp" value="False" />
      <Property name="StartMissionOnUse" value="" />
      <Property name="AllowMissionUnderwater" value="True" />
      <Property name="UseUnlockedInteractionIfMaintDone" value="False" />
    </Property>
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="GenericReward" />
      <Property name="InteractDistance" value="1.80" />
      <Property name="Use2dInteractDistance" value="False" />
      <Property name="Id" value="PROC_PROD_BONES" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Large" />
      </Property>
      <Property name="TriggerAction" value="INACTIVE" />
      <Property name="TriggerActionOnPrepare" value="" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="False" />
      <Property name="InteractIsCrime" value="False" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="InteractFiendCrimeChance" value="1" />
      <Property name="InteractCrimeLevel" value="0" />
      <Property name="IncreaseCorruptSentinelWanted" value="0" />
      <Property name="NotifyEncounter" value="False" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
        <Property name="UseCostID" value="" />
        <Property name="StartMissionOnCantAfford" value="" />
        <Property name="OnlyChargeDuringSeasons" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="StatEnum" value="BONES_FOUND" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalHeading" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="GcDiscoveryType.xml">
        <Property name="DiscoveryType" value="Unknown" />
      </Property>
      <Property name="ActivateLocatorsFromRarity" value="True" />
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
      <Property name="BaseBuildingTriggerActions" />
      <Property name="RewardOverrideTable" />
      <Property name="PersistencyBufferOverride">
        <Property value="GcPersistencyMissionOverride.xml">
          <Property name="Mission" value="MP_DIGSITE" />
          <Property name="Buffer" value="GcInteractionBufferType.xml">
            <Property name="InteractionBufferType" value="FireteamSync" />
          </Property>
        </Property>
      </Property>
      <Property name="UsePersonalPersistentBuffer" value="True" />
      <Property name="ReseedOnRewardSuccess" value="False" />
      <Property name="CanCollectInMech" value="True" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkPhysicsComponentData.xml", "Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Mass",           "3"},   -- Original "1"
                                {"Friction",       "0"},   -- Original "0.5"
                                {"AngularDamping", "0.8"}, -- Original "0.2"
                                {"Gravity",        "90"},  -- Original "20"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkPhysicsComponentData.xml", "RagdollData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Gravity", "90"}, -- Original "20"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RagdollData", "TkRagdollData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"ChainEnds"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
          <Property value="NMSString0x20.xml">
            <Property name="Value" value="NeckJNT" />
          </Property>
          <Property value="NMSString0x20.xml">
            <Property name="Value" value="TailJNT" />
          </Property>
          <Property value="NMSString0x20.xml">
            <Property name="Value" value="RWingJNT" />
          </Property>
          <Property value="NMSString0x20.xml">
            <Property name="Value" value="LWingJNT" />
          </Property>
]]
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
        <Property value="GcReplacementEffectData.xml">
          <Property name="Id" value="LASERCREATURE" />
          <Property name="ReplaceWith" value="LASERSUBSTANCE" />
        </Property>
        <Property value="GcReplacementEffectData.xml">
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
    <Property value="GcShootableComponentData.xml">
      <Property name="Health" value="300000" />
      <Property name="AutoAimTarget" value="False" />
      <Property name="PlayerOnly" value="False" />
      <Property name="IgnorePlayer" value="False" />
      <Property name="ImpactShake" value="False" />
      <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
      <Property name="ForceImpactType" value="GcProjectileImpactType.xml">
        <Property name="Impact" value="Default" />
      </Property>
      <Property name="IncreaseWanted" value="0" />
      <Property name="IncreaseCorruptSentinelWanted" value="0" />
      <Property name="IncreaseWantedThresholdTime" value="0.5" />
      <Property name="FiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="FiendCrimeModifier" value="1" />
      <Property name="RepairTime" value="1" />
      <Property name="MinDamage" value="0" />
      <Property name="StaticUntilShot" value="False" />
      <Property name="IgnoreHitPush" value="True" />
      <Property name="HitEffectEnabled" value="True" />
      <Property name="HitEffectEntireModel" value="True" />
      <Property name="IsArmoured" value="False" />
      <Property name="CouldCountAsArmourForParent" value="True" />
      <Property name="IgnoreTerrainEditKills" value="False" />
      <Property name="NameOverride" value="" />
      <Property name="RequiredTech" value="" />
      <Property name="DamageMultiplier" value="FIEND" />
      <Property name="IsPiercable" value="False" />
      <Property name="IsAffectedByPiercing" value="False" />
    </Property>
]]
                        },
                    }
                },
            },
        },
    },
}