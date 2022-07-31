Author = "aharttsx"
ModName = "Companion Riding Improvements (Infinite Stamina)"
BaseDescription = "Increases Companion ride speeds, reduces stamina drain rate, improves mounted camera rotation range, and sligtly shortens teleport-to-player distance to help prevent despawning as frequently"
GameVersion = "3.97"
ModVersion = "1.3"
FileSource1 = "GCCREATUREGLOBALS.MBIN"
FileSource2 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN"
FileSource3 = "GCCAMERAGLOBALS.GLOBAL.MBIN"


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= 

	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = {
								{"RideSpeedSlow", "1.5"}, 			-- original= 0.5
								{"RideSpeedFast", "5"}, 			-- original= 2
								{"PetTeleportDistOnPlanet", "90"}, 	-- original= 150
								{"RidingSteerWeight",	"1"},		-- original= 2
							},	
						},
					},
				},
			
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = 
					{
						{	-- stamina modifiers determined by mood: Hunger
							["PRECEDING_KEY_WORDS"] = {"MoodStaminaModifiers", "GcPetMoodStaminaModifier.xml" },
							["VALUE_CHANGE_TABLE"] = 
							{
								{"StaminaDrainModifierMin",		"0"},	-- Original= 1
								{"StaminaDrainModifierMax",	"0"},		-- original= 0.7
							},
						},
						
						{	-- stamina modifiers determined by mood: Lonely
							["PRECEDING_KEY_WORDS"] = {"MoodStaminaModifiers", "GcPetMoodStaminaModifier.xml", "GcPetMoodStaminaModifier.xml" },
							["VALUE_CHANGE_TABLE"] = 
							{
								{"StaminaDrainModifierMin",		"0"},	-- Original= 1
								{"StaminaDrainModifierMax",	"0"},		-- original= 0.7
							},
						},
						
						{	-- removes cooldown time so pet can (hopefully) teleport to player more reliably
							["PRECEDING_KEY_WORDS"] = {"TeleportToPlayer",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"CooldownTime",		"0"},	-- Original= 10
							},
						},
					},					
				},
	
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = 
					{
		
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxCreatureRidingYaw",	"180"}, 			-- original= 90
							},
						},
		
						{	
							["PRECEDING_KEY_WORDS"] = {"CharacterRideCam",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"HorizRotationAngleMaxPerFrame",	"3"}, 			-- original = 0			
								{"VertRotationMin",					"-60"},			-- original = -10		
								{"VertRotationMax",					"60"},			-- original = 30		
								{"VertRotationOffsetMinAngle", 		"-150"},		-- original = -10		
								{"VertRotationOffsetMaxAngle",		"180"},			-- original = 0		
							},
						},
						
						{	
							["PRECEDING_KEY_WORDS"] = {"CharacterRideCamMedium",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"HorizRotationAngleMaxPerFrame",	"3"}, 			-- original = 0	
								{"VertRotationMin",					"-60"},			-- original = 5	
								{"VertRotationMax",					"60"},			-- original = 30	
								{"VertRotationOffsetMinAngle", 		"-150"},		-- original = -10	
								{"VertRotationOffsetMaxAngle",		"180"},			-- original = 0
							},
						},
						
						{	
							["PRECEDING_KEY_WORDS"] = {"CharacterRideCamLarge",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"HorizRotationAngleMaxPerFrame",	"3"}, 			-- original = 0			
								{"VertRotationMin",					"-60"},			-- original = -10		
								{"VertRotationMax",					"60"},			-- original = 30		
								{"VertRotationOffsetMinAngle", 		"-150"},		-- original = -10		
								{"VertRotationOffsetMaxAngle",		"180"},			-- original = 0		
							},
						},
						
						{	
							["PRECEDING_KEY_WORDS"] = {"CharacterRideCamHuge",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"HorizRotationAngleMaxPerFrame",	"3"}, 			-- original = 0			
								{"VertRotationMin",					"-60"},			-- original = -10		
								{"VertRotationMax",					"60"},			-- original = 30		
								{"VertRotationOffsetMinAngle", 		"-150"},		-- original = -10		
								{"VertRotationOffsetMaxAngle",		"180"},			-- original = 0		
							},
						},
					},
				},
			},
		},
	},
}