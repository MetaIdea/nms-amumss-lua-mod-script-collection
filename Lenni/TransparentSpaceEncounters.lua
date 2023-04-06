local ENCOUNTER =
{
	{"SPACE_EGG", "UI_SPACE_EGG"},
	{"BLACK_HOLE",  "BLACK_HOLE"},
	{"DERELICT_1",  "UI_DERELICT1_LABEL"},
	{"DERELICT_2",  "UI_DERELICT2_LABEL"},
	{"DERELICT_3",  "UI_DERELICT3_LABEL"},
	{"ATLAS_BEACON1",  "UI_ATLAS_BEACON_LABEL"},
	{"ATLAS_BEACON2",  "UI_ATLAS_BEACON_LABEL"},
	{"RADIO_PILLAR",  "UI_WEIRD_OBJ1_LABEL"},
	{"WEIRD_METAL",  "UI_WEIRD_OBJ2_LABEL"},
	{"NEURON",  "UI_WEIRD_OBJ3_LABEL"},
	{"RELIC_GATE",  "UI_WEIRD_OBJ4_LABEL"},
	{"GAS_BRAIN",  "UI_WEIRD_OBJ5_LABEL"},
	{"SPINNER",  "UI_WEIRD_OBJ6_LABEL"},
	{"GYRO_BALL",  "UI_WEIRD_OBJ7_LABEL"},
	{"GEK_HEAD",  "UI_WEIRD_OBJ8_LABEL"},
	{"HORROR",  "UI_WEIRD_OBJ9_LABEL"},
	{"JELLYFISH",  "UI_WEIRD_OBJ10_LABEL"},
	{"RELAY_BEACON",  "UI_WEIRD_OBJ17_LABEL"},
	{"CRYSTAL",  "UI_WEIRD_OBJ12_LABEL"},
	{"CUBE_STATION",  "UI_WEIRD_OBJ13_LABEL"},
	{"ASTEROID_BEACON",  "UI_WEIRD_OBJ14_LABEL"},
	{"LINE_GEO",  "UI_WEIRD_OBJ16_LABEL"},
	{"SPACE_CLOCK",  "UI_WEIRD_OBJ11_LABEL"},
	{"BONES",  "UI_WEIRD_OBJ15_LABEL"},
	{"EYE",  "UI_WEIRD_OBJ18_LABEL"},
	{"PRISON",  "UI_WEIRD_OBJ19_LABEL"},
	{"SILOS",  "UI_WEIRD_OBJ20_LABEL"},
	{"TRADER_HAIL",  "UI_PULSE_ENCOUNTER_NAME_TRADER"},
	{"RELIC_HAIL",  "UI_PULSE_ENCOUNTER_NAME_TRADER"},
	{"REPAIR_HAIL",  "UI_PULSE_ENCOUNTER_NAME_REPAIR"},
	{"ALIEN_SHIP1",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"ALIEN_SHIP2",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"ALIEN_SHIP3",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"ALIEN_SHIP4",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"ALIEN_SHIP5",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"BIOSHIP3_POI",  "UI_WEIRD_OBJ10_LABEL"},
	{"MOTHERSHIP",  "UI_MOTHERSHIP"},
	{"ABAND_FREIGHTER",  "UI_ABAND_FREIGHT_POI_LABEL"},
	{"ALIEN_SHIP_LOOP",  "UI_PULSE_ENCOUNTER_NAME_BIOSHIP"},
	{"BIO_FRIG_FIRST",  "UI_PULSE_ENCOUNTER_NAME_BIOFRIG"},
	{"BIO_FRIG",  "UI_PULSE_ENCOUNTER_NAME_BIOFRIG"},
	{"S8_POD_POI",  "UI_EXPED_CIV_POD_LANG_TITLE"},
	{"SENT_SHIP",  "UI_PULSE_ENCOUNTER_NAME_SENT"},
}


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "TransparentSpaceEncounters.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.98",
["MOD_DESCRIPTION"]	= "Adds icons and text to space encounters",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]		= "PulseEncounters",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "UseMarkerIconInOSD", "True" },
							},
						},
					}
				}
			}
		}
	}	
}	


local ChangesToExperienceSpawnTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
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