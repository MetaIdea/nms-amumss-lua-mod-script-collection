NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]      = "__ResponsiveMech.pak",
["MOD_DESCRIPTION"]     = "Responsive Mech",
["MOD_AUTHOR"]        = "TheLich",
["NMS_VERSION"]       = "1.0",
["MODIFICATIONS"]       = 
  {
    {
      ["MBIN_CHANGE_TABLE"]   = 
      { 
        {
          ["MBIN_FILE_SOURCE"]  = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"]   = 
          {
            {
              ["VALUE_CHANGE_TABLE"]  = 
              {
                {"MechPlayerGroundTurnSpeed",       "0.15"},    -- Original "0.5"
                {"MechJetpackTurnSpeed",    "0.35"},    -- Original "3"
                {"MechWalkToRunTimeIdle",   "0.1"},   -- Original "2"
                {"MechLandBrake",       "6"},   -- Original "4"
                {"MechJetpackLandTime",     "0.1"},   -- Original "0.6"
                {"MechTitanFallLandIntroTime",      "3"},   -- Original "4.5"
                {"MechJetpackForce", "150.0"},   -- Original "70"
                {"MechJetpackMaxSpeed", "50.0"},   -- Original "20"
                {"MechJetpackMaxUpSpeed", "50.0"},   -- Original "20"
                {"MechJetpackIgnitionForce", "320.0"}   -- Original "120"
              } 
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
              ["VALUE_CHANGE_TABLE"] = {
                {"TopSpeedForward", "5.000000"} -- Original "2"
              }
            }
          }
        }
      }
    }
  } 
}