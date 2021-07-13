Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes forward edits from No Atmosphere No Dust."
FileSource01 = "GCSKYGLOBALS.GLOBALS.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
-- FileSource01
NoAtmosphereFogStrength = 0				-- Strength of the fog | 0.3 | 209
NoAtmosphereFogMax = 0					--  | 0.97 | 210


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
					["VALUE_CHANGE_TABLE"] = {
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