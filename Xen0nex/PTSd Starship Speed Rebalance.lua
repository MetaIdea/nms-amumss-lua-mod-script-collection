ModName = "PTSd Starship Speed Rebalance"
ModAuthor = 'Xen0nex'
GameVersion = "4.41"
Description = 'Makes all ships start out slower but end up faster with enough upgrades, tweaks balance of boosting speed for different ship types'

ThrustMult = 1												--	Global multiplier for Thrust for all ships. (accelration?)
BoostThrustMult = 1											--	Global multiplier for Boosting Thrust for all ships. (Boost accelration?)

MaxSpeedMult = 1											--	Global multiplier for Maximum Speed for all ships. 
MaxBoostSpeedMult = 1.5										--	Global multiplier for Maximum Boosting Speed for all ships. (There is no universal "speed limit")

ClassBonusMult = 1											--	Global multiplier for all Speed / Thrust related bonuses from Ship Class (C, B, A, S). Stacks with all the GLobal Thrust / Speed Multipliers above. Doesn't include maneuverability bonuses

ManMult = 1													--	Global multiplier for Maneuverability for all ships ???  There are other aspects to maneuverability as well, such as TurnBrakeMin, etc. (maybe use fairly small multipliers, as these are 0.6 ~ 1.65 in vanilla)

ReplaceControlHover = true									--false			Set to true to make ControlHover be based off of Control instead of off of ControlHeavy

