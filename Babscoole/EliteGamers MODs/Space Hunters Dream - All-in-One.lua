SHIPCHOICE = "Dropship"

InputSHIPCHOICE = {SHIPCHOICE,
[[
    Choose a ship option?  Options are Dropship, Fighter, Scientific, Shuttle, Royal, Alien, or Sail.  Selection is case sensitive!
    Default = Dropship | Current = >> ]] .. (SHIPCHOICE) .. [[ <<
]]}

SHIPCHOICE = GUIF(InputSHIPCHOICE,20)
 print("SHIPCHOICE = "..tostring(SHIPCHOICE))


if SHIPCHOICE ~= "Dropship" or "Fighter" or "Scientific" or "Shuttle" or "Royal" or  "Alien" or "Sail" then
    print("         >>> ["..SHIPCHOICE.."] is NOT a valid color choice, please retry! <<<")
end

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
                            ["SPECIAL_KEY_WORDS"] = {"Alien","IGNORE"},
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
      ["VALUE_CHANGE_TABLE"]  =
      {
          {"IGNORE", "10"},
      }
  }
  
  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
      ["LINE_OFFSET"] = "+2",
      ["VALUE_CHANGE_TABLE"]  =
      {
          {"IGNORE", "20"},
      }
  }
  
  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
      ["LINE_OFFSET"] = "+3",
      ["VALUE_CHANGE_TABLE"]  =
      {
          {"IGNORE", "50"},
      }
  }

  Change_Table_Array[#Change_Table_Array + 1] =
  {
      ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
      ["LINE_OFFSET"] = "+4",
      ["VALUE_CHANGE_TABLE"]  =
      {
          {"IGNORE", "100"},
      }
  }
end