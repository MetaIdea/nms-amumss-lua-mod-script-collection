ModName = "NoAtmoNoPlants"
GameVersion = "3_90"

MinHeight =				250					-- -1			Height (above sea level) it is allowed to spawn?
MaxHeight =				252					-- 128
MinScale =				0.08				-- 0.8			Size of the object?
MaxScale =				0.16				-- 1.6

DeadGrassFilepath = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\DEAD.MBIN"

FrozenFilepaths =
{
"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTS.MBIN",
"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADOBJECTSULTRA.MBIN"
}

FrozenWeirdFilepaths =
{
"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTS.MBIN",
"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\FROZENDEADWEIRDOBJECTSULTRA.MBIN"
}

--Nothing below this should need to be changed. All values can be edited in the sections above this line

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]		= "Removes surface decorative plants from Dead (Low Atmosphere) planets. Currently still leaves shrubs & grass patches on 'Mountain' sub-biomes on Dead planets.",
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= 
	{
		{
			["MBIN_CHANGE_TABLE"]	= 
			{
				--This entry intentionally left blank, to be filled in by the GrowthChanges at the bottom of this script
			}
		}
	}
}

local ChangesToObjects = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

ChangesToObjects[#ChangesToObjects+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {DeadGrassFilepath},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/GRASSVARIATION01.SCENE.MBIN"},
					["SECTION_UP"] = 1,
					["REPLACE_TYPE"] = "ALL",
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				}
			}
		}
for i = 1, #FrozenFilepaths do
	local FilePath = FrozenFilepaths[i]
			
			ChangesToObjects[#ChangesToObjects+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {FilePath},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/FROZEN/MEDIUMPROPS/MEDIUMPLANT.SCENE.MBIN"},
					["REPLACE_TYPE"] = "ALL",
					["SECTION_UP"] = 1,
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				},
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
					["REPLACE_TYPE"] = "ALL",
					["SECTION_UP"] = 1,
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				},
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN"},
					["REPLACE_TYPE"] = "ALL",
					["SECTION_UP"] = 1,
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				},
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
					["REPLACE_TYPE"] = "ALL",
					["SECTION_UP"] = 1,
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				},
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
					["REPLACE_TYPE"] = "ALL",
					["SECTION_UP"] = 1,
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				}
			}
		}
end
for i = 1, #FrozenWeirdFilepaths do
	local FilePath = FrozenWeirdFilepaths[i]
			
			ChangesToObjects[#ChangesToObjects+1] =
		{
			["MBIN_FILE_SOURCE"] 	= {FilePath},
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBBUSH.SCENE.MBIN"},
					["REPLACE_TYPE"] = "ALL",
					["SECTION_UP"] = 1,
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				},
				{
					--["PRECEDING_FIRST"] = "TRUE",
					--["PRECEDING_KEY_WORDS"] = {"BaseBuildingTriggerActions"},
					["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/FROZENBUSHYGRASS.SCENE.MBIN"},
					["REPLACE_TYPE"] = "ALL",
					["SECTION_UP"] = 1,
					--["REMOVE"] = "SECTION",
					["VALUE_CHANGE_TABLE"] 	=
					{
						{"MinHeight", MinHeight},
						{"MaxHeight", MaxHeight},
						{"MinScale", MinScale},
						{"MaxScale", MaxScale}
					}
				}
			}
		}
end