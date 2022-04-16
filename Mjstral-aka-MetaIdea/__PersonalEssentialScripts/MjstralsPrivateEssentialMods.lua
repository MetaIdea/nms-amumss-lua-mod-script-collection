NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MjstralsPrivateEssentialMods.pak",
["MOD_AUTHOR"]				= "Mjstral",
["DESCRIPTION"]				= "My personally used minimal/essenital load of mod changes I like to have to play creative mode",
["NMS_VERSION"]				= "3.52",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ --AlwaysDay
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinNightFade",				"1.0"},
								{"MaxNightFade",				"1.0"},
							}
						},
					}
				},
				{ --UnlimitedPhotoMode_NoClip_Speed3x
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PhotoModeMoveSpeed",			"30"},
								{"PhotoModeMaxDistance",		"10000000"},
								{"PhotoModeMaxDistanceSpace",	"10000000"},
								{"PhotoModeMaxDistance",		"9000000"},
								{"PhotoModeMaxDistanceSpace",	"9000000"},
								{"PhotoModeCollisionRadius",	"0.0"},
							}
						},
					}
				},
				{ --UnlimitedHyperDriveDistance_UnlimitedJetPack_ZeroLaunchCost
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"10000000"},
								{"Bonus",	"9000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","JET1",},
							["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"10000000"},
								{"Bonus",	"9000000"}, 
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","LAUNCHER",},
							["PRECEDING_KEY_WORDS"] = "Ship_Launcher_TakeOffCost",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",		"0"},
							}
						},
					}
				},
				{ --NoPirates+NoRandomSentinels
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnPirates",				"False"}, 	-- Original "True"
								{"SpawnRobots",					"False"}	-- Original "True"
							}
						}
					}
				},
				{ --NoPirates
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"
								{"y",	"0"} 		-- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"
								{"y",	"0"} 		-- Original "1"
							}
						}
					}
				},
				{ --NoPirates
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"File", ""}}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"File", ""}}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"File", ""}}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"File", ""}}
						}
					}
				},
				{ --NoRandomSentinels - self deleting drones on spawn
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\ROBOTS\DRONE\ENTITIES\DRONE.ENTITY.MBIN",
						"MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\ENTITIES\CORRUPTEDDRONE.ENTITY.MBIN",
						"MODELS\COMMON\ROBOTS\DRONEARMOURED\ENTITIES\DRONEARMOURED.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DRONE\DRONESHIP\ENTITIES\SHIP.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Components" },
							["ADD"] 				= 
[[
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
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONE" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>					
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONEARMOURED" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>				
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\DRONE\DRONESHIP" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
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
]]
						}
					}
				},
				{ --EssentialFlightTweaksMinimal - hover, reverse, underwater 10x warp speed
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
							["VALUE_CHANGE_TABLE"] 	= 
								{				
									{"MiniWarpSpeed",				   "200000"},
									{"PulseDrivePlanetApproachHeight",	 "200"},
									{"MiniWarpChargeTime",					"0"},
									{"ApplyHeightForce", 				"False"},
									{"ApplyHeightAlign", 				"False"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "MinSpeed",							-5},
								}
							},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "MinSpeed",							-5},
								}
							},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "MinSpeed",							-5},
								}
						},
					}
				},
				{ --JetpackWalkSwimLaserMiningSpeed
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackMaxSpeed",					"50"},
								{"GroundRunSpeed",					"24"},
								{"UnderwaterMaxSpeed",				"12"},
								{"LaserBeamMineRate",				"0.9"},
							}	
						}						
					}
				},
				{ --DisableVRWarnings
					["MBIN_FILE_SOURCE"] 	= "UI\HUD\HUDVRWARNING.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",						"True"},						
							}
						}
					}
				},
				-- { --VR-NO-GLOW
					-- ["MBIN_FILE_SOURCE"] 	= "PIPELINES\PIPELINEDEFERREDVR.BIN",
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- {
							-- ["REPLACE_TYPE"]		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {
									-- [[      <DoForwardLightLoop type="Mesh"     class="Highlight"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />]], 
									-- ""
								-- },
							-- }
						-- }
					-- }
				-- },
				{ --SavegameByHotkey
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Anim","EMOTE_CALL_PET"}, 
							["LINE_OFFSET"] 		= "+0",
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"] 				= 
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="SAVEGAME" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="CreatureSize" value="AllSizes" />
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
]]
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= 
[[
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="Save" />
      <Property name="InteractDistance" value="0" />
      <Property name="Use2dInteractDistance" value="False" />
      <Property name="Id" value="" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Medium" />
      </Property>
      <Property name="TriggerAction" value="INACTIVE" />
      <Property name="TriggerActionOnPrepare" value="" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="True" />
      <Property name="InteractIsCrime" value="False" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="InteractFiendCrimeChance" value="1" />	  
      <Property name="InteractCrimeLevel" value="0" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="GcStatEnum" value="None" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="">
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
      <Property name="PersistencyBufferOverride" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="ReseedOnRewardSuccess" value="False" />
      <Property name="CanCollectInMech" value="False" />
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
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_SAVE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="SAVE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="SignalScanner" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcFireSimpleInteractionAction.xml" />
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_SAVE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>				
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="WAIT_FOR_SAVE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SAVEGAME" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="SAVE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
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
]]							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Save" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="SAVEGAME" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="SAVEGAME" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Save" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="SAVEGAME" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="SAVEGAME" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]							
						}
					}
				},
			}
		},
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\EMOTES\NULL.ANIM.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />
    </Property>  
  </Property>	
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />	  
 </Property>
</Data>	
]]			
		}
	}
}
