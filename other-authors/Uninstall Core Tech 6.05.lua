NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "Uninstall Core Tech 6.05", 
["MOD_AUTHOR"]				= "Zay",
["NMS_VERSION"]				= "6.05",
["MOD_DESCRIPTION"]			= "Be gone Photon Cannon!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["MXML_CHANGE_TABLE"]	=
					{
						-- *stares angrily at Photon Cannon from corner of eye*  >:\
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "SHIPGUN1"},
							["VALUE_CHANGE_TABLE"]	=	
							{	
								{"PrimaryItem",			"false"},				--No! You NEED me! I AM PHOTON CANNON!!!  (default: true)
								{"TechnologyCategory",	"AllShipsExceptAlien"},	--default: Ship  (NOW the Photon Cannon is showing up in the Corvette and Sentinel Ship Tech blueprints!!!)
							},
						},
						-- you too Sentinel ship!  >:\
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "SHIPGUN_ROBO"},
							["VALUE_CHANGE_TABLE"]	=	
							{	
								{"PrimaryItem",	"false"},	--No! You NEED me! I AM SENTINEL CANNON, PHOTON CANNON'S LITTLE BROTHER!!!!  (default: true)
							},
						},
						-- *stares angrily at Spewing Vents from corner of eye*  >:\
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "SHIPGUN_ALIEN"},
							["VALUE_CHANGE_TABLE"]	=	
							{
								{"PrimaryItem",		"false"},	--default: true
								{"Core",			"false"},	--No! You NEED me! I AM SPEWING VENTS!!!    (default: true)
							},
						},
						-- Ship Shields
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "SHIPSHIELD"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"Core",			"false"},	--default: true
							},
						},
						-- Ship Hyperdrive
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "HYPERDRIVE"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"Core",			"false"},	--default: true
							},
						},
						-- Frameshift Catapult (Stock Hyperdrive Replacement)
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "HYPERDRIVE_SPEC"},
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Core",			"false"},	--default: true
							}
						},
						-- Ship Pulse Engine
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "SHIPJUMP1"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"Core",			"false"},	--default: true
							},
						},
						-- Waveform Engine (Stock Pulse Engine Replacement)
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "SHIPJUMP_SPEC"},
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Core",			"false"},	--default: true
							},
						},
						-- Ship Launch Thrusters
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "LAUNCHER"},
							["VALUE_CHANGE_TABLE"]	=	
							{								
								{"Core",			"false"},	--default: true
							},
						},
						-- Advanced Launch System (Stock Launch Thrusters Replacement)
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "LAUNCHER_SPEC"},
							["VALUE_CHANGE_TABLE"]  =
							{
								{"Core",			"false"},	--default: true
							},
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE