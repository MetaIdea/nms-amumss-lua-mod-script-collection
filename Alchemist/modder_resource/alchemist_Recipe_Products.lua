
Author = "alchemist"
ModName = "Recipe_Products"
BaseDescription = "Survive."
GameVersion = "3-6"
ModVersion = "1"

--[[

Template for product modification. If the "Requirements" field is specified, it
will wipe the existing requirements in favor of what is specified.

--]]

RESEARCH = {1, 2, 4, 8, 16}
STACK = {1, 5, 25}

CHANGE_TABLE = {

  {"JELLY", {
    ["VALUE_CHANGE_TABLE"] = {
      {"RecipeCost", RESEARCH[2]},
      {"StackMultiplier", STACK[3]},
    },
    ["TradeCategory"] = "Fuel",
    ["Requirements"] = {
      {"Substance", "LAUNCHSUB", 25},
      {"Substance", "OXYGEN", 25},
    }
  }},

  {"PRODFUEL2", {
    ["VALUE_CHANGE_TABLE"] = {
      {"RecipeCost", RESEARCH[2]},
      {"StackMultiplier", STACK[3]},
    },
    ["TradeCategory"] = "Fuel",
    ["Requirements"] = {
      {"Substance", "LAUNCHSUB", 25},
      {"Product", "CARBON_SEAL", 1}
    }
  }},

  -- add more here
}

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

  {["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN",
  ["EXML_CHANGE_TABLE"] = {

  }},

}}}}

local Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #CHANGE_TABLE do
  local id = CHANGE_TABLE[i][1]

  if CHANGE_TABLE[i][2]["VALUE_CHANGE_TABLE"] ~= nil then
    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id},
      ["VALUE_CHANGE_TABLE"] = CHANGE_TABLE[i][2]["VALUE_CHANGE_TABLE"]
    }
  end

  if CHANGE_TABLE[i][2]["TradeCategory"] ~= nil then
    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id},
      ["PRECEDING_KEY_WORDS"] = {"GcTradeCategory.xml"},
      ["VALUE_CHANGE_TABLE"] = {
        {"TradeCategory", CHANGE_TABLE[i][2]["TradeCategory"]},
      }
    }
  end

  if CHANGE_TABLE[i][2]["Requirements"] ~= nil then
    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id, "ID", "IGNORE"},
      ["REPLACE_TYPE"] = "ALL",
      ["REMOVE"] = "SECTION"
    }

    local txt = ""

    for r = 1, #CHANGE_TABLE[i][2]["Requirements"] do
      local req = CHANGE_TABLE[i][2]["Requirements"][r]
      txt = txt..[[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]]..req[2]..[[" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..req[1]..[[" />
          </Property>
          <Property name="Amount" value="]]..req[3]..[[" />
        </Property>]]
    end

    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"Id", id},
      ["PRECEDING_KEY_WORDS"] = {"Requirements"},
      ["LINE_OFFSET"] = 0,
      ["ADD"] = txt
    }
  end
end