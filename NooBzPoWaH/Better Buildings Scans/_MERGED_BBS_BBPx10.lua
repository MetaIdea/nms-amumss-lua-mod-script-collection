NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MERGED_BBS_BBPx10.pak", 
["MOD_AUTHOR"]				= "NooBzPoWaH",
["LUA_AUTHOR"]				= "NooBzPoWaH",
["NMS_VERSION"]				= "3.+",
["MOD_DESCRIPTION"]			= "Merged file for Better Buildings Scans and Base Boundary Plus",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnknownBuildingRange",	"4800"}  --Original "600"  line 187
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxIconRange",	"9600"}  --Original "1200"  line 188
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinShipScanBuildings",	"1"}  --Original "0"  line 191
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxShipScanBuildings",	"4"}  --Original "2" line 192
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRadiusForBases",	"3000"}  --Original "300"  line 193
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseRadiusExtension",	"500"}  --Original "50"  line 194
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRadiusForPlanetBases",	"10000"}  --Original "1000" line 195
							}
						}	
					} --7 global replacements
				}	
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE