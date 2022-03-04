QUICK_ACTION_LIST = 
{
	"SAVE",
	"GALACTICMAP",
	"WARP_TO_BASE", 
	"TOGGLE_BACKPACK",
	"TOGGLE_SHIELD", 
	"REVEAL_PORTAL",
	"PLANET_FINDER",
	"TOGGLE_INVISIBLE",
	"REVEAL_RUNES",
	"FREIGHTER_TRANS",	
	"SCARE_CREATURES",
	"HEALTH_SUIT",
	"STOP_STORM",
	"STORM",	
	"POWER_STATE",
	"ENABLE_NEXUS",	
	"UPLOAD_BASE",
	"DEACT_FIENDS",
	"FREE_EXPLORE",
	"CLEAR_WANTED",
	"ADD_WANTED",
	--"R_NEXUS_TECH",
	--"R_FREI_CUSTOM",
	"TREE_BASICS",
	"TREE_TECHBASICS",
	"TREE_BASE",
	"TREE_SPEC_BASE",
	"TREE_SUIT",
	"TREE_SHIP",
	"TREE_WEAP",
	"TREE_EXO",
	"TREE_CRAFT",
	"TREE_FRIGATE",
	"BLACK_HOLE_WARP", 	
	"CENTREJOURNEY1",
	"CENTREJOURNEY2",
	"CENTREJOURNEY3",
	"CENTREJOURNEY4",	
}

USER_SEED_LIST =
{
	{ "POLICESHIP", "0x0" },	
	{ "FIGHTER", "0x8E8E2193DD4A9EDA" }, --ALPHA VECTOR
	{ "FIGHTER", "0xC4C9C1AABCA59FE6" }, --HORIZON OMEGA
	{ "FIGHTER", "0xA547AB958C97E439" }, --RASAMAMA S36
	{ "MULTITOOL", "0x55907B79D95B675B" }, --STARTER WEAPON
	
	-- { "FIGHTER", "0x2ed0b7e8773e6959" },
	-- { "FIGHTER", "0x0469079B58527FAC", true },
	-- { "FIGHTER", "0xc82dbd4a5f1f4191" },
	-- { "FIGHTER", "0x646abde861bb4790" },
	-- { "FIGHTER", "0x8B368967CED50C9C" },
	
	-- { "DROPSHIP", "0x100A66565DECB1C5" },
	-- { "DROPSHIP", "0xCA26E52B0D24DC37" },
	-- { "DROPSHIP", "0xC25A946003305CF0", true },
	-- { "DROPSHIP", "0xA4687FDB844DA5DC" },
	-- { "DROPSHIP", "0x71876903D4317C8D" },
	-- { "DROPSHIP", "0x2EB67DD98452B24D", true },
	-- { "DROPSHIP", "0xE71E296D1CAD582E" },
	
	-- { "DROPSHIP", "0x2179DE9A6801F57C" },
	-- { "DROPSHIP", "0x46031B34A85DB726" },
	-- { "DROPSHIP", "0x1D30478CA881BE29" },
	-- { "DROPSHIP", "0x2C1CEC12E7120CA9" },
	-- { "DROPSHIP", "0x5E61694BFAA3C741" },
	-- { "DROPSHIP", "0x2D4777FBBF2AA61D" },
	-- { "DROPSHIP", "0x24B6531B41368A80" },
	-- { "DROPSHIP", "0xF4042806234A385D" },

	-- { "DROPSHIP", "0x2D4777FBBF2AA61D" },
	-- { "DROPSHIP", "0x521F5EA090A8D435" },
	-- { "DROPSHIP", "0xE6A73D8B66BB11F5" },
	-- { "DROPSHIP", "0x24B6531B41368A80" },
	-- { "DROPSHIP", "0x96959C617F3F741C" },
	-- { "DROPSHIP", "0xBBF7FE10647AD6BD" },
	
	-- { "DROPSHIP", "0x014E18C048F92588" },
	-- { "DROPSHIP", "0x39ABFE3E3E4BBD39" },
	-- { "DROPSHIP", "0xD6818C49606930E9" },
	-- { "DROPSHIP", "0x3AF32591A1C3DD0E" },
	-- { "DROPSHIP", "0x5AC70EC519EBE79D" },
	-- { "DROPSHIP", "0x5B510F514629D3C9" },
	-- { "DROPSHIP", "0x003242B4681A0027" },

	-- { "SCIENTIFIC", "0x74C41D521491C48B" },
	-- { "SCIENTIFIC", "0xE088DFDC904C8A54" },
	
	-- { "EXOTIC", "0x66c2ba46dcfbf4c3" },	
	-- { "EXOTIC", "0xc688372a1012811b" },
}

GENERIC_BUTTON_ICON = "TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS"

QUICK_ACTION_MENU = 
{
	["SAVE"] = 
	{
		["TITLE"] 			= "Save",
		["ICON"] 			= "TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS",
		["ANIM"] 			= "SAVEGAME",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SAVEGAME" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="SAVE" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>
              </Property>
            </Property>
]],
		["COMPONENT"] 	= 