ShipSpeedChanges =
{
	{
		{"Control"},									--Shuttles
		{
			{
				{"SpaceEngine"},						--Speed in open space
				{
					{"ThrustForce",						40*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						180*MaxSpeedMult},					--180		Top Speed?
					{"BoostThrustForce",				500*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1200*MaxBoostSpeedMult},			--1200		Boosting Top Speed?
					{"TurnStrength",					1*ManMult},							--1			Maneuverability?
				}
			},
			{
				{"PlanetEngine"},						--Speed in atmosphere	???
				{
					{"ThrustForce",						30*ThrustMult},						--20		Thrust / acceleration?
					{"MaxSpeed",						130*MaxSpeedMult},					--125		Top Speed?
					{"BoostThrustForce",				100*BoostThrustMult},				--100		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					160*MaxBoostSpeedMult},				--155		Boosting Top Speed?
					{"TurnStrength",					1*ManMult},							--1			Maneuverability?
				}
			},
			{
				{"CombatEngine"},						--Speed while fighting in space		???
				{
					{"ThrustForce",						40*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						115*MaxSpeedMult},					--115		Top Speed?
					{"BoostThrustForce",				500*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1200*MaxBoostSpeedMult},			--1200		Boosting Top Speed?
					{"TurnStrength",					1.3*ManMult},						--1.3		Maneuverability?
				}
			},
			{
				{"AtmosCombatEngine"},					--Speed while fighting in atmosphere		???
				{
					{"ThrustForce",						40*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						80*MaxSpeedMult},					--80		Top Speed?
					{"BoostThrustForce",				80*BoostThrustMult},				--100		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					140*MaxBoostSpeedMult},				--155		Boosting Top Speed?
					{"TurnStrength",					1.3*ManMult},						--1.3		Maneuverability?
				}
			},
		}
	},
	{
		{"ControlLight"},								--Fighters, Explorers, Exotics, and Solars
		{
			{
				{"SpaceEngine"},						--Speed in open space
				{
					{"ThrustForce",						60*ThrustMult},						--80		Thrust / acceleration?
					{"MaxSpeed",						210*MaxSpeedMult},					--180		Top Speed?
					{"BoostThrustForce",				600*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1500*MaxBoostSpeedMult},			--1300		Boosting Top Speed?
					{"TurnStrength",					1.1*ManMult},						--1.1		Maneuverability?
				}
			},
			{
				{"PlanetEngine"},						--Speed in atmosphere	???
				{
					{"ThrustForce",						40*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						150*MaxSpeedMult},					--125		Top Speed?
					{"BoostThrustForce",				200*BoostThrustMult},				--200		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					180*MaxBoostSpeedMult},				--150		Boosting Top Speed?
					{"TurnStrength",					1.65*ManMult},						--1.65		Maneuverability?
				}
			},
			{
				{"CombatEngine"},						--Speed while fighting in space		???
				{
					{"ThrustForce",						60*ThrustMult},						--80		Thrust / acceleration?
					{"MaxSpeed",						130*MaxSpeedMult},					--130		Top Speed?
					{"BoostThrustForce",				600*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1500*MaxBoostSpeedMult},			--1300		Boosting Top Speed?
					{"TurnStrength",					1.5*ManMult},						--1.5		Maneuverability?
				}
			},
			{
				{"AtmosCombatEngine"},					--Speed while fighting in atmosphere		???
				{
					{"ThrustForce",						60*ThrustMult},						--80		Thrust / acceleration?
					{"MaxSpeed",						90*MaxSpeedMult},					--80		Top Speed?
					{"BoostThrustForce",				110*BoostThrustMult},				--100		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					160*MaxBoostSpeedMult},				--155		Boosting Top Speed?
					{"TurnStrength",					1.5*ManMult},						--1.5		Maneuverability?
				}
			},
		}
	},
	{
		{"ControlHeavy"},								--Haulers & Living Ships
		{
			{
				{"SpaceEngine"},						--Speed in open space
				{
					{"ThrustForce",						30*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						150*MaxSpeedMult},					--180		Top Speed?
					{"BoostThrustForce",				400*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1000*MaxBoostSpeedMult},			--1100		Boosting Top Speed?
					{"TurnStrength",					0.6*ManMult},						--0.6		Maneuverability?
				}
			},
			{
				{"PlanetEngine"},						--Speed in atmosphere	???
				{
					{"ThrustForce",						20*ThrustMult},						--20		Thrust / acceleration?
					{"MaxSpeed",						110*MaxSpeedMult},					--130		Top Speed?
					{"BoostThrustForce",				50*BoostThrustMult},				--20		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					140*MaxBoostSpeedMult},				--185		Boosting Top Speed?
					{"TurnStrength",					0.7*ManMult},						--0.7		Maneuverability?
				}
			},
			{
				{"CombatEngine"},						--Speed while fighting in space		???
				{
					{"ThrustForce",						30*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						100*MaxSpeedMult},					--100		Top Speed?
					{"BoostThrustForce",				400*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1000*MaxBoostSpeedMult},			--1100		Boosting Top Speed?
					{"TurnStrength",					1*ManMult},							--1			Maneuverability?
				}
			},
			{
				{"AtmosCombatEngine"},					--Speed while fighting in atmosphere		???
				{
					{"ThrustForce",						30*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						70*MaxSpeedMult},					--80		Top Speed?
					{"BoostThrustForce",				60*BoostThrustMult},				--50		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					120*MaxBoostSpeedMult},				--120		Boosting Top Speed?
					{"TurnStrength",					1*ManMult},							--1			Maneuverability?
				}
			},
		}
	},
	{
		{"ControlHover"},								--Sentinel Interceptor
		{
			{
				{"SpaceEngine"},						--Speed in open space
				{
					{"ThrustForce",						45*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						190*MaxSpeedMult},					--180		Top Speed?
					{"BoostThrustForce",				425*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1300*MaxBoostSpeedMult},			--1100		Boosting Top Speed?
					{"TurnStrength",					1*ManMult},						--0.6		Maneuverability?
				}
			},
			{
				{"PlanetEngine"},						--Speed in atmosphere	???
				{
					{"ThrustForce",						33*ThrustMult},						--20		Thrust / acceleration?
					{"MaxSpeed",						135*MaxSpeedMult},					--130		Top Speed?
					{"BoostThrustForce",				400*BoostThrustMult},				--400		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					165*MaxBoostSpeedMult},				--185		Boosting Top Speed?
					{"TurnStrength",					1.5*ManMult},						--1.05		Maneuverability?
				}
			},
			{
				{"CombatEngine"},						--Speed while fighting in space		???
				{
					{"ThrustForce",						45*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						120*MaxSpeedMult},					--80		Top Speed?
					{"BoostThrustForce",				525*BoostThrustMult},				--500		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					1300*MaxBoostSpeedMult},			--1100		Boosting Top Speed?
					{"TurnStrength",					1.3*ManMult},						--1			Maneuverability?
				}
			},
			{
				{"AtmosCombatEngine"},					--Speed while fighting in atmosphere		???
				{
					{"ThrustForce",						45*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						83*MaxSpeedMult},					--80		Top Speed?
					{"BoostThrustForce",				200*BoostThrustMult},				--50		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					145*MaxBoostSpeedMult},				--120		Boosting Top Speed?
					{"TurnStrength",					1.3*ManMult},						--1			Maneuverability?
				}
			},
		}
	}
}

