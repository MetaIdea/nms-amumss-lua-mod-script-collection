Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with water."
FileSource01 = "GCWATERGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##
WaveHeight = 0.1				--  | vanilla=1.5 // FineLOD=-0.2 // Abyss=0.25 | 6
NightWtrFoamColorR = 0.333		--  | vanilla=1 // Exo=0 | 150
NightWtrFoamColorG = 0.333		--  | vanilla=1 // Exo=0 | 151
NightWtrFoamColorB = 0.333		--  | vanilla=1 // Exo=0 | 152


--## Exosolar's Abyss ##
WaveFrequency = 0.08			--  | 0.01 | 7
DayWaterStrength = .0065		--  | 0.01 | 25
DayWaterColourStrength = 0.0095	--  | 0.008 | 26
DayWaterMultiplyMax = 0.85		--  | 0.9 | 28

--DayFoamFadeHeight = 0			--  | 21 | 43
--DayFoam1Scale = 2.4E-08		--  | 0.08 | 44
--DayFoam1Speed = 7E-06			--  | 0.02 | 45
--DayFoam2Scale = 1.2E-08		--  | 0.5 | 46
--DayFoam2Speed = 0.0002		--  | 0.04 | 47

NightWtrFogColorNearR = 0.02	--  | 0.243 | 126
NightWtrFogColorNearG = 0.02	--  | 0.285 | 127
NightWtrFogColorNearB = 0.02	--  | 0.307 | 128
NightWtrFogColorFarR = 0.0267	--  | 0.423 | 132
NightWtrFogColorFarG = 0.0267	--  | 0.449 | 133
NightWtrFogColorFarB = 0.0267	--  | 0.463 | 134
NightWtrFogColorBaseR = 0		--  | 0.099 | 138
NightWtrFogColorBaseG = 0		--  | 0.103 | 139
NightWtrFogColorBaseB = 0		--  | 0.103 | 140
NightWtrFogColorAddR = 0		--  | 0.535 | 144
NightWtrFogColorAddG = 0		--  | 0.567 | 145
NightWtrFogColorAddB = 0		--  | 0.473 | 146


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{["PRECEDING_KEY_WORDS"] = "", 
					["VALUE_CHANGE_TABLE"] = {
--## Step ##
						{"WaveHeight", WaveHeight}, 
--## Exosolar's Abyss ##
						{"WaveFrequency", WaveFrequency}, 
					}
				},
--
--##### Everything after here is from Exo Aybss #####
--
				{["PRECEDING_KEY_WORDS"] = {"WaterDataDay",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"WaterStrength", DayWaterStrength}, 
						{"WaterColourStrength", DayWaterColourStrength}, 
						{"WaterMultiplyMax", DayWaterMultiplyMax}, 
						--{"FoamFadeHeight", DayFoamFadeHeight}, 
						--{"Foam1Scale", DayFoam1Scale}, 
						--{"Foam1Speed", DayFoam1Speed}, 
						--{"Foam2Scale", DayFoam2Scale}, 
						--{"Foam2Speed", DayFoam2Speed}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"WaterColourNight", "WaterFogColourNear",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", NightWtrFogColorNearR}, {"G", NightWtrFogColorNearG}, {"B", NightWtrFogColorNearB}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"WaterColourNight", "WaterFogColourFar",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", NightWtrFogColorFarR}, {"G", NightWtrFogColorFarG}, {"B", NightWtrFogColorFarB}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"WaterColourNight", "WaterColourBase",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", NightWtrFogColorBaseR}, {"G", NightWtrFogColorBaseG}, {"B", NightWtrFogColorBaseB}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"WaterColourNight", "WaterColourAdd",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", NightWtrFogColorAddR}, {"G", NightWtrFogColorAddG}, {"B", NightWtrFogColorAddB}, 
					}
				},
--
--##### Everything after here is from Step #####
--
				{["PRECEDING_KEY_WORDS"] = {"WaterColourNight", "FoamColour",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"R", NightWtrFoamColorR}, {"G", NightWtrFoamColorG}, {"B", NightWtrFoamColorB}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE