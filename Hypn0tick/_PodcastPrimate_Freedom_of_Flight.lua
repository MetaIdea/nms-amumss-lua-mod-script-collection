ModName         =   "Freedom_of_Flight"
ModAuthor       =   "PodcastPrimate"
LuaAuthor       =   "Hypn0tick"
BaseDescription =   "Safety Zone Decreased/0g flight in space/Cruise Control/Carry Momentum on Planet Entry."
GameVersion     =   "3.99+"

IgnoreFriendlyFire_Distance		=	"500"	-- The distance at which freighters will ignore friendly fire.
							-- Game default: 10000
Nexus_Rotation				=	"0"
Nexus_Pitch				=	"0"
Nexus_Distance				=	"-5000"

Max_Overspeed_Brake			=	"500"
AutoLevel_Angle				=	"180"

ShieldRecharge_HitTime			=	"3"
ShieldRecharge_Rate			=	"3"
NoBoost_FreighterDistance		=	"500"
NoBoost_FreighterAngle			=	"30"
NoBoost_ShipDistance			=	"3000"
NoBoost_ShipNear_MinTime		=	"10"

NoBoost_Combat_MinBattleTime		=	"15"
NoBoost_Combat_MinFreighterBattleTime	=	"60"
NoBoost_Combat_Time			=	"30"
ThrustDecay_Spring			=	"90000"
ThrustDecay_Combat_Spring		=	"90000"
Drift_TurnStrengthMultiplier		=	"0.05"

AsteroidHit_Angle			=	"180"
AsteroidHit_AngleBoosting		=	"180"
CombatBoost_Multiplier			=	"2"
CombatBoost_TurnDamp			=	"0.3"

MiniWarpLines_Number			=	"0"
MiniWarp_MinPlanetDistance		=	"500"
MiniWarpHUD_AttractAngle		=	"3"
MiniWarpHUD_AttractAngleStation		=	"3"
MiniWarpHUD_AttractAngleDense		=	"3"

GroundHeight_PostCollisionDamper	=	"0.0"
GroundHeight_SmoothTime			=	"10"

Shake_MaxPower				=	"0.5"
MaxSpeedUp_Velocity			=	"50"

