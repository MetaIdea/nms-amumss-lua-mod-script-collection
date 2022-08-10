NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "silent suit refiner.pak",     
  ["MOD_DESCRIPTION"]		= "Removes the refining sound while using the personal suit refiner",         
  ["MOD_AUTHOR"]				= "ViperClaw",         
  ["NMS_VERSION"]				= "3.9.8",     
  ["MODIFICATIONS"] 		=             
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",}, 
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Sound","Obj_PortableRefinery_Start",},
							["REMOVE"] 				= "SECTION"
						},
					}
				},
			}
		},
	}
}
