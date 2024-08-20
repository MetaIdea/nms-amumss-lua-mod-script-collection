NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BoostGliderOGMech_Weapons.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "Worlds 5.4.0 ",
["MOD_DESCRIPTION"]			= "Minotaur Weapons tweak only",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] 			= 
	{
		{
			--["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AIMechGunNumShotsMax",						"50"},		-- Fractal "5" extra
								{"AIMechStunGunFireInterval",					"2"},		-- Worlds "1"
								{"AIMechStunGunNumShotsMin",					"2"},		-- Worlds "1"
								{"AIMechStunGunNumShotsMax",					"3"},		-- Worlds "1"
								{"AIMechGunNumShotsMin",						"30"},		-- Fractal "3" extra shots
								{"AIMechFlamethrowerNumShotsMin", "50"},
								{"AIMechFlamethrowerNumShotsMax", "100"},
								{"MechWeaponInterpSpeed",						"10"},		-- Worlds "5" speed up ?
								{"AIMechGunFireInterval",						"0.01"},	-- Worlds "0.5" Blur Gun
								{"AIMechFlamethrowerFireInterval",				"0.00001"},	-- Worlds New "0.025"
							}
						}
					} 
				},				
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] =	{"Laser"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"1.25"},-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"0.50"},-- varied "1.5" mostly
								{"MaxRange",								"70"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- Worlds varied
								{"CooldownTimeMax",							"2.5"},	-- Worlds varied
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =	{"Gun"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"3.25"},-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"2.5"},	-- varied "1.5" mostly
								{"MaxRange",								"80"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- Worlds varied
								{"CooldownTimeMax",							"0.5"},	-- Worlds varied
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =	{"Stungun"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"0.5"},	-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"2.0"},	-- varied "1.5" mostly
								{"MaxRange",								"25"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- Worlds varied
								{"CooldownTimeMax",							"0.5"},	-- Worlds varied
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =	{"Flamethrower"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  -- Can't yet modify preceeding key word flamethrower w/o errors. this was the alternate.
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"3.25"},-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"2.25"},	-- varied "1.5" mostly
								{"MinRange",								"1"},	-- "6"
								{"MaxRange",								"20"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- 
								{"CooldownTimeMax",							"0.5"},	-- Worlds varied
							}
						}
					} 
				},
			}
		}	
    }
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE