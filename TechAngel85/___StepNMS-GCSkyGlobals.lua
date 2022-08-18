Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes forward edits from No Atmosphere No Dust to remove fog from planets without atmosphere."
FileSource01 = "GCSKYGLOBALS.GLOBALS.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
StormWarningTime = 40				-- Time a warning is given before a storm | 25 | 85
StormTransitionTime = 30			-- Time it takes for storm transitions | 20 |86
NoAtmosphereFogStrength = 0			-- Strength of the fog | 0.3 | 208
NoAtmosphereFogMax = 0				--  | 0.97 | 209


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ ["PRECEDING_KEY_WORDS"] = "",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"StormWarningTime", StormWarningTime}, 
						{"StormTransitionTime", StormTransitionTime}, 
						{"NoAtmosphereFogStrength", NoAtmosphereFogStrength}, 
						{"NoAtmosphereFogMax", NoAtmosphereFogMax}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE