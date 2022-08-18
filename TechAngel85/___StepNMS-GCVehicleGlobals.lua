Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with the various vehicles."
FileSource01 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
VehScanPulseRange = 3000		-- Pulse range of vehicles | 1500 | 737
VehScanChargeTime = 5			-- Time to recharge vehicle pulses | 20 | 740
VehScanLocPulseRange = 400		--  | 200 | 744
VehScanLocChargeTime = 5		--  | 20  | 747


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{["PRECEDING_KEY_WORDS"] = {"VehicleScan",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", VehScanPulseRange}, {"ChargeTime", VehScanChargeTime}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"VehicleLocalScan",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", VehScanLocPulseRange}, {"ChargeTime", VehScanLocChargeTime}, 						
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE