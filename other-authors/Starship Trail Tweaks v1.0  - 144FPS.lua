--THIS MOD IS CONFIGURED FOR FRAME RATES BETWEEN 120 AND 165

HOT_WIDTH = 4       --DEFINES WIDTH FOR NORMAL, EMERIL, CADMIUM, GOLDEN AND STEALTH TRAILS.
HOT_LENGTH = 4      --DEFINES LENGTH FOR NORMAL, EMERIL, CADMIUM, GOLDEN AND STEALTH TRAILS. VALUES UNDER 3 PRODUCE NO TRAIL.
RAINBOW_WIDTH = 3.5 --DEFINES WIDTH FOR CHROMATIC (RAINBOW) TRAIL.
RAINBOW_LEGTH = 4   --DEFINES LENGTH FOR CHROMATIC (RAINBOW) TRAIL. VALUES UNDER 3 PRODUCE NO TRAIL.

--SPUTTERING, TEMPORAL AND PLASMA TRAILS WON'T BEHAVE NICELY WITH SHORTER TRAILS SO NO OPTIONS FOR THOSE.

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Starship Trail Tweaks v1.0 - 144FPS",
["MOD_DESCRIPTION"] = "Shortens or removes engine trails while preserving the particle effects",
["MOD_AUTHOR"]      = "Saltifisu",
["NMS_VERSION"]     = "6.06",
["MODIFICATIONS"]   =
    {
    {
        ["MBIN_CHANGE_TABLE"]=
        {
            {
                ["MBIN_FILE_SOURCE"] ="MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTTRAIL.TRAIL.MBIN",  
                ["MXML_CHANGE_TABLE"] =
                    {
                        {
                        ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Width",   HOT_WIDTH},
                                {"Points",  HOT_LENGTH}
                            }
                        },
                    }
            },
            {
                ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/RAINBOWTRAIL.TRAIL.MBIN",
                ["MXML_CHANGE_TABLE"] =
                    {
                        {
                        ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Width",   RAINBOW_WIDTH},
                                {"Points",  RAINBOW_LEGTH}
                            }
                        },
                    }
            },
            {    
                ["MBIN_FILE_SOURCE"] =
                    {
                      "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/PLASMATRAIL.TRAIL.MBIN",  
                      "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/SPLUTTERINGTRAIL.TRAIL.MBIN",
                      "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/TIMELOOPTRAIL.TRAIL.MBIN",
                    },

                ["MXML_CHANGE_TABLE"] =
                    {
                        {
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width", "0"},
                            }
                        },

                    }

            },

        },
    }
    }   

}