NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DontHideAutophageCamps.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.43",
["MOD_DESCRIPTION"]			= "Do not hide Autophage camps",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/NPCS/NPCSPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]	= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"UseScanToRevealData", "False"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/PARTS/BURINGBARREL/ENTITIES/DATA.ENTITY.MBIN",
						"MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/PARTS/FABRICSTAND/ENTITIES/FABRICSTAND.ENTITY.MBIN",
						"MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/PARTS/ROBOTSMALLSHACK/ENTITIES/DATA.ENTITY.MBIN",
						"MODELS/PLANETS/COMMON/BUILDINGS/ROBOT/PARTS/ROBOTTERMINALSMALL/ENTITIES/ROBOTTERMINAL.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PKW"]	= "GcScanToRevealComponentData.xml",
							["REPLACE_TYPE"]	= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"StartEnabled", "False"},
							}
						},
					}
				}
			}
		}
	}	
}