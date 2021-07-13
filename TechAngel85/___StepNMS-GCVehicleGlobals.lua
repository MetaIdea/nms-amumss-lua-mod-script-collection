Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter various settings dealing with the various vehicles."
FileSource01 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
VehScanPulseRange = 3000		-- Pulse range of vehicles | 1500 | 317
VehScanChargeTime = 5			-- Time to recharge vehicle pulses | 20 | 320
VehScanLocPulseRange = 400		--  | 200 | 324
VehScanLocChargeTime = 5		--  | 20  | 327


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
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", VehScanPulseRange}, {"ChargeTime", VehScanChargeTime}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"VehicleLocalScan",}, 
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