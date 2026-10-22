SCALE = "0.700000"
local anySelected = false

Frigates =
{
  { Type = "COMBAT", addt = "", repl = false },
  { Type = "DIPLOMATIC", addt = "", repl = false },
  { Type = "GHOSTSHIP", addt = "", repl = false },
  { Type = "INDUSTRIAL", addt = "", repl = false },
  { Type = "LIVING", addt = "_PROC", repl = false },
  { Type = "NORMANDY", addt = "", repl = false },
  { Type = "SCIENCE", addt = "", repl = false },
  { Type = "SUPPORT", addt = "", repl = false },
}

for i = 1, #Frigates do
  local f = Frigates[i]
  f.repl = GUIF(
    {
      f.repl,
      " Replace "..f.Type.." frigate model? (Y/N)"..
      " Default: N | Current: >> "..(f.repl and "Y" or "N")
    },
    15
  )
  if f.repl then anySelected = true end
end

assert(anySelected, "ERROR: Zero models selected to replace, aborting...")

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Swarm Frigate Reskin",
["MOD_AUTHOR"]       = "Mariti",
["LUA_AUTHOR"]       = "Mariti",
["NMS_VERSION"]      = "7.06",
["MOD_DESCRIPTION"]  = "Replaces specific frigate models with the swarm frigate",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] = {}
    }
  }
}

local mbinTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

if anySelected == true then
  -- remove teleport to frigate option
  mbinTable[#mbinTable + 1] =
  {
    ["MBIN_FILE_SOURCE"] = "UI\MANAGEFLEET\FRIGATEDETAILS.MBIN",
    ["MXML_CHANGE_TABLE"] =
    {
      {
        ["SPECIAL_KEY_WORDS"] = {"ID", "TELEPORT"},
        ["SECTION_UP_SPECIAL"] = 2,
        ["REMOVE"] = "SECTION",
      },
    },
  }
  -- copy the stats sections as swarm frigate scene doesn't have these
  mbinTable[#mbinTable + 1] =
  {
    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FRIGATES\NORMANDYFRIGATE.SCENE.MBIN",
    ["MXML_CHANGE_TABLE"] =
    {
      {
        ["SPECIAL_KEY_WORDS"] = {"Name", "STAT1"},
        ["SEC_SAVE_TO"] = "stat1",
      },
      {
        ["SPECIAL_KEY_WORDS"] = {"Name", "STAT2"},
        ["SEC_SAVE_TO"] = "stat2",
      },
      {
        ["SPECIAL_KEY_WORDS"] = {"Name", "STAT3"},
        ["SEC_SAVE_TO"] = "stat3",
      },
      {
        ["SPECIAL_KEY_WORDS"] = {"Name", "STAT4"},
        ["SEC_SAVE_TO"] = "stat4",
      },
      {
        ["SPECIAL_KEY_WORDS"] = {"Name", "STAT5"},
        ["SEC_SAVE_TO"] = "stat5",
      },
    },
  }
end

for i = 1, #Frigates do
  local f = Frigates[i]
  if f.repl then
    local destPath = [[MODELS\COMMON\SPACECRAFT\FRIGATES\]]..f.Type.."FRIGATE"..f.addt..".SCENE.MBIN"
    local copyPath = "MODELS\COMMON\SPACECRAFT\SWARM\SWARMFRIGATE.SCENE.MBIN"
    -- copy swarm frigate scene to selected frigate(s)
    mbinTable[#mbinTable + 1] =
    {
      ["MBIN_FILE_SOURCE"] =
      {
        {copyPath, destPath}
      },
    }
    -- edit copied frigate scenes
    mbinTable[#mbinTable + 1] =
    {
      ["MBIN_FILE_SOURCE"] = destPath,
      ["MXML_CHANGE_TABLE"] =
      {
        -- edit swarm frigate size and rotation
        {
          ["SPECIAL_KEY_WORDS"] = {"ScaleX", "1.000000"},
          ["REPLACE_TYPE"] = "ALL",
          ["VALUE_CHANGE_TABLE"] =
          {
            {"ScaleX", SCALE},
          }
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"ScaleY", "1.000000"},
          ["REPLACE_TYPE"] = "ALL",
          ["VALUE_CHANGE_TABLE"] =
          {
            {"ScaleY", SCALE},
          }
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"ScaleZ", "1.000000"},
          ["REPLACE_TYPE"] = "ALL",
          ["VALUE_CHANGE_TABLE"] =
          {
            {"ScaleZ", SCALE},
          }
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"Name", "REFHeavyCannon9"},
          ["VALUE_CHANGE_TABLE"] =
          {
            {"ScaleX", "0.000000"},
            {"ScaleY", "0.000000"},
            {"ScaleZ", "0.000000"},
          }
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"Name", "SwarmFrigate"},
          ["VALUE_CHANGE_TABLE"] =
          {
            {"RotX", "90.000000"},
            {"RotZ", "-90.000000"},
          }
        },
        -- paste stats sections
        {
          ["SPECIAL_KEY_WORDS"] = {"Name", "SwarmFrigate"},
          ["SECTION_UP"] = 1,
          ["SEC_ADD_NAMED"] = "stat1",
          ["ADD_OPTION"] = "ADDendSECTION",
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"Name", "SwarmFrigate"},
          ["SECTION_UP"] = 1,
          ["SEC_ADD_NAMED"] = "stat2",
          ["ADD_OPTION"] = "ADDendSECTION",
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"Name", "SwarmFrigate"},
          ["SECTION_UP"] = 1,
          ["SEC_ADD_NAMED"] = "stat3",
          ["ADD_OPTION"] = "ADDendSECTION",
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"Name", "SwarmFrigate"},
          ["SECTION_UP"] = 1,
          ["SEC_ADD_NAMED"] = "stat4",
          ["ADD_OPTION"] = "ADDendSECTION",
        },
        {
          ["SPECIAL_KEY_WORDS"] = {"Name", "SwarmFrigate"},
          ["SECTION_UP"] = 1,
          ["SEC_ADD_NAMED"] = "stat5",
          ["ADD_OPTION"] = "ADDendSECTION",
        },
      },
    }
  end
end