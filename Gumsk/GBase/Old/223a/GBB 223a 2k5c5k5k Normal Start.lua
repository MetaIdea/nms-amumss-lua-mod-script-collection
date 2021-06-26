--Variables
--Base Building
BuildingLineCount = 24			--?? Original value "24"
LineMinDistance = 40			-- Original value "40"
LineDistanceRange = 100			--?? Original value "200"
MaxLineLength = 30				--?? Original value "30" Not power or teleporter length
BaseBorderStartRadius = 2000	-- When you first build the base, how far out can you build? Original value "300"
BaseBorderBump = 500			-- If you place an item on the edge of your border, how much does the border bump out? Original value "50"
BaseBorderMaxRadius = 5000		-- What is the absolute maximum border distance? Original value "1000"

--Messages
EntryMessageFrequency = 60		-- Original value "20"
SectorMessageFrequency = 60		-- Original value "20"

--Start Location
StartCrashMin = 500				-- Original value "500
StartCrashMax = 600				-- Original value "600"
StartShelterMin = 800			-- Original value "800"
StartShelterMax = 1000			-- Original value "1000"

--Testing
Unknown0x27C = 400				--?? Original value "400"
Unknown0x280 = 2000				--?? Original value "2000"
Unknown0x284 = 5000			-- How long can one segment of power line or teleporter cable be? Original value "200"
Unknown0x288 = 100				--?? Below 10 scales up base building objects and moves build camera. Original value "100"


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GBB 223a 2k5c5k5k Normal Start.pak",
["MOD_DESCRIPTION"]	= "Base bouondary extensions plus other random things",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.2",
["MODIFICATIONS"]	=
{
{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{
{
["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
["EXML_CHANGE_TABLE"] = 
{
{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] =
	{
		{"BuildingLineCount", BuildingLineCount},
		{"LineMinDistance", LineMinDistance},
		{"LineDistanceRange", LineDistanceRange},
		{"MaxLineLength", MaxLineLength},
		{"MinRadiusForBases", BaseBorderStartRadius},
		{"BaseRadiusExtension", BaseBorderBump},
		{"MaxRadiusForBases", BaseBorderMaxRadius},
		{"MinTimeBetweenBuildingEntryMessage", EntryMessageFrequency},
		{"SectorMessageMinTime", SectorMessageFrequency},
		{"StartCrashSiteMinDistance", StartCrashMin},
		{"StartCrashSiteMaaxDistance", StartCrashMax},
		{"StartShelterMinDistance", StartShelterMin},
		{"StartShelterMaxDistance", StartShelterMax},
		{"Unknown0x27C", Unknown0x27C},
		{"Unknown0x280", Unknown0x280},
		{"Unknown0x284", Unknown0x284},
		{"Unknown0x288", Unknown0x288}
	}
},
}
},
}
},
}
}