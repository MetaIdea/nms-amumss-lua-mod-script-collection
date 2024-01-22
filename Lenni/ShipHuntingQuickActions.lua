QUICK_ACTION_LIST = 
{
	"MTSHOP",
	"R_SHOW_HIVEONLY",
	"R_SCANSENTCRASH",
	"R_CHART_ROBOT",
	"R_MONOLITH",
	"R_CHART_BUILDER",
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
		["TITLE"]	= "Locate Sentinel Pillar",
		["ICON"]	= "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS",
		["ANIM"]	= "R_SHOW_HIVEONLY",
		["TYPE"]	= "REWARD"
},	
	["SEC_SCN_OUTPOST"] = 
	{
		["TITLE"]	= "Locate Trading Post",
		["ICON"]	= "TEXTURES\UI\FRONTEND\ICONS\QUICKMENU\BUILDINGS.OUTPOST.DDS",
		["ANIM"]	= "SEC_SCN_OUTPOST",
		["TYPE"]	= "REWARD",
	},
	["R_SCANSENTCRASH"] = 
	{
		["TITLE"]	= "Locate Sentinel Ship",
		["ICON"]	= "TEXTURES\UI\HUD\ICONS\BUILDINGS\BUILDING.SENTINELCRASH.DDS",
		["ANIM"]	= "R_SCANSENTCRASH",
		["TYPE"]	= "REWARD",
	},
	["R_CHART_ROBOT"] = 
	{
		["TITLE"]	= "Locate Sentinel Multi-Tool",
		["ICON"]	= "TEXTURES\UI\FRONTEND\ICONS\MISSIONS\MISSION.ROBOTHEAD.OFF.DDS",
		["ANIM"]	= "R_CHART_ROBOT",
		["TYPE"]	= "REWARD",
	},
	["R_MONOLITH"] = 
	{
		["TITLE"]	= "Locate Monolith",
		["ICON"]	= "TEXTURES\UI\HUD\ICONS\BUILDINGS\BUILDING.RUNE.DDS",
		["ANIM"]	= "R_MONOLITH",
		["TYPE"]	= "REWARD",
    },
	["R_CHART_BUILDER"] = 
	{
		["TITLE"]	= "Locate Autophage Camp",
		["ICON"]	= "TEXTURES\UI\HUD\ICONS\BUILDINGS\BUILDING.ROBOTHEAD.DDS",
		["ANIM"]	= "R_CHART_BUILDER",
		["TYPE"]	= "REWARD",
    },
	["R_BIOSHIPL"] = 
	{
		["TITLE"]	= "Locate Living Ship",
		["ICON"]	= "TEXTURES\UI\FRONTEND\ICONS\MISSIONS\MISSION.FIEND.ON.DDS",
		["ANIM"]	= "R_BIOSHIPL",
		["TYPE"]	= "REWARD",
	},
	["REVEAL_PORTAL"] = 
	{
		["TITLE"]	= "Locate Portal",
		["ICON"]	= "TEXTURES\UI\HUD\ICONS\BUILDINGS\BUILDING.PORTAL.DDS",
		["ANIM"]	= "REVEAL_PORTAL",
		["TYPE"]	= "REWARD",
	},
	["MTSHOP"] = 
	{
		["TITLE"]	= "Locate Minor Settlement",
		["ICON"]	= "TEXTURES/UI/HUD/MENUS/RENDER.GUN.DDS",
		["ANIM"]	= "MTSHOP",
		["TYPE"]	= "REWARD",
		["REWARDTABLE"]	= 
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
		["TITLE"]	= "Locate Crashed Ship",
		["ICON"]	= "TEXTURES\UI\HUD\ICONS\BUILDINGS\BUILDING.DISTRESSSIGNAL.DDS",
		["ANIM"]	= "CRASHEDSHIP",
		["TYPE"]	= "REWARD",
		["REWARDTABLE"]	= 
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
      <Property name="EmoteID" value="]] .. ANIM .. [[" />
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
["LUA_AUTHOR"]				= "Lenni, Babscoole",
["MOD_DESCRIPTION"]			= "Quick Action to find various POIs for ship hunters",
["NMS_VERSION"]				= "4.43",
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
							["FOREACH_SKW_GROUP"] = {
								{"Id", "R_SHOW_HIVEONLY"},
								{"Id", "R_SCANSENTCRASH"},
								{"Id", "R_CHART_ROBOT"},
								{"Id", "R_CHART_BUILDER"},
							},
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
						},
						{
							["SPECIAL_KEY_WORDS"]		= {"MissionID", "BIOSHIP_REPEAT"},
							["PRECEDING_KEY_WORDS"]		= "StartingConditions",
							["REMOVE"] = "SECTION",
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\STARTEDONUSEMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"MissionID", "SENTSHIP_GALMAP", "Name", "SE_SENT_GALMAP"},
							["VALUE_CHANGE_TABLE"]	=
								{
									{"SurveyDistance", "0"}
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