ClassSpeedBonuses = 
{
	{
		{"ControlBonusC"},								--Extra Speed stats for being Class C	???
		{
			{"ThrustForceMax",						30*ThrustMult*ClassBonusMult},			--30		Largest possible bonus?
			{"ThrustForceMin",						-5*ThrustMult*ClassBonusMult},			-- -5		Smallest possible bonus?
			{"MaxSpeedMax",							5*MaxSpeedMult*ClassBonusMult},			--5			Largest possible bonus?
			{"MaxSpeedMin",							0*MaxSpeedMult*ClassBonusMult},			--0			Smallest possible bonus?
			{"BoostMaxSpeedMax",					5*MaxBoostSpeedMult*ClassBonusMult},	--5			Largest possible bonus?
			{"BoostMaxSpeedMin",					0*MaxBoostSpeedMult*ClassBonusMult},	--0			Smallest possible bonus?
			{"TurnStrengthMax",						-0.05*ManMult},							-- -0.05	Largest possible bonus?
			{"TurnStrengthMin",						0.05*ManMult},							--0.05		Smallest possible bonus?
		}
	},
	{
		{"ControlBonusB"},								--Extra Speed stats for being Class B	???
		{
			{"ThrustForceMax",						60*ThrustMult*ClassBonusMult},			--60		Largest possible bonus?
			{"ThrustForceMin",						20*ThrustMult*ClassBonusMult},			--20		Smallest possible bonus?
			{"MaxSpeedMax",							5*MaxSpeedMult*ClassBonusMult},			--5			Largest possible bonus?
			{"MaxSpeedMin",							0*MaxSpeedMult*ClassBonusMult},			--0			Smallest possible bonus?
			{"BoostMaxSpeedMax",					5*MaxBoostSpeedMult*ClassBonusMult},	--5			Largest possible bonus?
			{"BoostMaxSpeedMin",					0*MaxBoostSpeedMult*ClassBonusMult},	--0			Smallest possible bonus?
			{"TurnStrengthMax",						0.1*ManMult},							--0.1		Largest possible bonus?
			{"TurnStrengthMin",						0*ManMult},								--0			Smallest possible bonus?
		}
	},
	{
		{"ControlBonusA"},								--Extra Speed stats for being Class A	???
		{
			{"ThrustForceMax",						100*ThrustMult*ClassBonusMult},			--100		Largest possible bonus?
			{"ThrustForceMin",						50*ThrustMult*ClassBonusMult},			--50		Smallest possible bonus?
			{"MaxSpeedMax",							20*MaxSpeedMult*ClassBonusMult},		--20		Largest possible bonus?
			{"MaxSpeedMin",							3*MaxSpeedMult*ClassBonusMult},			--3			Smallest possible bonus?
			{"BoostMaxSpeedMax",					10*MaxBoostSpeedMult*ClassBonusMult},	--10		Largest possible bonus?
			{"BoostMaxSpeedMin",					5*MaxBoostSpeedMult*ClassBonusMult},	--5			Smallest possible bonus?
			{"TurnStrengthMax",						0.15*ManMult},							--0.15		Largest possible bonus?
			{"TurnStrengthMin",						0*ManMult},								--0			Smallest possible bonus?
		}
	},
	{
		{"ControlBonusS"},								--Extra Speed stats for being Class S	???
		{
			{"ThrustForceMax",						250*ThrustMult*ClassBonusMult},			--250		Largest possible bonus?
			{"ThrustForceMin",						50*ThrustMult*ClassBonusMult},			--50		Smallest possible bonus?
			{"MaxSpeedMax",							30*MaxSpeedMult*ClassBonusMult},		--30		Largest possible bonus?
			{"MaxSpeedMin",							15*MaxSpeedMult*ClassBonusMult},		--15		Smallest possible bonus?
			{"BoostMaxSpeedMax",					15*MaxBoostSpeedMult*ClassBonusMult},	--15		Largest possible bonus?
			{"BoostMaxSpeedMin",					5*MaxBoostSpeedMult*ClassBonusMult},	--5			Smallest possible bonus?
			{"TurnStrengthMax",						0.25*ManMult},							--0.25		Largest possible bonus?
			{"TurnStrengthMin",						0.1*ManMult},							--0.1		Smallest possible bonus?
		}
	},
}

