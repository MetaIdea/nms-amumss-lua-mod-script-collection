NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "_NoMultiToolShake.pak",
["MOD_AUTHOR"]		= "Fiatpax",
["NMS_VERSION"]		= "3.88",
["MOD_DESCRIPTION"]	= "Disable cam shake from using mining beam, terrain manipulator and laser beam's shake",
["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["VALUE_CHANGE_TABLE"] 		=
							{
								{"ExplodeShakeStrength",0},
								{"LaserShakeMin",0},
								{"LaserShakeMax",0}
							}
						}
					}
				}
			}
		}
	}
}
