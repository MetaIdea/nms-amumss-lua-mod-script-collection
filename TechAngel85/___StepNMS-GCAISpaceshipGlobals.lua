Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter the damage chances for slots/tech on crashed ships."
FileSource01 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
CrashedShipBrokenSlotChance = 0.5		-- Chance slots will be damaged on crashed ships | 0.75| 28
CrashedShipBrokenTechChance = 0.5		-- Chance technology will be damaged on crashed ships | 0.7 | 29
DockingRotateSpeed = 0.7				-- Speed at which ship will rotate when docking | 0.5 | 720


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
					["VALUE_CHANGE_TABLE"]	= {
						{"CrashedShipBrokenSlotChance", CrashedShipBrokenSlotChance}, 
						{"CrashedShipBrokenTechChance", CrashedShipBrokenTechChance}, 
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