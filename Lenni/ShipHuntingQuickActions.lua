QUICK_ACTION_LIST = 
{
	"MTSHOP",
	"R_SHOW_HIVEONLY",
	"R_BIOSHIPL",
	"CRASHEDSHIP",
	"SEC_SCN_OUTPOST",
	"REVEAL_PORTAL"
}

GENERIC_BUTTON_ICON = "TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS"

QUICK_ACTION_MENU = 
{
	["R_SHOW_HIVEONLY"] = 
	{
		["TITLE"] 			= "Find Sentinel Pillar",
		["ICON"] 			= "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS",
		["ANIM"] 			= "R_SHOW_HIVEONLY",
		["TYPE"]			= "REWARD"
},	
	["SEC_SCN_OUTPOST"] = 
	{
		["TITLE"] = "Locate Trading Post",
		["ICON"]  = "TEXTURES\UI\FRONTEND\ICONS\QUICKMENU\BUILDINGS.OUTPOST.DDS",
		["ANIM"]  = "SEC_SCN_OUTPOST",
		["TYPE"]  = "REWARD",
	},
	["R_BIOSHIPL"] = 
	{
		["TITLE"] = "Locate Living Ship",
		["ICON"]  = "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.FIEND.DDS",
		["ANIM"]  = "R_BIOSHIPL",
		["TYPE"]  = "REWARD",
	},
	["REVEAL_PORTAL"] = 
	{
		["TITLE"] = "Find Portal",
		["ICON"]  = "TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.PORTAL.DDS",
		["ANIM"]  = "REVEAL_PORTAL",
		["TYPE"]  = "REWARD",
	},
	["MTSHOP"] = 
	{
		["TITLE"] 			= "Find Minor Settlement",
		["ICON"] 			= "TEXTURES/UI/HUD/MENUS/RENDER.GUN.DDS",
		["ANIM"] 			= "MTSHOP",
		["TYPE"]			= "REWARD",
		["REWARDTABLE"] 	= 
	[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="MTSHOP" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="SHOP" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
	]],
	},
	
	["CRASHEDSHIP"] = 
	{
		["TITLE"] = "Locate Crashed Ship",
		["ICON"]  = "TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.DISTRESS.DDS",
		["ANIM"]  = "CRASHEDSHIP",
		["TYPE"]  = "REWARD",
		["REWARDTABLE"] 	= 
	[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="CRASHEDSHIP" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="DISTRESS" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="False" />
              <Property name="UseMissionSeedForEvent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property>
	]],
	},
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

table.insert(ACTIONCOMPONENTS_TABLE, ACTIONCOMPONENTS)

for i=1,#ACTIONCOMPONENTS_TABLE,1 do
	COMPONENTS_ALL = COMPONENTS_ALL .. GetComponents(ACTIONCOMPONENTS_TABLE[i])
end
COMPONENTS_ALL = COMPONENTS_ALL .. COMPONENTS

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipHuntingQuickActions.pak",
["MOD_AUTHOR"]				= "Lenni",
["MOD_DESCRIPTION"]			= "Quick Action to find Minor Settlements and Sentinel Pillars",
["NMS_VERSION"]				= "3.89",
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
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "R_SHOW_HIVEONLY"}, 
							["VALUE_CHANGE_TABLE"]	=
								{
									{"DoAerialScan", "False"}
								}
						},
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
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"MissionID", "BIOSHIP_REPEAT", "Name", "UI_BIO_SHIP_LOG_REPEAT_OPT3"},
							["PRECEDING_KEY_WORDS"]	= "NMSString0x10.xml",
							["SECTION_ACTIVE"]		= 1,
							["REMOVE"]				= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"MissionID", "BIOSHIP_REPEAT"},
							["PRECEDING_KEY_WORDS"]	= "GcAlienPuzzleOption.xml",
							["SECTION_ACTIVE"]		= 1,
							["VALUE_CHANGE_TABLE"]	=
								{
									{"Cost", ""}
								}
						}
					}
				}
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