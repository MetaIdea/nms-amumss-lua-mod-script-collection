NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Clear_Filters.pak",
["MOD_AUTHOR"]		= "ApexFatality",
["LUA_AUHTOR"]		= "Lenni",
["NMS_VERSION"]		= "4.23",
["MOD_DESCRIPTION"]	= "Enables some clear filters in photo mode",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/EFFECTS/SCREENFILTERS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PKW"] 	= "Vintage",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "LocText", 							"PHOTO_FILTER_3" }, --Original "UI_PHOTOMODE_FILTER1"
								{ "Filename", 							"TEXTURES/LUT/FILTERS/DEFAULT.DDS" }, --Original "TEXTURES/LUT/FILTERS/VINTAGE.DDS"
							}
						},
						{
							["PKW"] 	= "HyperReal",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "LocText", 							"PHOTO_FILTER_4" }, --Original "PHOTO_FILTER_24"
								{ "Filename", 							"TEXTURES/LUT/FILTERS/IDENTITY.DDS" }, --Original "TEXTURES/LUT/FILTERS/HYPERREAL.DDS"
								{ "SelectableInPhotoMode", 				"True" }, 	--Original "False"
							}
						},
						{
							["PKW"] 	= "Desaturated",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "LocText", 							"PHOTO_FILTER_6" }, --Original "PHOTO_FILTER_8"
								{ "Filename", 							"TEXTURES/LUT/FILTERS/FROZENDEFAULT.DDS" }, --Original "TEXTURES/LUT/FILTERS/DESATURATED.DDS"
								{ "SelectableInPhotoMode", 				"True" }, 	--Original "False"
							}
						},
					}
				}
			}
		}
	}	
}	