--Nothing below this line should need to be edited; all changes should be possible with the values above

NewControlHover =
[[<Property name="ControlHover" value="GcPlayerSpaceshipControlData.xml">
    <Property name="SpaceEngine" value="GcPlayerSpaceshipEngineData.xml">
      <Property name="ThrustForce" value="40" />
      <Property name="MaxSpeed" value="180" />
      <Property name="MinSpeed" value="1" />
      <Property name="Falloff" value="0.7" />
      <Property name="MinSpeedForce" value="5" />
      <Property name="BoostThrustForce" value="500" />
      <Property name="BoostMaxSpeed" value="1200" />
      <Property name="BoostFalloff" value="0.7" />
      <Property name="BoostingTurnDamp" value="0.1" />
      <Property name="DirectionBrakeMin" value="1" />
      <Property name="DirectionBrake" value="1.5" />
      <Property name="ReverseBrake" value="0.5" />
      <Property name="OverspeedBrake" value="3" />
      <Property name="LowSpeedTurnDamper" value="1" />
      <Property name="TurnBrakeMin" value="1" />
      <Property name="TurnBrakeMax" value="2" />
      <Property name="TurnStrength" value="1" />
      <Property name="RollAmount" value="2" />
      <Property name="RollForce" value="1.25" />
      <Property name="RollAutoTime" value="2" />
      <Property name="BalanceTimeMin" value="0.4" />
      <Property name="BalanceTimeMax" value="4" />
      <Property name="FollowProportionalGain" value="0.1" />
      <Property name="FollowDerivativeGain" value="0.05" />
      <Property name="FollowIntegralGain" value="0.15" />
      <Property name="FollowProportionalLimit" value="60" />
      <Property name="FollowDerivativeLimit" value="10" />
      <Property name="FollowIntegralLimit" value="1.2" />
      <Property name="FollowIntegralDecay" value="0.99" />
    </Property>
    <Property name="PlanetEngine" value="GcPlayerSpaceshipEngineData.xml">
      <Property name="ThrustForce" value="20" />
      <Property name="MaxSpeed" value="125" />
      <Property name="MinSpeed" value="1" />
      <Property name="Falloff" value="0.5" />
      <Property name="MinSpeedForce" value="31" />
      <Property name="BoostThrustForce" value="400" />
      <Property name="BoostMaxSpeed" value="155" />
      <Property name="BoostFalloff" value="0.7" />
      <Property name="BoostingTurnDamp" value="0.25" />
      <Property name="DirectionBrakeMin" value="1.3" />
      <Property name="DirectionBrake" value="1.8" />
      <Property name="ReverseBrake" value="1" />
      <Property name="OverspeedBrake" value="3" />
      <Property name="LowSpeedTurnDamper" value="0.25" />
      <Property name="TurnBrakeMin" value="2" />
      <Property name="TurnBrakeMax" value="3" />
      <Property name="TurnStrength" value="1.5" />
      <Property name="RollAmount" value="2" />
      <Property name="RollForce" value="1.25" />
      <Property name="RollAutoTime" value="0.5" />
      <Property name="BalanceTimeMin" value="0.6" />
      <Property name="BalanceTimeMax" value="0.7" />
      <Property name="FollowProportionalGain" value="0.1" />
      <Property name="FollowDerivativeGain" value="0.05" />
      <Property name="FollowIntegralGain" value="0.15" />
      <Property name="FollowProportionalLimit" value="60" />
      <Property name="FollowDerivativeLimit" value="10" />
      <Property name="FollowIntegralLimit" value="1.2" />
      <Property name="FollowIntegralDecay" value="0.99" />
    </Property>
    <Property name="CombatEngine" value="GcPlayerSpaceshipEngineData.xml">
      <Property name="ThrustForce" value="40" />
      <Property name="MaxSpeed" value="80" />
      <Property name="MinSpeed" value="50" />
      <Property name="Falloff" value="0.7" />
      <Property name="MinSpeedForce" value="30" />
      <Property name="BoostThrustForce" value="500" />
      <Property name="BoostMaxSpeed" value="1200" />
      <Property name="BoostFalloff" value="0.7" />
      <Property name="BoostingTurnDamp" value="0.1" />
      <Property name="DirectionBrakeMin" value="1" />
      <Property name="DirectionBrake" value="2" />
      <Property name="ReverseBrake" value="0.5" />
      <Property name="OverspeedBrake" value="3" />
      <Property name="LowSpeedTurnDamper" value="1" />
      <Property name="TurnBrakeMin" value="1" />
      <Property name="TurnBrakeMax" value="4" />
      <Property name="TurnStrength" value="1.3" />
      <Property name="RollAmount" value="2" />
      <Property name="RollForce" value="1.25" />
      <Property name="RollAutoTime" value="2" />
      <Property name="BalanceTimeMin" value="0.4" />
      <Property name="BalanceTimeMax" value="4" />
      <Property name="FollowProportionalGain" value="0.1" />
      <Property name="FollowDerivativeGain" value="0.05" />
      <Property name="FollowIntegralGain" value="0.15" />
      <Property name="FollowProportionalLimit" value="60" />
      <Property name="FollowDerivativeLimit" value="10" />
      <Property name="FollowIntegralLimit" value="1.2" />
      <Property name="FollowIntegralDecay" value="0.99" />
    </Property>
    <Property name="AtmosCombatEngine" value="GcPlayerSpaceshipEngineData.xml">
      <Property name="ThrustForce" value="40" />
      <Property name="MaxSpeed" value="80" />
      <Property name="MinSpeed" value="10" />
      <Property name="Falloff" value="0.7" />
      <Property name="MinSpeedForce" value="30" />
      <Property name="BoostThrustForce" value="100" />
      <Property name="BoostMaxSpeed" value="155" />
      <Property name="BoostFalloff" value="0.7" />
      <Property name="BoostingTurnDamp" value="0.1" />
      <Property name="DirectionBrakeMin" value="1" />
      <Property name="DirectionBrake" value="2" />
      <Property name="ReverseBrake" value="0.5" />
      <Property name="OverspeedBrake" value="3" />
      <Property name="LowSpeedTurnDamper" value="0.01" />
      <Property name="TurnBrakeMin" value="1" />
      <Property name="TurnBrakeMax" value="4" />
      <Property name="TurnStrength" value="1.3" />
      <Property name="RollAmount" value="2" />
      <Property name="RollForce" value="1.25" />
      <Property name="RollAutoTime" value="2" />
      <Property name="BalanceTimeMin" value="0.4" />
      <Property name="BalanceTimeMax" value="4" />
      <Property name="FollowProportionalGain" value="0.1" />
      <Property name="FollowDerivativeGain" value="0.05" />
      <Property name="FollowIntegralGain" value="0.15" />
      <Property name="FollowProportionalLimit" value="60" />
      <Property name="FollowDerivativeLimit" value="10" />
      <Property name="FollowIntegralLimit" value="1.2" />
      <Property name="FollowIntegralDecay" value="0.99" />
    </Property>
    <Property name="ExitHeightFactorMin" value="200" />
    <Property name="ExitHeightFactorMax" value="1200" />
    <Property name="ExitHeightFactorPlungeMin" value="500" />
    <Property name="ExitHeightFactorPlungeMax" value="5000" />
    <Property name="ExitAngleMin" value="-30" />
    <Property name="ExitAngleMax" value="9" />
    <Property name="ExitLeaveAngle" value="60" />
    <Property name="ExitCurve" value="TkCurveType.xml">
      <Property name="Curve" value="EaseInExpo" />
    </Property>
    <Property name="ExitDownCurve" value="TkCurveType.xml">
      <Property name="Curve" value="Squared" />
    </Property>
    <Property name="AngularFactor" value="0.1" />
    <Property name="MaxTorque" value="10000" />
    <Property name="ShipPlanetBrakeMinSpeed" value="15" />
    <Property name="ShipPlanetBrakeMaxSpeed" value="90" />
    <Property name="ShipPlanetBrakeMinHeight" value="200" />
    <Property name="ShipPlanetBrakeMaxHeight" value="5000" />
    <Property name="ShipPlanetBrakeForce" value="50" />
    <Property name="ShipPlanetBrakeAlignMinTime" value="0.3" />
    <Property name="ShipPlanetBrakeAlignMaxTime" value="8" />
    <Property name="ShipMinHeightForce" value="1" />
  </Property>]]


NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= ModName..GameVersion..".pak",
	MOD_AUTHOR			= ModAuthor,
	NMS_VERSION			= GameVersion,
	MOD_DESCRIPTION		= Description,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			--Intentionally left blank to be filled by the function below
		}
	},
}}}}

local ChangesToShipGlobals = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

if ReplaceControlHover then
ChangesToShipGlobals[#ChangesToShipGlobals+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ControlHover", "GcPlayerSpaceshipControlData.xml"},
				["REMOVE"] = "SECTION"
			}
ChangesToShipGlobals[#ChangesToShipGlobals+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ControlHeavy", "GcPlayerSpaceshipControlData.xml"},
				["REPLACE_TYPE"] = "ADDAFTERSECTION",
				["ADD"] = NewControlHover
			}
end

for i = 1, #ShipSpeedChanges do
	local ControlType = ShipSpeedChanges[i][1][1]
	local Engines = ShipSpeedChanges[i][2]

	for j = 1, #Engines do
		local EngineType = Engines[j][1][1]
		local Attributes = Engines[j][2]
		
		for k = 1, #Attributes do
			Attribute = Attributes[k][1]
			NewValue = Attributes[k][2]

			ChangesToShipGlobals[#ChangesToShipGlobals+1] =
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {ControlType, "GcPlayerSpaceshipControlData.xml", 	EngineType, "GcPlayerSpaceshipEngineData.xml"},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{Attribute, NewValue}
				}
			}
		end
	end
end
for i = 1, #ClassSpeedBonuses do
	local Class = ClassSpeedBonuses[i][1][1]
	local Attributes = ClassSpeedBonuses[i][2]

	for j = 1, #Attributes do
		Attribute = Attributes[j][1]
		NewValue = Attributes[j][2]

			ChangesToShipGlobals[#ChangesToShipGlobals+1] =
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {Class, "GcPlayerSpaceshipClassBonuses.xml"},
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{Attribute, NewValue}
				}
			}
	end
end