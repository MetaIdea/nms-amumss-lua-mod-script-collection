--Probability variables by star type/color
YELLOW = 0.30 --original 0.25
GREEN  = 0.2  --original 0.15
BLUE   = 0.2  --original 0.15
RED    = 0.55 --original 0.5
PURPLE = 0    --original 0

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Pirate System Chance Modifier",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
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