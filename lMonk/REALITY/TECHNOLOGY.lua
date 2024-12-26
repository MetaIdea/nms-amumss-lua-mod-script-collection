-------------------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/table_entry.lua')
dofile('LIB/shared_lists.lua')
-------------------------------------------------------------------------------
local mod_desc = [[
  - Edit / add / remove stats
  * The game determines an upgrade's class by the level property of the first
   stat in StatBonuses array, so adding a new stat can change the class.
  - Increase Charge Amounts for selected items
  - Enable / share tech between vehicles & mech
  - changes to weapon upgrades projectile color
  - remove uninstall limitation for selected items
  - edit tech recipe cost
  - change icons
  - Set power cell & life support gel as the default recharge choice
  - add/edit tech requirements
  - Change mech terrain editor fuel to metal
]]-----------------------------------------------------------------------------

local function Add_Edit_Remove_Stats(T)
	-- removing tech (must come first)
	T[#T+1] = { SKW={}, SECTION_UP=1, REMOVE='Section' }
	local inx = #T

	for id, stats in pairs({
	---	suit
		SUIT_REFINER2	= {
			{st='Suit_Refiner',							bn=1,		op='+'},		-- 2
		},
		UT_WATER		= {
			{st='Suit_Protection_WaterDrain',			bn=0.17,	op='+'},		-- 1.33
			{st='Suit_UnderwaterLifeSupport',			bn=1,		lv=3},
		},
		UT_JUMP			= {
			{st='Suit_Jetpack_WaterEfficiency',			bn=1},
		},
	---	multitool
		BOLT			= {
			{st='Weapon_Projectile_Recoil',				bn=-20,		op='+'},		-- 200
		},
		UT_BOLT			= {
			{st='Weapon_Projectile_Recoil',				bn=-0.05,	op='+'},		-- 0.7
		},
		UT_SURVEY		= {
			{st='Weapon_Scan_Surveying',				bn=1,		op='*',	lv=0},	-- 0.7
		},
		RAILGUN			= {
			{st='Weapon_Laser_ChargeTime',				bn=-1,		op='+'},		-- 3
		},
		UT_SHOT			= {
			{st='Weapon_FireDOT_DPS',					bn=120,		lv=1},
			{st='Weapon_FireDOT_Duration',				bn=2,		lv=1},
			{st='Weapon_FireDOT',						bn=1,		lv=4},
		},
		UT_MINER		= {
			{st='Weapon_Laser_Damage',					bn=1,		lv=4},
		},
		STRONGLASER		= {
			{st='Weapon_Laser_Damage',					bn=3,		lv=3},
		},
		LASER_XO		= {
			{st='Weapon_Laser_Damage',					bn=3},
		},
		UT_RAIL			= {
			{st='Weapon_Laser_ChargeTime',				bn=0.85},
		},
		UT_RAIL_STUN	= {
			{st='Weapon_Laser_Damage',					bn=200},
		},
		UT_S10_SCAN		= {
			{st='Weapon_Scan_Recharge_Time',			bn=0.75,	lv=3},
		},
	---	vehicle
		VEHICLE_GRIP1	= {
			{st='Vehicle_Grip',							bn=-0.5,	op='+'},		-- 3
			{st='Vehicle_SkidGrip',						bn=0.2,		op='+'},		-- 0.66
		},
		VEHICLE_GUN		= {
			{st='Vehicle_GunDamage',					bn=80,		op='+'},		-- 320
			{st='Vehicle_GunRate',						bn=0.35,	op='+'},		-- 0.5
		},
		SUB_GUN			= {
			{st='Vehicle_GunDamage',					bn=80,		op='+'},		-- 320
			{st='Vehicle_GunRate',						bn=0.35,	op='+'},		-- 0.5
		},
		MECH_GUN		= {
			{st='Vehicle_GunDamage',					bn=100,		op='+'},		-- 420
			{st='Vehicle_GunRate',						bn=0.55,	op='+'},		-- 0.35
		},
		MECH_ENGINE		= {
			{st='Vehicle_EngineFuelUse',				bn=0.2,		op='+'},		-- 0.5
		},
		MECH_SENT_L_ARM	= {
			{st='Vehicle_LaserDamage',					bn=40,		op='+'},		-- 50
			{st='Vehicle_LaserStrongLaser',				bn=1},
		},
		EXO_PROT_RAD	= {
			{st='Suit_Protection_Radiation'},
			{st='Suit_DamageReduce_Radiation',			bn=3,		lv=1},
			{st='Suit_DamageReduce_Toxic',				bn=3,		lv=1},
			{st='Suit_DamageReduce_Cold',				bn=3,		lv=1},
			{st='Suit_DamageReduce_Heat',				bn=3,		lv=1},
		},
	---	ship
		UT_SHIPSHIELD	= {
			{st='Ship_Armour_Shield_Strength',			bn=0.01,	op='+',	lv=2},	-- 0.05
		},
		SHIPROCKETS		= {
			{st='Ship_Weapons_Guns_Damage',				bn=2000,	op='+'},		-- 6500
			{st='Ship_Weapons_Guns_Rate',				bn=-0.5,	op='+'},		-- 1
			{st='Ship_Weapons_Guns_CoolTime',			bn=-2,		op='+'},		-- 10
			{st='Ship_Weapons_Guns_HeatTime',			bn=1,		op='+'},		-- 0
		},
		UT_ROCKETS		= {
			{st='Ship_Weapons_Guns_CoolTime',			bn=-0.3,	op='+'},		-- 0.8
			{st='Ship_Weapons_Guns_HeatTime',			bn=1.2},
			{st='Ship_Weapons_Guns_Range',				bn=1.1,		lv=1},
			{st='Ship_Weapons_Guns_Damage',				bn=3200,	lv=2}
		},
		UT_SHIPSHOT		= {
			{st='Ship_Weapons_Guns_Dispersion',			bn=-0.2,	op='+'},		-- 0.8
			{st='Ship_Weapons_Guns_HeatTime',			bn=1.3,		lv=2}
		},
		UT_SHIPGUN		= {
			{st='Ship_Weapons_Guns_HeatTime',			bn=0.1,		op='+'},		-- 1.2
			{st='Ship_Weapons_ShieldLeech',				bn=0.05,	lv=2},
		},
		SHIP_TELEPORT	= {
			{st='Ship_Teleport',						bn=32,		op='*'},		-- 100
		},
		WATER_LANDER	= {
			{st='Ship_Launcher_TakeOffCost',			bn=0.99,	lv=3},
		},
		WATERLAND_ALIEN	= {
			{st='Ship_Launcher_TakeOffCost',			bn=0.99,	lv=3},
		},
		SHIPMINIGUN		= {
			{st='Ship_Weapons_Guns_Damage_Radius',		bn=1,		op='+'},		-- 3
		},
		SHIPJUMP_SPEC	= {
			{st='Ship_Maneuverability'},											-- bug fix
			{st='Ship_BoostManeuverability',			bn=-0.1,	op='+'},		-- 1.25
			{st='Ship_Boost',							bn=-10,		op='+'},		-- 120
			{st='Ship_PulseDrive_MiniJumpSpeed',		bn=0.24,	op='+'},		-- 1
		},
		SHIPJUMP_ROBO	= {
			{st='Ship_BoostManeuverability',			bn=-0.15,	op='+'},		-- 1.5
			{st='Ship_Maneuverability',					bn=0.005,	op='+'},		-- 1.0
		},
		SOLAR_SAIL		= {
			{st='Ship_PulseDrive_MiniJumpFuelSpending',	bn=0.2,		op='+'},		-- 0.2
			{st='Ship_PulseDrive_MiniJumpSpeed',		bn=1.22},
			{st='Ship_Maneuverability',					bn=1.005}
		},
		SHIPJUMP_ALIEN	= {
			{st='Ship_Drift',							bn=1,		lv=1},
		},
		PHOTONIX_CORE	= {
			{st='Ship_Launcher_AutoCharge',				bn=1,		lv=1},
			{st='Ship_PulseDrive_MiniJumpSpeed',		bn=1.3,		lv=3},
		},
		SHIPSCAN_ECON	= {
			{st='Ship_Scan_ConflictFilter',				bn=1,		lv=1},
		},
		SHIPGUN1		= {
			{st='Ship_Weapons_ShieldLeech',				bn=0.15,	lv=1},
		},
		SHIPGUN_ROBO	= {
			{st='Ship_Weapons_ShieldLeech',				bn=0.15,	lv=1},
		},
		SHIPGUN_ALIEN	= {
			{st='Ship_Weapons_ShieldLeech',				bn=0.15,	lv=1},
		},
		UT_SHIPMINI		= {
			{st='Ship_Weapons_Guns_HeatTime',			bn=1.3,		lv=2},
		},
	---	freighter
		F_HYPERDRIVE	= {
			{st='Freighter_Hyperdrive_JumpDistance',	bn=10,		op='*'},		-- 100
		},
		F_HDRIVEBOOST1	= {
			{st='Freighter_Hyperdrive_JumpDistance',	bn=8,		op='*'},		-- 200
		},
		F_HDRIVEBOOST2	= {
			{st='Freighter_Hyperdrive_JumpDistance',	bn=6,		op='*'},		-- 300
		},
		F_HDRIVEBOOST3	= {
			{st='Freighter_Hyperdrive_JumpDistance',	bn=4,		op='*'},		-- 800
		},
		F_MEGAWARP		= {
			{st='Freighter_Hyperdrive',					bn=1,		lv=1},
			{st='Freighter_Hyperdrive_JumpDistance',	bn=1000,	lv=1}
		}
	}) do
		for _,stat in ipairs(stats) do
			local skw = {'ID', id, 'Stat', 'GcStatsTypes.xml',  'StatsType', stat.st}
			if stat.op then
				--- edit ---
				T[#T+1] = {
					INTEGER_TO_FLOAT	= 'Force',
					SPECIAL_KEY_WORDS	= skw,
					SECTION_UP			= 1,
					VALUE_CHANGE_TABLE 	= {
						{'Bonus', '@'..stat.op..stat.bn},
						{'Level', stat.lv or 'IGNORE'}
					}
				}
				--- replace ---
				if stat.nw then
					T[#T+1] = {
						SPECIAL_KEY_WORDS	= skw,
						VALUE_CHANGE_TABLE 	= {
							{'StatsType',	stat.nw}
						}
					}
				end
			elseif stat.bn then
				--- add new ---
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {'ID', id},
					PRECEDING_KEY_WORDS	= 'StatBonuses',
					ADD					= ToExml(TechStatBonus(stat))
				}
			else
				--- remove ---
				T[inx].SKW[#T[inx].SKW + 1] = skw
			end
		end
	end
end

local function Charge_Amount(T)
	for id, chrg in pairs({
		SHIPJUMP1		= 1.5,
		SHIPJUMP_SPEC	= 1.5,
		SHIPJUMP_ALIEN	= 1.5,
		SHIPJUMP_ROBO	= 1.5,
		LAUNCHER		= 1.5,
		LAUNCHER_SPEC	= 1.5,
		LAUNCHER_ALIEN	= 1.5,
		LAUNCHER_ROBO	= 1.5,
		F_HYPERDRIVE	= 4,
		F_MEGAWARP		= 10,
		LASER			= 2,
		SENT_LASER		= 2,
		ATLAS_LASER		= 2,
		TERRAINEDITOR	= 3,
		RAILGUN			= 4,
		GRENADE			= 1.5,
		STUN_GREN		= 1.5,
		SUN_LASER		= 8,
		CANNON			= 0.8,
		SUIT_ROCKET		= 2,
		T_UNW			= 4,
		T_RAD			= 3,
		T_TOX			= 3,
		T_COLDPROT		= 3,
		T_HOTPROT		= 3,
		VEHICLE_ENGINE	= 1.2,
		VEHICLE_LASER	= 1.4,
		SUB_ENGINE		= 2,
		SUB_LASER		= 2,
		MECH_LASER		= 2,
		MECH_MINER		= 8,
		MECH_GUN		= 1.4
	}) do
		T[#T+1] = {
			INTEGER_TO_FLOAT	= 'Preserve',
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'ID', id},
			VALUE_CHANGE_TABLE 	= { {'ChargeAmount', chrg} }
		}
	end
