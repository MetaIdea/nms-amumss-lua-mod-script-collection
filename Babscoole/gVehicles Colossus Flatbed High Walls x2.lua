NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "gVehicles Colossus Flatbed High Walls x2",
["MOD_AUTHOR"]       = "Gumsk",
["NMS_VERSION"]      = "6.21",
["MOD_DESCRIPTION"]  = "Raises or lowers the wall height on the colossus flatbed.",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\ROVER\FLATBED.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "FlatBed_Wall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleY", "2.000000"},
              }
            },
          }
        },
      }
    }
  }
}