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

local unlockable_items = {
	{--	build: decoratives1
		parent	= 'STANDINGSIGN',
		tree	= {
			'HOLO_SMALL2',{ -- small holographic display b
				{
					'HOLO_MED1' -- holographic wall display a
				}
			}
		}
	},
	{--	build: decoratives2
		parent	= 'STANDINGSIGN',
		tree	= {
			'HOLO_SMALL3',{ -- small holographic display c
				{
					'HOLO_MED2' -- holographic wall display b
				}
			}
		}
	},
	{--	build: decoratives3
		parent	= 'STANDINGSIGN',
		rmnode	= 'HOLO_MED1',
		tree	= {
			'HOLO_EXP',{ -- holographic korvax display
				{
					'HOLO_WAR',{ -- holographic vy'keen display
						{
							'HOLO_TRA' -- holographic gek display
						}
					}
				}
			}
		}
	},
	{--	suit tech: anomaly supprssor
		parent	= 'UT_PROTECT',
		tree	= { 'SPOOK_PACK' } -- anomaly suppressor
	},
	{--	ship tech: move Sub-Light Amplifier
		parent	= 'UT_SHIPDRIFT',
		rmnode	= 'UT_PULSESPEED',
		tree	= { 'UT_PULSESPEED' } -- sub-light amplifier
	},
	{--	ship tech: special hyperdrive
		parent	= 'UT_QUICKWARP',
		tree	= { 'HYPERDRIVE_SPEC' } -- frameshift catapult
	},
	{--	ship tech: special launcher
		parent	= 'UT_LAUNCHCHARGE',
		tree	= { 'LAUNCHER_SPEC' } -- advanced launch system
	},
	{--	ship tech: pulse engine tech
		parent	= 'UT_PULSEFUEL',
		tree	= {
			'SOLAR_SAIL',{ -- vesper sail
				{
					'PHOTONIX_CORE',{ -- photonix core
						{
							'SHIPJUMP_SPEC' -- waveform engine
						}
					}
				}
			}
		}
	},
	{--	vehicle tech: stun gun (custom tech)
		parent	= 'VEHICLE_GUN',
		tree	= { 'VEHICLESTUN' } -- (custom) stun gun
	},
	{--	vehicle tech: hazard protection 1
		parent	= 'EXO_PROT_HOT',
		rmnode	= 'EXO_PROT_COLD',
		tree	= { 'EXO_PROT_COLD' } -- megawatt heater
	},
	{--	vehicle tech: hazard protection 2
		parent	= 'EXO_PROT_RAD',
		rmnode	= 'EXO_PROT_TOX',
		tree	= { 'EXO_PROT_TOX' } -- air filtration unit
	},
	{--	vehicle tech: (add tree) miontaur body
		parent	= 'UI_EXOCRAFT_TECH_TREE',
		title   = 'UI_TECH_TREE_SUB',
		cost	= 'NANITES',
		toend	= true,
		tree	= {
			'MECH_PILOT',{ -- minotaur ai pilot
				{
					'MECH_SENT_HEAD',{ -- hardframe body
						{
							'MECH_SENT_LEGS' -- hardframe legs
						},
						{
							'MECH_SENT_R_ARM' -- hardframe right arm
						},
						{
							'MECH_SENT_L_ARM' -- hardframe left arm
						}
					}
				},
				{
					'MECH_ARMY_HEAD',{ -- liquidator body
						{
							'MECH_ARMY_LEGS' -- liquidator legs
						},
						{
							'MECH_ARMY_R_ARM' -- liquidator right arm
						},
						{
							'MECH_ARMY_L_ARM' -- liquidator left arm
						}
					}
				}
			}
		}
	},
	{--	factory products: wiring loom
		parent	= 'NANOTUBES',
		tree	= { 'TECH_COMP' } -- wiring loom
	},
	{--	factory products: atlas access
		parent	= 'PRODFUEL2',
		rmnode	= 'HYPERFUEL1',
		toend	= true,
		tree	= {
			'ACCESS1',{ -- atlaspass v1
				{
					'ACCESS2',{ -- atlaspass v2
						{
							'ACCESS3' -- atlaspass v3
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
			'ANTIMATTER',{ -- antimatter
				{
					'HYPERFUEL1',{ -- warp cell
						{
						'HYPERFUEL2' -- warp hypercore
						}
					}
				}
			}
		}
	},
	{--	ship tech: (add tree) living ship
		parent	= 'UI_SHIP_TECH_TREE',
		title   = 'UI_TECH_ALIEN_SUB',
		cost	= 'NANITES',
		toend	= true,
		tree	= {
			'SHIP_LIFESUP',{ -- pressurisation capsule
				{
					'WARP_ALIEN',{ -- singularity cortex
						{
							'SHIPJUMP_ALIEN',{ -- pulsing heart
								{
									'JUMP_U_ALIEN' -- (custom) enlarged heart
								}
							}
						}
					}
				},
				{
					'SHIPGUN_ALIEN',{ -- spewing vents
						{
							'SHIPLAS_ALIEN' -- grafted eyes
						},
						{
							'SHIELD_ALIEN',{ -- scream suppressor
								{
									'SHIELD_U_ALIEN' -- (custom) horror nullifier
								}
							}
						}
					}
				},
				{
					'LAUNCHER_ALIEN',{ -- neural assembly
						{
							'CHARGER_ALIEN',{ -- chloroplast membrane
								{
									'WATERLAND_ALIEN' -- saline carapace
								}
							}
						}
					}
				},
				{
					'ROCEKT_ALIEN',{ -- (custom) emissive seeds pod
						{
							'ROCEKT_U_ALIEN' -- (custom) extended seeds pod
						}
					}
				},
				{
					'SHIPSCAN_ALIEN',{ -- wormhole brain
						{
							'CARGO_S_ALIEN' -- neural shielding
						}
					}
				},
				{
					'SHIPJUMP_ROBO',{ -- luminance engine
						{
							'LAUNCHER_ROBO',{ -- anti-gravity well
								{
									'HYPERDRIVE_ROBO' -- crimson core
								}
							}
						}
					}
				},
				{
					'LIFESUP_ROBO',{ -- pilot interface
						{
							'SHIPGUN_ROBO',{ -- sentinel cannon
								{
									'SHIPSHIELD_ROBO' -- aeron shield
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
		tree	= { 'FREI_INV_TOKEN' } -- Cargo Bulkhead
	},
	{--	freighter: singularity engine
		parent	= 'F_HDRIVEBOOST3',
		tree	= { 'F_MEGAWARP' }
	},
	{--	base parts: (replace tree) tech
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		rmtree	= 'UI_BASETECH_TREE',
		after	= 'UI_CUBEROOM_TREE',
		cost	= 'SALVAGE',
		tree	= {
			'BUILDSAVE',{ -- save point
				{
					'BASE_FLAG',{ -- base computer
						{
							'HEALTHSTATION',{ -- health station
								{
									'SHIELDSTATION',{ -- hazard protection unit
										{
											'MESSAGEMODULE' -- message module
										}
									}
								}
							}
						},
						{
							'BUILD_REFINER2',{ -- medium refiner
								{
									'BUILD_REFINER3' -- large refiner
								},
								{
									'BUILDANTIMATTER' -- antimatter reactor
								}
							}
						},
						{
							'TELEPORTER',{ -- base teleport module
								{
									'BUILDTERMINAL',{ -- galactic trade terminal
										{
											'DRESSING_TABLE' -- appearance modifier
										},
										{
											'HOLO_DISCO_0' -- wonder projector
										}
									}
								}
							}
						},
						{
							'BUILDLANDINGPAD',{ -- landing pad
								{
									'S_LANDINGZONE',{ -- alternative landing pad
										{
											'U_MINIPORTAL' -- short-range teleporter
										},
										{
											'U_PORTALLINE' -- teleport cable
										}
									}
								}
							}
						}
					}
				},
				{
					'BUILDBEACON',{ -- save beacon
						{
							'BUILDSIGNAL',{ -- signal booster
								{
									'BP_ANALYSER',{ -- construction research unit
										{
											'MESSAGE' -- communications station
										}
									}
								}
							}
						},
						{
							'BUILD_REFINER1',{ -- portable refiner
								{
									'BUILDGASHARVEST',{ -- atmosphere harvester
										{
											'O2_HARVESTER' -- oxygen harvester
										}
									}
								},
								{
									'BUILDHARVESTER',{ -- autonomous mining unit
										{
											'BUILDSEAHARVEST' -- automated trap
										}
									}
								},
								{
									'COOKER',{ -- nutrient processor
										{
											'CREATURE_FARM' -- livestock unit
										},
										{
											'CREATURE_FEED' -- automated feeder
										}
									}
								}
							}
						}
					}
				},
				{
					'LIGHTBOX',{ -- light box
						{
							'L_FLOOR_Q',{ -- light floor
								{
									'SPAWNER_BALL' -- sphere creator
								}
							}
						}
					}
				},
				{
					'NOISEBOX',{ -- noise box
						{
							'BYTEBEAT',{ -- noise box
								{
									'BYTEBEATSWITCH' -- bytebeat switch
								},
								{
									'U_BYTEBEATLINE' -- bytebeat cable
								}
							}
						}
					}
				}
			}
		}
	},
	{--	base parts: re-add basic concrete shelter parts tree
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		title   = 'UI_BASIC_CONCRETE_SUB',
		after	= 'UI_BASIC_FIBREGLASS_ROOFS_SUB',
		cost	= 'SALVAGE',
		tree	= {
			'C_WALL',{ -- concrete wall
				{
					'C_FLOOR',{ -- concrete floor panel
						{
							'C_GFLOOR' -- concrete-framed glass panel
						},
						{
							'C_RAMP',{ -- concrete ramp
								{
									'C_RAMP_H' -- concrete half ramp
								}
							}
						},
						{
							'C_FLOOR_Q' -- small concrete panel
						},
						{
							'C_TRIFLOOR',{ -- concrete triangle
								{
									'C_TRIFLOOR_Q' -- small concrete triangle
								}
							}
						}
					}
				},
				{
					'C_WALL_H',{ -- thin concrete wall
						{
							'C_WALLDIAGONAL' -- sloping concrete panel
						},
						{
							'C_WALL_Q',{ -- small concrete wall
								{
									'C_WALL_Q_H' -- short concrete wall
								}
							}
						}
					}
				},
				{
					'C_DOOR',{ -- concrete door frame
						{
							'C_WALL_WINDOW',{ -- concrete window panel
								{
									'C_DOORWINDOW' -- concrete frontage
								}
							}
						},
						{
							'C_DOOR_H',{ -- concrete doorway
								{
									'C_SDOOR' -- small concrete door
								}
							}
						},
						{
							'C_GDOOR' -- concrete power door
						}
					}
				},
				{
					'C_ROOF',{ -- concrete roof
						{
							'C_ROOF_M' -- concrete roof panel
						},
						{
							'C_ROOF_C',{ -- concrete roof corner
								{
									'C_ROOF_IC' -- concrete inner roof corner
								}
							}
						},
						{
							'C_ARCH',{ -- concrete arch
								{
									'C_ARCH_H' -- concrete half arch
								}
							}
						}
					}
				}
			}
		}
	},
	{--	base parts: re-add basic metal shelter parts tree
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		title   = 'UI_BASIC_METAL_SUB',
		after	= 'UI_BASIC_FIBREGLASS_ROOFS_SUB',
		cost	= 'SALVAGE',
		tree	= {
			'M_WALL',{ -- metal wall
				{
					'M_FLOOR',{ -- metal floor panel
						{
							'M_GFLOOR' -- metal-framed glass panel
						},
						{
							'M_RAMP',{ -- metal ramp
								{
									'M_RAMP_H' -- metal half ramp
								}
							}
						},
						{
							'M_FLOOR_Q' -- small metal panel
						},
						{
							'M_TRIFLOOR',{ -- metal triangle
								{
									'M_TRIFLOOR_Q' -- small metal triangle
								}
							}
						}
					}
				},
				{
					'M_WALL_H',{ -- thin metal wall
						{
							'M_WALLDIAGONAL' -- sloping metal panel
						},
						{
							'M_WALL_Q',{ -- small metal wall
								{
									'M_WALL_Q_H' -- short metal wall
								}
							}
						}
					}
				},
				{
					'M_DOOR',{ -- metal door frame
						{
							'M_WALL_WINDOW',{ -- metal window panel
								{
									'M_DOORWINDOW' -- metal frontage
								}
							}
						},
						{
							'M_DOOR_H',{ -- metal doorway
								{
									'M_SDOOR' -- small metal door
								}
							}
						},
						{
							'M_GDOOR' -- metal power door
						}
					}
				},
				{
					'M_ROOF',{ -- metal roof
						{
							'M_ROOF_M' -- metal roof panel
						},
						{
							'M_ROOF_C',{ -- metal roof corner
								{
									'M_ROOF_IC' -- metal inner roof corner
								}
							}
						},
						{
							'M_ARCH',{ -- metal arch
								{
									'M_ARCH_H' -- metal half arch
								}
							}
						}
					}
				}
			}
		}
	},
	{--	base parts: re-add basic wooden shelter parts tree
		parent	= 'UI_PURCHASABLE_BASEPARTS_TREE',
		title   = 'UI_BASIC_WOOD_SUB',
		after	= 'UI_BASIC_FIBREGLASS_ROOFS_SUB',
		cost	= 'SALVAGE',
		tree	= {
			'W_WALL',{ -- wooden wall
				{
					'W_FLOOR',{ -- wooden floor panel
						{
							'W_GFLOOR' -- wooden-framed glass panel
						},
						{
							'W_RAMP',{ -- wooden ramp
								{
									'W_RAMP_H' -- wooden half ramp
								}
							}
						},
						{
							'W_FLOOR_Q' -- small wooden panel
						},
						{
							'W_TRIFLOOR',{ -- wooden triangle
								{
									'W_TRIFLOOR_Q' -- small wooden triangle
								}
							}
						}
					}
				},
				{
					'W_WALL_H',{ -- thin wooden wall
						{
							'W_WALLDIAGONAL' -- sloping wooden panel
						},
						{
							'W_WALL_Q',{ -- small wooden wall
								{
									'W_WALL_Q_H' -- short wooden wall
								}
							}
						}
					}
				},
				{
					'W_DOOR',{ -- wooden door frame
						{
							'W_WALL_WINDOW',{ -- wooden window panel
								{
									'W_DOORWINDOW' -- wooden frontage
								}
							}
						},
						{
							'W_DOOR_H',{ -- wooden doorway
								{
									'W_SDOOR' -- small wooden door
								}
							}
						},
						{
							'W_GDOOR' -- wooden power door
						}
					}
				},
				{
					'W_ROOF',{ -- wooden roof
						{
							'W_ROOF_M' -- wooden roof panel
						},
						{
							'W_ROOF_C',{ -- wooden roof corner
								{
									'W_ROOF_IC' -- wooden inner roof corner
								}
							}
						},
						{
							'W_ARCH',{ -- wooden arch
								{
									'W_ARCH_H' -- wooden half arch
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
			'BOLT',{ -- boltcaster
				{
					'UT_BOLT',{ -- barrel ioniser
						{
							'BOLT_SM',{ -- boltcaster sm
								{
									'UT_BOLTBOUNCE' -- boltcaster ricochet module
								}
							}
						}
					}
				},
				{
					'FLAME' -- incinerator
				},
				{
					'GRENADE',{ -- plasma launcher
						{
							'STUN_GREN',{ -- paralysis mortar
								{
									'UT_STUNDMG' -- voltaic amplifier
								}
							}
						}
					}
				},
				{
					'RAILGUN',{ -- blaze javelin
						{
							'UT_RAIL_STUN' -- waveform oscillator
						},
						{
							'UT_RAIL' -- mass accelerator
						}
					}
				},
				{
					'SHOTGUN',{ -- scatter blaster
						{
							'UT_SHOT' -- shell greaser
						}
					}
				},
				{
					'SMG',{ -- pulse spitter
						{
							'UT_SMG',{ -- amplified cartridges
								{
									'UT_SMGBOUNCE' -- pulse spitter ricochet module
								},
								{
									'UT_SMG_DOT' -- impact igniter
								}
							}
						}
					}
				},
				{
					'CANNON',{ -- neutron cannon
						{
							'UT_CANNON' -- p-field compressor
						}
					}
				}
			}
		}
	},
	{--	multitool: (add tree) exploratory
		parent	= 'UI_WEAP_TECH_TREE',
		title   = 'UI_TECH_EXPLORE_SUB',
		cost	= 'NANITES',
		toend	= true,
		tree	= {
			'LASER',{ -- mining beam
				{
					'FISHLASER',{ -- fishing rig
						{
							'S15_FISHLASER' -- lost angler's rig
						}
					}
				},
				{
					'TERRAINEDITOR',{ -- terrain manipulator
						{
							'TERRAIN_GREN' -- geology cannon
						}
					}
				},
				{
					'GROUND_SHIELD',{ -- geology cannon
						{
							'SCOPE' -- combat scope
						},
						{
							'STEALTH' -- cloaking device
						}
					}
				},
				{
					'SCAN1',{ -- scanner
						{
							'UT_SCAN',{ -- waveform recycler
								{
									'UT_BUI_SCAN' -- scan harmoniser
								},
								{
									'UT_S10_SCAN' -- resonance amplifier
								}
							}
						},
						{
							'SCANBINOC1',{ -- analysis visor
								{
									'UT_SURVEY' -- survey device
								}
							}
						}
					}
				},
				{
					'LASER_XO',{ -- plasma resonator
						{
							'STRONGLASER',{ -- advanced mining laser
								{
									'UT_MINER' -- optical drill
								}
							}
						}
					}
				},
				{
					'SENT_LASER',{ -- hijacked laser
						{
							'ATLAS_LASER',{ -- runic lens
								{
									'SUN_LASER' -- solar ray
								},
								{
									'SOUL_LASER' -- animus beam
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
			'BUILDSAVE',{ -- save point
				{
					'BASE_FLAG',{ -- base computer
						{
							'NPCBUILDERTERM',{ -- construction terminal
								{
									'NPCSCIENCETERM',{ -- science terminal
										{
											'NPCFARMTERM' -- agricultural terminal
										}
									}
								},
								{
									'NPCWEAPONTERM',{ -- weapons terminal
										{
											'NPCVEHICLETERM' -- exocraft terminal
										}
									}
								}
							}
						},
						{
							'U_POWERLINE',{ -- electrical wiring
								{
									'U_SOLAR_S',{ -- solar panel
										{
											'U_BATTERY_S' -- battery
										}
									}
								},
								{
									'U_BIOGENERATOR' -- biofuel reactor
								}
							}
						},
						{
							'TELEPORTER',{ -- base teleport module
								{
									'BUILDLANDINGPAD',{ -- landing pad
										{
											'BUILDTERMINAL' -- galactic trade terminal
										}
									}
								}
							}
						},
						{
							'U_PIPELINE',{ -- supply pipe
								{
									'U_SILO_S',{ -- supply depot
										{
											'U_EXTRACTOR_S' -- mineral extractor
										},
										{
											'U_GASEXTRACTOR' -- gas extractor
										}
									}
								}
							}
						}
					}
				},
				{
					'BUILDBEACON',{ -- save beacon
						{
							'BUILDSIGNAL',{ -- signal booster
								{
									'S9_SHIPTREE' -- utopia ship station
								}
							}
						}
					}
				},
				{
					'BUILD_REFINER1',{ -- portable refiner
						{
							'COOKER' -- nutrient processor
						},
						{
							'BUILD_REFINER2' -- medium refiner
						}
					}
				},
				{
					'SMALLLIGHT',{ -- lantern
						{
							'BUILDLIGHT3',{ -- capped standing light
								{
									'S_HANGLAMP3' -- splayed hanging lamp
								}
							}
						}
					}
				},
				{
					'BUILDHARVESTER',{ -- autonomous mining unit
						{
							'BUILDGASHARVEST',{ -- atmosphere harvester
								{
									'O2_HARVESTER' -- oxygen harvester
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
		cost	= 'FACTORY',
		toend	= true,
		tree	= {
			'AM_HOUSING',{ -- antimatter housing
				{
					'CASING',{ -- metal plating
						{
							'NANOTUBES',{ -- carbon nanotubes
								{
									'HYDRALIC' -- hydraulic wiring
								}
							}
						},
						{
							'MICROCHIP',{ -- microprocessor
								{
									'COMPUTER' -- quantum computer
								}
							}
						},
						{
							'CARBON_SEAL',{ -- hermetic seal
								{
									'BIO' -- amino chamber
								}
							}
						},
						{
							'MIRROR',{ -- solar mirror
								{
									'MAGNET' -- magnetic resonator
								}
							}
						}
					}
				},
				{
					'JELLY',{ -- di-hydrogen jelly
						{
							'PRODFUEL2' -- life support gel
						}
					}
				},
				{
					'ANTIMATTER',{ -- antimatter
						{
							'HYPERFUEL1',{ -- warp cell
								{
									'HYPERFUEL2' -- warp hypercore
								}
							}
						}
					}
				},
				{
					'POWERCELL',{ -- ion battery
						{
							'GRENFUEL1' -- unstable plasma
						},
						{
							'SHIPCHARGE' -- starshield battery
						}
					}
				},
				{
					'LAUNCHFUEL',{ -- starship launch fuel
						{
							'SUBFUEL' -- hydrothermal fuel cell
						}
					}
				},
				{
					'ACCESS1',{ -- atlaspass v1
						{
							'ACCESS2',{ -- atlaspass v2
								{
									'ACCESS3' -- atlaspass v3
								}
							}
						}
					}
				},
				{
					'TECH_COMP',{ -- wiring loom
						{
							'POI_LOCATOR',{ -- anomaly detector
								{
									'RAMMOULD5' -- (custom) rampant mold
								},
								{
									'ULTRAPRODX40' -- (custom) fused stasis enabler
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
			'T_WALL',{ -- timber wall
				{
					'T_FLOOR',{ -- timber floor panel
						{
							'T_GFLOOR',{ -- timber-framed glass panel
								{
									'T_FLOOR_Q' -- small timber panel
								}
							}
						},
						{
							'T_RAMP',{ -- timber ramp
								{
									'T_RAMP_H',{ -- timber half ramp
										{
											'T_RAMP_Q_TOP' -- timber half ramp platform
										}
									}
								}
							}
						},
						{
							'T_TRIFLOOR',{ -- timber triangle
								{
									'T_TRIFLOOR_Q',{ -- small timber triangle
										{
											'T_WALLDIAGONAL' -- sloping timber panel
										}
									}
								}
							}
						}
					}
				},
				{
					'T_WALL_H',{ -- thin timber wall
						{
							'T_WALL_Q',{ -- small timber wall a
								{
									'T_WALL_Q1' -- small timber wall b
								}
							}
						},
						{
							'T_WALL_Q_H',{ -- short timber wall a
								{
									'T_WALL_Q_H1' -- short timber wall b
								}
							}
						}
					}
				},
				{
					'T_CHEV_WALL',{ -- extruded timber wall a
						{
							'T_CHEV_DOOR',{ -- extruded timber-glass door
								{
									'T_CHEV_WALL_H_C' -- extruded timber wall cap
								}
							}
						},
						{
							'T_CHEV_WIN0',{ -- extruded timber wall b
								{
									'T_CHEV_WIN1',{ -- extruded timber large window
										{
											'T_CHEV_WIN2' -- extruded timber small window
										}
									}
								}
							}
						}
					}
				},
				{
					'T_DOOR_H',{ -- timber doorway
						{
							'T_DOORWINDOW',{ -- timber frontage
								{
									'T_WALL_WIN1',{ -- horizontal timber windows
										{
											'T_WALL_WIN2' -- large timber double window
										},
										{
											'T_WALL_WIN3' -- large timber triple window
										}
									}
								},
								{
									'T_WALL_WINDOW' -- twin timber windows
								}
							}
						},
						{
							'T_DOOR',{ -- timber rectangular door
								{
									'T_DOOR1',{ -- timber angled door
										{
											'T_GDOOR' -- timber power door
										}
									}
								}
							}
						},
						{
							'T_ARCH',{ -- timber arch
								{
									'T_ARCH_H' -- timber half arch
								}
							}
						}
					}
				},
				{
					'T_ROOF6',{ -- flat timber roof
						{
							'T_ROOF_M',{ -- timber roof panel
								{
									'T_ROOF_M_Q',{ -- sloping timber roof panel
										{
											'T_ROOF_E_Q' -- sloping timber roof gable
										}
									}
								}
							}
						},
						{
							'T_ROOF0',{ -- rounded flat timber-glass roof
								{
									'T_ROOF7',{ -- rounded timber roof
										{
											'T_ROOF_M_CAP' -- timber roof cap
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
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'F_WALL',{ -- alloy wall
				{
					'F_FLOOR',{ -- alloy floor panel
						{
							'F_GFLOOR',{ -- alloy-framed glass panel
								{
									'F_FLOOR_Q' -- small alloy panel
								}
							}
						},
						{
							'F_RAMP',{ -- alloy ramp
								{
									'F_RAMP_H',{ -- alloy half ramp
										{
											'F_RAMP_Q_TOP' -- alloy half ramp platform
										}
									}
								}
							}
						},
						{
							'F_TRIFLOOR',{ -- alloy triangle
								{
									'F_TRIFLOOR_Q',{ -- small alloy triangle
										{
											'F_WALLDIAGONAL' -- sloping alloy panel
										}
									}
								}
							}
						}
					}
				},
				{
					'F_WALL_H',{ -- thin alloy wall
						{
							'F_WALL_Q',{ -- small alloy wall a
								{
									'F_WALL_Q1' -- small alloy wall b
								}
							}
						},
						{
							'F_WALL_Q_H',{ -- short alloy wall a
								{
									'F_WALL_Q_H1' -- short alloy wall b
								}
							}
						}
					}
				},
				{
					'F_CHEV_WALL',{ -- extruded alloy wall
						{
							'F_CHEV_DOOR',{ -- extruded alloy door
								{
									'F_CHEV_WALL_H_C' -- extruded alloy wall cap
								}
							}
						},
						{
							'F_CHEV_WIN0',{ -- extruded alloy window
								{
									'F_CHEV_WIN1',{ -- extruded alloy horizontal window
										{
											'F_CHEV_WIN2' -- extruded alloy small window
										}
									}
								}
							}
						}
					}
				},
				{
					'F_DOOR_H',{ -- alloy doorway
						{
							'F_DOORWINDOW',{ -- alloy frontage
								{
									'F_WALL_WIN1',{ -- irregular alloy window
										{
											'F_WALL_WIN2' -- twin alloy windows
										},
										{
											'F_WALL_WIN3' -- horizontal alloy window
										}
									}
								},
								{
									'F_WALL_WINDOW' -- alloy window
								}
							}
						},
						{
							'F_DOOR',{ -- alloy door a
								{
									'F_DOOR1',{ -- alloy door b
										{
											'F_GDOOR' -- alloy power door
										}
									}
								}
							}
						},
						{
							'F_ARCH',{ -- alloy arch
								{
									'F_ARCH_H' -- alloy half arch
								}
							}
						}
					}
				},
				{
					'F_ROOF7',{ -- flat alloy roof
						{
							'F_ROOF_M',{ -- alloy roof panel
								{
									'F_ROOF_M_Q',{ -- sloping alloy roof panel
										{
											'F_ROOF_E_Q' -- sloping alloy roof gable
										}
									}
								}
							}
						},
						{
							'F_ROOF5',{ -- angled flat alloy roof
								{
									'F_ROOF3',{ -- top-lit flat alloy roof
										{
											'F_ROOF_M_CAP' -- alloy roof cap
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
		cost	= 'SALVAGE',
		toend	= true,
		tree	= {
			'S_WALL',{ -- stone wall
				{
					'S_FLOOR',{ -- stone floor panel
						{
							'S_GFLOOR',{ -- stone floor grille
								{
									'S_FLOOR_Q' -- small stone panel
								}
							}
						},
						{
							'S_RAMP',{ -- stone ramp
								{
									'S_RAMP_H',{ -- stone half ramp
										{
											'S_RAMP_Q_TOP' -- stone half ramp platform
										}
									}
								}
							}
						},
						{
							'S_TRIFLOOR',{ -- stone triangle
								{
									'S_TRIFLOOR_Q',{ -- small stone triangle
										{
											'S_WALLDIAGONAL' -- sloping stone panel
										}
									}
								}
							}
						}
					}
				},
				{
					'S_WALL_H',{ -- thin stone wall
						{
							'S_WALL_Q',{ -- small stone wall a
								{
									'S_WALL_Q1' -- small stone wall b
								}
							}
						},
						{
							'S_WALL_Q_H',{ -- short stone wall a
								{
									'S_WALL_Q_H1' -- short stone wall b
								}
							}
						}
					}
				},
				{
					'S_CHEV_WALL',{ -- extruded stone wall
						{
							'S_CHEV_DOOR',{ -- extruded stone door
								{
									'S_CHEV_WALL_H_C' -- extruded stone wall cap
								}
							}
						},
						{
							'S_CHEV_WIN0',{ -- extruded stone grille a
								{
									'S_CHEV_WIN1',{ -- extruded stone circle window
										{
											'S_CHEV_WIN2' -- extruded stone grille b
										}
									}
								}
							}
						}
					}
				},
				{
					'S_DOOR_H',{ -- stone doorway
						{
							'S_DOORWINDOW',{ -- stone frontage
								{
									'S_WALL_WIN1',{ -- stone grille window
										{
											'S_WALL_WIN2' -- stone large window
										},
										{
											'S_WALL_WIN3' -- stone circle window
										}
									}
								},
								{
									'S_WALL_WINDOW' -- stone slit window
								}
							}
						},
						{
							'S_DOOR',{ -- stone arch door
								{
									'S_DOOR1',{ -- stone rectangular door
										{
											'S_GDOOR' -- stone power door
										}
									}
								}
							}
						},
						{
							'S_ARCH',{ -- stone arch
								{
									'S_ARCH_H' -- stone half arch
								}
							}
						}
					}
				},
				{
					'S_ROOF3',{ -- flat stone roof
						{
							'S_ROOF_M',{ -- stone roof panel
								{
									'S_ROOF_M_Q',{ -- sloping stone roof panel
										{
											'S_ROOF_E_Q' -- sloping stone roof gable
										}
									}
								}
							}
						},
						{
							'S_ROOF2',{ -- angled flat stone roof
								{
									'S_ROOF0',{ -- rounded flat stone roof
										{
											'S_ROOF_M_CAP' -- stone roof cap
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

-- add the meta for a proper e2l UnlockableItemTree
local function BuildTree(node)
	local function traverse(tree)
		local T = {
			meta = {'value', 'GcUnlockableItemTreeNode.xml'},
			Unlockable = tree[1]
		}
		if tree[2] then
			T.Children = { meta = {'name', 'Children'} }
			for _,t in ipairs(tree[2]) do
				T.Children[#T.Children+1] = traverse(t)
			end
		end
		return T
	end
	local e2l = traverse(node.tree)
	if node.cost then e2l.meta[1] = 'Root' end
	return e2l
end

local function AddTreeToChangeTable(node)
	if node.cost then
	--- full tree addition ---
		local tree_root = {
			meta	= {'value', 'GcUnlockableItemTree.xml'},
			Title		= node.title or node.rmtree,
			CostTypeID	= node.cost,
			ItemTree	= BuildTree(node)
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
				ADD					= ToExml(BuildTree(node))
			}
		else
			return  {
				SPECIAL_KEY_WORDS	= {'Unlockable', node.parent},
				PRECEDING_KEY_WORDS = 'Children',
				SECTION_ACTIVE		= -1,
				ADD_OPTION			= node.toend and 'AddEndSection' or nil,
				CREATE_HOS			= not node.toend,
				ADD					= ToExml(BuildTree(node))
			}
		end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY UNLOCKABLES.pak',
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
