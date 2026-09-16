NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]      = "No Speed Lines 4.3",
["MOD_AUTHOR"]        = "Lo2k",
["NMS_VERSION"]       = "7.00",
["MOD_DESCRIPTION"]   = "This mod removes speed lines",
["MODIFICATIONS"]     =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\SPEEDLINES\SPEEDLINE.SCENE.MBIN"},
          ["MXML_CHANGE_TABLE"] =
          {
            ["SPECIAL_KEY_WORDS"] =
            {
              {"Name", "NormalLines1"},
              {"Name", "NormalLines2"},
              {"Name", "BigLines"},
              {"Name", "MiniJump2"},
              {"Name", "MiniJump1"},
              {"Name", "MiniJump3"},
              {"Name", "MiniJump4"},
            },
            ["REMOVE"] = "SECTION"
          },
        },
      }
    }
  }
}