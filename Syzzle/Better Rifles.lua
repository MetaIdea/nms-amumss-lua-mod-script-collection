Author = "Syzzle"
ModName = "Better Rifles"
GameVersion = "4.52"
--ModVersion = "v1.1"
Description = "Change Rifle base stats to the same as Alien Multi-Tool."

-- Thanks for Babscoole on Modding Discord for teaching me how to use SPECIAL_KEY_WORDS and the existence of MapFileTrees

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
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
            
          ["EXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryCostDataEntry.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"B",10},
                {"A",25},
                {"S",50}
              }
            },	
            -- Class C Multitools Base Stats
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","C","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_DAMAGE",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",10},
                {"Max",15}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","C","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_MINING",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Max",5}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","C","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_SCAN",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",20},
                {"Max",25}
              }
            },
            -- Class B Multitools Base Stats
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","B","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_DAMAGE",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",15},
                {"Max",20}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","B","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_MINING",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",5},
                {"Max",10}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","B","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_SCAN",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",30},
                {"Max",35}
              }
            },
            -- Class A Multitools Base Stats
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","A","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_DAMAGE",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",20},
                {"Max",25}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","A","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_MINING",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",10},
                {"Max",15}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","A","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_SCAN",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",40},
                {"Max",45}
              }
            },
            -- Class S Multitools Base Stats
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","S","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_DAMAGE",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",25},
                {"Max",35}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","S","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_MINING",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",15},
                {"Max",20}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Rifle","GcInventoryGenerationBaseStatData.xml","S","GcInventoryGenerationBaseStatClassData.xml","BaseStatID","WEAPON_SCAN",},
              ["VALUE_CHANGE_TABLE"] 	= 
              {
                {"Min",50},
                {"Max",60}
              }
            },
          }
        },
      }
    }
  }	
}