end

local function Include_In_Category(T)
	for id, cat in pairs({
		SHIP_TELEPORT	= {o='AllShipsExceptAlien',	n='AllShips'},
		VEHICLE_SCAN1	= {o='Exocraft',			n='AllVehicles'},
		VEHICLE_SCAN2	= {o='Exocraft',			n='AllVehicles'},
	}) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id, 'TechnologyCategory', cat.o},
			VALUE_CHANGE_TABLE 	= { {'TechnologyCategory', cat.n} }
		}
	end
end

local function Edit_Rgb(T)
	for id, rgb in pairs({
		UT_BOLT			= {u='FFEDE434'},
		UT_RAIL			= {u='FFBD1A29'},
		UT_SHIPLAS		= {u='FF1F1A9E'},
		UT_SHIPGUN		= {u='FF03E01A'},
		UT_SMG			= {u='FFEB1FD1'},
		['.-_SPEC']		= {c='FF095C77', a=true},
		['T_BOBBLE_.-']	= {c='FF095C77', a=true},
		['T_SHIP_.-']	= {c='FF095C77', a=true},
	}) do
		if rgb.u then
			T[#T+1] = {
				INTEGER_TO_FLOAT	= 'Force',
				REPLACE_TYPE 		= rgb.a and 'All' or nil,
				SPECIAL_KEY_WORDS	= {'ID', id},
				PRECEDING_KEY_WORDS	= 'UpgradeColour',
				VALUE_CHANGE_TABLE 	= Hex2VCT(rgb.u)
			}
		end
		if rgb.c then
			T[#T+1] = {
				INTEGER_TO_FLOAT	= 'Force',
				REPLACE_TYPE 		= rgb.a and 'All' or nil,
				SPECIAL_KEY_WORDS	= {'ID', id},
				PRECEDING_KEY_WORDS	= 'Colour',
				VALUE_CHANGE_TABLE 	= Hex2VCT(rgb.c)
			}
		end
	end
