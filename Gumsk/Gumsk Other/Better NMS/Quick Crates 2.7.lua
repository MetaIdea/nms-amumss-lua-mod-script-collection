NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Quick Crates 2.7.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["LUA_AUTHOR"]		= "Lo2k & Babscoole",
	["MOD_DESCRIPTION"]	= "This mod opens crates in one click",
	["NMS_VERSION"]		= "472",	
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE_RARE\ENTITIES\CRATE_LARGE_RARE.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AnimType",	"OneShot"},
								{"Active", "False"},
							},
						},				
						{      
							["PRECEDING_KEY_WORDS"] = {"GcMaintenanceComponentData.xml",},
							["REMOVE"] 	= "SECTION",
						},
					},
				},
                {
                    ["MBIN_FILE_SOURCE"] =  --Copy+ rename original anim file - thanks babscoole
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE.ANIM.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE_RARE.ANIM.MBIN", "REMOVE"},
                    },
                },
			},
		},
	},
}