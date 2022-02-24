--TABLE FOR REMOVE LOOP (will create REMOVE sections inside EXML_CHANGE_TABLE)
DelMissions = {"SCAN_CRE","SCAN_MIN","SCAN_TREE","DELIVER","DELIVER_HARD","COLLECT1","COLLECT2","COLLECT3",
              "COLLECT4","MISSING_PERSON","HIDE_SEEK_BRIBE","HIDE_SEEK_TIMED","REPAIR_1","REPAIR_2","REPAIR_3",
              "PHOTO_BIOME","PHOTO_CRE","PHOTO_BUILD","FEED_CRE","DIGGING",}

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]      = "SpaceStationCombatMissions.pak",
    ["MOD_DESCRIPTION"]   = "Removes all non-combat missions from spacestations",
    ["MOD_AUTHOR"]        = "RealGenuineHuman",
    ["NMS_VERSION"]       = "3.83",
    ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"]= 
			{ 
				{
					["MBIN_FILE_SOURCE"]= "METADATA\SIMULATION\MISSIONS\NPCMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"]= {}
				}
			}
		}
	},
}

local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
-- CREATE THE REMOVE SECTIONS INSIDE "EXML_CHANGE_TABLE"
for i=1,#DelMissions do
    local value= DelMissions[i]
    local temp_table=  
        {
          ["SPECIAL_KEY_WORDS"]= {"MissionID", value},
          ["REMOVE"]= "SECTION",
        }
    Change_Table_Ref[#Change_Table_Ref + 1]= temp_table
end