end

local function Fragment_Cost(T)
	for id, frg in pairs({
		FLAME			= 420,
		SENT_LASER		= 230,
		ATLAS_LASER		= 310,
		SOLAR_SAIL		= 780,
		PHOTONIX_CORE	= 780,
		SHIPJUMP_SPEC	= 980,
		LAUNCHER_SPEC	= 980,
		HYPERDRIVE_SPEC	= 980,
		SHIPJUMP_ALIEN	= 160,
		LAUNCHER_ALIEN	= 160,
		WARP_ALIEN		= 160,
		SHIELD_ALIEN	= 160,
		SHIPGUN_ALIEN	= 160,
		SHIPLAS_ALIEN	= 160,
		UT_S10_SCAN		= 240,
		LAUNCHER_ROBO	= 180,
		SHIPJUMP_ROBO	= 180,
		HYPERDRIVE_ROBO	= 180,
		SHIPSHIELD_ROBO	= 180,
		SHIPGUN_ROBO	= 180,
		LIFESUP_ROBO	= 10,
		SHIP_LIFESUP	= 10,
		SPOOK_PACK		= 160,
	}) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id},
			VALUE_CHANGE_TABLE 	= { {'FragmentCost', frg} }
		}
	end
end

local function Custom_Icons(T)
	for id, icon in pairs({
	---	ship
		PHOTONIX_CORE	= 'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS',
		UT_PULSEFUEL	= 'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS',
		UT_PULSESPEED	= 'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS',
		UT_SHIPDRIFT	= 'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS',
		SHIPJUMP_SPEC	= 'TECHNOLOGY/RENDER.PULSESPEC.DDS',
		HYPERDRIVE_SPEC	= 'TECHNOLOGY/RENDER.HYPERSPEC.DDS',
		UT_QUICKWARP	= 'TECHNOLOGY/RENDER.HYPER.QUICK.DDS',
		LAUNCHER_SPEC	= 'TECHNOLOGY/RENDER.LANDINGSPEC.DDS',
		UT_LAUNCHER		= 'TECHNOLOGY/RENDER.LANDING.GREEN.DDS',
		UT_LAUNCHCHARGE	= 'TECHNOLOGY/RENDER.LANDING.GREEN.DDS',
		WATER_LANDER	= 'TECHNOLOGY/RENDER.LANDING.GREEN.DDS',
		UT_SHIPLAS		= 'TECHNOLOGY/RENDER.PHASEBEAM.BLUE.DDS',
		UT_SHIPSHOT		= 'TECHNOLOGY/RENDER.SHIPSHOT.GREEN.DDS',
		UT_SHIPBLOB		= 'TECHNOLOGY/RENDER.IONBLAST.PINK.DDS',
		UT_SHIPGUN		= 'TECHNOLOGY/RENDER.SHIPGUN.GRAY.DDS',
		UT_SHIPMINI		= 'TECHNOLOGY/RENDER.PHOTONACCEL.BLUE1.DDS',
		T_SHIPSHLD		= 'TECHNOLOGY/RENDER.SHIELDMOD.DDS',
		UT_SHIPSHIELD	= 'TECHNOLOGY/RENDER.SHIELD.RED2.DDS',
		SHIP_LIFESUP	= 'TECHNOLOGY/RENDER.LIFESUP.DDS',
		SHIP_TELEPORT	= 'TECHNOLOGY/RENDER.FREIGHTERSCANNER.DDS',
	---	vehicle
		EXO_RECHARGE	= 'TECHNOLOGY/VEHICLE/RENDER.ENGINE.ICARUS.DDS',
		MECH_BOOST		= 'TECHNOLOGY/VEHICLE/RENDER.MECH.BOOST.DDS',
		MECH_FUEL		= 'TECHNOLOGY/VEHICLE/RENDER.MECH.FUEL.DDS',
		MECH_MINER		= 'TECHNOLOGY/VEHICLE/RENDER.MECH.MINER.DDS',
		MECH_PROT		= 'TECHNOLOGY/VEHICLE/RENDER.MECH.PROT.DDS',
		SUB_RECHARGE	= 'U4PRODUCTS/PRODUCT.SUBMARINEUPGRADE.DDS',
		SUB_BINOCS		= 'TECHNOLOGY/VEHICLE/RENDER.SCAN.DDS',
		EXO_PROT_RAD	= 'TECHNOLOGY/VEHICLE/RENDER.EXO.PROT.DDS',
	---	weapon
		GROUND_SHIELD	= 'TECHNOLOGY/RENDER.SHIELD.BLUE3.DDS',
		LASER_XO		= 'TECHNOLOGY/RENDER.LASER.RED.DDS',
		STRONGLASER		= 'TECHNOLOGY/RENDER.LASER.YELLOW.DDS',
		UT_MINER		= 'TECHNOLOGY/RENDER.LASER.BLUE.DDS',
		BOLT_SM			= 'TECHNOLOGY/RENDER.PROJECTILE.BLUE.DDS',
		UT_BOLT			= 'TECHNOLOGY/RENDER.PROJECTILE.BLUE.DDS',
		UT_BOLTBOUNCE	= 'TECHNOLOGY/RENDER.RICOCHET.DDS',
		UT_SURVEY		= 'TECHNOLOGY/RENDER.BINOCULARS2.DDS',
		UT_SHOT			= 'TECHNOLOGY/RENDER.SCATTER.GREEN.DDS',
		UT_SMG			= 'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS',
		UT_SMGBOUNCE	= 'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS',
		UT_SMG_DOT		= 'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS',
		UT_RAIL			= 'TECHNOLOGY/RENDER.BLAZEJAVELIN.BLUE.DDS',
		UT_CANNON		= 'TECHNOLOGY/RENDER.CANNON.GREEN.DDS',
		UT_RAIL_STUN	= 'TECHNOLOGY/RENDER.BLAZEJAVELIN.BLUE.DDS',
		UT_BUI_SCAN		= 'TECHNOLOGY/RENDER.SCAN.BUILDER.DDS',
		UT_S10_SCAN		= 'TECHNOLOGY/RENDER.SCAN.BUILDER.DDS',
		UT_SCAN			= 'TECHNOLOGY/RENDER.SCAN.RED.DDS',
		SENT_LASER		= 'TECHNOLOGY/RENDER.LASERSENTINEL2.DDS',
		WEAPSENT_DMG1	= 'TECHNOLOGY/SENTWEAP.DMG1.DDS',
		WEAPSENT_DMG2	= 'U4PRODUCTS/PRODUCT.DRONEPARTE3.DDS',
		WEAPSENT_DMG3	= 'TECHNOLOGY/SENTWEAP.DMG3.DDS',
		WEAPSENT_DMG4	= 'TECHNOLOGY/SENTWEAP.DMG4.DDS',
	---	suit
		UT_ENERGY		= 'TECHNOLOGY/RENDER.CELL.BLUE.DDS',
		UT_WATERENERGY	= 'TECHNOLOGY/RENDER.CELL.BLUE.DDS',
		UT_JET			= 'TECHNOLOGY/RENDER.JETPACK.MOD.DDS',
		UT_JUMP			= 'TECHNOLOGY/RENDER.JETPACK.MOD.DDS',
		UT_MIDAIR		= 'TECHNOLOGY/RENDER.JETPACK.MOD.DDS',
		UT_WATERJET		= 'TECHNOLOGY/RENDER.JETPACK.MOD.DDS',
		UT_WATER		= 'TECHNOLOGY/RENDER.PROTECT.WATER.DDS',
		UT_PROTECT		= 'TECHNOLOGY/RENDER.PROTECT.BLUE.DDS',
		T_SHIELD		= 'TECHNOLOGY/RENDER.SHIELD.SUIT.DDS',
		OBSOLETE		= 'TECHNOLOGY/STAMINA.BOOSTER.DDS',
	---	freighter
		F_TELEPORT		= 'TECHNOLOGY/RENDER.FREIGHTERSCANNER.DDS',
		F_HYPERDRIVE	= 'SPECIALSHOP/SPECIAL1.FREIGHTJETS.GRAVITY.DDS',
		F_MEGAWARP		= 'U4PRODUCTS/PRODUCT.ROGUEKEY.DDS',
		F_SCANNER		= 'TECHNOLOGY/TECHNOLOGY.FLEET.TRADE.DDS',
		T_FR_TRADE		= 'TECHNOLOGY/TECHNOLOGY.FLEET.TRADE1.DDS',
		T_FR_HYP		= 'TECHNOLOGY/RENDER.FREIGHTERHD.DDS',
		F_HACCESS1		= 'TECHNOLOGY/RENDER.FREIGHTER.GREEN.DDS',
		F_HACCESS2		= 'TECHNOLOGY/RENDER.FREIGHTER.RED.DDS',
		F_HACCESS3		= 'TECHNOLOGY/RENDER.FREIGHTER.BLUE.DDS'
	}) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id},
			VALUE_CHANGE_TABLE 	= { {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/'..icon} }
		}
	end
end

local function Edit_Charge_Bys(T)
	-- removing section (must come first)
	T[#T+1] = { SKW={}, REMOVE='Section' }
	local inx = #T

	for id, crg in pairs({
		SENT_LASER		= {prd={'DRONE_SHARD', 'ROBOT2', 'ROBOT1'}, rpc=true},	-- full replace
		PROTECT			= {prd='POWERCELL'},									-- move to top
		ENERGY			= {prd='PRODFUEL2'},
		T_RAD			= {prd='POWERCELL'},
		T_TOX			= {prd='POWERCELL'},
		T_COLDPROT		= {prd='POWERCELL'},
		T_HOTPROT		= {prd='POWERCELL'},
		T_UNW			= {prd='PRODFUEL2'},
		SHIPSHIELD		= {prd='SHIPCHARGE'},
		SUIT_ROCKET		= {prd='LAUNCHFUEL',   new=true},						-- add new
		F_MEGAWARP		= {prd={'HYPERFUEL2'}, new=true, rpc=true, ctp='Fuel'},-- add new & replace category
		SHIPSHIELD_ROBO	= {prd='DRONE_SHARD'},
		HYPERDRIVE_ROBO	= {prd='DRONE_SHARD'},
		MECH_MINER		= {ctp='Metal'},
		SUN_LASER		= {ctp='Metal'},
	}) do
	-- if rpc then replace the existing list
		if crg.rpc then
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', id},
				PRECEDING_KEY_WORDS = 'ChargeBy',
				REMOVE				= crg.new and 'Line' or 'Section'
			}
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', id},
				ADD					= ToExml(StringArray(crg.prd, 'ChargeBy'))
			}
		-- if prd item then move to top (delete then re-add)
		elseif crg.prd then
			if not crg.new then
				T[inx].SKW[#T[inx].SKW + 1] = {'ID', id, 'Value', crg.prd}
			end
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', id},
				PRECEDING_KEY_WORDS = 'ChargeBy',
				ADD					= ToExml({
					meta	= {'value', 'NMSString0x10.xml'},
					Value	= crg.prd
				})
			}
		end
		-- if ctp then replace charge category
		if crg.ctp then
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', id},
				VALUE_CHANGE_TABLE 	= {
					{'SubstanceCategory', crg.ctp}
				}
			}
		end
	end
