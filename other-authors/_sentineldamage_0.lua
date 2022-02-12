NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]          = "_sentineldamage_0.pak", 
["MOD_AUTHOR"]            = "outlawzgosu", 
["NMS_VERSION"]            = "3.35",
["MODIFICATIONS"]          = 
   {
      {
         ["PAK_FILE_SOURCE"]    =  "NMSARC.515F1D3.pak", 
         ["MBIN_CHANGE_TABLE"]    = 
         { 
            {
               ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
               ["EXML_CHANGE_TABLE"]    = 
               {
                  {
                     ["PRECEDING_KEY_WORDS"] = { "ID", "MINIDRONE_DMG" },
                     ["VALUE_CHANGE_TABLE"]    = 
                     {
                        {"Damage",      "0"},    
                        {"PushForce",   "0"},   
                     }
                  },

                  {
                     ["PRECEDING_KEY_WORDS"] = { "ID", "ROBOTGUNDMG" },
                     ["VALUE_CHANGE_TABLE"]    = 
                     {
                         {"Damage",      "0"},    
                         {"PushForce",   "0"},   
                     }
                  },

                  {
                     ["PRECEDING_KEY_WORDS"] = { "ID", "WALKERLASER" },
                     ["VALUE_CHANGE_TABLE"]    = 
                     {
                         {"Damage",      "0"},    
                         {"PushForce",   "0"},   
                     }
                  },

                  {
                     ["PRECEDING_KEY_WORDS"] = { "ID", "MINIDRONE_DMG" },
                     ["VALUE_CHANGE_TABLE"]    = 
                     {
                         {"Damage",      "0"},    
                         {"PushForce",   "0"},   
                     }
                  }, 

                  {
                     ["PRECEDING_KEY_WORDS"] = { "ID", "MPGUN" }, 
                     ["VALUE_CHANGE_TABLE"]    = 
                     {
                         {"Damage",      "0"},    
                         {"PushForce",   "0"},   
                     }
                  },

                  {
                     ["PRECEDING_KEY_WORDS"] = { "ID", "ROBOTBIGGUN" }, 
                     ["VALUE_CHANGE_TABLE"]    = 
                     {
                         {"Damage",      "0"},    
                         {"PushForce",   "0"},   
                     }
                  }
               } 
            }
         }
      }
   }   
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE


