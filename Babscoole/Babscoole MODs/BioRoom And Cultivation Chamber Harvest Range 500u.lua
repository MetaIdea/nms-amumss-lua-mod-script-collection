Range = 500

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BioRoom And Cultivation Chamber Harvest Range " .. Range .. "u",
["MOD_AUTHOR"]      = "KuroPeach & Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Modified the harvesting range of BioRoom and Cultivation Chamber to 500u",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN",
            "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/PLANTROOM/PARTS/FLOOR0/ENTITIES/INTERACTION.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"StateID", "HARVEST"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Radius", Range}
              }
            }
          }
        }
      }
    }
  }
}