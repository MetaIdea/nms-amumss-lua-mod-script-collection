NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Balaced Incinerator",
["MOD_AUTHOR"]      = "OwenBoogie",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Adds the incinerator back and balances its stats",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
              ["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="StatBonuses" value="GcStatsBonus" _index="11">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Weapon_FireDOT" />
					</Property>
					<Property name="Bonus" value="1.000000" />
					<Property name="Level" value="4" />
				</Property>
				<Property name="StatBonuses" value="GcStatsBonus" _index="12">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Weapon_FireDOT_Duration" />
					</Property>
					<Property name="Bonus" value="3.000000" />
					<Property name="Level" value="1" />
				</Property>
				<Property name="StatBonuses" value="GcStatsBonus" _index="13">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Weapon_FireDOT_DPS" />
					</Property>
					<Property name="Bonus" value="25.000000" />
					<Property name="Level" value="1" />
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WikiEnabled", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"WeapTech", "GcUnlockableItemTrees", "Unlockable", "BOLT"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="FLAME" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="TERRAIN_GREN" />
												<Property name="Children" />
											</Property>
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
												<Property name="Unlockable" value="STUN_GREN" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
]]              
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeapTech", "GcUnlockableItemTrees", "Unlockable", "GRENADE"},
              ["EXML_INDEX"] = 2,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeapTech", "GcUnlockableItemTrees", "Unlockable", "RAILGUN"},
              ["EXML_INDEX"] = 3,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeapTech", "GcUnlockableItemTrees", "Unlockable", "SHOTGUN"},
              ["EXML_INDEX"] = 4,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeapTech", "GcUnlockableItemTrees", "Unlockable", "SMG"},
              ["EXML_INDEX"] = 5,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeapTech", "GcUnlockableItemTrees", "Unlockable", "CANNON"},
              ["EXML_INDEX"] = 6,
            },
          }
        },
      }
    }
  }
}