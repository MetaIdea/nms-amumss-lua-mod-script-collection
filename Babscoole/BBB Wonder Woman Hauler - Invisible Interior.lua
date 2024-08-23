NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Wonder Woman Hauler - Invisible Interior.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill & Babscoole",
["NMS_VERSION"]     = "5.1.1",
["MOD_DESCRIPTION"] = "Removes many of the front interior parts of the Hauler type including the Iron Vulture Starship for the purposes of useful exploration while in 1st person mode or in VR",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                --[[ For COCKPITA including Iron Vulture ]]--
				{
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {                                
								{"Name", "Ceiling"},
								{"Name", "CeilingScreens"},
								{"Name", "Frame"},
								{"Name", "GlassLOD0"},
								{"Name", "GlassLOD1"},
								{"Name", "GlassRim"},
								{"Name", "MaskMeshLid"},
								{"Name", "Pedals"},
								{"Name", "Cockpit"},								
								{"Name", "Floor"},
								{"Name", "LeftPipes"},
								{"Name", "LeftDetail"},
								{"Name", "LeftCanister"},
								{"Name", "LeftButtons"},								
								{"Name", "LeftPanel"},
								{"Name", "RightPipes"},
								{"Name", "RightDetail"},
								{"Name", "RightButtons"},
								{"Name", "RightPanel"},
								{"Name", "Shell"},
								{"Name", "pSphere49"},
								{"Name", "Dasboard1"}
							},	
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
				--[[ End For COCKPITA including Iron Vulture ]]--				
				
				--[[ For COCKPITB ]]--
				{
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Pedals"},
								{"Name", "Floor1"},
								{"Name", "LeftCables"},
								{"Name", "LeftCables2"},
								{"Name", "LeftCanister"},
								{"Name", "Shell"},
								{"Name", "UpperRimLights"},
								{"Name", "Frame"},								
								{"Name", "Cables"},
								--[[{"Name", "ceilingscreens"},]]--
								{"Name", "GlassLOD0"},
								{"Name", "GlassLOD1"},
								{"Name", "MaskMeshLid"},
								--[[{"Name", "pSphere50"},]]--
								{"Name", "roof34"},
								{"Name", "TopPiece"},
								{"Name", "TopScreens"},
								{"Name", "Dashboard"},								
								{"Name", "Dasboard1"},
								{"Name", "DashboardGlass"},
								{"Name", "LeftButtons"},
								{"Name", "LeftPanel"},
								{"Name", "LeftWall"},
								{"Name", "LeftWall2"},
								{"Name", "RightWall"},
								{"Name", "RightWall2"},
								{"Name", "RightButtons"},								
								{"Name", "RightPanel"},
								{"Name", "RightCables"},
								{"Name", "RightCables2"},
								{"Name", "RightBox"}								
							},                            
							
							["REMOVE"] = "SECTION"
                        },
                    }
                },				
				--[[ End For COCKPITB ]]--				
            },
        },
    }
}