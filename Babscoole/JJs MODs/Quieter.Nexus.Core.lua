NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Quieter.Nexus.Core.V.1.4",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\NEXUS\NEXUS\ENTITIES\MPTERMINAL.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"AnimTriggers", "TkAudioAnimTrigger"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sound", ""},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData", "Anim", "IDLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "ODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/ANIMS/IDLE_1.ANIM.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\NEXUS\PARTS\CENTRALPOINT\CENTRALPOINT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "BeamTop"},
                {"Name", "BeamBottom"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Type", ""},
              }
            },
          }
        },
      }
    }
  },
}