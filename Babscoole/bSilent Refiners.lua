NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "bSilent Refiners",
["MOD_AUTHOR"]      = "Bladehawke",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Silences the rattling noise from running refiners",
["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER1.ENTITY.MBIN",
            "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
          },
					["MXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Sound", "Obj_PortableRefinery_Start"},
              ["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER2.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Sound", "Obj_RefineryMedium_Start"},
              ["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER3.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Sound", "Obj_RefineryLarge_Start"},
              ["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
					}
				},
			}
		}
	}
}