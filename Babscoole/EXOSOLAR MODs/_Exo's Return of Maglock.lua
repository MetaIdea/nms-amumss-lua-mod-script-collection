NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Exo's Return of Maglock.pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.81",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Laser"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AutoAimAngle",			"3"},
								{"AutoAimExtraAngle",		"12"},
								{"ShowOverheatSwitch",		"False"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Projectile"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AutoAimAngle",			"4"},
								{"AutoAimExtraAngle",		"20"},
								{"ShowOverheatSwitch",		"False"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Shotgun"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AutoAimAngle",			"4"},
								{"AutoAimExtraAngle",		"16"},
								{"ShowOverheatSwitch",		"False"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Minigun"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AutoAimAngle",			"5"},
								{"AutoAimExtraAngle",		"20"},
								{"ShowOverheatSwitch",		"False"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Plasma"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AutoAimAngle",			"5"},
								{"AutoAimExtraAngle",		"20"},
								{"ShowOverheatSwitch",		"False"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Missile"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AutoAimAngle",			"3"},
								{"AutoAimExtraAngle",		"20"},
								{"ShowOverheatSwitch",		"False"},								
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ShipWeapons", "Rocket"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AutoAimExtraAngle",		"20"},
								{"ShowOverheatSwitch",		"False"},								
							}
						},						
					}
				},
			}
		},
	},	
}