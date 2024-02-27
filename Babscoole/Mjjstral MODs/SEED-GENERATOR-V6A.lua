DEFAULT_SEED_NUMBER = 2000

SELECTED_SEED_TYPES =
{
    "Fighter", "Dropship", "Scientific", "Shuttle", "Royal", "Alien", "Sail", "Robot",
    "MULTITOOL", "ROYALMULTITOOL", "ROBOTMULTITOOL", "ROBOTMULTITOOLB", "ATLASMULTITOOL", "STAFFMULTITOOL", "STAFFMTATLAS",
    "FREIGHTER", "CAPITALFREIGHTER", "FREIGHTERSMALL", "FREIGHTERTINY",
    "SCIENCEFRIGATE", "SUPPORTFRIGATE", "INDUSTRIALFRIGAT", "COMBATFRIGATE", "DIPLOMATICFRIGAT", "LIVINGFRIGATE",
    "NPCFIFTH", "NPCFOURTH", "NPCGEK", "NPCKORVAX", "NPCVYKEEN",
    "ANTELOPE", "BEETLE", "SHARK", "BIRD", "FISH", "FLYINGLIZARD", "BUTTERFLY", "RODENT", "COW", "TRICERATOPS", "CAT",
    "FLYINGSNAKE", "STRIDER", "TREX", "SIXLEGCOW", "TWOLEGANTELOPE", "SIXLEGCAT", "GRUNT", "BLOB", "SPIDER", "QUAD", "FLOATSPIDER", "SWIMCOW",
    "SWIMRODENT", "FIEND", "FIENDFISHBIG", "FIENDFISHSMALL", "JELLYFISH", "CRAB", "ROCKCREATURE", "MINIFIEND", "WEIRDROLL", "WEIRDCRYSTAL", "WEIRDFLOAT",
    "WEIRDBUTTERFLY"
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

    ["FREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTER_PROC.SCENE.MBIN",
    ["CAPITALFREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN",
    ["CREIGHTER"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN",

    ["FREIGHTERSMALL"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERSMALL_PROC.SCENE.MBIN",
    ["FREIGHTERTINY"]="MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERTINY_PROC.SCENE.MBIN",

    ["SCIENCEFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/SCIENCEFRIGATELOD0.SCENE.MBIN",
    ["SUPPORTFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/SUPPORTFRIGATELOD0.SCENE.MBIN",
    ["INDUSTRIALFRIGAT"]="MODELS/COMMON/SPACECRAFT/FRIGATES/INDUSTRIALFRIGATELOD0.SCENE.MBIN",
    ["COMBATFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/COMBATFRIGATELOD0.SCENE.MBIN",
    ["DIPLOMATICFRIGAT"]="MODELS/COMMON/SPACECRAFT/FRIGATES/DIPLOMATICFRIGATELOD0.SCENE.MBIN",
    ["LIVINGFRIGATE"]="MODELS/COMMON/SPACECRAFT/FRIGATES/LIVINGFRIGATELOD0.SCENE.MBIN",

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

    ["PLANET"]="MODELS/SPACE/PLANETS/PLANETMESH.SCENE.MBIN",

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
        -- math.random()
        -- math.random()
        -- math.random()
        RANDOMSEED_INIT = true
    end
    for _=1,16,1 do
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

GENERIC_ANIMATION_FILE = "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"

ANIM_TEMPLATE_ALL = ""
QUICK_ACTION_BUTTON_ALL = ""
ACTION_TRIGGER_COMPONENT = ""
CUSTOM_GENERICREWARD_ALL = ""

function CreateCustomMultitoolRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_ENTRY =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
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
                <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup.xml">
                  <Property name="InventoryStackSizeGroup" value="Default" />
                </Property>
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
          </Property>
]]
return GENERIC_REWARD_ENTRY
end

function CreateRewardMainEntry(REWARD_ID, SUB_ENTRY)
local GENERIC_REWARD_MAIN_ENTRY =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
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
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM_ID .. [[" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="Filename" value="]] .. GENERIC_ANIMATION_FILE .. [[" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="Priority" value="0" />
          <Property name="OffsetMin" value="0" />
          <Property name="OffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionStartFrame" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="AnimType" value="OneShotBlendable" />
          <Property name="CreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="Has30HzFrames" value="False" />
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
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="REWARD" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="REWARD" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD .. [[" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
                </Property>
              </Property>
            </Property>
]]
return ACTION_TRIGGER_ENTRY
end

function CreateActionTriggerComponent(ACTION_TRIGGER_LIST_)
ACTION_TRIGGER_COMPONENT =
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
    </Property>
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
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
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
["MOD_FILENAME"]    = "zzzSEED-GENERATOR-V6A.pak",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["MOD_DESCRIPTION"] = "Adds random seed buttons to the quick action emote menu",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim","0H_GREET_MOB_04"},
                            ["SECTION_ACTIVE"] = {2},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ANIM_TEMPLATE_ALL
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcPlayerEffectsComponentData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ACTION_TRIGGER_COMPONENT
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD"] = QUICK_ACTION_BUTTON_ALL
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
                            ["ADD"] = CUSTOM_GENERICREWARD_ALL
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\TESTS\EFFECTTEST.ANIM.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FrameCount", "10"},
                                {"NodeCount",  "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}