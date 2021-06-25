NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VR-NO-GLOW.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.24",
["MOD_DESCRIPTION"]			= "Remove white glow around objects when focusing it (especially for VR immersion)",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ --create new file by copying an existing NMS file (in this case, it will replace an existing NMS file)
					["MBIN_FILE_SOURCE"] 	=
					{ 
						{[[PIPELINES/PIPELINEDEFERREDVRPS4.BIN]],[[PIPELINES/PIPELINEDEFERREDVR.BIN]],"REMOVE"}, --"REMOVE" removes the original when present
					},
				},
				{ --modify the new file
					["MBIN_FILE_SOURCE"] 	= "PIPELINES\PIPELINEDEFERREDVR.BIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[      <!--<ClearTarget colBuf0="false" depthBuf="false" stencilBuf="true" />-->]], 
									[[      <ClearTarget colBuf0="false" depthBuf="false" stencilBuf="true" />]]
								},
							}
						},
					}
				},
			}
		},
	}	
}