-------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/table_entry.lua')
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

local add_edit_stats = {
---	suit
	{id='UT_WATER',			st='Suit_Protection_WaterDrain',			bn=0.17,	op='+'},		-- 1.33
	{id='SUIT_REFINER2',	st='Suit_Refiner',							bn=1,		op='+'},		-- 2
---	multitool
	{id='BOLT',				st='Weapon_Projectile_Recoil',				bn=-20,		op='+'},		-- 200
	{id='UT_BOLT',			st='Weapon_Projectile_Recoil',				bn=-0.05,	op='+'},		-- 0.7
	{id='UT_SURVEY',		st='Weapon_Scan_Surveying',					bn=1,		op='*',	lv=0},	-- 0.7
	{id='RAILGUN',			st='Weapon_Laser_ChargeTime',				bn=-1,		op='+'},		-- 3
	{id='UT_S10_SCAN',		st='Weapon_Scan_Radius',					bn=0.05,	op='+'},		-- 1.33
---	vehicle
	{id='VEHICLE_GRIP1',	st='Vehicle_Grip',							bn=-0.5,	op='+'},		-- 3
	{id='VEHICLE_GRIP1',	st='Vehicle_SkidGrip',						bn=0.2,		op='+'},		-- 0.66
	{id='VEHICLE_GUN',		st='Vehicle_GunDamage',						bn=80,		op='+'},		-- 320
	{id='VEHICLE_GUN',		st='Vehicle_GunRate',						bn=0.35,	op='+'},		-- 0.5
	{id='SUB_GUN',			st='Vehicle_GunDamage',						bn=80,		op='+'},		-- 320
	{id='SUB_GUN',			st='Vehicle_GunRate',						bn=0.35,	op='+'},		-- 0.5
	{id='MECH_GUN',			st='Vehicle_GunDamage',						bn=100,		op='+'},		-- 420
	{id='MECH_GUN',			st='Vehicle_GunRate',						bn=0.55,	op='+'},		-- 0.35
	{id='MECH_ENGINE',		st='Vehicle_EngineFuelUse',					bn=0.2,		op='+'},		-- 0.5
	{id='MECH_SENT_L_ARM',	st='Vehicle_LaserDamage',					bn=40,		op='+'},		-- 50
---	ship
	{id='UT_SHIPSHIELD',	st='Ship_Armour_Shield_Strength',			bn=0.01,	op='+',	lv=2},	-- 0.05
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_Damage',				bn=2000,	op='+'},		-- 6500
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_Rate',				bn=-0.5,	op='+'},		-- 1
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_CoolTime',			bn=-2,		op='+'},		-- 10
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_HeatTime',			bn=1,		op='+'},		-- 0
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_CoolTime',			bn=-0.3,	op='+'},		-- 0.8
	{id='UT_SHIPSHOT',		st='Ship_Weapons_Guns_Dispersion',			bn=-0.2,	op='+'},		-- 0.8
	{id='UT_SHIPGUN',		st='Ship_Weapons_Guns_HeatTime',			bn=0.1,		op='+'},		-- 1.2
	{id='SHIP_TELEPORT',	st='Ship_Teleport',							bn=32,		op='*'},		-- 100
	{id='SHIPMINIGUN',		st='Ship_Weapons_Guns_Damage_Radius',		bn=1,		op='+'},		-- 3
	{id='SHIPJUMP_SPEC',	st='Ship_Maneuverability'},												-- bug fix
	{id='SHIPJUMP_SPEC',	st='Ship_BoostManeuverability',				bn=-0.1,	op='+'},		-- 1.25
	{id='SHIPJUMP_SPEC',	st='Ship_Boost',							bn=-10,		op='+'},		-- 120
	{id='SHIPJUMP_SPEC',	st='Ship_PulseDrive_MiniJumpSpeed',			bn=0.24,	op='+'},		-- 1
	{id='SHIPJUMP_ROBO',	st='Ship_BoostManeuverability',				bn=-0.15,	op='+'},		-- 1.5
	{id='SHIPJUMP_ROBO',	st='Ship_Maneuverability',					bn=0.005,	op='+'},		-- 1.0
	{id='SOLAR_SAIL',		st='Ship_PulseDrive_MiniJumpFuelSpending',	bn=0.2,		op='+'},		-- 0.2
---	freighter
	{id='F_HYPERDRIVE',		st='Freighter_Hyperdrive_JumpDistance',		bn=10,		op='*'},		-- 100
	{id='F_HDRIVEBOOST1',	st='Freighter_Hyperdrive_JumpDistance',		bn=8,		op='*'},		-- 200
	{id='F_HDRIVEBOOST2',	st='Freighter_Hyperdrive_JumpDistance',		bn=6,		op='*'},		-- 300
	{id='F_HDRIVEBOOST3',	st='Freighter_Hyperdrive_JumpDistance',		bn=4,		op='*'},		-- 800

---	suit
	{id='UT_JUMP',			st='Suit_Jetpack_WaterEfficiency',			bn=1},
	{id='UT_WATER',			st='Suit_UnderwaterLifeSupport',			bn=1,		lv=3},
---	multitool
	{id='UT_SHOT',			st='Weapon_FireDOT_Duration',				bn=2,		lv=1},
	{id='UT_SHOT',			st='Weapon_FireDOT_DPS',					bn=120,		lv=1},
	{id='UT_SHOT',			st='Weapon_FireDOT',						bn=1,		lv=4},
	{id='UT_MINER',			st='Weapon_Laser_Damage',					bn=1,		lv=4},
	{id='STRONGLASER',		st='Weapon_Laser_Damage',					bn=3,		lv=3},
	{id='LASER_XO',			st='Weapon_Laser_Damage',					bn=3},
	{id='UT_RAIL',			st='Weapon_Laser_ChargeTime',				bn=0.85},
	{id='UT_RAIL_STUN',		st='Weapon_Laser_Damage',					bn=200},
	{id='UT_S10_SCAN',		st='Weapon_Scan_Recharge_Time',				bn=0.75,	lv=3},
---	vehicle
	{id='MECH_SENT_L_ARM',	st='Vehicle_LaserStrongLaser',				bn=1},
---	ship
	{id='SHIPJUMP_ALIEN',	st='Ship_Drift',							bn=1,		lv=1},
	{id='PHOTONIX_CORE',	st='Ship_Launcher_AutoCharge',				bn=1,		lv=1},
	{id='PHOTONIX_CORE',	st='Ship_PulseDrive_MiniJumpSpeed',			bn=1.3,		lv=3},
	{id='SOLAR_SAIL',		st='Ship_PulseDrive_MiniJumpSpeed',			bn=1.22},
	{id='SOLAR_SAIL',		st='Ship_Maneuverability',					bn=1.005},
	{id='SHIPSCAN_ECON',	st='Ship_Scan_ConflictFilter',				bn=1,		lv=1},
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_HeatTime',			bn=1.2},
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_Range',				bn=1.1,		lv=1},
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_Damage',				bn=3200,	lv=2},
	{id='SHIPGUN1',			st='Ship_Weapons_ShieldLeech',				bn=0.15,	lv=1},
	{id='SHIPGUN_ROBO',		st='Ship_Weapons_ShieldLeech',				bn=0.15,	lv=1},
	{id='SHIPGUN_ALIEN',	st='Ship_Weapons_ShieldLeech',				bn=0.15,	lv=1},
	{id='UT_SHIPGUN',		st='Ship_Weapons_ShieldLeech',				bn=0.05,	lv=2},
	{id='UT_SHIPSHOT',		st='Ship_Weapons_Guns_HeatTime',			bn=1.3,		lv=2},
	{id='UT_SHIPMINI',		st='Ship_Weapons_Guns_HeatTime',			bn=1.3,		lv=2},
---	freighter
	{id='F_MEGAWARP',		st='Freighter_Hyperdrive',					bn=1,		lv=1},
	{id='F_MEGAWARP',		st='Freighter_Hyperdrive_JumpDistance',		bn=1000,	lv=1}
}
function add_edit_stats:GetExmlCT(T)
	-- index for removing tech (must come first)
	local inx = #T + 1
	T[inx] = {
		SKW			= {},
		SECTION_UP	= 1,
		REMOVE		= 'Section'
	}
	for _,tch in ipairs(self) do
		local skw = {'ID', tch.id, 'Stat', 'GcStatsTypes.xml',  'StatsType', tch.st}
		if tch.op then
			--- edit ---
			T[#T+1] = {
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= skw,
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', '@'..tch.op..tch.bn},
					{'Level', tch.lv or 'Ignore'}
				}
			}
			--- replace ---
			if tch.nw then
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= skw,
					VALUE_CHANGE_TABLE 	= {
						{'StatsType',	tch.nw}
					}
				}
			end
		elseif tch.bn then
			--- add new ---
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', tch.id},
				PRECEDING_KEY_WORDS	= 'StatBonuses',
				ADD					= ToExml(TechStatBonus(tch))
			}
		else
			--- remove ---
			T[inx].SKW[#T[inx].SKW + 1] = skw
		end
	end
end

local charge_amount = {
	{'SHIPJUMP1',		1.5},
	{'SHIPJUMP_SPEC',	1.5},
	{'SHIPJUMP_ALIEN',	1.5},
	{'SHIPJUMP_ROBO',	1.5},
	{'LAUNCHER',		1.5},
	{'LAUNCHER_SPEC',	1.5},
	{'LAUNCHER_ALIEN',	1.5},
	{'LAUNCHER_ROBO',	1.5},
	{'F_HYPERDRIVE',	4},
	{'F_MEGAWARP',		10},
	{'LASER',			2},
	{'SENT_LASER',		2},
	{'TERRAINEDITOR',	3},
	{'RAILGUN',			4},
	{'GRENADE',			1.5},
	{'STUN_GREN',		1.5},
	{'SUN_LASER',		8},
	{'CANNON',			0.8},
	{'SUIT_ROCKET',		2},
	{'T_UNW',			4},
	{'T_RAD',			3},
	{'T_TOX',			3},
	{'T_COLDPROT',		3},
	{'T_HOTPROT',		3},
	{'VEHICLE_ENGINE',	1.2},
	{'VEHICLE_LASER',	1.4},
	{'SUB_ENGINE',		2},
	{'SUB_LASER',		2},
	{'MECH_LASER',		2},
	{'MECH_MINER',		8},
	{'MECH_GUN',		1.4}
}
function charge_amount:GetExmlCT(T)
	for _,tch in ipairs(self) do
		T[#T+1] = {
			INTEGER_TO_FLOAT	= 'Preserve',
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'ID', tch[1]},
			VALUE_CHANGE_TABLE 	= { {'ChargeAmount', tch[2]} }
		}
	end
