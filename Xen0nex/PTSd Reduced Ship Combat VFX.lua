ModName = "PTSd Reduced Ship Combat VFX"
GameVersion = "5_28"
Description = "Reduces the intensity of the VFX for getting hit by enemy starships in space combat, to fit better with PTSd's rapid enemy fire."

Path1 = "METADATA\EFFECTS\EXPLOSIONTABLE.MBIN"
Path2 = "METADATA\EFFECTS\PLAYEREFFECTS.MBIN"

--Replacers for the following attributes of the "blast effects" on impact when enemy starship gun shots hit the player's starship

Life = 0.2											--3 (0.2 for POLICEWEPIMP)	How long the effect persists for
Scale = 0.2											--1		The size of the effect
ShakeStrengthModifier = 0.3							--1		The intensity of the screen shake effect


--Replacers for the following attributes of the "blast effects" on impact when enemy starship laser beams hit the player's starship

LaserLife = 0.2										--3		How long the effect persists for
LaserScale = 1										--2		The size of the effect
LaserShakeStrengthModifier = 0.3					--1		The intensity of the screen shake effect

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {Path1},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {
								{"Id","FRANTISHIPIMP"},
								{"Id","POLICEWEPIMP"},
								{"Id","SHIPGUNHIT"},
							},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Life", Life},
								{"Scale", Scale},
								{"ShakeStrengthModifier", ShakeStrengthModifier},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {Path2},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {
								{"Id","LASERPLAYER"},
							},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Life", LaserLife},
								{"Scale", LaserScale},
								{"ShakeStrengthModifier", LaserShakeStrengthModifier},
							}
						},
					}
				},
			}
		}
	}
}