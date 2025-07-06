NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "NoOptionNotificationIcons.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "5.64",
["MOD_DESCRIPTION"]			= "Removes the yellow exclamation mark notification marker found in the catalogue and the build menu",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= {
												"UI/BASEPARTSMENUTAB.MBIN",
												"UI/COMPONENTS/BASEPARTITEM.MBIN",
												"UI/SWITCH/SWITCH_BASEPARTITEM.MBIN",
											  },
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]					= {"Image", "TEXTURES/UI/FRONTEND/COMPONENTS/NEWEXCLAMATION.DDS"},
							["REPLACE_TYPE"]		= "ALL",
							["SECTION_UP"]			= 1,
							["REMOVE"]	= "SECTION",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
												"UI/COMPONENTS/CATEGORY.MBIN",
												"UI/COMPONENTS/CATEGORYTHIN.MBIN",
												"UI/COMPONENTS/GRIDITEM.MBIN",
												"UI/COMPONENTS/GRIDITEMACCESSIBLE.MBIN",
												"UI/COMPONENTS/LISTENTRY.MBIN",
												"UI/COMPONENTS/WONDERITEM_SMALL.MBIN",
												"UI/COMPONENTS/WONDERITEM.MBIN",
											  },
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]					= {"Image", "/TEXTURES/UI/FRONTEND/COMPONENTS/NEWEXCLAMATION.DDS"},
							["REPLACE_TYPE"]		= "ALL",
							["SECTION_UP"]			= 1,
							["REMOVE"]	= "SECTION",
						},
					}
				},
			}
		}
	}
}