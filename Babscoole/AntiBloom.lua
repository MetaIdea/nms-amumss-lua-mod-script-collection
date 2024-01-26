NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "AntiBloom.pak", 
["MOD_AUTHOR"]      = "AndiPro66",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.48",
["MOD_DESCRIPTION"] = "No more annoying Bloom Effects",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{ 
					["MBIN_FILE_SOURCE"] = "PIPELINES\PIPELINEDEFERRED.BIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NoBloom" enabled="false">]], 
									[[    <Stage id="NoBloom" enabled="true">]]
								},
							}
						},
					}
				},
				{ 
					["MBIN_FILE_SOURCE"] = "PIPELINES\PIPELINEDEFERREDVR.BIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NoBloom" enabled="false">]], 
									[[    <Stage id="NoBloom" enabled="true">]]
								},
							}
						},
					}
				},
			}
		},
	}
}