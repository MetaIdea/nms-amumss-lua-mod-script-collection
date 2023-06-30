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
						{"WaveHeight", WaveHeight},
					}
				},
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