DataTable =
{
    {	["PRECEDING"]	=	"Control",
        ["DATA"] =
        {
            {"SpaceEngine", "20", "180", "1", "0.0", "5", "250", "1300", "0.0", "0.3", "0.35", "0.75", "0.4", "0.1", "1", "0.25", "0.5", "1", "2", "1.35", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"PlanetEngine", "13", "125", "0.01", "0.4", "31", "50", "155", "0.3", "0.2", "0.6", "1.1", "0.5", "0.1", "0.25", "0.75", "1", "1", "2", "1.15", "0.5", "0.6", "0.7", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"CombatEngine", "20", "180", "10", "0.6", "30", "250", "1200", "0.4", "0.2", "0.5", "1", "0.25", "0.4", "1", "0.25", "0.5", "1", "2", "1.35", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"AtmosCombatEngine", "13", "125", "10", "0.4", "30", "50", "125", "0.3", "0.2", "0.6", "1.1", "0.5", "0.0", "0.01", "0.75", "1", "1", "2", "1.15", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
        }
    },
    {	["PRECEDING"]	=	"ControlLight",
        ["DATA"] =
        {
            {"SpaceEngine", "40", "180", "1", "0.0", "5", "250", "1300", "0.0", "0.3", "0.35", "0.75", "0.4", "0.0", "1", "0.25", "0.5", "1.5", "2.3", "1.6", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"PlanetEngine", "20", "125", "0.01", "0.0", "31", "100", "155", "0.0", "0.1", "0.85", "1.35", "0.5", "0.1", "0.01", "0.5", "0.75", "1.5", "2.3", "1.4", "0.5", "0.6", "1.7", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"CombatEngine", "40", "180", "10", "0.6", "30", "250", "1300", "0.5", "0.3", "0.75", "1.25", "0.4", "0.5", "1", "0.25", "0.5", "1.5", "2.3", "1.6", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"AtmosCombatEngine", "20", "125", "10", "0.4", "30", "100", "350", "0.3", "0.3", "0.85", "1.35", "0.5", "0.0", "0.01", "0.5", "0.75", "1.5", "2.3", "1.4", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
        }
    },
    {	["PRECEDING"]	=	"ControlHeavy",
        ["DATA"] =
        {
            {"SpaceEngine", "20", "180", "1", "0.0", "5", "250", "1300", "0.0", "0.3", "0.35", "0.75", "0.4", "0.0", "1", "0.25", "0.5", "0.4", "1.5", "1.35", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"PlanetEngine", "8", "130", "0.01", "0.0", "31", "15", "185", "0.0", "0.1", "0.6", "0.85", "0.4", "0.1", "0.4", "1.25", "1.5", "0.4", "1.5", "1.15", "0.5", "0.65", "1.75", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"CombatEngine", "20", "180", "10", "0.6", "30", "250", "1100", "0.3", "0.1", "0.5", "0.75", "0.25", "0.3", "1", "0.25", "0.5", "0.4", "1.5", "1.35", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
            {"AtmosCombatEngine", "8", "130", "10", "0.3", "30", "15", "130", "0.2", "0.1", "0.6", "0.85", "0.4", "0.0", "0.01", "1.25", "1.5", "0.4", "1.5", "1.15", "2", "0.4", "4", "0.1", "0.05", "0.15", "60", "10", "1.2", "0.99"},
        }
    },
}


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= "_"..ModAuthor.."_"..ModName..".pak",
	["MOD_DESCRIPTION"]			= BaseDescription,
	["MOD_AUTHOR"]				= ModAuthor,
	["LUA_AUTHOR"] 				= LuaAuthor,
	["NMS_VERSION"]				= GameVersion,
	["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FreighterBattleIgnoreFriendlyFireDistance",	IgnoreFriendlyFire_Distance},	--	Default: 7200
								{"ApplyHeightForce",				"False"},			--	Default: True
								{"WarpNexusRotation",				Nexus_Rotation},		--	Default: 15
								{"WarpNexusPitch",				Nexus_Pitch},			--	Default: 15
								{"WarpNexusDistance",				Nexus_Distance},		--	Default: -9000
								{"MaxOverspeedBrake",				Max_Overspeed_Brake},		--	Default: 1000
								{"AutoLevelWaterAngle",				AutoLevel_Angle},		--	Default: 45
								{"ShieldRechargeMinHitTime",			ShieldRecharge_HitTime},	--	Default: 60
								{"ShieldRechargeRate",				ShieldRecharge_Rate},		--	Default: 6

								{"NoBoostFreighterDistance",	NoBoost_FreighterDistance},	--	Default: 800
								{"NoBoostFreighterAngle",	NoBoost_FreighterAngle},	--	Default: 10
								{"NoBoostShipDistance",		NoBoost_ShipDistance},		--	Default: 2000
								{"NoBoostShipNearMinTime",	NoBoost_ShipNear_MinTime},	--	Default: 5

								{"NoBoostCombatEventMinBattleTime",		NoBoost_Combat_MinBattleTime},		--	Default: 35
								{"NoBoostCombatEventMinFreighterBattleTime",	NoBoost_Combat_MinFreighterBattleTime},	--	Default: 55
								{"NoBoostCombatEventTime",			NoBoost_Combat_Time},			--	Default: 25
								{"ThrustDecaySpring",				ThrustDecay_Spring},			--	Default: 20
								{"ThrustDecaySpringCombat",			ThrustDecay_Combat_Spring},		--	Default: 30
								{"DriftTurnStrengthMultiplier",			Drift_TurnStrengthMultiplier},		--	Default: 2

								{"AsteroidHitAngle",		AsteroidHit_Angle},		--	Default: 5
								{"AsteroidHitAngleBoosting",	AsteroidHit_AngleBoosting},	--	Default: 15
								{"CombatBoostMultiplier",	CombatBoost_Multiplier},	--	Default: 5
								{"CombatBoostTurnDamp",		CombatBoost_TurnDamp},		--	Default: 0.9

								{"MiniWarpLinesNum",			MiniWarpLines_Number},			--	Default: 4
								{"MiniWarpMinPlanetDistance",		MiniWarp_MinPlanetDistance},		--	Default: 2000
								{"MiniWarpHUDArrowAttractAngle",	MiniWarpHUD_AttractAngle},		--	Default: 10
								{"MiniWarpHUDArrowAttractAngleStation",	MiniWarpHUD_AttractAngleStation},	--	Default: 5
								{"MiniWarpHUDArrowAttractAngleDense",	MiniWarpHUD_AttractAngleDense},		--	Default: 4

								{"GroundHeightPostCollisionDamper",	GroundHeight_PostCollisionDamper},	--	Default: 0.6
								{"GroundHeightSmoothTime",		GroundHeight_SmoothTime},		--	Default: 0

								{"ShakeMaxPower",	Shake_MaxPower},	--	Default: 1.3
								{"MaxSpeedUpVelocity",	MaxSpeedUp_Velocity},	--	Default: 100
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight"},
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShipMinHeightForce",	"0.1"},		--	Default: 1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy"},
							["INTEGER_TO_FLOAT"]	=	"FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShipPlanetBrakeMinSpeed",	"1"},	--	Default: 15
								{"ShipPlanetBrakeMaxSpeed",	"25"},	--	Default: 90
								{"ShipMinHeightForce",	"0.1"},		--	Default: 1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"10"},			--	Default: 30
								{"ThrustForceMin",	"0"},			--	Default: -5
								{"MaxSpeedMax",	"5"},				--	Default: -5
								{"MaxSpeedMin",	"0"},				--	Default: 5
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"20"},			--	Default: 60
								{"ThrustForceMin",	"10"},			--	Default: 20
								{"MaxSpeedMax",	"10"},				--	Default: 5
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"30"},			--	Default: 100
								{"ThrustForceMin",	"20"},			--	Default: 50
								{"MaxSpeedMin",	"5"},				--	Default: 3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"40"},			--	Default: 250
								{"ThrustForceMin",	"30"},			--	Default: 50
								{"MaxSpeedMin",	"10"},				--	Default: 15
							}
						},
					}
				},			
			}
		},
	}	
}

