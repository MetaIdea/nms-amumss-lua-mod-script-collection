DiffuseFront = "TEXTURES/EFFECTS/SHIP/ENTRANCERUNWAYX.DDS" -- DIFFUSE MAP FOR FRONT ENTRANCE BEAMS
FrontDelete = "TEXTURES/EFFECTS/SHIP/ENTRANCERUNWAYXL.DDS" -- DELETED DIFFUSE MAP FOR FRONT ENTRANCE RUNWAY
DiffuseInterior = "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAMX.DDS" -- DIFFUSE MAP FOR INTERIOR HANGAR DOOR BEAM
Version = "1.1"
GameVersion = "4.23"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fBeam_Green_"..Version..".pak",
["MOD_AUTHOR"]		= "hemis FEAR",
["NMS_VERSION"]		= GameVersion,
["MOD_VERSION"] 	= Version,
["MOD_DESCRIPTION"]	= "Green Freighter Entrance Beam",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/HANGERRUNWAY_ENTRANCERUNWAYLINESMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", DiffuseFront } --Original "TEXTURES/EFFECTS/SHIP/ENTRANCERUNWAY.DDS" 
							}
						}
					}
				}	
			}
		},
		{
						["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR/HANGERRUNWAY_ENTRANCERUNWAYMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", FrontDelete } --Original "TEXTURES/EFFECTS/SHIP/ENTRANCERUNWAY.DDS" 
							}
						}
					}
				}	
			} 
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARPARTS/HANGARDOOR/HANGARDOORWAY_FRONT/ENTRANCEGLOW_MAT1.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", DiffuseInterior } --Original "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAM.DDS" 
							}
						}
					}
				}	
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARPARTS/HANGARDOOR/HANGARDOORWAY_FRONT/ENTRANCEGLOW_MAT1.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", DiffuseInterior } --Original "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAM.DDS" 
							}
						}
					}
				}	
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARPARTS/HANGARDOOR/HANGARDOOR_ANIMATED/GLOWGRADIENT_SKINNEDMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Map", DiffuseInterior } --Original "TEXTURES/SPACE/SPACESTATION/ENTRANCEBEAM.DDS" 
							}
						}
					}
				}	
			}
		}
	}	
}