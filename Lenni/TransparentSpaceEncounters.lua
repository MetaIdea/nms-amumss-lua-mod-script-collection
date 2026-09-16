local ENCOUNTER =
{
	{"SPACE_EGG", "UI_SPACE_EGG"},
	{"DERELICT_1",  "UI_DERELICT1_LABEL"},
	{"DERELICT_2",  "UI_DERELICT2_LABEL"},
	{"DERELICT_3",  "UI_DERELICT3_LABEL"},
	{"ATLAS_BEACON1",  "UI_ATLAS_BEACON_LABEL"},
	{"GAS_BRAIN",  "UI_WEIRD_OBJ5_LABEL"},
	{"ALIEN_SHIP1",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"MOTHERSHIP",  "UI_MOTHERSHIP"},
	{"ALIEN_SHIP_LOOP",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"SENT_SHIP",  "UI_PULSE_ENCOUNTER_NAME_SENT"},
	{"S10_ACTIVE1",  "UI_MEMORY_BOAT_NAME"},
	{"S10_ACTIVE2",  "UI_MEMORY_BOAT_NAME"},
	{"S10_ACTIVE3",  "UI_MEMORY_BOAT_NAME"},
	{"S10_ACTIVE4",  "UI_MEMORY_BOAT_NAME"},
	{"PIRATECLUE_HAIL",  "UI_PIRATES1_ABANDSHIP_LABEL"},
	{"PIRATE_BETRAY",  "UI_PIRATES_TRAITOR_TITLE"},
	{"PIRATE_ATLAS",  "UI_ATLAS_BEACON_LABEL"},
	{"ROBOM_BOAT",  "UI_MEMORY_BOAT_NAME"},
	{"WORLDSM_BOAT",  "UI_MEMORY_BOAT_NAME"},
	{"PURPM_BOAT",  "UI_PURPM_BOAT_TITLE"},
	{"S12_POI_SEED1",  "UI_WEIRD_OBJ10_LABEL"},
	{"S12_POI_SEED2",  "UI_WEIRD_OBJ8_LABEL"},
	{"S12_POI_SEED3",  "UI_WEIRD_OBJ15_LABEL"},
	{"S12_POI_SEED4",  "UI_WEIRD_OBJ9_LABEL"},
	{"BIGGS_DEBRIS",  "UI_BIGGS_DEBRIS_POI_LABEL"},
}


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "TransparentSpaceEncounters.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "7.02",
["MOD_DESCRIPTION"]	= "Adds icons and text to space encounters",
["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"] = {"Id", "R_REVEAL_POI"},
							["PKW"] = "UpgradeToDiscoveryLevel",
							["VCT"] = {
								{"SpacePoiDiscoveryLevel", "Discovered"}
							}
						}
					}
				}
			}
		}
	}
}


local ChangesToExperienceSpawnTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
-- now we're looping ENCOUNTER
for i=1,#ENCOUNTER,1 do
	id = ENCOUNTER[i][1]
	text = ENCOUNTER[i][2]
    -- Each id in said list we're going to contain in a var (not necissariy but makes it readable)
    --for each change we want to do we are creating adding a new item to the ChangesToRewardTable
    ChangesToExperienceSpawnTable[#ChangesToExperienceSpawnTable + 1] =
    {
        ["SPECIAL_KEY_WORDS"]   = {"Id", id},
        ["VALUE_CHANGE_TABLE"]	=
        {
            {"CustomNotify", text},
            {"CustomNotifyTitle", text},
            {"CustomNotifyOSD", text},
        }
    }
end