NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SoundProofExtractor",
["MOD_DESCRIPTION"] = "Makes Noisy Mineral Extractors Silent",
["MOD_AUTHOR"]      = "Pyronox Omega and Babscoole",
["NMS_VERSION"]     = "6.18",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MODULE_PUMPS\ENTITIES\MINERALEXTRACTOR.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sound", ""},
              }
            },
          }
        },
      }
    },
  }
}