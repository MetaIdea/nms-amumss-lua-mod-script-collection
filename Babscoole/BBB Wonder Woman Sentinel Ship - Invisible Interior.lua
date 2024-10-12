NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Wonder Woman Sentinel Ship - Invisible Interior.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill & Babscoole",
["NMS_VERSION"]     = "5.1.1",
["MOD_DESCRIPTION"] = "Removes many of the front interior parts of a Sentinel Starship for the purposes of useful exploration while in 1st person mode or in VR",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
						{
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SUB1HatchFrameL"},
                                {"Name", "SUB1HatchFrameR"},
								{"Name", "HatchFrameL"},
								{"Name", "HatchFrameR"},
								{"Name", "BaseFrontR"},
								{"Name", "BaseFrontL"},
								{"Name", "BaseWallL"},
								{"Name", "BaseWallR"},
								
								{"Name", "SteelWiresL"},
								{"Name", "SteelWiresR"},
								{"Name", "DashR"},
								{"Name", "DashL"},
								
								{"Name", "GlassFrameL"},
								{"Name", "GlassFrameR"},
								{"Name", "GlassFrontL"},
								{"Name", "GlassFrontR"},
								{"Name", "GlassBackL"},
								{"Name", "GlassBackR"},
								{"Name", "DepthMask"},								
								
								{"Name", "Metal1"},
								{"Name", "Metal2"},
								{"Name", "Shield1"},
								{"Name", "Shield2"},
								
								
								{"Name", "polySurface8398"},
								{"Name", "FloorR"},
								{"Name", "FloorL"},
								{"Name", "CassetteL"},
								{"Name", "CassetteR"},
								{"Name", "VentsL"},
								{"Name", "VentsR"},							
								{"Name", "BackFrameL"},
								{"Name", "BackFrameR"},
								{"Name", "FrontTopDash"},

								{"Name", "FloorFront"},								
								{"Name", "SentinelSpinDetail"},
								{"Name", "FrontDash"},
								{"Name", "MonitorL"},
								{"Name", "MonitorR"},
								{"Name", "MonitorL1"},
								{"Name", "MonitorL2"},
								{"Name", "screenframe"},
								{"Name", "Screens1"},
								{"Name", "Projector"},
								
								--[[ Please use Sentinel Cockpit No Red Circuitry View by Babscoole for:
								{"Name", "Red1"},
                                {"Name", "Red2"},
								--]]								
								
								--[[ Please use Cleaner Sentinel Cockpit by Phoenixdive for:
								{"Name", "SUB1Cards5"}, --This one generates a warning in his because FrontTopDash already takes it out, but FrontTopDash is the parent and we want it out so it must stay this way.
								{"Name", "SUB2SentinelCableR"}, 
								{"Name", "SUB2SentinelCableL"}, 						
								{"Name", "MonFrontCables"},
								{"Name", "CableSpinnerL"},
								{"Name", "CableSpinnerR"},
								{"Name", "HijackCables"},
								{"Name", "SentinelCableL"},
								{"Name", "SentinelCableR"},
								{"Name", "FloorCablesL"},
								{"Name", "FloorCablesR"},
								{"Name", "FloorCables"},
								{"Name", "SideCable"}
								{"Name", "SkinnedCablesL"},
								{"Name", "SkinnedCablesR"},								
								--]]
                            },
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        },
    }
}