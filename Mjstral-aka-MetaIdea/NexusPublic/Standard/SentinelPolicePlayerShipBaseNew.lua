NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SentinelPolicePlayerShipBase.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["DESCRIPTION"]				= "Cockpitable sentinel police ship you can get via quick action emote menu action",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"]     = 
					{ 
						{ 
							[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN]], 
							[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIPBACKUP.SCENE.MBIN]] 
						}, 
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[value="MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP" />]],
									[[value="MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIPBACKUP" />]]
								},
							}
						}
					}
				},			
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP\ENTITIES\POLICESHIP.ENTITY.MBIN]], 
									[[MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN]] 
								},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "PoliceShip" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransY", "0.6"},
							}							
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{
									[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIP.SCENE.MBIN]], 
									[[MODELS/COMMON/SPACECRAFT/POLICE/POLICESHIPBACKUP.SCENE.MBIN]] 
								},
							}
						}
					}
				}
			}
		}
	}
}