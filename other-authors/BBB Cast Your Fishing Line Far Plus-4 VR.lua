NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Cast Your Fishing Line Far Plus-4 VR.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill",
["NMS_VERSION"]     = "5.1.1",
["MOD_DESCRIPTION"] = "Causes the Sensitivity to Cast Input to increase. A very slight flick throws short, on up to a long cast motion actually throws the line out as far as it should go! Most of the changes are specific to VR although there are some additional minor quality of life upgrades that could help others: Fishing Range of attraction increased, Wait time for bites decreased slightly, Chase times evened up for all sizes of Fish (Vanilla game makes you wait much longer for the strike the bigger the fish is).",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
               
			   
			   
			   	{
                    ["MBIN_FILE_SOURCE"] = "GCFISHINGGLOBALS.GLOBAL.EXML",
                    ["EXML_CHANGE_TABLE"] =
                    {	
						
						
						{ 	--[[ straight top level value changes ]]--
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinVelocityToCast", "0.25"},
								{"VRCastStrength", "10"},
								{"FishingRangeVRMultiplier", "10"},
								{"CastGravity", "5"},								
								{"FishingRange", "100"},								
								{"MinWaitTime", "1"},
								{"MaxWaitTime", "5"} 
				            },
                        },
						
						
						{
                            ["PRECEDING_KEY_WORDS"] = {"ChaseTimes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Small", "1.5"},
								{"Medium", "1"},
								{"Large", "1"},
								{"ExtraLarge", "1"}								
                            },
                        },
						
						
					}
                },
			   
			   
			   
            }
        },
    }
}
