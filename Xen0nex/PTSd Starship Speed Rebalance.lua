ModName = "PTSd Starship Speed Rebalance"
ModAuthor = 'Xen0nex'
GameVersion = "3.93"
Description = 'Makes all ships start out slower but end up faster with enough upgrades, tweaks balance of boosting speed for different ship types'

ThrustMult = 1												--	Global multiplier for Thrust for all ships. (accelration?)
BoostThrustMult = 1											--	Global multiplier for Boosting Thrust for all ships. (Boost accelration?)

MaxSpeedMult = 1											--	Global multiplier for Maximum Speed for all ships. 
MaxBoostSpeedMult = 1.5										--	Global multiplier for Maximum Boosting Speed for all ships. (There is no universal "speed limit")

ClassBonusMult = 1											--	Global multiplier for all Speed / Thrust related bonuses from Ship Class (C, B, A, S). Stacks with all the GLobal Thrust / Speed Multipliers above. Doesn't include maneuverability bonuses

ManMult = 1													--	Global multiplier for Maneuverability for all ships ???  There are other aspects to maneuverability as well, such as TurnBrakeMin, etc. (maybe use fairly small multipliers, as these are 0.6 ~ 1.65 in vanilla)

ShipSpeedChanges =
{
	{
		{"Control"},									--Maybe Shuttles	???
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
					{"MaxSpeed",						80*MaxSpeedMult},					--80		Top Speed?
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
		{"ControlLight"},								--Maybe Fighters, Explorers, Exotics, and Solars	???
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
					{"MaxSpeed",						90*MaxSpeedMult},					--80		Top Speed?
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
		{"ControlHeavy"},								--Maybe Haulers & Living Ships		???
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
					{"BoostThrustForce",				50*BoostThrustMult},					--20		Boosting Thrust / acceleration?
					{"BoostMaxSpeed",					140*MaxBoostSpeedMult},				--185		Boosting Top Speed?
					{"TurnStrength",					0.7*ManMult},						--0.7		Maneuverability?
				}
			},
			{
				{"CombatEngine"},						--Speed while fighting in space		???
				{
					{"ThrustForce",						30*ThrustMult},						--40		Thrust / acceleration?
					{"MaxSpeed",						70*MaxSpeedMult},					--80		Top Speed?
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