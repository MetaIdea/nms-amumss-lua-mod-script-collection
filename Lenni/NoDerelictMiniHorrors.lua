NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoDerelictMiniHorrors", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "6.05.2",
["MOD_DESCRIPTION"]			= "Horrific Nests on derelict freighters don't spawn minifiends",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{				
				{
					-- mimicking LARGE90SLIME.ENTITY.MBIN
					["MBIN_FILE_SOURCE"] = {
						"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/INFESTATION/LARGEPILLARSLIME/ENTITIES/LARGEPILLARSLIME.ENTITY.MBIN",
						"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/INFESTATION/MEDIUMHANGSLIME/ENTITIES/MEDIUMHANGSLIME.ENTITY.MBIN"
					},
					["MXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {
								{"Components", "GcAlienPodComponentData"},
								{"Components", "TkSketchComponentData"},
								{"Components", "GcScannableComponentData"},
								{"Components", "TkAnimationComponentData"},
								{"Components", "TkAudioComponentData"},
							},
							["REMOVE"] = "SECTION"
						},
						{
							["VCT"] = {
								{"OverrideRewardLoc", ""}, -- remove the "awaken infestation" label
							},
						},
						{
							["PKW"] = "DestroyedModel",
							["VCT"] = {
								{"Filename", ""}, -- prevent minifiends from spawning on destroy
							},
						},
					},
				},
			}
		}
	}	
}