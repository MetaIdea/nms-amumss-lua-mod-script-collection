NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Wonder Woman Fighter - Invisible Interior.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill & Babscoole",
["NMS_VERSION"]     = "5.11",
["MOD_DESCRIPTION"] = "Removes many of the front interior parts of the Fighter type for the purposes of useful exploration while in 1st person mode or in VR",
["MODIFICATIONS"]   =
    {
        {
            			
			["MBIN_CHANGE_TABLE"] =
            {
               
				{
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {                                
								{"Name", "Dashboard"},
								{"Name", "FloatingGeo"},
								{"Name", "Decals"},
								{"Name", "Screws"},
								{"Name", "Floor"},
								{"Name", "Screens"},
								{"Name", "AnimatedButtons"},
								{"Name", "SmallLights"},
								{"Name", "Glass"},
								{"Name", "Cables"},
								{"Name", "Cables2"} 
							},	
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
				
				
				{
					["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] =
							{                                
								{"Name", "GlassLOD0"},
								{"Name", "Canopy"},
								{"Name", "MirrorMerged_X"},
								{"Name", "MirrorMerged_X2"},
								{"Name", "CockPitA"},
																
							},	
							["REMOVE"] = "SECTION"
						}
					},
				},
			
				
				{
					["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] =
							{                                
								{"Name", "GlassLOD0"},
								{"Name", "Lines"},
								{"Name", "MirrorMerged_X"},
								{"Name", "MirrorMerged_X6"},
								{"Name", "CockpitB"},
								{"Name", "Buttons"}
							
						
							},	
							["REMOVE"] = "SECTION"
						}
					},
				},
			

				
            },
        },
    }
}