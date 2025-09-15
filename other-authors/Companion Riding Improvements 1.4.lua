Author = "aharttsx"						--Edited by Xen0nex
ModName = "Companion Riding Improvements"
BaseDescription = "Increases Companion ride speeds, reduces stamina drain rate, improves mounted camera rotation range, and sligtly shortens teleport-to-player distance to help prevent despawning as frequently"
GameVersion = "6.03"
ModVersion = "1.4"
FileSource1 = "GCCREATUREGLOBALS.MBIN"
FileSource2 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN"
FileSource3 = "GCCAMERAGLOBALS.GLOBAL.MBIN"


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
--["EXML_CREATE"] = "FALSE",		--Remove the -- before ["EXML_CREATE"] in order to have AMUMSS create an .MBIN style mod instead of an .EXML style mod
["MODIFICATIONS"]	= 

	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = {
								{"RideSpeedSlow", "1.5"}, 			-- original= 0.5
								{"RideSpeedFast", "5"}, 			-- original= 2							(4)
								{"PetTeleportDistOnPlanet", "90"}, 	-- original= 150
								{"RidingSteerWeight",	"1"},		-- original= 2
							},	
						},
					},
				},
			
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["MXML_CHANGE_TABLE"] = 
					{
						{	-- stamina modifiers determined by mood: Hunger
							["SPECIAL_KEY_WORDS"] = {"MoodStaminaModifiers","GcPetMoodStaminaModifier"},
							["SECTION_ACTIVE"] = {0,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"StaminaDrainModifierMin",	"0.3"},		-- Original= 0.7					(0.7)
								{"StaminaDrainModifierMax",	"0.6"},		-- original= 1						(1)
							},
						},
						
						{	-- stamina modifiers determined by mood: Lonely
							["SPECIAL_KEY_WORDS"] = {"MoodStaminaModifiers","GcPetMoodStaminaModifier"},
							["SECTION_ACTIVE"] = {1,},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"StaminaDrainModifierMin",	"0.3"},		-- Original= 0.7					(0.7)
								{"StaminaDrainModifierMax",	"0.6"},		-- original= 1						(1)
							},
						},
						
						{	-- removes cooldown time so pet can (hopefully) teleport to player more reliably
							["SPECIAL_KEY_WORDS"] = {"TeleportToPlayer","GcPetBehaviourData"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"CooldownTime",		"0"},	-- Original= 10
							},
						},
					},					
				},
	
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["MXML_CHANGE_TABLE"] = 
					{
		
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxCreatureRidingYaw",	"180"}, 			-- original= 90
							},
						},
		
						{	
							["SPECIAL_KEY_WORDS"] = {"CharacterRideCam","GcCameraFollowSettings"},
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
							["SPECIAL_KEY_WORDS"] = {"CharacterRideCamMedium","GcCameraFollowSettings"},
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
							["SPECIAL_KEY_WORDS"] = {"CharacterRideCamLarge","GcCameraFollowSettings"},
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
							["SPECIAL_KEY_WORDS"] = {"CharacterRideCamHuge","GcCameraFollowSettings"},
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