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
				{ 
          -- COMMENT = [[ does not count as an action (yet):
            -- create new file by copying an existing NMS file (in this case, it will replace an existing NMS file)
            -- ]],
					["MBIN_FILE_SOURCE"] 	=
					{ 
						{[[PIPELINES/PIPELINEDEFERREDVRPS4.BIN]],[[PIPELINES/PIPELINEDEFERREDVR.BIN]],"REMOVE"}, --"REMOVE" removes the original when present
					},
				},
				{ 
					["MBIN_FILE_SOURCE"] 	= "PIPELINES\PIPELINEDEFERREDVR.BIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
              COMMENT = [[ 1 action:
                modify the new file
                replacing with same here, for test purposes only
                ]],
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ -- replacing with same here, for test purposes only
									[[      <ClearTarget depthBuf="false" colBuf0="false" col_R="0.0" col_G="0.0" col_B="0.0" col_A="1.0" />]], 
									[[      <ClearTarget depthBuf="false" colBuf0="false" col_R="0.0" col_G="0.0" col_B="0.0" col_A="1.0" />]]
								},
							}
						},
					}
				},
			}
		},
	}	--1 global replacements
}