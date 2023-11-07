--see also StandardSchemeExtended.lua
MIN_SCALE_MULTIPLIER = 1/3.5
MAX_SCALE_MULTIPLIER = 1.5
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "VanillaTweaksAnimals-AnimalSizeVariationAndHerding.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Adds variation to animal sizes and makes more animals behave as herds",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "3.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcCreatureData.xml"},
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"MinScale", MIN_SCALE_MULTIPLIER},
								{"MaxScale", MAX_SCALE_MULTIPLIER}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PartModifiers"},
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "/",
							["VALUE_CHANGE_TABLE"] = {
								{"MinScale", MIN_SCALE_MULTIPLIER},
								{"MaxScale", MAX_SCALE_MULTIPLIER}
							}
						},
						{--Enable herding for everything
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Herd", "True"}
							}
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
