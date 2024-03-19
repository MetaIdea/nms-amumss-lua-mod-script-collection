ModName = "PTSd Weapons Rebalance"
GameVersion = "4_52"
Description = "Changes various properties of some player or NPC weapons to be more balanced"

--Un-SuperCharger Mult - Enter the current Supercharged tech slot bonus value used in GCGAMEPLAYGLOBALS.GLOBAL.MBIN here to divide most affected base weapon tech values by this amount, so they start underpowered, and placing them on a supercharged slot brings that back to "normal" strength
	--This includes the stats which are made worse when larger (ie, when supercharged), such as Reload time (except on Boltcaster), Recoil, Weapon charge time, Dispersion
	--Blaze Javelin exempted since it barely benefits from supercharging, Cyclotron Ballista & Neutron Cannon only partially "un-supercharged" since they benefit more from supercharging upgrades rather than the core tech.
USCMult =					1.2							-- Use "1" to instead have weapon techs start at full strength, and then get huge, uneven bonuses when supercharged

--Global Damage multipliers for convenience to apply to all player weapons of that category (stacks multiplicatively with the individual weapons adjustments below)
GMD = 						1							--1		For all player Multi-Tool weapon damage	(Except for Mining Laser, as changing those values will affect mining speed)
GXD = 						1							--1		For all player Exocraft/Minotaur/Nautilon weapon damage	(Except for the Mining Lasers, as changing those values will affect mining speed)
GSD = 						1							--1		For all player Starship weapon damage

--Damage multiplier for Explosions against items designated as OBJECTS
	-- (If set to 0, can't mine rocks & plants with ship weapons or explosions, other than an insignificant trickle with the Phase Beam)
	-- As a side effect of setting to 0, Alluring Specimens won't get destroyed when "Anglerfish" Abyssal Horrors spawn
ExplosionObjectMult = 0									--1

--Damage multiplier for Lasers against items designated as CREATURES / ROBOTS
LaserCritMult = 2										--4		How much the damage of the mining laser is multiplied on a critical hit (typically on the head / eye)
LaserCreatureMult = 1									--1		Lowering this value appears to disable the critical weak points on creatures with the mining laser
VehicleLaserCreatureMult = 0.2							--1
LaserSentinelMult = 0.75									--0.6
VehicleLaserSentinelMult = 0.2							--0.2

--Damage multipliers against DOORs and DEPOTs
ShipWeaponDoorMult = 0.02								--1
VehicleGunDoorMult = 0.05								--1
VehicleLaserDoorMult = 0								--1		To match regular Laser damage = 0
DefaultDoorMult = 	0.33								--1		Multiplier for most other damage against DOORs
LaserDoorMult = 0										--0

ShipWeaponDepotMult = 0.02								--1
VehicleGunDepotMult = 0.05								--1
VehicleLaserDepotMult = 0								--1		To match regular Laser damage = 0
DefaultDepotMult = 	0.33								--1		Multiplier for most other damage against DEPOTs

--Damage multiplier against CARGO (cargo pods on space freighters???)
ShipWeaponsCargoMult = 0.2								--1		(0.2)

--How many shots you get before needing to recharge with Unstable Plasma
PlasmaLauncherCharge =						16					--20
GeologyCannonCharge =						10					--20
ParalysisMortarCharge =						8					--20
MechStunWeaponCharge =						30					--400			(Amount of charge for the recharge bar of the Mech Sentinel Right Arm which stuns)
MechStunWeaponChargeMultiplier =			0.1					--1				How effective substances are at recharging the charge bar

--Misc Weapon adjustments
MechStunWeaponRadius =						4					--5				AOE Radius of minotaur stun weapon shots
MechStunWeaponDuration =					3					--3				Duration in seconds of minotaur stun weapon effect
MechStunWeaponFireDOT =						80					--80			Fire DOT of minotaur stun weapon
MechStunWeaponFireDuration =				3					--3				Duration in seconds of minotaur stun weapon Fire DOT

PhaseBeamLeechAmountMult =					0.5					--0.2 & 0.1		Multiplier to apply to the Shield Leech amount for Phase Beam, and the bonus from Fourier De-Limiter (0.2 and 0.1 in vanilla)
LivingShipBeamLeechMult = 					0.5					--0.1			Multiplier to apply to the Shield Leech amount for Gazing Eyes (0.1 in vanilla)
LivingShipBeamLeechUpgradeMult = 			0.1					--0.05~0.3		Multiplier to apply to the Shield Leech amount bonus for upgrades to Gazing Eyes (0.05 ~ 0.3 each in vanilla, up to 6x per ship)

--Multipliers for certain bonuses from Starship weapon procedural upgrade modules
PhaseBeamUpgradesHeatMult =					0.25				--				Multiplier to apply to the bonus heat time for Phase Beam upgrades (1.1 ~ 2 for Class C ~ X)
LivingShipBeamUpgradesHeatMult =			0.25				--				Multiplier to apply to the bonus heat time for Gazing Eye upgrades (1.1 ~ 1.95 for Class C ~ S)
CyclotronUpgradesHeatMult =					0.5					--				Multiplier to apply to the bonus heat time for Cyclotron Ballista upgrades (1.1 ~ 1.4 for Class C ~ X)
InfraKnifeUpgradesHeatMult =				0.4					--				Multiplier to apply to the bonus heat time for Infra-Knife upgrades (1.01 ~ 1.1 for Class C ~ X)
PositronUpgradesHeatMult =					0.5					--				Multiplier to apply to the bonus heat time for Positron upgrades (1.01 ~ 1.2 for Class C ~ X)

PhotonUpgradesFireRateMult =				1.0					--				Multiplier to apply to the bonus fire rate for Photon Cannon upgrades (1.001 ~ 1.026 for Class C ~ X)
LSPhotonUpgradesFireRateMult =				1.0					--				Multiplier to apply to the bonus fire rate for Spewing Vents upgrades (1.001 ~ 1.021 for Class C ~ S)
PositronUpgradesFireRateMult =				1.0*0.333			--				Multiplier to apply to the bonus fire rate for Positron upgrades (1.05 ~ 1.2 for Class C ~ X)
InfraKnifeUpgradesFireRateMult =			1.0					--				Multiplier to apply to the bonus fire rate for Infra-Knife upgrades (1.01 ~ 1.15 for Class C ~ X)
CyclotronUpgradesFireRateMult =				1.0*0.1				--				Multiplier to apply to the bonus fire rate for Cyclotron upgrades (1.01 ~ 1.2 for Class C ~ X)

PhaseBeamUpgradesDMGMult =					1.0					--				Multiplier to apply to the bonus damage for Phase Beam upgrades (30 ~ 80 for Class C ~ X)
LSBeamUpgradesDMGMult =						1.0					--				Multiplier to apply to the bonus damage for Gazing Eye upgrades (30 ~ 70 for Class C ~ S)
PhotonUpgradesDMGMult =						1.1					--				Multiplier to apply to the bonus damage for Photon Cannon upgrades (8 ~ 32 for Class C ~ X)
LSPhotonUpgradesDMGMult =					1.1					--				Multiplier to apply to the bonus damage for Spewing Vents upgrades (8 ~ 28 for Class C ~ S)
PositronUpgradesDMGMult =					1.25*3				--				Multiplier to apply to the bonus damage for Positron upgrades (2 ~ 12 for Class C ~ X)
InfraKnifeUpgradesDMGMult =					0.7					--				Multiplier to apply to the bonus damage for Infra-Knife upgrades (2 ~ 14 for Class C ~ X)
CyclotronUpgradesDMGMult =					1.1*10				--				Multiplier to apply to the bonus damage for Cyclotron upgrades (2 ~ 14 for Class C ~ X)

--Multipliers for certain bonuses from Multi-Tool weapon procedural upgrade modules
MTUAddMult =								0.5					--				Multiplier to apply to the strength of all additive bonuses (like damage) from all procedural Multi-Tool weapon upgrades. (This is to compensate for going from 3x upgrades to 5x upgrades)
MTUMultMult =								0.5					--				Multiplier to apply to the strength of all multiplicative bonuses (like fire rate) from all procedural Multi-Tool weapon upgrades. (This is to compensate for going from 3x upgrades to 5x upgrades)

SentWpnDMGMult =							14.72					--1~4			Multiplier to apply to Sentinel Weapon Upgrade Module damage bonus (Only applies to Boltcaster?)
BoltcasterUpgradesDMGMult =					4.0					--				Multiplier to apply to the bonus damage for Boltcaster upgrades
PulseUpgradesDMGMult =						0.7					--				Multiplier to apply to the bonus damage for Pulse Spitter upgrades
ScatterUpgradesDMGMult =					2.4					--				Multiplier to apply to the bonus damage for Scatter Blaster upgrades
NeutronUpgradesDMGMult =					0.3*0.7				--				Multiplier to apply to the bonus damage for Neutron Cannon upgrades		(x0.7 to "undo" the buff in update 4.3x)
BlazeUpgradesDMGMult =						2.5					--				Multiplier to apply to the bonus damage for Blaze Javelin upgrades
PlasmaUpgradesDMGMult =						0.7					--				Multiplier to apply to the bonus damage for Plamsa Launcher upgrades
GeologyUpgradesDMGMult =					1.0					--				Multiplier to apply to the bonus damage for Geology Cannon upgrades

SentWpnRateMult =							0.45				--1.01~1.2		Multiplier to apply to Sentinel Weapon Upgrade Module firerate bonus (Only applies to Boltcaster?)
RemoveSentWpnRate =							true				--false			If set to true, Sentinel Weapon Upgrade modules no longer offer bonuses to Fire Rate
SentWpnReloadMult =							1.0					--				Multiplier to apply to the bonus reload speed for Sentinel Weapon Upgrade Module (Only applies to Boltcaster?)
BoltUpgradeReloadMult =						1.0					--				Multiplier to apply to the bonus reload speed for Boltcaster upgrades
BoltUpgradeFireRateMult =					0.9					--				Multiplier to apply to the bonus firerate for Boltcaster upgrades
BoltUpgradeBurstCapMult =					1.0					--				Multiplier to apply to the bonus Burst Cap for Boltcaster upgrades
BoltUpgradeBurstCoolMult =					0.9					--				Multiplier to apply to the bonus Burst Cooldown for Boltcaster upgrades
PlasmaUpgradeRadiusMult =					1.0					--				Multiplier to apply to the bonus radius for Plamsa Launcher upgrades
GeologyUpgradeRadiusMult =					1.0					--				Multiplier to apply to the bonus radius for Geology Cannon upgrades
BlazeChargeMult =							1.0					--				Multiplier to apply to the bonus Charge speed for Blaze Javelin upgrades
ScatterUpgradeReloadMult =					1.0					--				Multiplier to apply to the bonus reload speed for Scatter Blaster upgrades
ScatterUpgradeBurstCapMult =				1.0					--				Multiplier to apply to the bonus Burst Cap for Scatter Blaster upgrades
ScatterUpgradeBurstCoolMult =				1.0					--				Multiplier to apply to the bonus Burst Cooldown for Scatter Blaster upgrades
ScatterUpgradeFireRateMult =				1.0					--				Multiplier to apply to the bonus firerate for Scatter Blaster upgrades
PulseUpgradeFireRateMult =					0.7					--				Multiplier to apply to the bonus firerate for Pulse Spitter upgrades
PulseUpgradeReloadMult =					1.0					--				Multiplier to apply to the bonus reload speed for Pulse Spitter upgrades
NeutronChargeMult =							0.8*0.3				--				Multiplier to apply to the bonus charge speed for Neutron Cannon upgrades			(x0.3 to "undo" the buff in update 4.3x)
NeutronMaxChargeMult =						1.0					--				Multiplier to apply to the bonus maximum charge ("additional ion spheres") for Neutron Cannon upgrades

--These bonuses will be kept as whole number integers
BoltUpgradeClipMult =						1.0					--				Multiplier to apply to the bonus clipsize for Boltcaster upgrades
PlasmaUpgradeBounceMult =					1.0					--				Multiplier to apply to the bonus bouncing for Plamsa Launcher upgrades
PlasmaUpgradeSpeedMult =					1.0					--				Multiplier to apply to the bonus speed for Plamsa Launcher upgrades
GeologyUpgradeSpeedMult =					1.0					--				Multiplier to apply to the bonus speed for Geology Cannon upgrades
ScatterUpgradeClipMult =					1.0					--				Multiplier to apply to the bonus clipsize for Scatter Blaster upgrades
PulseUpgradeClipMult =						1.0					--				Multiplier to apply to the bonus clipsize for Pulse Spitter upgrades
NeutronUpgradeSpeedMult =					1.0					--				Multiplier to apply to the bonus projectile speed for Neutron Cannon upgrades

--Multipliers to apply to the base damage for various player weapons (Also will be applied to upgrade modules for that weapon)  Stacks multiplicatively with the Global Damage Multipliers above
BoltcasterDMG =								1.458				--180			(1,350 theoretical burst DPS)
PulseSpitterDMG =							1.106				--96 x 2		(1,536 theoretical burst DPS)
ScatterBlasterDMG =							2.0					--150 x 8		(2,640 theoretical burst DPS)
NeutronCannonDMG =							1.554				--120			(Uncharged)
BlazeJavelinDMG =							2.071				--1500			(500 theoretical sustained DPS)					(large DMG multiplier but also longer charge time below to make it possible with enough upgrades on a good enough Multii-Tool to one-shot both unarmored Drones and Repair Drones with the edited "Savage Sentinels" mod)
PlasmaLauncherDMG =							1.45				--500
GeologyCannonDMG =							1.21				--1000

ExocraftCannonDMG =							1.0					--320			(160 theoretical sustained DPS, plus explosions with AOE???)
NautilonCannonDMG =							1.0					--220			(110 theoretical sustained DPS, plus explosions with AOE???)
MinotaurCannonDMG =							1.0					--420			(147 theoretical sustained DPS, plus explosions with AOE???)

PhaseBeamDMG =								1.4					--250
LivingShipBeamDMG =							1.1					--280
PhotonCannonDMG =							0.9*1.667			--320			(2,400 theoretical burst DPS)	Multiplied by 1.667 to balance out the 40% lower fire rate I added
LivingShipCannonDMG =						0.9*1.667			--340			(3,400 theoretical burst DPS)	Multiplied by 1.667 to balance out the 40% lower fire rate I added
SentinelCannonDMG =							0.75*1.667			--220			(2,420 theoretical burst DPS)	Multiplied by 1.667 to balance out the 40% lower fire rate I added. 	Uses a lower mult than Photon Cannon since it gains more relative benefit from the set damage of photon cannon upgrade modules with its higher fire rate
RocketsDMG =								1.5					--6500
PositronEjectorDMG =						1.05*0.667			--280 x 14		(7,840 theoretical burst DPS)	Multiplied by 0.667 to balance out the 50% more projectiles I added
InfraKnifeDMG =								1.0*0.75			--160 x 1		(1,845 theoretical burst DPS)	Multiplied by 0.75 to balance out the 33% faster fire rate I added
CyclotronDMG =								0.9*5				--600 x 2		(3,600 theoretical burst DPS)	Multiplied by 5 to balance out the 80% slower fire rate I added

--Damage multipliers for starship weapons against shields, hulls, etc.
ShipWeaponEffectiveness =
{	--Weapontype		vs. ship Hull	vs. Shield	vs. Torpedo	vs. Freighter Hull
	{"ShipGun",				1,			1,			1,			1},			--1,			1,			1,			1
	{"ShipLaser",			0.8,		1.2,		0.8,		0.8},		--1,			1,			1,			1
	{"ShipShotgun",			1,			0.33,		1,			0.6},		--1,			0.33,		1,			0.4
	{"ShipMinigun",			1.2,		0.4,		1.2,		1.2},		--1.5,			1,			1.5,		1
	{"ShipRockets",			1.2,		0.6,		1.2,		1.2},		--1.5,			0.2,		1.5,		1.5
	{"ShipPlasma",			0.6,		1.4,		0.6,		0.6},		--0.2,			1.6,		0.2,		1
}

--Multipliers to apply to the base damage for various player mining lasers. Note that higher damage means objects get mined faster
MiningLaserDMG =							1.0					--20
HijackedLaserDMG =							6.0					--20
RunicLensDMG =								0.7					--20
AnimusBeamDMG =								1.0					--40
ExocraftLaserDMG =							1.0					--80
NautilonLaserDMG =							1.0					--240
MinotaurLaserDMG =							1.0					--100

--Some properties of various types of multi-tool mining lasers
MiningOverheatMult =						10					--		Multiplier to apply to the time the Mining Laser & Anumius Beam is disabled after starting the "overheat" animation
RunicLensOverheatMult =						10					--		Multiplier to apply to the time the RunicLens is disabled after starting the "overheat" animation
HijackMiningOverheatMult =					5					--		Multiplier to apply to the time the Hijacked Laser is disabled after starting the "overheat" animation
HijackChargeMultiplier =					1					--2		Replacer for how effective substances are at recharging the Hijacked Laser

--Multipliers to apply to other stats for various weapons
	--"PRESERVE" is for values which must remain as integers (whole numbers like 5), "FORCE" for all others to allow them to become floats (decimal numbers like 5.2)
WeaponStatChanges =
{
	{
		{
			"GRENADE"			--Plasma Launcher
		},
		{
			{
				"Weapon_Grenade_Damage",	PlasmaLauncherDMG*GMD/USCMult,	"FORCE"	--500
			},
			{
				"Weapon_Grenade_Bounce",	1,	"PRESERVE"				--3
			},
			{
				"Weapon_Grenade_Radius",	1/USCMult,	"FORCE"					--2
			},
			{
				"Weapon_FireDOT_Duration",	1/USCMult,	"FORCE"					--5
			},
			{
				"Weapon_FireDOT_DPS",		1/USCMult,	"FORCE"					--50
			}
		}
	},
	{
		{
			"TERRAIN_GREN"			--Geology Cannon
		},
		{
			{
				"Weapon_Grenade_Damage",	GeologyCannonDMG*GMD/USCMult,	"FORCE"	--1000
			},
			{
				"Weapon_Grenade_Radius",	1/USCMult,	"FORCE"					--2
			}
		}
	},
	{
		{
			"STUN_GREN"			--Paralysis Mortar
		},
		{
			{
				"Weapon_Grenade_Radius",	0.75/USCMult,	"FORCE"				--4
			},
			{
				"Weapon_Stun_Duration",		0.6/USCMult,	"FORCE"					--3.5
			},
			{
				"Weapon_Grenade_Bounce",	1,	"PRESERVE"				--2
			}
		}
	},
	{
		{
			"RAILGUN"		--Blaze Javelin
		},
		{
			{
				"Weapon_Laser_Damage",	BlazeJavelinDMG*GMD,	"FORCE"	--1500
			},
			{
				"Weapon_Laser_ChargeTime",	1,	"FORCE"			--3
			},
			{
				"Weapon_Laser_HeatTime",	1,	"FORCE"				--0.2
			},
			{
				"Weapon_Laser_Drain",	1,	"FORCE"					--2
			},
			{
				"Weapon_Laser_Recoil",	1,	"PRESERVE"					--20
			},
			{
				"Weapon_Laser_ReloadTime",	1,	"FORCE"				--2.5
			}
		}
	},
	{
		{
			"BOLT"			--Boltcaster
		},
		{
			{
				"Weapon_Projectile_Damage",	BoltcasterDMG*GMD/USCMult,	"FORCE"	--180		(1,350 theoretical burst DPS)
			},
			{
				"Weapon_Projectile_Rate",	1/USCMult,	"FORCE"					--7.5
			},
			{
				"Weapon_Projectile_ClipSize",	1/USCMult,	"PRESERVE"				--64
			},
			{
				"Weapon_Projectile_Range",	1/USCMult,	"PRESERVE"					--300
			},
			{
				"Weapon_Projectile_Dispersion",	1/USCMult,	"FORCE"				--1
			},
			{
				"Weapon_Projectile_Recoil",	1/USCMult,	"PRESERVE"				--200
			},
			{
				"Weapon_Projectile_ReloadTime",	1*USCMult,	"FORCE"				--0.8
			},
			{
				"Weapon_Projectile_BurstCap",	1/USCMult,	"PRESERVE"				--6
			},
			{
				"Weapon_Projectile_BurstCooldown",	1/USCMult,	"FORCE"				--0.66
			},
			{
				"Weapon_Projectile_MaximumCharge",	1,	"PRESERVE"				--200
			}
		}
	},
	{
		{
			"SHOTGUN"		--Scatter Blaster
		},
		{
			{
				"Weapon_Projectile_Damage",	ScatterBlasterDMG*GMD/USCMult,	"FORCE"	--150 x 8		(2,640 theoretical burst DPS)
			},
			{
				"Weapon_Projectile_Rate",	1/USCMult,	"FORCE"					--2.2
			},
			{
				"Weapon_Projectile_Range",	0.4/USCMult,	"PRESERVE"					--55
			},
			{
				"Weapon_Projectile_Dispersion",	2/USCMult,	"FORCE"				--10
			},
			{
				"Weapon_Projectile_Recoil",	0.75/USCMult,	"PRESERVE"					--1000
			},
			{
				"Weapon_Projectile_ReloadTime",	1.2/USCMult,	"FORCE"				--1.5
			},
			{
				"Weapon_Projectile_ClipSize",	1/USCMult,	"PRESERVE"				--96
			},
			{
				"Weapon_Projectile_BulletsPerShot",	1/USCMult,	"PRESERVE"				--8
			},
			{
				"Weapon_Projectile_BurstCap",	1/USCMult,	"PRESERVE"				--2
			},
			{
				"Weapon_Projectile_BurstCooldown",	1/USCMult,	"FORCE"				--1.28
			},
			{
				"Weapon_Projectile_MaximumCharge",	1,	"PRESERVE"				--100
			}
		}
	},
	{
		{
			"SMG"			--Pulse Spiiter
		},
		{
			{
				"Weapon_Projectile_Damage",	PulseSpitterDMG*GMD/USCMult,	"FORCE"	--96 x 2		(1,536 theoretical burst DPS)
			},
			{
				"Weapon_Projectile_ClipSize",	1/USCMult,	"PRESERVE"				--80
			},
			{
				"Weapon_Projectile_Rate",	1/USCMult,	"FORCE"					--8
			},
			{
				"Weapon_Projectile_Range",	1/USCMult,	"PRESERVE"					--300
			},
			{
				"Weapon_Projectile_Dispersion",	1/USCMult,	"FORCE"				--6
			},
			{
				"Weapon_Projectile_Recoil",	1/USCMult,	"PRESERVE"				--80
			},
			{
				"Weapon_Projectile_ReloadTime",	1.2/USCMult,	"FORCE"				--1
			},
			{
				"Weapon_Projectile_BulletsPerShot",	1/USCMult,	"PRESERVE"				--2
			},
			{
				"Weapon_Projectile_BurstCap",	1/USCMult,	"PRESERVE"				--0
			},
			{
				"Weapon_Projectile_BurstCooldown",	1/USCMult,	"FORCE"				--0
			},
			{
				"Weapon_Projectile_MaximumCharge",	1,	"PRESERVE"				--200
			}
		}
	},
	{
		{
			"CANNON"			--Neutron Cannon
		},						--this is "un-supercharged" differently from other weapons
		{
			{
				"Weapon_Projectile_Damage",	NeutronCannonDMG*GMD/USCMult,	"FORCE"	--120	(Uncharged)
			},
			{
				"Weapon_Projectile_MinimumCharge",	4.2406/USCMult,	"FORCE"			--1
			},
			{
				"Weapon_Projectile_MaximumCharge",	1/USCMult,	"FORCE"			--6
			},
			{
				"Weapon_Projectile_Range",	1/USCMult,	"PRESERVE"					--800
			},
			{
				"Weapon_Projectile_Dispersion",	1.4/USCMult,	"FORCE"				--2.5
			},
			{
				"Weapon_Projectile_Recoil",	1/USCMult,	"FORCE"					--1600
			},
			{
				"Weapon_ChargedProjectile_ChargeTime",	0.99,	"FORCE"		--1
			},
			{
				"Weapon_ChargedProjectile_CooldownDuration",	1,	"FORCE"		--0
			},
			{
				"Weapon_ChargedProjectile_ExtraSpeed",	1/USCMult,	"PRESERVE"		--180
			},
			{
				"Weapon_Grenade_Radius",	1/USCMult,	"FORCE"		--2
			},
			{
				"Weapon_Projectile_BurstCooldown",	1/USCMult,	"FORCE"		--0.5
			}
		}
	},
	{
		{
			"VEHICLE_GUN"				--Exocraft Cannon
		},
		{
			{
				"Vehicle_GunDamage",	ExocraftCannonDMG*GXD/USCMult,	"FORCE"	--320		(160 theoretical sustained DPS, plus explosions with AOE???)
			},
			{
				"Vehicle_GunRate",	1/USCMult,	"FORCE"							--0.5		
			},
			{
				"Vehicle_GunHeatTime",	1,	"FORCE"							--1
			}
		}
	},
	{
		{
			"SUB_GUN"					--Nautilon Cannon
		},
		{
			{
				"Vehicle_GunDamage",	NautilonCannonDMG*GXD/USCMult,	"FORCE"	--220		(110 theoretical sustained DPS, plus explosions with AOE???)
			},
			{
				"Vehicle_GunRate",	1/USCMult,	"FORCE"							--0.5		
			},
			{
				"Vehicle_GunHeatTime",	1,	"FORCE"							--1
			}
		}
	},
	{
		{
			"MECH_GUN"					--Minotaur Cannon
		},
		{
			{
				"Vehicle_GunDamage",	MinotaurCannonDMG*GXD/USCMult,	"FORCE"	--420		(147 theoretical sustained DPS, plus explosions with AOE???)
			},
			{
				"Vehicle_GunRate",	1/USCMult,	"FORCE"							--0.35		
			},
			{
				"Vehicle_GunHeatTime",	1,	"FORCE"							--1
			}
		}
	},
	{
		{
			"LASER"			--Mining Laser
		},
		{
			{
				"Weapon_Laser_Mining_Speed",	0.999,	"FORCE"				--1			Controls how often the laser ticks for damage, lower values ticks faster. Set less than 1 so that supercharging it makes it faster instead of slower
			},
			{
				"Weapon_Laser_HeatTime",	1/USCMult,	"FORCE"				--8
			},
			{
				"Weapon_Laser_Damage",	MiningLaserDMG*GMD/(USCMult*USCMult),	"FORCE"				--20				Controls how much damage the laser does per tick
			},
			{
				"Weapon_Laser_ReloadTime",	MiningOverheatMult,	"FORCE"				--0.6
			}
		}
	},
	{
		{
			"SENT_LASER"	--Hijacked Laser
		},
		{
			{
				"Weapon_Laser_Mining_Speed",	0.999,	"FORCE"				--1			Controls how often the laser ticks for damage, lower values ticks faster
			},
			{
				"Weapon_Laser_HeatTime",	0.5/USCMult,	"FORCE"				--8
			},
			{
				"Weapon_Laser_Damage",	HijackedLaserDMG*GMD/(USCMult*USCMult),	"FORCE"				--20				Controls how much damage the laser does per tick
			},
			{
				"Weapon_Laser_ReloadTime",	HijackMiningOverheatMult,	"FORCE"				--0.6
			},
			{
				"Weapon_Laser_Drain",	0.333,	"FORCE"				--1.2				Controls how quickly the laser consumes fuel while active
			},
			{
				"Weapon_Laser_MiningBonus",	0.2,	"FORCE"			--1
			}
		}
	},
	{
		{
			"ATLAS_LASER"	--Runic Lens
		},
		{
			{
				"Weapon_Laser_Mining_Speed",	0.999,	"FORCE"				--1			Controls how often the laser ticks for damage, lower values ticks faster
			},
			{
				"Weapon_Laser_HeatTime",	1/USCMult,	"FORCE"				--12
			},
			{
				"Weapon_Laser_Damage",	RunicLensDMG*GMD/(USCMult*USCMult),	"FORCE"				--20				Controls how much damage the laser does per tick
			},
			{
				"Weapon_Laser_ReloadTime",	RunicLensOverheatMult,	"FORCE"				--0.6
			},
			{
				"Weapon_Laser_Drain",	1,	"FORCE"					--1.2				Controls how quickly the laser consumes fuel while active
			},
			{
				"Weapon_Laser_MiningBonus",	1.14,	"FORCE"				--1.1
			},
			{
				"Weapon_Stealth",	1,	"FORCE"						--1					Related to cloaking ability, unsure the effect
			}
		}
	},
	{
		{
			"SOUL_LASER"	--Animus Beam
		},
		{
			{
				"Weapon_Laser_Damage",	AnimusBeamDMG*GMD/(USCMult*USCMult),	"FORCE"				--40				Controls how much damage the laser does per tick
			},
			{
				"Weapon_Laser_Mining_Speed",	0.999,	"FORCE"				--1			Controls how often the laser ticks for damage, lower values ticks faster. Set less than 1 so that supercharging it makes it faster instead of slower
			},
			{
				"Weapon_Laser_ReloadTime",	MiningOverheatMult,	"FORCE"				--0.6
			}
		}
	},
	{
		{
			"VEHICLE_LASER"				--Exocraft Mining Laser
		},
		{
			{
				"Vehicle_LaserDamage",	ExocraftLaserDMG/USCMult,	"FORCE"	--80
			}
		}
	},
	{
		{
			"SUB_LASER"					--Nautilon Mining Laser	(Tethys Beam)
		},
		{
			{
				"Vehicle_LaserDamage",	NautilonLaserDMG/USCMult,	"FORCE"	--240
			}
		}
	},
	{
		{
			"MECH_LASER"				--Minotaur Mining Laser
		},
		{
			{
				"Vehicle_LaserDamage",	MinotaurLaserDMG/USCMult,	"FORCE"	--100
			}
		}
	},
	{
		{
			"SHIPLAS1"			--Phase Beam
		},
		{
			{
				"Ship_Weapons_Lasers_Damage",	PhaseBeamDMG*GSD/USCMult,	"FORCE"		--250
			},
			{
				"Ship_Weapons_Lasers_HeatTime",	1/USCMult,	"FORCE"					--2.5		[1.5]
			},
			{
				"Ship_Weapons_ShieldLeech",	PhaseBeamLeechAmountMult,	"FORCE"	--0.2
			}
		}
	},
	{
		{
			"SHIPLAS_ALIEN"		--Gazing Eyes
		},
		{
			{
				"Ship_Weapons_Lasers_Damage",	LivingShipBeamDMG*GSD/USCMult,	"FORCE"	--280
			},
			{
				"Ship_Weapons_Lasers_HeatTime",	1/USCMult,	"FORCE"					--3.5
			},
			{
				"Ship_Weapons_ShieldLeech",	LivingShipBeamLeechMult,	"FORCE"	--0.1
			},
		}
	},
	{
		{
			"SHIPGUN1"			--Photon Cannon
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	PhotonCannonDMG*GSD/USCMult,	"FORCE"	--320		(2,400 theoretical burst DPS)
			},
			{
				"Ship_Weapons_Guns_Rate",	0.6/USCMult,	"FORCE"					--7.5
			},
			{
				"Ship_Weapons_Guns_Range",	1/USCMult,	"PRESERVE"					--1500
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1/USCMult,	"FORCE"				--0
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	1,	"PRESERVE"				--1
			},
			{
				"Ship_Weapons_Guns_HeatTime",	0.8/USCMult,	"FORCE"				--7.5
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--1
			},
			{
				"Ship_Weapons_Guns_Scale",	1/USCMult,	"FORCE"				--6
			},
			{
				"Ship_Weapons_Guns_Damage_Radius",	1/USCMult,	"FORCE"				--2
			}
		}
	},
	{
		{
			"SHIPGUN_ALIEN"			--Living Ship Photon Cannon equivalent
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	LivingShipCannonDMG*GSD/USCMult,	"FORCE"	--340		(3,400 theoretical burst DPS)
			},
			{
				"Ship_Weapons_Guns_Rate",	0.5/USCMult,	"FORCE"					--10
			},
			{
				"Ship_Weapons_Guns_Range",	1/USCMult,	"PRESERVE"					--1500
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1/USCMult,	"FORCE"				--0
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	1,	"PRESERVE"				--1
			},
			{
				"Ship_Weapons_Guns_HeatTime",	0.8/USCMult,	"FORCE"				--10
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--1
			},
			{
				"Ship_Weapons_Guns_Scale",	1/USCMult,	"FORCE"				--6
			},
			{
				"Ship_Weapons_Guns_Damage_Radius",	1/USCMult,	"FORCE"				--2
			}
		}
	},
	{
		{
			"SHIPGUN_ROBO"			--Sentinel Interceptor Photon Cannon equivalent
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	SentinelCannonDMG*GSD/USCMult,	"FORCE"	--220		(2,420 theoretical burst DPS)
			},
			{
				"Ship_Weapons_Guns_Rate",	0.6/USCMult,	"FORCE"					--11
			},
			{
				"Ship_Weapons_Guns_Range",	1/USCMult,	"PRESERVE"					--1500
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1/USCMult,	"FORCE"				--0
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	1,	"PRESERVE"				--1
			},
			{
				"Ship_Weapons_Guns_HeatTime",	0.667/USCMult,	"FORCE"				--12
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--1
			},
			{
				"Ship_Weapons_Guns_Scale",	1/USCMult,	"FORCE"				--6
			},
			{
				"Ship_Weapons_Guns_Damage_Radius",	1/USCMult,	"FORCE"				--2
			}
		}
	},
	{
		{
			"SHIPROCKETS"			--Rockets
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	RocketsDMG*GSD/USCMult,	"FORCE"	--6500
			},
			{
				"Ship_Weapons_Guns_Rate",	1,	"FORCE"					--1
			},
			{
				"Ship_Weapons_Guns_Range",	1/USCMult,	"PRESERVE"					--5000
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1/USCMult,	"FORCE"				--0
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	1,	"PRESERVE"				--1
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1/USCMult,	"FORCE"				--0
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--10
			},
			{
				"Ship_Weapons_Guns_Scale",	1/USCMult,	"FORCE"				--2.5
			},
			{
				"Ship_Weapons_Guns_Damage_Radius",	1/USCMult,	"FORCE"				--15
			}
		}
	},
	{
		{
			"SHIPSHOTGUN"			--Positron Ejector
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	PositronEjectorDMG*GSD/USCMult,	"FORCE"	--280 x 14	[20]	(7,840 theoretical burst DPS)	[16,800]
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	1.5/USCMult,	"PRESERVE"			--14		[20]
			},
			{
				"Ship_Weapons_Guns_Rate",	1/USCMult,	"FORCE"					--2			[3]
			},
			{
				"Ship_Weapons_Guns_Range",	0.7/USCMult,	"PRESERVE"					--500
			},
			{
				"Ship_Weapons_Guns_Dispersion",	2/USCMult,	"FORCE"				--10
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1/USCMult,	"FORCE"				--1.5		[0.75]
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--1
			},
			{
				"Ship_Weapons_Guns_Scale",	1/USCMult,	"FORCE"				--6.5
			},
			{
				"Ship_Weapons_Guns_Damage_Radius",	1/USCMult,	"FORCE"				--3
			}
		}
	},
	{
		{
			"SHIPMINIGUN"					--Infra-Knife Accelerator
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	InfraKnifeDMG*GSD/USCMult,	"FORCE"	--205 x 1	[160 x 2]		(1,845 theoretical burst DPS)	[4,800]
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	2/USCMult,	"PRESERVE"			--1		[2]
			},
			{
				"Ship_Weapons_Guns_Rate",	1.333/USCMult,	"FORCE"				--9		[15]
			},
			{
				"Ship_Weapons_Guns_Range",	1/USCMult,	"PRESERVE"					--2200	[2000]
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1/USCMult,	"FORCE"				--0.5		[0]
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1/USCMult,	"FORCE"				--3		[4]
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--1
			},
			{
				"Ship_Weapons_Guns_Scale",	1/USCMult,	"FORCE"				--6.5
			},
			{
				"Ship_Weapons_Guns_Damage_Radius",	1/USCMult,	"FORCE"				--3
			}
		}
	},
	{
		{
			"SHIPPLASMA"					--Cyclotron Ballista
		},
		{
			{
				"Ship_Weapons_Guns_Damage",	CyclotronDMG*GSD,	"FORCE"	--600 x 2		(3,600 theoretical burst DPS)	[4,800]
			},
			{
				"Ship_Weapons_Guns_Rate",	0.2/USCMult,	"FORCE"					--3		[4]
			},
			{
				"Ship_Weapons_Guns_Range",	1,	"PRESERVE"					--1250	[1500]
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1,	"FORCE"				--1		[2]
			},
			{
				"Ship_Weapons_Guns_BulletsPerShot",	1,	"PRESERVE"			--2
			},
			{
				"Ship_Weapons_Guns_HeatTime",	1/USCMult,	"FORCE"				--2		[1]
			},
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--1
			},
			{
				"Ship_Weapons_Guns_Scale",	1,	"FORCE"				--3
			},
			{
				"Ship_Weapons_Guns_Damage_Radius",	1,	"FORCE"				--3
			}
		}
	}
}

--Multipliers to apply to the stats for "helper" tech for specifc weapons
WeaponSecondaryTechChanges =
{
	{
		{
			"UT_RAIL"		--Mass Accelerator upgrade for Blaze Javelin
		},
		{
			{
				"Weapon_Laser_Damage",	BlazeJavelinDMG*GMD*1.35,	"FORCE"	--200 added damge
			}
		}
	},
	{
		{
			"UT_RAIL_STUN"		--Waveform Oscillator upgrade for Blaze Javelin
		},
		{
			{
				"Weapon_Stun_Duration",		0.2,	"FORCE"				--5 seconds
			}
		}
	},
	{
		{
			"UT_SMG_DOT"		--Impact Igniter upgrade for Pulse Spitter
		},
		{
			{
				"Weapon_FireDOT_Duration",		1.43,	"FORCE"			--3.5 seconds
			},
			{
				"Weapon_FireDOT_DPS",			3,	"PRESERVE"			--80
			}
		}
	},
	{
		{
			"MECH_SENT_L_ARM"			--Sentinel Hardframe Left Arm		(Buffs Minotaur Laser and adds Laser damage bonus to stunned enemies)
		},
		{
			{
				"Weapon_Stun_Damage_Multiplier",	1,	"FORCE"			--5
			},
			{
				"Vehicle_LaserDamage",		1,	"FORCE"					--50		additional damage per tick for the Minotaur Laser
			},
			{
				"Weapon_FireDOT_Duration",	1,	"FORCE"					--3.5 seconds
			},
			{
				"Weapon_FireDOT_DPS",		1,	"FORCE"					--80
			}
		}
	},
	{
		{
			"UT_SHIPLAS"			--FOURIER DE-LIMITER for Phase Beam
		},
		{
			{
				"Ship_Weapons_Lasers_HeatTime",	1,	"FORCE"					--1.1		(Means a 10% increase)
			},
			{
				"Ship_Weapons_ShieldLeech",	PhaseBeamLeechAmountMult,	"FORCE"	--0.1
			}
		}
	},
	{
		{
			"UT_ROCKETS"			--Large Rocket Tubes
		},
		{
			{
				"Ship_Weapons_Guns_CoolTime",	1,	"FORCE"				--0.8
			},
			{
				"Ship_Weapons_Guns_Damage",	RocketsDMG*GSD,	"FORCE"		--3250
			},
		}
	},
	{
		{
			"UT_SHIPSHOT"			--Fragment Supercharger
		},
		{
			{
				"Ship_Weapons_Guns_Range",	1,	"PRESERVE"					--1.25
			},
			{
				"Ship_Weapons_Guns_Dispersion",	1,	"PRESERVE"				--0.8
			},
		}
	}
}

--Adjusts some cooling / aiming traits for starship weapons
WeaponCoolAim =
{								--	AutoAimAngle				OverheatCoolTime
	{--Phase Beam & LS version					AutoAimExtraAngle			CoolRate
		"SHIPLASER",				0,			0,				3,			0.4		--0,	0,			2,		0.9			[2,	0.5]
	},
	{--Photon Cannon & LS version
		"SHIPGUN",					4,			15,				5,			0.3		--3,	15,			4,		0.4			[4,	0.2]
	},
	{--Positron Ejector
		"SHIPSHOTGUN",				2,			15,				2,			0.09	--3,	15,			1.5,	0.09		[1.5,	0.09]
	},
	{--Infra-Knife Accelerator
		"SHIPMINIGUN",				3,			15,				7,			0.7		--3,	15,			1,		1.2			[8,	0.8]
	},
	{--Cyclotron Ballista
		"SHIPPLASMAGUN",			4,			15,				3,			0.3		--5,	15,			1.5,	0.4			[1.5,	0.2]
	},
	{--Rockets
		"SHIPROCKET",				5,			15,				12,			0.2		--5,	15,			5,		0.2			[5,	0.2]
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
	{"PIRATERAIDGUN",		10},								--15	DefaultDamage		(Maybe pirates attacking buildings ???)
	{"SQUADGUN",			4.5},								--40	DefaultDamage		(Maybe your wingmen ???)
	
	--Space Laser Beams
	{"AI_SHIP",				10},								--9		DefaultDamage		(Most NPC Starships)
	{"AI_FREIGHTER",		10},								--15	DefaultDamage
	{"COP_FREIGHTER",		20},								--15	DefaultDamage		(Sentinel Freighters?)
	{"BASE_TURRET_L",		2},									--100	DefaultDamage
	
	--WIP, new to NMS v4.4
	{"PI_FRE_SMAL",			10},								--18	DefaultDamage		(possibly Pirate Freighter projectile turrets?)
	{"TORPEDO",				1},									--650000	DefaultDamage	Presumably Pirate Frigate Torpedos
	{"PI_FRE_LARG",			1},									--2000	DefaultDamage		(possibly Pirate Freighter laser beam turrets?)
}

--Multipliers to apply to the projectile speeds, critical hit multipliers, etc. for player or enemy weapons. 
	--There are other attributes that can be added to these tables in order to change them
WeaponProjChanges =
{
	{
		{
			"BOLTGUN"								--Boltcaster
		},
		{
			{
				"CriticalHitModifier",	1.2			--1.5
			},
		}
	},
	{
		{
			"SHOTGUN"								--Scatter Blaster
		},
		{
			{
				"CriticalHitModifier",	0.87		--1.5
			},
		}
	},
	{
		{
			"SHIPGUN"								--Photon Cannon / Spewing Vents
		},
		{
			{
				"DefaultSpeed",	1.0					--3200
			},
			{
				"CriticalHitModifier",	1.333		--1.5
			},
		}
	},
	{
		{
			"SHIPSHOTGUN"							--Positron Ejector
		},
		{
			{
				"DefaultSpeed",	1.0					--2000
			},
			{
				"CriticalHitModifier",	1.0			--1.5
			},
		}
	},
	{
		{
			"SHIPMINIGUN"							--Infra-Knife Accelerator
		},
		{
			{
				"DefaultSpeed",	1.5					--1800
			},
			{
				"CriticalHitModifier",	0.8			--1.5
			},
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
				"CriticalHitModifier",	1.0			--1.5
			},
			{
				"Scale",	3.0						--1
			},
			{
				"Radius",	0.5						--30
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
			},
			{
				"CriticalHitModifier",	1.667		--1.5
			},
		}
	},
	{
		{
			"PLAYER_SHIP"							--Phase Beam / Gazing Eyes
		},
		{
			{
				"CriticalHitModifier",	1.0			--4
			},
		}
	},
	{
		{
			"SENMECHSMG"							--Sentinel Mech machine gun	(enemy)
		},
		{
			{
				"DefaultSpeed",	1.65				--40
			},
		}
	},
	--[[
	{
		{
			"CORRUPTGRENADE"						--Grenades from Corrupted Sentinel Drones and Large Spider Quad Sentinel grenades (enemy)
		},
		{
			{
				"ExtraPlayerDamage",	3			--5		Need to test effect of this parameter
			},
		}
	}
	]]
}


--Nothing below this should need to be changed. All values can be edited in the sections above this line

--Applies the same damage multiplier for the weapon to the upgrade modules for that weapon (damage upgrade modules apply set amount of damage instead of percentage increases like other upgrade modules)
	--Also used for other additive values like shield leech effect
UpgradeDamageChanges =
{
	{
		{"Weapon_Grenade_Damage",	PlasmaUpgradesDMGMult*PlasmaLauncherDMG*MTUAddMult*GMD},				--Plasma Launcher		
		{"UP_GREN1", "UP_GREN2", "UP_GREN3", "UP_GREN4", "UP_GRENX"}
	},
	{
		{"Weapon_Grenade_Damage",	GeologyUpgradesDMGMult*GeologyCannonDMG*MTUAddMult*GMD},				--Geology Cannon		
		{"UP_TGREN1", "UP_TGREN2", "UP_TGREN3", "UP_TGREN4", "UP_TGRENX"}
	},
	{
		{"Weapon_Laser_Damage",	BlazeUpgradesDMGMult*BlazeJavelinDMG*MTUAddMult*GMD},					--Blaze Javelin		
		{"UP_RAIL1", "UP_RAIL2", "UP_RAIL3", "UP_RAIL4", "UP_RAILX"}
	},
	{
		{"Weapon_Projectile_Damage",	BoltcasterUpgradesDMGMult*BoltcasterDMG*MTUAddMult*GMD},				--Boltcaster		
		{"UP_BOLT1", "UP_BOLT2", "UP_BOLT3", "UP_BOLT4", "UP_BOLTX"}
	},
	{
		{"Weapon_Projectile_Damage",	SentWpnDMGMult*MTUAddMult*GMD},				--Sentinel Weapon Upgrade (only works for Boltcaster?)		
		{"UP_SENGUN"}
	},
	{
		{"Weapon_Projectile_Damage",	ScatterUpgradesDMGMult*ScatterBlasterDMG*MTUAddMult*GMD},			--Scatter Blaster		
		{"UP_SHOT1", "UP_SHOT2", "UP_SHOT3", "UP_SHOT4", "UP_SHOTX"}
	},
	{
		{"Weapon_Projectile_Damage",	PulseUpgradesDMGMult*PulseSpitterDMG*MTUAddMult*GMD},			--Pulse Spiiter		
		{"UP_SMG1", "UP_SMG2", "UP_SMG3", "UP_SMG4", "UP_SMGX"}
	},
	{
		{"Weapon_Projectile_Damage",	NeutronUpgradesDMGMult*NeutronCannonDMG*MTUAddMult*GMD},			--Neutron Cannon		
		{"UP_CANN1", "UP_CANN2", "UP_CANN3", "UP_CANN4", "UP_CANNX"}
	},
	{
		{"Vehicle_GunDamage",	ExocraftCannonDMG*GXD},					--Exocraft Cannon		
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
		{"Ship_Weapons_Lasers_Damage",	PhaseBeamDMG*PhaseBeamUpgradesDMGMult*GSD},			--Phase Beam		
		{"UP_SLASR1", "UP_SLASR2", "UP_SLASR3", "UP_SLASR4", "UP_SLASRX"}
	},
	{
		{"Ship_Weapons_Lasers_Damage",	LivingShipBeamDMG*LSBeamUpgradesDMGMult*GSD},		--Gazing Eyes		
		{"UA_SLASR1", "UA_SLASR2", "UA_SLASR3", "UA_SLASR4"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	PhotonCannonDMG*PhotonUpgradesDMGMult*GSD},			--Photon Cannon		
		{"UP_SGUN1", "UP_SGUN2", "UP_SGUN3", "UP_SGUN4", "UP_SGUNX"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	LivingShipCannonDMG*LSPhotonUpgradesDMGMult*GSD},	--Spewing Vents
		{"UA_SGUN1", "UA_SGUN2", "UA_SGUN3", "UA_SGUN4"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	PositronEjectorDMG*PositronUpgradesDMGMult*GSD},	--Positron Ejector
		{"UP_SSHOT1", "UP_SSHOT2", "UP_SSHOT3", "UP_SSHOT4", "UP_SSHOTX"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	InfraKnifeDMG*InfraKnifeUpgradesDMGMult*GSD},		--Infra-Knife Accelerator
		{"UP_SMINI1", "UP_SMINI2", "UP_SMINI3", "UP_SMINI4", "UP_SMINIX"}
	},
	{
		{"Ship_Weapons_Guns_Damage",	CyclotronDMG*CyclotronUpgradesDMGMult*GSD},			--Cyclotron Ballista
		{"UP_SBLOB1", "UP_SBLOB2", "UP_SBLOB3", "UP_SBLOB4", "UP_SBLOBX"}
	},
	--Non-damage bonuses
	{
		{"Ship_Weapons_ShieldLeech",	LivingShipBeamLeechUpgradeMult},					--Gazing Eyes	(Shield Leech effect)	
		{"UA_SLASR1", "UA_SLASR2", "UA_SLASR3", "UA_SLASR4"}	--(0.05 ~ 0.3 in vanilla)
	},
	{
		{"Weapon_Projectile_BurstCap",	BoltUpgradeBurstCapMult*MTUAddMult},				--Boltcaster
		{"UP_BOLT1", "UP_BOLT2", "UP_BOLT3", "UP_BOLT4", "UP_BOLTX"}
	},
	{
		{"Weapon_Projectile_BurstCap",	ScatterUpgradeBurstCapMult*MTUAddMult},				--Scatter Blaster
		{"UP_SHOT1", "UP_SHOT2", "UP_SHOT3", "UP_SHOT4", "UP_SHOTX"}
	},
	{
		{"Weapon_Projectile_MaximumCharge",	NeutronMaxChargeMult*MTUAddMult},				--Neutron Cannon
		{"UP_CANN1", "UP_CANN2", "UP_CANN3", "UP_CANN4", "UP_CANNX"}
	},
}

--Extra (stacking) multiplier for ValueMax for Neutron Cannon Class X upgrade damage bonus since it didn't get improved in the same patch that improved the other Class upgrades
NeutronXUpgradeMaxDMGMult = 1.4			--5 - 15 range

--Changes other bonuses from weapon upgrade modules, such as heat capacity or fire rate, that use multiplicative values like 1.05 or 1.2
UpgradeOtherChanges =
{
	{	--Photon Cannon				Fire Rate
		{"Ship_Weapons_Guns_Rate",	PhotonUpgradesFireRateMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SGUN1",	1.001,	1.011								--1.001,	1.011
			},
			{
				"UP_SGUN2",	1.006,	1.016								--1.006,	1.016
			},
			{
				"UP_SGUN3",	1.016,	1.021								--1.016,	1.021
			},
			{
				"UP_SGUN4",	1.021,	1.021								--1.021,	1.021	
			},
			{
				"UP_SGUNX",	1.001,	1.026								--1.001,	1.026
			},
		}
	},
	{	--Spewing Vents				Fire Rate
		{"Ship_Weapons_Guns_Rate",	LSPhotonUpgradesFireRateMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UA_SGUN1",	1.001,	1.011								--1.001,	1.011
			},
			{
				"UA_SGUN2",	1.006,	1.016								--1.006,	1.016
			},
			{
				"UA_SGUN3",	1.016,	1.021								--1.016,	1.021
			},
			{
				"UA_SGUN4",	1.021,	1.021								--1.021,	1.021	
			},
		}
	},
	{	--Phase Beam						Heat
		{"Ship_Weapons_Lasers_HeatTime",	PhaseBeamUpgradesHeatMult},			--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SLASR1",	1.1,	1.35							--1.1,	1.35
			},
			{
				"UP_SLASR2",	1.35,	1.55							--1.35,	1.55
			},
			{
				"UP_SLASR3",	1.55,	1.75							--1.55,	1.75
			},
			{
				"UP_SLASR4",	1.75,	1.95							--1.75,	1.95
			},
			{
				"UP_SLASRX",	1.1,	2								--1.1,	2
			},
		}
	},
	{	--Gazing Eye						Heat
		{"Ship_Weapons_Lasers_HeatTime",	LivingShipBeamUpgradesHeatMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UA_SLASR1",	1.1,	1.35							--1.1,	1.35
			},
			{
				"UA_SLASR2",	1.35,	1.55							--1.35,	1.55
			},
			{
				"UA_SLASR3",	1.55,	1.75							--1.55,	1.75	
			},
			{
				"UA_SLASR4",	1.75,	1.95							--1.75,	1.95
			},
		}
	},
	{	--Positron Ejector			Fire Rate
		{"Ship_Weapons_Guns_Rate",	PositronUpgradesFireRateMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade		Min		Max
				"UP_SSHOT1",	1.01,	1.04							--1.01,	1.04
			},
			{
				"UP_SSHOT2",	1.04,	1.06							--1.04,	1.06
			},
			{
				"UP_SSHOT3",	1.06,	1.1								--1.06,	1.1
			},
			{
				"UP_SSHOT4",	1.06,	1.1								--1.06,	1.1
			},
			{
				"UP_SSHOTX",	1.01,	1.15							--1.05,	1.1
			},
		}
	},
	{	--Positron Ejector				Heat
		{"Ship_Weapons_Guns_HeatTime",	PositronUpgradesHeatMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SSHOT1",	1.01,	1.04							--1.01,	1.04
			},
			{
				"UP_SSHOT2",	1.04,	1.06							--1.04,	1.06	
			},
			{
				"UP_SSHOT3",	1.06,	1.1								--1.06,	1.1
			},
			{
				"UP_SSHOT4",	1.06,	1.1								--1.06,	1.1
			},
			{
				"UP_SSHOTX",	1.01,	1.15							--1.01,	1.1
			},
		}
	},
	{	--Infra-Knife Accelerator	Fire Rate
		{"Ship_Weapons_Guns_Rate",	InfraKnifeUpgradesFireRateMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade		Min		Max
				"UP_SMINI1",	1.01,	1.05								--1.01,	1.05
			},
			{
				"UP_SMINI2",	1.01,	1.05								--1.01,	1.05
			},
			{
				"UP_SMINI3",	1.05,	1.1									--1.05,	1.1	
			},
			{
				"UP_SMINI4",	1.05,	1.1									--1.05,	1.1	
			},
			{
				"UP_SMINIX",	1.01,	1.15								--1.01,	1.15
			},
		}
	},
	{	--Infra-Knife Accelerator		Heat
		{"Ship_Weapons_Guns_HeatTime",	InfraKnifeUpgradesHeatMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SMINI1",	1.01,	1.03							--1.01,	1.03
			},
			{
				"UP_SMINI2",	1.03,	1.05							--1.03,	1.05
			},
			{
				"UP_SMINI3",	1.05,	1.07							--1.05,	1.07
			},
			{
				"UP_SMINI4",	1.07,	1.09							--1.07,	1.09
			},
			{
				"UP_SMINIX",	1.01,	1.13							--1.01,	1.13
			},
		}
	},
	{	--Cyclotron Ballista		Fire Rate
		{"Ship_Weapons_Guns_Rate",	CyclotronUpgradesFireRateMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade		Min		Max
				"UP_SBLOB1",	1.01,	1.05							--1.01,	1.05
			},
			{
				"UP_SBLOB2",	1.01,	1.05							--1.01,	1.05
			},
			{
				"UP_SBLOB3",	1.05,	1.1								--1.05,	1.1	
			},
			{
				"UP_SBLOB4",	1.1,	1.15							--1.1,	1.15
			},
			{
				"UP_SBLOBX",	1.01,	1.2								--1.01,	1.2
			},
		}
	},
	{	--Cyclotron Ballista			Heat
		{"Ship_Weapons_Guns_HeatTime",	CyclotronUpgradesHeatMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SBLOB1",	1.1,	1.2								--1.1,	1.2
			},
			{
				"UP_SBLOB2",	1.2,	1.25							--1.2,	1.25	
			},
			{
				"UP_SBLOB3",	1.25,	1.3								--1.25,	1.3
			},
			{
				"UP_SBLOB4",	1.3,	1.35							--1.3,	1.35
			},
			{
				"UP_SBLOBX",	1.1,	1.4								--1.1,	1.4
			},
		}
	},
	{	--Sentinel Weapon upgrade (Only applies to Boltcaster?)
		{"Weapon_Projectile_ReloadTime",	SentWpnReloadMult*MTUMultMult},			--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SENGUN",	0.85,	0.99							--0.85,	0.99
			},
		}
	},
	{	--Sentinel Weapon upgrade (Only applies to Boltcaster?)
		{"Weapon_Projectile_Rate",	SentWpnRateMult*MTUMultMult},			--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SENGUN",	1.01,	1.2								--1.01,	1.2
			},
		}
	},
	{	--Boltcaster
		{"Weapon_Projectile_ReloadTime",	BoltUpgradeReloadMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_BOLT1",		0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_BOLT2",		0.85,	0.9								--0.85,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_BOLT3",		0.8,	0.9								--0.8,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_BOLT4",		0.8,	0.9								--0.8,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_BOLTX",		0.75,	0.95							--0.75,	0.95
			},
		}
	},
	{	--Boltcaster
		{"Weapon_Projectile_Rate",	BoltUpgradeFireRateMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_BOLT1",		1.01,	1.1								--1.01,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_BOLT2",		1.05,	1.1								--1.05,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_BOLT3",		1.1,	1.15							--1.1,	1.15
			},
			{--	Upgrade			Min		Max
				"UP_BOLT4",		1.1,	1.15							--1.1,	1.15
			},
			{--	Upgrade			Min		Max
				"UP_BOLTX",		1.01,	1.2								--1.01,	1.2	
			},
		}
	},
	{	--Boltcaster
		{"Weapon_Projectile_BurstCooldown",	BoltUpgradeBurstCoolMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_BOLT1",		0.99,	0.95							--0.99,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_BOLT2",		0.95,	0.9								--0.95,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_BOLT3",		0.9,	0.85							--0.9,	0.85
			},
			{--	Upgrade			Min		Max
				"UP_BOLT4",		0.85,	0.85							--0.85,	0.85
			},
			{--	Upgrade			Min		Max
				"UP_BOLTX",		0.99,	0.8								--0.99,	0.8
			},
		}
	},
	{	--Plasma Launcher
		{"Weapon_Grenade_Radius",	PlasmaUpgradeRadiusMult*MTUMultMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_GREN1",		1.01,	1.05							--1.01,	1.05
			},
			{--	Upgrade			Min		Max
				"UP_GREN2",		1.05,	1.1								--1.05,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_GREN3",		1.05,	1.1								--1.05,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_GREN4",		1.1,	1.15							--1.1,	1.15
			},
			{--	Upgrade			Min		Max
				"UP_GRENX",		1.01,	1.2								--1.01,	1.2	
			},
		}
	},
	{	--Geology Cannon
		{"Weapon_Grenade_Radius",	GeologyUpgradeRadiusMult*MTUMultMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_TGREN1",	1.1,	1.2								--1.1,	1.2
			},
			{--	Upgrade			Min		Max
				"UP_TGREN2",	1.2,	1.3								--1.2,	1.3
			},
			{--	Upgrade			Min		Max
				"UP_TGREN3",	1.3,	1.5								--1.3,	1.5	
			},
			{--	Upgrade			Min		Max
				"UP_TGREN4",	1.4,	1.5								--1.4,	1.5
			},
			{--	Upgrade			Min		Max
				"UP_TGRENX",	1.1,	1.6								--1.1,	1.6
			},
		}
	},
	{	--Blaze Javelin
		{"Weapon_Laser_ChargeTime",	BlazeChargeMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_RAIL1",		0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_RAIL2",		0.85,	0.9								--0.85,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_RAIL3",		0.8,	0.9								--0.8,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_RAIL4",		0.8,	0.9								--0.8,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_RAILX",		0.75,	0.95							--0.75,	0.95
			},
		}
	},
	{	--Scatter Blaster
		{"Weapon_Projectile_ReloadTime",	ScatterUpgradeReloadMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SHOT1",		0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_SHOT2",		0.85,	0.9								--0.85,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_SHOT3",		0.8,	0.85							--0.8,	0.85
			},
			{--	Upgrade			Min		Max
				"UP_SHOT4",		0.75,	0.8								--0.75,	0.8
			},
			{--	Upgrade			Min		Max
				"UP_SHOTX",		0.7,	0.95							--0.7,	0.95
			},
		}
	},
	{	--Scatter Blaster
		{"Weapon_Projectile_BurstCooldown",	ScatterUpgradeBurstCoolMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SHOT2",		0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_SHOT3",		0.85,	0.9								--0.85,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_SHOT4",		0.8,	0.85							--0.8,	0.85
			},
			{--	Upgrade			Min		Max
				"UP_SHOTX",		0.75,	0.95							--0.75,	0.95
			},
		}
	},
	{	--Scatter Blaster
		{"Weapon_Projectile_Rate",	ScatterUpgradeFireRateMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SHOT2",		1.01,	1.05							--1.01,	1.05
			},
			{--	Upgrade			Min		Max
				"UP_SHOT3",		1.05,	1.1								--1.05,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_SHOT4",		1.1,	1.15							--1.1,	1.15
			},
			{--	Upgrade			Min		Max
				"UP_SHOTX",		1.01,	1.2								--1.01,	1.2	
			},
		}
	},
	{	--Pulse Spitter
		{"Weapon_Projectile_Rate",	PulseUpgradeFireRateMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SMG1",		1.01,	1.1								--1.01,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_SMG2",		1.01,	1.1								--1.01,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_SMG3",		1.05,	1.1								--1.05,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_SMG4",		1.1,	1.15							--1.1,	1.15
			},
			{--	Upgrade			Min		Max
				"UP_SMGX",		1.01,	1.2								--1.01,	1.2	
			},
		}
	},
	{	--Pulse Spitter
		{"Weapon_Projectile_ReloadTime",	PulseUpgradeReloadMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SMG2",		0.9,	0.99							--0.9,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_SMG3",		0.9,	0.99							--0.9,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_SMG4",		0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_SMGX",		0.85,	0.99							--0.85,	0.99
			},
		}
	},
	{	--Neutron Cannon
		{"Weapon_ChargedProjectile_ChargeTime",	NeutronChargeMult*MTUMultMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_CANN1",		0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_CANN2",		0.85,	0.9								--0.85,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_CANN3",		0.7,	0.8								--0.7,	0.8
			},
			{--	Upgrade			Min		Max
				"UP_CANN4",		0.5,	0.7								--0.5,	0.7
			},
			{--	Upgrade			Min		Max
				"UP_CANNX",		0.45,	0.95							--0.45,	0.95
			},
		}
	},
}

--Changes other bonuses from weapon upgrade modules which need to remain integers like 1 or 3
UpgradeOtherChangesInt =
{
	{	--Boltcaster
		{"Weapon_Projectile_ClipSize",	BoltUpgradeClipMult*MTUAddMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_BOLT1",		2,		2								--2,	2
			},
			{--	Upgrade			Min		Max
				"UP_BOLT2",		4,		4								--4,	4
			},
			{--	Upgrade			Min		Max
				"UP_BOLT3",		6,		6								--6,	6
			},
			{--	Upgrade			Min		Max
				"UP_BOLT4",		8,		8								--8,	8
			},
			{--	Upgrade			Min		Max
				"UP_BOLTX",		2,		10								--2,	10
			},
		}
	},
	{	--Plasma Launcher
		{"Weapon_Grenade_Bounce",	PlasmaUpgradeBounceMult*MTUAddMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_GREN1",		1,		1								--1,	1
			},
			{--	Upgrade			Min		Max
				"UP_GREN2",		1,		2								--1,	2
			},
			{--	Upgrade			Min		Max
				"UP_GREN3",		2,		3								--2,	3
			},
			{--	Upgrade			Min		Max
				"UP_GREN4",		3,		3								--3,	3
			},
			{--	Upgrade			Min		Max
				"UP_GRENX",		1,		4								--1,	4
			},
		}
	},
	{	--Plasma Launcher
		{"Weapon_Grenade_Speed",	PlasmaUpgradeSpeedMult*MTUAddMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_GREN1",		1,		2								--1,	2
			},
			{--	Upgrade			Min		Max
				"UP_GREN2",		1,		3								--1,	3
			},
			{--	Upgrade			Min		Max
				"UP_GREN3",		1,		3								--1,	3
			},
			{--	Upgrade			Min		Max
				"UP_GREN4",		2,		3								--2,	3
			},
			{--	Upgrade			Min		Max
				"UP_GRENX",		1,		4								--1,	4
			},
		}
	},
	{	--Geology Cannon
		{"Weapon_Grenade_Speed",	GeologyUpgradeSpeedMult*MTUAddMult},	--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_TGREN1",		1,		2								--1,	2
			},
			{--	Upgrade			Min		Max
				"UP_TGREN2",		1,		3								--1,	3
			},
			{--	Upgrade			Min		Max
				"UP_TGREN3",		1,		3								--1,	3
			},
			{--	Upgrade			Min		Max
				"UP_TGREN4",		2,		3								--2,	3
			},
			{--	Upgrade			Min		Max
				"UP_TGRENX",		1,		4								--1,	4
			},
		}
	},
	{	--Scatter Blaster
		{"Weapon_Projectile_ClipSize",	ScatterUpgradeClipMult*MTUAddMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SHOT2",		8,		8								--8,	8
			},
			{--	Upgrade			Min		Max
				"UP_SHOT3",		8,		8								--8,	8
			},
			{--	Upgrade			Min		Max
				"UP_SHOT4",		8,		8								--8,	8
			},
			{--	Upgrade			Min		Max
				"UP_SHOTX",		8,		8								--8,	8
			},
		}
	},
	{	--Pulse Spitter
		{"Weapon_Projectile_ClipSize",	PulseUpgradeClipMult*MTUAddMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_SMG1",		12,		12								--12,	12
			},
			{--	Upgrade			Min		Max
				"UP_SMG2",		12,		12								--12,	12
			},
			{--	Upgrade			Min		Max
				"UP_SMG3",		12,		12								--12,	12
			},
			{--	Upgrade			Min		Max
				"UP_SMG4",		12,		12								--12,	12
			},
			{--	Upgrade			Min		Max
				"UP_SMGX",		12,		12								--12,	12
			},
		}
	},
	{	--Neutron Cannon
		{"Weapon_ChargedProjectile_ExtraSpeed",	NeutronUpgradeSpeedMult*MTUAddMult},		--Applies multiplier to all upgrades for this weapon
		{
			{--	Upgrade			Min		Max
				"UP_CANN1",		5,		10								--5,	10
			},
			{--	Upgrade			Min		Max
				"UP_CANN2",		10,		15								--10,	15
			},
			{--	Upgrade			Min		Max
				"UP_CANN3",		15,		20								--15,	20
			},
			{--	Upgrade			Min		Max
				"UP_CANN4",		20,		25								--20,	25
			},
			{--	Upgrade			Min		Max
				"UP_CANNX",		5,		25								--5,	25
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

function ShipCargoDamageMult (Mult)
    return
[[
	<Property name="Multipliers">
		<Property value="GcDamageMultiplier.xml">
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
        </Property>
	</Property>]]
end

AddRocketDamage = 
[[<Property value="GcStatsBonus.xml">
          <Property name="Stat" value="GcStatsTypes.xml">
            <Property name="StatsType" value="Ship_Weapons_Guns_Damage" />
          </Property>
          <Property name="Bonus" value="3250" />
          <Property name="Level" value="1" />
        </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
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
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_CANNX"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMax", NeutronXUpgradeMaxDMGMult}
				}
			},
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
				--["PRECEDING_KEY_WORDS"] = {"GcLaserBeamData.xml"},
				["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER"},
				--["SECTION_UP"] = 1,
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"CriticalHitModifier",	LaserCritMult}
				}
			},
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
				["SECTION_UP"] = 1,
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
				["SECTION_UP"] = 1,
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
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] = "",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Default",	DefaultDoorMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DOOR",	"DamageType", "Laser"},
				["SECTION_UP"] = 1,
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] = "",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Multiplier",	LaserDoorMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "DEPOT"},
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] = "",
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Default",	DefaultDepotMult}
				}
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
				["SPECIAL_KEY_WORDS"] = {"Id", "CARGO"},
				["LINE_OFFSET"] = "2",
				["REMOVE"] = "LINE",
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "CARGO"},
				["LINE_OFFSET"] = "1",
				["REPLACE_TYPE"] = "",
				["ADD"] = ShipCargoDamageMult (ShipWeaponsCargoMult)
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
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "TORPEDO"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipGun", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "TORPEDO"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipLaser", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "TORPEDO"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipShotgun", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_HULL"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipGun", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_HULL"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipLaser", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_HULL"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipMinigun", 1)
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_HULL"},
				["PRECEDING_KEY_WORDS"] = {"GcDamageMultiplier.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = DamageMult("ShipPlasma", 1)
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
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeAmount", MechStunWeaponCharge},
					{"ChargeMultiplier", MechStunWeaponChargeMultiplier}
				}
			},
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChargeMultiplier", HijackChargeMultiplier}
				}
			},
			
			--[[
			{
				["SPECIAL_KEY_WORDS"] = {"ID","SHIPLAS_ALIEN"},
				["PRECEDING_KEY_WORDS"] = {"GcStatsBonus.xml"},
				["ADD"] = AddShieldLeech (LivingShipBeamLeechAmount),
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			},
			]]
		}
	}
}}}}

