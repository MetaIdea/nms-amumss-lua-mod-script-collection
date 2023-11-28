NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "All TechTree and RobotTech-Aurfram.pak",
["MOD_AUTHOR"]      = "Aurfram",
["NMS_VERSION"]     = "4.45",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "SUIT_ROCKET"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="STARSUIT" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ATLASSUIT" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WORMTECH" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_PROTECT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WORMREADER" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_SHIPDRIFT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SOLAR_SAIL" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CHARGER_ALIEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_PULSESPEED"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIPJUMP_ROBO" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SHIPJUMP_SPEC" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "SHIPSCAN_COMBAT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIPSCAN_ALIEN" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CARGO_S_ALIEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "CARGOSHIELD"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="LIFESUP_ROBO" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_QUICKWARP"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HYPERDRIVE_ROBO" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="HYPERDRIVE_SPEC" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_LAUNCHCHARGE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["LINE_OFFSET"] = "+1",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="LAUNCHER_ROBO" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="LAUNCHER_SPEC" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_SHIPSHIELD"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIP_LIFESUP" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SHIPSHIELD_ROBO" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_SHIPGUN"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIPGUN_ROBO" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SHIPGUN_ALIEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_SHIPLAS"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SHIPLAS_ALIEN" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_BOLTBOUNCE"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BOLT_SM" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "TERRAIN_GREN"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SUN_LASER" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SOUL_LASER" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_RAIL_STUN"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["LINE_OFFSET"] = "+1",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FLAME" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "STEALTH"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ATLAS_LASER" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_MINER"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SENT_LASER" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="LASER_XO" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_SURVEY"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_BUI_SCAN2" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "MECH_PILOT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MECH_SENT_R_ARM" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "MECH_LASER1"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MECH_SENT_L_ARM" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "MECH_GUN"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MECH_SENT_HEAD" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "MECH_MINER"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MECH_SENT_LEGS" />
                            <Property name="Children" />
                          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "F_HDRIVEBOOST3"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["LINE_OFFSET"] = "+1",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_MEGAWARP" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "F_SCANNER"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_LIFESUPP" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_PULSESPEED"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIPJUMP_ROBO" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="SHIPJUMP_SPEC" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Unlockable", "UT_SHIPSHIELD"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIPSHIELD_ROBO" />
                        <Property name="Children" />
                      </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                        
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Core", "False"},
                            }
                        },
                        {
                        
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"ID", "SHIPJUMP1"},
                                {"ID", "LAUNCHER"},
                                {"ID", "HYPERDRIVE"},
                                {"ID", "SHIPSHIELD"},
                                {"ID", "SHIPGUN1"},
                                {"ID", "SHIPSLOT_DMG1"},
                                {"ID", "SHIPSLOT_DMG2"},
                                {"ID", "SHIPSLOT_DMG3"},
                                {"ID", "SHIPSLOT_DMG4"},
                                {"ID", "SHIPSLOT_DMG5"},
                                {"ID", "SHIPSLOT_DMG6"},
                                {"ID", "SHIPSLOT_DMG7"},
                                {"ID", "SHIPSLOT_DMG8"},
                                {"ID", "SHIPSLOT_DMG9"},
                                {"ID", "SHIPSLOT_DMG10"},
                                {"ID", "SHIPSLOT_DMG11"},
                                {"ID", "SHIPSLOT_DMG12"},
                                {"ID", "LAUNCHER_SPEC"},
                                {"ID", "SHIPJUMP_SPEC"},
                                {"ID", "HYPERDRIVE_SPEC"},
                                {"ID", "SHIP_LIFESUP"},
                                {"ID", "SOLAR_SAIL"},
                                {"ID", "DUMMY_SCAN"},
                                {"ID", "LAUNCHER_ROBO"},
                                {"ID", "SHIPJUMP_ROBO"},
                                {"ID", "HYPERDRIVE_ROBO"},
                                {"ID", "SHIPSHIELD_ROBO"},
                                {"ID", "SHIPGUN_ROBO"},
                                {"ID", "LIFESUP_ROBO"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyCategory", "AllShipsExceptAlien"},
                            }
                        },
                    }
                },
            }
        }
    }
}