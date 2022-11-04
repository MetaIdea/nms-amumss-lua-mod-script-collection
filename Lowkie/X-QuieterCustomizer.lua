NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME 			= 'X-QuieterCustomizer.pak', 
MOD_AUTHOR				= 'JJhookah',
LUA_AUTHOR              = 'Lowkie',
NMS_VERSION				= '3.99',
MOD_DESCRIPTION			= 'Quieter Customiser',
MODIFICATIONS 			= 
	{
		{
			MBIN_CHANGE_TABLE 	= 
			{ 
				{
					MBIN_FILE_SOURCE 	= {'MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN'},
					EXML_CHANGE_TABLE	= 
					{
						{
							REPLACE_TYPE		= 'ALL',
							VALUE_CHANGE_TABLE 	= 
							{
								{'Filename',			''},
                            }								
						},								
					}
				}								
			}
		}
	}	
}