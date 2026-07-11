MULTIPLIER = 30

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Salvage Data-"..MULTIPLIER.."X",
["MOD_AUTHOR"]      = "VelocityFTW",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Multiplies salvaged data by 10x or 30x",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BP_SALVAGE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin", "@*"..MULTIPLIER},
								{"AmountMax", "@*"..MULTIPLIER},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BP_SALVAGE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "@*"..MULTIPLIER},
							}
						},
          }
        },
      }
    },
  }
}