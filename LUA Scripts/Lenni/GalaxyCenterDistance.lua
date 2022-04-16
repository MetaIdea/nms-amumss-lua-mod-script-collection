NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "GalaxyCenterDistance.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.84",
["MOD_DESCRIPTION"]			= "Brings back the old exact distance to center value in the galaxy map",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
												"LANGUAGE\NMS_UPDATE3_BRAZILIANPORTUGUESE.MBIN",
												"LANGUAGE\NMS_UPDATE3_DUTCH.MBIN",
												"LANGUAGE\NMS_UPDATE3_ENGLISH.MBIN",
												"LANGUAGE\NMS_UPDATE3_FRENCH.MBIN",
												"LANGUAGE\NMS_UPDATE3_GERMAN.MBIN",
												"LANGUAGE\NMS_UPDATE3_ITALIAN.MBIN",
												"LANGUAGE\NMS_UPDATE3_JAPANESE.MBIN",
												"LANGUAGE\NMS_UPDATE3_KOREAN.MBIN",
												"LANGUAGE\NMS_UPDATE3_LATINAMERAICANSPANISH.MBIN",
												"LANGUAGE\NMS_UPDATE3_POLISH.MBIN",
												"LANGUAGE\NMS_UPDATE3_PORTUGUESE.MBIN",
												"LANGUAGE\NMS_UPDATE3_RUSSIAN.MBIN",
												"LANGUAGE\NMS_UPDATE3_SIMPLIFIEDCHINESE.MBIN",
												"LANGUAGE\NMS_UPDATE3_SPANISH.MBIN",
												"LANGUAGE\NMS_UPDATE3_TENCENTCHINESE.MBIN",
												"LANGUAGE\NMS_UPDATE3_TRADITIONALCHINESE.MBIN",
												"LANGUAGE\NMS_UPDATE3_USENGLISH.MBIN",
											},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "UI_GALAXYMAP_CORE_PATH_ONLY"},
							["REMOVE"] = "SECTION",
						},
						
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "UI_GALAXYMAP_CORE_PATH"},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Id",	"UI_GALAXYMAP_CORE_PATH_ONLY"},  --original : UI_GALAXYMAP_CORE_PATH
							},
						},
					},
				},
			}
		}
	}	
}