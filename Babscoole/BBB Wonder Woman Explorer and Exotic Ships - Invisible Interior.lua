NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Wonder Woman Explorer and Exotic Ships - Invisible Interior.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill & Babscoole",
["NMS_VERSION"]     = "5.1.1",
["MOD_DESCRIPTION"] = "Removes many of the front interior parts of Explorer Ships and for Exotic Ships (they actually use the same interior from a design standpoint) for the purposes of useful exploration while in 1st person mode or in VR",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
				{
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {                                
								--[[Hatch components; can't take all of Hatch since we need the WORLDUI for the menu]]--
								{"Name", "AnimGlassLOD0"},
								{"Name", "AnimGlassLOD1"},
								{"Name", "BlueLights"},								
								{"Name", "BottomHatch"},
								{"Name", "HatchSpin2JNT"},
								{"Name", "HatchSpinJNT"},
								{"Name", "LeftHatch"},
								{"Name", "MaskMeshLid"},
								{"Name", "MirrorMerged_X16"},
								{"Name", "MirrorMerged_X17"},
								{"Name", "RightHatch"},
								{"Name", "TopHatch"},
															
								{"Name", "TopBars"},
								{"Name", "MaskMesh"},
								{"Name", "GlassRightLOD0"},								
								{"Name", "GlassLeftLOD0"},
								{"Name", "InnerRing"},
								{"Name", "InnerRing1"},
								{"Name", "RightRings"},
								{"Name", "LeftRings"},								
								{"Name", "MirrorMerged_X186"},
								{"Name", "MirrorMerged_X20"},
								{"Name", "Floor"},
								{"Name", "Front"},
								
								--[[Can't do entire Dash1 due to conflict with BBB Stop Smacking the Cat - Move Explorer Hatch Handles (4 VR).lua.
								Do the rest of it...]]--								
								{"Name", "Sub1Dash1"},
								{"Name", "Sub2Dash1"},
								{"Name", "Sub3Dash1"},
								{"Name", "Sub5Dash1"},
								{"Name", "Sub6Dash1"},
								
								{"Name", "Dash2"},
								{"Name", "Dash3"},
								
								--[[Can't do entire Dash4 due to conflict with BBB Stop Smacking the Cat - Move Explorer Hatch Handles (4 VR).lua.
								Do the rest of it...]]--
								{"Name", "Sub1Dash4"},
								{"Name", "Sub2Dash4"},
								{"Name", "Sub3Dash4"},
								{"Name", "Sub5Dash4"},
								{"Name", "Sub6Dash4"},
								{"Name", "Holograms"},
								{"Name", "Screws"},
								{"Name", "InsideBack"},
								{"Name", "SUB3Screens1"},
								{"Name", "GearboxGlass"},
								{"Name", "TkRotate"},
								{"Name", "GearBoxInners"},
								{"Name", "GearBoxLight"}
							},	
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },				
            },
        },
    }
}