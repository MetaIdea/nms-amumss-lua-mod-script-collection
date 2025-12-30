NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Storm Hammer",
["MOD_AUTHOR"]      = "ArmaTec & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "This mod makes the Base Grenade launcher projectile a linear projectile (Removes Arc)",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRENADE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Scale",                   "1.300000"},                                
                {"Radius",                  "30.000000"},                                       
                {"DefaultSpeed",            "100.000000"},                                
                {"Gravity",                 "0.000000"},                                    
                {"Life",                    "8.000000"},                                
                {"RagdollPush",             "40.000000"},                                  
                {"DefaultDamage",           "45"},                                
                {"DefaultBounces",          "0"},                                     
                {"BounceMaxSpeed",          "0.000000"},                                
                {"BounceDamping",           "1.000000"},                                
                {"BounceFinalStopTime",     "0.100000"},                                
                {"HitOnBounce",             "true"},                                
                {"BulletLength",            "20.000000"},                                
                {"BulletGlowWidthTime",     "10.000000"},                                
                {"BulletGlowWidthMax",      "10.000000"},                                
                {"BulletGlowWidthMin",      "3.000000"},                                
                {"BulletScaler",            "1.300000"},                                
                {"BulletScalerMaxDist",     "1600.000000"},                                
                {"BulletMinScaleDistance",  "400.000000"},                                
                {"BulletMaxScaleDistance",  "4000.000000"},                                
                {"DamageImpactMinDistance", "2.000000"}, 
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINE_GREN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HitOnBounce", "true"},
              }
            },
          }
        },
      }
    }
  }
}