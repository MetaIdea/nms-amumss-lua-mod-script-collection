NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ForceVRMode.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			=                                       -- VR COULD WORK OR NOT, CANNOT TEST!
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PipelineFile",	"PIPELINES/PIPELINEDEFERREDVR.BIN"} 	-- Original "PIPELINES/PIPELINEDEFERRED.BIN"
							}
						}
					} --1 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
