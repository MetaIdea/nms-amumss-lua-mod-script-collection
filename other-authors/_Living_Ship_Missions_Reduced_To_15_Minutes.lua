NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Living_Ship_Missions_Reduced_To_15_Minutes.pak",
["MOD_AUTHOR"]    = "Dude4Fockman",
["LUA_AUTHOR"]    = "X00LA",
["NMS_VERSION"]   = "5.12",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"]   = "",
              ["SPECIAL_KEY_WORDS"]     = {{"Time","79200"}},
							["REPLACE_TYPE"]          = "ALL",
              ["VALUE_MATCH"]           = "",
              ["VALUE_CHANGE_TABLE"]    = {{"Time", "900"}}
            },
          }
        },
      }
    },
  }
}
