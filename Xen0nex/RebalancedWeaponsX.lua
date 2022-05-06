ModName = "Rebalanced WeaponsX"
GameVersion = "3_87"

--Global Damage multipliers for convenience to apply to all player weapons of that category (stacks multiplicatively with the individual weapons adjustments below)
GMD = 										1					--1		For all player Multi-Tool weapon damage	(Except for Mining Laser, as changing those values will affect mining speed)
GXD = 										1					--1		For all player Exocraft/Minotaur/Nautilon weapon damage	(Except for the Mining Lasers, as changing those values will affect mining speed)
GSD = 										1					--1		For all player Starship weapon damage

--Damage multiplier for Explosions against items designated as OBJECTS
	-- (can't mine rocks & plants with ship weapons or explosions, other than an insignificant trickle with the Phase Beam)
ExplosionObjectMult = 0										--1

--Damage multiplier for Lasers against items designated as CREATURES / ROBOTS
LaserCreatureMult = 0.25									--1
VehicleLaserCreatureMult = 0.25								--1

LaserSentinelMult = 0.25									--0.6
VehicleLaserSentinelMult = 0.25								--0.2

	--WIP
--Damage multipliers against DOORs and DEPOTs
ShipWeaponDoorMult = 0.1								--1
VehicleGunDoorMult = 0.1								--1
VehicleLaserDoorMult = 0								--1

ShipWeaponDepotMult = 0.1								--1
VehicleGunDepotMult = 0.1								--1
VehicleLaserDepotMult = 0								--1

--Damage multipliers for starship weapons against shields or hulls
ShipWeaponEffectiveness =
{	--Weapontype			vs. Hull	vs. Shield
	{"ShipGun",				1,			1},					--1,			1
	{"ShipLaser",			0.8,		1.2},				--1,			1
	{"ShipShotgun",			1,			0.33},				--1,			0.33
	{"ShipMinigun",			1.2,		0.8},				--1.5,			1
	{"ShipRockets",			1.2,		0.4},				--1.5,			0.2
	{"ShipPlasma",			0.2,		1.4},				--0.2,			1.6
}

--How many shots you get before needing to recharge with Unstable Plasma
PlasmaLauncherCharge =						16					--20
GeologyCannonCharge =						12					--20
ParalysisMortarCharge =						8					--20
MechStunWeaponCharge =						30					--400			(Amount of charge for the recharge bar of the Mech Sentinel Right Arm which stuns)
MechStunWeaponChargeMultiplier =			0.1					--1				???

--Misc Weapon adjustments
MechStunWeaponRadius =						4					--5				AOE Radius of minotaur stun weapon shots
MechStunWeaponDuration =					3					--3				Duration in seconds of minotaur stun weapon effect
MechStunWeaponFireDOT =						80					--80			Fire DOT of minotaur stun weapon
MechStunWeaponFireDuration =				3					--3				Duration in seconds of minotaur stun weapon Fire DOT

PhaseBeamLeechAmountMult =					0.5					--				Multiplier to apply to the Shield Leech amount for Phase Beam, and the bonus from Fourier De-Limiter (0.2 and 0.1 in vanilla)
LivingShipBeamLeechAmount = 				0.1					--0				By default Living Ships laser beams don't leech shields like regular ship Phase Beams do
PhaseBeamUpgradesHeatMult =					0.25				--				Multiplier to apply to the bonus heat time for Phase Beam upgrades (1.1 ~ 2 for Class C ~ X)
LivingShipBeamUpgradesHeatMult =			0.25				--				Multiplier to apply to the bonus heat time for Gazing Eye upgrades (1.1 ~ 1.95 for Class C ~ S)

CyclotronUpgradesHeatMult =					0.75				--				Multiplier to apply to the bonus heat time for Cyclotron Ballista upgrades (1.1 ~ 1.4 for Class C ~ X)

--Multipliers to apply to the base damage for various player weapons (Also will be applied to upgrade modules for that weapon)  Stacks multiplicatively with the Global Damage Multipliers above
PlasmaLauncherDMG =							1.0					--500
GeologyCannonDMG =							1.0					--1000
BlazeJavelinDMG =							3.0					--1500			(500 theoretical sustained DPS)					(large DMG multiplier but also longer charge time below to make it possible with enough upgrades on a good enough Multii-Tool to one-shot both unarmored Drones and Repair Drones with the edited "Savage Sentinels" mod)
BoltcasterDMG =								1.0					--180			(1,350 theoretical burst DPS)
ScatterBlasterDMG =							0.8					--150 x 8		(2,640 theoretical burst DPS)
PulseSpitterDMG =							1.0					--96 x 2		(1,536 theoretical burst DPS)
NeutronCannonDMG =							1.1					--100			(Uncharged)

ExocraftCannonDMG =							1.0					--320			(160 theoretical sustained DPS, plus explosions with AOE???)
NautilonCannonDMG =							1.0					--220			(110 theoretical sustained DPS, plus explosions with AOE???)
MinotaurCannonDMG =							1.0					--420			(147 theoretical sustained DPS, plus explosions with AOE???)

PhaseBeamDMG =								1.0					--250
LivingShipBeamDMG =							1.0					--250
PhotonCannonDMG =							0.9					--320			(2,400 theoretical burst DPS)
LivingShipCannonDMG =						1.0					--320			(3,200 theoretical burst DPS)
RocketsDMG =								1.1					--6500
PositronEjectorDMG =						0.67				--280 x 14		(7,840 theoretical burst DPS)
InfraKnifeDMG =								1.0					--160 x 1		(1,845 theoretical burst DPS)
CyclotronDMG =								1.0					--600 x 2		(3,600 theoretical burst DPS)

--Multipliers to apply to other stats for various weapons
	--There are other attributes that can be added to these tables in order to change them, such as bullets fired per round, max burstfire amount, cooldown time between bursts, etc.
WeaponStatChanges =
{
	{
		{
			"GRENADE"			--Plasma Launcher
		},
		{
			{
				"Weapon_Grenade_Damage",	PlasmaLauncherDMG*GMD	--500
			},
			{
				"Weapon_Grenade_Radius",	1					--2
			},
			{
				"Weapon_FireDOT_Duration",	1					--5
			},
			{
				"Weapon_FireDOT_DPS",		1					--50
			}
		}
	},
	{
		{
			"TERRAIN_GREN"			--Geology Cannon
		},
		{
			{
				"Weapon_Grenade_Damage",	GeologyCannonDMG*GMD	--1000
			},
			{
				"Weapon_Grenade_Radius",	1					--2
			}
		}
	},
	{
		{
			"STUN_GREN"			--Paralysis Mortar
		},
		{
			{
				"Weapon_Grenade_Radius",	0.75				--4
			},
			{
				"Weapon_Stun_Duration",		0.6					--3.5
			}
		}
	},
	{
		{
			"RAILGUN"		--Blaze Javelin
		},
		{
			{
				"Weapon_Laser_Damage",	BlazeJavelinDMG*GMD	--1500
			},
			{
				"Weapon_Laser_ChargeTime",	1.34			--3
			},
			{
				"Weapon_Laser_HeatTime",	1				--0.2
			},
			{
				"Weapon_Laser_Drain",	1					--2
			},
			{
				"Weapon_Laser_Recoil",	1					--20
			},
			{
				"Weapon_Laser_ReloadTime",	1				--2.5
			}
		}
	},
	{
		{
			"UT_RAIL"		--Mass Accelerator upgrade for Blaze Javelin
		},
		{
			{
				"Weapon_Laser_Damage",	BlazeJavelinDMG*GMD	--200 added damge
			}
		}
	},
	{
		{
			"UT_RAIL_STUN"		--Waveform Oscillator upgrade for Blaze Javelin
		},
		{
			{
				"Weapon_Stun_Duration",		0.2				--5 seconds
			}
		}
	},
	{
		{
			"BOLT"			--Boltcaster
		},
		{
			{
				"Weapon_Projectile_Damage",	BoltcasterDMG*GMD	--180		(1,350 theoretical burst DPS)
			},
			{
				"Weapon_Projectile_Rate",	1					--7.5
			},
			{
				"Weapon_Projectile_Range",	1					--300
			},
			{
				"Weapon_Projectile_Dispersion",	1				--1
			},
			{
				"Weapon_Projectile_Recoil",	1
			},
			{
				"Weapon_Projectile_ReloadTime",	1				--0.8
			}
		}
	},
	{
		{
			"SHOTGUN"		--Scatter Blaster
		},
		{
			{
				"Weapon_Projectile_Damage",	ScatterBlasterDMG*GMD	--150 x 8		(2,640 theoretical burst DPS)
			},
			{
				"Weapon_Projectile_Rate",	1					--2.2
			},
			{
				"Weapon_Projectile_Range",	0.4					--55
			},
			{
				"Weapon_Projectile_Dispersion",	2				--10
			},
			{
				"Weapon_Projectile_Recoil",	1
			},
			{
				"Weapon_Projectile_ReloadTime",	1.2				--1.5
			}
		}
	},
	{
		{
			"SMG"			--Pulse Spiiter
		},
		{
			{
				"Weapon_Projectile_Damage",	PulseSpitterDMG*GMD	--96 x 2		(1,536 theoretical burst DPS)
			},
			{
				"Weapon_Projectile_Rate",	1					--8
			},
			{
				"Weapon_Projectile_Range",	1					--300
			},
			{
				"Weapon_Projectile_Dispersion",	1				--6
			},
			{
				"Weapon_Projectile_Recoil",	1
			},
			{
				"Weapon_Projectile_ReloadTime",	1				--1
			}
		}
	},
	{
		{
			"CANNON"			--Neutron Cannon
		},
		{
			{
				"Weapon_Projectile_Damage",	NeutronCannonDMG*GMD	--100	(Uncharged)
			},
			{
				"Weapon_Projectile_MinimumCharge",	1			--1
			},
			{
				"Weapon_Projectile_MaximumCharge",	1			--6
			},
			{
				"Weapon_Projectile_Range",	1					--800
			},
			{
				"Weapon_Projectile_Dispersion",	1				--4
			},
			{
				"Weapon_Projectile_Recoil",	1					--1600
			},
			{
				"Weapon_ChargedProjectile_ChargeTime",	1		--1
			}
		}
	},
	{
		{
			"VEHICLE_GUN"				--Exocraft Cannon
		},
		{
			{
				"Vehicle_GunDamage",	ExocraftCannonDMG*GXD	--320		(160 theoretical sustained DPS, plus explosions with AOE???)
			},
			{
				"Vehicle_GunRate",	1							--0.5		
			}
		}
	},
	{
		{
			"SUB_GUN"					--Nautilon Cannon
		},
		{
			{
				"Vehicle_GunDamage",	NautilonCannonDMG*GXD	--220		(110 theoretical sustained DPS, plus explosions with AOE???)
			},
			{
				"Vehicle_GunRate",	1							--0.5		
			}
		}
	},
	{
		{
			"MECH_GUN"					--Minotaur Cannon
		},
		{
			{
				"Vehicle_GunDamage",	MinotaurCannonDMG*GXD	--420		(147 theoretical sustained DPS, plus explosions with AOE???)
			},
			{
				"Vehicle_GunRate",	1							--0.35		
			}
		}
	},
	{
		{
			"MECH_SENT_L_ARM"			--Sentinel Hardframe Left Arm		(Buffs Minotaur Laser and adds Laser damage bonus to stunned enemies)
		},
		{
			{
				"Weapon_Stun_Damage_Multiplier",	1			--5
			},
			{
				"Vehicle_LaserDamage",		1					--50		additional damage per tick for the Minotaur Laser
			},
			{
				"Weapon_FireDOT_Duration",	1					--3.5 seconds
			},
			{
				"Weapon_FireDOT_DPS",		1					--80
			}
		}
	},
	{
		{
			"SHIPLAS1"			--Phase Beam
		},
		{
			{
				"Ship_Weapons_Lasers_Damage",	PhaseBeamDMG*GSD		--250
			},
			{
				"Ship_Weapons_Lasers_HeatTime",	1					--2.5		[1.5]
			},
			{
				"Ship_Weapons_ShieldLeech",	PhaseBeamLeechAmountMult	--0.2
			}
		}
	},
	{
		{
			"UT_SHIPLAS"			--FOURIER DE-LIMITER for Phase Beam
		},
		{
			{
				"Ship_Weapons_Lasers_HeatTime",	1					--1.1		(Means a 10% increase)
			},
			{
				"Ship_Weapons_ShieldLeech",	PhaseBeamLeechAmountMult	--0.1
			}
		}
	},
	{
		{
			"SHIPLAS_ALIEN"		--Living Ship Phase Beam equivalent
		},
		{
			{
				"Ship_Weapons_Lasers_Damage",	LivingShipBeamDMG*GSD	--250
			},
			{
				"Ship_Weapons_Lasers_HeatTime",	1					--3.5
			}
		}
	},
	{
		{
			"SHIPGUN1"			--Photon Cannon
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	PhotonCannonDMG*GSD	--320		(2,400 theoretical burst DPS)
			},
			{
				"Ship_Weapons_Guns_Rate",	1					--7.5
			},
			{
				"Ship_Weapons_Guns_Range",	1					--1500
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1				--0
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1				--7.5
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1				--1
			}
		}
	},
	{
		{
			"SHIPGUN_ALIEN"			--Living Ship Photon Cannon equivalent?
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	LivingShipCannonDMG*GSD	--320		(3,200 theoretical burst DPS)
			},
			{
				"Ship_Weapons_Guns_Rate",	1					--10
			},
			{
				"Ship_Weapons_Guns_Range",	1					--1500
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1				--0
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1				--7.5
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1				--1
			}
		}
	},
	{
		{
			"SHIPROCKETS"			--Rockets
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	RocketsDMG*GSD	--6500
			},
			{
				"Ship_Weapons_Guns_Rate",	1					--1
			},
			{
				"Ship_Weapons_Guns_Range",	1					--5000
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1				--0
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1				--0
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1				--10
			}
		}
	},
	{
		{
			"SHIPSHOTGUN"			--Positron Ejector
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	PositronEjectorDMG*GSD	--280 x 14	[20]	(7,840 theoretical burst DPS)	[16,800]
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	1.5			--14		[20]
			},
			{
				"Ship_Weapons_Guns_Rate",	1					--2			[3]
			},
			{
				"Ship_Weapons_Guns_Range",	0.6					--500
			},
			{
				"Ship_Weapons_Guns_Dispersion",	2				--10
			},
			{
				"Ship_Weapons_Guns_HeatTime",	0.67			--1.5		[0.75]
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1				--1
			}
		}
	},
	{
		{
			"SHIPMINIGUN"					--Infra-Knife Accelerator
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	InfraKnifeDMG*GSD	--205 x 1	[160 x 2]		(1,845 theoretical burst DPS)	[4,800]
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	2			--1		[2]
			},
			{
				"Ship_Weapons_Guns_Rate",	1					--9		[15]
			},
			{
				"Ship_Weapons_Guns_Range",	1					--2200	[2000]
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1				--0.5		[0]
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1.33			--3		[4]
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1				--1
			}
		}
	},
	{
		{
			"SHIPPLASMA"					--Cyclotron Ballista
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	CyclotronDMG*GSD	--600 x 2		(3,600 theoretical burst DPS)	[4,800]
			},
			{
				"Ship_Weapons_Guns_Rate",	1					--3		[4]
			},
			{
				"Ship_Weapons_Guns_Range",	1					--1250	[1500]
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1				--1		[2]
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1				--2		[1]
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1				--1
			}
		}
	}
}

--Adjusts some cooling / aiming traits for starship weapons
WeaponCoolAim =
{								--	AutoAimAngle				OverheatCoolTime
	{--Phase Beam & LS version					AutoAimExtraAngle			CoolRate
		"SHIPLASER",				0,			0,				2.5,		0.68	--0,	0,			2,		0.9			[2,	0.5]
	},
	{--Photon Cannon & LS version
		"SHIPGUN",					4,			15,				5,			0.3		--3,	15,			4,		0.4			[4,	0.2]
	},
	{--Positron Ejector
		"SHIPSHOTGUN",				2,			15,				1.5,		0.09	--3,	15,			1.5,	0.09		[1.5,	0.09]
	},
	{--Infra-Knife Accelerator
		"SHIPMINIGUN",				3,			15,				7,			0.9		--3,	15,			1,		1.2			[8,	0.8]
	},
	{--Cyclotron Ballista
		"SHIPPLASMAGUN",			4,			15,				2,			0.3		--5,	15,			1.5,	0.4			[1.5,	0.2]
	},
	{--Rockets
		"SHIPROCKET",				5,			15,				6,			0.2		--5,	15,			5,		0.2			[5,	0.2]
	},
}

--Multipliers to apply to the damage that NPC Starship/Freighter weapons do to other NPCs (not to the player). Applies to both enemy & ally NPCs.
NPCStarshipDamageMults =
{
	--Space Guns
	{"TRADERGUN",			3},									--40	DefaultDamage
	{"POLICEGUN",			10},								--15	DefaultDamage		(Sentinel starships)
	{"AISHIPGUN",			10},								--15	DefaultDamage		(Most NPC Starships)
	{"FREIGHTGUN",			10},								--15	DefaultDamage
	{"COP_FREIGHTGUN",		2},									--300	DefaultDamage		(Sentinel Freighters?)
	--{"BOUNTYGUN1",			2},									--200	DefaultDamage		Removed in NMS v3.85
	--{"BOUNTYGUN2",			2},									--400	DefaultDamage		Removed in NMS v3.85
	--{"BOUNTYGUN3",			2},									--800	DefaultDamage		Removed in NMS v3.85
	{"BASE_TURRET_M",		2},									--200	DefaultDamage
	{"BASE_TURRET_M",		2},									--200	DefaultDamage
	{"PIRATERAIDGUN",		10},								--15	DefaultDamage		(Maybe pirates attacking buildings ???)
	{"SQUADGUN",			3},									--40	DefaultDamage		(Maybe your wingmen ???)
	
	--Space Laser Beams
	{"AI_SHIP",				10},								--9		DefaultDamage		(Most NPC Starships)
	{"AI_FREIGHTER",		10},								--15	DefaultDamage
	{"COP_FREIGHTER",		20},								--15	DefaultDamage		(Sentinel Freighters?)
	{"BASE_TURRET_L",		2},									--100	DefaultDamage
}

--Multipliers to apply to the projectile speeds for player or enemy weapons. 
	--There are other attributes that can be added to these tables in order to change them
WeaponSpeedChanges =
{
	{
		{
			"SHIPGUN"								--Photon Cannon
		},
		{
			{
				"DefaultSpeed",	1.0					--3200
			}
		}
	},
	{
		{
			"SHIPSHOTGUN"							--Positron Ejector
		},
		{
			{
				"DefaultSpeed",	1.0					--2000
			}
		}
	},
	{
		{
			"SHIPMINIGUN"							--Infra-Knife Accelerator
		},
		{
			{
				"DefaultSpeed",	1.5					--1800
			}
		}
	},
	{
		{
			"SHIPPLASMAGUN"							--Cyclotron Ballista
		},
		{
			{
				"DefaultSpeed",	1.0					--1000		[500]
			},
			{
				"TotalDuration",	1.0				--4 second duration of slowing effect
			}
		}
	},
	{
		{
			"SHIPROCKET"							--Rockets
		},
		{
			{
				"DefaultSpeed",	1.0					--2200
			}
		}
	},
	{
		{
			"SENMECHSMG"							--Sentinel Mech machine gun	(enemy)
		},
		{
			{
				"DefaultSpeed",	1.65				--40
			}
		}
	}
}


--Nothing below this should need to be changed. All values can be edited in the sections above this line

--Applies the same damage multiplier for the weapon to the upgrade modules for that weapon (damage upgrade modules apply set amount of damage instead of percentage increases like other upgrade modules)
UpgradeDamageChanges =
{
	{
		{"Weapon_Grenade_Damage",	PlasmaLauncherDMG*GMD},				--Plasma Launcher		
		{"UP_GREN1", "UP_GREN2", "UP_GREN3", "UP_GREN4", "UP_GRENX"}
	},
	{
		{"Weapon_Grenade_Damage",	GeologyCannonDMG*GMD},				--Geology Cannon		
		{"UP_TGREN1", "UP_TGREN2", "UP_TGREN3", "UP_TGREN4", "UP_TGRENX"}
	},
	{
		{"Weapon_Laser_Damage",	BlazeJavelinDMG*GMD},				--Blaze Javelin		
		{"UP_RAIL1", "UP_RAIL2", "UP_RAIL3", "UP_RAIL4", "UP_RAILX"}
	},
	{
		{"Weapon_Projectile_Damage",	BoltcasterDMG*GMD},				--Boltcaster		
		{"UP_BOLT1", "UP_BOLT2", "UP_BOLT3", "UP_BOLT4", "UP_BOLTX"}
	},
	{
		{"Weapon_Projectile_Damage",	ScatterBlasterDMG*GMD},				--Scatter Blaster		
		{"UP_SHOT1", "UP_SHOT2", "UP_SHOT3", "UP_SHOT4", "UP_SHOTX"}
	},
	{
		{"Weapon_Projectile_Damage",	PulseSpitterDMG*GMD},				--Pulse Spiiter		
		{"UP_SMG1", "UP_SMG2", "UP_SMG3", "UP_SMG4", "UP_SMGX"}
	},
	{
		{"Weapon_Projectile_Damage",	NeutronCannonDMG*GMD},				--Neutron Cannon		
		{"UP_CANN1", "UP_CANN2", "UP_CANN3", "UP_CANN4", "UP_CANNX"}
	},
	{
		{"Vehicle_GunDamage",	ExocraftCannonDMG*GXD},				--Exocraft Cannon		
		{"UP_EXGUN1", "UP_EXGUN2", "UP_EXGUN3", "UP_EXGUN4"}
	},
	{
		{"Vehicle_GunDamage",	NautilonCannonDMG*GXD},					--Nautilon Cannon		
		{"UP_SUGUN1", "UP_SUGUN2", "UP_SUGUN3", "UP_SUGUN4"}
	},
	{
		{"Vehicle_GunDamage",	MinotaurCannonDMG*GXD},					--Minotaur Cannon		
		{"UP_MCGUN2", "UP_MCGUN3", "UP_MCGUN4"}
	},
	{
		{"Ship_Weapons_Lasers_Damage",	PhaseBeamDMG*GSD},					--Phase Beam		
		{"UP_SLASR1", "UP_SLASR2", "UP_SLASR3", "UP_SLASR4", "UP_SLASRX"}
	},
	{
		{"Ship_Weapons_Lasers_Damage",	LivingShipBeamDMG*GSD},				--Living Ship Phase Beam equivalent		
		{"UA_SLASR1", "UA_SLASR2", "UA_SLASR3", "UA_SLASR4"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	PhotonCannonDMG*GSD},				--Photon Cannon		
		{"UP_SGUN1", "UP_SGUN2", "UP_SGUN3", "UP_SGUN4", "UP_SGUNX"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	LivingShipCannonDMG*GSD},			--Living Ship Photon Cannon equivalent		
		{"UA_SGUN1", "UA_SGUN2", "UA_SGUN3", "UA_SGUN4"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	PositronEjectorDMG*GSD},				--Positron Ejector
		{"UP_SSHOT1", "UP_SSHOT2", "UP_SSHOT3", "UP_SSHOT4", "UP_SSHOTX"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	InfraKnifeDMG*GSD},				--Infra-Knife Accelerator
		{"UP_SMINI1", "UP_SMINI2", "UP_SMINI3", "UP_SMINI4", "UP_SMINIX"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	CyclotronDMG*GSD},				--Cyclotron Ballista
		{"UP_SBLOB1", "UP_SBLOB2", "UP_SBLOB3", "UP_SBLOB4", "UP_SBLOBX"}
	},
}

--Applies the same heat multiplier for the weapon to the upgrade modules for that weapon
UpgradeHeatChanges =
{
	{
		{"Ship_Weapons_Lasers_HeatTime",	PhaseBeamUpgradesHeatMult},			--Phase Beam
		{
			{
				"UP_SLASR1",	1.1,	1.35
			},
			{
				"UP_SLASR2",	1.35,	1.55
			},
			{
				"UP_SLASR3",	1.55,	1.75
			},
			{
				"UP_SLASR4",	1.75,	1.95
			},
			{
				"UP_SLASRX",	1.1,	2
			},
		}
	},
	{
		{"Ship_Weapons_Lasers_HeatTime",	LivingShipBeamUpgradesHeatMult},	--Gazing Eye
		{
			{
				"UA_SLASR1",	1.1,	1.35
			},
			{
				"UA_SLASR2",	1.35,	1.55
			},
			{
				"UA_SLASR3",	1.55,	1.75
			},
			{
				"UA_SLASR4",	1.75,	1.95
			},
		}
	},
	{
		{"Ship_Weapons_Guns_HeatTime",	CyclotronUpgradesHeatMult},				--Cyclotron Ballista
		{
			{
				"UP_SBLOB1",	1.1,	1.2
			},
			{
				"UP_SBLOB2",	1.2,	1.25
			},
			{
				"UP_SBLOB3",	1.25,	1.3
			},
			{
				"UP_SBLOB4",	1.3,	1.35
			},
			{
				"UP_SBLOBX",	1.1,	1.4
			},
		}
	},
}

--For multiplying the bonuses on existing tech / upgrades of values such as 1.1, etc.
function BonusMult (base, mult)
    return
    (base-1)*mult+1
end

function AddShieldLeech (LeechAmount)
    return
[[<Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Weapons_ShieldLeech" />
          </Property>
          <Property name="Bonus" value="]]..LeechAmount..[[" />
          <Property name="Level" value="1" />
        </Property>]]
end

function DamageMult (Damagetype,	Mult)
    return
[[<Property value="GcDamageMultiplier.xml">
          <Property name="Type" value="GcDamageType.xml">
            <Property name="DamageType" value="]]..Damagetype..[[" />
          </Property>
          <Property name="Multiplier" value="]]..Mult..[[" />
        </Property>]]
end

function ShipDamageMult (Mult)
    return
[[<Property value="GcDamageMultiplier.xml">
          <Property name="Type" value="GcDamageType.xml">
            <Property name="DamageType" value="ShipGun" />
          </Property>
          <Property name="Multiplier" value="]]..Mult..[[" />
        </Property>
		<Property value="GcDamageMultiplier.xml">
          <Property name="Type" value="GcDamageType.xml">
            <Property name="DamageType" value="ShipLaser" />
          </Property>
          <Property name="Multiplier" value="]]..Mult..[[" />
        </Property>
		<Property value="GcDamageMultiplier.xml">
          <Property name="Type" value="GcDamageType.xml">
            <Property name="DamageType" value="ShipShotgun" />
          </Property>
          <Property name="Multiplier" value="]]..Mult..[[" />
        </Property>
		<Property value="GcDamageMultiplier.xml">
          <Property name="Type" value="GcDamageType.xml">
            <Property name="DamageType" value="ShipMinigun" />
          </Property>
          <Property name="Multiplier" value="]]..Mult..[[" />
        </Property>
		<Property value="GcDamageMultiplier.xml">
          <Property name="Type" value="GcDamageType.xml">
            <Property name="DamageType" value="ShipRockets" />
          </Property>
          <Property name="Multiplier" value="]]..Mult..[[" />
        </Property>
		<Property value="GcDamageMultiplier.xml">
          <Property name="Type" value="GcDamageType.xml">
            <Property name="DamageType" value="ShipPlasma" />
          </Property>
          <Property name="Multiplier" value="]]..Mult..[[" />
        </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= "Changes various properties of some player or NPC weapons to be more balanced",
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the WeaponStatChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the UpgradeDamageChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\PROJECTILES\PROJECTILETABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the ProjectileChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\PROJECTILES\PROJECTILETABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLESTUNGUN"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Radius", MechStunWeaponRadius}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLESTUNGUN",	"CombatEffectType", "Stun"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TotalDuration", MechStunWeaponDuration}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLESTUNGUN",	"CombatEffectType", "Fire"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"TotalDuration", MechStunWeaponFireDuration},
					{"DamagePerSeccond", MechStunWeaponFireDOT}
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["PRECEDING_KEY_WORDS"] = {"GcShootableComponentData.xml"},
				["SPECIAL_KEY_WORDS"] = {"Id", "OBJECT",	"DamageType", "Explosion"},
				["SECTION_UP"] = 1,
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Multiplier",	ExplosionObjectMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "CREATURE"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("VehicleLaser", VehicleLaserCreatureMult)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DOOR"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("VehicleLaser", VehicleLaserDoorMult)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DEPOT"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("VehicleLaser", VehicleLaserDepotMult)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DOOR"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("VehicleGun", VehicleGunDoorMult)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DEPOT"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("VehicleGun", VehicleGunDepotMult)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DOOR"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = ShipDamageMult(ShipWeaponDoorMult)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DEPOT"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = ShipDamageMult(ShipWeaponDepotMult)
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["PRECEDING_KEY_WORDS"] = {"GcShootableComponentData.xml"},
				["SPECIAL_KEY_WORDS"] = {"Id", "CREATURE",	"DamageType", "Laser"},
				["SECTION_UP"] = 1,
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Multiplier",	LaserCreatureMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ROBOT",	"DamageType", "Laser"},
				["SECTION_UP"] = 1,
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Multiplier",	LaserSentinelMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "ROBOT",	"DamageType", "VehicleLaser"},
				["SECTION_UP"] = 1,
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Multiplier",	VehicleLaserSentinelMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_HULL"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipGun", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_HULL"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipLaser", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_HULL"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipShotgun", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_SHIELD"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipGun", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_SHIELD"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipLaser", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_SHIELD"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipMinigun", 1)
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the ShipWeaponEffectiveness at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "GRENADE"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeAmount", PlasmaLauncherCharge}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "TERRAIN_GREN"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeAmount", GeologyCannonCharge}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "STUN_GREN"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeAmount", ParalysisMortarCharge}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "MECH_SENT_R_ARM"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeAmount", MechStunWeaponCharge},
					{"ChargeMultiplier", MechStunWeaponChargeMultiplier}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID","SHIPLAS_ALIEN"},
				["PRECEDING_KEY_WORDS"] = {"GcStatsBonus.xml"},
				["ADD"] = AddShieldLeech (LivingShipBeamLeechAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}
		}
	}
}}}}

local ChangesToWeaponStats = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #WeaponStatChanges do
	local WeaponID = WeaponStatChanges[i][1][1]
	local Stats = WeaponStatChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatMult = Stats[j][2]

			ChangesToWeaponStats[#ChangesToWeaponStats+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", WeaponID, "StatsType", StatID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Bonus", StatMult}
				}
			}
	end
end

local ChangesToUpgradeStats = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #UpgradeDamageChanges do
	local StatID = UpgradeDamageChanges[i][1][1]
	local UpgradeMult = UpgradeDamageChanges[i][1][2]
	local UpgradeIDs = UpgradeDamageChanges[i][2]

	for j = 1, #UpgradeIDs do
		local UpgradeID = UpgradeIDs[j]

			ChangesToUpgradeStats[#ChangesToUpgradeStats+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", UpgradeID, "StatsType", StatID},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", UpgradeMult},
					{"ValueMax", UpgradeMult}
				}
			}
	end
end
for i = 1, #UpgradeHeatChanges do
	local StatID = UpgradeHeatChanges[i][1][1]
	local HeatMult = UpgradeHeatChanges[i][1][2]
	local UpgradeIDs = UpgradeHeatChanges[i][2]

	for j = 1, #UpgradeIDs do
		local UpgradeID = UpgradeIDs[j][1]
		local OldMin = UpgradeIDs[j][2]
		local OldMax = UpgradeIDs[j][3]

			ChangesToUpgradeStats[#ChangesToUpgradeStats+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", UpgradeID, "StatsType", StatID},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", BonusMult (OldMin, HeatMult)},
					{"ValueMax", BonusMult (OldMax, HeatMult)}
				}
			}
	end