[[
    <Property value="TkReferenceComponentData.xml">
      <Property name="Reference" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/SAVE.SCENE.MBIN" />
      <Property name="LSystem" value="" />
    </Property>
]]
	},
	["GALACTICMAP"] = 
	{
		["TITLE"] 			= "Galactic Map",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/GALACTICMAP/GALACTICMAP.DDS",
		["ANIM"] 			= "GALACTICMAP",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="GALACTICMAP" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="GALACTICMAP" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>	
              </Property>
            </Property>
]],
		["COMPONENT"] 	= 
[[
    <Property value="TkReferenceComponentData.xml">
      <Property name="Reference" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/GALACTICMAPOPTION.SCENE.MBIN" />
      <Property name="LSystem" value="" />
    </Property>
]]
	},	
	["WARP_TO_BASE"] = 
	{
		["TITLE"] 			= "Warp To Base",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.WARP.DDS",
		["ANIM"] 			= "WARP_TO_BASE",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="WARP_TO_BASE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="TELEPORT_BASE" />
                </Property>
              </Property>
            </Property>
]]		
	},
	["TOGGLE_BACKPACK"] = 
	{
		["TITLE"] 			= "Toggle Backpack",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/COMPONENTS/CHARCUSTOMISE/BACKPACK.DDS",
		["ANIM"] 			= "TOGGLE_BACKPACK",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>	
              <Property name="Action">
                <Property value="GcPlayAnimAction.xml">
                  <Property name="Anim" value="TOGGLE_BACKPACK" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TOGGLE_BACKPACK" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="Backpack" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Vanilla" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Astro" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Gek" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Fourth" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Vykeen" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
]]		
	},
	["TOGGLE_INVISIBLE"] = 
	{
		["TITLE"] 			= "Toggle Invisibility",
		["ICON"] 			= "TEXTURES/UI/HUD/ICONS/MISSIONS/HIDE_N_SEEK.DDS",
		["ANIM"] 			= "TOGGLE_INVISIBLE",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TOGGLE_INVISIBLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER" />
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
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="False" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>	
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
]]		
	},
	["TOGGLE_SHIELD"] = 
	{
		["TITLE"] 			= "Shield",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS",
		["ANIM"] 			= "TOGGLE_SHIELD",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="False" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>		
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TOGGLE_SHIELD" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Anomaly_Simulation_Reveal_Open" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcCameraShakeAction.xml">
                  <Property name="Shake" value="SLOWRUMBLE" />
                  <Property name="FalloffMin" value="5" />
                  <Property name="FalloffMax" value="15" />
                </Property>		
              </Property>
            </Property>
]],
		["COMPONENT"] 	= 
[[
    <Property value="TkReferenceComponentData.xml">
      <Property name="Reference" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/SHIELD/SHIELD.SCENE.MBIN" />
      <Property name="LSystem" value="" />
    </Property>
]]
	},
	["SCARE_CREATURES"] = 
	{
		["TITLE"] 			= "Scare Creatures",
		["ICON"] 			= "TEXTURES/UI/HUD/EYE.CREATURE.DDS",
		["ANIM"] 			= "SCARE_CREATURES",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SCARE_CREATURES" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcScareCreaturesAction.xml">
                  <Property name="HearRadius" value="21" />
                  <Property name="FleeRadius" value="21" />
                </Property>
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="Creature Scare" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>				
              </Property>
            </Property>
]]		
	},
	["BLACK_HOLE_WARP"] = 
	{
		["TITLE"] 			= "Black Hole Warp",
		["ICON"] 			= "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.BLACKHOLE.DDS",
		["ANIM"] 			= "BLACK_HOLE_WARP",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="BLACK_HOLE_WARP" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcWarpAction.xml">
                  <Property name="WarpType" value="BlackHole" />
                </Property>
              </Property>
            </Property>
]]		
	},
	["POWER_STATE"] = 
	{
		["TITLE"] 			= "Emit Electricity (WIP)",
		["ICON"] 			= "TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.STORMCRYSTALS.DDS",
		["ANIM"] 			= "POWER_STATE",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="POWER_STATE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcPowerStateAction.xml">
                  <Property name="SetRateEnabled" value="True" />
                  <Property name="SetConnectionEnabled" value="True" />
                </Property>			
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="Power ON" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
              </Property>
            </Property>
]]		
	},
	["REVEAL_PORTAL"] = 
	{
		["TITLE"] 			= "Find Portal",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.PORTAL.DDS",
		["ANIM"] 			= "REVEAL_PORTAL",
		["TYPE"]			= "REWARD",
	},
	["PLANET_FINDER"] = 
	{
		["TITLE"] 			= "Find Lush Planet",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS",
		["ANIM"] 			= "PLANET_FINDER",
		["TYPE"]			= "REWARD",
		["REWARDTABLE"] 	= 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="PLANET_FINDER" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="PLANET_FINDER" />
              <Property name="ScanEventTable" value="Tutorial" />
              <Property name="DoAerialScan" value="True" />
              <Property name="UseMissionSeedForEvent" value="False" />
              <Property name="StartDelay" value="6" />
              <Property name="UseStartDelayWhenNoAerialScan" value="False" />				  
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]],
		["SCANEVENTTABLE"] 	= 
[[
        <Property value="GcScanEventData.xml">
          <Property name="Name" value="PLANET_FINDER" />
          <Property name="ForceInteraction" value="" />
          <Property name="ForceInteractionType" value="GcInteractionType.xml">
            <Property name="InteractionType" value="None" />
          </Property>
          <Property name="ForceBroken" value="False" />
          <Property name="ForceFixed" value="False" />
          <Property name="ForceOverridesAll" value="True" />
		  <Property name="ForceOverrideEncounter" value="" />		  
          <Property name="IsCommunityPortalOverride" value="False" />
          <Property name="ClearForcedInteractionOnCompletion" value="False" />
      	  <Property name="BuildingPreventionRadius" value="0" />
          <Property name="AlwaysShow" value="False" />
          <Property name="NeverShow" value="False" />
          <Property name="PlanetLabelText" value="" />
          <Property name="SurveyDistance" value="0" />
          <Property name="SurveyDiscoveryOSDMessage" value="" />
          <Property name="EventStartType" value="None" />
          <Property name="EventEndType" value="None" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="False" />
          <Property name="DisableMultiplayerSync" value="False" />
          <Property name="ReplaceEventIfAlreadyActive" value="False" />
          <Property name="BuildingLocation" value="PlanetSearch" />
          <Property name="BuildingType" value="Any" />
          <Property name="BuildingClass" value="GcBuildingClassification.xml">
            <Property name="BuildingClass" value="None" />
          </Property>
          <Property name="AllowFriendsBases" value="True" />
          <Property name="ForceWideRandom" value="False" />
          <Property name="MustFindSystem" value="False" />
          <Property name="AllowOverriddenBuildings" value="True" />
          <Property name="SolarSystemLocation" value="LocalOrNear" />
          <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False"/>
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False"/>
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="NeedsBiome" value="True" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
			<Property name="SuitableForCreatureDiscovery" value="False" />
			<Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
              <Property name="WealthClass" value="GcWealthClass.xml">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass.xml">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />	    
            <Property name="AnyRGBBiome" value="False" />
            <Property name="NeedsBiome" value="True"/>
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
	    <Property name="SuitableForCreatureDiscovery" value="False" />
	    <Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
          </Property>
          <Property name="ForceRestartInteraction" value="True" />
          <Property name="HasReward" value="" />
          <Property name="NextOption" value="" />
          <Property name="TriggerActions" value="GcScanEventTriggers.xml">
            <Property name="Range" value="100" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="False" />
          </Property>
          <Property name="UAsList" />
          <Property name="TechShopType" value="GcTechnologyCategory.xml">
            <Property name="TechnologyCategory" value="All" />
          </Property>
          <Property name="OSDMessage" value="Lush Planet Finder" />
          <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
          <Property name="MarkerLabel" value="Lush Planet" />
          <Property name="MarkerIcon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS"/>
          </Property>
          <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
            <Property name="ScannerIconHighlightType" value="Diamond" />
          </Property>
          <Property name="StartTime" value="0" />
          <Property name="MessageTime" value="0" />
          <Property name="MessageDisplayTime" value="4" />
          <Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="VO_TUT_COORDSRECEIVED"/>
          </Property>
          <Property name="IconTime" value="4" />
          <Property name="TooltipTime" value="10" />
          <Property name="TooltipRepeats" value="False" />
          <Property name="ShowEndTooltip" value="True" />
          <Property name="TooltipMessage" value="" />
          <Property name="ResourceOverride" value="GcResourceElement.xml">
            <Property name="Filename" value="" />
            <Property name="Seed" value="GcSeed.xml">
              <Property name="Seed" value="0" />
              <Property name="UseSeedValue" value="False" />
        </Property>
      </Property>
    </Property>
]]
	},
	["STOP_STORM"] = 
	{
		["TITLE"] 			= "Stop Storm",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANETDATA.WEATHER.DDS",
		["ANIM"] 			= "STOP_STORM",
		["TYPE"]			= "REWARD",
		["REWARDTABLE"] 	= 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="STOP_STORM" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTriggerStorm.xml">
              <Property name="Duration" value="0.01" />
            </Property>
            <Property name="LabelID" value="Trigger Storm" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
	},
	["STORM"] = 
	{
		["TITLE"] 			= "Trigger Storm",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANETDATA.WEATHER.DDS",
		["ANIM"] 			= "STORM",
		["TYPE"]			= "REWARD",
		["REWARDTABLE"] 	= 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="STORM" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTriggerStorm.xml">
              <Property name="Duration" value="120" />
            </Property>
            <Property name="LabelID" value="Trigger Storm" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
	},
	["UPLOAD_BASE"] = 
	{
		["TITLE"] 			= "Upload Base",
		["ICON"] 			= "TEXTURES/UI/HUD/ICONS/SCANNING/BUILDING.UPLOADBASE.DDS",
		["ANIM"] 			= "UPLOAD_BASE",
		["TYPE"]			= "REWARD",
		["REWARDTABLE"] 	= 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="UPLOAD_BASE" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardUploadBase.xml" />
            <Property name="LabelID" value="Upload Base" />
          </Property>
        </Property>
      </Property>
    </Property>
]],
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="UPLOAD_BASE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="UPLOAD_BASE" />
                </Property>
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="Base Uploaded" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>					
              </Property>
            </Property>
]]	
	},
	["DEACT_FIENDS"] = 
	{
		["TITLE"] 			= "Deactivate Fiends",
		["ICON"] 			= "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FIEND.OFF.DDS",
		["ANIM"] 			= "DEACT_FIENDS",
		["TYPE"]			= "REWARD",
		["REWARDTABLE"] 	= 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="DEACT_FIENDS" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardDeactivateFiends.xml" />
            <Property name="LabelID" value="Deactivate Fiends" />
          </Property>
        </Property>
      </Property>
    </Property>
]],
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="DEACT_FIENDS" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="DEACT_FIENDS" />
                </Property>
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="Fiends Deactivated" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>					
              </Property>
            </Property>
]]	
	},
	["HEALTH_SUIT"] = 
	{
		["TITLE"] 			= "Full Health+Suit+Stamina",
		["ICON"] 			= "TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.HEALTH.DDS",
		["ANIM"] 			= "HEALTH_SUIT",
		["TYPE"]			= "REWARD",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="HEALTH_SUIT" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
				<Property value="GcRewardAction.xml">
                  <Property name="Reward" value="HEALTHLARGE" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="SHIELDLARGE" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="HAZARDLARGE" />
                </Property>		
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="ENERGY" />
                </Property>
              </Property>
            </Property>
]]
	},
	["CENTREJOURNEY1"] = { ["TITLE"]="Switch to Vicious Universe", ["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTUREVARIANTS.REDGALAXY.DDS", ["ANIM"]="CENTREJOURNEY1", ["TYPE"]="REWARD" },
	["CENTREJOURNEY2"] = { ["TITLE"]="Switch to Lush Universe", ["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTUREVARIANTS.GREENGALAXY.DDS", ["ANIM"]="CENTREJOURNEY2", ["TYPE"]="REWARD" },
	["CENTREJOURNEY3"] = { ["TITLE"]="Switch to Abandoned Universe", ["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTURE.DDS", ["ANIM"]="CENTREJOURNEY3", ["TYPE"]="REWARD" },
	["CENTREJOURNEY4"] = { ["TITLE"]="Switch to Balanced Universe", ["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTURE.1.DDS", ["ANIM"]="CENTREJOURNEY4", ["TYPE"]="REWARD" },
	["FREE_EXPLORE"] = { ["TITLE"]="Free Explore", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.EXPLORATION.ON.DDS", ["ANIM"]="FREE_EXPLORE", ["TYPE"]="REWARD",
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="FREE_EXPLORE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="FREE_EXPLORE" />
                </Property>
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="Free Exploration Mode" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>					
              </Property>
            </Property>
]]		
	},
	["R_FREI_CUSTOM"] = { ["TITLE"]="Freighter customization", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="R_FREI_CUSTOM", ["TYPE"]="REWARD" },	
	["R_NEXUS_TECH"] = { ["TITLE"]="Nexus Tech Shop", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="R_NEXUS_TECH", ["TYPE"]="REWARD" },
	["TREE_BASICS"] = { ["TITLE"]="Unlock Basic Base Parts", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_BASICS", ["TYPE"]="REWARD" },
	["TREE_TECHBASICS"] = { ["TITLE"]="Unlock Basic Tech Parts", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_TECHBASICS", ["TYPE"]="REWARD" },
	["TREE_BASE"] = { ["TITLE"]="Unlock Base Parts", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_BASE", ["TYPE"]="REWARD" },
	["TREE_SPEC_BASE"] = { ["TITLE"]="Unlock Special Base Parts", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_SPEC_BASE", ["TYPE"]="REWARD" },
	["TREE_SUIT"] = { ["TITLE"]="Unlock Suit Tech", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_SUIT", ["TYPE"]="REWARD" },
	["TREE_SHIP"] = { ["TITLE"]="Unlock Ship Tech", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_SHIP", ["TYPE"]="REWARD" },
	["TREE_WEAP"] = { ["TITLE"]="Unlock Weap Tech", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_WEAP", ["TYPE"]="REWARD" },
	["TREE_EXO"] = { ["TITLE"]="Unlock Exocraft Tech", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_EXO", ["TYPE"]="REWARD" },
	["TREE_CRAFT"] = { ["TITLE"]="Unlock Craft Products", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_CRAFT", ["TYPE"]="REWARD" },
	["TREE_FRIGATE"] = { ["TITLE"]="Unlock Freighter Tech", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS", ["ANIM"]="TREE_FRIGATE", ["TYPE"]="REWARD" },	
	["ENABLE_NEXUS"] = { ["TITLE"]="Enable Nexus", ["ICON"]="TEXTURES/UI/HUD/ICONS/BUILDINGS/NEXUS.DDS", ["ANIM"]="ENABLE_NEXUS", ["TYPE"]="REWARD", 
		["ACTION_TRIGGER"] 	= 
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ENABLE_NEXUS" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="ENABLE_NEXUS" />
                </Property>
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="Nexus Enabled" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>					
              </Property>
            </Property>
]],
		["REWARDTABLE"] = 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="ENABLE_NEXUS" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardNexus.xml">
              <Property name="Allow" value="True" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
	},
	["REVEAL_RUNES"] = { ["TITLE"]="Reveal Portal Runes", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/NOTIFICATIONS/ICON.RUNE.DDS", ["ANIM"]="REVEAL_RUNES", ["TYPE"]="REWARD" },
	["FREIGHTER_TRANS"] = { ["TITLE"]="Transfer Freighter Inventory", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/CATEGORIES/INVCAT.FREIGHTER.DDS", ["ANIM"]="FREIGHTER_TRANS", ["TYPE"]="REWARD" },
	["CLEAR_WANTED"] = { ["TITLE"]="Clear Wanted Level", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/GAMEMODE/STAR.DDS", ["ANIM"]="CLEAR_WANTED", ["TYPE"]="REWARD", 
		["REWARDTABLE"] = 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="CLEAR_WANTED" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardWantedLevel.xml">
              <Property name="Message" value="" />
              <Property name="Level" value="0" />
            </Property>
            <Property name="LabelID" value="Clear Wanted" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
	},
	["ADD_WANTED"] = { ["TITLE"]="Add Wanted Level", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/GAMEMODE/STAR.DDS", ["ANIM"]="ADD_WANTED", ["TYPE"]="REWARD", 
		["REWARDTABLE"] = 
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="ADD_WANTED" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardWantedLevel.xml">
              <Property name="Message" value="" />
              <Property name="Level" value="3" />
            </Property>
            <Property name="LabelID" value="Clear Wanted" />
          </Property>
        </Property>
      </Property>
    </Property>
]]	
	},	
	--[""] = { ["TITLE"]="", ["ICON"]="" , ["ANIM"]="", ["TYPE"]="REWARD" },
}

SEED_TYPE_PATH = 
{
	["FIGHTER"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
	["DROPSHIP"]="MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
	["SCIENTIFIC"]="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
	["SHUTTLE"]="MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
	["EXOTIC"]="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN",
	["BIO"]="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN",
	["MULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN",
	["POLICESHIP"]="MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN",	
}

function GetTriggerAnim(ANIM)
return [[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM .. [[" />
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
end

function GetQuickAction(TITLE, ANIM, ICON, UNDERWATER)
return [[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="]] .. ANIM .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="]] .. UNDERWATER .. [[" />
      <Property name="RidingAnimationName" value="]] .. ANIM .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
end

function GetComponents(TRIGGER_ACTION)
return [[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
]] .. TRIGGER_ACTION .. [[
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]]
end

function GetShipRewardEntry(REWARDID, TYPE, SEED)
return [[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARDID .. [[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			  <Property name="Reward" value="GcRewardSpecificShip.xml">
				<Property name="ShipResource" value="GcResourceElement.xml">
				  <Property name="Filename" value="]] .. TYPE .. [[" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="]] .. SEED .. [[" />
					<Property name="UseSeedValue" value="True" />
				  </Property>
				  <Property name="AltId" value="" />
				  <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				  </Property>
				</Property>
				<Property name="ShipLayout" value="GcInventoryLayout.xml">
				  <Property name="Slots" value="48" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="1" />
					<Property name="UseSeedValue" value="True" />
				  </Property>
				  <Property name="Level" value="1" />
				</Property>
				<Property name="ShipInventory" value="GcInventoryContainer.xml">
				  <Property name="Slots">
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="LAUNCHER" />
					  <Property name="Amount" value="0" />
					  <Property name="MaxAmount" value="300" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPJUMP1" />
					  <Property name="Amount" value="0" />
					  <Property name="MaxAmount" value="100" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPSHIELD" />
					  <Property name="Amount" value="200" />
					  <Property name="MaxAmount" value="200" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPGUN1" />
					  <Property name="Amount" value="1000" />
					  <Property name="MaxAmount" value="1000" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="HYPERDRIVE" />
					  <Property name="Amount" value="24" />
					  <Property name="MaxAmount" value="120" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPLAS1" />
					  <Property name="Amount" value="1000" />
					  <Property name="MaxAmount" value="1000" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
				  </Property>
				  <Property name="ValidSlotIndices" />
				  <Property name="Class" value="GcInventoryClass.xml">
					<Property name="InventoryClass" value="S" />
				  </Property>
				  <Property name="SubstanceMaxStorageMultiplier" value="0" />
				  <Property name="ProductMaxStorageMultiplier" value="0" />
				  <Property name="BaseStatValues" />
				  <Property name="SpecialSlots" />
				  <Property name="Width" value="0" />
				  <Property name="Height" value="0" />
				  <Property name="IsCool" value="False" />
				  <Property name="Version" value="0" />
				</Property>
			  </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property> 
]]
end

function GetMultitoolRewardEntry(REWARDID, TYPE, SEED)
return [[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARDID .. [[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			  <Property name="Reward" value="GcRewardSpecificWeapon.xml">
				<Property name="WeaponResource" value="GcExactResource.xml">
				  <Property name="Filename" value="]] .. TYPE .. [[" />
				  <Property name="GenerationSeed" value="GcSeed.xml">
					<Property name="Seed" value="]] .. SEED .. [[" />
					<Property name="UseSeedValue" value="True" />
				  </Property>
				</Property>
				<Property name="WeaponLayout" value="GcInventoryLayout.xml">
				  <Property name="Slots" value="1" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="1" />
					<Property name="UseSeedValue" value="True" />
				  </Property>
				  <Property name="Level" value="1" />
				</Property>
				<Property name="WeaponInventory" value="GcInventoryContainer.xml">
				  <Property name="Slots" />
				  <Property name="ValidSlotIndices" />
				  <Property name="Class" value="GcInventoryClass.xml">
					<Property name="InventoryClass" value="S" />
				  </Property>
				  <Property name="SubstanceMaxStorageMultiplier" value="0" />
				  <Property name="ProductMaxStorageMultiplier" value="0" />
				  <Property name="BaseStatValues" />
				  <Property name="SpecialSlots" />
				  <Property name="Width" value="0" />
				  <Property name="Height" value="0" />
				  <Property name="IsCool" value="False" />
				  <Property name="Version" value="0" />
				</Property>
				<Property name="NameOverride" value="]] .. "" .. [[" />
			  </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property> 
]]
end

function GetRewardAction(ANIM, REWARDID)
return [[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARDID .. [[" />
                </Property>
              </Property>
            </Property>
]]
end

NEW_EMOTES_ALL = ""
EMOTE_GENERIC_ICON = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS"
EMOTE_GENERIC_ICON_HAPPY = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS"
EMOTE_GENERIC_ICON_ANGRY = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS"
EMOTE_GENERIC_ICON_GREET = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS"
NEW_EMOTE_TABLE =
{
	{ ["TITLE"]="Fake Death", ["ANIM"]="0H_DEATH", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/WIKI/COMBATHEADER.DDS" },
	{ ["TITLE"]="PANIC!", ["ANIM"]="0H_FALL_PANIC", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Happy 1", ["ANIM"]="0H_HAPPY_01", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 2", ["ANIM"]="0H_HAPPY_02", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 3", ["ANIM"]="0H_HAPPY_03", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 4", ["ANIM"]="0H_HAPPY_04", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 5", ["ANIM"]="0H_HAPPY_05", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 6", ["ANIM"]="0H_HAPPY_06", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 7", ["ANIM"]="0H_HAPPY_07", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Happy 8", ["ANIM"]="0H_HAPPY_08", ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
	{ ["TITLE"]="Angry 1", ["ANIM"]="0H_ANGRY_01", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Angry 2", ["ANIM"]="0H_ANGRY_02", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Angry 3", ["ANIM"]="0H_ANGRY_03", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Angry 4", ["ANIM"]="0H_ANGRY_04", ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
	{ ["TITLE"]="Greet 1", ["ANIM"]="0H_GREET_01", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 2", ["ANIM"]="0H_GREET_02", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 3", ["ANIM"]="0H_GREET_03", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 4", ["ANIM"]="0H_GREET_04", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 5", ["ANIM"]="0H_GREET_05", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 6", ["ANIM"]="0H_GREET_06", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Greet 7", ["ANIM"]="0H_GREET_07", ["ICON"]=EMOTE_GENERIC_ICON_GREET },
	{ ["TITLE"]="Slide", ["ANIM"]="0H_SLIDE_F", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Land Float", ["ANIM"]="0H_SWIM_IDLE", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Land Swim", ["ANIM"]="0H_SWIM_F", ["ICON"]=EMOTE_GENERIC_ICON },
	{ ["TITLE"]="Interact With Console", ["ANIM"]="0H_INT_CNSL_IN", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/POINT.DDS" },
	{ ["TITLE"]="Gather", ["ANIM"]="0H_INT_GATH_IN", ["ICON"]=EMOTE_GENERIC_ICON },
}
for i=1,#NEW_EMOTE_TABLE,1 do
	NEW_EMOTES_ALL = NEW_EMOTES_ALL .. GetQuickAction(NEW_EMOTE_TABLE[i]["TITLE"], NEW_EMOTE_TABLE[i]["ANIM"], NEW_EMOTE_TABLE[i]["ICON"], "True")
	NEW_EMOTES_ALL = NEW_EMOTES_ALL .. GetQuickAction(NEW_EMOTE_TABLE[i]["TITLE"], NEW_EMOTE_TABLE[i]["ANIM"], NEW_EMOTE_TABLE[i]["ICON"], "False")
end		

ANIMS 				= ""
COMPONENTS 			= ""
COMPONENTS_ALL		= ""
ACTIONCOMPONENTS 	= ""
ACTIONCOMPONENTS_TABLE = {}
EMOTEMENU 			= ""
REWARDTABLE 		= ""
SCANEVENTTABLE		= ""
ACTIONCOMPONENTS_COUNT = 0
ACTIONCOMPONENTS_LIMIT = 28 --actually 32
	
for i=1,#QUICK_ACTION_LIST,1 do
	print(QUICK_ACTION_LIST[i])
	if ACTIONCOMPONENTS_COUNT >= ACTIONCOMPONENTS_LIMIT then
		print("new GcTriggerActionComponentData")
		ACTIONCOMPONENTS_LIMIT = ACTIONCOMPONENTS_LIMIT - 1
		ACTIONCOMPONENTS_COUNT = 0
		table.insert(ACTIONCOMPONENTS_TABLE, ACTIONCOMPONENTS)
		ACTIONCOMPONENTS = ""
	end
	if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]] then 
		if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["COMPONENT"] then
			COMPONENTS = COMPONENTS 		.. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["COMPONENT"]
		end		
		if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["TYPE"] == "REWARD" and not QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ACTION_TRIGGER"] then
			ACTIONCOMPONENTS = ACTIONCOMPONENTS .. GetRewardAction(QUICK_ACTION_LIST[i], QUICK_ACTION_LIST[i])
		else
			ACTIONCOMPONENTS = ACTIONCOMPONENTS .. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ACTION_TRIGGER"]
		end
		EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["TITLE"], QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ANIM"], QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ICON"], "True")
		EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["TITLE"], QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ANIM"], QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ICON"], "False")
		ANIMS 				= ANIMS 			.. GetTriggerAnim(QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ANIM"])
		if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["REWARDTABLE"] then
			REWARDTABLE 		= REWARDTABLE 		.. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["REWARDTABLE"]
		end
		if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["SCANEVENTTABLE"] then
			SCANEVENTTABLE = SCANEVENTTABLE .. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["SCANEVENTTABLE"]
		end
	else --pure reward
		ACTIONCOMPONENTS 	= ACTIONCOMPONENTS 	.. GetRewardAction(QUICK_ACTION_LIST[i], QUICK_ACTION_LIST[i])	
		EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(QUICK_ACTION_LIST[i], QUICK_ACTION_LIST[i], GENERIC_BUTTON_ICON, "True")
		EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(QUICK_ACTION_LIST[i], QUICK_ACTION_LIST[i], GENERIC_BUTTON_ICON, "False")
		ANIMS 				= ANIMS 			.. GetTriggerAnim(QUICK_ACTION_LIST[i])	
	end
	ACTIONCOMPONENTS_COUNT = ACTIONCOMPONENTS_COUNT + 1
end

SHIPCOUNTER = 1
MULTITOOLCOUNTER = 1

if #USER_SEED_LIST > 0 then
	for i=1,#USER_SEED_LIST,1 do
		print(USER_SEED_LIST[i][1], USER_SEED_LIST[i][2])
		if ACTIONCOMPONENTS_COUNT >= ACTIONCOMPONENTS_LIMIT then 
			print("new GcTriggerActionComponentData")
			ACTIONCOMPONENTS_LIMIT = ACTIONCOMPONENTS_LIMIT - 1
			ACTIONCOMPONENTS_COUNT = 0
			table.insert(ACTIONCOMPONENTS_TABLE, ACTIONCOMPONENTS)
			ACTIONCOMPONENTS = ""
		end
		local REWARD_ID = ""
		if USER_SEED_LIST[i][1] == "MULTITOOL" then
			REWARD_ID 			= USER_SEED_LIST[i][1] .. "-" .. MULTITOOLCOUNTER
			MULTITOOLCOUNTER 	= MULTITOOLCOUNTER + 1
			REWARDTABLE 		= REWARDTABLE 		.. GetMultitoolRewardEntry(REWARD_ID, SEED_TYPE_PATH[USER_SEED_LIST[i][1]], tonumber(USER_SEED_LIST[i][2]))
			EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(REWARD_ID, REWARD_ID, "TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.GUN.DDS", "True")
			EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(REWARD_ID, REWARD_ID, "TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.GUN.DDS", "False")			
		else
			REWARD_ID 			= USER_SEED_LIST[i][1] .. "-" .. SHIPCOUNTER
			SHIPCOUNTER 		= SHIPCOUNTER + 1
			REWARDTABLE 		= REWARDTABLE 		.. GetShipRewardEntry(REWARD_ID, SEED_TYPE_PATH[USER_SEED_LIST[i][1]], tonumber(USER_SEED_LIST[i][2]))
			EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(REWARD_ID, REWARD_ID, "TEXTURES/UI/FRONTEND/ICONS/NOTIFICATIONS/ICON.SHIP.DDS", "True")
			EMOTEMENU 			= EMOTEMENU 		.. GetQuickAction(REWARD_ID, REWARD_ID, "TEXTURES/UI/FRONTEND/ICONS/NOTIFICATIONS/ICON.SHIP.DDS", "False")			
		end
		ACTIONCOMPONENTS 	= ACTIONCOMPONENTS 	.. GetRewardAction(REWARD_ID, REWARD_ID)
		ANIMS 				= ANIMS 			.. GetTriggerAnim(REWARD_ID)
		ACTIONCOMPONENTS_COUNT = ACTIONCOMPONENTS_COUNT + 1		
	end
end
table.insert(ACTIONCOMPONENTS_TABLE, ACTIONCOMPONENTS)

for i=1,#ACTIONCOMPONENTS_TABLE,1 do
	COMPONENTS_ALL = COMPONENTS_ALL .. GetComponents(ACTIONCOMPONENTS_TABLE[i])
end
COMPONENTS_ALL = COMPONENTS_ALL .. COMPONENTS

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzz-MetaMod.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_MAINTENANCE"]			= "Babscoole",
["MOD_DESCRIPTION"]			= "Meta Mod - Collection of new QOL quick menu actions",
["NMS_VERSION"]				= "3.84",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Anim","JETPACK_CLOSE"}, 
							["LINE_OFFSET"] 		= "+0",
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"] 				= ANIMS
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= COMPONENTS_ALL
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
							["ADD"] 				= EMOTEMENU
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Title", "EMOTE_KNEES"}, 
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= NEW_EMOTES_ALL
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= REWARDTABLE
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCANNING\SCANEVENTTABLETUTORIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Events"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= SCANEVENTTABLE
						}
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN]], 
							[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIPBACKUP.SCENE.MBIN]] 
						}, 
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[value="MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP" />]],
									[[value="MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIPBACKUP" />]]
								},
							}
						}
					}
				},			
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP\ENTITIES\POLICESHIP.ENTITY.MBIN]], 
									[[MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN]] 
								},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","PoliceShip",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.6"},
							}							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN]], 
									[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIPBACKUP.SCENE.MBIN]] 
								},
							}
						}
					}
				}
			}
		}
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
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GALACTICMAPOPTION.SCENE.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GALACTICMAPOPTION" />
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
  <Property name="Attributes">
	<Property value="TkSceneNodeAttributeData.xml">
	  <Property name="Name" value="ATTACHMENT" />
	  <Property name="AltID" value="" />
	  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GALACTICMAPOPTION.ENTITY.MBIN" />
	</Property>
  </Property>
  <Property name="Children" />
