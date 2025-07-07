DEFAULT_SEED_NUMBER = 2000

SELECTED_SEED_TYPES =
{
    "Fighter", "Dropship", "Scientific", "Shuttle", "Royal", "Alien", "Sail", "Robot",
    "MULTITOOL", "ROYALMULTITOOL", "ROBOTMULTITOOL", "ROBOTMULTITOOLB", "ATLASMULTITOOL", "STAFFMULTITOOL", "STAFFMTATLAS",-- "RODMULTITOOL",
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
    -- ["RODMULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/RODMULTITOOL.SCENE.MBIN",
}

STATS =
{
    ["Fighter"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0.000000"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},

    },
    ["Dropship"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0.000000"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
    },
    ["Scientific"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0.000000"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
    },
    ["Shuttle"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0.000000"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
    },
    ["Royal"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0.000000"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
    },
    ["Alien"] =
    {
        {["ID"] = "SHIPJUMP_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN_ALIEN", ["Amount"] ="100", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SHIELD_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPLAS_ALIEN", ["Amount"] ="100", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER_ALIEN", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "WARP_ALIEN", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
    },
    ["Sail"] =
    {
        {["ID"] = "SHIPJUMP1", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "SHIPSHIELD", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPLAS1", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER", ["Amount"] ="200", ["MaxAmount"]="300", ["Damage"]="0.000000"},
        {["ID"] = "HYPERDRIVE", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
        {["ID"] = "SOLAR_SAIL", ["Amount"] ="-1", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    ["Robot"] =
    {
        {["ID"] = "SHIPJUMP_ROBO", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "SHIPGUN_ROBO", ["Amount"] ="1000", ["MaxAmount"]="1000", ["Damage"]="0.000000"},
        {["ID"] = "SHIPSHIELD_ROBO", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "LAUNCHER_ROBO", ["Amount"] ="300", ["MaxAmount"]="300", ["Damage"]="0.000000"},
        {["ID"] = "HYPERDRIVE_ROBO", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
        {["ID"] = "LIFESUP_ROBO", ["Amount"] ="120", ["MaxAmount"]="120", ["Damage"]="0.000000"},
    },
    ["MULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    ["ROYALMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    ["ROBOTMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    ["ROBOTMULTITOOLB"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    ["ATLASMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "ATLAS_LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    ["STAFFMULTITOOL"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BUI_SCAN", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BUI_SCAN2", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    ["STAFFMTATLAS"] =
    {
        {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "LASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BUI_SCAN", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        {["ID"] = "UT_BUI_SCAN2", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    },
    -- ["RODMULTITOOL"] =
    -- {
        -- {["ID"] = "SCANBINOC1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        -- {["ID"] = "SCAN1", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        -- {["ID"] = "FISHLASER", ["Amount"] ="200", ["MaxAmount"]="200", ["Damage"]="0.000000"},
        -- -- {["ID"] = "BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        -- -- {["ID"] = "UT_BOLT", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        -- {["ID"] = "UT_BUI_SCAN", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
        -- {["ID"] = "UT_BUI_SCAN2", ["Amount"] ="0", ["MaxAmount"]="100", ["Damage"]="0.000000"},
    -- },
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
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="]]..ID..[[" />
                      <Property name="Amount" value="]]..Amount..[[" />
                      <Property name="MaxAmount" value="]]..MaxAmount..[[" />
                      <Property name="DamageFactor" value="]]..Damage..[[" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
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
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="ALIEN_SHIP" />
                    <Property name="Value" value="1" />
                  </Property>
]]

    elseif TYPE == "Robot" then
        return
[[
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="ROBOT_SHIP" />
                    <Property name="Value" value="1" />
                  </Property>
]]
    end
        return
[[
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_DAMAGE" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_SHIELD" />
                    <Property name="Value" value="1" />
                  </Property>
                  <Property value="GcInventoryBaseStatEntry">
                    <Property name="BaseStatID" value="SHIP_HYPERDRIVE" />
                    <Property name="Value" value="1" />
                  </Property>
]]
end

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
]]..AddInvetoryElements(TYPE)..[[
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

function CreateCustomShipRewardSubEntry(DEC_SEED, HEX_SEED, TYPE)
local GENERIC_REWARD_SUB_ENTRY =
[[
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificShip">
              <Property name="GcRewardSpecificShip">
                <Property name="ShipResource" value="GcResourceElement">
                  <Property name="Filename" value="]] .. SEED_TYPE_PATH[TYPE] .. [[" />
                  <Property name="ResHandle" value="GcResource">
                    <Property name="ResourceID" value="0" />
                  </Property>
                  <Property name="Seed" value="]] .. DEC_SEED .. [[" />
                  <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
                    <Property name="Samplers" />
                  </Property>
                  <Property name="AltId" value="" />
                </Property>
                <Property name="Customisation" value="GcCharacterCustomisationData">
                  <Property name="DescriptorGroups" />
                  <Property name="PaletteID" value="" />
                  <Property name="Colours" />
                  <Property name="TextureOptions" />
                  <Property name="BoneScales" />
                  <Property name="Scale" value="1.000000" />
                </Property>
                <Property name="ShipLayout" value="GcInventoryLayout">
                  <Property name="Slots" value="48" />
                  <Property name="Seed" value="]] .. DEC_SEED .. [[" />
                  <Property name="Level" value="1" />
                </Property>
                <Property name="ShipInventory" value="GcInventoryContainer">
                  <Property name="Slots">
]]..AddInvetoryElements(TYPE)..[[
                  </Property>
                  <Property name="ValidSlotIndices" />
                  <Property name="Class" value="GcInventoryClass">
                    <Property name="InventoryClass" value="S" />
                  </Property>
                  <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
                    <Property name="InventoryStackSizeGroup" value="Default" />
                  </Property>
                  <Property name="BaseStatValues">
]]..AddBaseStats(TYPE)..[[
                  </Property>
                  <Property name="SpecialSlots" />
                  <Property name="Width" value="0" />
                  <Property name="Height" value="0" />
                  <Property name="IsCool" value="false" />
                  <Property name="Name" value="]] .. HEX_SEED .. [[" />
                  <Property name="Version" value="0" />
                </Property>
                <Property name="CostAmount" value="0" />
                <Property name="CostCurrency" value="GcCurrency">
                  <Property name="Currency" value="Units" />
                </Property>
                <Property name="ShipType" value="GcSpaceshipClasses">
                  <Property name="ShipClass" value="]] .. TYPE .. [[" />
                </Property>
                <Property name="UseOverrideSizeType" value="false" />
                <Property name="OverrideSizeType" value="GcInventoryLayoutSizeType">
                  <Property name="SizeType" value="FgtLarge" />
                </Property>
                <Property name="NameOverride" value="" />
                <Property name="IsGift" value="true" />
                <Property name="IsRewardShip" value="true" />
                <Property name="FormatAsSeasonal" value="false" />
                <Property name="ModelViewOverride" value="GcModelViews">
                  <Property name="ModelViews" value="None" />
                </Property>
              </Property>
            </Property>
          </Property>
]]
return GENERIC_REWARD_SUB_ENTRY
end

function CreateRewardMainEntry(REWARD_ID, SUB_ENTRY)
local GENERIC_REWARD_MAIN_ENTRY =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="SelectAlways" />
        <Property name="OverrideZeroSeed" value="true" />
        <Property name="UseInventoryChoiceOverride" value="true" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
]] .. SUB_ENTRY .. [[
        </Property>
      </Property>
    </Property>
]]
return GENERIC_REWARD_MAIN_ENTRY
end

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
                -- elseif ANIM_ID == "RODMULTITOOL" then
                    -- ICON = "TEXTURES\UI\FRONTEND\ICONS\TECHNOLOGY\RENDER.FISHLASER.DDS"
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
                if SST == "MULTITOOL" or SST == "ROYALMULTITOOL" or SST == "ROBOTMULTITOOL" or SST == "ROBOTMULTITOOLB" or SST == "ATLASMULTITOOL" or SST == "STAFFMULTITOOL" or SST == "STAFFMTATLAS" then --or SST == "RODMULTITOOL" then
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
["MOD_FILENAME"]    = "zzzSEED-GENERATOR-V6B",
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