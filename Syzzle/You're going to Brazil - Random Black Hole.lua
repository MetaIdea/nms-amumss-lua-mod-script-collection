Author = "Syzzle"
ModName = "You're going to Brazil - Random Black Hole"
GameVersion = "6.17"
Description = "Black Hole destination is now random instead of fixed."

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
          ["MBIN_FILE_SOURCE"] 	= "MODELS/SPACE/BLACKHOLE/BLACKHOLE/ENTITIES/BLACKHOLE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"WarpType","SpacePOI"},
              }
            },
          }
        },
      }
    }
  }
}