--------------------------------------------------------------------
local desc = [[
  Edit / add / remove stats
  Increase Charge Amounts for selected items
  Enable / share tech between vehicles & mech
  changes to weapon upgrades projectile color
  remove uninstall limitation for selected items
  edit tech recipe cost
  change icons
  Set powercell & life support gel as the default recharge choice
  add/edit tech requirenments
  Change mech terrain editor fuel to metal
]]------------------------------------------------------------------

local add_edit_stats = {
	{id='VEHICLE_GRIP1',	st='Vehicle_Grip',							bn=-0.4,	op='+'},		-- 3
	{id='VEHICLE_GRIP1',	st='Vehicle_SkidGrip',						bn=0.22,	op='+'},		-- 0.66
	{id='VEHICLE_ENGINE',	st='Vehicle_Grip',							bn=1.5,		op='+'},		-- 1
	{id='VEHICLE_ENGINE',	st='Vehicle_SkidGrip',						bn=-0.15,	op='+'},		-- 1
	{id='MECH_GUN',			st='Vehicle_GunDamage',						bn=80,		op='+'},		-- 340
	{id='MECH_GUN',			st='Vehicle_GunRate',						bn=0.35,	op='+'},		-- 0.35
	{id='MECH_ENGINE',		st='Vehicle_EngineFuelUse',					bn=0.2,		op='+'},		-- 0.5
	{id='MECH_SENT_L_ARM',	st='Vehicle_LaserDamage',					bn=40,		op='+'},		-- 50
	{id='BOLT',				st='Weapon_Projectile_Recoil',				bn=-10,		op='+'},		-- 200
	{id='UT_BOLT',			st='Weapon_Projectile_Recoil',				bn=-0.05,	op='+'},		-- 0.7
	{id='F_HYPERDRIVE',		st='Freighter_Hyperdrive_JumpDistance',		bn=10,		op='*'},		-- 100
	{id='F_HDRIVEBOOST1',	st='Freighter_Hyperdrive_JumpDistance',		bn=8,		op='*'},		-- 200
	{id='F_HDRIVEBOOST2',	st='Freighter_Hyperdrive_JumpDistance',		bn=6,		op='*'},		-- 300
	{id='F_HDRIVEBOOST3',	st='Freighter_Hyperdrive_JumpDistance',		bn=4,		op='*'},		-- 800
	{id='UT_SHIPSHIELD',	st='Ship_Armour_Shield_Strength',			bn=0.01,	op='+',	lv=1},	-- 0.05
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_Damage',				bn=2000,	op='+'},		-- 6500
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_Rate',				bn=-0.5,	op='+'},		-- 1
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_CoolTime',			bn=-2,		op='+'},		-- 10
	{id='SHIPROCKETS',		st='Ship_Weapons_Guns_HeatTime',			bn=1,		op='+'},		-- 0
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_CoolTime',			bn=-0.3,	op='+'},		-- 0.8
	{id='UT_SHIPSHOT',		st='Ship_Weapons_Guns_Dispersion',			bn=-0.2,	op='+'},		-- 0.8
	{id='SHIP_TELEPORT',	st='Ship_Teleport',							bn=32,		op='*'},		-- 100
	{id='SHIPJUMP_SPEC',	st='Ship_Maneuverability'},												-- remove
	{id='SHIPJUMP_SPEC',	st='Ship_Maneuverability',					bn=0.05,	op='+'},		-- bug fix
	{id='SHIPJUMP_SPEC',	st='Ship_BoostManeuverability',				bn=-0.18,	op='+'},		-- 1.25
	{id='SHIPJUMP_SPEC',	st='Ship_Boost',							bn=-8,		op='+'},		-- 120
	{id='SHIPJUMP_SPEC',	st='Ship_PulseDrive_MiniJumpSpeed',			bn=0.24,	op='+'},		-- 1
	{id='PHOTONIX_CORE',	st='Ship_Maneuverability'},
	{id='SOLAR_SAIL',		st='Ship_PulseDrive_MiniJumpFuelSpending',	bn=0.4,		op='+'},		-- 0.2
	{id='SHIPMINIGUN',		st='Ship_Weapons_Guns_Damage_Radius',		bn=1,		op='+'},		-- 3
	{id='UT_WATER',			st='Suit_Protection_WaterDrain',			bn=0.2,		op='+'},		-- 1.33

	{id='UT_JUMP',			st='Suit_Jetpack_WaterEfficiency',			bn=1},
	{id='UT_SHOT',			st='Weapon_FireDOT_Duration',				bn=4,		lv=1},
	{id='UT_SHOT',			st='Weapon_FireDOT_DPS',					bn=200,		lv=1},
	{id='UT_SHOT',			st='Weapon_FireDOT',						bn=1,		lv=4},
	{id='STRONGLASER',		st='Weapon_Laser_Damage',					bn=3},
	{id='UT_MINER',			st='Weapon_Laser_Damage',					bn=4},
	{id='UT_RAIL_STUN',		st='Weapon_Laser_Damage',					bn=200},
	{id='VEHICLE_ENGINE',	st='Vehicle_FuelRegen',						bn=3,		lv=1},
	{id='SUB_RECHARGE',		st='Vehicle_FuelRegen',						bn=3},
	{id='MECH_ENGINE',		st='Vehicle_FuelRegen',						bn=3,		lv=1},
	{id='MECH_SENT_L_ARM',	st='Vehicle_LaserStrongLaser',				bn=1},
	{id='PHOTONIX_CORE',	st='Ship_Launcher_AutoCharge',				bn=1,		lv=1},
	{id='PHOTONIX_CORE',	st='Ship_PulseDrive_MiniJumpSpeed',			bn=1.3,		lv=3},
	{id='SOLAR_SAIL',		st='Ship_PulseDrive_MiniJumpSpeed',			bn=1.22},
	{id='SHIPSCAN_ECON',	st='Ship_Scan_ConflictFilter',				bn=1,		lv=1},
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_HeatTime',			bn=1.2},
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_Range',				bn=1.1,		lv=1},
	{id='UT_ROCKETS',		st='Ship_Weapons_Guns_Damage',				bn=3200,	lv=2},
	{id='SHIPGUN1',			st='Ship_Weapons_ShieldLeech',				bn=0.18,	lv=1},
	{id='UT_SHIPGUN',		st='Ship_Weapons_ShieldLeech',				bn=0.08,	lv=3},
	{id='F_MEGAWARP',		st='Freighter_Hyperdrive',					bn=1,		lv=1},
	{id='F_MEGAWARP',		st='Freighter_Hyperdrive_JumpDistance',		bn=1000,	lv=1}
}
function add_edit_stats:GetExmlCT()
	local T = {}
	T[1] = {
		FOREACH_SKW_GROUP	= {},
		SECTION_UP			= 1,
		REMOVE				= 'Section'
	}
	for _,x in ipairs(self) do
		if x.op then
			--- edit ---
			table.insert(T, {
				MATH_OPERATION 		= x.op,
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'ID', x.id, 'Stat', 'GcStatsTypes.xml',  'StatsType', x.st},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', x.bn},
					{'Level', x.lv or (x.op == '*' and 1 or 0)}
				}
			})
		elseif x.bn then
			--- add new ---
			table.insert(T, {
				ADD = [[
					<Property value="GcStatsBonus.xml">
						<Property name="Stat" value="GcStatsTypes.xml">
							<Property name="StatsType" value="]]..x.st..[["/>
						</Property>
						<Property name="Bonus" value="]]..x.bn..[["/>
						<Property name="Level" value="]]..(x.lv or 0)..[["/>
					</Property>
				]],
				SPECIAL_KEY_WORDS	= {'ID', x.id},
				PRECEDING_KEY_WORDS	= 'StatBonuses'
			})
		else
			--- remove ---
			table.insert(T[1].FOREACH_SKW_GROUP,
				{'ID', x.id, 'Stat', 'GcStatsTypes.xml',  'StatsType', x.st}
			)
		end
	end
	return T
