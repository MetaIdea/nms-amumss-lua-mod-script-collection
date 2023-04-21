Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "This script increases the distance ship projectiles will travel."
FileSource01 = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue

--##### Variables #####
--## Step ##
ShipGunRadius=45		-- The distance the projectile will travel. | 15 | 2043
ShipShotgunRadius=90	-- | 30 | 2170
ShipMinigunRadius=3.25	-- | 0.75 | 2297
ShipPlasmaGunRadius=90	-- | 30 | 2424
ShipRocketRadius=120		-- | 25 | 3303
SquadDefaultDamage=250	-- The damage each squad member will do | 40 | 4134


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{["SPECIAL_KEY_WORDS"] = {"Id", "SHIPGUN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Radius", ShipGunRadius}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Id", "SHIPSHOTGUN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Radius", ShipShotgunRadius}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Id", "SHIPMINIGUN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Radius", ShipMinigunRadius}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Id", "SHIPPLASMAGUN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Radius", ShipPlasmaGunRadius}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Id", "SHIPPLASMAGUN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Radius", ShipRocketRadius}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"Id", "SQUADGUN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"DefaultDamage", SquadDefaultDamage}, 
					}
				},
			}
		}}
	}}
}