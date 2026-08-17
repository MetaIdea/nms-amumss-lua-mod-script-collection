NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "UnobstructDistanceInCockpit",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "6.45.1",
["MOD_DESCRIPTION"]	= "Removes the physical throttle control from explorer and exotic cockpits",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {{"MODELS\COMMON\SPACECRAFT\SHARED\COCKPITINTERIORS\COCKPITCHAIR\COCKPITCHAIR.SCENE.MBIN", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\COCKPITCHAIR.SCENE.MBIN", "REMOVE"}},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\COCKPITCHAIR.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"] = {"Children","TkSceneNodeData", "Name", "LController"},
							["REMOVE"] = "SECTION",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"] = {"Children","TkSceneNodeData", "Name", "CockpitChair_Ref", "Name", "SCENEGRAPH"},
							["VCT"] = {
								{"Value", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\COCKPITCHAIR.SCENE.MBIN"}
							},
						},
					},
				},
			}
		}
	}	
}	