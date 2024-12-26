--------------------------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
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
	{--	build: decoratives1
		parent	= 'STANDINGSIGN',
		tree	= {
			meta	= mt_ulitn,
			Unlockable	= 'HOLO_SMALL2',
			{
				meta	= mt_child,
				{
					meta = mt_ulitn,
					Unlockable	= 'HOLO_MED1'
				}
			}
		}
	},
	{--	build: decoratives2
		parent	= 'STANDINGSIGN',
		tree	= {
			meta	= mt_ulitn,
			Unlockable	= 'HOLO_SMALL3',
			{
				meta	= mt_child,
				{
					meta = mt_ulitn,
					Unlockable	= 'HOLO_MED2'
				}
			}
		}
	},
	{--	build: decoratives3
		parent	= 'STANDINGSIGN',
		rmnode	= 'HOLO_MED1',
		tree	= {
			meta	= mt_ulitn,
			Unlockable	= 'HOLO_EXP',
			{
				meta	= mt_child,
				{
					meta = mt_ulitn,
					Unlockable	= 'HOLO_WAR',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'HOLO_TRA'
						}
					}
				}
			}
		}
	},
	{--	suit tech: anomaly supprssor
		parent	= 'UT_PROTECT',
		tree	= { meta = mt_ulitn,	Unlockable = 'SPOOK_PACK' }
	},
	{--	ship tech: move Sub-Light Amplifier
		parent	= 'UT_SHIPDRIFT',
		rmnode	= 'UT_PULSESPEED',
		tree	= { meta = mt_ulitn,	Unlockable = 'UT_PULSESPEED' }
	},
	{--	ship tech: special hyperdrive
		parent	= 'UT_QUICKWARP',
		tree	= { meta = mt_ulitn,	Unlockable = 'HYPERDRIVE_SPEC' }
	},
	{--	ship tech: special launcher
		parent	= 'UT_LAUNCHCHARGE',
		tree	= { meta = mt_ulitn, 	Unlockable = 'LAUNCHER_SPEC' }
	},
	{--	ship tech: pulse engine tech
		parent	= 'UT_PULSEFUEL',
		tree	= {
			meta	= mt_ulitn,
			Unlockable	= 'SOLAR_SAIL',
			{
				meta = mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'PHOTONIX_CORE',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'SHIPJUMP_SPEC'
						}
					}
				}
			}
		}
	},
	{--	vehicle tech: stun gun (custom tech)
		parent	= 'VEHICLE_GUN',
		tree	= { meta = mt_ulitn,	Unlockable = 'VEHICLESTUN' }
	},
	{--	vehicle tech: hazard protection 1
		parent	= 'EXO_PROT_HOT',
		rmnode	= 'EXO_PROT_COLD',
		tree	= { meta = mt_ulitn,	Unlockable = 'EXO_PROT_COLD' }
	},
	{--	vehicle tech: hazard protection 2
		parent	= 'EXO_PROT_RAD',
		rmnode	= 'EXO_PROT_TOX',
		tree	= { meta = mt_ulitn,	Unlockable = 'EXO_PROT_TOX' }
	},
	{--	vehicle tech: (add tree) miontaur body
		parent	= 'UI_EXOCRAFT_TECH_TREE',
		title   = 'UI_TECH_TREE_SUB',
		toend	= true,
		cost	= 'NANITES',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'MECH_PILOT',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'MECH_SENT_HEAD',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'MECH_SENT_LEGS'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'MECH_SENT_R_ARM'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'MECH_SENT_L_ARM'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'MECH_ARMY_HEAD',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'MECH_ARMY_LEGS'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'MECH_ARMY_R_ARM'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'MECH_ARMY_L_ARM'
						}
					}
				}
			}
		}
	},
	{--	factory products: wiring loom
		parent	= 'NANOTUBES',
		tree	= { meta = mt_ulitn,	Unlockable = 'TECH_COMP' }
	},
	{--	factory products: atlas access
		parent	= 'PRODFUEL2',
		rmnode	= 'HYPERFUEL1',
		toend	= true,
		tree	= {
			meta = mt_ulitn,
			Unlockable = 'ACCESS1',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'ACCESS2',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'ACCESS3'
						}
					}
				}
			}
		}
	},
	{--	factory products: warp fuel
		parent	= 'PRODFUEL2',
		after	= 'JELLY',
		tree	= {
			meta = mt_ulitn,
			Unlockable = 'ANTIMATTER',
			{
				meta	= mt_child,
				{
					meta = mt_ulitn,
					Unlockable = 'HYPERFUEL1',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'HYPERFUEL2'
						}
					}
				}
			}
		}
	},
	{--	ship tech: (add tree) living ship
		parent	= 'UI_SHIP_TECH_TREE',
		title   = 'UI_TECH_ALIEN_SUB',
		toend	= true,
		cost	= 'NANITES',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'SHIP_LIFESUP',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'WARP_ALIEN',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'SHIPJUMP_ALIEN',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'JUMP_U_ALIEN'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SHIPGUN_ALIEN',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'SHIPLAS_ALIEN'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'SHIELD_ALIEN',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'SHIELD_U_ALIEN'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'LAUNCHER_ALIEN',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'CHARGER_ALIEN',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'WATERLAND_ALIEN'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'ROCEKT_ALIEN',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'ROCEKT_U_ALIEN'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SHIPSCAN_ALIEN',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'CARGO_S_ALIEN'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SHIPJUMP_ROBO',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'LAUNCHER_ROBO',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'HYPERDRIVE_ROBO'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'LIFESUP_ROBO',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'SHIPGUN_ROBO',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
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
		parent	= 'FRIGATE_FUEL_1',
		tree	= { meta = mt_ulitn,	Unlockable = 'FREI_INV_TOKEN' }
	},
	{--	freighter: singularity engine
		parent	= 'F_HDRIVEBOOST3',
		tree	= { meta = mt_ulitn,	Unlockable = 'F_MEGAWARP' }
	},
	{--	base parts: (replace tree) tech
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		rmtree	= 'UI_BASETECH_TREE',
		after	= 'UI_CUBEROOM_TREE',
		cost	= 'SALVAGE',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'BUILDSAVE',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'BASE_FLAG',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'HEALTHSTATION',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'SHIELDSTATION',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'MESSAGEMODULE'
										}
									}
								}
							}
						},
						{
							meta	= mt_ulitn,
							Unlockable	= 'BUILD_REFINER2',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'BUILD_REFINER3'
								},
								{
									meta	= mt_ulitn,
									Unlockable	= 'BUILDANTIMATTER'
								},
							}
						},
						{
							meta	= mt_ulitn,
							Unlockable	= 'TELEPORTER',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'BUILDTERMINAL',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'DRESSING_TABLE'
										},
										{
											meta	= mt_ulitn,
											Unlockable	= 'HOLO_DISCO_0'
										}
									}
								}
							}
						},
						{
							meta	= mt_ulitn,
							Unlockable	= 'BUILDLANDINGPAD',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'S_LANDINGZONE',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'U_MINIPORTAL'
										},
										{
											meta	= mt_ulitn,
											Unlockable	= 'U_PORTALLINE'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'BUILDBEACON',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'BUILDSIGNAL',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'BP_ANALYSER',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'MESSAGE'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'BUILD_REFINER1',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'BUILDGASHARVEST',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'O2_HARVESTER'
										}
									}
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'BUILDHARVESTER',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'BUILDSEAHARVEST'
										}
									}
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'COOKER',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'CREATURE_FARM'
										},
										{
											meta = mt_ulitn,
											Unlockable	= 'CREATURE_FEED'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'LIGHTBOX',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'L_FLOOR_Q',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'SPAWNER_BALL'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'NOISEBOX',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'BYTEBEAT',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'BYTEBEATSWITCH'
								},
								{
									meta	= mt_ulitn,
									Unlockable	= 'U_BYTEBEATLINE'
								}
							}
						}
					}
				}
			}
		}
	},
	{--	multitool: (replace tree) offensive
		parent	= 'UI_WEAP_TECH_TREE',
		rmtree	= 'UI_TECH_TREE_SUB',
		title   = 'UI_TECH_OFFENSE_SUB',
		cost	= 'NANITES',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'BOLT',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'UT_BOLT',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'BOLT_SM',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_BOLTBOUNCE'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'FLAME'
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'GRENADE',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'STUN_GREN',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_STUNDMG'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'RAILGUN',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'UT_RAIL_STUN'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'UT_RAIL'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SHOTGUN',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'UT_SHOT'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SMG',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'UT_SMG',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_SMGBOUNCE'
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_SMG_DOT'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'CANNON',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'UT_CANNON'
						}
					}
				}
			}
		}
	},
	{--	multitool: (add tree) exploratory
		parent	= 'UI_WEAP_TECH_TREE',
		title   = 'UI_TECH_EXPLORE_SUB',
		toend	= true,
		cost	= 'NANITES',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'LASER',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'FISHLASER',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'S15_FISHLASER'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'TERRAINEDITOR',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'TERRAIN_GREN'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'GROUND_SHIELD',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'SCOPE'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'STEALTH'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SCAN1',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'UT_SCAN',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_BUI_SCAN'
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_S10_SCAN'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'SCANBINOC1',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_SURVEY'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'LASER_XO',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'STRONGLASER',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'UT_MINER'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SENT_LASER',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'ATLAS_LASER',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'SUN_LASER'
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'SOUL_LASER'
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (replace tree) tech
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_TECH_SUB',
		cost	= 'SALVAGE',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'BUILDSAVE',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'BASE_FLAG',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'NPCBUILDERTERM',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'NPCSCIENCETERM',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'NPCFARMTERM'
										}
									}
								},
								{
									meta	= mt_ulitn,
									Unlockable	= 'NPCWEAPONTERM',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'NPCVEHICLETERM'
										}
									}
								}
							}
						},
						{
							meta	= mt_ulitn,
							Unlockable	= 'U_POWERLINE',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'U_SOLAR_S',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'U_BATTERY_S'
										}
									}
								},
								{
									meta	= mt_ulitn,
									Unlockable	= 'U_BIOGENERATOR'
								}
							}
						},
						{
							meta	= mt_ulitn,
							Unlockable	= 'TELEPORTER',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'BUILDLANDINGPAD',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'BUILDTERMINAL'
										}
									}
								}
							}
						},
						{
							meta	= mt_ulitn,
							Unlockable	= 'U_PIPELINE',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'U_SILO_S',
									{
										meta	= mt_child,
										{
											meta	= mt_ulitn,
											Unlockable	= 'U_EXTRACTOR_S'
										},
										{
											meta	= mt_ulitn,
											Unlockable	= 'U_GASEXTRACTOR'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'BUILDBEACON',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'BUILDSIGNAL',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'S9_SHIPTREE' -- S9_WEAPONTREE
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'BUILD_REFINER1',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'COOKER'
						},
						{
							meta	= mt_ulitn,
							Unlockable	= 'BUILD_REFINER2'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'SMALLLIGHT',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'BUILDLIGHT3',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'S_HANGLAMP3'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'BUILDHARVESTER',
					{
						meta	= mt_child,
						{
							meta	= mt_ulitn,
							Unlockable	= 'BUILDGASHARVEST',
							{
								meta	= mt_child,
								{
									meta	= mt_ulitn,
									Unlockable	= 'O2_HARVESTER'
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (add tree) factory products
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		title   = 'UI_PRODUCT_TREE_CRAFT',
		toend	= true,
		cost	= 'FACTORY',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'AM_HOUSING',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'CASING',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'NANOTUBES',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'HYDRALIC'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'MICROCHIP',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'COMPUTER'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'CARBON_SEAL',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'BIO'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'MIRROR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'MAGNET'
								}
							}
						},
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'JELLY',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'PRODFUEL2'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'ANTIMATTER',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'HYPERFUEL1',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'HYPERFUEL2'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'POWERCELL',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'GRENFUEL1'
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'SHIPCHARGE'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'LAUNCHFUEL',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'SUBFUEL'
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'ACCESS1',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'ACCESS2',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'ACCESS3'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'TECH_COMP',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'POI_LOCATOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'RAMMOULD5'
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'ULTRAPRODX40'
								}
							}
						}
					}
				}
			}
		}
	},
	{--	construction unit: (replace tree) timber base parts
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_TIMBER_SUB',
		toend	= true,
		cost	= 'SALVAGE',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'T_WALL',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'T_FLOOR',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'T_GFLOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_FLOOR_Q'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'T_RAMP',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_RAMP_H',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'T_RAMP_Q_TOP'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'T_TRIFLOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_TRIFLOOR_Q',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'T_WALLDIAGONAL'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'T_WALL_H',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'T_WALL_Q',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_WALL_Q1'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'T_WALL_Q_H',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_WALL_Q_H1'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'T_CHEV_WALL',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'T_CHEV_DOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_CHEV_WALL_H_C'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'T_CHEV_WIN0',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_CHEV_WIN1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'T_CHEV_WIN2'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'T_DOOR_H',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'T_DOORWINDOW',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_WALL_WIN1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'T_WALL_WIN2'
										},
										{
											meta = mt_ulitn,
											Unlockable	= 'T_WALL_WIN3'
										}
									}
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'T_WALL_WINDOW'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'T_DOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_DOOR1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'T_GDOOR'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'T_ARCH',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_ARCH_H'
								}
							}
						}
					}
				},
				{
					meta = mt_ulitn,
					Unlockable	= 'T_ROOF6',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'T_ROOF_M',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_ROOF_M_Q',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'T_ROOF_E_Q'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'T_ROOF0',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'T_ROOF7',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
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
	{--	construction unit: (replace tree) alloy base parts
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_FIBREGLASS_SUB',
		toend	= true,
		cost	= 'SALVAGE',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'F_WALL',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'F_FLOOR',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'F_GFLOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_FLOOR_Q'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'F_RAMP',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_RAMP_H',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'F_RAMP_Q_TOP'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'F_TRIFLOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_TRIFLOOR_Q',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'F_WALLDIAGONAL'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'F_WALL_H',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'F_WALL_Q',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_WALL_Q1'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'F_WALL_Q_H',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_WALL_Q_H1'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'F_CHEV_WALL',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'F_CHEV_DOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_CHEV_WALL_H_C'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'F_CHEV_WIN0',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_CHEV_WIN1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'F_CHEV_WIN2'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'F_DOOR_H',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'F_DOORWINDOW',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_WALL_WIN1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'F_WALL_WIN2'
										},
										{
											meta = mt_ulitn,
											Unlockable	= 'F_WALL_WIN3'
										}
									}
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'F_WALL_WINDOW'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'F_DOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_DOOR1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'F_GDOOR'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'F_ARCH',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_ARCH_H'
								}
							}
						}
					}
				},
				{
					meta = mt_ulitn,
					Unlockable	= 'F_ROOF7',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'F_ROOF_M',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_ROOF_M_Q',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'F_ROOF_E_Q'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'F_ROOF5',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'F_ROOF3',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
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
	{--	construction unit: (replace tree) stone base parts
		parent	= 'UI_PURCHASABLE_BASICTECH_TREE',
		rmtree	= 'UI_BASIC_STONE_SUB',
		toend	= true,
		cost	= 'SALVAGE',
		tree	= {
			meta	= {'Root', 'GcUnlockableItemTreeNode.xml'},
			Unlockable	= 'S_WALL',
			{
				meta	= mt_child,
				{
					meta	= mt_ulitn,
					Unlockable	= 'S_FLOOR',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'S_GFLOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_FLOOR_Q'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'S_RAMP',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_RAMP_H',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'S_RAMP_Q_TOP'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'S_TRIFLOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_TRIFLOOR_Q',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'S_WALLDIAGONAL'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'S_WALL_H',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'S_WALL_Q',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_WALL_Q1'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'S_WALL_Q_H',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_WALL_Q_H1'
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'S_CHEV_WALL',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'S_CHEV_DOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_CHEV_WALL_H_C'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'S_CHEV_WIN0',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_CHEV_WIN1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'S_CHEV_WIN2'
										}
									}
								}
							}
						}
					}
				},
				{
					meta	= mt_ulitn,
					Unlockable	= 'S_DOOR_H',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'S_DOORWINDOW',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_WALL_WIN1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'S_WALL_WIN2'
										},
										{
											meta = mt_ulitn,
											Unlockable	= 'S_WALL_WIN3'
										}
									}
								},
								{
									meta = mt_ulitn,
									Unlockable	= 'S_WALL_WINDOW'
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'S_DOOR',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_DOOR1',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'S_GDOOR'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'S_ARCH',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_ARCH_H'
								}
							}
						}
					}
				},
				{
					meta = mt_ulitn,
					Unlockable	= 'S_ROOF3',
					{
						meta	= mt_child,
						{
							meta = mt_ulitn,
							Unlockable	= 'S_ROOF_M',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_ROOF_M_Q',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
											Unlockable	= 'S_ROOF_E_Q'
										}
									}
								}
							}
						},
						{
							meta = mt_ulitn,
							Unlockable	= 'S_ROOF2',
							{
								meta	= mt_child,
								{
									meta = mt_ulitn,
									Unlockable	= 'S_ROOF0',
									{
										meta	= mt_child,
										{
											meta = mt_ulitn,
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
	}
}

local function AddTreeToChangeTable(node)
	if node.tree.meta[1] == 'Root' then
	--- full tree addition ---
		local tree_root = {
			meta	= {'value', 'GcUnlockableItemTree.xml'},
			Title		= node.title or node.rmtree,
			CostTypeID	= node.cost,
			ItemTree	= node.tree
		}
		if node.after then
			return {
				SPECIAL_KEY_WORDS	= {'Title', node.parent, 'Title', node.after},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml(tree_root)
			}
		else
			return {
				SPECIAL_KEY_WORDS	= {'Title', node.parent},
				PRECEDING_KEY_WORDS	= 'Trees',
				ADD_OPTION			= node.toend and 'AddEndSection' or nil,
				ADD					= ToExml(tree_root)
			}
		end
	else
	--- regular node ---
		if node.after then
			return  {
				SPECIAL_KEY_WORDS	= {'Unlockable', node.parent, 'Unlockable', node.after},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml(node.tree)
			}
		else
			return  {
				SPECIAL_KEY_WORDS	= {'Unlockable', node.parent},
				PRECEDING_KEY_WORDS = 'Children',
				SECTION_ACTIVE		= -1,
				ADD_OPTION			= node.toend and 'AddEndSection' or nil,
				CREATE_HOS			= not node.toend,
				ADD					= ToExml(node.tree)
			}
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE UNLOCKABLES.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = { { SKW={}, REMOVE='Section' } }

				for _,node in ipairs(unlockable_items) do
					if not node.unused then
						-- do all REMOVEs before adding
						if node.rmnode then
							T[1].SKW[#T[1].SKW + 1] = {'Unlockable', node.rmnode}
						elseif node.rmtree then
							T[1].SKW[#T[1].SKW + 1] = {'Title', node.parent, 'Title', node.rmtree}
						end
						T[#T+1] = AddTreeToChangeTable(node)
					end
				end
				return T
			end
		)()
	}
}}}}
