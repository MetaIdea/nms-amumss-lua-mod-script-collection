NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Goop BeGone Derelict",
["MOD_DESCRIPTION"] = "Remove trypophobia triggers from Dereleict freighters.",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\CARGO_CORNER_HANGING0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\CORNER_HANGING0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\MEDI_CORNER_HANGING0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\CARG\PODS\ROOM_INCORNER_1_1.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\PODS\ROOM_INCORNER_1_1.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMedium90Slime88"},
                {"Name", "RefMedium90Slime8888"},
                {"Name", "RefMedium90Slime888888"},
                {"Name", "RefLargeCornerSlime"},
                {"Name", "RefMediumHangSlime"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\CARGO_FLOOR_LAYER_0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\CARGO_FLOOR_LAYER_1.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\FLOOR_LAYER_0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\BARRACKS\SLIME\ROOM_FLOOR0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_FLOOR0.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime2"},
                {"Name", "RefMediumFlatSlime3"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\CARGO_FLOOR_PILLAR0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefLargePillarSlime"},
                {"Name", "pasted__RefMediumFlatSlime"},
                {"Name", "pasted__RefMediumFlatSlime1"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\CORNER_LAYER_0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_INCORNER_1_0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_INCORNER_1_0.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMedium90Slime88"},
                {"Name", "RefMedium90Slime888"},
                {"Name", "RefMedium90Slime8888"},
                {"Name", "RefMedium90Slime88888"},
                {"Name", "RefMedium90Slime888888"},
                {"Name", "RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\FLOOR_HANGING0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumHangSlime"},
                {"Name", "pasted__RefMediumFlatSlime"},
                {"Name", "pasted__RefMediumFlatSlime1"},
                {"Name", "pasted__RefMediumFlatSlime3"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\FLOOR_HANGING1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumHangSlime"},
                {"Name", "pasted__RefMediumFlatSlime"},
                {"Name", "pasted__RefMediumFlatSlime3"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\FLOOR_LAYER_1.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\FLOOR_LAYER_2.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime3"},
                {"Name", "pasted__RefMediumFlatSlime"},
                {"Name", "pasted__RefMediumFlatSlime1"},
                {"Name", "pasted__RefMediumFlatSlime2"},
                {"Name", "pasted__RefMediumFlatSlime3"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\FLOOR_LAYER_3.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\MEDI_FLOOR_LAYER_0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime3"},
                {"Name", "pasted__RefMediumFlatSlime"},
                {"Name", "pasted__pasted__RefMediumFlatSlime"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\MED_FLOOR_PILLAR0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\PODS\ROOM_FLOORPILLAR0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\INFESTATION\PODS\ROOM_FLOORPILLAR1.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefLargePillarSlime"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\WALL_LAYER_0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\WALL_LAYER_1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pasted__RefMedium90Slime"},
                {"Name", "pasted__RefMediumFlatSlime"},
                {"Name", "pasted__RefMedium90Slime8"},
                {"Name", "pasted__RefMedium90Slime888"},
                {"Name", "pasted__RefMedium90Slime888888"},
                {"Name", "pasted__RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\WALL_LAYER_2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "pasted__RefMedium90Slime8"},
                {"Name", "pasted__RefMedium90Slime888"},
                {"Name", "pasted__RefMedium90Slime888888"},
                {"Name", "pasted__RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\INFESTATION\PODS\ROOM_FLOORPILLAR2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefLargePillarSlime"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\BARRACKS\PODS\ROOM_FLOOR0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\CARG\PODS\ROOM_FLOOR0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\PODS\ROOM_FLOOR0.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumHangSlime"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime2"},
                {"Name", "RefMediumFlatSlime3"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\BARRACKS\PODS\ROOM_INCORNER_1_0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\CARG\PODS\ROOM_INCORNER_1_0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\PODS\ROOM_INCORNER_1_0.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefLargePillarSlime"},
                {"Name", "RefMedium90Slime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime88"},
                {"Name", "RefMedium90Slime888"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\PODS\ROOM_INCORNER_1_1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumHangSlime"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMedium90Slime88"},
                {"Name", "RefMedium90Slime888888"},
                {"Name", "RefLargeCornerSlime"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\BARRACKS\PODS\ROOM_WALL0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\CARG\PODS\ROOM_WALL0.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefLargePillarSlime"},
                {"Name", "RefMediumFlatSlime2"},
                {"Name", "RefMedium90Slime"},
                {"Name", "RefMedium90Slime88"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\SLIME\ROOM_INCORNER_1_0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMedium90Slime88"},
                {"Name", "RefMedium90Slime888"},
                {"Name", "RefMedium90Slime888888"},
                {"Name", "RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\BARRACKS\SLIME\ROOM_WALL0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_FLOOR0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime2"},
                {"Name", "RefMediumFlatSlime3"},
                {"Name", "RefMediumFlatSlime4"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_WALL0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime1"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_WALLOUTCORNERLEFT_C_0.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_WALLOUTCORNERLEFT_C_0.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMedium90Slime88"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_WALLOUTCORNERLEFT_C_1.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_WALLOUTCORNERLEFT_C_1.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime2"},
                {"Name", "RefMedium90Slime88"},
                {"Name", "RefMediumFlatSlime3"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_WALLOUTCORNERLEFT_C_2.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_WALLOUTCORNERLEFT_C_2.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_WALLOUTCORNERRIGHT_C_0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_WALLOUTCORNERRIGHT_C_1.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_WALLOUTCORNERRIGHT_C_1.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMedium90Slime888888"},
                {"Name", "RefLargeCornerSlime"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "MODELS\SPACE\POI\DUNGEON\CARG\SLIME\ROOM_WALLOUTCORNERRIGHT_C_2.SCENE.MBIN",
            "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_WALLOUTCORNERRIGHT_C_2.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMedium90Slime88"},
                {"Name", "RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_WALLOUTCORNERRIGHT_C_0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMedium90Slime8"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime1"},
                {"Name", "RefMediumFlatSlime2"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\SLIME\ROOM_WALL0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMedium90Slime8"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\DUNGEON\MEDI\PODS\ROOM_WALL0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "RefMediumHangSlime"},
                {"Name", "RefMediumFlatSlime4"},
                {"Name", "RefMediumFlatSlime"},
                {"Name", "RefMediumFlatSlime3"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
      },
    },
  },
}
