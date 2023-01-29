--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "NoHazardousPlants.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "removes hazardous plants like obviously?",         --optional, for reference
  ["MOD_AUTHOR"]				= "Salzgard",         --optional, for reference
  ["NMS_VERSION"]				= "should work for a while",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.515F1D3.PAK",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FLYTRAPPLANT.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	"0"},
								{"FlatDensity",	"0"},
								{"SlopeMultiplier",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "QualityVariants",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage", "0"},
								{"FlatDensity", "0"},
								{"SlopeDensity", "0"},
								{"SlopeMultiplier", "0"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\SPOREVENTPLANT.MBIN", 
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	"0"},
								{"FlatDensity",	"0"},
								{"SlopeMultiplier",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "QualityVariants",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage", "0"},
								{"FlatDensity", "0"},
								{"SlopeDensity", "0"},
								{"SlopeMultiplier", "0"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\TENTACLEPLANT.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage",	"0"},
								{"FlatDensity",	"0"},
								{"SlopeMultiplier",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = "QualityVariants",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Coverage", "0"},
								{"FlatDensity", "0"},
								{"SlopeDensity", "0"},
								{"SlopeMultiplier", "0"},
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