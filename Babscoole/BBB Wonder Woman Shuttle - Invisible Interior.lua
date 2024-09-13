NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Wonder Woman Shuttle - Invisible Interior.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill & Babscoole",
["NMS_VERSION"]     = "5.11",
["MOD_DESCRIPTION"] = "Removes many of the front interior parts of the Shuttle type for the purposes of useful exploration while in 1st person mode or in VR",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
               
				{
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {                                
								
							
															
								{"Name", "GlassLOD0"},	
								{"Name", "GlassLOD1"},
								{"Name", "SideGlassLOD0"},
								{"Name", "SideGlassLOD1"}, 
								{"Name", "SideGlassBLOD1"}, 
								{"Name", "DepthMask"},
								{"Name", "Ceiling"},
								{"Name", "Glass"},								
								{"Name", "Screens_2"},
								{"Name", "LeftDetail"},
								{"Name", "RightDetail"},								
								{"Name", "Canopy"},								
								{"Name", "CanopyDetails"},
								{"Name", "CanopyGlass1"},
								{"Name", "Dash"},
								{"Name", "BottomFront"},
								{"Name", "RedHandle"},
								{"Name", "CentralDisplay"},								
								{"Name", "TopPipes"},
								{"Name", "LeftPipes"},
								{"Name", "RightPipes"},
								{"Name", "LeftFloor"},
								{"Name", "RightFloor"},
								{"Name", "LeftWall"},
								{"Name", "RightWall"},								
								{"Name", "LeftDash"},
								{"Name", "RightDash"},
								{"Name", "SmallLights"},
								{"Name", "LeftShelf"},
								{"Name", "RightShelf"},								
								{"Name", "Buttons"},
								{"Name", "Decals"},
								{"Name", "Dials"},
								{"Name", "Fan"},
								{"Name", "Floor1"},
								{"Name", "Floor"},
								{"Name", "Material1"},
								{"Name", "Material2"},
																
								--[[ 
								This line kills the whole game. Trust, don't ever use this one. Something in the game must use part of it as a reference point and if not there, when
								you call down a shuttle starship the whole game crashes!: 
								
								{"Name", "Material"},
							 	]]--
						
								
							},	
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },

				
            },
        },
    }
}