end

local charge_capacity = {
	{'SHIPJUMP1',		1.5},
	{'SHIPJUMP_SPEC',	1.5},
	{'SHIPJUMP_ALIEN',	1.5},
	{'LAUNCHER',		1.5},
	{'LAUNCHER_SPEC',	1.5},
	{'LAUNCHER_ALIEN',	1.5},
	{'F_HYPERDRIVE',	4},
	{'LASER',			2},
	{'TERRAINEDITOR',	3},
	{'RAILGUN',			4},
	{'GRENADE',			1.5},
	{'STUN_GREN',		1.5},
	{'SUN_LASER',		8},
	{'CANNON',			0.6},
	{'STEALTH',			6},
	{'T_UNW',			4},
	{'T_RAD',			3},
	{'T_TOX',			3},
	{'T_COLDPROT',		3},
	{'T_HOTPROT',		3},
	{'VEHICLE_ENGINE',	1.2},
	{'VEHICLE_LASER',	1.4},
	{'SUB_ENGINE',		2},
	{'SUB_LASER',		1.4},
	{'MECH_LASER',		2},
	{'MECH_MINER',		8},
	{'MECH_GUN',		1.4}
}
function charge_capacity:GetExmlCT()
	local T = {}
	for _,x in ipairs(self) do
		table.insert(T, {
			INTEGER_TO_FLOAT	= 'Preserve',
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			VALUE_CHANGE_TABLE 	= { {'ChargeAmount', x[2]} }
		})
	end
	return T
