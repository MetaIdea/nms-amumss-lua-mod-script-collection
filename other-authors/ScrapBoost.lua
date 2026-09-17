SALVAGE_DENSITY_MULTI	= 2			-- Default value is 1 | How many Salvage Containers spawn per area (Industrial Waste increases along with them). Keeps roughly vanilla spacing
SALVAGE_COVERAGE_MULTI	= 1			-- Default value is 1 | How close Salvage Containers may spawn to each other. Acts as a multiplier on top of density; much stronger, clusters them
SALVAGE_EVERYWHERE		= false		-- Default value is false | true = Salvage Containers (and Industrial Waste) can spawn on any planet except dead/weird ones, not just scrap worlds
SALVAGE_LEGACY			= false		-- Default value is false | true = pre-Remnant chance of salvage on normal planets, with the planet-scan icon (Industrial Waste comes along)

-----------------------------------------------------------------------------------------------------------
---------------------------------- DO NOT EDIT ANYTHING PAST THIS POINT -----------------------------------
-----------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 	= "ScrapBoost",
["MOD_AUTHOR"]		= "Segint",
["NMS_VERSION"]		= "7.02",
["MOD_DESCRIPTION"]	= "Increases Salvageable Scrap (Salvage Container) spawns, with optional wider planet spawning",
["MODIFICATIONS"] 	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\PROCSALVAGE.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"DebugName", "SALVAGE"},
							["PRECEDING_KEY_WORDS"]	= {"QualityVariants"},
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"FlatDensity",		SALVAGE_DENSITY_MULTI},
								{"SlopeDensity",	SALVAGE_DENSITY_MULTI},
								{"Coverage",		SALVAGE_COVERAGE_MULTI}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
					["MXML_CHANGE_TABLE"] 	= {}
				}
			}
		}
	}
}

-- Shortcut to the BIOMEFILENAMES change table; entries are only added for the options that are turned on
local Biome_Change_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

if SALVAGE_EVERYWHERE then
	Biome_Change_Table[#Biome_Change_Table + 1] =
	{
		["SPECIAL_KEY_WORDS"]	= {"Id", "NEW_SCRAP"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"OnlyOnScrapWorlds",	"false"}
		}
	}
end

if SALVAGE_LEGACY then
	Biome_Change_Table[#Biome_Change_Table + 1] =
	{
		["SPECIAL_KEY_WORDS"]	= {"Id", "VALUABLE_STUFF", "Name", "PROC_SALVAGE"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"ResourceHint",		"UI_SCRAP_HINT"},
			{"ResourceHintIcon",	"SALVAGE"},
			{"SuppressSpawn",		"false"}
		}
	}
end

-- Drop the BIOMEFILENAMES entry entirely when neither option is on, so that file isn't touched
if #Biome_Change_Table == 0 then
	table.remove(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"], 2)
end
