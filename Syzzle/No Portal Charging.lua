Author = "Syzzle"
ModName = "No Portal Charging"
GameVersion = "6.02"
Description = "Skips the whole process of charging the portal in order to use it."

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        {
          ["MBIN_FILE_SOURCE"] 	= "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"AutoCompleteOnStart","True"}, -- Original "False"
              }
            },
          }
        },
      }
    }
  }
}