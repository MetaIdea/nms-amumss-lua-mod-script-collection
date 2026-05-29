--Probability variables by star type/color
YELLOW = 0.300000 --original 0.250000
GREEN  = 0.200000 --original 0.150000
BLUE   = 0.200000 --original 0.150000
RED    = 0.550000 --original 0.500000
PURPLE = 0.000000 --original 0.000000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Pirate System Chance Modifier",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Change probability of system being Outlaw\Pirate",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = "PirateSystemProbability",
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Yellow", YELLOW},
                {"Green",  GREEN},
                {"Blue",   BLUE},
                {"Red",    RED},
                {"Purple", PURPLE},
              }
            },
          }
        }
      }
    }
  }
}