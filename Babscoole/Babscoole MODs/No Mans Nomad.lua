RemoveMesh = {"RL_SwingArmJNT", "FL_SwingArmJNT", "FR_SwingArmJNT", "RR_SwingArmJNT"}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Mans Nomad",
["MOD_AUTHOR"]      = "Moach & Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "For Nomad rescale turret and engine nozzle, re-position the engine bloom glow, and remove wheels",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\BIKE\BIKEPRES.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Gun"},
              ["VALUE_CHANGE_TABLE"] =
              {
					      {"TransY", "0.780000"},
					      {"TransZ", "-0.440000"},
					      {"ScaleX", "0.560000"},
					      {"ScaleY", "0.560000"},
					      {"ScaleZ", "0.560000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineCenterRotate"},
              ["VALUE_CHANGE_TABLE"] =
              {
					      {"ScaleX", "1.52000"},
					      {"ScaleY", "1.52000"},
					      {"ScaleZ", "1.52000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "EngineCircles"},
              ["VALUE_CHANGE_TABLE"] =
              {
					      {"TransY", "0.585000"},
					      {"TransZ", "-1.192000"},
					      {"ScaleX", "0.440000"},
					      {"ScaleY", "0.440000"},
					      {"ScaleZ", "0.440000"}
              }
            },
          }
        },
      }
    }
  }
}

local RemoveMeshTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i=1,#RemoveMesh do
  local value = RemoveMesh[i]
  RemoveMeshTable[#RemoveMeshTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {"Name", value},
    ["REMOVE"] = "SECTION"
  }
end