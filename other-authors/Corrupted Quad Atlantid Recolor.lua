LENS_MAT = "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\DRONEBITSALERTS2_LENS_MAT.MATERIAL.MBIN"
LENS_MAT_D = "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\DRONEBITSALERTS1_LENS_MAT.MATERIAL.MBIN"
LIGHTS_MAT6 = "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\LIGHTS_MAT6.MATERIAL.MBIN"
PASTED = "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\SENTINELCRYSTALMAT.MATERIAL.MBIN"
EYE = "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\SPIDEREYE_MAT.MATERIAL.MBIN"


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Corrupted Quad Atlantid Recolor",
["MOD_AUTHOR"]       = "Mariti",
["LUA_AUTHOR"]       = "Mariti",
["NMS_VERSION"]      = "7.06",
["MOD_DESCRIPTION"]  = "Replaces the Corrupted Quad blue color with the Atlantid purple",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUADBLUE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "COL_R"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.712333"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "COL_G"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pSphere1", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", LENS_MAT},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "critmesh", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", LENS_MAT_D},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "fa1", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", LENS_MAT_D},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "fa3", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", LENS_MAT_D},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "lights55sfff", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", LIGHTS_MAT6},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pSphere2", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", PASTED},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SentinelCrystalLarge06", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", PASTED},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EyeCentres", "Name", "MATERIAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", EYE},
              }
            },
          }
        }
      }
    }
  }
}