end

local function Replace_Requirements(T)
	-- removing section (must come first)
	T[#T+1] = { SKW={}, PKW='Requirements', REMOVE='Section' }
	local inx = #T

	for id, reqs in pairs({
		SENT_LASER	= {--	hijacked (sentinel) laser
			{id='DRONE_SHARD',	n=2,	tp=IT_.PRD},
			{id='ROBOT2',		n=250,	tp=IT_.SBT},
			{id='TECH_COMP',	n=2,	tp=IT_.PRD}
		},
		ATLAS_LASER	= {--	runic lens (altas laser)
			{id='HEXCORE',		n=2,	tp=IT_.PRD},
			{id='ASTEROID3',	n=150,	tp=IT_.SBT},
			{id='TECH_COMP',	n=2,	tp=IT_.PRD}
		},
		MECH_PROT	= {--	environment control unit
			{id='COMPUTER',		n=2,	tp=IT_.PRD},
			{id='SHIPCHARGE',	n=2,	tp=IT_.PRD},
			{id='TECH_COMP',	n=2,	tp=IT_.PRD}
		},
		SHIPJUMP_ALIEN	= {--	pulsing heart
			{id='GRAVBALL',		n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		},
		CARGO_S_ALIEN	= {--	neural shielding
			{id='FIENDCORE',	n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		},
		CHARGER_ALIEN	= {--	chloroplast membrane
			{id='FISHCORE',		n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		},
		SHIPSCAN_ALIEN	= {--	wormhole brain
			{id='EYEBALL',		n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		}
	}) do
		T[inx].SKW[#T[inx].SKW + 1] = {'ID', id}
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', id},
			ADD					= ToExml(GetRequirements(reqs))
		}
	end
end

local function AddPrx(prx, T)
	for i=1, #T do T[i] = {prx, T[i]} end
	return T
end

local ect_tch = {}
---	sections process order ---
Charge_Amount(ect_tch)
Include_In_Category(ect_tch)
Edit_Rgb(ect_tch)
Fragment_Cost(ect_tch)
Custom_Icons(ect_tch)
Add_Edit_Remove_Stats(ect_tch)
Edit_Charge_Bys(ect_tch)
Replace_Requirements(ect_tch)

ect_tch[#ect_tch+1] = {
	SPECIAL_KEY_WORDS 	= {
		{'ID',			'WATER_LANDER'},
		{'ID',			'WATERLAND_ALIEN'},
	},
	PRECEDING_KEY_WORDS	= 'BaseStat',
	VALUE_CHANGE_TABLE 	= {
		{'StatsType',	'Ship_Launcher'}
	}
}
ect_tch[#ect_tch+1] = {
	SPECIAL_KEY_WORDS 	= {'ID', 'MECH_PROT'},
	PRECEDING_KEY_WORDS	= 'BaseStat',
	VALUE_CHANGE_TABLE 	= {
		{'StatsType',	'Suit_Protection'}
	}
}
---	un-core
ect_tch[#ect_tch+1] = {
	SPECIAL_KEY_WORDS 	= AddPrx('ID', {
		'PROTECT',
		'ENERGY',
		'JET1',
		'SHIPJUMP1',
		'LAUNCHER',
		'HYPERDRIVE',
		'SHIPSHIELD',
		'LASER',
		'VEHICLE_ENGINE',
		'SUB_ENGINE',
		'SHIPJUMP_ALIEN',
		'LAUNCHER_ALIEN',
		'WARP_ALIEN',
		'SHIELD_ALIEN',
		'SHIPGUN_ALIEN',
		'SHIPLAS_ALIEN',
		'LAUNCHER_SPEC',
		'SHIPJUMP_SPEC',
		'HYPERDRIVE_SPEC',
		'SHIP_LIFESUP',
		'MECH_ENGINE',
		'SOLAR_SAIL',
		'LAUNCHER_ROBO',
		'SHIPJUMP_ROBO',
		'HYPERDRIVE_ROBO',
		'SHIPSHIELD_ROBO',
		'LIFESUP_ROBO',
		'SENT_LASER',
		'ATLAS_LASER',
		'F_HYPERDRIVE',
		'F_LIFESUPP',
		'SPOOK_PACK',
	}),
	VALUE_CHANGE_TABLE 	= {
		{'Core',		false}
	}
}
--- add new tech ---
ect_tch[#ect_tch+1] = {
	PRECEDING_KEY_WORDS	= 'Table',
	ADD					= ToExml(TechnologyEntry({
		{-- vehicle stun cannon
			id				= 'VEHICLESTUN',
			name			= new_tech.VEHICLESTUN.name,
			namelower		= new_tech.VEHICLESTUN.namelower,
			subtitle		= new_tech.VEHICLESTUN.subtitle,
			description		= new_tech.VEHICLESTUN.description,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/VEHICLE/RENDER.STUNGUN.DDS',
			color			= 'FF095C77',
			chargeable		= true,
			chargeamount	= 40,
			chargetype		= 'Fuel',
			chargeby		= {'GRENFUEL1'},
			chargemultiply	= 2,
			primaryitem		= true,
			category		= 'Exocraft',
			rarity			= 'Rare',
			value			= 5,
			fragmentcost	= 580,
			requirements	= {
				{id='LAVA1',			n=70,	tp=IT_.SBT},
				{id='HYDRALIC',			n=2,	tp=IT_.PRD},
				{id='TECH_COMP',		n=1,	tp=IT_.PRD}
			},
			basestat		= 'Vehicle_StunGun',
			statbonuses		= {
				{st='Vehicle_GunDamage',					bn=20,	lv=3},
				{st='Vehicle_GunHeatTime',					bn=1,	lv=1},
				{st='Vehicle_GunRate',						bn=0.5,	lv=1}
			}
		},
		{-- bioship rocket launcher
			id				= 'ROCEKT_ALIEN',
			name			= new_tech.ROCEKT_ALIEN.name,
			namelower		= new_tech.ROCEKT_ALIEN.namelower,
			subtitle		= new_tech.ROCEKT_ALIEN.subtitle,
			description		= new_tech.ROCEKT_ALIEN.description,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/BIO/BIOTECH.ROCKET0.DDS',
			color			= 'FF0A2E42',
			primaryitem		= true,
			category		= 'AlienShip',
			rarity			= 'Impossible',
			value			= 8,
			fragmentcost	= 350,
			requirements	= {
				{id='ALIEN_TECHBOX',	n=1,	tp=IT_.PRD},
				{id='AF_METAL',			n=120,	tp=IT_.SBT},
				{id='SPACEGUNK2',		n=200,	tp=IT_.SBT}
			},
			basestat		= 'Ship_Weapons_Rockets',
			statbonuses		= {
				{st='Ship_Weapons_Guns_Rate',				bn=0.5,		lv=1},
				{st='Ship_Weapons_Guns_Dispersion',			bn=0,		lv=1},
				{st='Ship_Weapons_Guns_BulletsPerShot',		bn=1,		lv=1},
				{st='Ship_Weapons_Guns_HeatTime',			bn=1,		lv=1},
				{st='Ship_Weapons_Guns_Damage',				bn=8500,	lv=1},
				{st='Ship_Weapons_Guns_Range',				bn=5000,	lv=1},
				{st='Ship_Weapons_Guns_Scale',				bn=2.5,		lv=1},
				{st='Ship_Weapons_Guns_CoolTime',			bn=8,		lv=1},
				{st='Ship_Weapons_Guns_Damage_Radius',		bn=15,		lv=1}
			},
			focuslocator	= 'SHOOT'
		},
		{-- bioship rocket launcher
			id				= 'ROCEKT_U_ALIEN',
			name			= new_tech.ROCEKT_U_ALIEN.name,
			namelower		= new_tech.ROCEKT_U_ALIEN.namelower,
			subtitle		= new_tech.ROCEKT_U_ALIEN.subtitle,
			description		= new_tech.ROCEKT_U_ALIEN.description,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/BIO/BIOTECH.ROCKET1.DDS',
			color			= 'FF0A2E42',
			upgrade			= true,
			category		= 'AlienShip',
			rarity			= 'Impossible',
			value			= 8,
			fragmentcost	= 550,
			requirements	= {
				{id='ALIEN_TECHBOX',	n=1,	tp=IT_.PRD},
				{id='AF_METAL',			n=120,	tp=IT_.SBT},
				{id='SPACEGUNK2',		n=200,	tp=IT_.SBT}
			},
			basestat		= 'Ship_Weapons_Rockets',
			statbonuses		= {
				{st='Ship_Weapons_Guns_CoolTime',			bn=0.8,		lv=3},
				{st='Ship_Weapons_Guns_HeatTime',			bn=1.2,		lv=1},
				{st='Ship_Weapons_Guns_Range',				bn=1.1,		lv=1},
				{st='Ship_Weapons_Guns_Damage',				bn=3200,	lv=1}
			}
		},
		{-- bioship pulse engine upgrade
			id				= 'JUMP_U_ALIEN',
			name			= new_tech.JUMP_U_ALIEN.name,
			namelower		= new_tech.JUMP_U_ALIEN.namelower,
			subtitle		= new_tech.JUMP_U_ALIEN.subtitle,
			description		= new_tech.JUMP_U_ALIEN.description,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/BIO/BIOTECH.HEART.U.DDS',
			color			= 'FF0A2E42',
			upgrade			= true,
			category		= 'AlienShip',
			rarity			= 'Impossible',
			value			= 7,
			fragmentcost	= 520,
			requirements	= {
				{id='ALIEN_TECHBOX',	n=1,	tp=IT_.PRD},
				{id='MIRROR',			n=2,	tp=IT_.PRD},
				{id='LAUNCHSUB2',		n=120,	tp=IT_.SBT}
			},
			basestat		= 'Ship_PulseDrive',
			statbonuses		= {
				{st='Ship_PulseDrive_MiniJumpSpeed',		bn=1.2,		lv=4},
				{st='Ship_Boost',							bn=1.16,	lv=1},
				{st='Ship_BoostManeuverability',			bn=1.16,	lv=1},
				{st='Ship_Maneuverability',					bn=1.006,	lv=1},
				{st='Ship_Drift',							bn=0.6,		lv=1},
				{st='Ship_PulseDrive_MiniJumpFuelSpending',	bn=0.86,	lv=1}
			}
		},
		{-- bioship shield upgrade
			id				= 'SHIELD_U_ALIEN',
			name			= new_tech.SHIELD_U_ALIEN.name,
			namelower		= new_tech.SHIELD_U_ALIEN.namelower,
			subtitle		= new_tech.SHIELD_U_ALIEN.subtitle,
			description		= new_tech.SHIELD_U_ALIEN.description,
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/BIO/BIOTECH.SCALES.U.DDS',
			color			= 'FF0A2E42',
			upgrade			= true,
			category		= 'AlienShip',
			rarity			= 'Impossible',
			value			= 8,
			fragmentcost	= 630,
			requirements	= {
				{id='ALIEN_TECHBOX',	n=1,	tp=IT_.PRD},
				{id='MIRROR',			n=2,	tp=IT_.PRD},
				{id='LAUNCHSUB2',		n=90,	tp=IT_.SBT}
			},
			basestat		= 'Ship_Armour_Shield',
			statbonuses		= {
				{st='Ship_Armour_Shield_Strength',			bn=0.06, lv=3}
			}
		}
	}))
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY TECHNOLOGY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= ect_tch
	}
}}}}
