
Author = "alchemist"
ModName = "Recipe_Technology"
BaseDescription = "Survive."
GameVersion = "3-6"
ModVersion = "1"

--[[

Template for technology modification. If the "Requirements" field is specified, it
will wipe the existing requirements in favor of what is specified.

--]]

RESEARCH = {128, 256, 512, 1024, 2048}

CHANGE_TABLE = {

  {"SUIT_REFINER", {
    ["VALUE_CHANGE_TABLE"] = {
      {"RecipeCost", RESEARCH[2]},
    },
    ["Requirements"] = {
      {"Substance", "CAVE1", 50},
      {"Product", "JELLY", 3},
      {"Product", "MICROCHIP", 3},
    }
  }},

  {"UT_PROTECT", {
    ["VALUE_CHANGE_TABLE"] = {
      {"RecipeCost", RESEARCH[3]},
    },
    ["Requirements"] = {
      {"Product", "POWERCELL", 5},
      {"Product", "MIRROR", 3},
      {"Product", "MICROCHIP", 3},
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

  {["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
  ["EXML_CHANGE_TABLE"] = {

  }},

}}}}

local Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #CHANGE_TABLE do
  local id = CHANGE_TABLE[i][1]
  local spec = CHANGE_TABLE[i][2]

  if spec["VALUE_CHANGE_TABLE"] ~= nil then
    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"ID", id},
      ["VALUE_CHANGE_TABLE"] = spec["VALUE_CHANGE_TABLE"]
    }
  end

  if spec["Requirements"] ~= nil then
    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"ID", id, "InventoryType", "IGNORE"},
      ["SECTION_UP"] = 1,
      ["REMOVE"] = "SECTION"
    }

    local txt = ""

    for r = 1, #spec["Requirements"] do
      local req = spec["Requirements"][r]
      txt = txt..[[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]]..req[2]..[[" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..req[1]..[[" />
          </Property>
          <Property name="Amount" value="]]..req[3]..[[" />
        </Property>
]]
    end

    Ref[#Ref + 1] = {
      ["SPECIAL_KEY_WORDS"] = {"ID", id},
      ["PRECEDING_KEY_WORDS"] = {"BaseStat"},
      ["LINE_OFFSET"] = -1,
      ["ADD"] = [[
      <Property name="Requirements">
]]..txt..[[
      </Property>]]
    }
  end
end