end

local include_in_category = {
	{'SHIP_TELEPORT',	'Ship',		'AllShips'},
	{'VEHICLE_SCAN1',	'Exocraft',	'AllVehicles'},
	{'VEHICLE_SCAN2',	'Exocraft',	'AllVehicles'},
	{'MECH_PROT',		'Mech',		'AllVehicles'}
}
function include_in_category:GetExmlCT()
	local T = {}
	for _,x in ipairs(self) do
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'ID', x[1], 'TechnologyCategory', x[2]},
			VALUE_CHANGE_TABLE 	= { {'TechnologyCategory', x[3]} }
		})
	end
	return T
end

local edit_rgb = {
	{'UT_BOLT', 		0.88,	0.94,	0.2},
	{'UT_RAIL',			0.74,	0.1,	0.16},
	{'UT_SHIPLAS',		0.12,	0.1,	0.62},
	{'UT_SHIPGUN',		0.01,	0.88,	0.1},
	{'UT_SMG',			0.92,	0.12,	0.82},
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
function edit_rgb:GetExmlCT()
	local T = {}
	T[1] = {
	--- background color ---
		FOREACH_SKW_GROUP	= {},
		INTEGER_TO_FLOAT	= 'Force',
		PRECEDING_KEY_WORDS	= 'Colour',
		VALUE_CHANGE_TABLE 	= {
			{'R', 0.0353}, {'G', 0.361}, {'B', 0.467}
		}
	}
	for _,x in ipairs(self) do
		if #x < 2 then
			table.insert(T[1].FOREACH_SKW_GROUP, {'ID', x[1]})
		else
	--- upgrade color ---
			table.insert(T, {
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'ID', x[1]},
				PRECEDING_KEY_WORDS	= 'UpgradeColour',
				VALUE_CHANGE_TABLE 	= {
					{'R', x[2]}, {'G', x[3]}, {'B', x[4]}
				}
			})
		end
	end
	return T
end

