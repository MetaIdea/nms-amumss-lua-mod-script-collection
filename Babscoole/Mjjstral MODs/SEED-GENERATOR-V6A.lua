DEFAULT_SEED_NUMBER = 2000

SELECTED_SEED_TYPES =
{
    "Fighter", "Dropship", "Scientific", "Shuttle", "Royal", "Alien", "Sail", "Robot",
    "MULTITOOL", "ROYALMULTITOOL", "ROBOTMULTITOOL", "ROBOTMULTITOOLB", "ATLASMULTITOOL", "STAFFMULTITOOL", "STAFFMTATLAS",
    -- "FREIGHTER", "CAPFREIGHTER", "FREIGHTERSMALL", "FREIGHTERTINY",
    -- "SCIENCEFRIG", "SUPPORTFRIG", "INDUSTRIALFRIG", "COMBATFRIG", "DIPLOMATICFRIG", "LIVINGFRIG", "GHOSTFRIG",
    -- "NPCFIFTH", "NPCFOURTH", "NPCGEK", "NPCKORVAX", "NPCVYKEEN",
    -- "ANTELOPE", "BEETLE", "SHARK", "BIRD", "FISH", "FLYINGLIZARD", "BUTTERFLY", "RODENT", "COW", "TRICERATOPS", "CAT",
    -- "FLYINGSNAKE", "STRIDER", "TREX", "SIXLEGCOW", "TWOLEGANTELOPE", "SIXLEGCAT", "GRUNT", "BLOB", "SPIDER", "QUAD", "FLOATSPIDER", "SWIMCOW",
    -- "SWIMRODENT", "FIEND", "FIENDFISHBIG", "FIENDFISHSMALL", "JELLYFISH", "CRAB", "ROCKCREATURE", "MINIFIEND", "WEIRDROLL", "WEIRDCRYSTAL", "WEIRDFLOAT",
    -- "WEIRDBUTTERFLY"
}

