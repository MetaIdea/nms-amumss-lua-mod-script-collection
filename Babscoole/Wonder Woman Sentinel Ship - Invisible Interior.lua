NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Wonder Woman Sentinel Ship - Invisible Interior.pak",
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
								{"Name", "WireLightsL"},
								{"Name", "WireLightsR"},
								{"Name", "SteelWiresL"},
								{"Name", "SteelWiresR"},
								{"Name", "DashR"},
								{"Name", "DashL"},
								{"Name", "Metal1"},
								{"Name", "GlassFrameL"},
								{"Name", "GlassFrameR"},
								{"Name", "Shield1"},
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
								{"Name", "FrontDashDet"},
								{"Name", "FloorFront"},
								{"Name", "SUB1FrontDash"},
								{"Name", "FrontDash"}								
								
								--[[ Please use Sentinel Cockpit No Red Circuitry View by Babscoole for:
								{"Name", "Red1"},
                                {"Name", "Red2"},
								--]]								
								
								--[[ Please use Cleaner Sentinel Cockpit by Phoenixdive for:
								{"Name", "SUB1Cards5"}, --this one generated a warning for me as not being in the MBIN, but he's got it spec'd over in his
								{"Name", "SUB2SentinelCableR"}, --this one generated a warning for me as not being in the MBIN, but he's got it spec'd over in his
								{"Name", "SUB2SentinelCableL"}, --this one generated a warning for me as not being in the MBIN, but he's got it spec'd over in his								
								{"Name", "SentinelCableL"}, --this one generated a warning for me as not being in the MBIN, but he's got it spec'd over in his								
								{"Name", "SentinelCableR"}, --this one generated a warning for me as not being in the MBIN, but he's got it spec'd over in his								
								{"Name", "MonFrontCables"},
								{"Name", "CableSpinnerL"},
								{"Name", "CableSpinnerR"},
								{"Name", "HijackCables"},
								{"Name", "FloorCablesL"},
								{"Name", "FloorCablesR"},
								{"Name", "FloorCables"},
								{"Name", "SideCable"}
								{"Name", "SkinnedCablesL"},
								{"Name", "SkinnedCablesR"},								
								--]]
																
								
								--[[ these were not found in the XML even though they showed up in the Blender model.
								{"Name", "SUB1FloorFront"},
								{"Name", "deetsEnds46"},
								{"Name", "deetsEnds47"},
								{"Name", "SUB1SentinelCableL"},
								{"Name", "SUB1FloatingGeo25"},
								{"Name", "InsertL"},
								{"Name", "InsertR"},
								{"Name", "IndetL"},
								{"Name", "IndetR"},					
								{"Name", "FloatingGeo24"},
								{"Name", "FloatingGeo25"},
								{"Name", "DashDet"},
								{"Name", "CasLightL1"},
								{"Name", "Cards5"},
								{"Name", "bolts"},
								{"Name", "SUB1Cards5"},
								{"Name", "SUB3SentinelCableL"},
								{"Name", "SUB3SentinelCableR"},
								{"Name", "SUB1BaseWallL"},
								{"Name", "SUB1BaseWallR"},
								{"Name", "deetsEndsL"},
								{"Name", "deetsEndsR"},
								{"Name", "CasLightL"},
								{"Name", "CasLightR"},
								{"Name", "SUB1BaseFrontL"},
								{"Name", "SUB1BaseFrontR"}
								]]--
                            },
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        },
    }
}