NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "UndamagedInterceptor.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "5.50",
["MOD_DESCRIPTION"]			= "Sentinel Interceptors don't need to be repaired",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\COCKPITDATA.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]		= {"Components", "GcMaintenanceComponentData"},
							["REMOVE"]	= "SECTION",
						},
					}
				},
			}
		}
	}
}