end

local include_in_category = {
	{'SHIP_TELEPORT',	'AllShipsExceptAlien',	'AllShips'},
	{'SHIPROCKETS',		'AllShipsExceptAlien',	'AllShips'},
	{'UT_ROCKETS',		'AllShipsExceptAlien',	'AllShips'},
	{'SHIPMINIGUN',		'AllShipsExceptAlien',	'AllShips'},
	{'UT_SHIPMINI',		'AllShipsExceptAlien',	'AllShips'},
	{'SHIPPLASMA',		'AllShipsExceptAlien',	'AllShips'},
	{'UT_SHIPBLOB',		'AllShipsExceptAlien',	'AllShips'},
	{'SHIPSHOTGUN',		'AllShipsExceptAlien',	'AllShips'},
	{'UT_SHIPSHOT',		'AllShipsExceptAlien',	'AllShips'},
	{'VEHICLE_SCAN1',	'Exocraft',				'AllVehicles'},
	{'VEHICLE_SCAN2',	'Exocraft',				'AllVehicles'},
	{'MECH_PROT',		'Mech',					'AllVehicles'}
}
function include_in_category:GetExmlCT(T)
	for _,cat in ipairs(self) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', cat[1], 'TechnologyCategory', cat[2]},
			VALUE_CHANGE_TABLE 	= { {'TechnologyCategory', cat[3]} }
		}
	end
end

local edit_rgb = {
	{'UT_BOLT', 		'FFEDE434'},
	{'UT_RAIL',			'FFBD1A29'},
	{'UT_SHIPLAS',		'FF1F1A9E'},
	{'UT_SHIPGUN',		'FF03E01A'},
	{'UT_SMG',			'FFEB1FD1'},
	{'SHIPJUMP_SPEC'},
	{'HYPERDRIVE_SPEC'},
	{'LAUNCHER_SPEC'},
	{'T_BOBBLE_APOLLO'},
	{'T_BOBBLE_ART'},
	{'T_BOBBLE_ATLAS'},
	{'T_BOBBLE_NADA'},
	{'T_BOBBLE_NULL'},
	{'T_BOBBLE_POLO'},
	{'T_SHIP_RAINBOW'},
	{'T_SHIP_DARK'},
	{'T_SHIP_RED'},
	{'T_SHIP_GREEN'},
	{'T_SHIP_GOLD'},
	{'T_SHIP_PIRATE'}
}
function edit_rgb:GetExmlCT(T)
	--- index for backgrounds
	local inx = #T + 1
	T[inx] = {
	--- background color ---
		SKW					= {},
		INTEGER_TO_FLOAT	= 'Force',
		PRECEDING_KEY_WORDS	= 'Colour',
		VALUE_CHANGE_TABLE 	= ColorFromHex('FF095C77')
	}
	for _,col in ipairs(self) do
		if #col < 2 then
			T[inx].SKW[#T[inx].SKW + 1] = {'ID', col[1]}
		else
	--- upgrade color ---
			T[#T+1] = {
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'ID', col[1]},
				PRECEDING_KEY_WORDS	= 'UpgradeColour',
				VALUE_CHANGE_TABLE 	= ColorFromHex(col[2])
			}
		end
	end
