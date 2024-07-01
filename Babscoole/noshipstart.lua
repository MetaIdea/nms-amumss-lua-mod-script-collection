NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "noshipstart.pak",
["MOD_AUTHOR"]    = "Jackty89",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.50",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StartCrashSiteMinDistance", "500000"},
                                {"StartCrashSiteMaxDistance", "1000000"},
                                {"StartShelterMinDistance",   "2500"},
                                {"StartShelterMaxDistance",   "5000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StartWithAllItemsKnownDisabledData", "InitialShipInventory", "Slots"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StartWithAllItemsKnownDisabledData", "InitialShipInventory"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property name="Slots" />
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StartWithAllItemsKnownDisabledData", "InitialWeaponInventory", "Slots", "GcInventoryElement.xml", "GcInventoryElement.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageFactor", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StartWithAllItemsKnownEnabledData", "InitialShipInventory", "Slots"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StartWithAllItemsKnownEnabledData","InitialShipInventory"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property name="Slots" />
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StartWithAllItemsKnownEnabledData", "InitialWeaponInventory", "Slots", "GcInventoryElement.xml", "GcInventoryElement.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageFactor", "0"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Inventory"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Slots", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
      <Property name="Slots">
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Id" value="GARAGE_MECH" />
          <Property name="Amount" value="1" />
          <Property name="MaxAmount" value="1" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
        <Property value="GcInventoryElement.xml">
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Id" value="BUILDBEACON" />
          <Property name="Amount" value="1" />
          <Property name="MaxAmount" value="1" />
          <Property name="DamageFactor" value="0" />
          <Property name="FullyInstalled" value="True" />
          <Property name="Index" value="GcInventoryIndex.xml">
            <Property name="X" value="-1" />
            <Property name="Y" value="-1" />
          </Property>
        </Property>
      </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventory", "Slots"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InventoryType", "Technology"},
                                {"Id",            "SHIPSLOT_DMG12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipLayout"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Slots", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "FRE_FACE_DOOR_A"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="CARBON_SEAL" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="BUILDBEACON" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="BASE_FLAG" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="BP_ANALYSER" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="ANTIMATTER" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="AM_HOUSING" />
      </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "MECH_BOOST"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="TERRAINEDITOR" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="HYPERDRIVE" />
      </Property>
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="STRONGLASER" />
      </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ShipStartingLayout",         "GcInventoryLayout.xml"},
                                {"ShipTechOnlyStartingLayout", "GcInventoryLayout.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Slots", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"ID", "GARAGE_B"},
                                {"ID", "GARAGE_S"},
                                {"ID", "GARAGE_M"},
                                {"ID", "GARAGE_L"},
                                {"ID", "GARAGE_MECH"},
                                {"ID", "GARAGE_SUB"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CanPickUp", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK07"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename",     ""},
                                {"SinglePartID", "_SPEC_FIREWORK07"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK08"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename",     ""},
                                {"SinglePartID", "_SPEC_FIREWORK08"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SPEC_FIREWORK09"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename",     ""},
                                {"SinglePartID", "_SPEC_FIREWORK09"},
                            }
                        },
                    }
                },
            }
        },
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="GcUnlockableTrees">
  <Property name="Trees">
    <Property name="Test" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="TEST" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="test Building Parts" />
          <Property name="CostTypeID" value="UNITS" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="T_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALL_Q_H" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_DOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_DOOR_H" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_DOORWINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_GDOOR" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_FLOOR" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF0" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="test Building Parts 2" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="MAINROOM" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDLANDINGPAD" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TELEPORTER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="DRESSING_TABLE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILD_REFINER2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILD_REFINER3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COOKER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="DOOR2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HEALTHSTATION" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDTERMINAL" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIELDSTATION" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MAINROOMCUBE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MAINROOMFRAME" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FOUNDATION" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CORRIDOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORX" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORL" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GLASSCORRIDOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORC" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDWINDOW" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="PANEL_GLASS" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BIOROOM" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="VIEWSPHERE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="TECH TEST" />
          <Property name="CostTypeID" value="SPECIALS" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="PROTECT" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="ENERGY" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_ENERGY" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="JET1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_JET" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_JUMP" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_WATERJET" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_WATERENERGY" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="POWERGLOVE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="ATLASSUIT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="STARSUIT" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="Currency test 1" />
          <Property name="CostTypeID" value="PROD_TEST" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="MAINROOM" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDLANDINGPAD" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TELEPORTER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="DRESSING_TABLE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILD_REFINER2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILD_REFINER3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COOKER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="DOOR2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HEALTHSTATION" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDTERMINAL" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIELDSTATION" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MAINROOMCUBE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MAINROOMFRAME" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FOUNDATION" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CORRIDOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORX" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORL" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GLASSCORRIDOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORC" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDWINDOW" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="PANEL_GLASS" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BIOROOM" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="VIEWSPHERE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="Currency test 2" />
          <Property name="CostTypeID" value="SUBST_TEST" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="PROTECT" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="ENERGY" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_ENERGY" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="JET1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_JET" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_JUMP" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_WATERJET" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_WATERENERGY" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="POWERGLOVE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="ATLASSUIT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="STARSUIT" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="BasicBaseParts" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_PURCHASABLE_BASICPARTS_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_MAINROOM_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="MAINROOM" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MAINROOMCUBE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FOUNDATION" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDPAVING" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDPAVING_BIG" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDPAVINGTALL" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MAINROOMFRAME" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CORRIDOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORT" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORX" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GLASSCORRIDOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CUBEWINDOW" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDWINDOW" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="PANEL_GLASS" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BIOROOM" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="VIEWSPHERE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORC" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="DOOR2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDRAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDLADDER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_CUBEROOM_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="CUBEROOM" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CUBEFOUND" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEFRAME" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEFLOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEFOUND4" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CUBEROOMCURVED" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBESTAIRS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLFLOORLADDER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEWALL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CUBEINNERDOOR" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEROOF" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CUBEGLASS" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CURVEDCUBEROOF" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEWINDOWSMALL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEWINDOWOVAL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASETECH_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="BUILDBEACON" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TELEPORTER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="HEALTHSTATION" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIELDSTATION" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="O2_HARVESTER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDHARVESTER" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDGASHARVEST" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="DRESSING_TABLE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HOLO_DISCO_0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLANDINGPAD" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_LANDINGZONE" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="U_MINIPORTAL" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="U_PORTALLINE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDTERMINAL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSAVE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSIGNAL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MESSAGEMODULE" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MESSAGE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILD_REFINER1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILD_REFINER2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILD_REFINER3" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDANTIMATTER" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COOKER" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CREATURE_FARM" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CREATURE_FEED" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LIGHTBOX" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="L_FLOOR_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="NOISEBOX" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BYTEBEAT" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BYTEBEATSWITCH" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="U_BYTEBEATLINE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SPAWNER_BALL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_EXOCRAFT_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="GARAGE_M" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SUMMON_GARAGE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_VEHICL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_S" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_MECH" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_SUB" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_B" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_L" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="RACE_START" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="RACE_RAMP" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="RACE_BOOSTER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_WATER_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="MAINROOM_WATER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WATERBUBBLE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CORRIDOR_WATER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PANEL_GLASS" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORL_WATER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORT_WATER" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORX_WATER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORV_WATER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MAINROOMCUBE_W" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDOOR_WATER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MOONPOOL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="GARAGE_SUB" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECALS_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="BUILDDECAL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECALSIMP1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALSIMP2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALSIMP3" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALSIMP4" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECAL2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALNMS" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECALNUM0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALNUM1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM5" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM7" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM9" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALNUM2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM4" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM6" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM8" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECALVIS1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALVIS2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALVIS4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALVIS3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALVIS5" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_POSTERS_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_POSTER0" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_POSTER1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER4" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER5" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER6" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_POSTER2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER7" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER8" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER9" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_POSTER3" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER10" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER11" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER13" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER15" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="WALLSCREEN" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WALLFAN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BLDWALLUNIT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_SHELVINGUNIT0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="STORAGEPANEL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDFLATPANEL" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSIDEPANEL" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHELFPANEL" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WALLSCREENB" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLSCREENB2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ROOFMONITOR" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="ROBOTICARM" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECHPANEL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WEAPONRACK" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="DRAWS" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SERVERSTACK" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BOXEDSCREEN" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDCANRACK" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDAMCRATE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="OCTACABINET" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CRATELCYLINDER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLOCKER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDHCABINET" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLCRATE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_MILKCRATE" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CRATELRARE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CRATE0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CRATE2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CRATE1" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CRATE3" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CRATE3OPEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CRATE4" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CRATE4OPEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="BUILDCHAIR" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDCHAIR2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDBED" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDCHAIR3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CHAIR0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSOFA" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSOFA2" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSOFA2L" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FLAG1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FLAG2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FLAG3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FLAG4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLFLAG1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLFLAG2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_FLAG5" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLFLAG3" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_FLAG6" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALLHANGING1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALLHANGING2" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALLHANGING3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDTABLE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDTABLE2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FLOORMAT1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSIMPLEDESK" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="LARGEDESK" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDLIGHTTABLE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CURVEDDESK" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDTABLE3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MONITORDESK" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDWORKTOP" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_BARSTOOL0" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BAR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_BAR_C" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_BAR_H" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARTABLE0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GLOWGLOBE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BURNER0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_TRAY0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_PAN0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CUP0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_TABLEPOT0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POT0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARTAPS0" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_GAZEBO0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CURTAIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_DRAPE0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_RUG0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_RUG1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FABROLL0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FABROLLPILE0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CANOPY_WALL0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CANOPY_WALL1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CANOPY_WALL2" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_STEPLADDER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_TROUGH0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_PLANTER_M" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_SCISSORLIFT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_SCAFFOLD_M" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_SCAFFOLD_L" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_CEMENTMIXER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CEMENTBAG" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WHEELBARROW" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_PALLET" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_PALLET_BRICK" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_BRICKSWRAPPED" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_RSJSTACK" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARRIER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FENCE0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FENCE1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FENCE2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FENCE3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_LARGETRYE0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CARRIAGE" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CARRIAGEWHEEL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_SHOVEL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_BUCKET_S" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_BUCKET_M" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_EXCBUCKET" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_SPARKPLUG" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_COMPOSTBIN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FURNACE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_GENERATOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_PUMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WATERTOWER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_MACHINE0" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CANISTER0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CANISTER1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_MILKBOTTLE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ANTENNA0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ANTENNA1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ANTENNA2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ANTENNA3" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARREL1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WATERVALVE0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_LIGHTS_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="SMALLLIGHT" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WALLLIGHTWHITE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLLIGHTBLUE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLLIGHTYELLOW" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLLIGHTGREEN" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLLIGHTRED" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLLIGHTPINK" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDLIGHT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLIGHT2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLIGHT3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_STREETLAMP0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDLABLAMP" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_TABLELAMP0" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_WALLLIGHT0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_SIGN_BAR0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CEILINGLIGHT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_HANGLAMP0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_HANGLAMP1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_HANGLAMP2" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_HANGLAMP3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_LIGHTSTRIP0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_POWER_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="U_POWERLINE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="U_BIOGENERATOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="POWERLINE_HIDER" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SOLAR_S" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="U_GENERATOR_S" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_BATTERY_S" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="U_EXTRACTOR_S" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_GASEXTRACTOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SILO_S" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_PIPELINE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="U_SWITCHWALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SWITCHPRESS" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SWITCHPROX" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SWITCHBUTTON" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_TRANSISTOR1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_TRANSISTOR2" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_FARMING_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="PLANTER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PLANTPOT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CARBONPLANTER" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PLANTPOT1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PLANTPOT2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PLANTPOT3" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PLANTERMEGA" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TOXICPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SACVENOMPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SNOWPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GRAVPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="RADIOPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="POOPPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BARRENPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CREATUREPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LUSHPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PEARLPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SCORCHEDPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="NIPPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_TIMBER_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="T_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_GFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_RAMP_H" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_RAMP_Q_TOP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_Q1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALL_Q_H" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_Q_H1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_CHEV_WALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_CHEV_DOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_CHEV_WALL_H_C" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_CHEV_WIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_CHEV_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_CHEV_WIN2" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_DOOR_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_DOORWINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_WALL_WIN2" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_WALL_WIN3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_DOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_DOOR1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_GDOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_TIMBER_ROOFS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="T_ROOF6" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF_M" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_M_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ROOF_E_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF_C" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF_M_CAP" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_E_CAP" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ROOF4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF7" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF3" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF5" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_STONE_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_RAMP_H" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_RAMP_Q_TOP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_Q1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALL_Q_H" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_Q_H1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_CHEV_WALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CHEV_DOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CHEV_WALL_H_C" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_SUPPORTS" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CHEV_WIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CHEV_WIN2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CHEV_WIN1" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_DOOR_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_DOORWINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_WALL_WIN2" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_WALL_WIN3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_DOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_DOOR1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GDOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_STONE_ROOFS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_ROOF3" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF_M" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_M_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ROOF_E_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF_C" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF_M_CAP" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_E_CAP" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ROOF4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF0" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF5" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_FIBREGLASS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="F_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_GFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_RAMP_H" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_RAMP_Q_TOP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_Q1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALL_Q_H" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_Q_H1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_CHEV_WALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_CHEV_DOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_CHEV_WALL_H_C" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_CHEV_WIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_CHEV_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_CHEV_WIN2" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_DOOR_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_DOORWINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_WALL_WIN2" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_WALL_WIN3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_DOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_DOOR1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_GDOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_FIBREGLASS_ROOFS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="F_ROOF7" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF_M" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_M_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ROOF_E_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF_C" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF_M_CAP" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_E_CAP" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ROOF3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF2" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF5" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF6" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF8" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF4" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_SHAPES_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="WEDGESHAPE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WEDGESMALLSHAPE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PYRAMIDSHAPE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PIPE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBESOLID" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CUBESHAPE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CYLINDERSHAPE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SPHERESHAPE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_STORAGE_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="CONTAINER0" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER3" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER4" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER5" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER6" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER7" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER8" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER9" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="BasicTechParts" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_PURCHASABLE_BASICTECH_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_TECH_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TELEPORTER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="U_BIOGENERATOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_POWERLINE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="U_BATTERY_S" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="U_SOLAR_S" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="HEALTHSTATION" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIELDSTATION" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSIGNAL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDBEACON" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_TIMBER_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="T_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_GFLOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_RAMP_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_FLOOR_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_Q_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_CHEV_WIN0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_DOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALL_WINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_DOORWINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_DOOR_H" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_GDOOR" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF6" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_M" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_C" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ROOF_IC" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF7" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_STONE_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GFLOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_RAMP_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FLOOR_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_Q_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_DOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALL_WINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_DOORWINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_DOOR_H" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GDOOR" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF3" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_M" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_C" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ROOF_IC" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_FIBREGLASS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="F_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_GFLOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_RAMP_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_FLOOR_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_Q_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_DOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALL_WINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_DOORWINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_DOOR_H" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_GDOOR" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF7" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_M" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_C" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ROOF_IC" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="BaseParts" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_PURCHASABLE_BASEPARTS_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_MAINROOM_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="MAINROOM" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MAINROOMCUBE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FOUNDATION" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDPAVING" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDPAVING_BIG" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDPAVINGTALL" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MAINROOMFRAME" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CORRIDOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORT" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORX" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GLASSCORRIDOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CUBEWINDOW" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDWINDOW" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="PANEL_GLASS" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BIOROOM" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="VIEWSPHERE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORC" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="DOOR2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDRAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDLADDER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_CUBEROOM_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="CUBEROOM" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CUBEFOUND" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEFRAME" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEFLOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEFOUND4" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CUBEROOMCURVED" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBESTAIRS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLFLOORLADDER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEWALL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CUBEINNERDOOR" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEROOF" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CUBEGLASS" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CURVEDCUBEROOF" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEWINDOWSMALL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBEWINDOWOVAL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASETECH_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="BUILDBEACON" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TELEPORTER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="HEALTHSTATION" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHIELDSTATION" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="O2_HARVESTER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDHARVESTER" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDGASHARVEST" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="DRESSING_TABLE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HOLO_DISCO_0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLANDINGPAD" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_LANDINGZONE" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="U_MINIPORTAL" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="U_PORTALLINE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDTERMINAL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSAVE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSIGNAL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MESSAGEMODULE" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MESSAGE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILD_REFINER1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILD_REFINER2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILD_REFINER3" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDANTIMATTER" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COOKER" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CREATURE_FARM" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CREATURE_FEED" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LIGHTBOX" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="L_FLOOR_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="NOISEBOX" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BYTEBEAT" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BYTEBEATSWITCH" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="U_BYTEBEATLINE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SPAWNER_BALL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_EXOCRAFT_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="GARAGE_M" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SUMMON_GARAGE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_VEHICL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_S" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_MECH" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_SUB" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_B" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_L" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="RACE_START" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="RACE_RAMP" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="RACE_BOOSTER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_WATER_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="MAINROOM_WATER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WATERBUBBLE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CORRIDOR_WATER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PANEL_GLASS" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORL_WATER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORT_WATER" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CORRIDORX_WATER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CORRIDORV_WATER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MAINROOMCUBE_W" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDOOR_WATER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MOONPOOL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="GARAGE_SUB" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECALS_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="BUILDDECAL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECALSIMP1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALSIMP2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALSIMP3" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALSIMP4" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECAL2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALNMS" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECALNUM0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALNUM1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM5" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM7" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM9" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALNUM2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM4" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM6" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALNUM8" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDDECALVIS1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALVIS2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALVIS4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDDECALVIS3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDDECALVIS5" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_POSTERS_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_POSTER0" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_POSTER1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER4" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER5" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER6" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_POSTER2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER7" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER8" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER9" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_POSTER3" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER10" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER11" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER13" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POSTER15" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="WALLSCREEN" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WALLFAN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BLDWALLUNIT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_SHELVINGUNIT0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="STORAGEPANEL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDFLATPANEL" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSIDEPANEL" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SHELFPANEL" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WALLSCREENB" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLSCREENB2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ROOFMONITOR" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="ROBOTICARM" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECHPANEL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WEAPONRACK" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="DRAWS" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SERVERSTACK" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BOXEDSCREEN" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDCANRACK" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDAMCRATE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="OCTACABINET" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CRATELCYLINDER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLOCKER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDHCABINET" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLCRATE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_MILKCRATE" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="CRATELRARE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CRATE0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CRATE2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CRATE1" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CRATE3" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CRATE3OPEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CRATE4" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CRATE4OPEN" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="BUILDCHAIR" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDCHAIR2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDBED" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDCHAIR3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CHAIR0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSOFA" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSOFA2" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDSOFA2L" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FLAG1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FLAG2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FLAG3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FLAG4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLFLAG1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLFLAG2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_FLAG5" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLFLAG3" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_FLAG6" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALLHANGING1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALLHANGING2" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALLHANGING3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDTABLE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDTABLE2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FLOORMAT1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSIMPLEDESK" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="LARGEDESK" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDLIGHTTABLE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CURVEDDESK" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BUILDTABLE3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MONITORDESK" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDWORKTOP" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_BARSTOOL0" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BAR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_BAR_C" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_BAR_H" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARTABLE0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GLOWGLOBE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BURNER0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_TRAY0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_PAN0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CUP0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_TABLEPOT0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_POT0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARTAPS0" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_GAZEBO0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CURTAIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_DRAPE0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_RUG0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_RUG1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FABROLL0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FABROLLPILE0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CANOPY_WALL0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CANOPY_WALL1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CANOPY_WALL2" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_STEPLADDER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_TROUGH0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_PLANTER_M" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_SCISSORLIFT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_SCAFFOLD_M" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_SCAFFOLD_L" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_CEMENTMIXER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CEMENTBAG" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WHEELBARROW" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_PALLET" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_PALLET_BRICK" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_BRICKSWRAPPED" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_RSJSTACK" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARRIER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FENCE0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FENCE1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FENCE2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FENCE3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_LARGETRYE0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CARRIAGE" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CARRIAGEWHEEL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_SHOVEL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_BUCKET_S" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_BUCKET_M" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_EXCBUCKET" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_DECORATION_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_SPARKPLUG" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_COMPOSTBIN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_FURNACE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_GENERATOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_PUMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WATERTOWER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_MACHINE0" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CANISTER0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CANISTER1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_MILKBOTTLE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ANTENNA0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ANTENNA1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ANTENNA2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ANTENNA3" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_BARREL1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WATERVALVE0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_LIGHTS_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="SMALLLIGHT" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WALLLIGHTWHITE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLLIGHTBLUE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLLIGHTYELLOW" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLLIGHTGREEN" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="WALLLIGHTRED" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="WALLLIGHTPINK" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDLIGHT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLIGHT2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDLIGHT3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_STREETLAMP0" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDLABLAMP" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_TABLELAMP0" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_WALLLIGHT0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_SIGN_BAR0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CEILINGLIGHT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_HANGLAMP0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_HANGLAMP1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_HANGLAMP2" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_HANGLAMP3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_LIGHTSTRIP0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_POWER_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="U_POWERLINE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="U_BIOGENERATOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="POWERLINE_HIDER" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SOLAR_S" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="U_GENERATOR_S" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_BATTERY_S" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="U_EXTRACTOR_S" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_GASEXTRACTOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SILO_S" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_PIPELINE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="U_SWITCHWALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SWITCHPRESS" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SWITCHPROX" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_SWITCHBUTTON" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_TRANSISTOR1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="U_TRANSISTOR2" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_FARMING_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="PLANTER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PLANTPOT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CARBONPLANTER" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PLANTPOT1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PLANTPOT2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PLANTPOT3" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PLANTERMEGA" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TOXICPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SACVENOMPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SNOWPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GRAVPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="RADIOPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="POOPPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BARRENPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CREATUREPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LUSHPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PEARLPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SCORCHEDPLANT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="NIPPLANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_TIMBER_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="T_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_GFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_RAMP_H" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_RAMP_Q_TOP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_Q1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_WALL_Q_H" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_Q_H1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_CHEV_WALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_CHEV_DOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_CHEV_WALL_H_C" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_CHEV_WIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_CHEV_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_CHEV_WIN2" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_DOOR_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_DOORWINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_WALL_WIN2" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="T_WALL_WIN3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_DOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_DOOR1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_GDOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_TIMBER_ROOFS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="T_ROOF6" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF_M" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_M_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ROOF_E_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF_C" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF_M_CAP" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF_E_CAP" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="T_ROOF4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF0" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF7" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_ROOF3" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_ROOF5" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_STONE_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_RAMP_H" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_RAMP_Q_TOP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_Q1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_WALL_Q_H" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_Q_H1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_CHEV_WALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CHEV_DOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CHEV_WALL_H_C" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_SUPPORTS" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_CHEV_WIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_CHEV_WIN2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_CHEV_WIN1" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_DOOR_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_DOORWINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_WALL_WIN2" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="S_WALL_WIN3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_DOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_DOOR1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_GDOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_STONE_ROOFS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S_ROOF3" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF_M" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_M_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ROOF_E_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF_C" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF_M_CAP" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF_E_CAP" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="S_ROOF1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="S_ROOF4" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF0" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S_ROOF5" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_FIBREGLASS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="F_WALL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_FLOOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_GFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_FLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_RAMP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_RAMP_H" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_RAMP_Q_TOP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_TRIFLOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_TRIFLOOR_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_WALL_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALLDIAGONAL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALL_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_Q1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_WALL_Q_H" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_Q_H1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_CHEV_WALL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_CHEV_DOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_CHEV_WALL_H_C" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_CHEV_WIN0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_CHEV_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_CHEV_WIN2" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_DOOR_H" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_DOORWINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_WIN1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_WALL_WIN2" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_WALL_WIN3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_WALL_WINDOW" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_DOOR" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_DOOR1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_GDOOR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ARCH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ARCH_H" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASIC_FIBREGLASS_ROOFS_SUB" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="F_ROOF7" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF_M" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_M_Q" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ROOF_E_Q" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF_C" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_IC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF_M_CAP" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF_E_CAP" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF0" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_ROOF3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF2" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF5" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF6" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_ROOF8" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_ROOF4" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_SHAPES_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="WEDGESHAPE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="WEDGESMALLSHAPE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="PYRAMIDSHAPE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PIPE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CUBESOLID" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CUBESHAPE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CYLINDERSHAPE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SPHERESHAPE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_STORAGE_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="CONTAINER0" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER2" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER3" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER4" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER5" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER6" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="CONTAINER7" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER8" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CONTAINER9" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="SpecialBaseParts" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_SPECIAL_BASEPARTS_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="" />
          <Property name="CostTypeID" value="" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="CONTAINER0" />
            <Property name="Children" />
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="SuitTech" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_SUIT_TECH_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_TECH_TREE_SUB" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="ENERGY" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="POWERGLOVE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SUIT_REFINER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUIT_REFINER2" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SUIT_ROCKET" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PROTECT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_HOT" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_COLD" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_TOX" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_RAD" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_WATER" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_PROTECT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="UT_ENERGY" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_WATERENERGY" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="JET1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_JET" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_MIDAIR" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_JUMP" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_WATERJET" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="UT_TRANSLATE1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_TRANSLATE2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_TRANSLATE3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="ShipTech" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_SHIP_TECH_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_TECH_TREE_SUB" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="SHIPJUMP1" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="UT_PULSEFUEL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_SHIPDRIFT" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_PULSESPEED" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SHIP_TELEPORT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPSCAN_COMBAT" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPSCAN_ECON" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CARGOSHIELD" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="HYPERDRIVE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_QUICKWARP" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="HDRIVEBOOST1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HDRIVEBOOST2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="HDRIVEBOOST3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LAUNCHER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_LAUNCHER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_LAUNCHCHARGE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SHIPSHIELD" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_SHIPSHIELD" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SHIPGUN1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_SHIPGUN" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPROCKETS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_ROCKETS" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPLAS1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPLAS" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPSHOTGUN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPSHOT" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPMINIGUN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPMINI" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPPLASMA" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPBLOB" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="WeapTech" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_WEAP_TECH_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_TECH_TREE_SUB" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="LASER" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BOLT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_BOLT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_BOLTBOUNCE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GRENADE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="TERRAIN_GREN" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="STUN_GREN" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="RAILGUN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_RAIL_STUN" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_RAIL" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHOTGUN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHOT" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SMG" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SMG" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="UT_SMGBOUNCE" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="UT_SMG_DOT" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CANNON" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_CANNON" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GROUND_SHIELD" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SCOPE" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="STEALTH" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_STUNDMG" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="STRONGLASER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_MINER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="UT_SCAN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_SURVEY" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="ExocraftTech" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_EXOCRAFT_TECH_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_TECH_TREE_SUB" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="VEHICLE_ENGINE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SUB_ENGINE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SUB_BINOCS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUB_RECHARGE" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUB_LASER" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUB_GUN" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_COLD" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_TOX" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_RAD" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_HOT" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="VEHICLE_SCAN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="VEHICLE_SCAN1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="VEHICLE_SCAN2" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="VEHICLE_BOOST" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="EXO_RECHARGE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="VEHICLE_LASER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="VEHICLE_LASER1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="VEHICLE_GUN" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MECH_ENGINE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MECH_PROT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_BOOST" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MECH_FUEL" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MECH_SCAN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_PILOT" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MECH_LASER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_LASER1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_GUN" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_MINER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="CraftProducts" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_PRODUCT_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_PRODUCT_TREE_CRAFT" />
          <Property name="CostTypeID" value="FACTORY" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="PRODFUEL2" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="JELLY" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="NANOTUBES" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HYDRALIC" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MICROCHIP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COMPUTER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CARBON_SEAL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BIO" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CASING" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MAGNET" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MIRROR" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="POWERCELL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPCHARGE" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="LAUNCHFUEL" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUBFUEL" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="GRENFUEL1" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="HYPERFUEL1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="ACCESS1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ACCESS2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="HYPERFUEL2" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="ACCESS3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_PRODUCT_TREE_FARM" />
          <Property name="CostTypeID" value="FACTORY" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="FARMPROD1" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FARMPROD2" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FARMPROD6" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FARMPROD7" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FARMPROD3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FARMPROD8" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FARMPROD5" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FARMPROD4" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FARMPROD9" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="REACTION1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="REACTION2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COMPOUND1" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="COMPOUND4" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="REACTION3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COMPOUND2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="COMPOUND5" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="COMPOUND3" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="COMPOUND6" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="ALLOY1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ALLOY2" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ALLOY3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ALLOY4" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ALLOY5" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="ALLOY8" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ALLOY6" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="ALLOY7" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MEGAPROD1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MEGAPROD2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ULTRAPROD1" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MEGAPROD3" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="ULTRAPROD2" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="FreighterTech" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_FREIGHTER_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_TECH_TREE_SUB" />
          <Property name="CostTypeID" value="FRIGATE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="FRIGATE_FUEL_1" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FRIG_BOOST_SPD" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRIG_BOOST_TRA" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRIG_BOOST_EXP" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRIG_BOOST_MIN" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRIG_BOOST_COM" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_HDRIVEBOOST1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_HACCESS1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_HACCESS2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_HACCESS3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_HDRIVEBOOST2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="F_HDRIVEBOOST3" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="F_TELEPORT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_SCANNER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_FRE_BASE_TREE" />
          <Property name="CostTypeID" value="FRIGATE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="FRE_CORR_A" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FRE_FACE_DOOR_A" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_CORR_A_GLAS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FRE_CORR_STA" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="FRE_ROOM_LADDER" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FRE_EXT_PLATFOR" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FRE_EXT_WALKWAY" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FRE_EXT_W_STA" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="FRE_CORR_G_STA" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_FACE_WINDOW" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FRE_FACE_WALL" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FRE_ROOM_FLEET" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_TECH" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_SCAN" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_SHOP" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FRE_ROOM_DRESS" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="FRE_ROOM_TELEPO" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FRE_ROOM_PLANT1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_BIO" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_PLANT0" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_COOK" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FRE_ROOM_REFINE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_IND" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_EXTR" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_VEHICL" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_STORE0" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_FREIGHT_PAINT_NAME_L" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="FREIGHT_PAINT" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_RED" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_ORANGE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_YELLOW" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_GREEN" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_CYAN" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_BLUE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_PURPLE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_PINK" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_WHITE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="FREIGHT_BLACK" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="S9BaseParts" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_S9_BASEPARTS_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_S9_PARTS_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="S9_BUILDERTREE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S9_EXOCRAFTTREE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S9_WEAPONTREE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="S9_SHIPTREE" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_BASETECH_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="BUILDBEACON" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="HEALTHSTATION" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIELDSTATION" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="COOKER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CREATURE_FARM" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="CREATURE_FEED" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="O2_HARVESTER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDHARVESTER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDGASHARVEST" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="DRESSING_TABLE" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDTERMINAL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILDSAVE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILDSIGNAL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MESSAGEMODULE" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MESSAGE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="BUILD_REFINER1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="BUILD_REFINER2" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILD_REFINER3" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BUILDANTIMATTER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LIGHTBOX" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="L_FLOOR_Q" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="NOISEBOX" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="BYTEBEAT" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="BYTEBEATSWITCH" />
                            <Property name="Children" />
                          </Property>
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="U_BYTEBEATLINE" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SPAWNER_BALL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_EXOCRAFT_TREE" />
          <Property name="CostTypeID" value="SALVAGE" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="GARAGE_M" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SUMMON_GARAGE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="FRE_ROOM_VEHICL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_S" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_MECH" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_SUB" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_B" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="GARAGE_L" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="RACE_START" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="RACE_RAMP" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="RACE_BOOSTER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="S9ExoTech" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_EXOCRAFT_TECH_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_TECH_TREE_SUB" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="VEHICLE_ENGINE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SUB_ENGINE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SUB_BINOCS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUB_RECHARGE" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUB_LASER" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="SUB_GUN" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_COLD" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_TOX" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_RAD" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="EXO_PROT_HOT" />
                <Property name="Children" />
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="VEHICLE_SCAN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="VEHICLE_SCAN1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="VEHICLE_SCAN2" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="VEHICLE_BOOST" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="EXO_RECHARGE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="VEHICLE_LASER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="VEHICLE_LASER1" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="VEHICLE_GUN" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="MECH_ENGINE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MECH_PROT" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_BOOST" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="MECH_FUEL" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MECH_SCAN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_PILOT" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="MECH_LASER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_LASER1" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_GUN" />
                        <Property name="Children" />
                      </Property>
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="MECH_MINER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="S9ShipTech" value="GcUnlockableItemTrees.xml">
      <Property name="Title" value="UI_SHIP_TECH_TREE" />
      <Property name="Trees">
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="UI_TECH_TREE_SUB" />
          <Property name="CostTypeID" value="NANITES" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="SHIPJUMP1" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="UT_PULSEFUEL" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_SHIPDRIFT" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_PULSESPEED" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SHIP_TELEPORT" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPSCAN_COMBAT" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPSCAN_ECON" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="CARGOSHIELD" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="HYPERDRIVE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_QUICKWARP" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="HDRIVEBOOST1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="HDRIVEBOOST2" />
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="HDRIVEBOOST3" />
                            <Property name="Children" />
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LAUNCHER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_LAUNCHER" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_LAUNCHCHARGE" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SHIPSHIELD" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_SHIPSHIELD" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="SHIPGUN1" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="UT_SHIPGUN" />
                    <Property name="Children" />
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPROCKETS" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_ROCKETS" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPLAS1" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPLAS" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPSHOTGUN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPSHOT" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPMINIGUN" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPMINI" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPPLASMA" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="UT_SHIPBLOB" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
  <Property name="CostTypes">
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="UNITS" />
      <Property name="TypeOfCost" value="Currency" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Units" />
      </Property>
      <Property name="TypeID" value="" />
      <Property name="CantAffordString" value="" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="NANITES" />
      <Property name="TypeOfCost" value="Currency" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Nanites" />
      </Property>
      <Property name="TypeID" value="" />
      <Property name="CantAffordString" value="" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="SPECIALS" />
      <Property name="TypeOfCost" value="Currency" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Specials" />
      </Property>
      <Property name="TypeID" value="" />
      <Property name="CantAffordString" value="" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="SALVAGE" />
      <Property name="TypeOfCost" value="Product" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Units" />
      </Property>
      <Property name="TypeID" value="BP_SALVAGE" />
      <Property name="CantAffordString" value="TRADE_BUY_BUILDING_NO_ITEMS" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="SUBST_TEST" />
      <Property name="TypeOfCost" value="Substance" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Units" />
      </Property>
      <Property name="TypeID" value="FUEL1" />
      <Property name="CantAffordString" value="" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="FACTORY" />
      <Property name="TypeOfCost" value="Product" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Units" />
      </Property>
      <Property name="TypeID" value="FACT_TOKEN" />
      <Property name="CantAffordString" value="TRADE_BUY_RESEARCH_NO_TOKEN" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="FRIGATE" />
      <Property name="TypeOfCost" value="Product" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Units" />
      </Property>
      <Property name="TypeID" value="FRIG_TOKEN" />
      <Property name="CantAffordString" value="TRADE_BUY_RESEARCH_NO_TOKEN" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="AF_METAL_CURR" />
      <Property name="TypeOfCost" value="Substance" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Units" />
      </Property>
      <Property name="TypeID" value="AF_METAL" />
      <Property name="CantAffordString" value="UI_INSUFFICIENT_ROBOT" />
    </Property>
    <Property value="GcUnlockableTreeCostType.xml">
      <Property name="CostTypeID" value="BUI_CURR" />
      <Property name="TypeOfCost" value="Substance" />
      <Property name="CurrencyType" value="GcCurrency.xml">
        <Property name="Currency" value="Units" />
      </Property>
      <Property name="TypeID" value="BUI_SCRAP" />
      <Property name="CantAffordString" value="UI_INSUFFICIENT_BUI_SCRAP" />
    </Property>
  </Property>
</Data>
]]
        },
    }
}