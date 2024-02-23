--------------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
--------------------------------------------------------------------------------------
local mod_desc = [[
  Rebuild and add to unlockable items tree
  - A replacement for a full tree needs the ItemTrees title & the tree's own title
   as 1st & 2nd parents.
  - A new tree is inserted as 1st in its ItemTrees by default. Inserting [after] work
   only on existing trees, not newly-added, and needs the 'after' Title.
]]------------------------------------------------------------------------------------

---	meta data for GcUnlockableItemTreeNode classes
local mt_ulitn = {'value', 'GcUnlockableItemTreeNode.xml'}
local mt_child = {'name', 'Children'}

local unlockable_items = {
	{--	ship tech: special hyperdrive
		parent	= {'UT_QUICKWARP'},
		tree	= { META = mt_ulitn,	Unlockable = 'HYPERDRIVE_SPEC' }
	},
	{--	ship tech: special launcher
		parent	= {'UT_LAUNCHCHARGE'},
		tree	= { META = mt_ulitn, 	Unlockable = 'LAUNCHER_SPEC' }
	},
	{--	ship tech: pulse engine tech
		parent	= {'UT_PULSEFUEL'},
		tree	= {
			META	= mt_ulitn,
			Unlockable	= 'SOLAR_SAIL',
			{
				META = mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'PHOTONIX_CORE',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'SHIPJUMP_SPEC'
						}
					}
				}
			}
		}
	},
	{--	vehicle tech: stun gun (custom tech)
		parent	= {'VEHICLE_GUN'},
		tree	= { META = mt_ulitn,	Unlockable = 'VEHICLESTUN' }
	},
	{--	factory products: wiring loom
		parent	= {'NANOTUBES'},
		tree	= { META = mt_ulitn,	Unlockable = 'TECH_COMP' }
	},
	{--	ship tech: living ship
		parent	= {'UI_SHIP_TECH_TREE'},
		after	= 'UI_TECH_TREE_SUB',
		title   = 'UI_TECH_ALIEN_SUB',
		cost	= 'NANITES',
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'SHIP_LIFESUP',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'WARP_ALIEN',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'SHIPJUMP_ALIEN',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'JUMP_U_ALIEN'
								}
							}
						}
					}

				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SHIPGUN_ALIEN',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'SHIPLAS_ALIEN'
						},
						{
							META = mt_ulitn,
							Unlockable	= 'SHIELD_ALIEN',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'SHIELD_U_ALIEN'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'LAUNCHER_ALIEN',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'CHARGER_ALIEN'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SHIPSCAN_ALIEN',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'CARGO_S_ALIEN'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SHIPJUMP_ROBO',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'LAUNCHER_ROBO',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'HYPERDRIVE_ROBO'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'LIFESUP_ROBO',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'SHIPGUN_ROBO',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'SHIPSHIELD_ROBO'
								}
							}
						}
					}
				}
			}
		}
	},
	{--	freighter: bulkhead
		parent	= {'FRIGATE_FUEL_1'},
		tree	= { META = mt_ulitn,	Unlockable = 'FREI_INV_TOKEN' }
	},
	{--	freighter: singularity engine
		parent	= {'F_HDRIVEBOOST3'},
		tree	= { META = mt_ulitn,	Unlockable = 'F_MEGAWARP' }
	},
	{--	base parts: tech
		parent	= {'UI_PURCHASABLE_BASEPARTS_TREE', 'UI_BASETECH_TREE'},
		title   = 'UI_BASETECH_TREE',
		after	= 'UI_CUBEROOM_TREE',
		cost	= 'SALVAGE',
		issubs	= true,
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'BUILDSAVE',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'BASE_FLAG',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'HEALTHSTATION',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'SHIELDSTATION',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'MESSAGEMODULE'
										}
									}
								}
							}
						},
						{
							META	= mt_ulitn,
							Unlockable	= 'BUILD_REFINER2',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'BUILD_REFINER3'
								},
								{
									META	= mt_ulitn,
									Unlockable	= 'BUILDANTIMATTER'
								},
							}
						},
						{
							META	= mt_ulitn,
							Unlockable	= 'TELEPORTER',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'BUILDTERMINAL',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'DRESSING_TABLE'
										},
										{
											META	= mt_ulitn,
											Unlockable	= 'HOLO_DISCO_0'
										}
									}
								}
							}
						},
						{
							META	= mt_ulitn,
							Unlockable	= 'BUILDLANDINGPAD',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'S_LANDINGZONE',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'U_MINIPORTAL'
										},
										{
											META	= mt_ulitn,
											Unlockable	= 'U_PORTALLINE'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'BUILDBEACON',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'BUILDSIGNAL',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'BP_ANALYSER',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'MESSAGE'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'BUILD_REFINER1',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'O2_HARVESTER',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'BUILDHARVESTER'
										},
										{
											META = mt_ulitn,
											Unlockable	= 'BUILDGASHARVEST'
										}
									}
								},
								{
									META = mt_ulitn,
									Unlockable	= 'COOKER',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'CREATURE_FARM'
										},
										{
											META = mt_ulitn,
											Unlockable	= 'CREATURE_FEED'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'LIGHTBOX',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'L_FLOOR_Q',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'SPAWNER_BALL'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'NOISEBOX',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'BYTEBEAT',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'BYTEBEATSWITCH'
								},
								{
									META	= mt_ulitn,
									Unlockable	= 'U_BYTEBEATLINE'
								}
							}
						}
					}
				}
			}
		}
	},
	{--	multitool: exploratory
		parent	= {'UI_WEAP_TECH_TREE', 'UI_TECH_TREE_SUB'},
		title   = 'UI_TECH_EXPLORE_SUB',
		cost	= 'NANITES',
		issubs	= true,
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'LASER',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'TERRAINEDITOR',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'TERRAIN_GREN'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'GROUND_SHIELD',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'SCOPE'
						},
						{
							META = mt_ulitn,
							Unlockable	= 'STEALTH'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SCAN1',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'UT_SCAN',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'UT_BUI_SCAN'
								},
								{
									META = mt_ulitn,
									Unlockable	= 'UT_S10_SCAN'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'SCANBINOC1',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'UT_SURVEY'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'LASER_XO',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'STRONGLASER',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'UT_MINER',
									-- {
										-- META	= mt_child,
										-- {
											-- META = mt_ulitn,
											-- Unlockable	= 'SENT_LASER'
										-- }
									-- }
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SENT_LASER',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'ATLAS_LASER'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SUN_LASER',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'SOUL_LASER'
						}
					}
				}
			}
		}
	},
	{--	multitool: offensive
		parent	= {'UI_WEAP_TECH_TREE'},
		title   = 'UI_TECH_OFFENSE_SUB',
		cost	= 'NANITES',
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'BOLT',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'UT_BOLT',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'BOLT_SM',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'UT_BOLTBOUNCE'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'FLAME'
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'GRENADE',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'STUN_GREN',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'UT_STUNDMG'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'RAILGUN',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'UT_RAIL_STUN'
						},
						{
							META = mt_ulitn,
							Unlockable	= 'UT_RAIL'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SHOTGUN',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'UT_SHOT'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SMG',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'UT_SMG',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'UT_SMGBOUNCE'
								},
								{
									META = mt_ulitn,
									Unlockable	= 'UT_SMG_DOT'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'CANNON',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'UT_CANNON'
						}
					}
				}
			}
		}
	},
	{--	construction unit: factory products
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE'},
		title   = 'UI_PRODUCT_TREE_CRAFT',
		cost	= 'FACTORY',
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'AM_HOUSING',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'ANTIMATTER',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'HYPERFUEL1',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'HYPERFUEL2'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'CASING',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'NANOTUBES',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'HYDRALIC'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'MICROCHIP',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'COMPUTER'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'CARBON_SEAL',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'BIO'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'MIRROR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'MAGNET'
								}
							}
						},
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'PRODFUEL2',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'JELLY'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'POWERCELL',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'GRENFUEL1'
						},
						{
							META = mt_ulitn,
							Unlockable	= 'SHIPCHARGE'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'LAUNCHFUEL',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'SUBFUEL'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'ACCESS1',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'ACCESS2',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'ACCESS3'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'TECH_COMP',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'POI_LOCATOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'RAMMOULD5'
								},
								{
									META = mt_ulitn,
									Unlockable	= 'ULTRAPRODX40'
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: alloy base parts
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_FIBREGLASS_SUB'},
		title   = 'UI_BASIC_FIBREGLASS_SUB',
		cost	= 'SALVAGE',
		issubs	= true,
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'F_WALL',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'F_FLOOR',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'F_GFLOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_FLOOR_Q'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'F_RAMP',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_RAMP_H',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'F_RAMP_Q_TOP'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'F_TRIFLOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_TRIFLOOR_Q',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'F_WALLDIAGONAL'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'F_WALL_H',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'F_WALL_Q',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_WALL_Q1'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'F_WALL_Q_H',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_WALL_Q_H1'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'F_CHEV_WALL',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'F_CHEV_DOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_CHEV_WALL_H_C'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'F_CHEV_WIN0',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_CHEV_WIN1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'F_CHEV_WIN2'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'F_DOOR_H',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'F_DOORWINDOW',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_WALL_WIN1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'F_WALL_WIN2'
										},
										{
											META = mt_ulitn,
											Unlockable	= 'F_WALL_WIN3'
										}
									}
								},
								{
									META = mt_ulitn,
									Unlockable	= 'F_WALL_WINDOW'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'F_DOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_DOOR1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'F_GDOOR'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'F_ARCH',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_ARCH_H'
								}
							}
						}
					}
				},
				{
					META = mt_ulitn,
					Unlockable	= 'F_ROOF7',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'F_ROOF_M',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_ROOF_M_Q',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'F_ROOF_E_Q'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'F_ROOF5',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'F_ROOF3',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'F_ROOF_M_CAP'
										}
									}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: stone base parts
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_STONE_SUB'},
		title   = 'UI_BASIC_STONE_SUB',
		cost	= 'SALVAGE',
		issubs	= true,
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'S_WALL',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'S_FLOOR',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'S_GFLOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_FLOOR_Q'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'S_RAMP',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_RAMP_H',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'S_RAMP_Q_TOP'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'S_TRIFLOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_TRIFLOOR_Q',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'S_WALLDIAGONAL'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'S_WALL_H',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'S_WALL_Q',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_WALL_Q1'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'S_WALL_Q_H',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_WALL_Q_H1'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'S_CHEV_WALL',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'S_CHEV_DOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_CHEV_WALL_H_C'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'S_CHEV_WIN0',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_CHEV_WIN1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'S_CHEV_WIN2'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'S_DOOR_H',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'S_DOORWINDOW',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_WALL_WIN1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'S_WALL_WIN2'
										},
										{
											META = mt_ulitn,
											Unlockable	= 'S_WALL_WIN3'
										}
									}
								},
								{
									META = mt_ulitn,
									Unlockable	= 'S_WALL_WINDOW'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'S_DOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_DOOR1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'S_GDOOR'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'S_ARCH',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_ARCH_H'
								}
							}
						}
					}
				},
				{
					META = mt_ulitn,
					Unlockable	= 'S_ROOF3',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'S_ROOF_M',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_ROOF_M_Q',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'S_ROOF_E_Q'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'S_ROOF2',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'S_ROOF0',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'S_ROOF_M_CAP'
										}
									}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: timber base parts
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_TIMBER_SUB'},
		title   = 'UI_BASIC_TIMBER_SUB',
		cost	= 'SALVAGE',
		issubs	= true,
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'T_WALL',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'T_FLOOR',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'T_GFLOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_FLOOR_Q'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'T_RAMP',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_RAMP_H',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'T_RAMP_Q_TOP'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'T_TRIFLOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_TRIFLOOR_Q',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'T_WALLDIAGONAL'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'T_WALL_H',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'T_WALL_Q',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_WALL_Q1'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'T_WALL_Q_H',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_WALL_Q_H1'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'T_CHEV_WALL',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'T_CHEV_DOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_CHEV_WALL_H_C'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'T_CHEV_WIN0',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_CHEV_WIN1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'T_CHEV_WIN2'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'T_DOOR_H',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'T_DOORWINDOW',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_WALL_WIN1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'T_WALL_WIN2'
										},
										{
											META = mt_ulitn,
											Unlockable	= 'T_WALL_WIN3'
										}
									}
								},
								{
									META = mt_ulitn,
									Unlockable	= 'T_WALL_WINDOW'
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'T_DOOR',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_DOOR1',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'T_GDOOR'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'T_ARCH',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_ARCH_H'
								}
							}
						}
					}
				},
				{
					META = mt_ulitn,
					Unlockable	= 'T_ROOF6',
					{
						META	= mt_child,
						{
							META = mt_ulitn,
							Unlockable	= 'T_ROOF_M',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_ROOF_M_Q',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'T_ROOF_E_Q'
										}
									}
								}
							}
						},
						{
							META = mt_ulitn,
							Unlockable	= 'T_ROOF0',
							{
								META	= mt_child,
								{
									META = mt_ulitn,
									Unlockable	= 'T_ROOF7',
									{
										META	= mt_child,
										{
											META = mt_ulitn,
											Unlockable	= 'T_ROOF_M_CAP'
										}
									}
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: tech
		parent	= {'UI_PURCHASABLE_BASICTECH_TREE', 'UI_BASIC_TECH_SUB'},
		title   = 'UI_BASIC_TECH_SUB',
		cost	= 'SALVAGE',
		issubs	= true,
		tree	= {
			META	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'BUILDSAVE',
			{
				META	= mt_child,
				{
					META	= mt_ulitn,
					Unlockable	= 'BASE_FLAG',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'NPCBUILDERTERM',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'NPCSCIENCETERM',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'NPCFARMTERM'
										}
									}
								},
								{
									META	= mt_ulitn,
									Unlockable	= 'NPCWEAPONTERM',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'NPCVEHICLETERM'
										}
									}
								}
							}
						},
						{
							META	= mt_ulitn,
							Unlockable	= 'U_POWERLINE',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'U_SOLAR_S',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'U_BATTERY_S'
										}
									}
								},
								{
									META	= mt_ulitn,
									Unlockable	= 'U_BIOGENERATOR'
								}
							}
						},
						{
							META	= mt_ulitn,
							Unlockable	= 'TELEPORTER',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'BUILDLANDINGPAD',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'BUILDTERMINAL'
										}
									}
								}
							}
						},
						{
							META	= mt_ulitn,
							Unlockable	= 'U_PIPELINE',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'U_SILO_S',
									{
										META	= mt_child,
										{
											META	= mt_ulitn,
											Unlockable	= 'U_EXTRACTOR_S'
										},
										{
											META	= mt_ulitn,
											Unlockable	= 'U_GASEXTRACTOR'
										}
									}
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'BUILDBEACON',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'BUILDSIGNAL',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'S9_WEAPONTREE'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'BUILD_REFINER1',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'COOKER'
						},
						{
							META	= mt_ulitn,
							Unlockable	= 'BUILD_REFINER2'
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'SMALLLIGHT',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'BUILDLIGHT3',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'S_HANGLAMP3'
								}
							}
						}
					}
				},
				{
					META	= mt_ulitn,
					Unlockable	= 'BUILDHARVESTER',
					{
						META	= mt_child,
						{
							META	= mt_ulitn,
							Unlockable	= 'BUILDGASHARVEST',
							{
								META	= mt_child,
								{
									META	= mt_ulitn,
									Unlockable	= 'O2_HARVESTER'
								}
							}
						}
					}
				}
			}
		}
	}
}

local function AddTreeToChangeTable(node)
	local T = {}
	if node.tree.META[1] == 'Root' then
	--- full tree addition ---
		local tree_root = {
			META	= {'value', 'GcUnlockableItemTree.xml'},
			Title		= node.title,
			CostTypeID	= node.cost,
			[1]			= node.tree
		}
		if node.after then
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Title', node.parent[1], 'Title', node.after},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml(tree_root)
			}
		else
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Title', node.parent[1]},
				PRECEDING_KEY_WORDS	= 'Trees',
				ADD					= ToExml(tree_root)
			}
		end
	else
	--- regular node ---
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'Unlockable', node.parent[1]},
			PRECEDING_KEY_WORDS = 'Children',
			CREATE_HOS			= true,
			SECTION_ACTIVE		= -1,
			ADD					= ToExml(node.tree)
		}
	end
	return T
end

local function AddAllTrees()
	local T = {}
	T[1] = { SKW={}, REMOVE='Section' }
	for _,tree in ipairs(unlockable_items) do
		-- do all REMOVEs before adding
		if tree.issubs then
			T[1].SKW[#T[1].SKW + 1] = {'Title', tree.parent[1], 'Title', tree.parent[2]}
		end
		for _,n in ipairs(AddTreeToChangeTable(tree)) do
			T[#T+1] = n
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE UNLOCKABLES.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		EXML_CHANGE_TABLE	= AddAllTrees()
	}
}}}}
