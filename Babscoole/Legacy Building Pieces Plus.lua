NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Legacy Building Pieces Plus",
["MOD_AUTHOR"]      = "IgorGaming",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Unlock a handful of legacy building pieces that other mods don't",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "WALL"},
                {"ID", "WALLTALL"},
                {"ID", "WALLCURVED"},
                {"ID", "ROOMFLOOR"},
                {"ID", "WALLDOOR"},
                {"ID", "CORNERPOST"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IsPlaceable",           "true"},
                {"BuildableOnPlanetBase", "true"},
                {"BuildableUnderwater",   "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "WALL"},
                {"ID", "WALLTALL"},
                {"ID", "WALLCURVED"},
                {"ID", "ROOMFLOOR"},
                {"ID", "WALLDOOR"},
                {"ID", "CORNERPOST"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Groups"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
				<Property name="Groups" value="GcBaseBuildingEntryGroup" _index="0">
					<Property name="Group" value="ROOMS" />
					<Property name="SubGroupName" value="ROOMSMAIN" />
				</Property>
]]
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable", "FOUNDATION"},
              ["SECTION_ACTIVE"] = 2,
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
									<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
										<Property name="Unlockable" value="WALL" />
										<Property name="Children">
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
												<Property name="Unlockable" value="WALLTALL" />
												<Property name="Children">
													<Property name="Children" value="GcUnlockableItemTreeNode" _index="0">
														<Property name="Unlockable" value="WALLCURVED" />
														<Property name="Children" />
													</Property>
													<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
														<Property name="Unlockable" value="ROOMFLOOR" />
														<Property name="Children" />
													</Property>
												</Property>
											</Property>
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="1">
												<Property name="Unlockable" value="CORNERPOST" />
												<Property name="Children" />
											</Property>
											<Property name="Children" value="GcUnlockableItemTreeNode" _index="2">
												<Property name="Unlockable" value="WALLDOOR" />
												<Property name="Children" />
											</Property>
										</Property>
									</Property>
]]              
            },
          }
        },
      }
    }
  }
}