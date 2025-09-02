Author = "Syzzle"
ModName = "Better Pulse Scan - Curious Deposit Only"
GameVersion = "6.02"
--ModVersion = "v1.5"
Description = "Curious Deposity now show up when you use Pulse Scan with Multitool or Exocraft."

-- Thanks to people on Modding Discord and lyravega for a lot of ideas and guidance.

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
          ["MBIN_FILE_SOURCE"] 	= 
          {
            "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/ROLLINGPLANT/ENTITIES/ROLLINGPROP.ENTITY.MBIN"
          },
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"ScanRange",2000},
                {"ScannableType","Scanner"}
              }
            },	
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"ScannerIconsClumpRadius",25}, -- Original "10"
              }
            },	
          }
        },			
      }
    }
  }	
}