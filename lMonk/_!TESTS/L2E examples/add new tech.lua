----------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/table_entry.lua')
----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_TEST L2E add new tech.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
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
							{st='Vehicle_GunDamage',			bn=20,	lv=3},
							{st='Vehicle_GunHeatTime',			bn=1,	lv=1},
							{st='Vehicle_GunRate',				bn=0.5,	lv=1}
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
							{st='Ship_Armour_Shield_Strength',	bn=0.06, lv=3}
						}
					})
				})
			}
		}
	}
}}}}
