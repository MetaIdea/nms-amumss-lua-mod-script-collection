--SEED GENERATOT V3 by Mjjstral (contact: @Mjjstral#1157 on discord)

DoFirstPass = (os.getenv("SkipScriptFirstCheck") ~= nil)

DEFAULT_SEED_NUMBER = 2000

NUMBER_OF_SEEDS =
{
	["FIGHTER"]		=	DEFAULT_SEED_NUMBER,
	["DROPSHIP"] 	=	DEFAULT_SEED_NUMBER,
	["SCIENTIFIC"]	= 	DEFAULT_SEED_NUMBER,
	["SHUTTLE"]		=   DEFAULT_SEED_NUMBER,
	["EXOTIC"]		=  	DEFAULT_SEED_NUMBER,
	["BIO"]			=  	DEFAULT_SEED_NUMBER,
	["MULTITOOL"] 	= 	DEFAULT_SEED_NUMBER,
}

SELECTED_SEED_TYPES = 
{
	"FIGHTER", "DROPSHIP", "SCIENTIFIC", "SHUTTLE", "EXOTIC", "BIO",
	"MULTITOOL", 
	"FREIGHTER", "CAPITALFREIGHTER", "FREIGHTERSMALL", "FREIGHTERTINY",
	"SCIENCEFRIGATE", "SUPPORTFRIGATE", "INDUSTRIALFRIGATE", "COMBATFRIGATE", "DIPLOMATICFRIGATE",
	"NPCFIFTH", "NPCFOURTH", "NPCGEK", "NPCKORVAX", "NPCVYKEEN",
	"ANTELOPE", "BEETLE", "SHARK", "BIRD", "FISH", "FLYINGLIZARD", "BUTTERFLY", "RODENT", "COW", "TRICERATOPS", "CAT", 
	"FLYINGSNAKE", "STRIDER", "TREX", "SIXLEGCOW", "TWOLEGANTELOPE", "SIXLEGCAT", "GRUNT", "BLOB", "SPIDER", "QUAD", "FLOATSPIDER", "SWIMCOW", 
	"SWIMRODENT", "FIEND", "FIENDFISHBIG", "FIENDFISHSMALL", "JELLYFISH", "CRAB", "ROCKCREATURE", "MINIFIEND", "WEIRDROLL", "WEIRDCRYSTAL", "WEIRDFLOAT", 
	"WEIRDBUTTERFLY"
}

SEED_TYPES = 
{ 
	"FIGHTER", "DROPSHIP", "SCIENTIFIC", "SHUTTLE", "EXOTIC", "BIO",
	"MULTITOOL", 
	"FREIGHTER", "CAPITALFREIGHTER", "FREIGHTERSMALL", "FREIGHTERTINY",
	"SCIENCEFRIGATE", "SUPPORTFRIGATE", "INDUSTRIALFRIGATE", "COMBATFRIGATE", "DIPLOMATICFRIGATE",
	"POLICEFREIGHTER", "POLICESHIP",
	"NPCFIFTH", "NPCFOURTH", "NPCGEK", "NPCKORVAX", "NPCVYKEEN",
	"TREX",
	"PLANET",
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
	
	["FREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTER_PROC.SCENE.MBIN",
	["CAPITALFREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN",
	["CREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN",
	
	["FREIGHTERSMALL"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC.SCENE.MBIN",
	["FREIGHTERTINY"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERTINY_PROC.SCENE.MBIN",
	
	["SCIENCEFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/SCIENCEFRIGATELOD0.SCENE.MBIN",
	["SUPPORTFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/SUPPORTFRIGATELOD0.SCENE.MBIN",
	["INDUSTRIALFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/INDUSTRIALFRIGATELOD0.SCENE.MBIN",
	["COMBATFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/COMBATFRIGATELOD0.SCENE.MBIN",
	["DIPLOMATICFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/DIPLOMATICFRIGATELOD0.SCENE.MBIN",
	
	["POLICESHIP"]="MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN",
	["POLICEFREIGHTER"]="MODELS/COMMON/SPACECRAFT/POLICE/POLICEFREIGHTER.SCENE.MBIN",
	
	["NPCFIFTH"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCFIFTH.SCENE.MBIN",
	["NPCFOURTH"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCFOURTH.SCENE.MBIN",	
	["NPCGEK"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCGEK.SCENE.MBIN",
	["NPCKORVAX"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCKORVAX.SCENE.MBIN",	
	["NPCVYKEEN"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCVYKEEN.SCENE.MBIN",

	["QUADRUPED"] = "MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN",
	["WALKER"] = "MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN",
	["DRONE"] = "MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN",
	["ANTELOPE"] = "MODELS/PLANETS/CREATURES/ANTELOPERIG/ANTELOPE.SCENE.MBIN",
	["BEETLE"] = "MODELS/PLANETS/BIOMES/CAVE/SMALLCREATURE/SUNBEETLE/SUNBEETLE.SCENE.MBIN",
	["SHARK"] = "MODELS/PLANETS/CREATURES/SHARKRIG/SHARK.SCENE.MBIN",
	["BIRD"] = "MODELS/PLANETS/CREATURES/SMALLBIRD/BIRD.SCENE.MBIN",
	["FISH"] = "MODELS/PLANETS/CREATURES/FISH/SMALLFISH.SCENE.MBIN",
	["FLYINGLIZARD"] = "MODELS/PLANETS/CREATURES/FLYINGLIZARDRIG/FLYINGLIZARD.SCENE.MBIN",
	["BUTTERFLY"] = "MODELS/PLANETS/CREATURES/BUTTERFLYRIG/BUTTERFLY.SCENE.MBIN",
	["RODENT"] = "MODELS/PLANETS/CREATURES/RODENTRIG/RODENT.SCENE.MBIN",
	["COW"] = "MODELS/PLANETS/CREATURES/COWRIG/COW.SCENE.MBIN",
	["TRICERATOPS"] = "MODELS/PLANETS/CREATURES/TRICERATOPSRIG/TRICERATOPS.SCENE.MBIN",
	["CAT"] = "MODELS/PLANETS/CREATURES/CATRIG/CAT.SCENE.MBIN",
	["FLYINGSNAKE"] = "MODELS/PLANETS/CREATURES/FLYINGSNAKE/FLYINGSNAKE.SCENE.MBIN",
	["STRIDER"] = "MODELS/PLANETS/CREATURES/STRIDERRIG/STRIDER.SCENE.MBIN",
	["TREX"] = "MODELS/PLANETS/CREATURES/TREXRIG/TREX.SCENE.MBIN",
	["SIXLEGCOW"] = "MODELS/PLANETS/CREATURES/COWRIG/SIXLEGGEDCOW.SCENE.MBIN",
	["TWOLEGANTELOPE"] = "MODELS/PLANETS/CREATURES/ANTELOPERIG/ANTELOPETWOLEGS.SCENE.MBIN",
	["SIXLEGCAT"] = "MODELS/PLANETS/CREATURES/CATRIG/SIXLEGCAT.SCENE.MBIN",
	["GRUNT"] = "MODELS/PLANETS/CREATURES/GRUNTRIG/GRUNT.SCENE.MBIN",
	["BLOB"] = "MODELS/PLANETS/CREATURES/BLOBRIG/BLOB.SCENE.MBIN",
	["SPIDER"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/SPIDER.SCENE.MBIN",
	["QUAD"] = "MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN",
	["FLOATSPIDER"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/SPIDERFLOAT.SCENE.MBIN",
	["SWIMCOW"] = "MODELS/PLANETS/CREATURES/COWRIG/COWSWIM.SCENE.MBIN",
	["SWIMRODENT"] = "MODELS/PLANETS/CREATURES/RODENTRIG/RODENTSWIM.SCENE.MBIN",
	["FIEND"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/FIEND.SCENE.MBIN",
	["FIENDFISHBIG"] = "MODELS/PLANETS/CREATURES/FISH/FISHFIEND.SCENE.MBIN",
	["FIENDFISHSMALL"] = "MODELS/PLANETS/CREATURES/FISH/FISHFIENDSMALL.SCENE.MBIN",
	["JELLYFISH"] = "MODELS/PLANETS/CREATURES/FISH/PROC_JELLYFISH.SCENE.MBIN",
	["CRAB"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/SPIDER.SCENE.MBIN",
	["ROCKCREATURE"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/ROCKCREATURE.SCENE.MBIN",
	["MINIFIEND"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/FIEND.SCENE.MBIN",
	["WEIRDROLL"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDRIG.SCENE.MBIN",
	["WEIRDCRYSTAL"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDRIGGROUND.SCENE.MBIN",
	["WEIRDFLOAT"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDRIG.SCENE.MBIN",
	["WEIRDBUTTERFLY"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDBUTTERFLY.SCENE.MBIN",
	
	--TREE

	["PLANET"]="MODELS/SPACE/PLANETS/PLANETMESH.SCENE.MBIN",
	
}

USER_SEED_LIST = --Add your own seeds here. If you only want own seeds set the numbers above to 0.
{
	["FIGHTER"] =
	{
	"-4266666232903262234", --HORIZOSHIP
	"-8174559354674307366", --ALPHAVSHIP
	}, 
	["DROPSHIP"] =
	{
	--add your DROPSHIP seeds here
	},
	["SCIENTIFIC"] =
	{
	--add your SCIENTIFIC seeds here
	},
	["SHUTTLE"] =
	{
	--add your SHUTTLE seeds here
	}, 
	["EXOTIC"] =
	{
	--add your EXOTIC seeds here
	},
	["MULTITOOL"] =
	{
		"-3613125059207465828", --REZOSUZ65
	},
}

----------------------------------------------------
--CODINGS-------------------------------------------
----------------------------------------------------

RANDOMSEED_INIT = false
function GetSeed()
	local SEED = "0x"
	local HEX = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"}
	if not RANDOMSEED_INIT then
		math.randomseed(82398*os.time())
		math.random() 
		math.random() 
		math.random()
		RANDOMSEED_INIT = true
	end
	for i=1,16,1 do
		SEED = SEED .. HEX[math.random(1, #HEX)]
	end
	return SEED
end

function HexToDec(number)
	if type(number) == "number" then return number
	elseif string.find(tostring(number),"0x") then return tonumber(number)
	else return tonumber(number,16) 
	end
end

GENERIC_ANIMATION_FILE = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" 
BUTTON_ICON = "TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS"

ANIM_TEMPLATE_ALL = ""
QUICK_ACTION_BUTTON_ALL = ""
ACTION_TRIGGER_COMPONENT = ""
ACTION_TRIGGER_ALL = ""
CUSTOM_GENERICREWARD_ALL = ""

function CreateCustomMultitoolRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_ENTRY =
[[
	<Property value="GcRewardTableItem.xml">
	<Property name="PercentageChance" value="100" />
	<Property name="Reward" value="GcRewardSpecificWeapon.xml">
	  <Property name="WeaponInventory" value="GcInventoryContainer.xml">
		<Property name="Slots">
		  <Property value="GcInventoryElement.xml">
			<Property name="Type" value="GcInventoryType.xml">
			  <Property name="InventoryType" value="Technology" />
			</Property>
			<Property name="Id" value="LASER" />
			<Property name="Amount" value="200" />
			<Property name="MaxAmount" value="200" />
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
		<Property name="Name" value="" />
		<Property name="Version" value="0" />
	  </Property>
	  <Property name="WeaponLayout" value="GcInventoryLayout.xml">
		<Property name="Slots" value="24" />
		<Property name="Seed" value="GcSeed.xml">
		  <Property name="Seed" value="1" />
		  <Property name="UseSeedValue" value="True" />
		</Property>
		<Property name="Level" value="1" />
	  </Property>
	  <Property name="WeaponResource" value="GcExactResource.xml">
		<Property name="Filename" value="]] .. SEED_TYPE_PATH[TYPE] .. [[" />
		<Property name="GenerationSeed" value="GcSeed.xml">
		  <Property name="Seed" value="]] .. DEC_SEED .. [[" />
		  <Property name="UseSeedValue" value="True" />
		</Property>
	  </Property>
	  <Property name="NameOverride" value="]] .. HEX_SEED .. [[" />
	  <Property name="IsGift" value="True" />
	  <Property name="IsRewardWeapon" value="True" />
	  <Property name="FormatAsSeasonal" value="False" />
	</Property>
	<Property name="LabelID" value="" />
  </Property>
]]
return GENERIC_REWARD_ENTRY
end

function CreateCustomShipRewardMainEntry(REWARD_ID, SUB_ENTRY, TYPE) 
local GENERIC_REWARD_MAIN_ENTRY =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="]] .. TYPE .. [[" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
]] .. SUB_ENTRY .. [[
        </Property>
      </Property>
    </Property> 
]]
return GENERIC_REWARD_MAIN_ENTRY
end

--------------------------------------------------------------------------


function CreateAnimEntry(ANIM_ID)
ANIM_TEMPLATE =
[[
		<Property value="TkAnimationData.xml">
			<Property name="Anim" value="]] .. ANIM_ID .. [[" />
		  <Property name="Filename" value="]] .. GENERIC_ANIMATION_FILE .. [[" />
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
return ANIM_TEMPLATE
end

function CreateActionTriggerRewardEntry(ANIM_ID, REWARD)
ACTION_TRIGGER_ENTRY =
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM_ID .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD .. [[" />
                </Property>		
              </Property>
            </Property>			
]]
return ACTION_TRIGGER_ENTRY
end

function CreateActionTriggerComponent(ACTION_TRIGGER_LIST_)
local ACTION_TRIGGER_COMPONENT =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
]] .. ACTION_TRIGGER_LIST_ .. [[
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]]
return ACTION_TRIGGER_COMPONENT
end

function CreateQuickActionMenuEntry(BUTTON_TITLE, ANIM_ID, ICON)
QUICK_ACTION_BUTTON_TEMPLATE =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
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
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
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
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
return QUICK_ACTION_BUTTON_TEMPLATE
end

function FormatPath(FILEPATH)
	return string.gsub(FILEPATH, string.char(92) .. string.char(92), string.char(92))	
end

function GetObjectID(SCENEPATH)
	return string.gsub(string.match(string.match(SCENEPATH, "^.+/(.+)$"), "(.+)%.(.+)"), ".SCENE", "")
end

SEED_COUNT = 1
function CreateSeedRewardLists()
	for i=1,#SELECTED_SEED_TYPES,1 do
		local Seed = ""
		SUB_REWARD_ENTRY_ALL = ""
		for j=1,DEFAULT_SEED_NUMBER,1 do
			Seed = GetSeed()
			SUB_REWARD_ENTRY_ALL = SUB_REWARD_ENTRY_ALL .. CreateCustomMultitoolRewardSubEntry(HexToDec(Seed), Seed, SELECTED_SEED_TYPES[i])
			print(SEED_COUNT .. "." .. SELECTED_SEED_TYPES[i] .. ": " .. Seed)
			SEED_COUNT = SEED_COUNT + 1
		end
		local ID = SELECTED_SEED_TYPES[i] .. "_REWARD"
		QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry("RANDOM " .. SELECTED_SEED_TYPES[i], ID, BUTTON_ICON)	
		ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(ID)
		ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(CreateActionTriggerRewardEntry(ID, ID))	
		CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardMainEntry(ID, SUB_REWARD_ENTRY_ALL, "Select")
	end
end

CreateSeedRewardLists()

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzzSEED-GENERATOR-V4A.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["Maintainer"]				= "Babscoole",
["MOD_DESCRIPTION"]			= "Adds random seed buttons to the quick action emote menu",
["NMS_VERSION"]				= "3.75",
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
							["SPECIAL_KEY_WORDS"]   = {"Anim", "JETPACK_CLOSE"}, 
							["LINE_OFFSET"] 		= "+0",
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"] 				= ANIM_TEMPLATE_ALL
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= ACTION_TRIGGER_COMPONENT
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
							["ADD"] 				= QUICK_ACTION_BUTTON_ALL
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
							["ADD"] 				= CUSTOM_GENERICREWARD_ALL
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
		}
	}
}