local fragment_cost = {
	{'FLAME',			420},
	{'SOLAR_SAIL',		780},
	{'PHOTONIX_CORE',	780},
	{'SHIP_LIFESUP',	580},
	{'SHIPJUMP_SPEC',	980},
	{'LAUNCHER_SPEC',	980},
	{'HYPERDRIVE_SPEC',	980},
	{'SHIPJUMP_ALIEN',	160},
	{'LAUNCHER_ALIEN',	160},
	{'WARP_ALIEN',		160},
	{'SHIELD_ALIEN',	160},
	{'SHIPGUN_ALIEN',	160},
	{'SHIPLAS_ALIEN',	160}
}
function fragment_cost:GetExmlCT()
	local T = {}
	for _,x in ipairs(self) do
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			VALUE_CHANGE_TABLE 	= { {'FragmentCost', x[2]} }
		})
	end
	return T
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
	{'UT_SHIPGUN',		'TECHNOLOGY/RENDER.SHIPPHOTONMOD.DDS'},
	{'UT_SHIPMINI',		'TECHNOLOGY/RENDER.PHOTONACCEL.BLUE1.DDS'},
	{'T_SHIPSHLD',		'TECHNOLOGY/RENDER.SHIELDMOD.DDS'},
	{'UT_SHIPSHIELD',	'TECHNOLOGY/RENDER.SHIELD.RED2.DDS'},
	{'SHIPSCAN_ECON',	'TECHNOLOGY/RENDER.FREIGHTERSCANNER.DDS'},
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
	{'BOLT_SM',			'TECHNOLOGY/RENDER.BOLT.BLUE.DDS'},
	{'UT_BOLT',			'TECHNOLOGY/RENDER.BOLT.BLUE.DDS'},
	{'UT_BOLTBOUNCE',	'TECHNOLOGY/RENDER.RICOCHET.DDS'},
	{'UT_SURVEY',		'TECHNOLOGY/RENDER.BINOCULARS2.DDS'},
	{'UT_SHOT',			'TECHNOLOGY/RENDER.SCATTER.GREEN.DDS'},
	{'UT_SMG',			'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS'},
	{'UT_SMGBOUNCE',	'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS'},
	{'UT_SMG_DOT',		'TECHNOLOGY/RENDER.SPITTER.GREEN.DDS'},
	{'UT_RAIL',			'TECHNOLOGY/RENDER.BLAZEJAVELIN.BLUE.DDS'},
	{'UT_CANNON',		'TECHNOLOGY/RENDER.CANNON.GREEN.DDS'},
	{'UT_RAIL_STUN',	'TECHNOLOGY/RENDER.BLAZEJAVELIN.BLUE.DDS'},
	{'UT_SCAN',			'TECHNOLOGY/RENDER.SCAN.RED.DDS'},
	---	suit
	{'UT_ENERGY',		'TECHNOLOGY/RENDER.CELL.BLUE.DDS'},
	{'UT_WATERENERGY',	'TECHNOLOGY/RENDER.CELL.BLUE.DDS'},
	{'UT_JET',			'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_JUMP',			'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_MIDAIR',		'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_WATERJET',		'TECHNOLOGY/RENDER.JETPACK.MOD.DDS'},
	{'UT_WATER',		'TECHNOLOGY/RENDER.PROTECT.WATER.DDS'},
	{'UT_PROTECT',		'TECHNOLOGY/RENDER.PROTECT.BLUE.DDS'},
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
function tech_icons:GetExmlCT()
	local T = {}
	for _,x in ipairs(self) do
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			VALUE_CHANGE_TABLE 	= { {'Filename', 'TEXTURES/UI/FRONTEND/ICONS/'..x[2]} }
		})
	end
	return T
end

local charge_to_top = {
	{'PROTECT',		'POWERCELL'},
	{'ENERGY',		'PRODFUEL2'},
	{'T_RAD',		'POWERCELL'},
	{'T_TOX',		'POWERCELL'},
	{'T_COLDPROT',	'POWERCELL'},
	{'T_HOTPROT',	'POWERCELL'},
	{'T_UNW',		'PRODFUEL2'},
	{'SHIPSHIELD',	'SHIPCHARGE'}
}
function charge_to_top:GetExmlCT()
	local T = {}
	T[1] = {
		FOREACH_SKW_GROUP	= {},
		REMOVE				= 'Section'
	}
	for _,x in ipairs(self) do
		table.insert(T[1].FOREACH_SKW_GROUP, {'ID', x[1], 'Value', x[2]})
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'ID', x[1]},
			PRECEDING_KEY_WORDS = 'ChargeBy',
			ADD					= [[
				<Property value="NMSString0x10.xml">
					<Property name="Value" value="]]..x[2]..[["/>
				</Property>
			]]
		})
	end
	return T
end

