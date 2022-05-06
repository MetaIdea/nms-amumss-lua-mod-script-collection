ModName = "FartherTargetSweepX"
GameVersion = "3_87"

--Multipliers to use for the "approximate Location" distances, depending on the mission group / file
DistanceMultLong =						4									--Multiplier to apply to distances greater than 650
DistanceMultShort =						10									--Multiplier to apply to distances 650 or lower

--[[Filepaths =
{	--Missiontype															--Distance Multiplier		Vanilla Distances used for missions of this type
	{"METADATA\SIMULATION\MISSIONS\DEFAULTSEASONALDATA.MBIN",				4},							--1200,	1800							Deprecated as of Outlaws update??? Rendezvous points for Expeditions?	However, it seems you may actually need to manually adjust 5 "SurveyDistance" entries in SEASON_DATA_CACHE.JSON within the "cache" folder of your save file location
	{"METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",			10},						--450
	{"METADATA\SIMULATION\MISSIONS\SENTINELSETTLEMENTMISSIONTABLE.MBIN",	10},						--200,	400								A Trace of Metal?
	{"METADATA\SIMULATION\MISSIONS\WATERMISSIONTABLE.MBIN",					10},						--500,	350								Dreams of the Deep mission?
	{"METADATA\SIMULATION\MISSIONS\NPCMISSIONTABLE.MBIN",					10},						--1200,	500,	350,	400				Space Station missions	(the 1200 distance missions are just for landing on the appropriate planet, no actual target is 1200u to walk to.)
	{"METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",				4},							--1600,	300								Living Ship missions
	{"METADATA\SIMULATION\MISSIONS\SEASONALMISSIONTABLE.MBIN",				10},						--200,	450,	900,	1500 (as of NMS v3.88)	This rotates out for missions unique to the current expedition (non-rendezvous missions)
	{"METADATA\SIMULATION\MISSIONS\MISSIONTABLE.MBIN",						10},						--500									Main story / tutorial missions?
	{"METADATA\SIMULATION\MISSIONS\MULTIPLAYERMISSIONTABLE.MBIN",			10},						--600,	400,	300						Nexus missions?
	{"METADATA\SIMULATION\MISSIONS\COREMISSIONTABLE.MBIN",					10},						--400,	200,	450,	350,	600,	500,	650,	300			Expanding the Base missions, possbily others?
	{"METADATA\SIMULATION\MISSIONS\TUTORIALMISSIONTABLE.MBIN",				10}							--300,	600,	350,	500,	380,	
}]]

--Nothing below this should need to be changed. All values can be edited in the sections above this line

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= "Makes the distance between the 'Approximate Location' and final mission target using Target Sweep farther away.",
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				--This entry intentionally left blank, to be filled in by the MissionChanges at the bottom of this script
			}
		}
	}
}

local ChangesToMissions = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

--Deprecated as of Outlaws?
--[[ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\DEFAULTSEASONALDATA.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}]]
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\SENTINELSETTLEMENTMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\WATERMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\NPCMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
--Moved to Ship Speed Changes etcX.lua
--[[ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}]]
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\SEASONALMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\MISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\MULTIPLAYERMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\COREMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}
ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\TUTORIALMISSIONTABLE.MBIN"},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = ">",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultLong}
					}
				},
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_MATCH"] 	= "650",
					["VALUE_MATCH_OPTIONS"] = "<=",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMultShort}
					}
				}
			}
		}

--Trying to sue this loop makes this .lua not work?
--[[for i = 1, #Filepaths do
	local FilePath = Filepaths[i][1]
	local DistanceMult = Filepaths[i][2]
			
			ChangesToMissions[#ChangesToMissions+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {Filepath},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] = "ALL",
					["MATH_OPERATION"] 		= "*",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"SurveyDistance", DistanceMult}
					}
				}
			}
		}
end]]