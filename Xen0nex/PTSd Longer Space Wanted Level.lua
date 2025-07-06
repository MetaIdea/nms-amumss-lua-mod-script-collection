ModName = "PTSd Longer Space Wanted Level"
GameVersion = "5_03"
Description = "Increases the countdown timer between waves of Wanted Levels in space when you are free to Pulse Jump away."

Path1 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

PoliceEntranceStartTime = 1								--1		Delay between the initial space crime and when the countdown timer for the initial Sentinel Interceptor starts
PoliceEntranceProbe = 5									--5		Time between the countdown timer starting from the initial crime in space until the first Interceptor begins warping in. Pulse Jumping allowed during this period

PoliceEntranceEscalateIncomingTime = 2					--4		First part of the countdown timer until reinforcements begin warping in when raising the Wanted Level in space by destroying all Interceptors. Pulse Jumping disabled during this period
PoliceEntranceEscalateProbingTime = 12					--3		Second part of the countdown timer until reinforcements begin warping in when raising the Wanted Level in space by destroying all Interceptors. Pulse Jumping allowed during this period

PoliceArriveTime = 4									--5		Time it takes for Interceptors to actually arrive whenever they begin warping in. Pulse Jumping disabled during this period

--PoliceLaunchTime = 3									--3		Unknown function, perhaps related to attacking space station??
--PoliceStationWaveTimer = 5								--5		Unknown function, perhaps related to attacking space station??


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["EXML_CREATE"] = "FALSE",
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {Path1},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"PoliceLaunchTime", PoliceLaunchTime},
								--{"PoliceStationWaveTimer", PoliceStationWaveTimer},
								
								{"PoliceEntranceStartTime", PoliceEntranceStartTime},
								{"PoliceEntranceProbe", PoliceEntranceProbe},
								{"PoliceEntranceEscalateProbingTime", PoliceEntranceEscalateProbingTime},
								{"PoliceEntranceEscalateIncomingTime", PoliceEntranceEscalateIncomingTime},
								
								{"PoliceArriveTime", PoliceArriveTime},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateAttackableBuildingClasses"},		--Locations which allow Pirate Raids
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Shelter", "true"},					--"true"	Shelter
								{"Shop", 	"true"},					--"true"	Minor Settlement
								{"Outpost", "true"},					--"true"	Trading Post
								{"RadioTower", "true"},					--"true"	Observatory or equivalent
								{"Observatory", "true"},				--"true"	Observatory or equivalent
								{"Depot", "true"},						--"true"	Depot
								{"Factory", "true"},					--"true"	Manufacturing Facility or equivalent
								{"Harvester", "true"},					--"true"	Manufacturing Facility or equivalent
								{"LargeBuilding", "false"},				--"true"	Planetary Colossal Archives
								
								{"Settlement_Hub", "true"},				--"true"	The following all seem to be buildings in Settlements
								{"Settlement_LandingZone", "true"}	,	--"true"
								{"Settlement_Bar", "true"},				--"true"
								{"Settlement_Tower", "true"},			--"true"
								{"Settlement_Market", "true"},			--"true"
								{"Settlement_Small", "true"},			--"true"
								{"Settlement_SmallIndustrial", "true"},	--"true"
								{"Settlement_Medium", "true"},			--"true"
								{"Settlement_Large", "true"},			--"true"
								{"Settlement_Monument", "true"},		--"true"
								{"Settlement_SheriffsOffice", "true"},	--"true"
								{"Settlement_Double", "true"},			--"true"
								{"Settlement_Farm", "true"},			--"true"
								{"Settlement_Factory", "true"},			--"true"
							}
						},
					}
				},
			}
		}
	}
}