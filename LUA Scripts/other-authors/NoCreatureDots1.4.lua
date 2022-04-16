NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoCreatureDots.pak",
["MOD_AUTHOR"]				= "DeathWrench",
["LUA_AUTHOR"]				= "Babscoole+DeathWrench",
["NMS_VERSION"]				= "",
["ADD_FILES"] = {
    {
        ["FILE_DESTINATION"]        = "NoCreatureDots.DDS",
        ["EXTERNAL_FILE_SOURCE"]    = "NoCreatureDots.DDS",
    },
},  
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\HUD\SCANNERICONS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "CreatureDiscovered", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/CREATURE.GREEN.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CreatureUndiscovered", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/CREATURE.RED.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CreatureUnknown", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/CREATURE.WHITE.DDS"
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "CreatureCurious", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/CREATUREFRIENDLOOK.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CreatureAction", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/CREATUREEXCLAMATION.DDS"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CreatureTame", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/CREATUREFRIEND.DDS"
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "CreatureDanger", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/EYE.CREATURE.DDS"
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "CreatureFiend", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/EYE.FIEND.DDS"
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "CreatureMilk", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/CREATUREMILK.DDS"
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "CreatureInteraction", 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/CREATUREINTERACTION.DDS"
							}
						},	
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "PetInteraction", 
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/PETINTERACTION.DDS"
							-- }
						-- },	
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "Pet", 
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/PLAYER/PET.DDS"
							-- }
						-- },	
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "PetSad", 
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/PLAYER/PETSAD.DDS"
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = "PetActivity", 
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Filename",	"NoCreatureDots.DDS"}, -- Original "TEXTURES/UI/HUD/ICONS/PLAYER/PETACTIVE.DDS"
							-- }
						-- },
					}
				},
			}
		},
	}	
}