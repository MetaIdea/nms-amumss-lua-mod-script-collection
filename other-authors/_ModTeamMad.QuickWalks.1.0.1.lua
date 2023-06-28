NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "_ModTeamMad.QuickWalks.1.0.1.pak",
["MOD_AUTHOR"]		= "Mod Team Mad",
["NMS_VERSION"]		= "4.13",
["MOD_DESCRIPTION"]	= "Fast walking and sprinting",
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
								{"GroundWalkSpeed",9.2},			--default "4.4"
                                {"GroundRunSpeed",15},			--default "8"
							}
						}
					}
				}
			}
		}
	}
}
