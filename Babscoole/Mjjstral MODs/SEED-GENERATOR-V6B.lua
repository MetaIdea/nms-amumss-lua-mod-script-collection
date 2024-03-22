DEFAULT_SEED_NUMBER = 17000

SELECTED_SEED_TYPES =
{
    "Fighter", "Dropship", "Scientific", "Shuttle", "Royal", "Alien", "Sail", "Robot",
    "MULTITOOL", "ROYALMULTITOOL", "ROBOTMULTITOOL", "ROBOTMULTITOOLB", "ATLASMULTITOOL", "STAFFMULTITOOL", "STAFFMTATLAS",
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
}

STATS =
{
    ["Fighter"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},

    },
    ["Dropship"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Scientific"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Shuttle"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Royal"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Alien"] =
    {
        {["ID"] = "SHIPJUMP_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN_ALIEN", ["Amount"] ="100", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SHIELD_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS_ALIEN", ["Amount"] ="100", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LAUNCHER_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "WARP_ALIEN", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["Sail"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
        {["ID"] = "SOLAR_SAIL", ["Amount"] ="-1", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["Robot"] =
    {
        {["ID"] = "SHIPJUMP_ROBO", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "SHIPGUN_ROBO", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0"},
        {["ID"] = "SHIPSHIELD_ROBO", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "LAUNCHER_ROBO", ["Amount"] ="300", ["MaxAmount"]="300", ["Damage"]="0"},
        {["ID"] = "HYPERDRIVE_ROBO", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
        {["ID"] = "LIFESUP_ROBO", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0"},
    },
    ["MULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["ROYALMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["ROBOTMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["ROBOTMULTITOOLB"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["ATLASMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "ATLAS_LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["STAFFMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BUI_SCAN", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BUI_SCAN2", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
    },
    ["STAFFMTATLAS"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BUI_SCAN", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
        {["ID"] = "UT_BUI_SCAN2", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0"},
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

function AddInvetoryElements(TYPE)
    local statsList = STATS[TYPE]
    local statsStringTable = {}
    local statsString = ""
    for i = 1, #statsList do
        local ID = statsList[i]["ID"]
        local Amount = statsList[i]["Amount"]
        local MaxAmount = statsList[i]["MaxAmount"]
        local Damage = statsList[i]["Damage"]
        statsString =
[[
                  <Property value="GcInventoryElement.xml">
                    <Property name="Type" value="GcInventoryType.xml">
                      <Property name="InventoryType" value="Technology" />
                    </Property>
                    <Property name="Id" value="]]..ID..[[" />
                    <Property name="Amount" value="]]..Amount..[[" />
                    <Property name="MaxAmount" value="]]..MaxAmount..[[" />
                    <Property name="DamageFactor" value="]]..Damage..[[" />
                    <Property name="FullyInstalled" value="True" />
                    <Property name="Index" value="GcInventoryIndex.xml">
                      <Property name="X" value="-1" />
                      <Property name="Y" value="-1" />
                    </Property>
                  </Property>
]]
        table.insert(statsStringTable, statsString)
    end
return table.concat(statsStringTable)
end

function AddBaseStats(TYPE)
    if TYPE == "Alien" then
        return
[[
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="ALIEN_SHIP" />
                    <Property name="Value" value="1" />
                  </Property>
]]
    
    elseif TYPE == "Robot" then
        return
[[
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="ROBOT_SHIP" />
                    <Property name="Value" value="1" />
                  </Property>
]]
    end
        return
[[
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry.xml">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
]]
end

function CreateCustomMultitoolRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_ENTRY =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificWeapon.xml">
              <Property name="WeaponInventory" value="GcInventoryContainer.xml">
                <Property name="Slots">
]]..AddInvetoryElements(TYPE)..[[
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

function CreateCustomShipRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_SUB_ENTRY =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificShip.xml">
              <Property name="ShipResource" value="GcResourceElement.xml">
                <Property name="Filename" value="]] .. SEED_TYPE_PATH[TYPE] .. [[" />
                <Property name="ResHandle" value="GcResource.xml">
                  <Property name="ResourceID" value="0" />
                </Property>
                <Property name="Seed" value="GcSeed.xml">
                  <Property name="Seed" value="]] .. DEC_SEED .. [[" />
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
]]..AddInvetoryElements(TYPE)..[[
                </Property>
                <Property name="ValidSlotIndices" />
                <Property name="Class" value="GcInventoryClass.xml">
                  <Property name="InventoryClass" value="S" />
                </Property>
                <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup.xml">
                  <Property name="InventoryStackSizeGroup" value="Default" />
                </Property>
                <Property name="BaseStatValues">
]]..AddBaseStats(TYPE)..[[
                </Property>
                <Property name="SpecialSlots" />
                <Property name="Width" value="0" />
                <Property name="Height" value="0" />
                <Property name="IsCool" value="False" />
                <Property name="Name" value="]] .. HEX_SEED .. [[" />
                <Property name="Version" value="0" />
              </Property>
              <Property name="ShipType" value="GcSpaceshipClasses.xml">
                <Property name="ShipClass" value="]] .. TYPE .. [[" />
              </Property>
              <Property name="NameOverride" value="" />
              <Property name="IsGift" value="True" />
              <Property name="IsRewardShip" value="True" />
              <Property name="FormatAsSeasonal" value="False" />
            </Property>
          </Property>
]]
return GENERIC_REWARD_SUB_ENTRY
end

function CreateRewardMainEntry(REWARD_ID, SUB_ENTRY)
local GENERIC_REWARD_MAIN_ENTRY =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="True" />
        <Property name="UseInventoryChoiceOverride" value="True" />
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
  local count = 10000
  local SEED_COUNT = 1
  print("starting big loop...")
    for i=1,#SELECTED_SEED_TYPES,1 do
            local Seed = ""
            local SREA = {}
            local SST = SELECTED_SEED_TYPES[i]
            for _j=1,DEFAULT_SEED_NUMBER,1 do
                Seed = GetSeed()
                local SREA_tmp = ""
                if SST == "MULTITOOL" or SST == "ROYALMULTITOOL" or SST == "ROBOTMULTITOOL" or SST == "ROBOTMULTITOOLB" or SST == "ATLASMULTITOOL" or SST == "STAFFMULTITOOL" or SST == "STAFFMTATLAS" then
                    SREA_tmp = CreateCustomMultitoolRewardSubEntry(HexToDec(Seed), Seed, SST)
                else
                    SREA_tmp = CreateCustomShipRewardSubEntry(HexToDec(Seed), Seed, SST)
                end
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
["MOD_FILENAME"]    = "zzzSEED-GENERATOR-V6B.pak",
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