</Data>	
]]			
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\GALACTICMAPOPTION.ENTITY.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="FreighterGalacticMap" />
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
          <Property name="Triggers" />
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="GALACTICMAP" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>	  
              <Property name="Action">
                <Property value="GcFireSimpleInteractionAction.xml" />
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
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
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SAVE.SCENE.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SAVE" />
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
  <Property name="Attributes">
	<Property value="TkSceneNodeAttributeData.xml">
	  <Property name="Name" value="ATTACHMENT" />
	  <Property name="AltID" value="" />
	  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SAVE.ENTITY.MBIN" />
	</Property>
  </Property>
  <Property name="Children">
  </Property>
</Data>
]]			
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SAVE.ENTITY.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
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
      <Property name="NotifyEncounter" value="False" />
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
              <Property name="Event" value="GcStateTimeEvent.xml">
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
              <Property name="Event" value="GcStateTimeEvent.xml">
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
              <Property name="Event" value="GcAnimFrameEvent.xml">
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
		},		
	}
}

if REWARDTABLE == "" then table.remove(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"], 3) 
end
if SCANEVENTTABLE == "" then 
	if #NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"] > 3 then
		table.remove(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"], 4)
	else
		table.remove(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"], 3)	
	end
end

--"TEXTURES\UI\FRONTEND\ICONS\QUICKMENU\EMOTES\EMOTE_MENU.DDS", "TEXTURES\UI\FRONTEND\COMPONENTS\STAR.DDS"