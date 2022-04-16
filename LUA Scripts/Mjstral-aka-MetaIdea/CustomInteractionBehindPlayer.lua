Trigger = 
{
"GcAnimFrameEvent.xml"
"GcBeenShotEvent.xml"
"GcPlayerNearbyEvent.xml"
"GcStateTimeEvent.xml"
"GcStormEvent.xml"
}

Action = 
{
"GcBaseBuildingSettingsAction.xml"
"GcCameraShakeAction.xml"
"GcDestroyAction.xml"
"GcDisplayText.xml"
"GcFireSimpleInteractionAction.xml"
"GcFrigateInteractionAction.xml"
"GcGoToStateAction.xml"
"GcHazardAction.xml"
"GcNodeActivationAction.xml"
"GcPainAction.xml"
"GcParticleAction.xml"
"GcPlayAnimAction.xml"
"GcPlayAudioAction.xml"
"GcPowerStateAction.xml"
"GcRewardAction.xml"
"GcScareCreaturesAction.xml"
"GcSpawnAction.xml"
"GcWarpAction.xml"
}

SimpleInteractionTypeEnum = --NMS 2.09
{
"Interact", "Treasure", "Beacon", "Scan", "Save", "CallShip", "CallVehicle", "Word", "Tech", "GenericReward", 
"Feed", "Ladder", "ClaimBase", "TeleportStartPoint", "TeleportEndPoint", "Portal", "Chest", "ResourceHarvester", 
"BaseCapsule", "Hologram", "NPCTerminalMessage", "VehicleBoot", "BiomeHarvester", "FreighterGalacticMap", "FreighterChest",
"Collectable", "Chair", "BaseTreasureChest", "SpawnObject", "NoiseBox" 
}

InteractionTypeEnum = --NMS 2.09
{
"None", "Shop", "NPC", "NPC_Secondary", "NPC_Anomaly", "NPC_Anomaly_Secondary", "Ship", "Outpost", "SpaceStation", "RadioTower", "Monolith", "Factory",
"AbandonedShip", "Harvester", "Observatory", "TradingPost", "DistressBeacon", "Portal", "Plaque", "AtlasStation", "AbandonedBuildings", "WeaponTerminal", "SuitTerminal", "SignalScanner",
"Teleporter_Base", "Teleporter_Station", "ClaimBase", "NPC_Freighter_Captain", "NPC_HIRE_Weapons", "NPC_HIRE_Weapons_Wait", "NPC_HIRE_Farmer", "NPC_HIRE_Farmer_Wait", "NPC_HIRE_Builder",
"NPC_HIRE_Builder_Wait", "NPC_HIRE_Vehicles", "NPC_HIRE_Vehicles_Wait", "MessageBeacon", "NPC_HIRE_Scientist", "NPC_HIRE_Scientist_Wait", "NPC_Recruit", "NPC_Freighter_Captain_Secondary",
"NPC_Recruit_Secondary", "Vehicle", "MessageModule", "TechShop", "VehicleRaceStart", "BuildingShop", "MissionGiver", "HoloHub", "HoloExplorer", "HoloSceptic", "HoloNoone", "PortalRuneEntry",
"PortalActivate", "CrashedFreighter", "GraveInCave", "GlitchyStoryBox", "NetworkPlayer", "NetworkMonument", "AnomalyComputer", "AtlasPlinth", "Epilogue", "GuildEnvoy", "ManageFleet",
"ManageExpeditions", "Frigate", "CustomiseCharacter", "CustomiseShip", "CustomiseWeapon", "CustomiseVehicle", "ClaimBaseAnywhere", "FleetNavigator", "FleetCommandPost", "StoryUtility",
"MPMissionGiver", "SpecialsShop", "WaterRuin", "LocationScanner", "ByteBeat", "NPC_CrashSite", "NPC_Scavenger", "BaseGridPart", "NPC_Freighter_Crew", "NPC_Freighter_Crew_Owned",
"AbandonedShip_With_NPC", "ShipPilot", "NexusMilestones", "NexusDailyMission", "CreatureFeeder", "ExoticExtra1", "ExoticExtra2", "ExoticExtra3", "ExoticExtra4", "ExoticExtra5",
"ExoticExtra6", "MapShop", "NPC_Closure", "StorageContainer", "Teleporter_Nexus" 
}

REWARD_TYPE = --NMS 2.09
{
"GcRewardAdvancePortalState.xml", "GcRewardAssessCookedProduct.xml", "GcRewardAtlasPathProgress.xml", "GcRewardCargo.xml", "GcRewardChangeGlobalMission.xml", 
"GcRewardClosePortal.xml", "GcRewardCrashSiteFly.xml", "GcRewardCrashSiteRepair.xml", "GcRewardDamage.xml", "GcRewardDamageTech.xml", "GcRewardDiscoverRune.xml", 
"GcRewardDisguisedProduct.xml", "GcRewardEnergy.xml", "GcRewardFactionStanding.xml", "GcRewardFrigateDamageResponse.xml", "GcRewardHazard.xml", 
"GcRewardHealth.xml", "GcRewardIncrementInteractionIndex.xml", "GcRewardInterventionResponse.xml", "GcRewardJetpackBoost.xml", "GcRewardJourneyThroughCentre.xml", 
"GcRewardMission.xml", "GcRewardMissionMessage.xml", "GcRewardMissionMessageSeeded.xml", "GcRewardMissionSeeded.xml", "GcRewardModifyStat.xml", "GcRewardMoney.xml", 
"GcRewardMultiSpecificProductRecipes.xml", "GcRewardMultiSpecificProducts.xml", "GcRewardNexus.xml", "GcRewardOpenPage.xml", "GcRewardOpenUnlockTree.xml", 
"GcRewardPirateAttack.xml", "GcRewardPirateProbeSignal.xml", "GcRewardProceduralProduct.xml", "GcRewardProceduralProductFromBiome.xml", 
"GcRewardProceduralTechnology.xml", "GcRewardProcTechProduct.xml", "GcRewardProduct.xml", "GcRewardProductRecipe.xml", "GcRewardRefreshHazProt.xml", 
"GcRewardRepairTech.xml", "GcRewardScan.xml", "GcRewardScanEvent.xml", "GcRewardScanEventNearestBuilding.xml", "GcRewardSecondaryInteractionOptions.xml", 
"GcRewardSecondarySubstance.xml", "GcRewardShield.xml", "GcRewardShipAssistance.xml", "GcRewardShipMessage.xml", "GcRewardShowBlackHoles.xml", 
"GcRewardSignalScan.xml", "GcRewardSpecificProduct.xml", "GcRewardSpecificProductRecipe.xml", "GcRewardSpecificProductRecipeFromList.xml", "GcRewardSpecificShip.xml", 
"GcRewardSpecificSpecial.xml", "GcRewardSpecificSubstance.xml", "GcRewardSpecificTech.xml", "GcRewardSpecificTechFromList.xml", "GcRewardSpecificWeapon.xml", 
"GcRewardStanding.xml", "GcRewardStartPurchase.xml", "GcRewardStatDiff.xml", "GcRewardSubstance.xml", "GcRewardTeachWord.xml", "GcRewardTechRecipe.xml", 
"GcRewardTeleport.xml", "GcRewardTrigger.xml", "GcRewardTriggerStorm.xml", "GcRewardUpgradeBase.xml", "GcRewardWantedLevel.xml", "GcRewardWeapon.xml", 
"GcRewardWikiTopic.xml", "GcRewardWorker.xml"
}

GcFrigateInteractionAction
{
"Repair", "UpdateDamagedComponents", "CargoPhoneCall"	
}

NodeActiveState =
{ 
"Activate", "Deactivate", "Toggle", "Add", "Remove", "RemoveChildren"
}
 
InteractionAction =
{
"PressButton", "HoldButton", "Shoot"
}

PlayerNearbyEventType = 
{
"None", "Fire", "InShip", "OnFoot", "OnFootOutside", "Upload"
}

QuickMenuActions = --NMS 2.09 --HotActionMenuTypesEnum: OnFoot, InShip, InExocraft
{ 
"None", "CallFreighter", "SummonNexus", "CallShip", "SummonVehicleSubMenu", "SummonBuggy", "SummonBike", "SummonTruck", "SummonWheeledBike",
"SummonHovercraft", "SummonSubmarine", "VehicleScan", "VehicleScanSelect", "VehicleRestartRace", "Torch", "GalaxyMap", "PhotoMode", "ChargeMenu", "Charge", "ChargeSubMenu",
"Repair", "BuildItem", "BuildChangeGroup", "BuildDelete", "BuildColour", "BuildMaterial", "BuildWireConnection", "BuildColourGroup", "BuildMaterialGroup", "BuildRotateScale",
"CommunicatorReceive", "CommunicatorInitiate", "ThirdPersonCharacter", "ThirdPersonShip", "EconomyScan", "EmoteMenu", "Emote", "UtilitySubMenu", "SummonSubMenu", "SummonShipSubMenu",
"ChangeSecondaryWeaponMenu", "ChangeSecondaryWeapon", "ChooseCreatureFoodMenu", "ChooseCreatureFood", "Invalid"
}



