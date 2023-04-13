Author = "alchemist"
ModName = "InterceptorAdjustments_Technology"
BaseDescription = [[Balance adjustments for technology added by the Interceptor update.]]
GameVersion = "4-21"
ModVersion = "1"

local Config = {
  ModifyProductCharge = {
    Enabled = true,
    Products = {
      DRONE_SHARD = 60,
    },
  },

  ModifySubstanceCharge = {
    Enabled = true,
    Substances = {
      -- ROBOT1 = 2,
      ROBOT2 = 3,
    },
  },

  ModifyTechnologyChargeBy = {
    Enabled = true,
    Tech = {
      -- weapon tech
      SENT_LASER = {"FUEL1", "FUEL2", "ROBOT1", "ROBOT2"},

      -- ship tech
      LAUNCHER_ROBO = {"ROBOT1", "ROBOT2", "DRONE_SHARD"},
      SHIPJUMP_ROBO = {"ROCKETSUB", "ROBOT1", "ROBOT2", "DRONE_SHARD"},
      SHIPSHIELD_ROBO = {"CATALYST1", "CATALYST2", "ROBOT1", "ROBOT2", "DRONE_SHARD"},
      HYPERDRIVE_ROBO = {"HYPERFUEL1", "HYPERFUEL12", "ROBOT1", "ROBOT2", "DRONE_SHARD"},
      -- SHIPSHIELD_ROBO = {"ROBOT1", "ROBOT2", "DRONE_SHARD"},
      -- HYPERDRIVE_ROBO = {"ROBOT1", "ROBOT2", "DRONE_SHARD"},
    }
  },
}

NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION			= BaseDescription,
MOD_AUTHOR					= Author,
NMS_VERSION					= GameVersion,

MODIFICATIONS	= {{
  MBIN_CHANGE_TABLE = {

    --

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER

local function NMSString0x10(value)
  return [[<Property value="NMSString0x10.xml">
  <Property name="Value" value="]]..value..[[" />
</Property>]]
end

local function addSpaces(block, x)
  return block:gsub("<", string.rep(" ", x) .. "<")
end

local function tableMap(t, fn)
  local res = {}
  for _, v in ipairs(t) do
    table.insert(res, fn(v))
  end
  return res
end

local Ref = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
local techChangeTable = {}

if Config.ModifyProductCharge.Enabled then
  local changeTable = {}

  for key, value in pairs(Config.ModifyProductCharge.Products) do
    changeTable[#changeTable+1] = {
      SPECIAL_KEY_WORDS = {"ID", key},
      VALUE_CHANGE_TABLE = {
        {"ChargeValue", value},
      }
    }
  end

  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
    EXML_CHANGE_TABLE = changeTable
  }
end

if Config.ModifySubstanceCharge.Enabled then
  local changeTable = {}

  for key, value in pairs(Config.ModifySubstanceCharge.Substances) do
    changeTable[#changeTable+1] = {
      SPECIAL_KEY_WORDS = {"ID", key},
      VALUE_CHANGE_TABLE = {
        {"ChargeValue", value},
      }
    }
  end

  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN",
    EXML_CHANGE_TABLE = changeTable
  }
end

local function createChargeList(chargeByList)
  local chargeList = tableMap(chargeByList, function (v)
    return NMSString0x10(v)
  end)

  local chargeByXml = [[<Property name="ChargeBy">
]] .. addSpaces(table.concat(chargeList, "\n"), 2) .. [[
</Property>]]

  return addSpaces(chargeByXml, 6)
end

local function rewriteChargeBy(techId, chargeByList)
  techChangeTable[#techChangeTable+1] = {
    SPECIAL_KEY_WORDS = {"ID", techId},
    PRECEDING_KEY_WORDS = {"ChargeBy"},
    REMOVE = "SECTION",
  }

  techChangeTable[#techChangeTable+1] = {
    SPECIAL_KEY_WORDS = {"ID", techId},
    PRECEDING_KEY_WORDS = {"ChargeMultiplier"},
    LINE_OFFSET = -1,
    ADD = createChargeList(chargeByList),
  }
end

if Config.ModifyTechnologyChargeBy then
  for key, value in pairs(Config.ModifyTechnologyChargeBy.Tech) do
    rewriteChargeBy(key, value)
  end
end

if #techChangeTable > 0 then
  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
    EXML_CHANGE_TABLE = techChangeTable
  }
end