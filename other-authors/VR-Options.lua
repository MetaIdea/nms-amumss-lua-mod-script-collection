NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VR-CAM-OPTIONS-MOD.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.06",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HmdEyeLookAngle", "-5" },
								{ "HmdEyeExtraTurnAngle", "-15" },
								{ "HmdEyeExtraTurnMinHeadAngle", "55" },
								{ "HmdEyeExtraTurnHeadAngleRange", "45" }
								--{"UsePlayerCameraInHmd",			"False"}					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "InteractionOffsetExtraVR",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "x", "0" },
								{ "y", "0" },
								{ "z", "-0.75" }
					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "InteractionOffsetExtraVRSeated",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "x", "0" },
								{ "y", "0.45" },
								{ "z", "-0.55" }
					
							}
						},
					}
				},
			}
		},
	}	
}


  <Property name="HmdEnable" value="False" />
  <Property name="HmdOutput" value="False" />
  <Property name="HmdTracking" value="False" />
  <Property name="HmdStereoRender" value="False" />
  <Property name="HmdDistortionPassthru" value="False" />
  <Property name="HmdMonitor" value="1" />
  <Property name="HmdEyeBufferWidth" value="0" />
  <Property name="HmdEyeBufferHeight" value="0" />
  <Property name="HmdEyeScalePos" value="1.4" />
  <Property name="HmdHeadScalePos" value="1.4" />
  <Property name="HmdImmersionFactor" value="9000.1" />
  <Property name="PipelineFileVR" value="PIPELINES/PIPELINEDEFERREDVR.BIN" />
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE