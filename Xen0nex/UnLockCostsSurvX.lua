ModName = "UnLockCostsSurvX"
GameVersion = "3_87"
--Currently balancing around Survival Mode

--Procedural Tech (Upgrades) multipliers to the "BaseValue" cost
UpgradeCMult	=		1							--Vanilla cost is	60		This multiplies the vanilla "BaseValue", affecting both purchase and selling prices.	E.G. "1.2" means you sell them for 1.2x the vanilla price, and shops charge 1.2x more
UpgradeCBaseMarkup	=	0.2							--0.2						This replaces the vanilla "BuyBaseMarkup", affecting how much shops mark up the price ON TOP OF the actual value. E.G. "0.2" means shops charge BaseValue + (0.2 x BaseValue) for total price of 1.2x BaseValue. 
UpgradeBMult	=		2							--Vanilla cost is	140
UpgradeBBaseMarkup	=	0.2							--0.2
UpgradeAMult	=		1.5							--Vanilla cost is	300
UpgradeABaseMarkup	=	1							--0.2
UpgradeSMult	=		2							--Vanilla cost is	480
UpgradeSBaseMarkup	=	2							--0.2
UpgradeXMult	=		1.5							--Vanilla cost is	280, 320, 600	(depends of which tech it upgrades)
UpgradeXBaseMarkup	=	0.2							--0.2

RegUpgradeSpaceStationMarkup = 0					--0						Doesn't seem to apply to regular upgrades.	Affects how much shops mark up the price ON TOP OF other values, e.g. a value of 0.5 means space stations charge +50% more than other sources
SusUpgradeSpaceStationMarkup = 1					--0						For suspicious upgrades in Outlaw stations.	Untested.

UpgradeScannerMult	=	1.2							--Additional multiplier to apply to BaseValue of all Scanner upgrades (including X class) on top of the above multipliers

--Global Tech cost multipliers		(Currently also affects the price of Technology purchased from other places like Minor Settlements also. )
TechCostMult = 			20							--Multiplier applies to the "FragmentCost" of the technology items with costs greater than or equal to 50, which are all probably techs the Anomaly is selling for 50~460 Nanites?	(Nautilon High-Power Sonar is 10, though)
	--Additional multipliers are applied to specific Tech to balance them due to normally having unbalanced prices that are too high or too low, e.g. Translator tech having a very high price
	--These adjustment multipliers can be seen and changed in the TechAdjustments Table below

--Recipe Cost mutipliers	(Note, these multipliers also apply to the cost in Factory Override Units to unlock at a breached Manufacturing facility, so you should make sure the "FACT_TOKEN" reward for those is also multiplied by the same amount, e.g. by BountyandExpeditionRewards+FactTokens mod)
	--NOTE: Probably works best if these are all the same value, so that you can use that same value to multiply the Factory Override Token award amount and stack size
AtlasPassesMult	=					10			--Multiplier applied to default cost of 250 Nanites
ComponentCraftsMult	=				10			--Multiplier applied to default cost of 250 Nanites for Components & Devices
ValuableCraftsMult	=				10			--Multiplier applied to default cost of 250 Nanites			(125 Nanites for Alloys, though SOMETIMES???)

--Blueprint cost multipliers
ExoCraftBuildingsMult	=			7.5			--Multiplier applied to default cost of 4, 8, or 10 Salvaged Data
ExoCraftSummonBuildingsMult	=		2			--Multiplier applied to default cost of 12 and 15 Salvaged Data
FarmingBlueprintsMult	=			8			--Multiplier applied to default cost of 3 Salvaged Data 
LargePlanterBlueprintMult	=		3			--Multiplier applied to default cost of 10 Salvaged Data 
CookingAndLivestockMult	=			3			--Multiplier applied to default cost of 10 Salvaged Data
SimpleMachineMult	=				5			--Multiplier applied to default cost of 1 Salvaged Data
MachineMult	=						3			--Multiplier applied to default cost of 10 Salvaged Data	(Alternative Landing Pad is 1 Salvaged Data, though)
AntimatterReactorMult	=			1.5			--Multiplier applied to default cost of 20 Salvaged Data
StorageContainersMult	=			1			--Multiplier applied to default cost of 5 Salvaged Data

--Specific Tech Adjustment Multipliers	(stacks multiplicatively with the TechCostMult
TechAdjustments =
{
	{
		"UT_TRANSLATE1",	0.15			--Translator Tech
	},
	{
		"UT_TRANSLATE2",	0.15
	},
	{
		"UT_TRANSLATE3",	0.15
	},
	{
		"MECH_PILOT",	0.625			--Minotaur AI Pilot
	},
	{
		"UT_MINER",	0.5					--Optical Drill
	},
	{
		"UT_MIDAIR",	0.5				--Airburst Engine
	},
	{
		"UT_PULSEFUEL",	0.2				--Instability Drive
	},
	{
		"UT_PULSESPEED",	0.2			--Sub-light amplifier
	},
	{
		"UT_QUICKWARP",	0.2				--Emergency Warp				240
	},
	{
		"UT_LAUNCHCHARGE",	0.3			--Launch System Recharger
	},
	{
		"SUB_LASER",	0.5				--Tethys Beam
	},
	{
		"SUIT_REFINER",	0.5				--Personal Refiner
	},
	{
		"UT_WATERJET",	0.3				--Efficient Water Jets
	},
	{
		"SUB_RECHARGE",	0.3				--Osmotic Generator
	},
	{
		"UT_SURVEY",	0.5				--Survey Device
	},
	{
		"UT_HOT",	0.3					--Coolant Network				160
	},
	{
		"UT_COLD",	0.3					--Thermic Layer					160
	},
	{
		"UT_TOX",	0.3					--Toxic Suppressor				160
	},
	{
		"UT_RAD",	0.3					--Radiation Deflector			160
	},
	{
		"STEALTH",	1.5					--Cloaking Device 
	},
	{
		"SUB_BINOCS",	10				--High-Power Sonar 
	},
	{
		"HDRIVEBOOST1",	1.5				--Cadmium Drive					80
	},
	{
		"HDRIVEBOOST2",	1.5				--Emeril Drive					120
	},
	{
		"HDRIVEBOOST3",	1.5				--Indium Drive					200
	},
	{
		"STUN_GREN",	2				--Paralysis Mortar
	},
	{
		"UT_ROCKETS",	3.5				--Large Rocket Tubes			50
	},
	{
		"F_TELEPORT",	3.2				--Matter Beam					5 Salvaged Frigate Modules			(Not affected by TechCostMult)
	}
}

--New recipe for installing Matter Beam in freigther
MatterHeart = 16						--Heart of the Sun		(5 Antimatter in vanilla)
MatterBulk = 1							--Cargo Bulkhead		(3 Magnet in vanilla)
MatterAug = 1							--Storage AUgmentation	(10 Wiring Loom in vanilla)

--Adds Hardframe Engine as a requirement for all Exo-Mech Hardframe upgrades
MechPart = [[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="MECH_PROD" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>]]
--Adds 2x Quad Servo as a requirement for Sentinel Hardframe Legs upgrade (Since they already require Hardframe Engine)
QuadParts = [[<Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="QUAD_PROD" />
          <Property name="InventoryType" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="2" />
        </Property>]]

--Everything below this point doesn't need to be changed, all the values can be edited in the sections above

RecipeChanges	=
{
{
	{
		AtlasPassesMult
	},
	{
		"ACCESS1",
		"ACCESS2",
		"ACCESS3"
	}
},
{
	{
		ComponentCraftsMult
	},
	{
		"CASING",
		"NANOTUBES",
		"CARBON_SEAL",
		"MICROCHIP",
		"HYDRALIC",
		"COMPUTER",
		"MAGNET",
		"MIRROR",
		"BIO",
		"TECH_COMP",
		"PRODFUEL2",
		"POWERCELL",
		"HYPERFUEL1",
		"HYPERFUEL2",
		"GRENFUEL1",
		"SUBFUEL",
		"SHIPCHARGE",
		"ALLOY1",
		"ALLOY2",
		"ALLOY3",
		"ALLOY4",
		"ALLOY5",
		"ALLOY6",
		"ALLOY7",
		"ALLOY8"
	}
},
{
	{
		ValuableCraftsMult
	},
	{
		"TRA_CURIO1",
		"FARMPROD1",
		"FARMPROD2",
		"FARMPROD3",
		"FARMPROD4",
		"FARMPROD5",
		"FARMPROD6",
		"FARMPROD7",
		"FARMPROD8",
		"FARMPROD9",
		"REACTION1",
		"REACTION2",
		"REACTION3",
		"COMPOUND1",
		"COMPOUND2",
		"COMPOUND3",
		"COMPOUND4",
		"COMPOUND5",
		"COMPOUND6",
		"MEGAPROD1",
		"MEGAPROD2",
		"MEGAPROD3",
		"ULTRAPROD1",
		"ULTRAPROD2",
		"TRA_ALLOY1",
		"TRA_ALLOY2",
		"TRA_ALLOY3",
		"TRA_ALLOY4",
		"TRA_ALLOY5"
	}
},
{
	{
		ExoCraftBuildingsMult				-- Keep in mind the roamer (base cost 4 Salvage) needs to be unlocked first to unlock others...
	},
	{
		"GARAGE_S",				--8
		"GARAGE_M",				--4			(Roamer)
		"GARAGE_L",				--8
		"GARAGE_B",				--10
		"GARAGE_SUB",			--10
		"GARAGE_MECH"			--10
	}
},
{
	{
		ExoCraftSummonBuildingsMult
	},
	{
		"SUMMON_GARAGE",		--12
		"GARAGE_FREIGHT"		--15
	}
},
{
	{
		FarmingBlueprintsMult
	},
	{
		"PLANTER",
		"TOXICPLANT",
		"SNOWPLANT",
		"RADIOPLANT",
		"BARRENPLANT",
		"LUSHPLANT",
		"SCORCHEDPLANT",
		"CREATUREPLANT",
		"POOPPLANT",
		"GRAVPLANT",
		"SACVENOMPLANT",
		"PEARLPLANT",
		"NIPPLANT"
	}
},
{
	{
		LargePlanterBlueprintMult
	},
	{
		"PLANTERMEGA",			--10
		"BIOROOM"				--10
	}
},
{
	{
		CookingAndLivestockMult
	},
	{
		"COOKER",				--10
		"CREATURE_FEED",		--10
		"CREATURE_FARM",		--10
	}
},
{
	{
		SimpleMachineMult
	},
	{
		"O2_HARVESTER",			--1
		"BUILDHARVESTER",		--1		(Autonomous Mining Unit)
		"BUILDGASHARVEST"		--1		(Atmosphere Harvester)
	}
},
{
	{
		MachineMult
	},
	{
		"BUILD_REFINER2",		--10	(Medium Refiner)
		"BUILD_REFINER3",		--10	(Large Refiner)
		"SHIPSUMMON",			
		--"BUILDTERMINAL",		--10?	Galactic Trade Terminal
		"BUILDLANDINGPAD",		--10
		"S_LANDINGZONE",		--1		(Alternative Landing Pad)
		"U_EXTRACTOR_S",		--10	(Mineral Extractor)
		"U_GASEXTRACTOR",		--10	(Gas Extractor)
		"U_GENERATOR_S"			--10	(Electromagnetic Generator)
	}
},
{
	{
		AntimatterReactorMult
	},
	{
		"BUILDANTIMATTER"		--20
	}
},
{
	{
		StorageContainersMult
	},
	{
		"CONTAINER0",
		"CONTAINER1",
		"CONTAINER2",
		"CONTAINER3",
		"CONTAINER4",
		"CONTAINER5",
		"CONTAINER6",
		"CONTAINER7",
		"CONTAINER8",
		"CONTAINER9"
	}
}
}

UpgradeChanges = 
{
	{
		{
			UpgradeCMult,	UpgradeCBaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT1",
			"U_CANNON1",
			"U_EXOBOOST1",
			"U_EXOGUN1",
			"U_EXOLAS1",
			"U_EXO_ENG1",
			"U_EXO_SUB1",
			"U_EXO_SUBGUN1",
			"U_GRENADE1",
			"U_HYPER1",
			"U_JETBOOST1",
			"U_LASER1",
			"U_LAUNCH1",
			"U_PULSE1",
			"U_RAIL1",
			"U_SCANNER1",
			"U_SHIELDBOOST1",
			"U_SHIPBLOB1",
			"U_SHIPGUN1",
			"U_SHIPLAS1",
			"U_SHIPMINI1",
			"U_SHIPSHIELD1",
			"U_SHIPSHOT1",
			"U_SHOTGUN1",
			"U_SMG1",
			"U_TGRENADE1",
			"AP_PULSE1",
			"AP_LAUNCH1",
			"AP_HYPER1",
			"AP_SHIPSHIELD1",
			"AP_SHIPGUN1",
			"AP_SHIPLAS1",
			"U_FR_HYP1",
			"U_FR_SPE1",
			"U_FR_FUEL1",
			"U_FR_COM1",
			"U_FR_TRA1",
			"U_FR_EXP1",
			"U_FR_MINE1"
		}
	},
	{
		{
			UpgradeBMult,	UpgradeBBaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT2",
			"U_CANNON2",
			"U_COLDPROT1",
			"U_ENERGY1",
			"U_EXOBOOST2",
			"U_EXOGUN2",
			"U_EXOLAS2",
			"U_EXO_ENG2",
			"U_EXO_SUB2",
			"U_EXO_SUBGUN2",
			"U_GRENADE2",
			"U_HOTPROT1",
			"U_HYPER2",
			"U_JETBOOST2",
			"U_LASER2",
			"U_LAUNCH2",
			"U_MECHGUN2",
			"U_MECHLAS2",
			"U_MECH_ENG2",
			"U_PULSE2",
			"U_RAD1",
			"U_RAIL2",
			"U_SCANNER2",
			"U_SHIELDBOOST2",
			"U_SHIPBLOB2",
			"U_SHIPGUN2",
			"U_SHIPLAS2",
			"U_SHIPMINI2",
			"U_SHIPSHIELD2",
			"U_SHIPSHOT2",
			"U_SHOTGUN2",
			"U_SMG2",
			"U_TGRENADE2",
			"U_TOX1",
			"U_UNW1",
			"AP_PULSE2",
			"AP_LAUNCH2",
			"AP_HYPER2",
			"AP_SHIPSHIELD2",
			"AP_SHIPGUN2",
			"AP_SHIPLAS2",
			"U_FR_HYP2",
			"U_FR_SPE2",
			"U_FR_FUEL2",
			"U_FR_COM2",
			"U_FR_TRA2",
			"U_FR_EXP2",
			"U_FR_MINE2"
		}
	},
	{
		{
			UpgradeAMult,	UpgradeABaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT3",
			"U_CANNON3",
			"U_COLDPROT2",
			"U_ENERGY2",
			"U_EXOBOOST3",
			"U_EXOGUN3",
			"U_EXOLAS3",
			"U_EXO_ENG3",
			"U_EXO_SUB3",
			"U_EXO_SUBGUN3",
			"U_GRENADE3",
			"U_HOTPROT2",
			"U_HYPER3",
			"U_JETBOOST3",
			"U_LASER3",
			"U_LAUNCH3",
			"U_MECHGUN3",
			"U_MECHLAS3",
			"U_MECH_ENG3",
			"U_PULSE3",
			"U_RAD2",
			"U_RAIL3",
			"U_SCANNER3",
			"U_SHIELDBOOST3",
			"U_SHIPBLOB3",
			"U_SHIPGUN3",
			"U_SHIPLAS3",
			"U_SHIPMINI3",
			"U_SHIPSHIELD3",
			"U_SHIPSHOT3",
			"U_SHOTGUN3",
			"U_SMG3",
			"U_TGRENADE3",
			"U_TOX2",
			"U_UNW2",
			"AP_PULSE3",
			"AP_LAUNCH3",
			"AP_HYPER3",
			"AP_SHIPSHIELD3",
			"AP_SHIPGUN3",
			"AP_SHIPLAS3",
			"U_FR_HYP3",
			"U_FR_SPE3",
			"U_FR_FUEL3",
			"U_FR_COM3",
			"U_FR_TRA3",
			"U_FR_EXP3",
			"U_FR_MINE3"
		}
	},
	{
		{
			UpgradeSMult,	UpgradeSBaseMarkup,		RegUpgradeSpaceStationMarkup
		},
		{
			"U_BOLT4",
			"U_CANNON4",
			"U_COLDPROT3",
			"U_ENERGY3",
			"U_EXOBOOST4",
			"U_EXOGUN4",
			"U_EXOLAS4",
			"U_EXO_ENG4",
			"U_EXO_SUB4",
			"U_EXO_SUBGUN4",
			"U_GRENADE4",
			"U_HOTPROT3",
			"U_HYPER4",
			"U_JETBOOST4",
			"U_LASER4",
			"U_LAUNCH4",
			"U_MECHGUN4",
			"U_MECHLAS4",
			"U_MECH_ENG4",
			"U_PULSE4",
			"U_RAD3",
			"U_RAIL4",
			"U_SCANNER4",
			"U_SHIELDBOOST4",
			"U_SHIPBLOB4",
			"U_SHIPGUN4",
			"U_SHIPLAS4",
			"U_SHIPMINI4",
			"U_SHIPSHIELD4",
			"U_SHIPSHOT4",
			"U_SHOTGUN4",
			"U_SMG4",
			"U_TGRENADE4",
			"U_TOX3",
			"U_UNW3",
			"AP_PULSE4",
			"AP_LAUNCH4",
			"AP_HYPER4",
			"AP_SHIPSHIELD4",
			"AP_SHIPGUN4",
			"AP_SHIPLAS4",
			"U_FR_HYP4",
			"U_FR_SPE4",
			"U_FR_FUEL4",
			"U_FR_COM4",
			"U_FR_TRA4",
			"U_FR_EXP4",
			"U_FR_MINE4",
			"U_SENTSUIT",
			"U_SENTGUN"
		}
	},
	{
		{
			UpgradeXMult,	UpgradeXBaseMarkup,		SusUpgradeSpaceStationMarkup
		},
		{
			"U_BOLTX",
			"U_CANNONX",
			"U_ENERGYX",
			"U_GRENADEX",
			"U_HYPERX",
			"U_JETBOOSTX",
			"U_LASERX",
			"U_LAUNCHX",
			"U_PULSEX",
			"U_RAILX",
			"U_SCANNERX",
			"U_SHIELDBOOSTX",
			"U_SHIPBLOBX",
			"U_SHIPGUNX",
			"U_SHIPLASX",
			"U_SHIPMINIX",
			"U_SHIPSHIELDX",
			"U_SHIPSHOTX",
			"U_SHOTGUNX",
			"U_SMGX",
			"U_TGRENADEX",
			"U_HAZARDX"
		}
	}
}

UpgradeScannerChanges =
{
	{
		"U_SCANNER1",	UpgradeScannerMult
	},
	{
		"U_SCANNER2",	UpgradeScannerMult
	},
	{
		"U_SCANNER3",	UpgradeScannerMult
	},
	{
		"U_SCANNER4",	UpgradeScannerMult
	},
	{
		"U_SCANNERX",	UpgradeScannerMult
	}
}

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
  ["MOD_DESCRIPTION"]		= "Greatly increases the cost for unlocking various technologies, blueprints, recipes, upgrades, mainly aiming for those found in the Anomaly",         
  ["MOD_AUTHOR"]			= "Xen0nex",         
  ["NMS_VERSION"]			= GameVersion,     
  ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
							["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
							["REPLACE_TYPE"] 		= "ALL",			  -- "ALL" to change every matching values or leave empty for single replacement
							["VALUE_MATCH"] 		= "49", 			  -- only change value(s) that match this value
							["VALUE_MATCH_OPTIONS"] = ">",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FragmentCost",	TechCostMult},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "SUB_BINOCS"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FragmentCost",	TechCostMult},						--Special case for High-Power Sonar since it's Nanite cost is not greater than or equal to 50 (10)
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT",	"ID", "ANTIMATTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	MatterHeart},
								{"ID",	"ATLAS_SEED_10"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT",	"ID", "MAGNET"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	MatterBulk},
								{"ID",	"FREI_INV_TOKEN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "", 
							["REPLACE_TYPE"] 		= "",	 
							["SPECIAL_KEY_WORDS"] = {"ID", "F_TELEPORT",	"ID", "TECH_COMP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	MatterAug},
								{"ID",	"SHIP_INV_TOKEN"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_L_ARM"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = MechPart,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_R_ARM"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = MechPart,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_LEGS"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = QuadParts,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_SENT_HEAD"},
							["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
							["ADD"] = MechPart,
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
						}
					}
				},
				--This entry intentionally left blank, to be filled in by the TechAdjustments function at the bottom of this script
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
					}
				},
				--This entry intentionally left blank, to be filled in by the RecipeChanges function at the bottom of this script
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
							["SPECIAL_KEY_WORDS"] = {"Id","FACT_TOKEN"}, 
                            ["MATH_OPERATION"]         = "*",  
                            ["REPLACE_TYPE"]         = "ALL",  
                            ["VALUE_MATCH"]         = "", 
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"StackMultiplier",    ValuableCraftsMult} 					--Multiplies the stackmultiplier for Factory Override Tokens so that you can hoid more of them, since you get awarded more also
                            }
                        }
                    }
				}
            }
		}
    }
}	

local ChangesToTechTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #TechAdjustments do
	-- local ChangesToProductTable5_temp
	local TechID = TechAdjustments[i][1]
		
		Multiplier = TechAdjustments[i][2]
			ChangesToTechTable[#ChangesToTechTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"ID", TechID},  
				["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"FragmentCost", Multiplier}
				}
			}
end

local ChangesToProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

for i = 1, #RecipeChanges do
	-- local ChangesToProductTable_temp
	local Multiplier = RecipeChanges[i][1][1]
	local RecipeIDs = RecipeChanges[i][2]

	for j = 1, #RecipeIDs do
	
			RecipeID = RecipeIDs[j]
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "*",
				["REPLACE_TYPE"] 		= "ALL",
				["SPECIAL_KEY_WORDS"] = {"Id", RecipeID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RecipeCost", Multiplier}
				}
			}
	end
end
for i = 1, #UpgradeChanges do
	-- local ChangesToProductTable4_temp
	local ValueMult = UpgradeChanges[i][1][1]
	local BaseMarkup = UpgradeChanges[i][1][2]
	local StationMarkup = UpgradeChanges[i][1][3]
	local ItemIDs = UpgradeChanges[i][2]
		
	for j = 1, #ItemIDs do
	
		ItemID = ItemIDs[j]
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"Id", ItemID},  
				["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", ValueMult}
				}
			}
			
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"Id", ItemID},  
				["MATH_OPERATION"] 		= "", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"SpaceStationMarkup", StationMarkup},
					{"BuyBaseMarkup", BaseMarkup}
				}
			}
	end
end
for i = 1, #UpgradeScannerChanges do
	-- local ChangesToProductTable3_temp
	local ScannerID = UpgradeScannerChanges[i][1]
		
		Multiplier = UpgradeScannerChanges[i][2]
			ChangesToProductTable[#ChangesToProductTable+1] =
			{
				["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
				["SPECIAL_KEY_WORDS"] = {"Id", ScannerID},  
				["MATH_OPERATION"] 		= "*", 				-- "*", "+", "-", "/" or leave empty for normal replacement
				["REPLACE_TYPE"] 		= "",			  -- "ALL" to change every matching values or leave empty for single replacement
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BaseValue", Multiplier}
				}
			}
end

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE