NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VR-NO-GLOW.pak", 
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_AUTHOR_CONTACT"]		= "Discord: @Mjjstral#1157",
["NMS_VERSION"]				= "3.22+",
["MOD_DESCRIPTION"]			= "Remove white glow around certain objects (creatures,npcs) when focusing them aka selection highlighting - allows more VR immersion",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "PIPELINES\PIPELINEDEFERREDVR.BIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- {
									{
										[[      <DoForwardLightLoop type="Mesh"     class="Highlight"            context="LIT_FORWARD_WITH_MASK" order="BACK_TO_FRONT" />]], 
										""
									},
								-- }
							}
						}
					}
				}
			}
		}
	}	
}