NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Dig Out 2.6.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.52",
["MOD_DESCRIPTION"]			= "This mods better digs out some building parts",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BUILDLANDINGPAD"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RemovesAttachedDecoration", "False"},
								{"TerrainEditBaseYOffset", "3"},
								{"TerrainEditTopYOffset", "3"},
								{"TerrainEditBoundsScalar",	"2"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "TELEPORTER"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseTerrainEditShape",	"Cylinder"},
								{"TerrainEditBaseYOffset",	"0.7"},
								{"TerrainEditTopYOffset",	"0"},
								{"TerrainEditBoundsScalar",	"1.2"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER0"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER1"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER2"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER3"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER4"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER5"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER6"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER7"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER8"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CONTAINER9"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditBaseYOffset", "0.3"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "DRESSING_TABLE"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"BaseTerrainEditShape", "Cylinder"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "RACE_RAMP"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "RACE_BOOSTER"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EditsTerrain",	"True"},
								{"TerrainEditTopYOffset", "2"}
							}
						}
					}
				}
			}
		}
	}	
}