SEED_TYPE_PATH =
{
    ["Fighter"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
    ["Dropship"]="MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
    ["Scientific"]="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
    ["Shuttle"]="MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
    ["Royal"]="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN",
    ["Alien"]="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN",
    ["Sail"]="MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN",
    ["Robot"]="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN",

    ["MULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN",
    ["ROYALMULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN",
    ["ROBOTMULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL.SCENE.MBIN",
    ["ROBOTMULTITOOLB"]="MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOLB.SCENE.MBIN",
    ["ATLASMULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/ATLASMULTITOOL.SCENE.MBIN",
    ["STAFFMULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/STAFFMULTITOOL.SCENE.MBIN",
    ["STAFFMTATLAS"]="MODELS/COMMON/WEAPONS/MULTITOOL/STAFFMULTITOOLATLAS.SCENE.MBIN",

    -- ["FREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTER_PROC.SCENE.MBIN",
    -- ["CAPFREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN",
    -- ["FREIGHTERSMALL"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC.SCENE.MBIN",
    -- ["FREIGHTERTINY"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERTINY_PROC.SCENE.MBIN",

    -- ["SCIENCEFRIG"]="MODELS/COMMON/SPACECRAFT/FRIGATES/SCIENCEFRIGATELOD0.SCENE.MBIN",
    -- ["SUPPORTFRIG"]="MODELS/COMMON/SPACECRAFT/FRIGATES/SUPPORTFRIGATELOD0.SCENE.MBIN",
    -- ["INDUSTRIALFRIG"]="MODELS/COMMON/SPACECRAFT/FRIGATES/INDUSTRIALFRIGATELOD0.SCENE.MBIN",
    -- ["COMBATFRIG"]="MODELS/COMMON/SPACECRAFT/FRIGATES/COMBATFRIGATELOD0.SCENE.MBIN",
    -- ["DIPLOMATICFRIG"]="MODELS/COMMON/SPACECRAFT/FRIGATES/DIPLOMATICFRIGATELOD0.SCENE.MBIN",
    -- ["LIVINGFRIG"]="MODELS/COMMON/SPACECRAFT/FRIGATES/LIVINGFRIGATELOD0.SCENE.MBIN",
    -- ["GHOSTFRIG"]="MODELS/COMMON/SPACECRAFT/FRIGATES/GHOSTSHIPFRIGATELOD0.SCENE.MBIN",

    -- ["POLICESHIP"]="MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN",
    -- ["POLICEFREIGHTER"]="MODELS/COMMON/SPACECRAFT/POLICE/POLICEFREIGHTER.SCENE.MBIN",

    -- ["NPCFIFTH"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCFIFTH.SCENE.MBIN",
    -- ["NPCFOURTH"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCFOURTH.SCENE.MBIN",
    -- ["NPCGEK"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCGEK.SCENE.MBIN",
    -- ["NPCKORVAX"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCKORVAX.SCENE.MBIN",
    -- ["NPCVYKEEN"]="MODELS/COMMON/PLAYER/PLAYERCHARACTER/NPCVYKEEN.SCENE.MBIN",

    -- ["QUADRUPED"] = "MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN",
    -- ["WALKER"] = "MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN",
    -- ["DRONE"] = "MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN",
    -- ["ANTELOPE"] = "MODELS/PLANETS/CREATURES/ANTELOPERIG/ANTELOPE.SCENE.MBIN",
    -- ["BEETLE"] = "MODELS/PLANETS/BIOMES/CAVE/SMALLCREATURE/SUNBEETLE/SUNBEETLE.SCENE.MBIN",
    -- ["SHARK"] = "MODELS/PLANETS/CREATURES/SHARKRIG/SHARK.SCENE.MBIN",
    -- ["BIRD"] = "MODELS/PLANETS/CREATURES/SMALLBIRD/BIRD.SCENE.MBIN",
    -- ["FISH"] = "MODELS/PLANETS/CREATURES/FISH/SMALLFISH.SCENE.MBIN",
    -- ["FLYINGLIZARD"] = "MODELS/PLANETS/CREATURES/FLYINGLIZARDRIG/FLYINGLIZARD.SCENE.MBIN",
    -- ["BUTTERFLY"] = "MODELS/PLANETS/CREATURES/BUTTERFLYRIG/BUTTERFLY.SCENE.MBIN",
    -- ["RODENT"] = "MODELS/PLANETS/CREATURES/RODENTRIG/RODENT.SCENE.MBIN",
    -- ["COW"] = "MODELS/PLANETS/CREATURES/COWRIG/COW.SCENE.MBIN",
    -- ["TRICERATOPS"] = "MODELS/PLANETS/CREATURES/TRICERATOPSRIG/TRICERATOPS.SCENE.MBIN",
    -- ["CAT"] = "MODELS/PLANETS/CREATURES/CATRIG/CAT.SCENE.MBIN",
    -- ["FLYINGSNAKE"] = "MODELS/PLANETS/CREATURES/FLYINGSNAKE/FLYINGSNAKE.SCENE.MBIN",
    -- ["STRIDER"] = "MODELS/PLANETS/CREATURES/STRIDERRIG/STRIDER.SCENE.MBIN",
    -- ["TREX"] = "MODELS/PLANETS/CREATURES/TREXRIG/TREX.SCENE.MBIN",
    -- ["SIXLEGCOW"] = "MODELS/PLANETS/CREATURES/COWRIG/SIXLEGGEDCOW.SCENE.MBIN",
    -- ["TWOLEGANTELOPE"] = "MODELS/PLANETS/CREATURES/ANTELOPERIG/ANTELOPETWOLEGS.SCENE.MBIN",
    -- ["SIXLEGCAT"] = "MODELS/PLANETS/CREATURES/CATRIG/SIXLEGCAT.SCENE.MBIN",
    -- ["GRUNT"] = "MODELS/PLANETS/CREATURES/GRUNTRIG/GRUNT.SCENE.MBIN",
    -- ["BLOB"] = "MODELS/PLANETS/CREATURES/BLOBRIG/BLOB.SCENE.MBIN",
    -- ["SPIDER"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/SPIDER.SCENE.MBIN",
    -- ["QUAD"] = "MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN",
    -- ["FLOATSPIDER"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/SPIDERFLOAT.SCENE.MBIN",
    -- ["SWIMCOW"] = "MODELS/PLANETS/CREATURES/COWRIG/COWSWIM.SCENE.MBIN",
    -- ["SWIMRODENT"] = "MODELS/PLANETS/CREATURES/RODENTRIG/RODENTSWIM.SCENE.MBIN",
    -- ["FIEND"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/FIEND.SCENE.MBIN",
    -- ["FIENDFISHBIG"] = "MODELS/PLANETS/CREATURES/FISH/FISHFIEND.SCENE.MBIN",
    -- ["FIENDFISHSMALL"] = "MODELS/PLANETS/CREATURES/FISH/FISHFIENDSMALL.SCENE.MBIN",
    -- ["JELLYFISH"] = "MODELS/PLANETS/CREATURES/FISH/PROC_JELLYFISH.SCENE.MBIN",
    -- ["CRAB"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/SPIDER.SCENE.MBIN",
    -- ["ROCKCREATURE"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/ROCKCREATURE.SCENE.MBIN",
    -- ["MINIFIEND"] = "MODELS/PLANETS/CREATURES/SPIDERRIG/FIEND.SCENE.MBIN",
    -- ["WEIRDROLL"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDRIG.SCENE.MBIN",
    -- ["WEIRDCRYSTAL"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDRIGGROUND.SCENE.MBIN",
    -- ["WEIRDFLOAT"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDRIG.SCENE.MBIN",
    -- ["WEIRDBUTTERFLY"] = "MODELS/PLANETS/CREATURES/WEIRD/WEIRDBUTTERFLY.SCENE.MBIN",

    -- ["PLANET"]="MODELS/SPACE/PLANETS/PLANETMESH.SCENE.MBIN",

}

-- USER_SEED_LIST = --Add your own seeds here. If you only want own seeds set the numbers above to 0.  -- Commented out 20 March 2022, unused
-- {
    -- ["FIGHTER"] =
    -- {
    -- "-4266666232903262234", --HORIZOSHIP
    -- "-8174559354674307366", --ALPHAVSHIP
    -- },
    -- ["DROPSHIP"] =
    -- {
    -- --add your DROPSHIP seeds here
    -- },
    -- ["SCIENTIFIC"] =
    -- {
    -- --add your SCIENTIFIC seeds here
    -- },
    -- ["SHUTTLE"] =
    -- {
    -- --add your SHUTTLE seeds here
    -- },
    -- ["ROYAL"] =
    -- {
    -- --add your ROYAL seeds here
    -- },
    -- ["ALIEN"] =
    -- {
    -- --add your ALIEN seeds here
    -- },
    -- ["SAIL"] =
    -- {
    -- --add your SAILSHIP seeds here
    -- },
    -- ["ROBOT"] =
    -- {
    -- --add your SAILSHIP seeds here
    -- },
    -- ["MULTITOOL"] =
    -- {
        -- "-3613125059207465828", --REZOSUZ65
    -- },
    -- ["ROYALMULTITOOL"] =
    -- {
    -- --add your ROYALMULTITOOL seeds here
    -- },
    -- ["ROBOTMULTITOOL"] =
    -- {
    -- --add your ROBOTMULTITOOL seeds here
    -- },
    -- ["ROBOTMULTITOOLB"] =
    -- {
    -- --add your ROBOTMULTITOOLB seeds here
    -- },
    -- ["ATLASMULTITOOL"] =
    -- {
    -- --add your ATLASMULTITOOL seeds here
    -- },
    -- ["STAFFMULTITOOL"] =
    -- {
    -- --add your STAFFMULTITOOL seeds here
    -- },
-- }

----------------------------------------------------
--CODINGS-------------------------------------------
----------------------------------------------------

RANDOMSEED_INIT = false
function GetSeed()
    local SEED = "0x"
    local HEX = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"}
    if not RANDOMSEED_INIT then
        math.randomseed(82398*os.time())
        RANDOMSEED_INIT = true
    end
    for _=1,16,1 do
        SEED = SEED .. HEX[math.random(1, #HEX)]
    end
    return SEED
end

-- function HexToDec(number)
    -- if type(number) == "number" then return number
    -- elseif string.find(tostring(number),"0x") then return tonumber(number)
    -- else return tonumber(number,16)
    -- end
-- end

function HexToDec(number)
    if type(number) == "number" then return number
    elseif string.find(tostring(number),"0x") then return math.abs(tonumber(number))
    else return math.abs(tonumber(number,16))
    end
end

GENERIC_ANIMATION_FILE = "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"

ANIM_TEMPLATE_ALL = ""
QUICK_ACTION_BUTTON_ALL = ""
ACTION_TRIGGER_COMPONENT = ""
CUSTOM_GENERICREWARD_ALL = ""

function CreateCustomMultitoolRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_ENTRY =
[[
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificWeapon">
              <Property name="GcRewardSpecificWeapon">
                <Property name="WeaponInventory" value="GcInventoryContainer">
                  <Property name="Slots">
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="LASER" />
                      <Property name="Amount" value="200" />
                      <Property name="MaxAmount" value="200" />
                      <Property name="DamageFactor" value="0.000000" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="ValidSlotIndices" />
                  <Property name="Class" value="GcInventoryClass">
                    <Property name="InventoryClass" value="S" />
                  </Property>
                  <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
                    <Property name="InventoryStackSizeGroup" value="Default" />
                  </Property>
                  <Property name="BaseStatValues" />
                  <Property name="SpecialSlots" />
                  <Property name="Width" value="0" />
                  <Property name="Height" value="0" />
                  <Property name="IsCool" value="false" />
                  <Property name="Name" value="" />
                  <Property name="Version" value="0" />
                </Property>
                <Property name="WeaponLayout" value="GcInventoryLayout">
                  <Property name="Slots" value="24" />
                  <Property name="Seed" value="]] .. DEC_SEED .. [[" />
                  <Property name="Level" value="1" />
                </Property>
                <Property name="WeaponResource" value="GcExactResource">
                  <Property name="Filename" value="]] .. SEED_TYPE_PATH[TYPE] .. [[" />
                  <Property name="GenerationSeed" value="]] .. DEC_SEED .. [[" />
                </Property>
                <Property name="NameOverride" value="]] .. HEX_SEED .. [[" />
                <Property name="IsGift" value="true" />
                <Property name="IsRewardWeapon" value="true" />
                <Property name="FormatAsSeasonal" value="false" />
              </Property>
            </Property>
          </Property>
]]
return GENERIC_REWARD_ENTRY
end

function CreateRewardMainEntry(REWARD_ID, SUB_ENTRY)
local GENERIC_REWARD_MAIN_ENTRY =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
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
          <Property name="Anims" value="TkAnimationData">
            <Property name="Anim" value="]] .. ANIM_ID .. [[" />
            <Property name="Filename" value="]] .. GENERIC_ANIMATION_FILE .. [[" />
            <Property name="AnimType" value="OneShotBlendable" />
            <Property name="AnimGroupOverride" value="false" />
            <Property name="Priority" value="0" />
            <Property name="FrameStart" value="0" />
            <Property name="FrameEnd" value="0" />
            <Property name="FrameEndGame" value="0" />
            <Property name="StartNode" value="" />
            <Property name="ExtraStartNodes" />
            <Property name="AdditiveBaseAnim" value="" />
            <Property name="AdditiveBaseFrame" value="0.000000" />
            <Property name="Mask" value="" />
            <Property name="OffsetMin" value="0.000000" />
            <Property name="OffsetMax" value="0.000000" />
            <Property name="Delay" value="0.000000" />
            <Property name="Speed" value="1.000000" />
            <Property name="ActionStartFrame" value="0.000000" />
            <Property name="ActionFrame" value="-1.000000" />
            <Property name="Actions" />
            <Property name="CreatureSize" value="AllSizes" />
            <Property name="Notifies" />
            <Property name="Additive" value="false" />
            <Property name="Mirrored" value="false" />
            <Property name="Active" value="true" />
            <Property name="Has30HzFrames" value="false" />
            <Property name="GameData" value="TkAnimationGameData">
              <Property name="RootMotion" value="None" />
              <Property name="BlockPlayerMovement" value="false" />
              <Property name="BlockPlayerWeapon" value="Unblocked" />
            </Property>
          </Property>
]]
return ANIM_TEMPLATE
end

function CreateActionTriggerRewardEntry(ANIM_ID, REWARD)
ACTION_TRIGGER_ENTRY =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="]] .. ANIM_ID .. [[" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="REWARD" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="REWARD" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcRewardAction">
                    <Property name="GcRewardAction">
                      <Property name="Reward" value="]] .. REWARD .. [[" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BOOT" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
return ACTION_TRIGGER_ENTRY
end

function CreateActionTriggerComponent(ACTION_TRIGGER_LIST_)
ACTION_TRIGGER_COMPONENT =
[[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
]] .. ACTION_TRIGGER_LIST_ .. [[
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
]]
return ACTION_TRIGGER_COMPONENT
end

function CreateQuickActionMenuEntry(BUTTON_TITLE, ANIM_ID)

                local ICON = ""
                if ANIM_ID == "FIGHTER" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.TWITCH.SHIP11.DDS"
                elseif ANIM_ID == "DROPSHIP" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.TWITCH.SHIP15.DDS"
                elseif ANIM_ID == "SCIENTIFIC" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.TWITCH.SHIP12.DDS"
                elseif ANIM_ID == "SHUTTLE" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL.TWITCH.SHIP06.DDS"
                elseif ANIM_ID == "ROYAL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL.SHIP_B.DDS"
                elseif ANIM_ID == "ALIEN" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.EXPEDITION.MINIBIOFRIG.DDS"
                elseif ANIM_ID == "SAIL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL.EXPEDITION.BANNER01.DDS"
                elseif ANIM_ID == "ROBOT" then
                    ICON = "TEXTURES\UI\HUD\POLICEMESSAGEICON.DDS"
                elseif ANIM_ID == "MULTITOOL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\HERO.TWITCH.GUN02.DDS"
                elseif ANIM_ID == "ROYALMULTITOOL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\HERO.TWITCH.GUN05.DDS"
                elseif ANIM_ID == "STAFFMULTITOOL" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\ROBOTPARTS\ROBOTPARTS.STAFFPOLE.5.DDS"
                elseif ANIM_ID == "STAFFMTATLAS" then
                    ICON = "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\HERO1.EXPEDITION.ATLASSTAFF.DDS"
                else ICON = "TEXTURES\UI\FRONTEND\COMPONENTS\STAR.DDS"
                end


QUICK_ACTION_BUTTON_TEMPLATE =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="EmoteID" value="]] .. ANIM_ID .. [[" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="PropData" value="GcPlayerEmotePropData.xml">
        <Property name="Model" value="" />
        <Property name="Scale" value="0" />
        <Property name="Hand" value="GcHand.xml">
          <Property name="Hand" value="Right" />
        </Property>
        <Property name="IsHologram" value="False" />
        <Property name="ScanEffectNodeName" value="" />
        <Property name="ScanEffect" value="GcScanEffectData.xml">
          <Property name="Id" value="" />
          <Property name="ScanEffectType" value="Building" />
          <Property name="Colour" value="Colour.xml">
            <Property name="R" value="0.823" />
            <Property name="G" value="0.475" />
            <Property name="B" value="0.432" />
            <Property name="A" value="1" />
          </Property>
          <Property name="BasecolourIntensity" value="0.2" />
          <Property name="ScanlinesSeparation" value="0.1" />
          <Property name="FresnelIntensity" value="3" />
          <Property name="GlowIntensity" value="0" />
          <Property name="WaveOffset" value="0" />
          <Property name="WaveActive" value="True" />
          <Property name="FixedUpAxis" value="False" />
          <Property name="Transparent" value="False" />
          <Property name="ModelFade" value="False" />
          <Property name="FadeInTime" value="0.2" />
          <Property name="FadeOutTime" value="0.2" />
        </Property>
        <Property name="DelayTime" value="0" />
      </Property>
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="True" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="IconResource" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="IconPetCommandResource" value="GcResource.xml">
        <Property name="ResourceID" value="0" />
      </Property>
    </Property>
]]
return QUICK_ACTION_BUTTON_TEMPLATE
end

function CreateSeedRewardLists()
  local count = 1000
  local SEED_COUNT = 1
  print("starting big loop...")
    for i=1,#SELECTED_SEED_TYPES,1 do
            local Seed = ""
            local SREA = {}
            local SST = SELECTED_SEED_TYPES[i]
            for _j=1,DEFAULT_SEED_NUMBER,1 do
                Seed = GetSeed()
                local SREA_tmp = ""
                    SREA_tmp = CreateCustomMultitoolRewardSubEntry(HexToDec(Seed), Seed, SST)
            table.insert(SREA,SREA_tmp)
            --print(SEED_COUNT .. "." .. SST .. ": " .. Seed)
            if SEED_COUNT%count == 0 then
                print(SEED_COUNT)
            end
            SEED_COUNT = SEED_COUNT + 1
        end
        SUB_REWARD_ENTRY_ALL = table.concat(SREA)
    local ID = string.upper(SST)
    QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry("RANDOM " .. ID, ID)
    ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(ID)
    ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(CreateActionTriggerRewardEntry(ID, ID))
    CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateRewardMainEntry(ID, SUB_REWARD_ENTRY_ALL)
  end
  print(SEED_COUNT)
end

math.randomseed(os.time())
CreateSeedRewardLists()

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zzzSEED-GENERATOR-V6A",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["MOD_DESCRIPTION"] = "Adds random seed buttons to the quick action emote menu",
["NMS_VERSION"]     = "5.73",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData"},
                            ["PRECEDING_KEY_WORDS"] = {"Anims"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = ANIM_TEMPLATE_ALL
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = ACTION_TRIGGER_COMPONENT
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = QUICK_ACTION_BUTTON_ALL
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = CUSTOM_GENERICREWARD_ALL
                        }
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\TESTS\EFFECTTEST.ANIM.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
        },
    }
}