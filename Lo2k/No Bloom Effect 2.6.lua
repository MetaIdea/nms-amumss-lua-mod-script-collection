NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "No Bloom Effect 2.6.pak", 
["MOD_AUTHOR"]      = "Lo2k",
["LUA_AUTHOR"]      = "Babscole",
["NMS_VERSION"]     = "4.46",
["MOD_DESCRIPTION"] = "Disables bloom effect",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{ 
					["MBIN_FILE_SOURCE"]  = "PIPELINES\PIPELINEDEFERRED.BIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomBright" enabled="true">]], 
									[[    <Stage id="NewBloomBright" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomPre" enabled="true">]], 
									[[    <Stage id="NewBloomPre" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomPost" enabled="true">]], 
									[[    <Stage id="NewBloomPost" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomResolve" enabled="true">]], 
									[[    <Stage id="NewBloomResolve" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomExposure" enabled="true">]], 
									[[    <Stage id="NewBloomExposure" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
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
					["MBIN_FILE_SOURCE"]  = "PIPELINES\PIPELINEDEFERREDVR.BIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomBright" enabled="true">]], 
									[[    <Stage id="NewBloomBright" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloom" enabled="true">]], 
									[[    <Stage id="NewBloom" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomResolve" enabled="true">]], 
									[[    <Stage id="NewBloomResolve" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[    <Stage id="NewBloomExposure" enabled="true">]], 
									[[    <Stage id="NewBloomExposure" enabled="false">]]
								},
							}
						},
						{
							["REPLACE_TYPE"]		= "RAW",
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