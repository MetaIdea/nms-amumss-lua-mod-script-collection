Author = "Syzzle"
ModName = "Abandoned Starship Fabricator"
GameVersion = "6.05"
Description = "Add the Starship Fabricator to the Abandoned Space Stations in the Abandoned Mode."

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
          MBIN_FILE_SOURCE 	= "MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION_ABANDONED.SCENE.MBIN",
          MXML_CHANGE_TABLE 	= 
          {
            {
              SPECIAL_KEY_WORDS = {"Children","TkSceneNodeData"},
              SECTION_ACTIVE  = 13,
              SEC_SAVE_TO = "ABANDONED_SHIP_FABRICATOR",
            },
            {
              SEC_EDIT = "ABANDONED_SHIP_FABRICATOR",
              VALUE_CHANGE_TABLE  =
              {
                {"Name","DOCKSHIPBUILDER"},
                {"NameHash","404799576"},
                {"TransX","0"},
                {"TransY","0.022237"},
                {"TransZ","205"},
                {"RotX","0"},
                {"RotY","180"},
                {"RotZ","0"},
                {"Value","MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/LANDINGPAD_BUILDER.SCENE.MBIN"}
              }
            },
            {
              SPECIAL_KEY_WORDS = {"Children","TkSceneNodeData"},
              SECTION_ACTIVE  = 13,
              ADD_OPTION = "ADDafterSECTION",
              SEC_ADD_NAMED = "ABANDONED_SHIP_FABRICATOR",
            },
          }
        },
      }
    }
  }
}