PLAYER_CHARACTER_INSERTION =
[[
	<Property value="TkSceneNodeData.xml">
	<Property name="Name" value="Trigger1" />
	<Property name="NameHash" value="0" />	
	  <Property name="Type" value="REFERENCE" />
	  <Property name="Transform" value="TkTransformData.xml">
		<Property name="TransX" value="0" />
		<Property name="TransY" value="1" />
		<Property name="TransZ" value="3" />
		<Property name="RotX" value="0" />
		<Property name="RotY" value="0" />
		<Property name="RotZ" value="0" />
		<Property name="ScaleX" value="1" />
		<Property name="ScaleY" value="1" />
		<Property name="ScaleZ" value="1" />
	  </Property>
	  <Property name="Attributes">
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="SCENEGRAPH" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIELD.SCENE.MBIN" />
		</Property>			
	  </Property>
	  <Property name="Children" />
	</Property>	
]]

OPTION_GIVER_SCENE =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/OPTIONGIVER" />
  <Property name="NameHash" value="0" />	
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData.xml">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
  </Property>
  <Property name="Attributes">
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trigger1" />
	  <Property name="NameHash" value="0" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.0" />
        <Property name="TransZ" value="2" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/OPTIONGIVER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="INTERACT" />
		  <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>	
]]

OPTION_GIVER_ENTITY =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.0.9)-->
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="Save" />
      <Property name="InteractDistance" value="0" />
      <Property name="Id" value="" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Medium" />
      </Property>
      <Property name="TriggerAction" value="ENABLE" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="True" />
      <Property name="InteractIsCrime" value="False" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="InteractCrimeLevel" value="0" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="Stat" value="None" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="BLD_SAVEPOINT_NAME_L" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="BLD_SAVEPOINT_SUBTITLE" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="GcDiscoveryTypes.xml">
        <Property name="DiscoveryType" value="Unknown" />
      </Property>
      <Property name="ActivateLocatorsFromRarity" value="False" />
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
      <Property name="BaseBuildingTriggerActions" />
      <Property name="RewardOverrideTable" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="ReseedOnRewardSuccess" value="False" />
    </Property>
    <Property value="TkAnimationComponentData.xml">
      <Property name="Idle" value="TkAnimationData.xml">
        <Property name="Anim" value="" />
        <Property name="Filename" value="" />
        <Property name="AnimType" value="OneShot" />
        <Property name="FrameStart" value="0" />
        <Property name="FrameEnd" value="0" />
        <Property name="StartNode" value="" />
        <Property name="ExtraStartNodes" />
        <Property name="Priority" value="0" />
        <Property name="LoopOffsetMin" value="0" />
        <Property name="LoopOffsetMax" value="0" />
        <Property name="Delay" value="0" />
        <Property name="Speed" value="1" />
        <Property name="ActionFrameStart" value="0" />
        <Property name="ActionFrame" value="-1" />
        <Property name="ControlCreatureSize" value="AllSizes" />
        <Property name="Additive" value="False" />
        <Property name="Mirrored" value="False" />
        <Property name="Active" value="False" />
        <Property name="AdditiveBaseAnim" value="" />
        <Property name="AdditiveBaseFrame" value="0" />
        <Property name="GameData" value="TkAnimationGameData.xml">
          <Property name="RootMotionEnabled" value="False" />
          <Property name="BlockPlayerMovement" value="False" />
          <Property name="BlockPlayerWeapon" value="Unblocked" />
        </Property>
      </Property>
      <Property name="Anims">
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="CONTRACT" />
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/SAVEPOINTCONTRACT.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="120" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="OPENSAVE" />
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/SAVEPOINT.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="120" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
      </Property>
      <Property name="Trees" />
      <Property name="NetSyncAnimation" value="False" />
      <Property name="JointLODOverrides" />
    </Property>
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="0" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="Open" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="False" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="False" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="False" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
    </Property>
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="Light" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="Planet" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="Planet" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="Light" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="SignalScanner" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAnimAction.xml">
                  <Property name="Anim" value="OPENSAVE" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PersonalShieldGenerator.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Shield activateable behind player",
["NMS_VERSION"]				= "2.09",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Children"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= PLAYER_CHARACTER_INSERTION
						}
					}
				}
			}
		}
	},
["ADD_FILES"] 			= 
	{
		{
			["FILE_DESTINATION"]  	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\OPTIONGIVER.SCENE.EXML",
			["FILE_CONTENT"] 		= OPTION_GIVER_SCENE

		},
		{
			["FILE_DESTINATION"]  	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\OPTIONGIVER.ENTITY.EXML",
			["FILE_CONTENT"] 		= OPTION_GIVER_ENTITY		

		}		
	}	
}