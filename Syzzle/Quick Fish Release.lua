Author = "Syzzle"
ModName = "Quick Fish Release"
GameVersion = "6.05"
Description = "Doesn't close the inventory when you release a fish."

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
  {
    {
      MBIN_CHANGE_TABLE 	= 
      { 
        {
          MBIN_FILE_SOURCE 	= "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS =
              {
                  {"ID", "F_JELLYCHILD"},
                  {"ID", "FISH_COMMON"},
                  {"ID", "FISH_RARE"},
                  {"ID", "FISH_EPIC"},
                  {"ID", "FISH_LEGEND"},
              },
              VALUE_CHANGE_TABLE =
              {
                  {"CloseInventoryWhenUsed", "False"}
              }
            },
          }
        },
      }
    }
  }
}