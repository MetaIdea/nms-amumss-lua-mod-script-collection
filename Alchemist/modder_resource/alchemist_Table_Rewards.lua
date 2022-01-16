
Author = "alchemist"
ModName = "Table_Rewards"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

--[[

This tool allows you to easily replace an existing reward entry for entirely new one.
Does not implement every reward type, but its easy enough to add new ones as needed.

Scroll down for the actual table.

--]]

-- Units
-- Nanites
-- Specials (quicksilver)
local function Currency(currency, amount, chance)
  return [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardMoney.xml">
              <Property name="AmountMin" value="]]..amount[1]..[[" />
              <Property name="AmountMax" value="]]..amount[2]..[[" />
              <Property name="Currency" value="GcCurrency.xml">
                <Property name="Currency" value="]]..currency..[[" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

local function Product(id, amount, chance, type)
  local realType = "None"
  if type ~= nil then realType = type end

  return [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardSpecificProduct.xml">
              <Property name="Default" value="GcDefaultMissionProductEnum.xml">
                <Property name="DefaultProductType" value="]]..realType..[[" />
              </Property>
              <Property name="ID" value="]]..id..[[" />
              <Property name="AmountMin" value="]]..amount[1]..[[" />
              <Property name="AmountMax" value="]]..amount[2]..[[" />
              <Property name="ForceSpecialMessage" value="False" />
              <Property name="HideInSeasonRewards" value="False" />
              <Property name="Silent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

local function Substance()

  return [[

]]
end

local function SpecificSubstance(id, amount, chance)
  return [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardSpecificSubstance.xml">
              <Property name="Default" value="GcDefaultMissionProduct.xml">
                <Property name="Product" value="GcProductTableEnum.xml">
                  <Property name="gcproducttableEnum" value="None" />
                </Property>
              </Property>
              <Property name="ID" value="]]..id..[[" />
              <Property name="AmountMin" value="]]..amount[1]..[[" />
              <Property name="AmountMax" value="]]..amount[2]..[[" />
              <Property name="HardModeMultiplier" value="1" />
              <Property name="DisableMultiplier" value="False" />
              <Property name="RewardAsBlobs" value="False" />
              <Property name="UseFuelMultiplier" value="False" />
              <Property name="Silent" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

-- Bones
-- Salvage
-- Loot
-- SpaceBones
-- Fossil
-- SpaceHorror
-- DismantleBio
-- DismantleTech
-- DismantleData
-- BioSample
-- SeaHorror
-- Plant
-- Tool
-- Document
-- FreighterTech___
local function ProcProd(category, chance, rarity)
  local overrideRarity = "False"
  local outRarity = "Common"

  if rarity ~= nil then
    overrideRarity = "True"
    outRarity = rarity
  end

  return [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardProceduralProduct.xml">
              <Property name="Type" value="GcProceduralProductCategory.xml">
                <Property name="ProceduralProductCategory" value="]]..category..[[" />
              </Property>
              <Property name="OSDMessage" value="" />
              <Property name="SubIfPlayerAlreadyHasOne" value="False" />
              <Property name="OverrideRarity" value="]]..overrideRarity..[[" />
              <Property name="Rarity" value="GcRarity.xml">
                <Property name="Rarity" value="]]..outRarity..[[" />
              </Property>
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

-- groups in NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE
local function ProcTech(group, normal, rare, epic, legendary, chance)
  return [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="]]..chance..[[" />
            <Property name="Reward" value="GcRewardProcTechProduct.xml">
              <Property name="Group" value="]]..group..[[" />
              <Property name="WeightedChanceNormal" value="]]..normal..[[" />
              <Property name="WeightedChanceRare" value="]]..rare..[[" />
              <Property name="WeightedChanceEpic" value="]]..epic..[[" />
              <Property name="WeightedChanceLegendary" value="]]..legendary..[[" />
              <Property name="ForceRelevant" value="False" />
              <Property name="ForceQualityRelevant" value="False" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
end

NANITES_S = {16, 32}
NANITES_M = {64, 128}
NANITES_L = {256, 512}
NANITES_XL = {1024, 2048}

RESOURCE_S = {16, 32}
RESOURCE_M = {64, 128}
RESOURCE_L = {256, 512}

PTP_Normal = 50
PTP_Rare = 35
PTP_Epic = 12
PTP_Legendary = 3

REWARD_TABLE = {

  -- example of a reward "list"
  {"BP_SALVAGE", {
    ["List"] = {"SelectAlways", {
      Product("BP_SALVAGE", {2, 4}, 96),
      Product("BP_SALVAGE", {8, 16}, 16),
      Currency("Nanites", NANITES_S, 64),
      Currency("Nanites", NANITES_M, 32),
      Product("WEAP_INV_TOKEN", {1, 1}, 4),
      Product("SHIP_INV_TOKEN", {1, 1}, 2),
    }},
  }},

  -- example of a "rarities" list
  {"CRATE", {
    ["Rarities"] = {
      ["Common"] = {

        -- tiny red "ammo" crate
        ["Small"] = {"SelectAlways", {
          SpecificSubstance("FUEL1", RESOURCE_M, 100),
          SpecificSubstance("CATALYST1", RESOURCE_S, 100),
          SpecificSubstance("AF_METAL", NANITES_S, 100),
        }},

        -- ??
        ["Medium"] = {"SelectAlways", {
          SpecificSubstance("FUEL2", {15, 30}, 100)
        }},

        -- yellow crate
        ["Large"] = {"SelectAlways", {
          Product("CASING", {1, 3}, 100),
          Product("NANOTUBES", {1, 3}, 100),
          Product("JELLY", {1, 3}, 100),
          SpecificSubstance("AF_METAL", {15, 30}, 50),
        }},
      },

      ["Uncommon"] = {
        ["Small"] = {"GiveAll", {}},
        ["Medium"] = {"GiveAll", {}},
        ["Large"] = {"GiveAll", {}},
      },

      -- uncommon unused
      ["Rare"] = {
        -- barrel?
        ["Small"] = {"SelectAlways", {
          SpecificSubstance("FUEL2", {5, 5}, 100)
        }},

        ["Medium"] = {"GiveAll", {}},

        -- green box with terminal
        ["Large"] = {"SelectAlways", {
          Product("POWERCELL", {1, 1}, 50),
          Product("CARBON_SEAL", {1, 1}, 50),
          SpecificSubstance("AF_METAL", {15, 30}, 50),
        }},
      }
    }
  }},

}


NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

  {["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN",
  ["EXML_CHANGE_TABLE"] = {
    -- empty on purpose
  }},

}}}}

local Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

local function Rarities(t)
  return [[
      <Property name="Rarities">
]]..table.concat(t, "")..[[
      </Property>
    </Property>
]]
end

local function Rarity(name, sizes)
  return [[
        <Property name="]]..name..[[" value="GcRewardTableCategory.xml">
          <Property name="Sizes">
]]..table.concat(sizes, "")..[[
          </Property>
        </Property>
]]
end

local function Size(name, spec)
  local rewardChoice = spec[1]
  local items = spec[2]
  local list = [[
              <Property name="List" />
]]

  if #items > 0 then
    list = [[
              <Property name="List">
]]..table.concat(items, "")..[[
              </Property>
]]
  end

  return [[
            <Property name="]]..name..[[" value="GcRewardTableItemList.xml">
              <Property name="RewardChoice" value="]]..rewardChoice..[[" />
              <Property name="OverrideZeroSeed" value="False" />
]]..list..[[
            </Property>
]]
end

for i = 1, #REWARD_TABLE do
  local id = REWARD_TABLE[i][1]

  if REWARD_TABLE[i][2]["List"] ~= nil then
    local choice = REWARD_TABLE[i][2]["List"][1]
    local items = REWARD_TABLE[i][2]["List"][2]

    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id},
      ["VALUE_CHANGE_TABLE"] = {{"RewardChoice", choice}},
    }

    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id, "OverrideZeroSeed", "IGNORE"},
      ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
      ["SECTION_UP"] = 1,
      --["REPLACE_TYPE"] = "ALL",
      ["REMOVE"] = "SECTION"
    }

    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id, "OverrideZeroSeed", "IGNORE"},
      ["LINE_OFFSET"] = 0,
      ["ADD"] = [[
        <Property name="List">
]]..table.concat(items, "")..[[
        </Property>]]
    }
  elseif REWARD_TABLE[i][2]["Rarities"] ~= nil then
    local r = REWARD_TABLE[i][2]["Rarities"]

    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id},
      ["PRECEDING_KEY_WORDS"] = {"Rarities"},
      ["REMOVE"] = "SECTION"
    }

    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id},
      ["LINE_OFFSET"] = 0,
      ["ADD"] = Rarities({
        Rarity("Common", {
          Size("Small", r["Common"]["Small"]),
          Size("Medium", r["Common"]["Medium"]),
          Size("Large", r["Common"]["Large"]),
        }),
        Rarity("Uncommon", {
          Size("Small", r["Uncommon"]["Small"]),
          Size("Medium", r["Uncommon"]["Medium"]),
          Size("Large", r["Uncommon"]["Large"]),
        }),
        Rarity("Rare", {
          Size("Small", r["Rare"]["Small"]),
          Size("Medium", r["Rare"]["Medium"]),
          Size("Large", r["Rare"]["Large"]),
        }),
      })
    }
  
  end
end