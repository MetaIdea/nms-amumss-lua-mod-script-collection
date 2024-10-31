NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME    = "No Stars 1.5.pak", 
MOD_AUTHOR      = "Lo2k",
LUA_AUTHOR      = "Lo2k",
NMS_VERSION     = "5.22",
MOD_DESCRIPTION = "Completely removes stars in the sky",
MODIFICATIONS   = 
	{
		{
			MBIN_CHANGE_TABLE = 
			{ 
				{ 
					MBIN_FILE_SOURCE  = "PIPELINES\PIPELINEDEFERRED.BIN",
					EXML_CHANGE_TABLE = 
					{
						{
							REPLACE_TYPE		= "RAW",
							VALUE_CHANGE_TABLE 	= 
							{
								{
									[[    <DrawGeometry type="PStream" class="Opaque"    context="PSTREAM_SYSTEM"    order="STATECHANGES" />]], 
									[[ ]]
								},
							}
						},
					}
				},
				{ 
					MBIN_FILE_SOURCE  = "PIPELINES\PIPELINEDEFERREDVR.BIN",
					EXML_CHANGE_TABLE = 
					{
						{
							REPLACE_TYPE		= "RAW",
							VALUE_CHANGE_TABLE 	= 
							{
								{
									[[    <DrawGeometry type="PStream" class="Opaque"    context="PSTREAM_SYSTEM"    order="FRONT_TO_BACK" />]], 
									[[ ]]
								},
							}
						},
					}
				},
			}
		},
	}
}