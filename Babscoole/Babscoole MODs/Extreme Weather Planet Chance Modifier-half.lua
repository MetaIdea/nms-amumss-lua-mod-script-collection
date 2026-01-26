--Probability variables by star type/color
YELLOW = 0.100000 --original 0.200000
GREEN  = 0.100000 --original 0.200000
BLUE   = 0.300000 --original 0.600000
RED    = 0.125000 --original 0.250000
PURPLE = 0.165000 --original 0.330000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Extreme Weather Planet Chance Modifier-half",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Change probability of planets with extreme weather",
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
              ["PRECEDING_KEY_WORDS"] = "ExtremePlanetChance",
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