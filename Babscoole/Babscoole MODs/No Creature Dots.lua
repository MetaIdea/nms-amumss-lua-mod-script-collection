NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Creature Dots",
["MOD_AUTHOR"]				= "DeathWrench",
["LUA_AUTHOR"]				= "Babscoole+DeathWrench+Gumsk",
["NMS_VERSION"]				= "6.00",
["ADD_FILES"] = -- COMMENT LINES FOR ICONS THAT YOU WANT TO KEEP VISIBLE..... THIS PART OF THE SCRIPT REQUIRES THE .DDS FILE TO BE IN YOUR MODSCRIPTS FOLDER TO WORK. 
{
	{["FILE_DESTINATION"] = "TEXTURES/UI/HUD/EYE.CREATURE.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 				-- Predator Icons
	{["FILE_DESTINATION"] = "TEXTURES/UI/HUD/ARROW.DANGER.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 				-- This is the arrow for the predator icon
	{["FILE_DESTINATION"] = "TEXTURES/UI/HUD/ICONS/PLAYER/CIRCLE.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 			-- This is the pulsing circle that appears when scanning animals
	-- {["FILE_DESTINATION"] = "TEXTURES/EFFECTS/COMMON/PETALERT.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 			-- Your pet is alert
	-- {["FILE_DESTINATION"] = "TEXTURES/EFFECTS/COMMON/PETFULL.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 				-- Your pet is full
	-- {["FILE_DESTINATION"] = "TEXTURES/EFFECTS/COMMON/PETHAPPY.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 			-- Your pet is happy
	-- {["FILE_DESTINATION"] = "TEXTURES/EFFECTS/COMMON/PETHUNGRY.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 			-- Your pet is hungry
	-- {["FILE_DESTINATION"] = "TEXTURES/EFFECTS/COMMON/PETSAD.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 				-- Your pet is sad 
	-- {["FILE_DESTINATION"] = "TEXTURES/UI/HUD/ICONS/CREATUREFRIENDSCARED.DDS",["EXTERNAL_FILE_SOURCE"]="NoCreatureDots.DDS",}, 	-- Your pet is scared
},  
["MODIFICATIONS"] = -- THIS PART OF THE SCRIPT EDITS MBINS, COMMENT LINES FOR THINGS YOU WANT TO KEEP
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\HUD\SCANNERICONS.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{["PRECEDING_KEY_WORDS"]="CreatureFiend",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 			-- Original "Filename","TEXTURES/UI/HUD/EYE.FIEND.DDS"
						{["PRECEDING_KEY_WORDS"]="CreatureDiscovered",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 		-- Original "Filename","TEXTURES/UI/HUD/CREATURE.GREEN.DDS"
						{["PRECEDING_KEY_WORDS"]="CreatureUndiscovered",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 	-- Original "Filename","TEXTURES/UI/HUD/CREATURE.RED.DDS"
						{["PRECEDING_KEY_WORDS"]="CreatureUnknown",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 			-- Original "Filename","TEXTURES/UI/HUD/CREATURE.WHITE.DDS"
						-- {["PRECEDING_KEY_WORDS"]="CreatureCurious",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 			-- Original "Filename","TEXTURES/UI/HUD/ICONS/CREATUREFRIENDLOOK.DDS"
						-- {["PRECEDING_KEY_WORDS"]="CreatureAction",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 			-- Original "Filename","TEXTURES/UI/HUD/ICONS/CREATUREEXCLAMATION.DDS"
						-- {["PRECEDING_KEY_WORDS"]="CreatureTame",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 			-- Original "Filename","TEXTURES/UI/HUD/ICONS/CREATUREFRIEND.DDS"
						-- {["PRECEDING_KEY_WORDS"]="CreatureMilk",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 			-- Original "Filename","TEXTURES/UI/HUD/ICONS/CREATUREMILK.DDS"
						-- {["PRECEDING_KEY_WORDS"]="CreatureInteraction",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 		-- Original "Filename","TEXTURES/UI/HUD/ICONS/CREATUREINTERACTION.DDS"
						-- {["PRECEDING_KEY_WORDS"]="PetInteraction",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 			-- Original "Filename","TEXTURES/UI/HUD/ICONS/PETINTERACTION.DDS"
						-- {["PRECEDING_KEY_WORDS"]="Pet",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 						-- Original "Filename","TEXTURES/UI/HUD/ICONS/PLAYER/PET.DDS"
						-- {["PRECEDING_KEY_WORDS"]="PetSad",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 					-- Original "Filename","TEXTURES/UI/HUD/ICONS/PLAYER/PETSAD.DDS"
						-- {["PRECEDING_KEY_WORDS"]="PetActivity",["VALUE_CHANGE_TABLE"]={{"Filename",""},}}, 				-- Original "Filename","TEXTURES/UI/HUD/ICONS/PLAYER/PETACTIVE.DDS"
}}}}}}