local replace_requirements = {
	{
	---	environment control unit
		id = 'MECH_PROT',
		{'COMPUTER',	2,	'P'},
		{'SHIPCHARGE',	2,	'P'},
		{'TECH_COMP',	2,	'P'}
	},{
	---	pulsing heart
		id = 'SHIPJUMP_ALIEN',
		{'GRAVBALL',	2,	'P'},
		{'SPACEGUNK2',	100,'S'}
	},{
	---	neural shielding
		id = 'CARGO_S_ALIEN',
		{'FIENDCORE',	2,	'P'},
		{'SPACEGUNK2',	100,'S'}
	},{
	---	chloroplast membrane
		id	= 'CHARGER_ALIEN',
		{'FISHCORE',	2,	'P'},
		{'SPACEGUNK2',	100,'S'}
	},{
	---	wormhole brain
		id = 'SHIPSCAN_ALIEN',
		{'EYEBALL',		2,	'P'},
		{'SPACEGUNK2',	100,'S'}
	}
}
function replace_requirements:GetExmlCT()
	local function BuildReqs(x)
		local exml = ''
		local requirement = [[
			<Property value="GcTechnologyRequirement.xml">
				<Property name="ID" value="%s"/>
				<Property name="Amount" value="%s"/>
				<Property name="InventoryType" value="GcInventoryType.xml">
					<Property name="InventoryType" value="%s"/>
				</Property>
			</Property>
		]]
		for _,p in ipairs(x) do
			exml = exml..string.format(requirement, p[1], p[2],
				(p[3] == 'S' and 'Substance' or 'Product')
			)
		end
		return '<Property name="Requirements">'..exml..'</Property>'
	end
	local T = {}
	T[1] = {
		FOREACH_SKW_GROUP	= {},
		PRECEDING_KEY_WORDS	= 'Requirements',
		REMOVE				= 'Section'
	}
	for _,x in ipairs(self) do
		table.insert(T[1].FOREACH_SKW_GROUP, {'ID', x.id})
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'ID', x.id},
			ADD					= BuildReqs(x)
		})
	end
	return T
end

local source_table_tech = 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE TECHNOLOGY.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_table_tech,
		EXML_CHANGE_TABLE	= (
			function()
				local T = {}
				for _,tm in ipairs({
					charge_capacity,
					include_in_category,
					edit_rgb,
					fragment_cost,
					tech_icons,
					add_edit_stats,
					charge_to_top,
					replace_requirements
				}) do
					for _,tv in ipairs(tm:GetExmlCT()) do table.insert(T, tv) end
				end
				return T
			end
		)()
	},
	{
		MBIN_FILE_SOURCE	= source_table_tech,
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'ID', 'MECH_MINER'},
					{'ID', 'SUN_LASER'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'SubstanceCategory', 'Metal'}	-- Fuel
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'ID', 'PROTECT'},
					{'ID', 'JET1'},
					{'ID', 'SHIPJUMP1'},
					{'ID', 'LASER'},
					{'ID', 'LAUNCHER'},
					{'ID', 'HYPERDRIVE'},
					{'ID', 'SHIPSHIELD'},
					{'ID', 'SHIPGUN1'},
					{'ID', 'F_HYPERDRIVE'},
					{'ID', 'SHIPJUMP_ALIEN'},
					{'ID', 'WARP_ALIEN'},
					{'ID', 'LAUNCHER_ALIEN'},
					{'ID', 'SHIELD_ALIEN'},
					{'ID', 'SHIPGUN_ALIEN'},
					{'ID', 'SHIPLAS_ALIEN'},
					{'ID', 'MECH_FUEL'},
					{'ID', 'SHIPJUMP_SPEC'},
					{'ID', 'LAUNCHER_SPEC'},
					{'ID', 'HYPERDRIVE_SPEC'},
					{'ID', 'SHIP_LIFESUP'},
					{'ID', 'SHIPJUMP_ALIEN'},
					{'ID', 'LAUNCHER_ALIEN'},
					{'ID', 'WARP_ALIEN'},
					{'ID', 'SHIELD_ALIEN'},
					{'ID', 'SHIPGUN_ALIEN'},
					{'ID', 'SHIPLAS_ALIEN'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'Core',		false}
				}
			}
		}
	}
}}}}
