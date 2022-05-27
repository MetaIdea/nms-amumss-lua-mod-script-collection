local modfilename = "AlmostPerfectTraders"
local lua_author  = "Silent"
local lua_version = "v1.1"
local mod_author  = "Silent369"
local nms_version = "3.90"
local description = "Modifies AI Ships Outpost Approach/Landing. Freighter Hangerdoor/Spacestation Letterbox Entrance Curves"

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]			= "_"..modfilename..lua_version..".pak",
	["LUA_AUTHOR"]				= lua_author,
	["MOD_AUTHOR"]				= mod_author,
	["NMS_VERSION"]				= nms_version,
	["MOD_DESCRIPTION"]			= description,
	["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"]	=
			{
				{
					["MBIN_FILE_SOURCE"]	= {"GCAISPACESHIPGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"]	=
					{
							---------------------------------------------------------------------------------------
							--Outpost Approach / Landing / Speed
							---------------------------------------------------------------------------------------
						{
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MinimumCircleTimeBeforeLanding",			"2"}, --Original "5"
								{"MinimumTimeBetweenOutpostLandings",		"1"}, --Original "3"
								{"FillUpOutposts",						 "True"}, --Original "False"
								{"DockingWaitDistance",						"9"}, --Original "10"
								{"DockingLandingTime",						"2"}, --Original "1.6"
								{"DockingSpringTime",						"4"}, --Original "6"
								{"DockingRotateSpeed",					  "0.6"}, --Original "0.5"
								{"DockingLandingBounceTime",			  "0.4"}, --Original "0.8"
								{"DockingLandingBounceHeight",			  "0.4"}, --Original "0.5"
								{"DirectionBrakeThresholdSq",			  "0.8"}, --Original "1"
								{"OutpostDockMaxApproachSpeed",			  "350"}, --Original "400"
								{"OutpostDockOverspeedBrake",			   "90"}, --Original "80"
								{"OutpostDockApproachDistance",			  "950"}, --Original "1000"
								{"OutpostDockApproachSpeedUpDamper",	  "0.2"}, --Original "0.3"
								{"OutpostDockAIGetToApproachForce",		  "0.3"}, --Original "0.5"
								{"OutpostDockAIGetToApproachBrakeForce",	"2"}, --Original "1"
								{"OutpostDockAIApproachSpeedForce",			"4"}, --Original "5"
								{"OutpostDockMinTipLength",					"5"}, --Original "5"
								{"OutpostDockMaxTipLength",				   "12"}, --Original "10"
								{"OutpostDockApproachUpAmount",			 "0.05"}, --Original "0.1"
								{"OutpostToLandingDistance",			  "100"}, --Original "50"
								{"LandingTipAngle",						 "12.0"}, --Original "25"
								{"LandingLongTipAngle",						"4"}, --Original "10"
							}
						},

							---------------------------------------------------------------------------------------
							--Outpost / Planet Landing Adjustments (NPC)
							---------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"OutpostLanding", "GcSpaceshipTravelData.xml"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MinSpeed",							   "80"}, --Original "80"
								{"MaxSpeed",							   "90"}, --Original "80"
								{"BoostSpeed",							  "800"}, --Original "1000"
								{"Force",								  "250"}, --Original "300"
								{"MinSpeedForce",							"4"}, --Original "5"
								{"DirectionBrake",							"7"}, --Original "10"
								{"Falloff",								  "0.3"}, --Original "0.8"
								{"MinHeight",							 "12.9"}, --Original "15"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"PlanetLanding", "GcSpaceshipTravelData.xml"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MinSpeed",							   "12"}, --Original "15"
								{"MaxSpeed",							   "30"}, --Original "20"
								{"BoostSpeed",							  "800"}, --Original "1000"
								{"Force",								  "150"}, --Original "200"
								{"MinSpeedForce",							"4"}, --Original "5"
								{"DirectionBrake",						    "7"}, --Original "10"
								{"Falloff",								  "0.3"}, --Original "0.8"
								{"MinHeight",							 "12.9"}, --Original "15"
							}
						},

							---------------------------------------------------------------------------------------
							--No Pirate Attacks On Specific Buildings
							---------------------------------------------------------------------------------------
						{
							["PRECEDING_KEY_WORDS"]	= {"PirateAttackableBuildingClasses"},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Outpost",								"False"}, --Original "True"
								{"LargeBuilding", 						"False"}, --Original "True"
							}
						},
					}
				},
			}
		},
	}
}