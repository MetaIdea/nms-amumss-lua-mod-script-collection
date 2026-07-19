NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "FF_PirateFreighterMistBegone_TEST",
["MOD_AUTHOR"]      = "FriendlyFirePL",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Removes pirate freighter mist",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\PIRATEFREIGHTERATMOSPHERICS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Dust"},
                {"Name", "Plasma"},
              },
              ["REMOVE"] = "SECTION"
            },
          }
        },
      }
    }
  }
}
