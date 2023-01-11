NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MTTest.pak",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 	{
													"MODELS\COMMON\WEAPONS\MULTITOOL\MULTITOOL.SCENE.MBIN",
													"MODELS\COMMON\WEAPONS\MULTITOOL\ROYALMULTITOOL.SCENE.MBIN",
												},
					["EXML_CHANGE_TABLE"] 	= 
					{
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "GunRoot", "Transform", "TkTransformData.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["SECTION_ACTIVE"] = 1,
							["VALUE_CHANGE_TABLE"]	= 
							{
								{ "ScaleX", "0.75" },	--Original "1"
								{ "ScaleY", "0.75" },	--Original "1"
								{ "ScaleZ", "0.75" },	--Original "1"
							},
                        },
					},
				},
			}
		}
	}	
}