end

local fragment_cost = {
	{'FLAME',			420},
	{'SENT_LASER',		230},
	{'ATLAS_LASER',		310},
	{'SOLAR_SAIL',		780},
	{'PHOTONIX_CORE',	780},
	{'SHIPJUMP_SPEC',	980},
	{'LAUNCHER_SPEC',	980},
	{'HYPERDRIVE_SPEC',	980},
	{'SHIPJUMP_ALIEN',	160},
	{'LAUNCHER_ALIEN',	160},
	{'WARP_ALIEN',		160},
	{'SHIELD_ALIEN',	160},
	{'SHIPGUN_ALIEN',	160},
	{'SHIPLAS_ALIEN',	160},
	{'UT_S10_SCAN',		240},
	{'LAUNCHER_ROBO',	180},
	{'SHIPJUMP_ROBO',	180},
	{'HYPERDRIVE_ROBO',	180},
	{'SHIPSHIELD_ROBO',	180},
	{'SHIPGUN_ROBO',	180},
	{'LIFESUP_ROBO',	10},
	{'SHIP_LIFESUP',	10}
}
function fragment_cost:GetExmlCT(T)
	for _,frg in ipairs(self) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', frg[1]},
			VALUE_CHANGE_TABLE 	= { {'FragmentCost', frg[2]} }
		}
	end
end

local tech_icons = {
	---	ship
	{'PHOTONIX_CORE',	'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS'},
	{'UT_PULSEFUEL',	'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS'},
	{'UT_PULSESPEED',	'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS'},
	{'UT_SHIPDRIFT',	'TECHNOLOGY/RENDER.PULSE.YELLOW.DDS'},
	{'SHIPJUMP_SPEC',	'TECHNOLOGY/RENDER.PULSESPEC.DDS'},
	{'HYPERDRIVE_SPEC',	'TECHNOLOGY/RENDER.HYPERSPEC.DDS'},
	{'UT_QUICKWARP',	'TECHNOLOGY/RENDER.HYPER.QUICK.DDS'},
	{'LAUNCHER_SPEC',	'TECHNOLOGY/RENDER.LANDINGSPEC.DDS'},
	{'UT_LAUNCHER',		'TECHNOLOGY/RENDER.LANDING.GREEN.DDS'},
	{'UT_LAUNCHCHARGE',	'TECHNOLOGY/RENDER.LANDING.GREEN.DDS'},
	{'UT_SHIPLAS',		'TECHNOLOGY/RENDER.PHASEBEAM.BLUE.DDS'},
	{'UT_SHIPSHOT',		'TECHNOLOGY/RENDER.SHIPSHOT.GREEN.DDS'},
	{'UT_SHIPBLOB',		'TECHNOLOGY/RENDER.IONBLAST.PINK.DDS'},
	{'UT_SHIPGUN',		'TECHNOLOGY/RENDER.SHIPGUN.GRAY.DDS'},
	{'UT_SHIPMINI',		'TECHNOLOGY/RENDER.PHOTONACCEL.BLUE1.DDS'},
	{'T_SHIPSHLD',		'TECHNOLOGY/RENDER.SHIELDMOD.DDS'},
	{'UT_SHIPSHIELD',	'TECHNOLOGY/RENDER.SHIELD.RED2.DDS'},
	{'SHIPSCAN_ECON',	'TECHNOLOGY/RENDER.FREIGHTERSCANNER.DDS'},
	{'SHIP_LIFESUP',	'TECHNOLOGY/RENDER.LIFESUP.DDS'},
	{'SHIP_TELEPORT',	'TECHNOLOGY/TECHNOLOGY.FLEET.TRADE.DDS'},
	---	vehicle
	{'EXO_RECHARGE',	'TECHNOLOGY/VEHICLE/RENDER.ENGINE.ICARUS.DDS'},
	{'MECH_BOOST',		'TECHNOLOGY/VEHICLE/RENDER.MECH.BOOST.DDS'},
	{'MECH_FUEL',		'TECHNOLOGY/VEHICLE/RENDER.MECH.FUEL.DDS'},
	{'MECH_MINER',		'TECHNOLOGY/VEHICLE/RENDER.MECH.MINER.DDS'},
	{'MECH_PROT',		'TECHNOLOGY/VEHICLE/RENDER.MECH.PROT.DDS'},
	{'SUB_RECHARGE',	'U4PRODUCTS/PRODUCT.SUBMARINEUPGRADE.DDS'},
	{'SUB_BINOCS',		'TECHNOLOGY/VEHICLE/RENDER.SCAN.DDS'},
	---	weapon
	{'GROUND_SHIELD',	'TECHNOLOGY/RENDER.SHIELD.BLUE3.DDS'},
	{'LASER_XO',		'TECHNOLOGY/RENDER.LASER.RED.DDS'},
	{'STRONGLASER',		'TECHNOLOGY/RENDER.LASER.YELLOW.DDS'},
	{'UT_MINER',		'TECHNOLOGY/RENDER.LASER.BLUE.DDS'},
	{'BOLT_SM',			'TECHNOLOGY/RENDER.PROJECTILE.BLUE.DDS'},
	{'UT_BOLT',			'TECHNOLOGY/RENDER.PROJECTILE.BLUE.DDS'},
	{'UT_BOLTBOUNCE',	'TECHNOLOGY/RENDER.RICOCHET.DDS'},
	{'UT_SURVEY',		'TECHNOLOGY/RENDER.BINOCULARS2.DDS'},
	{'UT_SHOT',			'TECHNOLOGY/RENDER.SCATTER.GREEN.DDS'},
	{'UT_SMG',			'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS'},
	{'UT_SMGBOUNCE',	'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS'},
	{'UT_SMG_DOT',		'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS'},
	{'UT_RAIL',			'TECHNOLOGY/RENDER.BLAZEJAVELIN.BLUE.DDS'},
	{'UT_CANNON',		'TECHNOLOGY/RENDER.CANNON.GREEN.DDS'},
	{'UT_RAIL_STUN',	'TECHNOLOGY/RENDER.BLAZEJAVELIN.BLUE.DDS'},
	{'UT_BUI_SCAN',		'TECHNOLOGY/RENDER.SCAN.BUILDER.DDS'},
	{'UT_S10_SCAN',		'TECHNOLOGY/RENDER.SCAN.BUILDER.DDS'},
	{'UT_SCAN',			'TECHNOLOGY/RENDER.SCAN.RED.DDS'},
	{'SENT_LASER',		'TECHNOLOGY/RENDER.LASERSENTINEL2.DDS'},
	{'WEAPSENT_DMG1',	'TECHNOLOGY/SENTWEAP.DMG1.DDS'},
	{'WEAPSENT_DMG2',	'U4PRODUCTS/PRODUCT.DRONEPARTE3.DDS'},
	{'WEAPSENT_DMG3',	'TECHNOLOGY/SENTWEAP.DMG3.DDS'},
	{'WEAPSENT_DMG4',	'TECHNOLOGY/SENTWEAP.DMG4.DDS'},
	---	suit
	{'UT_ENERGY',		'TECHNOLOGY/RENDER.CELL.BLUE.DDS'},
	{'UT_WATERENERGY',	'TECHNOLOGY/RENDER.CELL.BLUE.DDS'},
	{'UT_JET',			'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_JUMP',			'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_MIDAIR',		'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_WATERJET',		'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_WATER',		'TECHNOLOGY/RENDER.PROTECT.WATER.DDS'},
	{'UT_PROTECT',		'TECHNOLOGY/RENDER.PROTECT.BLUE.DDS'},
	{'T_SHIELD',		'TECHNOLOGY/RENDER.SHIELD.SUIT.DDS'},
	---	freighter
	{'F_TELEPORT',		'TECHNOLOGY/TECHNOLOGY.FLEET.TRADE.DDS'},
	{'F_HYPERDRIVE',	'SPECIALSHOP/SPECIAL1.FREIGHTJETS.GRAVITY.DDS'},
	{'F_MEGAWARP',		'U4PRODUCTS/PRODUCT.ROGUEKEY.DDS'},
	{'T_FR_TRADE',		'TECHNOLOGY/TECHNOLOGY.FLEET.TRADE1.DDS'},
	{'T_FR_HYP',		'TECHNOLOGY/RENDER.FREIGHTERHD.DDS'},
	{'F_HACCESS1',		'TECHNOLOGY/RENDER.FREIGHTER.GREEN.DDS'},
	{'F_HACCESS2',		'TECHNOLOGY/RENDER.FREIGHTER.RED.DDS'},
	{'F_HACCESS3',		'TECHNOLOGY/RENDER.FREIGHTER.BLUE.DDS'}
}
function tech_icons:GetExmlCT(T)
	for _,tch in ipairs(self) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', tch[1]},
			VALUE_CHANGE_TABLE 	= { {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/'..tch[2]} }
		}
	end
end

local charge_bys = {
	{id='SENT_LASER',		prd={'DRONE_SHARD', 'ROBOT2', 'ROBOT1'}, rpc=true},	-- full replace
	{id='PROTECT',			prd='POWERCELL'},									-- move to top
	{id='ENERGY',			prd='PRODFUEL2'},
	{id='T_RAD',			prd='POWERCELL'},
	{id='T_TOX',			prd='POWERCELL'},
	{id='T_COLDPROT',		prd='POWERCELL'},
	{id='T_HOTPROT',		prd='POWERCELL'},
	{id='T_UNW',			prd='PRODFUEL2'},
	{id='SHIPSHIELD',		prd='SHIPCHARGE'},
	{id='SUIT_ROCKET',		prd='LAUNCHFUEL',   new=true},						-- add new
	{id='F_MEGAWARP',		prd={'HYPERFUEL2'}, new=true, rpc=true, ctp='Fuel'},-- add new & replace category
	{id='SHIPSHIELD_ROBO',	prd='DRONE_SHARD'},
	{id='HYPERDRIVE_ROBO',	prd='DRONE_SHARD'},
	{id='MECH_MINER',		ctp='Metal'},
	{id='SUN_LASER',		ctp='Metal'},
}
function charge_bys:GetExmlCT(T)
	-- index for removing section (must come first)
	local inx = #T + 1
	T[inx] = {
		SKW		= {},
		REMOVE	= 'Section'
	}
	for _,crg in ipairs(self) do
		-- if rpc then replace the existing list
		if crg.rpc then
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', crg.id},
				PRECEDING_KEY_WORDS = 'ChargeBy',
				REMOVE				= crg.new and 'Line' or 'Section'
			}
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', crg.id},
				ADD					= ToExml(StringArray(crg.prd, 'ChargeBy', 10))
			}
		-- if prd item then move to top (delete then re-add)
		elseif crg.prd then
			if not crg.new then
				T[inx].SKW[#T[inx].SKW + 1] = {'ID', crg.id, 'Value', crg.prd}
			end
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', crg.id},
				PRECEDING_KEY_WORDS = 'ChargeBy',
				ADD					= ToExml({
					META	= {'value', 'NMSString0x10.xml'},
					Value	= crg.prd
				})
			}
		end
		-- if ctp then replace charge category
		if crg.ctp then
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'ID', crg.id},
				VALUE_CHANGE_TABLE 	= {
					{'SubstanceCategory', crg.ctp}
				}
			}
		end
	end
