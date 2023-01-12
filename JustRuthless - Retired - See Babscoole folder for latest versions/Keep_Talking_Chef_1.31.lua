Mod_Version = "1.31"

OptionChanges =
{
  { -- ID
    {"EXOTIC_CHEF"},
    { -- CostID,       KeepOpen
      {"C_NEXUSCHEF1", "True"},
      {"C_NEXUSCHEF2", "True"},
      {"C_NEXUSCHEF3", "True"},
    }
  },
}

-- File Settings --
FileName    = "Keep Talking Chef "..Mod_Version..".pak"
ModAuthor   = "Reikoku"
LuaAuthor   = "Reikoku"
Description = ""
NMS_Version = "Leviathan 3.93"

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_DESCRIPTION"] = Description,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = FileSource1,
          ["EXML_CHANGE_TABLE"] = 
          {
            -- AlienPuzzleTable
          }
        },
      }
    },
  }
}

local AlienPuzzleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #OptionChanges do
  local ID     = OptionChanges[i][1][1]
  local Change = OptionChanges[i][2]

  for j = 1, #Change do
    local CostID   = Change[j][1]
    local KeepOpen = Change[j][2]
      
    AlienPuzzleTable[#AlienPuzzleTable+1] =
    {
      ["SPECIAL_KEY_WORDS"]   = {"Id", ID, "Cost", CostID},
      ["REPLACE_TYPE"]        = "ALL",
      ["VALUE_CHANGE_TABLE"]  =
      {
        {"KeepOpen", KeepOpen},
      },
    }
  end
end