local ChangesToWeaponStats = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

			ChangesToWeaponStats[#ChangesToWeaponStats+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID","UT_ROCKETS"},
				["PRECEDING_KEY_WORDS"] = {"GcStatsBonus.xml"},
				["ADD"] = AddRocketDamage,
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
			}

for i = 1, #WeaponStatChanges do
	local WeaponID = WeaponStatChanges[i][1][1]
	local Stats = WeaponStatChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatMult = Stats[j][2]
		local NumType = Stats[j][3]

			ChangesToWeaponStats[#ChangesToWeaponStats+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", WeaponID, "StatsType", StatID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["INTEGER_TO_FLOAT"] = NumType,
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Bonus", StatMult}
				}
			}
	end
end
for i = 1, #WeaponSecondaryTechChanges do
	local WeaponID = WeaponSecondaryTechChanges[i][1][1]
	local Stats = WeaponSecondaryTechChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatMult = Stats[j][2]
		local NumType = Stats[j][3]

			ChangesToWeaponStats[#ChangesToWeaponStats+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", WeaponID, "StatsType", StatID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["INTEGER_TO_FLOAT"] = NumType,
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
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", UpgradeMult},
					{"ValueMax", UpgradeMult}
				}
			}
	end
end
for i = 1, #UpgradeOtherChanges do
	local StatID = UpgradeOtherChanges[i][1][1]
	local Mult = UpgradeOtherChanges[i][1][2]
	local UpgradeIDs = UpgradeOtherChanges[i][2]

	for j = 1, #UpgradeIDs do
		local UpgradeID = UpgradeIDs[j][1]
		local OldMin = UpgradeIDs[j][2]
		local OldMax = UpgradeIDs[j][3]

			ChangesToUpgradeStats[#ChangesToUpgradeStats+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", UpgradeID, "StatsType", StatID},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", BonusMult (OldMin, Mult)},
					{"ValueMax", BonusMult (OldMax, Mult)}
				}
			}
	end
end
for i = 1, #UpgradeOtherChangesInt do
	local StatID = UpgradeOtherChangesInt[i][1][1]
	local Mult = UpgradeOtherChangesInt[i][1][2]
	local UpgradeIDs = UpgradeOtherChangesInt[i][2]

	for j = 1, #UpgradeIDs do
		local UpgradeID = UpgradeIDs[j][1]
		local OldMin = UpgradeIDs[j][2]
		local OldMax = UpgradeIDs[j][3]

			ChangesToUpgradeStats[#ChangesToUpgradeStats+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", UpgradeID, "StatsType", StatID},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", math.floor(OldMin*Mult+0.5)},
					{"ValueMax", math.floor(OldMax*Mult+0.5)}
				}
			}
	end
end
if RemoveSentWpnRate then
ChangesToUpgradeStats[#ChangesToUpgradeStats+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_SENGUN",		"StatsType", "Weapon_Projectile_Rate"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
end


local ChangesToProjectiles = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #WeaponProjChanges do
	local WeaponID = WeaponProjChanges[i][1][1]
	local Stats = WeaponProjChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatMult = Stats[j][2]

			ChangesToProjectiles[#ChangesToProjectiles+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"Id", WeaponID},
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{StatID, StatMult}
				}
			}
	end
end
for i = 1, #NPCStarshipDamageMults do
	local WeaponID = NPCStarshipDamageMults[i][1]
	local SDamageMult = NPCStarshipDamageMults[i][2]


			ChangesToProjectiles[#ChangesToProjectiles+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", WeaponID},
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"DefaultDamage", SDamageMult}
				}
			}
end

local ChangesToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["EXML_CHANGE_TABLE"]

for i = 1, #ShipWeaponEffectiveness do
	local DamageType = ShipWeaponEffectiveness[i][1]
	local HullMult = ShipWeaponEffectiveness[i][2]
	local ShieldMult = ShipWeaponEffectiveness[i][3]
	local TorpMult = ShipWeaponEffectiveness[i][4]
	local FrHullMult = ShipWeaponEffectiveness[i][5]

			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_HULL", "DamageType", DamageType},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
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
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", ShieldMult}
				}
			}
			
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "TORPEDO", "DamageType", DamageType},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", TorpMult}
				}
			}
			
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_HULL", "DamageType", DamageType},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Multiplier", FrHullMult}
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