function FillData(SectionName, V1,V2,V3,V4,V5,V6,V7,V8,V9,V10,V11,V12,V13,V14,V15,V16,V17,V18,V19,V20,V21,V22,V23,V24,V25,V26,V27,V28,V29)
    return
[[
    <Property name="]].. SectionName ..[[" value="GcPlayerSpaceshipEngineData.xml">
      <Property name="ThrustForce" value="]].. V1 ..[[" />
      <Property name="MaxSpeed" value="]].. V2 ..[[" />
      <Property name="MinSpeed" value="]].. V3 ..[[" />
      <Property name="Falloff" value="]].. V4 ..[[" />
      <Property name="MinSpeedForce" value="]].. V5 ..[[" />
      <Property name="BoostThrustForce" value="]].. V6 ..[[" />
      <Property name="BoostMaxSpeed" value="]].. V7 ..[[" />
      <Property name="BoostFalloff" value="]].. V8 ..[[" />
      <Property name="BoostingTurnDamp" value="]].. V9 ..[[" />
      <Property name="DirectionBrakeMin" value="]].. V10 ..[[" />
      <Property name="DirectionBrake" value="]].. V11 ..[[" />
      <Property name="ReverseBrake" value="]].. V12 ..[[" />
      <Property name="OverspeedBrake" value="]].. V13 ..[[" />
      <Property name="LowSpeedTurnDamper" value="]].. V14 ..[[" />
      <Property name="TurnBrakeMin" value="]].. V15 ..[[" />
      <Property name="TurnBrakeMax" value="]].. V16 ..[[" />
      <Property name="TurnStrength" value="]].. V17 ..[[" />
      <Property name="RollAmount" value="]].. V18 ..[[" />
      <Property name="RollForce" value="]].. V19 ..[[" />
      <Property name="RollAutoTime" value="]].. V20 ..[[" />
      <Property name="BalanceTimeMin" value="]].. V21 ..[[" />
      <Property name="BalanceTimeMax" value="]].. V22 ..[[" />
      <Property name="FollowProportionalGain" value="]].. V23 ..[[" />
      <Property name="FollowDerivativeGain" value="]].. V24 ..[[" />
      <Property name="FollowIntegralGain" value="]].. V25 ..[[" />
      <Property name="FollowProportionalLimit" value="]].. V26 ..[[" />
      <Property name="FollowDerivativeLimit" value="]].. V27 ..[[" />
      <Property name="FollowIntegralLimit" value="]].. V28 ..[[" />
      <Property name="FollowIntegralDecay" value="]].. V29 ..[[" />
    </Property>
]]
end

function CreateProperty(PropertyData)
    local PropertiesString = ""

    for j = 1, #PropertyData do
        local SectionName = PropertyData[j][1 ]
        local V1 = PropertyData[j][2 ]
        local V2 = PropertyData[j][3 ]
        local V3 = PropertyData[j][4 ]
        local V4 = PropertyData[j][5 ]
        local V5 = PropertyData[j][6 ]
        local V6 = PropertyData[j][7 ]
        local V7 = PropertyData[j][8 ]
        local V8 = PropertyData[j][9 ]
        local V9 = PropertyData[j][10 ]
        local V10 = PropertyData[j][11]
        local V11 = PropertyData[j][12]
        local V12 = PropertyData[j][13]
        local V13 = PropertyData[j][14]
        local V14 = PropertyData[j][15]
        local V15 = PropertyData[j][16]
        local V16 = PropertyData[j][17]
        local V17 = PropertyData[j][18]
        local V18 = PropertyData[j][19]
        local V19 = PropertyData[j][20]
        local V20 = PropertyData[j][21]
        local V21 = PropertyData[j][22]
        local V22 = PropertyData[j][23]
        local V23 = PropertyData[j][24]
        local V24 = PropertyData[j][25]
        local V25 = PropertyData[j][26]
        local V26 = PropertyData[j][27]
        local V27 = PropertyData[j][28]
        local V28 = PropertyData[j][29]
        local V29 = PropertyData[j][30]
        PropertiesString = PropertiesString..FillData(SectionName, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29)
    end
return PropertiesString
end



local PropertyTable  = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
for i = 1, #DataTable do
	local PropertyPrecedingKeyword = DataTable[i]["PRECEDING"]
    local PropertyData = DataTable[i]["DATA"]

    PropertyTable[#PropertyTable +1 ] =
	{
        ["MBIN_FILE_SOURCE"] = 
        { 
            [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],               
        },      
        ["EXML_CHANGE_TABLE"] =
        {
            {
                ["PRECEDING_KEY_WORDS"] = { PropertyPrecedingKeyword, "SpaceEngine" },
                ["REMOVE"] = "SECTION"
            },
            {
                ["PRECEDING_KEY_WORDS"] = { PropertyPrecedingKeyword, "PlanetEngine" },
                ["REMOVE"] = "SECTION"
            },
            {
                ["PRECEDING_KEY_WORDS"] = { PropertyPrecedingKeyword, "CombatEngine" },
                ["REMOVE"] = "SECTION"
            },
            {
                ["PRECEDING_KEY_WORDS"] = { PropertyPrecedingKeyword, "AtmosCombatEngine" },
                ["REMOVE"] = "SECTION"
            },
            {
                ["PRECEDING_KEY_WORDS"] = { PropertyPrecedingKeyword },
                ["ADD"] = CreateProperty(PropertyData)
            },
        }
    }
end
