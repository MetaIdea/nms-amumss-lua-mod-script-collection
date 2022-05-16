NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_DUD_TractorBeam_v3751.pak", 
["MOD_AUTHOR"]				= "jasondude7116",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.89",
["MOD_DESCRIPTION"]			= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PlayerAutoLandRange",	"200"},	-- Original "500"
								{"TakeOffSpeed",	"60"}		-- Original "80"								
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HasOwnGravity",	"True"},
								{"ApproachSpeed",	"120"},
								{"LandingSpeed",	"5"},
								{"TakeOffSpeed",	"120"},
								{"TakeOffBoost",	"0"},							
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION_ABANDONED.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ApproachSpeed",	"120"},
								{"LandingSpeed",	"5"},
								{"TakeOffSpeed",	"120"},
								{"TakeOffBoost",	"0"},							
							}
						},
					}
				},				
			}
		}
	}	
}