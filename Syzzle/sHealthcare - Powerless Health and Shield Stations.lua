Author = "Syzzle"
ModName = "sHealthcare - Powerless Health and Shield Stations"
GameVersion = "6.04"
Description = "Makes the Health and Shield Stations use no power."

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
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"ID","HEALTHSTATION","LinkGridData","GcBaseLinkGridData"},
              VALUE_CHANGE_TABLE  =
              {
                {"Rate",0},
              }
            },
            {
              SPECIAL_KEY_WORDS = {"ID","SHIELDSTATION","LinkGridData","GcBaseLinkGridData"},
              VALUE_CHANGE_TABLE  =
              {
                {"Rate",0},
              }
            },
          }
        },
      }
    }
  }
}