end


local ChangesToProjectiles = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #WeaponSpeedChanges do
	local WeaponID = WeaponSpeedChanges[i][1][1]
	local Stats = WeaponSpeedChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatMult = Stats[j][2]

			ChangesToProjectiles[#ChangesToProjectiles+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"Id", WeaponID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"DefaultSpeed", StatMult}
				}
			}
	end
end
for i = 1, #NPCStarshipDamageMults do
	local WeaponID = NPCStarshipDamageMults[i][1]
	local DamageMult = NPCStarshipDamageMults[i][2]


			ChangesToProjectiles[#ChangesToProjectiles+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", WeaponID},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"DefaultDamage", DamageMult}
				}
			}
end

local ChangesToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]

for i = 1, #ShipWeaponEffectiveness do
	local DamageType = ShipWeaponEffectiveness[i][1]
	local HullMult = ShipWeaponEffectiveness[i][2]
	local Shieldult = ShipWeaponEffectiveness[i][3]

			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_HULL", "DamageType", DamageType},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", HullMult}
				}
			}
			
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_SHIELD", "DamageType", DamageType},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", Shieldult}
				}
			}
end
for i = 1, #WeaponCoolAim do
	local WeaponID = WeaponCoolAim[i][1]
	local AimAngle = WeaponCoolAim[i][2]
	local ExtraAngle = WeaponCoolAim[i][3]
	local OverTime = WeaponCoolAim[i][4]
	local CoolRate = WeaponCoolAim[i][5]


			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Reticle", WeaponID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"AutoAimAngle", AimAngle},
					{"AutoAimExtraAngle", ExtraAngle},
					{"OverheatCoolTime", OverTime},
					{"CoolRate", CoolRate},
				}
			}
end