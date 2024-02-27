Author = "Syzzle"
ModName = "Better Pulse Scan and Ship Scan - Curious Deposit Only"
GameVersion = "4.52"
--ModVersion = "v1.5"
Description = "Curious Deposity now show up when you use Pulse Scan with Multitool or Exocraft, increased range and minimum amount of Buildings you can find with Ship Scan."

-- Thanks to people on Modding Discord and lyravega for a lot of ideas and guidance.

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..".pak",
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
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"ScanRange",1000},
                {"ScannableType","Scanner"}
              }
            },	
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] 	=
          {	
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"MaxIconRange",10000},
                {"UnknownBuildingRange",10000},
                {"MinShipScanBuildings",4},
                {"MaxShipScanBuildings",10}
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"ScannerIconsClumpRadius",25}, -- Original "10"
              }
            },	
          }
        },
        -- {
        -- 	["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
        -- 	["EXML_CHANGE_TABLE"] 	= 
        -- 	{
        -- 		{
        -- 			["VALUE_CHANGE_TABLE"]  =
        -- 			{
        -- 				{"ScannableIconMergeAngle",15}, -- Original "9"
        -- 			}
        -- 		},	
        -- 	}
        -- },				
      }
    }
  }	
}