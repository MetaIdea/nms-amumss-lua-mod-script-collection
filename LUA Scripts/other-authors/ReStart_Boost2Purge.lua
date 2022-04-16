NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "_ZZZ_ReStart_Boost2Purge.pak",
["MOD_DESCRIPTION"]         = "Modifies table to autocomplete secondary missions",
["MOD_AUTHOR"]              = "Makto",
["MODIFICATIONS"]           = 
    {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            { 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThirdPersonIsDefaultCamera",		   	"False"},  
								{"SkipIntro",							"True"}, 
								{"SkipLogos",							"True"},
								{"SkipTutorial",						"True"},
								{"DisableVibration",					"True"}, 
								{"DisableSaveSlotSorting",				"True"}, 					
								{"MultiplePlayerFreightersInASystem",	"True"}, 
								{"ForceInitialShip",					"False"},	
								{"ForceInitialWeapon",					"False"},								
								{"DisableBaseBuildingLimits",			"True"}
							}
						}
					} 
				},
				{
                    ["MBIN_FILE_SOURCE"]    = "METADATA\SIMULATION\MISSIONS\TUTORIALMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {

						{
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "SKIP_TUT"},
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] =
							{
								{"AutoStart", "AllModes",}
							},
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "SKIP_TUT", "Value", "BUILDLIGHT2"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = 
[[
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACCESS1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACCESS2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACCESS3" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="HYDRALIC" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MAGNET" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MICROCHIP" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="COMPUTER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MIRROR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BIO" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="GRENFUEL1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SOUL_ENGINE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MIND_ARC" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="NPCBUILDERTERM" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="GARAGE_M" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="PRODFUEL2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="POWERCELL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MAINROOM" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MAINROOMCUBE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CORRIDOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDDOOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="GLASSCORRIDOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CORRIDORL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FOUNDATION" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="DOOR2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDRAMP" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDLADDER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CORRIDORC" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BIOROOM" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDWINDOW" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CORRIDORX" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CORRIDORT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MAINROOMFRAME" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FOUNDLEG" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FOUNDLEG4" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDPAVING" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDPAVING_BIG" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDPAVINGTALL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="PANEL_GLASS" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="VIEWSPHERE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="PLANTER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="PLANTERMEGA" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_POWERLINE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_BIOGENERATOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="POWERLINE_HIDER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_SOLAR_S" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_BATTERY_S" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_GENERATOR_S" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_EXTRACTOR_S" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_GASEXTRACTOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_SILO_S" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_PIPELINE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SUMMON_GARAGE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="GARAGE_FREIGHT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDBEACON" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TELEPORTER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILD_REFINER2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDLANDINGPAD" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BUILDANTIMATTER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_MINIPORTAL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="U_PORTALLINE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEROOM" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEGLASS" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEROOMCURVED" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEFOUND" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEFRAME" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEFOUND4" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBESTAIRS" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEWALL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEROOF" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CURVEDCUBEROOF" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEWINDOWSMALL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEWINDOWOVAL" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEFLOOR" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="WALLFLOORLADDER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CUBEINNERDOOR" />
                    </Property>
]],
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "SKIP_TUT", "Value", "HYPERDRIVE"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = 
[[
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="T_SHIP_RED" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SHIPSCAN_ECON" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SHIPSCAN_COMBAT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SHIP_TELEPORT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="POWERGLOVE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SUIT_REFINER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="VEHICLE_SCAN" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="VEHICLE_SCAN1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="VEHICLE_SCAN2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="STRONGLASER" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="UT_SURVEY" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="UT_ENERGY" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="STORY_TRANSLATE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="GRENADE" />
                    </Property>
]],
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_SKIP_MISS", "Value", "FIRST_BP_DUMMY"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] =
[[
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SURVEY_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ENABLE_NEXUS" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="STORY_INIT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP3" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP4" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP5" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP6" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP7" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP8" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP9" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP10" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP11" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP12" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT1_STEP13" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP3" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP4" />
                    </Property>
					<Property value="NMSString0x10.xml">
                      <Property name="Value" value="ART_SIM" />
                    </Property>
					<Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP5" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP6" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP7" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP8" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP9" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP10" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP11" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP12" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="ACT2_STEP13" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="EXO_NAV_DATA" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="LAUNCHFUEL_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="INVENTORY_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="INV_HINT_START" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="INVENTORY_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="STARCHART_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TECHFRAG_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SALVAGE_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="CHART_T_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="AMMO_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TAKEOFF_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SHIPSWAP_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="T_WORDSTONE_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="E_WORDSTONE_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="W_WORDSTONE_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="SUMMON_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="REFINER_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="HAZPROT_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MYSTERY2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MYSTERY3" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MYSTERY4" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="POWER_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TECHBASIC_DUMMY" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="POWER_DUMMY" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="PROC_TECH_HINT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="NEWPROD_UPGRADE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FLEET_TUT" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="STORAGE_FIX" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="WATERSTORY1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="WATERSTORY2" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="WATERSTORY3" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="WATERSTORY4" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="WATERSTORY5" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FIX_WATERROOM" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FIX_WATERCUBE" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="STATION_MYSTERY" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="MYSTERY1" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="TUT_TRANSITION" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="KILL_ROBOTS" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="FACTORY_RAID" />
                    </Property>
                    <Property value="NMSString0x10.xml">
                      <Property name="Value" value="BASE_SAFETY" />
                    </Property>
]],
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_SKIP_INSTALL", "TechId", "SCANBINOC1"},
                            ["VALUE_CHANGE_TABLE"]  =   
                            {
                                {"TechId", "STRONGLASER"}								
                            }
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_SKIP_INSTALL", "TechId", "STRONGLASER"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = 
[[
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardInstallTech.xml">
                  <Property name="TechId" value="SCANBINOC1" />
                  <Property name="InventoryToInstallIn" value="Weapon" />
                  <Property name="Silent" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
]],
                        },
						{
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_SKIP_INSTALL", "TechId", "HYPERDRIVE"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = 
[[
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardInstallTech.xml">
                  <Property name="TechId" value="SHIPSCAN_ECON" />
                  <Property name="InventoryToInstallIn" value="Ship" />
                  <Property name="Silent" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardInstallTech.xml">
                  <Property name="TechId" value="SHIPSCAN_COMBAT" />
                  <Property name="InventoryToInstallIn" value="Ship" />
                  <Property name="Silent" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
              <Property value="GcRewardTableItem.xml">
                <Property name="PercentageChance" value="100" />
                <Property name="Reward" value="GcRewardInstallTech.xml">
                  <Property name="TechId" value="SHIP_TELEPORT" />
                  <Property name="InventoryToInstallIn" value="Ship" />
                  <Property name="Silent" value="True" />
                </Property>
                <Property name="LabelID" value="" />
              </Property>
]],
                        }
                    }
                }
            }
        }
    }   
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE