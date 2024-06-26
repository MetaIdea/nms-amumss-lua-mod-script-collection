NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "AlwaysAnomalyAccess.pak",
["MOD_DESCRIPTION"]	= "Gives you access to the anomaly from the start",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "4.72",
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
			["EXML_CHANGE_TABLE"] 	= {
				{
					["VCT"] = {
						{"HasAccessToNexus", "True"},
					},
				}
			},   
		},  
	}
}
}}