Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter the damage chances for slots/tech on crashed ships."
FileSource01 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
MinimumCircleTimeBeforeLanding = 3		-- | 5 | 206
CrashedShipBrokenSlotChance = 0.5		-- Chance slots will be damaged on crashed ships | 0.75| 244
CrashedShipBrokenTechChance = 0.5		-- Chance technology will be damaged on crashed ships | 0.7 | 245
OutpostDockApproachUpAmount = 0.05		-- | 0.1 | 511
LandingTipAngle = 12					-- | 25 | 514
LandingLongTipAngle = 6					-- | 10 | 515
DockingSpringTime = 4					-- | 6 | 970
DockingLandingBounceTime = 0.6			-- | 0.8 | 971
DockingRotateSpeed = 0.7				-- Speed at which ship will rotate when docking | 0.5 | 974


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ ["PRECEDING_KEY_WORDS"]	= "",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"]	= {
						{"MinimumCircleTimeBeforeLanding", MinimumCircleTimeBeforeLanding}, 
						{"CrashedShipBrokenSlotChance", CrashedShipBrokenSlotChance}, 
						{"CrashedShipBrokenTechChance", CrashedShipBrokenTechChance}, 
						{"OutpostDockApproachUpAmount", OutpostDockApproachUpAmount}, 
						{"LandingTipAngle", LandingTipAngle}, 
						{"LandingLongTipAngle", LandingLongTipAngle}, 
						{"DockingSpringTime", DockingSpringTime}, 
						{"DockingLandingBounceTime", DockingLandingBounceTime}, 
						{"DockingRotateSpeed", DockingRotateSpeed}, 
					}
				}
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE