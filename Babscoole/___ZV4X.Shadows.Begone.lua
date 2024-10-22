NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "___ZV4X.Shadows.Begone.pak", 
["MOD_AUTHOR"]      = "ZV4X",
["LUA_AUTHOR"]      = "Babscole",
["NMS_VERSION"]     = "4.72",
["MOD_DESCRIPTION"] = "Disables shadow effect",
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
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = 
							{
								{
									[[    <RenderTarget id="SHADOWBUF"          depthBuf="true"         numColBufs="0"  format="RGBA8"  depthFormat="DEPTH16" scale="1.0" width="5760" height="1920" shadow="true" hasMips="false" numUniformBuffers="3" crossPipeShareId="SHADOW_SHARED" />]], 
									[[    <RenderTarget id="SHADOWBUF"          depthBuf="true"         numColBufs="0"  format="RGBA8"  depthFormat="DEPTH16" scale="0.01" width="5760" height="1920" shadow="true" hasMips="false" numUniformBuffers="3" crossPipeShareId="SHADOW_SHARED" />]]
								},
							}
						},
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = 
							{
								{
									[[    <RenderTarget id="SHADOWBUF_DS"       depthBuf="true"         numColBufs="0"  format="RED16F" depthFormat="DEPTH16" scale="1.0" width="2880" height="960"  shadow="true" hasMips="false" numUniformBuffers="1" esramPageDepthBuf="424" />]], 
									[[    <RenderTarget id="SHADOWBUF_DS"       depthBuf="true"         numColBufs="0"  format="RED16F" depthFormat="DEPTH16" scale="0.01" width="2880" height="960"  shadow="true" hasMips="false" numUniformBuffers="1" esramPageDepthBuf="424" />]]
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
							["VALUE_CHANGE_TABLE"] = 
							{
								{
									[[    <RenderTarget id="SHADOWBUF"          depthBuf="true"   numColBufs="0"  format="RGBA8" depthFormat="DEPTH16" scale="1.0" width="5376" height="1792" shadow="true" hasMips="false" numUniformBuffers="3" crossPipeShareId="SHADOW_SHARED" />]], 
									[[    <RenderTarget id="SHADOWBUF"          depthBuf="true"   numColBufs="0"  format="RGBA8" depthFormat="DEPTH16" scale="0.01" width="5376" height="1792" shadow="true" hasMips="false" numUniformBuffers="3" crossPipeShareId="SHADOW_SHARED" />]]
								},
							}
						},
					}
				},
			}
		},
	}
}