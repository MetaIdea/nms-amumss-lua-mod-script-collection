AmbientIntensity = 2.5              --Ambient SpotLight intensity. Original value "0.8"
AmbientColourRed = 0.95		    	--Ambient color red saturation percent. Original value "1"
AmbientColourGreen = 0.993			--Ambient color green saturation percent. Original value "0.76"
AmbientColourBlue = 0.944			--Ambient color blue saturation percent. Original value "0.68"
AmbientColourA = 1					--Ambient opacity. Original value "1"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]	= "LighterDerelictFreighter.pak",
    ["MOD_DESCRIPTION"]	= "",
    ["MOD_AUTHOR"]		= "TheLich",
    ["NMS_VERSION"]		= "1.0.1",
    ["MODIFICATIONS"]	=
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
	                ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlayerAmbientSpotLightIntensity", AmbientIntensity},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "PlayerAmbientSpotLightColour",
	                        ["VALUE_CHANGE_TABLE"] =
                            {
		                        {"R", AmbientColourRed},
                                {"G", AmbientColourGreen},
                                {"B", AmbientColourBlue},
                                {"A", AmbientColourA}
                            }
                        },
                    }
                },
            }
        },
    }
}