end

local replace_requirements = {
	{--	hijacked (sentinel) laser
		id	= 'SENT_LASER',
		req	= {
			{id='DRONE_SHARD',	n=2,	tp=IT_.PRD},
			{id='ROBOT2',		n=250,	tp=IT_.SBT},
			{id='TECH_COMP',	n=2,	tp=IT_.PRD}
		}
	},
	{--	runic lens (altas laser)
		id 	= 'ATLAS_LASER',
		req	= {
			{id='HEXCORE',		n=2,	tp=IT_.PRD},
			{id='ASTEROID3',	n=150,	tp=IT_.SBT},
			{id='TECH_COMP',	n=2,	tp=IT_.PRD}
		}
	},
	{--	environment control unit
		id	= 'MECH_PROT',
		req	= {
			{id='COMPUTER',		n=2,	tp=IT_.PRD},
			{id='SHIPCHARGE',	n=2,	tp=IT_.PRD},
			{id='TECH_COMP',	n=2,	tp=IT_.PRD}
		}
	},
	{--	pulsing heart
		id = 'SHIPJUMP_ALIEN',
		req	= {
			{id='GRAVBALL',		n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		}
	},
	{--	neural shielding
		id	= 'CARGO_S_ALIEN',
		req	= {
			{id='FIENDCORE',	n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		}
	},
	{--	chloroplast membrane
		id	= 'CHARGER_ALIEN',
		req	= {
			{id='FISHCORE',		n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		}
	},
	{--	wormhole brain
		id	= 'SHIPSCAN_ALIEN',
		req	= {
			{id='EYEBALL',		n=2,	tp=IT_.PRD},
			{id='SPACEGUNK2',	n=100,	tp=IT_.SBT}
		}
	}
}
function replace_requirements:GetExmlCT(T)
	-- index for removing section (must come first)
	local inx = #T + 1
	T[inx] = {
		SKW		= {},
		PKW		= 'Requirements',
		REMOVE	= 'Section'
	}
	for _,tech in ipairs(self) do
		T[inx].SKW[#T[inx].SKW + 1] = {'ID', tech.id}
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'ID', tech.id},
			ADD					= ToExml(GetRequirements(tech.req))
		}
	end
end

local ECT = {}
---	sections process order ---
for _,tm in ipairs({
	charge_amount,
	include_in_category,
	edit_rgb,
	fragment_cost,
	tech_icons,
	add_edit_stats,
	charge_bys,
	replace_requirements
}) do
	tm:GetExmlCT(ECT)
end

ECT[#ECT+1] = {
	SPECIAL_KEY_WORDS 	= {
		{'ID',	'PROTECT'},
		{'ID',	'ENERGY'},
		{'ID',	'JET1'},
		{'ID',	'SHIPJUMP1'},
		{'ID',	'LAUNCHER'},
		{'ID',	'HYPERDRIVE'},
		{'ID',	'SHIPSHIELD'},
		{'ID',	'LASER'},
		{'ID',	'VEHICLE_ENGINE'},
		{'ID',	'SUB_ENGINE'},
		{'ID',	'SHIPJUMP_ALIEN'},
		{'ID',	'LAUNCHER_ALIEN'},
		{'ID',	'WARP_ALIEN'},
		{'ID',	'SHIELD_ALIEN'},
		{'ID',	'SHIPGUN_ALIEN'},
		{'ID',	'SHIPLAS_ALIEN'},
		{'ID',	'LAUNCHER_SPEC'},
		{'ID',	'SHIPJUMP_SPEC'},
		{'ID',	'HYPERDRIVE_SPEC'},
		{'ID',	'SHIP_LIFESUP'},
		{'ID',	'MECH_ENGINE'},
		{'ID',	'SOLAR_SAIL'},
		{'ID',	'LAUNCHER_ROBO'},
		{'ID',	'SHIPJUMP_ROBO'},
		{'ID',	'HYPERDRIVE_ROBO'},
		{'ID',	'SHIPSHIELD_ROBO'},
		{'ID',	'LIFESUP_ROBO'},
		{'ID',	'SENT_LASER'},
		{'ID',	'ATLAS_LASER'},
		{'ID',	'F_HYPERDRIVE'},
		{'ID',	'F_LIFESUPP'}
	},
	VALUE_CHANGE_TABLE 	= {
		{'Core',		false}
	}
}
--- add new tech ---
ECT[#ECT+1] = {
	PRECEDING_KEY_WORDS	= 'Table',
	ADD					= ToExml({
		TechnologyEntry({-- vehicle stun cannon
			id				= 'VEHICLESTUN',
			name			= 'VEHICLESTUN_NAME',
			namelower		= 'VEHICLESTUN_NAME_L',
			subtitle		= 'VEHICLESTUN_SUB',
			description		= 'VEHICLESTUN_DESC',
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
		}),
		TechnologyEntry({-- bioship pulse engine upgrade
			id				= 'JUMP_U_ALIEN',
			name			= 'JUMP_U_ALIEN_NAME',
			namelower		= 'JUMP_U_ALIEN_NAME_L',
			subtitle		= 'UI_ALIENSHIP_TECH_SUB',
			description		= 'JUMP_U_ALIEN_DESC',
			icon			= 'TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/BIO/BIOTECH.HEART.U.DDS',
			color			= 'FF0A2E42',
			upgrade			= true,
			category		= 'AlienShip',
			rarity			= 'Impossible',
			value			= 7,
			fragmentcost	= 520,
			requirements	= {
				{id='ALIEN_TECHBOX',	n=2,	tp=IT_.PRD},
				{id='MIRROR',			n=3,	tp=IT_.PRD},
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
		}),
		TechnologyEntry({-- bioship shield upgrade
			id				= 'SHIELD_U_ALIEN',
			name			= 'SHIELD_U_ALIEN_NAME',
			namelower		= 'SHIELD_U_ALIEN_NAME_L',
			subtitle		= 'UI_ALIENSHIP_TECH_SUB',
			description		= 'SHIELD_U_ALIEN_DESC',
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
		})
	})
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE TECHNOLOGY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
