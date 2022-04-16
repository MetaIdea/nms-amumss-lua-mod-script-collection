BaseBorderStartRadius = 7000		-- When you first build the base, how far out can you build? Original value "300"
BaseBorderBump = 0					-- If you place an item on the edge of your border, how much does the border bump out? Original value "50"
BaseBorderMaxRadius = 7000			-- What is the absolute maximum border distance? Original value "1000"
MaximumWireSegmentLength = 7000					-- How long can one segment of power line or teleporter cable be? Original value "200"
MaximumPipeSegmentLength = 7000					-- Maximum supply pipe segment length, in u. Original value "400"

--Start Location
StartCrashMin = 500					-- Original value "500
StartCrashMax = 600					-- Original value "600"
StartShelterMin = 800				-- Original value "800"
StartShelterMax = 1000				-- Original value "1000"

--Testing
-- Unknown0x280 = 2000					--?? Original value "2000"
-- Unknown0x288 = 100					--?? Below 10 scales up base building objects and moves build camera. Original value "100"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GBase 241a Boundary Huge 2.pak",
["MOD_DESCRIPTION"]	= "Base boundary and wire length extensions",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.4.1",
["MODIFICATIONS"]	=
{{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{{
["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
["EXML_CHANGE_TABLE"] = 
{{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] =
	{
		{"MinRadiusForBases", BaseBorderStartRadius},
		{"BaseRadiusExtension", BaseBorderBump},
		{"MaxRadiusForBases", BaseBorderMaxRadius},
		{"MaximumWireSegmentLength", MaximumWireSegmentLength},
		{"MaximumPipeSegmentLength", MaximumPipeSegmentLength},
		{"StartCrashSiteMinDistance", StartCrashMin},
		{"StartCrashSiteMaaxDistance", StartCrashMax},
		{"StartShelterMinDistance", StartShelterMin},
		{"StartShelterMaxDistance", StartShelterMax},
	}
}}}}}}}