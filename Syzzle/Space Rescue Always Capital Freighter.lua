Author = "Syzzle"
ModName = "Space Rescue Always Capital Freighter"
GameVersion = "6.17"
Description = "Makes the Space Rescue encounter always be a Capital Freighter."

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
          ["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData",},
              ["SECTION_ACTIVE"]  = 0,
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"AIShipRole","CapitalFreighter"},
              }
            },
          }
        },
      }
    }
  }
}