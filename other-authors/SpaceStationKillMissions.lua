-- table with MissionID values to loop through later
DelMissions = { "SCAN_CRE", "SCAN_MIN", "SCAN_TREE", "DELIVER", "DELIVER_HARD", "COLLECT1", "COLLECT2", "COLLECT3",
                "COLLECT4", "MISSING_PERSON", "HIDE_SEEK_BRIBE", "HIDE_SEEK_TIMED", "REPAIR_1", "REPAIR_2", "REPAIR_3",
                "PHOTO_BIOME", "PHOTO_CRE", "PHOTO_BUILD", "FEED_CRE", "DIGGING", "DEPOT_RAID", "DEPOT_RAID_HARD", "FACTORY_RAID", "FACT_RAID_MED", "FACT_RAID_HARD",
                "BOUNTY_EASY", "BOUNTY_MED", "BOUNTY_HARD", "BOUNTY_NEW1", "BOUNTY_NEW2", "BOUNTY_NEW3", "FREIGHTER_A", "FREIGHTER_D'", "KILL_FIENDS", "BONE_HUNT", }

NMS_MOD_DEFINITION_CONTAINER = {
  ["MOD_FILENAME"]    = "SpaceStationKillMissions.pak",
  ["MOD_DESCRIPTION"] = "Removes non-kill creatures or sentinels missions from spacestations",
  ["MOD_AUTHOR"]      = "hammerit",
  ["NMS_VERSION"]     = "4.05",
  ["MODIFICATIONS"]   = {
    {
    ["MBIN_CHANGE_TABLE"] = {
      {
      ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN",
      ["EXML_CHANGE_TABLE"] = {}
      }
    }
    }
  },
}

local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
-- loop through DelMissions and create remove sections in "EXML_CHANGE_TABLE"
for i = 1, #DelMissions do
    local value = DelMissions[i]
    local temp_table =
    {
          ["SPECIAL_KEY_WORDS"] = { "MissionID", value },
          ["REMOVE"] = "SECTION",
    }
    Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end
