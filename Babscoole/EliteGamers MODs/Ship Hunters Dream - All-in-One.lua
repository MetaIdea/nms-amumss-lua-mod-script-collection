SHIPCHOICE = 1

InputSHIPCHOICE = {SHIPCHOICE,
[[
    Choose a ship option:
    1 - Dropship (Hauler)
    2 - Fighter
    3 - Scientific (Explorer)
    4 - Shuttle
    5 - Royal (Exotic)
    6 - Alien (Living)
    7 - Sail (Solar)
    Default = 1 | Current = >> ]] .. (SHIPCHOICE) .. [[ <<
]]}

while SHIPCHOICE do
  SHIPCHOICE = GUIF(InputSHIPCHOICE,20)

  local minChoice = 1
  local maxChoice = 7

  if SHIPCHOICE < minChoice or SHIPCHOICE > maxChoice then
    print("         >>> ["..SHIPCHOICE.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

if SHIPCHOICE == 1 then
  SHIPCHOICE = "Dropship"
elseif SHIPCHOICE == 2 then
  SHIPCHOICE = "Fighter"
elseif SHIPCHOICE == 3 then
  SHIPCHOICE = "Scientific"
elseif SHIPCHOICE == 4 then
  SHIPCHOICE = "Shuttle"
elseif SHIPCHOICE == 5 then
  SHIPCHOICE = "Royal"
elseif SHIPCHOICE == 6 then
  SHIPCHOICE = "Alien"
elseif SHIPCHOICE == 7 then
  SHIPCHOICE = "Sail"
end
 print("SHIPCHOICE = "..tostring(SHIPCHOICE))


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = SHIPCHOICE.." only.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Dropship", "IGNORE"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Alien", "IGNORE"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {SHIPCHOICE, "1000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DockWaitMinTime", "10"},
                                {"DockWaitMaxTime", "15"},
                            }
                        },
                    }
                },
            }
        },
    }
}

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

if SHIPCHOICE == "Alien" then
  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["VALUE_CHANGE_TABLE"] =
      {
          {"CivilianTraderSpaceshipsCacheCount",  "1000"},
      }
  }

  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
      ["LINE_OFFSET"] = "+1",
      ["VALUE_CHANGE_TABLE"] =
      {
          {"IGNORE", "10"},
      }
  }

  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
      ["LINE_OFFSET"] = "+2",
      ["VALUE_CHANGE_TABLE"] =
      {
          {"IGNORE", "20"},
      }
  }

  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
      ["LINE_OFFSET"] = "+3",
      ["VALUE_CHANGE_TABLE"] =
      {
          {"IGNORE", "50"},
      }
  }

  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
      ["LINE_OFFSET"] = "+4",
      ["VALUE_CHANGE_TABLE"] =
      {
          {"IGNORE", "100"},
      }
  }
end