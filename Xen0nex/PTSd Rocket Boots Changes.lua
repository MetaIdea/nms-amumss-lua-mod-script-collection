ModName = "PTSd Rocket Boots Changes"
GameVersion = "441"
Description = "Makes Melee-Boosting a little worse and Rocket Boots a little better"


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCPLAYERGLOBALS.GLOBAL.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					--Melee Boost
					{"MeleeBoostAirForce", 2},									--3
					{"MeleeToAirBoostInitialImpulse", 3.5},						--5
					{"MaxTimeInMeleeBoost", 1.4},								--1.4
					
					--Rocket Boots general
					{"RocketBootsActivationWindow", 0},							--0.25		Setting to 0 disables the "auto-jump" feature of re-engaging Rocket Boots anytime you land while holding spacebar
					{"RocketBootsMaxSpeed", 27},								--20
					--Rocket Boots initial jump
					{"RocketBootsImpulse", 4.2},								--3
					{"RocketBootsBoostForce", 85},								--68
					{"RocketBootsForceDuration", 0.3},							--0.2
					{"RocketBootsBoostTankDrainSpeed", 3},						--6
					--Rocket Boots continued flying
					{"RocketBootsDriftForce", 40},								--30
					{"RocketBootsDriftEndTime", 3},								--2
					{"RocketBootsDriftTankDrainSpeed", 1.3},					--1
					{"RocketBootsMinDesiredHeight", 4},							--2
					{"RocketBootsMaxDesiredHeight", 8},							--6
					{"RocketBootsDriftDownwardForce", 0.5},						--0.5
				}
			},
		}
	}
}}}}

